---------------------------------------------------------------------------
---------------------------------------------------------------------------
--
--  Copyright (C) 2004 Free Model Foundry; http://www.FreeModelFoundry.com/
--
--  This program is free software; you can redistribute it and/or modify
--  it under the terms of the GNU General Public License version 2 as
--  published by the Free Software Foundation.
--
---------------------------------------------------------------------------
--
--  Company  : HDL Design House, Serbia and Montenegro
--  Project  : SATA 
--  Module   : Device
--
--  Date     : 26.3.2004
--  Ver.     : 1.0
--
--  Author   : Nebojsa Makljenovic
--  Email    : n-makljenovic@hdl-dh.com
--  Phone    : +381 11 344 23 59
--
--  Customer :
--
---------------------------------------------------------------------------
--
-- Functional description of the module:
-- SATA device VITAL model
--
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
                    
LIBRARY IEEE;   USE IEEE.std_logic_1164.ALL;
LIBRARY vital;   USE vital.VITAL_timing.ALL;
                USE vital.VITAL_primitives.ALL;
                USE STD.textio.ALL;
LIBRARY FMF;    USE FMF.gen_utils.ALL;
                USE FMF.conversions.ALL;
                    
--------------------------------------------------------------------------------
-- ENTITY DECLARATION
--------------------------------------------------------------------------------
ENTITY Dsata IS   
    GENERIC (       
        -- tipd delays: interconnect path delays
        tipd_RXp               : VitalDelayType01 := VitalZeroDelay01;
        tipd_RXn               : VitalDelayType01 := VitalZeroDelay01;

        -- generic control parameters
        InstancePath        : STRING    := DefaultInstancePath;
        TimingChecksOn      : BOOLEAN   := DefaultTimingChecks;
        MsgOn               : BOOLEAN   := DefaultMsgOn;
        XOn                 : BOOLEAN   := DefaultXon;

        -- For FMF SDF technology file usage
        TimingModel         : STRING    := DefaultTimingModel
    );              
    PORT (          
        RESET            : IN    std_logic := 'L';
        RXp             : IN    std_logic := 'L';
        RXn             : IN    std_logic := 'L';

        TXp             : OUT   std_logic := 'L';
        TXn             : OUT   std_logic := 'L'
    );              
    ATTRIBUTE VITAL_LEVEL0 of Dsata : ENTITY IS TRUE;
END Dsata;        
                    
--------------------------------------------------------------------------------
-- ARCHITECTURE DECLARATION
--------------------------------------------------------------------------------
ARCHITECTURE vhdl_behavioral of Dsata IS
    ATTRIBUTE VITAL_LEVEL0 of vhdl_behavioral : ARCHITECTURE IS TRUE;
                    
    CONSTANT PartID            : STRING := "Dsata";
-- ipd              
    SIGNAL RXp_ipd             : std_ulogic := 'U';
    SIGNAL RXn_ipd             : std_ulogic := 'U';
                    
    SIGNAL RXp_nwv             : std_ulogic := 'U';
    SIGNAL RXn_nwv             : std_ulogic := 'U';

      function debug (constant s : in string)
      return string is
      begin
        return "DEVICE : " & s;
      end function debug;
    
BEGIN               
                    
    ----------------------------------------------------------------------------
    -- Wire Delays  
    ----------------------------------------------------------------------------
    WireDelay : BLOCK
    BEGIN           
                    
        w_1 : VitalWireDelay (RXp_ipd, RXp, tipd_RXp);
        w_2 : VitalWireDelay (RXn_ipd, RXn, tipd_RXn);

    END BLOCK;      

-- sig_nwv <= To_UX01(sig_ipd);
    RXp_nwv          <= To_UX01(RXp_ipd);
    RXn_nwv          <= To_UX01(RXn_ipd);                                       
        
    ----------------------------------------------------------------------------
    -- Main Behavior Block
    ----------------------------------------------------------------------------
    Behavior: BLOCK 
                    
        PORT (      
            RESET            : IN    std_logic := 'L';
            RXp             : IN    std_logic := 'L';
            RXn             : IN    std_logic := 'L';

            TXp             : OUT   std_logic := 'L';
            TXn             : OUT   std_logic := 'L'
        );          
        PORT MAP (                                   
            RESET => RESET,
            RXp => RXp_nwv,
            RXn => RXn_nwv,
            TXp => TXp,
            TXn => TXn
        );
    
    TYPE     phy_init IS (DR_RESET, 
                          DR_COMINIT,    
                          DR_AwaitCOMWAKE, 
                          DR_AwaitNoCOMWAKE, 
                          DR_Calibrate, 
                          DR_COMWAKE, 
                          DR_SendAlign, 
                          DR_Ready,  
                          DR_Partial,  
                          DR_Slumber,       
                          DR_ReduceSpeed,   
                          DR_Error);         

    TYPE     link_state_type IS (    L1_L_IDLE,
                                      LS1_L_NoCommErr,
                                    LS2_L_NoComm,
                                    LS3_L_SendAlign,
                                    LS4_L_RESET,
                                    LT2_DL_SendChkRdy,
                                    LT3_L_SendSOF,
                                    LT4_L_SendData,
                                    LT5_L_RcvrHold,
                                    LT6_L_SendHold,
                                    LT7_L_SendCRC,
                                    LT8_L_SendEOF,
                                    LT9_L_Wait,
                                    LR1_L_RcvChkRdy,
                                    LR2_L_RcvWaitFifo,
                                    LR3_L_RcvData,
                                    LR4_L_Hold,
                                    LR5_L_SendHold,
                                    LR6_L_RcvEOF,
                                    LR7_L_GoodCRC,
                                    LR8_L_GoodEnd,
                                    LR9_L_BadEnd);
                                
    TYPE TP_state_type IS (    DT_DeviceIdle,  
                            TP_SOF,
                            DT_ChkTyp,
                            DT_RegHDFIS,
                            DT_DMASETUPHFIS,
                            DT_rcvBIST,
                            DT_DATAOFIS,
                            DT_RegDHFIS,
                            DT_DHFIS_TransStatus,  
                            DT_PIOSTUPFIS, 
                            DT_PIOSTUPFIS_TransStatus,
                            DT_DATAIFIS); 
                            
    TYPE    TP_result_type IS (    GOOD,   
                                NO_FIS,
                                NO_RESP,
                                ERR);

    TYPE code_word_pair IS ARRAY(0 TO 1) OF std_logic_vector(9 DOWNTO 0);
     TYPE rx_buffer_type IS ARRAY (0 TO 3) OF std_logic_vector(9 DOWNTO 0);  
    TYPE crc_table_type IS ARRAY (0 TO 255) OF std_logic_vector(31 DOWNTO 0);

    CONSTANT FIFO_SIZE     : INTEGER := 64;

    TYPE rx_fifo_buffer_type IS ARRAY(0 TO FIFO_SIZE - 1) OF std_logic_vector(37 DOWNTO 0);   
    TYPE tx_fifo_buffer_type IS ARRAY(0 TO FIFO_SIZE - 1) OF std_logic_vector(31 DOWNTO 0);    


    CONSTANT K283         : std_logic_vector(7 DOWNTO 0) := B"011_11100";
    CONSTANT K285         : std_logic_vector(7 DOWNTO 0) := B"101_11100";

    CONSTANT D102         : std_logic_vector(7 DOWNTO 0) := B"010_01010";
    CONSTANT D105         : std_logic_vector(7 DOWNTO 0) := B"101_01010";
    CONSTANT D211         : std_logic_vector(7 DOWNTO 0) := B"001_10101";
    CONSTANT D212         : std_logic_vector(7 DOWNTO 0) := B"010_10101";
    CONSTANT D213         : std_logic_vector(7 DOWNTO 0) := B"011_10101";
    CONSTANT D214         : std_logic_vector(7 DOWNTO 0) := B"100_10101";
    CONSTANT D215         : std_logic_vector(7 DOWNTO 0) := B"101_10101";
    CONSTANT D216         : std_logic_vector(7 DOWNTO 0) := B"110_10101";
    CONSTANT D217         : std_logic_vector(7 DOWNTO 0) := B"111_10101";
    CONSTANT D221         : std_logic_vector(7 DOWNTO 0) := B"001_10110";
    CONSTANT D222         : std_logic_vector(7 DOWNTO 0) := B"010_10110";
    CONSTANT D230         : std_logic_vector(7 DOWNTO 0) := B"000_10111";
    CONSTANT D231         : std_logic_vector(7 DOWNTO 0) := B"001_10111";
    CONSTANT D232         : std_logic_vector(7 DOWNTO 0) := B"010_10111";
    CONSTANT D242         : std_logic_vector(7 DOWNTO 0) := B"010_11000";
    CONSTANT D254         : std_logic_vector(7 DOWNTO 0) := B"100_11001";
    CONSTANT D273         : std_logic_vector(7 DOWNTO 0) := B"011_11011";
    
    CONSTANT cK283         : code_word_pair := ("1100111100", "0011000011");
    CONSTANT cK285         : code_word_pair := ("0101111100", "1010000011");

    CONSTANT cD102          : code_word_pair := ("1010101010", "1010101010");
    CONSTANT cD273          : code_word_pair := ("1100011011", "0011100100");

    CONSTANT ALIGN_RDpos        : std_logic_vector(39 DOWNTO 0) := "1100011011101010101010101010101010000011";
    CONSTANT ALIGN_RDneg        : std_logic_vector(39 DOWNTO 0) := "0011100100101010101010101010100101111100";


--    CONSTANT RXPERIOD          : Time := 666.43 ps;
    CONSTANT RXPERIOD          : Time := 668 ps;
    CONSTANT TXPERIOD          : Time := 666.43 ps;
    CONSTANT MIN_COMINIT_SPACE : Time := 175 ns;
    CONSTANT MAX_COMINIT_SPACE : Time := 525 ns;
    CONSTANT MIN_COMWAKE_SPACE : Time := 55 ns;
    CONSTANT MAX_COMWAKE_SPACE : Time := 175 ns; 
 
     CONSTANT FISt_reg_h2d      : std_logic_vector(7 DOWNTO 0) := X"27";   
     CONSTANT FISt_reg_d2h      : std_logic_vector(7 DOWNTO 0) := X"34";   
     CONSTANT FISt_set_dev_bit  : std_logic_vector(7 DOWNTO 0) := X"A1";
     CONSTANT FISt_dma_activ    : std_logic_vector(7 DOWNTO 0) := X"39";
     CONSTANT FISt_dma_setup    : std_logic_vector(7 DOWNTO 0) := X"41";
     CONSTANT FISt_bist_activ   : std_logic_vector(7 DOWNTO 0) := X"58";
     CONSTANT FISt_pio_setup    : std_logic_vector(7 DOWNTO 0) := X"5F";        
     CONSTANT FISt_data         : std_logic_vector(7 DOWNTO 0) := X"46";   

     CONSTANT FIS_SOF           : std_logic_vector(1 DOWNTO 0) := "01";   
     CONSTANT FIS_EOF           : std_logic_vector(1 DOWNTO 0) := "11";   
     CONSTANT FIS_PAYLOAD       : std_logic_vector(1 DOWNTO 0) := "10";   

     CONSTANT POLYNOMIAL        : std_logic_vector(31 DOWNTO 0) := X"04c11db7";

    CONSTANT PHYDATAWIDTH      : INTEGER := 40;     
    
    SIGNAL crc_table          : crc_table_type; 
        
    PROCEDURE SendALIGN  (SIGNAL tx_empty : IN  std_logic;
                          SIGNAL clk      : IN  std_logic;
                          SIGNAL ld       : OUT std_logic;
                          SIGNAL reg      : OUT std_logic_vector(9 DOWNTO 0))
    IS
      procedure debug (constant s : in string) is
      begin
        report debug("") & "SendALIGN : " & s;
      end procedure debug;

    BEGIN                      
        debug ("[SendALIGN]");
        debug ("tx_empty = 0");
        IF tx_empty = '0' THEN
            WAIT UNTIL tx_empty = '1';
            debug ("tx_empty = 1");
        END IF;       
        WAIT UNTIL clk='1';
        -- negative rd assumed 
        debug ("cK285");
        reg <= cK285(0);
--        ld <= '1', '0' AFTER 1 ps;
        ld <= '1';
        WAIT UNTIL clk='1';
        ld <= '0';
        WAIT UNTIL tx_empty = '1';
        WAIT UNTIL clk='1';
        debug ("cD102");
        reg <= cD102(1);
        ld <= '1';
        WAIT UNTIL clk='1';
        ld <= '0';
        WAIT UNTIL tx_empty = '1';
        WAIT UNTIL clk='1';
        debug ("cD102");
        reg <= cD102(0);
        ld <= '1';
        WAIT UNTIL clk='1';
        ld <= '0';
        WAIT UNTIL tx_empty = '1';
        WAIT UNTIL clk='1';
        debug ("cD273");
        reg <= cD273(1);
        ld <= '1';
        WAIT UNTIL clk='1';
        ld <= '0';      
        debug ("[/SendALIGN]");        
    END SendALIGN;

    PROCEDURE encode (rd : INOUT std_logic;
                       byte : IN std_logic_vector(7 DOWNTO 0);
                       SIGNAL code : OUT std_logic_vector(9 DOWNTO 0)) IS 
    VARIABLE temp   : std_logic_vector(9 DOWNTO 0);
    VARIABLE x,y    : INTEGER;    
    VARIABLE rd6    : std_logic;    
    procedure debug (constant s : in string) is
    begin
      report debug ("") & "encode : " & s;
    end procedure debug;
    BEGIN      
        x := to_nat(byte(4 DOWNTO 0));
        y := to_nat(byte(7 DOWNTO 5));
        -- 5B/6B
        CASE x IS 
            WHEN 0 | 1 | 2 | 4 | 8 | 15 | 16 | 23 | 24 | 27 | 29 | 30 | 31 => rd6 := NOT rd;
            WHEN others => rd6 := rd;
        END CASE;
        IF rd = '0' THEN
            CASE x IS 
                WHEN 0  => temp(5 DOWNTO 0) := "111001";
                WHEN 1  => temp(5 DOWNTO 0) := "101110";
                WHEN 2  => temp(5 DOWNTO 0) := "101101";
                WHEN 3  => temp(5 DOWNTO 0) := "100011";
                WHEN 4  => temp(5 DOWNTO 0) := "101011";
                WHEN 5  => temp(5 DOWNTO 0) := "100101"; 
                WHEN 6  => temp(5 DOWNTO 0) := "100110"; 
                WHEN 7  => temp(5 DOWNTO 0) := "000111"; 
                WHEN 8  => temp(5 DOWNTO 0) := "100111"; 
                WHEN 9  => temp(5 DOWNTO 0) := "101001"; 
                WHEN 10 => temp(5 DOWNTO 0) := "101010"; 
                WHEN 11 => temp(5 DOWNTO 0) := "001011"; 
                WHEN 12 => temp(5 DOWNTO 0) := "101100"; 
                WHEN 13 => temp(5 DOWNTO 0) := "001101"; 
                WHEN 14 => temp(5 DOWNTO 0) := "001110"; 
                WHEN 15 => temp(5 DOWNTO 0) := "111010"; 
                WHEN 16 => temp(5 DOWNTO 0) := "110110"; 
                WHEN 17 => temp(5 DOWNTO 0) := "110001"; 
                WHEN 18 => temp(5 DOWNTO 0) := "110010"; 
                WHEN 19 => temp(5 DOWNTO 0) := "010011"; 
                WHEN 20 => temp(5 DOWNTO 0) := "110100"; 
                WHEN 21 => temp(5 DOWNTO 0) := "010101"; 
                WHEN 22 => temp(5 DOWNTO 0) := "010110"; 
                WHEN 23 => temp(5 DOWNTO 0) := "010111"; 
                WHEN 24 => temp(5 DOWNTO 0) := "110011"; 
                WHEN 25 => temp(5 DOWNTO 0) := "011001"; 
                WHEN 26 => temp(5 DOWNTO 0) := "011010"; 
                WHEN 27 => temp(5 DOWNTO 0) := "011011"; 
                WHEN 28 => temp(5 DOWNTO 0) := "011100"; 
                WHEN 29 => temp(5 DOWNTO 0) := "011101"; 
                WHEN 30 => temp(5 DOWNTO 0) := "011110";
                WHEN 31 => temp(5 DOWNTO 0) := "110101"; 
                WHEN others =>
            END CASE;
        ELSE                
            CASE x IS 
                WHEN 0  => temp(5 DOWNTO 0) := "000110";  
                WHEN 1  => temp(5 DOWNTO 0) := "010001";  
                WHEN 2  => temp(5 DOWNTO 0) := "010010";  
                WHEN 3  => temp(5 DOWNTO 0) := "100011";  
                WHEN 4  => temp(5 DOWNTO 0) := "010100";  
                WHEN 5  => temp(5 DOWNTO 0) := "100101";  
                WHEN 6  => temp(5 DOWNTO 0) := "100110";  
                WHEN 7  => temp(5 DOWNTO 0) := "111000";  
                WHEN 8  => temp(5 DOWNTO 0) := "011000";  
                WHEN 9  => temp(5 DOWNTO 0) := "101001";  
                WHEN 10 => temp(5 DOWNTO 0) := "101010";  
                WHEN 11 => temp(5 DOWNTO 0) := "001011";  
                WHEN 12 => temp(5 DOWNTO 0) := "101100";  
                WHEN 13 => temp(5 DOWNTO 0) := "001101";  
                WHEN 14 => temp(5 DOWNTO 0) := "001110";  
                WHEN 15 => temp(5 DOWNTO 0) := "000101";  
                WHEN 16 => temp(5 DOWNTO 0) := "001001";  
                WHEN 17 => temp(5 DOWNTO 0) := "110001";  
                WHEN 18 => temp(5 DOWNTO 0) := "110010";  
                WHEN 19 => temp(5 DOWNTO 0) := "010011";  
                WHEN 20 => temp(5 DOWNTO 0) := "110100";  
                WHEN 21 => temp(5 DOWNTO 0) := "010101";  
                WHEN 22 => temp(5 DOWNTO 0) := "010110";  
                WHEN 23 => temp(5 DOWNTO 0) := "101000";  
                WHEN 24 => temp(5 DOWNTO 0) := "001100";  
                WHEN 25 => temp(5 DOWNTO 0) := "011001";  
                WHEN 26 => temp(5 DOWNTO 0) := "011010";  
                WHEN 27 => temp(5 DOWNTO 0) := "100100";  
                WHEN 28 => temp(5 DOWNTO 0) := "011100";  
                WHEN 29 => temp(5 DOWNTO 0) := "100010";  
                WHEN 30 => temp(5 DOWNTO 0) := "100001";  
                WHEN 31 => temp(5 DOWNTO 0) := "001010";  
                WHEN others =>
            END CASE;
        END IF;
        
        IF rd6 = '0' THEN
            CASE y IS 
                WHEN 0  => temp(9 DOWNTO 6) := "1101";
                WHEN 1  => temp(9 DOWNTO 6) := "1001";
                WHEN 2  => temp(9 DOWNTO 6) := "1010";
                WHEN 3  => temp(9 DOWNTO 6) := "0011";
                WHEN 4  => temp(9 DOWNTO 6) := "1011";
                WHEN 5  => temp(9 DOWNTO 6) := "0101";
                WHEN 6  => temp(9 DOWNTO 6) := "0110";
                WHEN 7  => 
                    IF temp(5)='1' AND temp(4)='1' THEN -- e=i=1
                        temp(9 DOWNTO 6) := "1110";     -- A7
                    ELSE 
                        temp(9 DOWNTO 6) := "0111";     -- P7
                    END IF;    
                WHEN others =>
             END CASE;  
        ELSE
            CASE y IS 
                WHEN 0  => temp(9 DOWNTO 6) := "0010";
                WHEN 1  => temp(9 DOWNTO 6) := "1001";
                WHEN 2  => temp(9 DOWNTO 6) := "1010";
                WHEN 3  => temp(9 DOWNTO 6) := "1100";
                WHEN 4  => temp(9 DOWNTO 6) := "0100";
                WHEN 5  => temp(9 DOWNTO 6) := "0101";
                WHEN 6  => temp(9 DOWNTO 6) := "0110";
                WHEN 7  => 
                    IF temp(5)='0' AND temp(4)='0' THEN -- e=i=0
                        temp(9 DOWNTO 6) := "0001";     -- A7
                    ELSE 
                        temp(9 DOWNTO 6) := "1000";     -- P7
                    END IF;    
                WHEN others =>
             END CASE;  
        END IF;    

        CASE y IS 
            WHEN 0 | 4 | 7 => rd := NOT rd6;
            WHEN others => rd := rd6;
        END CASE;

        debug (to_hex_str(temp));
        code <= temp;        
--        RETURN temp;    
    END encode;

    FUNCTION decode (rd : IN std_logic;
                     code : IN std_logic_vector(9 DOWNTO 0)) RETURN std_logic_vector IS --(9 DOWNTO 0) IS
    VARIABLE temp   : std_logic_vector(9 DOWNTO 0);
    VARIABLE x      : std_logic_vector(4 DOWNTO 0);
    VARIABLE y      : std_logic_vector(2 DOWNTO 0);    
    VARIABLE rd6    : std_logic;
    VARIABLE err    : std_logic;               
    VARIABLE ctrl   : std_logic;               
    procedure debug (constant s : in string) is
    begin
      report debug ("") & "decode : " & s;
    end procedure debug;
    BEGIN         
        err := '0';      
        ctrl := '0';        
        IF rd = '0' THEN                
            IF code(5 DOWNTO 0) = "111100" THEN       -- K28.3 
                ctrl := '1';                                   
                rd6 := '1';                                    
                x := "11100";                                  
            ELSIF code(5 DOWNTO 0) = "111100" THEN    -- K28.5 
                ctrl := '1';
                rd6 := '1';
                x := "11100";
            ELSE
            CASE code(5 DOWNTO 0) IS 
                WHEN "111001"  => x := "00000"; rd6 := '1';
                WHEN "101110"  => x := "00001"; rd6 := '1';
                WHEN "101101"  => x := "00010"; rd6 := '1';
                WHEN "100011"  => x := "00011"; rd6 := '0';
                WHEN "101011"  => x := "00100"; rd6 := '1';
                WHEN "100101"  => x := "00101"; rd6 := '0';
                WHEN "100110"  => x := "00110"; rd6 := '0';
                WHEN "000111"  => x := "00111"; rd6 := '0';
                WHEN "100111"  => x := "01000"; rd6 := '1';
                WHEN "101001"  => x := "01001"; rd6 := '0';
                WHEN "101010"  => x := "01010"; rd6 := '0';
                WHEN "001011"  => x := "01011"; rd6 := '0';
                WHEN "101100"  => x := "01100"; rd6 := '0';
                WHEN "001101"  => x := "01101"; rd6 := '0';
                WHEN "001110"  => x := "01110"; rd6 := '0';
                WHEN "111010"  => x := "01111"; rd6 := '1';
                WHEN "110110"  => x := "10000"; rd6 := '1';
                WHEN "110001"  => x := "10001"; rd6 := '0';
                WHEN "110010"  => x := "10010"; rd6 := '0';
                WHEN "010011"  => x := "10011"; rd6 := '0';
                WHEN "110100"  => x := "10100"; rd6 := '0';
                WHEN "010101"  => x := "10101"; rd6 := '0';
                WHEN "010110"  => x := "10110"; rd6 := '0';
                WHEN "010111"  => x := "10111"; rd6 := '1';
                WHEN "110011"  => x := "11000"; rd6 := '1';
                WHEN "011001"  => x := "11001"; rd6 := '0';
                WHEN "011010"  => x := "11010"; rd6 := '0';
                WHEN "011011"  => x := "11011"; rd6 := '1';
                WHEN "011100"  => x := "11100"; rd6 := '0';
                WHEN "011101"  => x := "11101"; rd6 := '1';
                WHEN "011110"  => x := "11110"; rd6 := '1';
                WHEN "110101"  => x := "11111"; rd6 := '1';
                WHEN others => err := '1';
            END CASE;
            END IF;
        ELSE
            IF code(5 DOWNTO 0) = "000011" THEN         -- K28.3
                ctrl := '1';
                rd6 := '0';
                x := "11100";
            ELSIF code(5 DOWNTO 0) = "000011" THEN      -- K28.5
                ctrl := '1';
                rd6 := '0';
                x := "11100";
            ELSE
            CASE code(5 DOWNTO 0) IS 
                WHEN "000110"  => x := "00000"; rd6 := '0';
                WHEN "010001"  => x := "00001"; rd6 := '0';
                WHEN "010010"  => x := "00010"; rd6 := '0';
                WHEN "100011"  => x := "00011"; rd6 := '1';
                WHEN "010100"  => x := "00100"; rd6 := '0';
                WHEN "100101"  => x := "00101"; rd6 := '1';
                WHEN "100110"  => x := "00110"; rd6 := '1';
                WHEN "111000"  => x := "00111"; rd6 := '1';
                WHEN "011000"  => x := "01000"; rd6 := '0';
                WHEN "101001"  => x := "01001"; rd6 := '1';
                WHEN "101010"  => x := "01010"; rd6 := '1';
                WHEN "001011"  => x := "01011"; rd6 := '1';
                WHEN "101100"  => x := "01100"; rd6 := '1';
                WHEN "001101"  => x := "01101"; rd6 := '1';
                WHEN "001110"  => x := "01110"; rd6 := '1';
                WHEN "000101"  => x := "01111"; rd6 := '0';
                WHEN "001001"  => x := "10000"; rd6 := '0';
                WHEN "110001"  => x := "10001"; rd6 := '1';
                WHEN "110010"  => x := "10010"; rd6 := '1';
                WHEN "010011"  => x := "10011"; rd6 := '1';
                WHEN "110100"  => x := "10100"; rd6 := '1';
                WHEN "010101"  => x := "10101"; rd6 := '1';
                WHEN "010110"  => x := "10110"; rd6 := '1';
                WHEN "101000"  => x := "10111"; rd6 := '0';
                WHEN "001100"  => x := "11000"; rd6 := '0';
                WHEN "011001"  => x := "11001"; rd6 := '1';
                WHEN "011010"  => x := "11010"; rd6 := '1';
                WHEN "100100"  => x := "11011"; rd6 := '0';
                WHEN "011100"  => x := "11100"; rd6 := '1';
                WHEN "100010"  => x := "11101"; rd6 := '0';
                WHEN "100001"  => x := "11110"; rd6 := '0';
                WHEN "001010"  => x := "11111"; rd6 := '0';
                WHEN others => err := '1';
            END CASE;   
            END IF;
        END IF;
        IF rd6 = '0' THEN        
            CASE code(9 DOWNTO 6) IS 
                WHEN "1101"  => y := "000"; 
                WHEN "1001"  => y := "001"; 
                WHEN "1010"  => y := "010"; 
                WHEN "0011"  => y := "011"; 
                WHEN "1011"  => y := "100"; 
                WHEN "0101"  => y := "101"; 
                WHEN "0110"  => y := "110"; 
                WHEN "0111"  => y := "111"; 
                WHEN "1110"  => y := "111"; 
                WHEN others => err := '1';
            END CASE;                      
        ELSE        
            CASE code(9 DOWNTO 6) IS 
                WHEN "0010"  => y := "000"; 
                WHEN "1001"  => y := "001"; 
                WHEN "1010"  => y := "010"; 
                WHEN "1100"  => y := "011"; 
                WHEN "0100"  => y := "100"; 
                WHEN "0101"  => y := "101"; 
                WHEN "0110"  => y := "110"; 
                WHEN "1000"  => y := "111"; 
                WHEN "0001"  => y := "111"; 
                WHEN others => err := '1';
            END CASE;  
        END IF;
        temp := ctrl & err & y & x;            
        debug (to_hex_str(temp));
        RETURN temp;    
    END decode;
    
    FUNCTION new_rd (rd : IN std_logic;
                     code : IN std_logic_vector(9 DOWNTO 0)) RETURN std_logic IS
    VARIABLE n_ones   : INTEGER;
    VARIABLE rd6, rd4 : std_logic;
    procedure debug (constant s : in string) is
    begin
      report debug ("") & "new_rd : " & s;
    end procedure debug;
    BEGIN      
    -- NOTICE rd = 0 is negative running disparity
    --        rd = 1 is positive running disparity
    
    -- six-bit sub-block
        n_ones := 0;
        FOR i IN 0 TO 5 LOOP
            IF code(i) = '1' THEN
                n_ones := n_ones + 1;
            END IF;
        END LOOP;
        IF (n_ones > 3) OR code(5 DOWNTO 0) = "111000" THEN 
            rd6 := '1';
        ELSIF (n_ones < 3) OR code(5 DOWNTO 0) = "000111" THEN
            rd6 := '0';
        ELSE
            rd6 := rd;
        END IF;

    -- four-bit sub-block
        n_ones := 0;
        FOR i IN 0 TO 3 LOOP
            IF code(6+i) = '1' THEN
                n_ones := n_ones + 1;
            END IF;
        END LOOP;
        IF (n_ones > 2) OR code(9 DOWNTO 6) = "1100" THEN 
            rd4 := '1';
        ELSIF (n_ones < 2) OR code(9 DOWNTO 6) = "0011" THEN
            rd4 := '0';
        ELSE
            rd4 := rd6;
        END IF; 
        
        if (rd4 = '0') then
          debug ("negative running disparity");
        else
          debug ("positive running disparity");
        end if;
        RETURN rd4;
    END new_rd;    

    PROCEDURE lsfr (SIGNAL state    : INOUT  std_logic_vector(15 DOWNTO 0);
                    VARIABLE rnd_data : OUT    std_logic_vector(31 DOWNTO 0)) IS
    VARIABLE new_bit   : std_logic;
    VARIABLE lsfr_reg  : std_logic_vector(15 DOWNTO 0); 
    VARIABLE temp : std_logic_vector(31 DOWNTO 0);
    procedure debug (constant s : in string) is
    begin
      report debug ("") & "lsfr : " & s;
    end procedure debug;
    BEGIN   
        lsfr_reg := state;
        FOR i IN 0 TO 31 LOOP
            temp(i) := lsfr_reg(15);  
            lsfr_reg := (lsfr_reg(15) XOR lsfr_reg(14))
                         & lsfr_reg(13) 
                         & (lsfr_reg(15) XOR lsfr_reg(12))
                         & lsfr_reg(11 DOWNTO 4) 
                         & (lsfr_reg(15) XOR lsfr_reg(3)) 
                         & lsfr_reg(2 DOWNTO 0) & lsfr_reg(15);    
        END LOOP;                             
        state <= lsfr_reg;
        debug (to_hex_str (temp));
        rnd_data := temp;
    END lsfr;    

    PROCEDURE get_crc (VARIABLE crc_accum : INOUT std_logic_vector(31 DOWNTO 0);
                       VARIABLE code      : IN std_logic_vector(31 DOWNTO 0)) IS
    VARIABLE i           : INTEGER;
    procedure debug (constant s : in string) is
    begin
      report debug ("") & "get_crc : " & s;
    end procedure debug;
    BEGIN      
        debug ("[get_crc]");
        i := to_nat (crc_accum(31 DOWNTO 24) XOR code(31 DOWNTO 24));        
        crc_accum := (crc_accum(23 DOWNTO 0) & "00000000") XOR crc_table(i);
        debug ("1  - " & to_hex_str (crc_accum));
        i := to_nat (crc_accum(31 DOWNTO 24) XOR code(23 DOWNTO 16));        
        crc_accum := (crc_accum(23 DOWNTO 0) & "00000000") XOR crc_table(i);
        debug ("2  - " & to_hex_str (crc_accum));
        i := to_nat (crc_accum(31 DOWNTO 24) XOR code(15 DOWNTO 8));        
        crc_accum := (crc_accum(23 DOWNTO 0) & "00000000") XOR crc_table(i);
        debug ("3  - " & to_hex_str (crc_accum));
        i := to_nat (crc_accum(31 DOWNTO 24) XOR code(7 DOWNTO 0));        
        crc_accum := (crc_accum(23 DOWNTO 0) & "00000000") XOR crc_table(i);
        debug ("4* - " & to_hex_str (crc_accum));
        debug ("[/get_crc]");
    END get_crc;

    
    -- PHYSICAL PLANT INTERFACE
    SIGNAL DATAIN             : std_logic_vector(PHYDATAWIDTH-1 DOWNTO 0);
    SIGNAL SLUMBER            : std_logic    := '0';
    SIGNAL PARTIAL            : std_logic    := '0';
    SIGNAL NEARAFELB          : std_logic    := '0';
    SIGNAL FARAFELB           : std_logic    := '0';
    SIGNAL SPDSEL             : std_logic    := '0';
    SIGNAL SYSTEMCLOCK        : std_logic    := '1';  
    SIGNAL COMMA              : std_logic    := '0';  
    SIGNAL DATAOUT            : std_logic_vector(PHYDATAWIDTH-1 DOWNTO 0);
    SIGNAL RXCLOCK            : std_logic    := '0';  
    SIGNAL COMRESET           : std_logic    := '0';  
    SIGNAL COMWAKE            : std_logic    := '0';     
    SIGNAL PHYRDY             : std_logic    := '0';
    SIGNAL PHYRESET           : std_logic    := '1';
        
    -- TRANSMITTER       
    SIGNAL TX_int             : std_logic := 'Z';     
    SIGNAL TX_shift_reg       : std_logic_vector(9 DOWNTO 0) := "0000000000";
    SIGNAL TX_reg             : std_logic_vector(9 DOWNTO 0) := "0000000000";
    SIGNAL TX_shift_rdy       : std_logic;
    SIGNAL TX_shift_reg_empty : std_logic := '1';
    SIGNAL TX_ld              : std_logic := '0';
    
    -- RECEIVER                       
    SIGNAL RX_int             : std_logic := 'Z';
    SIGNAL rx_idle            : std_logic := 'Z'; 

    SIGNAL RX_data_rdy        : std_logic;    
    SIGNAL cominit_space_ok   : std_logic := '0';       
    SIGNAL comwake_space_ok   : std_logic := '0';
    SIGNAL align              : std_logic := '0'; -- ALIGN pattern detected   
    SIGNAL align_ctrl         : std_logic := '0'; -- ALIGN pattern detected   
    
    -- RX clock generator
    SIGNAL RXclk_timeout      : std_logic := '0';
    SIGNAL RXclk              : std_logic := '0'; 
    SIGNAL RXclk_edge         : std_logic := '0';

    -- TX clock generator
    SIGNAL TXclk              : std_logic := '1'; 

    -- PHY control
    SIGNAL init_state           : phy_init := DR_Reset; 
    SIGNAL resume               : std_logic := '0';
    SIGNAL speed                : INTEGER := 1;        
    SIGNAL transmit_comwake     : std_logic := '0';
    SIGNAL transmit_cominit     : std_logic := '0';  
    SIGNAL transmit_align       : std_logic := '0';    
    SIGNAL transmit_comwake_end : std_logic := '0';
    SIGNAL transmit_cominit_end : std_logic := '0';  
    SIGNAL transmit_align_end   : std_logic := '0';
    SIGNAL calibration_end      : std_logic := '0';  
    SIGNAL power_on             : std_logic := '1';   
    SIGNAL send_align_cnt       : INTEGER;
    SIGNAL reset_align_cnt      : std_logic := '0';
    SIGNAL transmit_link_data   : std_logic := '0';

    -- LINK LAYER

--    SIGNAL RX_rd              : std_logic := '0'; -- receiver running disparity, start with negative   
--    SIGNAL TX_rd              : std_logic := '0'; -- transmitter running disparity, start with negative

    -- Control
     SIGNAL link_state, next_link_state : link_state_type;
         
    -- primitives
    SIGNAL CONTp                : std_logic := '0';
    SIGNAL DMATp                : std_logic := '0';
    SIGNAL EOFp                     : std_logic := '0';
    SIGNAL HOLDp                : std_logic := '0';
    SIGNAL HOLDAp                : std_logic := '0';
    SIGNAL PMACKp                : std_logic := '0';
    SIGNAL PMNAKp                : std_logic := '0';
    SIGNAL PMREQ_Pp                : std_logic := '0';
    SIGNAL PMREQ_Sp                : std_logic := '0';
    SIGNAL R_ERRp                : std_logic := '0';
    SIGNAL R_IPp                : std_logic := '0';
    SIGNAL R_OKp                : std_logic := '0';
    SIGNAL R_RDYp                : std_logic := '0';
    SIGNAL SOFp                    : std_logic := '0';
    SIGNAL SYNCp                : std_logic := '0';
    SIGNAL WTRMp                : std_logic := '0';
    SIGNAL X_RDYp                : std_logic := '0';

    SIGNAL lsfr_state_scramble    : std_logic_vector(15 DOWNTO 0) := "1111111111111111";
    SIGNAL lsfr_state_descramble  : std_logic_vector(15 DOWNTO 0) := "1111111111111111";
    SIGNAL lsfr_state_cont        : std_logic_vector(15 DOWNTO 0) := "1111111111111111";    
    
    SIGNAL crc_check            : std_logic := '0';  
    SIGNAL link_data            : std_logic_vector(31 DOWNTO 0); 
    SIGNAL link_err             : std_logic_vector(3 DOWNTO 0);
    SIGNAL link_ctrl            : std_logic_vector(3 DOWNTO 0);
    SIGNAL link_crc             : std_logic_vector(31 DOWNTO 0);
    SIGNAL link_FIS_data        : std_logic_vector(31 DOWNTO 0); 
    SIGNAL link_FIS_state       : std_logic_vector(1 DOWNTO 0); 
    

    SIGNAL rcv_fifo_read        : std_logic := '0';
    SIGNAL rcv_fifo_write       : std_logic := '0';
    
    SIGNAL tr_fifo_read        : std_logic := '0';
    SIGNAL tr_fifo_write       : std_logic := '0';

    SIGNAL RX_fifo_empty        : std_logic := '1';
    SIGNAL RX_fifo_full         : std_logic := '0';
    
    SIGNAL TX_fifo_empty        : std_logic := '1';
    SIGNAL TX_fifo_full         : std_logic := '0';
        
    SIGNAL RX_rd_ptr            : INTEGER := 0;
    SIGNAL RX_wr_ptr            : INTEGER := 0;
    
    SIGNAL TX_rd_ptr            : INTEGER := 0;
    SIGNAL TX_wr_ptr            : INTEGER := 0;

    SIGNAL RX_fifo              : rx_fifo_buffer_type;
    SIGNAL TX_fifo              : tx_fifo_buffer_type;
    
    -- TRANSPORT LAYER 
    
    SIGNAL TP_state             : TP_state_type;   
    SIGNAL next_TP_state        : TP_state_type;   

    SIGNAL TP_transmission_status   : std_logic := '0';
    SIGNAL TP_Frame_Rdy         : std_logic := '0';
    SIGNAL TP_no_data           : std_logic := '0';
    SIGNAL TP_Fifo_Space_Avail  : std_logic := '1';
    SIGNAL TP_result            : TP_result_type;    
    SIGNAL TP_dataout           : std_logic_vector(31 DOWNTO 0);
    SIGNAL TP_datain            : std_logic_vector(37 DOWNTO 0);

    SIGNAL TP_FIS_end           : std_logic := '0';
    SIGNAL TP_FIS_OK            : std_logic := '0';

    SIGNAL TP_RDH_req           : std_logic := '0';
    SIGNAL TP_RDH_end           : std_logic := '0';
    SIGNAL TP_PIOSetup_req      : std_logic := '0';
    SIGNAL TP_PIOSetup_end      : std_logic := '0';
    SIGNAL TP_TXData_req        : std_logic := '0';

-- Register block

    SHARED VARIABLE DataPortReg         : std_logic_vector(15 DOWNTO 0);
    SHARED VARIABLE ErrorReg            : std_logic_vector(7 DOWNTO 0);
    SHARED VARIABLE FeaturesReg            : std_logic_vector(15 DOWNTO 0);
    SHARED VARIABLE SectorCountReg        : std_logic_vector(15 DOWNTO 0);
    SHARED VARIABLE SectorNumberReg        : std_logic_vector(15 DOWNTO 0);
    SHARED VARIABLE CylinderLowReg        : std_logic_vector(15 DOWNTO 0);
    SHARED VARIABLE CylinderHighReg        : std_logic_vector(15 DOWNTO 0);
    SHARED VARIABLE DeviceHeadReg        : std_logic_vector(7 DOWNTO 0);
    SHARED VARIABLE StatusReg            : std_logic_vector(7 DOWNTO 0);
    SHARED VARIABLE CommandReg            : std_logic_vector(7 DOWNTO 0);
    SHARED VARIABLE AlternateStatusReg    : std_logic_vector(15 DOWNTO 0);
    SHARED VARIABLE DeviceControlReg    : std_logic_vector(7 DOWNTO 0);

    SIGNAL Ibit                   : std_logic := '0';
    SIGNAL Cbit                   : std_logic := '0';
    
    SIGNAL CMD_rcvd            : std_logic := '0';

    BEGIN

    CRC_INIT : PROCESS    
    VARIABLE crc_accum : std_logic_vector(31 DOWNTO 0);
    procedure debug (constant s : in string) is
    begin
      report debug ("") & "CRC_INIT : " & s;
    end procedure debug;

    BEGIN        
        debug ("[CRC_INIT]");
        FOR i IN 0 TO 255 LOOP
            crc_accum := (others => '0');
            crc_accum(31 DOWNTO 24) := to_slv(i,8);
            FOR j IN 0 TO 7 LOOP
                IF crc_accum(31) = '1' THEN
                       crc_accum := crc_accum(30 DOWNTO 0) & '0';
                    crc_accum := crc_accum XOR POLYNOMIAL;
                ELSE
                       crc_accum := crc_accum(30 DOWNTO 0) & '0';                                    
                END IF;
            END LOOP; 
            crc_table(i) <= crc_accum;
        END LOOP; 
        debug ("[/CRC_INIT]");
        WAIT;
    END PROCESS CRC_INIT;
    
    ----------------------------------------------------------------------------
    ----------------------------------------------------------------------------
    --                 PHYSICAL PLANT                                         --
    ----------------------------------------------------------------------------
    ----------------------------------------------------------------------------
    ----------------------------------------------------------------------------
    -- Hardware reset                                                         --
    ----------------------------------------------------------------------------
    PHYRESET <= RESET;

    ----------------------------------------------------------------------------
    -- Recived data                                                           --
    ----------------------------------------------------------------------------
       
    RX_int <= (RXp AND NOT RXn) AFTER 1 ps;
    rx_idle <= NOT (RXp XOR RXn); -- line is idle if both lines have same value

    ----------------------------------------------------------------------------
    -- Clock extractor                                                        --
    ----------------------------------------------------------------------------                   

    RX_CLK_timeout : PROCESS(RXclk, rx_idle) 
                    
    VARIABLE TmpPer         : Time := 0 ps;

    BEGIN  
        IF (RXclk'EVENT AND (rx_idle = '0'))  THEN      
            RXclk_timeout <= '0', '1' AFTER RXPERIOD/2;
        END IF;                            
        IF rising_edge(rx_idle) THEN
--            RXclk_timeout <= '0', '1' AFTER RXPERIOD/2;
            RXclk_timeout <= '0';
        END IF;
    END PROCESS RX_CLK_timeout;

    RX_CLK : PROCESS(RX_int, RXclk_timeout, rx_idle) 
                    
    VARIABLE TmpPer         : Time := 0 ps;
    VARIABLE Last_clk_edge  : Time := 0 ps;

    BEGIN               
        TmpPer := NOW - Last_clk_edge;        
        IF falling_edge(rx_idle) OR ((RX_int'EVENT AND TmpPer > RXPERIOD/4) AND (rx_idle = '0')) OR rising_edge(RXclk_timeout) THEN
              --debug ("RXclk tick");
              RXclk <= not(RXclk);    
              Last_clk_edge := NOW;                   
              RXclk_edge <= '1', '0' AFTER 1 ps;
        END IF;
    END PROCESS RX_CLK;
        
    ----------------------------------------------------------------------------
    -- Space duration check                                                   --
    ----------------------------------------------------------------------------                   
    SPACE_CHECK : PROCESS(rx_idle) 
                    
    VARIABLE burst_start         : Time := 0 ps;
    VARIABLE space_start         : Time := 0 ps;
    VARIABLE tmp_time            : Time := 0 ps;
    procedure debug (constant s : in string) is
    begin
      report debug ("") & "SPACE_CHECK : " & s;
    end procedure debug;
    BEGIN         
        IF falling_edge(rx_idle) THEN
            burst_start := NOW;
            tmp_time := NOW - space_start;
            IF (tmp_time > MIN_COMINIT_SPACE) AND (tmp_time < MAX_COMINIT_SPACE) THEN
                debug ("cominit_space_ok = 1");
                cominit_space_ok <= '1';
            END IF;
            IF (tmp_time > MIN_COMWAKE_SPACE) AND (tmp_time < MAX_COMWAKE_SPACE) THEN
                debug ("comwake_space_ok = 1");
                comwake_space_ok <= '1';
            END IF;
        ELSIF rising_edge(rx_idle) THEN
            space_start := NOW;
            tmp_time := NOW - burst_start;
            cominit_space_ok <= '0';
            comwake_space_ok <= '0';                            
            debug ("cominit_space_ok = 0");
            debug ("comwake_space_ok = 0");
        END IF;         
    END PROCESS;

    ----------------------------------------------------------------------------
    -- OOB signals, COMINIT and COMWAKE, detection                            --
    ----------------------------------------------------------------------------                   
    OOB_INIT : PROCESS
    VARIABLE cnt : INTEGER := 0;
    VARIABLE align_cnt : INTEGER := 0;
    procedure debug (constant s : in string) is
    begin
      report debug("") & "OOB_INIT : " & s;
    end procedure debug;
    BEGIN                       
        IF cnt > 7 THEN
            COMRESET <= '1';
            debug ("COMRESET = 1 , CNT > 7");
           END IF; 
        WAIT UNTIL align = '1';
        align_cnt := 1;
        FOR i IN 1 TO 3 LOOP
               WAIT UNTIL align = '1' FOR 40 * RXPERIOD;
            IF align = '1' THEN
                align_cnt := align_cnt + 1;
             ELSE 
                 EXIT;
             END IF;
         END LOOP;    
        IF align_cnt = 4 THEN
            debug ("OOB_INIT , ALIGN_CNT = 4");
            cnt := cnt + 1;
            WAIT UNTIL cominit_space_ok = '1' FOR MAX_COMINIT_SPACE;
            IF cominit_space_ok = '1' THEN
                cnt := cnt + 1;
                align_cnt := 0;
                debug ("align_cnt = 4 , cominit_space_ok = 1");
               ELSE
                cnt := 0;           
                COMRESET <= '0';
                align_cnt := 0;
                debug ("COMRESET = 0 , align_cnt = 4 , cominit_space_ok = 0");
            END IF;
        ELSE
            cnt := 0;           
            COMRESET <= '0';
            align_cnt := 0;
            debug ("COMRESET = 0 , align_cnt < 4");
        END IF;
    END PROCESS OOB_INIT;

    OOB_WAKE : PROCESS
    VARIABLE cnt : INTEGER := 0;
    VARIABLE align_cnt : INTEGER := 0;
    procedure debug (constant s : in string) is
    begin
      report debug("") & "OOB_WAKE : " & s;
    end procedure debug;
    BEGIN                       
        IF cnt > 7 THEN
            COMWAKE <= '1';
            debug ("COMWAKE = 1 , CNT > 7");
           END IF; 
        WAIT UNTIL align = '1';
        align_cnt := 1;
        FOR i IN 1 TO 3 LOOP
               WAIT UNTIL align = '1' FOR 40 * RXPERIOD;
            IF align = '1' THEN
                align_cnt := align_cnt + 1;
             ELSE 
                 EXIT;
             END IF;
         END LOOP;    
        IF align_cnt = 4 THEN
            debug ("COMWAKE = 1 , ALIGN_CNT = 4");
            cnt := cnt + 1;
            WAIT UNTIL comwake_space_ok = '1' FOR MAX_COMWAKE_SPACE;
            IF comwake_space_ok = '1' THEN
                cnt := cnt + 1;
                align_cnt := 0;
                debug ("align_cnt = 4 , comwake_space_ok = 1");
               ELSE
                cnt := 0;           
                COMWAKE <= '0';
                debug ("COMWAKE = 0 , align_cnt = 4 , comwake_space_ok = 0");
            END IF;
        ELSE
            cnt := 0;           
            COMWAKE <= '0';
            debug ("COMWAKE = 0");
        END IF;
    END PROCESS OOB_WAKE;



    ----------------------------------------------------------------------------
    -- Receiver shift register and fixed pattern detection - ALIGN            --
    ----------------------------------------------------------------------------                   
    RX_SHIFT : PROCESS(RXclk)   
    VARIABLE rx_bit_cnt : INTEGER := 0;
    VARIABLE rx_word_cnt : INTEGER := 0;
    VARIABLE align_detection : std_logic_vector(39 DOWNTO 0);
    VARIABLE RX_buffer : rx_buffer_type; 
    VARIABLE RX_shift_reg : std_logic_vector(9 DOWNTO 0) := "0000000000";
    procedure debug (constant s : in string) is
    begin
      report debug("") & "RX_SHIFT : " & s;
    end procedure debug;
    BEGIN                
        IF falling_edge(RXclk) THEN    
              RX_shift_reg(8 DOWNTO 0) := RX_shift_reg(9 DOWNTO 1);               
              RX_shift_reg(9) := RX_int;
               rx_bit_cnt := rx_bit_cnt + 1;   
               IF rx_bit_cnt = 10 THEN
                   rx_bit_cnt := 0;
                   RX_buffer(rx_word_cnt) := RX_shift_reg;
                   rx_word_cnt := rx_word_cnt + 1;    
                   IF RX_shift_reg = cK285(0) OR RX_shift_reg = cK285(1) THEN
                       COMMA <= '1';              
                       debug ("COMMA = 1 , cK285(0) cK285(1)");
                       rx_word_cnt := 1;
                       RX_buffer(0) := RX_shift_reg;
                   ELSIF RX_shift_reg = cK283(0) OR RX_shift_reg = cK283(1) THEN
                       debug ("cK283(0) cK283(1)");
                       rx_word_cnt := 1;
                       RX_buffer(0) := RX_shift_reg;
                   ELSIF RX_shift_reg = cK285(0) OR RX_shift_reg = cK285(1) THEN
                       debug ("cK285(0) cK285(1)");
                       rx_word_cnt := 1;
                       RX_buffer(0) := RX_shift_reg;
                   ELSIF rx_word_cnt = 4 THEN                  
                      debug ("COMMA = 0 , rx_word_cnt = 4");
                       COMMA <= '0';                    
                      rx_word_cnt := 0;     
                      IF RX_buffer(0) /= cK285(0) AND RX_buffer(0) /= cK285(1) THEN
                           RXCLOCK <= '1', '0' AFTER 20*RXPERIOD;
                           debug ("RXLOCK");
                       END IF;

                       DATAOUT <= RX_buffer(3) & RX_buffer(2) & RX_buffer(1) & RX_buffer(0);
                       debug ("DATAOUT : " & to_hex_str (DATAOUT));
                    IF ((RX_buffer(3) & RX_buffer(2) & RX_buffer(1) & RX_buffer(0)) = ALIGN_RDpos) OR 
                    ((RX_buffer(3) & RX_buffer(2) & RX_buffer(1) & RX_buffer(0)) = ALIGN_RDneg) THEN
                        align_ctrl <= '1';         
                        debug ("align_ctrl = 1");
                    ELSE
                        align_ctrl <= '0';            
                        debug ("align_ctrl = 0");
                    END IF;                   
                    
                    
                   END IF;
               END IF;    

--               -- align pattern detection
               align_detection(38 DOWNTO 0) := align_detection(39 DOWNTO 1);
               align_detection(39) := RX_int;
            IF (align_detection = ALIGN_RDpos) OR (align_detection = ALIGN_RDneg) THEN
                align <= '1', '0' AFTER RXPERIOD; 
                debug ("align pattern detection = 1");
                rx_bit_cnt := 0;
                rx_word_cnt := 0;                
            ELSE
                align <= '0';            
                --debug ("align pattern detection = 0");
            END IF;                   
            
        END IF;    
    END PROCESS RX_SHIFT;

    ----------------------------------------------------------------------------
    -- Transmit clock                                                         --
    ----------------------------------------------------------------------------                   
    TXclk <= NOT(TXclk) AFTER TXPERIOD/2;
 
    ----------------------------------------------------------------------------
    -- Transmitter shift register                                             --
    ----------------------------------------------------------------------------                   
    
    TX_SHIFT : PROCESS(TXclk, PHYRESET, COMRESET)   
    VARIABLE tx_cnt : INTEGER := 0;     
    procedure debug (constant s : in string) is
    begin
      report debug("") & "TX_SHIFT : " & s;
    end procedure debug;
    BEGIN                  
        IF rising_edge(PHYRESET) OR rising_edge(COMRESET) THEN
            tx_cnt := 0;
            TX_shift_reg_empty <= '1';
            TX_shift_rdy <= '1';
        ELSIF rising_edge(TXclk) THEN
            TX_shift_rdy <= '0';  
            IF TX_ld = '1' THEN
                   tx_cnt := 9;
                TX_shift_reg <= TX_reg;
                TX_shift_reg_empty <= '0';     
                debug ("TX_ld = 1 , tx_cnt = 9");
            ELSIF tx_cnt > 2 THEN
                   TX_shift_reg(8 DOWNTO 0) <= TX_shift_reg(9 DOWNTO 1);
                tx_cnt := tx_cnt - 1;
                --debug ("tx_cnt > 2");
            ELSIF tx_cnt = 2 THEN
                   TX_shift_reg(8 DOWNTO 0) <= TX_shift_reg(9 DOWNTO 1);
                   tx_cnt := tx_cnt - 1;
                TX_shift_rdy <= '1';            
                --debug ("tx_cnt = 2");
            ELSIF tx_cnt = 1 THEN 
                   tx_cnt := tx_cnt - 1;            
                   TX_shift_reg(8 DOWNTO 0) <= TX_shift_reg(9 DOWNTO 1);  
                   TX_shift_rdy <= '1';
                --debug ("tx_cnt = 1");
            ELSIF tx_cnt = 0 THEN 
                TX_shift_reg_empty <= '1';
                TX_shift_rdy <= '1';
                --debug ("tx_cnt = 0 , TX_shift_rdy = 1");                
            END IF;    
        END IF;    
    END PROCESS TX_SHIFT;

    TXp <= TX_shift_reg(0) WHEN (TX_shift_reg_empty = '0') ELSE '0';
    TXn <= NOT TX_shift_reg(0) WHEN (TX_shift_reg_empty = '0') ELSE '0';

    ----------------------------------------------------------------------------
    -- Data transfer                                                          --
    ----------------------------------------------------------------------------                   

    DATA_TRANS : PROCESS
    procedure debug (constant s : in string) is
    begin
      report debug("") & "DATA_TRANS : " & s;
    end procedure debug;
    BEGIN                                                   
        WAIT ON TXclk;--transmit_cominit, transmit_comwake, transmit_align, transmit_link_data;
        IF transmit_cominit = '1' AND transmit_cominit_end = '0' THEN
--            WAIT UNTIL TXclk = '1';
          debug ("transmit_cominit = 1");
        cominit_loop : LOOP
            FOR i IN 0 TO 3 LOOP
                SendAlign(TX_shift_rdy, TXclk, TX_ld, TX_reg);
                WAIT UNTIL TXclk = '1';
                EXIT cominit_loop WHEN (RESET = '1' OR COMRESET = '1');
            END LOOP;
            WAIT UNTIL TX_shift_reg_empty = '1';
            WAIT UNTIl RESET ='1' OR COMRESET = '1' FOR 480 * TXPERIOD;
            EXIT cominit_loop WHEN (RESET = '1' OR COMRESET = '1');
            FOR i IN 0 TO 3 LOOP
                SendAlign(TX_shift_rdy, TXclk, TX_ld, TX_reg);
                WAIT UNTIL TXclk = '1';
                EXIT cominit_loop WHEN (RESET = '1' OR COMRESET = '1');
            END LOOP;
            WAIT UNTIL TX_shift_reg_empty = '1';
            WAIT UNTIl RESET ='1' OR COMRESET = '1' FOR 480 * TXPERIOD;
            EXIT cominit_loop WHEN (RESET = '1' OR COMRESET = '1');
            FOR i IN 0 TO 3 LOOP
                SendAlign(TX_shift_rdy, TXclk, TX_ld, TX_reg);
                WAIT UNTIL TXclk = '1';
                EXIT cominit_loop WHEN (RESET = '1' OR COMRESET = '1');
            END LOOP;
            WAIT UNTIL TX_shift_reg_empty = '1';
            WAIT UNTIl RESET ='1' OR COMRESET = '1' FOR 480 * TXPERIOD;
            EXIT cominit_loop WHEN (RESET = '1' OR COMRESET = '1');
            FOR i IN 0 TO 3 LOOP
                SendAlign(TX_shift_rdy, TXclk, TX_ld, TX_reg);
                WAIT UNTIL TXclk = '1';
                EXIT cominit_loop WHEN (RESET = '1' OR COMRESET = '1');
            END LOOP;
            WAIT UNTIL TX_shift_reg_empty = '1';
            WAIT FOR 480 * TXPERIOD;
            FOR i IN 0 TO 3 LOOP
                SendAlign(TX_shift_rdy, TXclk, TX_ld, TX_reg);
                WAIT UNTIL TXclk = '1';
                EXIT cominit_loop WHEN (RESET = '1' OR COMRESET = '1');
            END LOOP;
            WAIT UNTIL TX_shift_reg_empty = '1';
            WAIT UNTIl RESET ='1' OR COMRESET = '1' FOR 480 * TXPERIOD;
            EXIT cominit_loop WHEN (RESET = '1' OR COMRESET = '1');
            FOR i IN 0 TO 3 LOOP
                SendAlign(TX_shift_rdy, TXclk, TX_ld, TX_reg);
                WAIT UNTIL TXclk = '1';
                EXIT cominit_loop WHEN (RESET = '1' OR COMRESET = '1');
            END LOOP;
            WAIT UNTIL TX_shift_reg_empty = '1';
            WAIT UNTIl RESET ='1' OR COMRESET = '1' FOR MAX_COMINIT_SPACE;
            EXIT cominit_loop WHEN (RESET = '1' OR COMRESET = '1');
--            WAIT FOR MAX_COMINIT_SPACE;
            transmit_cominit_end <= '1', '0' AFTER 40 * RXPERIOD;
            debug ("transmit_cominit_end = 1");
            WAIT UNTIL TXclk = '1';
--            transmit_cominit_end <= '0';
            EXIT;
        END LOOP;
        END IF;
        IF transmit_comwake = '1' AND transmit_comwake_end = '0' THEN   
        debug ("transmit_comwake = 1");
        comwake_loop: LOOP
--            WAIT UNTIL TXclk = '1';        
            FOR i IN 0 TO 3 LOOP
                SendAlign(TX_shift_rdy, TXclk, TX_ld, TX_reg);
                WAIT UNTIL TXclk = '1';
                EXIT comwake_loop WHEN (RESET = '1' OR COMRESET = '1');
            END LOOP;
            WAIT UNTIL TX_shift_reg_empty = '1';
            WAIT FOR 160 * TXPERIOD;
            FOR i IN 0 TO 3 LOOP
                SendAlign(TX_shift_rdy, TXclk, TX_ld, TX_reg);
                EXIT comwake_loop WHEN (RESET = '1' OR COMRESET = '1');
                WAIT UNTIL TXclk = '1';
            END LOOP;
            WAIT UNTIL TX_shift_reg_empty = '1';
            WAIT UNTIl RESET ='1' OR COMRESET = '1' FOR 160 * TXPERIOD;
            EXIT comwake_loop WHEN (RESET = '1' OR COMRESET = '1');
            FOR i IN 0 TO 3 LOOP
                SendAlign(TX_shift_rdy, TXclk, TX_ld, TX_reg);
                EXIT comwake_loop WHEN (RESET = '1' OR COMRESET = '1');
                WAIT UNTIL TXclk = '1';
            END LOOP;
            WAIT UNTIL TX_shift_reg_empty = '1';
            WAIT FOR 160 * TXPERIOD;
            FOR i IN 0 TO 3 LOOP
                SendAlign(TX_shift_rdy, TXclk, TX_ld, TX_reg);
                EXIT comwake_loop WHEN (RESET = '1' OR COMRESET = '1');
                WAIT UNTIL TXclk = '1';
            END LOOP;
            WAIT UNTIL TX_shift_reg_empty = '1';
            WAIT UNTIl RESET ='1' OR COMRESET = '1' FOR 160 * TXPERIOD;
            EXIT comwake_loop WHEN (RESET = '1' OR COMRESET = '1');
            FOR i IN 0 TO 3 LOOP
                SendAlign(TX_shift_rdy, TXclk, TX_ld, TX_reg);
                EXIT comwake_loop WHEN (RESET = '1' OR COMRESET = '1');
                WAIT UNTIL TXclk = '1';
            END LOOP;
            WAIT UNTIL TX_shift_reg_empty = '1';
            WAIT UNTIl RESET ='1' OR COMRESET = '1' FOR 160 * TXPERIOD;
            EXIT comwake_loop WHEN (RESET = '1' OR COMRESET = '1');
            FOR i IN 0 TO 3 LOOP
                SendAlign(TX_shift_rdy, TXclk, TX_ld, TX_reg);
                EXIT comwake_loop WHEN (RESET = '1' OR COMRESET = '1');
                WAIT UNTIL TXclk = '1';
            END LOOP;
            WAIT UNTIL TX_shift_reg_empty = '1';
            WAIT UNTIl RESET ='1' OR COMRESET = '1' FOR MAX_COMWAKE_SPACE;
            EXIT comwake_loop WHEN (RESET = '1' OR COMRESET = '1');
--            transmit_comwake_end <= '1';--, '0' AFTER RXPERIOD;
            transmit_comwake_end <= '1', '0' AFTER 40 * RXPERIOD;
            debug ("transmit_comwake_end = 1");
            WAIT UNTIL TXclk = '1';
--            transmit_comwake_end <= '0';
            EXIT;
        END LOOP;
        END IF;
        IF transmit_align = '1' THEN 
            debug ("transmit_align = 1");
--            WAIT UNTIL TXclk = '1';        
            SendAlign(TX_shift_rdy, TXclk, TX_ld, TX_reg);
--            transmit_align_end <= '1', '0' AFTER 40 * RXPERIOD;
            transmit_align_end <= '1';
            debug ("transmit_align_end = 1");
            WAIT UNTIL TXclk = '1';
            transmit_align_end <= '0';
        END IF;      
        IF transmit_link_data = '1' THEN
            debug ("transmit_link_data = 1");
--            WAIT UNTIL TXclk = '1';        
            IF TX_shift_rdy = '0' THEN
                WAIT UNTIL TX_shift_rdy = '1';
            END IF;
            WAIT UNTIL TXclk = '1';
            debug ("DATAIN (9-0)");
            TX_reg <= DATAIN(9 DOWNTO 0);
               TX_ld <= '1';
            WAIT UNTIL TXclk = '1';        
               TX_ld <= '0';               
               WAIT UNTIL TX_shift_rdy = '1';
            WAIT UNTIL TXclk = '1';
               debug ("DATAIN (19-10)");
               TX_reg <= DATAIN(19 DOWNTO 10);
               TX_ld <= '1';
            WAIT UNTIL TXclk = '1';        
               TX_ld <= '0';               
               WAIT UNTIL TX_shift_rdy = '1';
            WAIT UNTIL TXclk = '1';
               debug ("DATAIN (29-20)");
               TX_reg <= DATAIN(29 DOWNTO 20);
               TX_ld <= '1';
            WAIT UNTIL TXclk = '1';        
               TX_ld <= '0';               
               WAIT UNTIL TX_shift_rdy = '1';
            WAIT UNTIL TXclk = '1';
               debug ("DATAIN (39-30)");
               TX_reg <= DATAIN(39 DOWNTO 30);
               TX_ld <= '1';
            WAIT UNTIL TXclk = '1';        
               TX_ld <= '0';               
           END IF;        
    END PROCESS DATA_TRANS;              

    ----------------------------------------------------------------------------
    -- Control block                                                          --
    ----------------------------------------------------------------------------                   
--    PHY_CONTROL : PROCESS(TXclk, PHYRESET, COMRESET)   
    PHY_CONTROL : PROCESS(SYSTEMCLOCK, PHYRESET, COMRESET)   
    procedure debug (constant s : in string) is
    begin
      report debug("") & "PHY_CONTROL : " & s;
    end procedure debug;
    BEGIN           
        IF PHYRESET = '1' OR COMRESET = '1' THEN       
            init_state <= DR_RESET;
        ELSIF rising_edge(SYSTEMCLOCK) THEN       
            CASE init_state IS
                WHEN DR_RESET =>
                  debug ("state : " & phy_init'image(init_state));
                    IF COMRESET = '1' OR PHYRESET = '1' THEN
                        init_state <= DR_RESET;
                        debug ("next_state : DR_RESET");
                    ELSIF COMRESET = '0' AND PHYRESET = '0' THEN
                        init_state <= DR_COMINIT;
                        debug ("next_state : DR_COMINIT");
                    ELSE
                        init_state <= DR_RESET;        
                        debug ("next_state : DR_RESET");                        
                    END IF;                 
                WHEN DR_COMINIT =>
                  debug ("state : " & phy_init'image(init_state));
                    IF transmit_cominit_end  = '1' THEN
                        init_state <= DR_AwaitCOMWAKE;
                        debug ("next_state : DR_AwaitCOMWAKE");
                    ELSE   
                        init_state <= DR_COMINIT;                    
                        debug ("next_state : DR_COMINIT");
                    END IF; 
                WHEN DR_AwaitCOMWAKE =>         
                  debug ("state : " & phy_init'image(init_state));
                    IF COMWAKE = '1' THEN
                        init_state <= DR_AwaitNoCOMWAKE;
                        debug ("next_state : DR_AwaitNoCOMWAKE");
                    ELSE   
                        init_state <= DR_AwaitCOMWAKE;
                        debug ("next_state : DR_AwaitCOMWAKE");                        
                    END IF;                     
                WHEN DR_AwaitNoCOMWAKE =>
                  debug ("state : " & phy_init'image(init_state));
                    IF COMWAKE = '0' AND power_on = '1' THEN
                        init_state <= DR_Calibrate;
                        debug ("next_state : DR_Calibrate");
                    ELSIF COMWAKE = '0' AND power_on = '0' THEN
                        init_state <= DR_COMWAKE;
                        debug ("next_state : DR_COMWAKE");
                    ELSE   
                        init_state <= DR_AwaitNoCOMWAKE;
                        debug ("next_state : DR_AwaitNoCOMWAKE");                        
                    END IF;                                 
                WHEN DR_Calibrate =>            
                  debug ("state : " & phy_init'image(init_state));
                    IF calibration_end = '1' THEN
                        init_state <= DR_COMWAKE;
                        debug ("next_state : DR_COMWAKE");
                    ELSE 
                        init_state <= DR_Calibrate;
                        debug ("next_state : DR_Calibrate");
                    END IF;                                        
                WHEN DR_COMWAKE =>
                  debug ("state : " & phy_init'image(init_state));
                    IF transmit_comwake_end  = '1' THEN
                        init_state <= DR_SendAlign;
                        debug ("next_state : DR_SendAlign");
                    ELSE   
                        init_state <= DR_COMWAKE;
                        debug ("next_state : DR_COMWAKE");                        
                    END IF;                 
                    WHEN DR_SendAlign =>
                    IF align_ctrl  = '1' THEN
                        init_state <= DR_Ready;
                        debug ("next_state : DR_Ready");
                    ELSIF send_align_cnt = 0 AND speed > 1 THEN   
                        init_state <= DR_ReduceSpeed;
                        debug ("next_state : DR_ReduceSpeed");                        
                    ELSIF send_align_cnt = 0 AND speed = 1 THEN   
                        init_state <= DR_Error;
                        debug ("next_state : DR_Error");
                    ELSE
                        init_state <= DR_SendAlign;
                        debug ("next_state : DR_SendAlign");
                    END IF;                 
                WHEN DR_Ready =>
                  debug ("state : " & phy_init'image(init_state));
                    IF PARTIAL  = '1' THEN
                        init_state <= DR_Partial;
                        debug ("next_state : DR_Partial");
                    ELSIF SLUMBER = '1' THEN   
                        init_state <= DR_Slumber;
                        debug ("next_state : DR_Slumber");
                    ELSE 
                        init_state <= DR_Ready;
                        debug ("next_state : DR_Ready");
                    END IF;                 
                WHEN DR_Partial =>   
                  debug ("state : " & phy_init'image(init_state));
                    IF PARTIAL  = '0' AND COMWAKE = '0' THEN
                        init_state <= DR_COMWAKE;
                        debug ("next_state : DR_COMWAKE");
                    ELSIF PARTIAL  = '0' AND COMWAKE = '1'  THEN   
                        init_state <= DR_AwaitNoCOMWAKE;
                        debug ("next_state : DR_AwaitNoCOMWAKE");
                    ELSE 
                        init_state <= DR_Partial;
                        debug ("next_state : DR_Partial");
                    END IF;                                 
                WHEN DR_Slumber =>
                  debug ("state : " & phy_init'image(init_state));
                    IF SLUMBER  = '0' AND COMWAKE = '0' THEN
                        init_state <= DR_COMWAKE;
                        debug ("next_state : DR_COMWAKE");
                    ELSIF SLUMBER  = '0' AND COMWAKE = '1'  THEN   
                        init_state <= DR_AwaitNoCOMWAKE;
                        debug ("next_state : DR_AwaitNoCOMWAKE");
                    ELSE 
                        init_state <= DR_Partial;
                        debug ("next_state : DR_Partial");
                    END IF;                                 
                    WHEN DR_ReduceSpeed =>        
                        init_state <= DR_SendAlign;
                        debug ("next_state : DR_SendAlign");
                WHEN DR_Error =>
                  debug ("state : " & phy_init'image(init_state));
                    IF resume  = '1' THEN
                        init_state <= DR_COMWAKE;
                        debug ("next_state : DR_COMWAKE");
                    ELSE    
                        init_state <= DR_Error;
                        debug ("next_state : DR_Error");
                    END IF;
                WHEN others => 
                    init_state <= DR_RESET;                 
            END CASE;
        END IF;
           END PROCESS PHY_CONTROL;

        CONTROL_OUT : PROCESS(init_state)--, send_align_cnt)
        procedure debug (constant s : in string) is
        begin
          report debug("") & "CONTROL_OUT : " & s;
        end procedure debug;
        BEGIN                      
            PHYRDY <= '0';         
            transmit_cominit <= '0';
            transmit_comwake <= '0';
            transmit_align <= '0';
            CASE init_state IS
                WHEN DR_RESET =>
                debug ("state : " & phy_init'image(init_state));
                WHEN DR_COMINIT => transmit_cominit <= '1';--, '0' AFTER 1 ps;
                debug ("state : " & phy_init'image(init_state));
                WHEN DR_AwaitCOMWAKE =>         
                debug ("state : " & phy_init'image(init_state));
                WHEN DR_AwaitNoCOMWAKE =>
                debug ("state : " & phy_init'image(init_state));
                WHEN DR_Calibrate => calibration_end <= '1' AFTER 238 ns;           
                debug ("state : " & phy_init'image(init_state));
                WHEN DR_COMWAKE => transmit_comwake <= '1';--, '0' AFTER 1 ps;
                                    reset_align_cnt <= '1', '0' AFTER 1 ps;
                                    debug ("state : " & phy_init'image(init_state));
                    WHEN DR_SendAlign => transmit_align <= '1';--, '0' AFTER 1 ps;
                    debug ("state : " & phy_init'image(init_state));
                WHEN DR_Ready => PHYRDY <= '1';
                debug ("state : " & phy_init'image(init_state));
                WHEN DR_Partial =>    
                debug ("state : " & phy_init'image(init_state));
                WHEN DR_Slumber =>
                debug ("state : " & phy_init'image(init_state));
                    WHEN DR_ReduceSpeed =>  reset_align_cnt <= '1', '0' AFTER 1 ps;      
                    debug ("state : " & phy_init'image(init_state));
                WHEN DR_Error =>               
                debug ("state : " & phy_init'image(init_state));
                WHEN others =>
            END CASE;        
        END PROCESS CONTROL_OUT;

        ALIGN_CNT : PROCESS(reset_align_cnt, transmit_align_end)
        procedure debug (constant s : in string) is
        begin
          report debug("") & "ALIGN_CNT : " & s;
        end procedure debug;
        BEGIN                 
            IF rising_edge(reset_align_cnt) THEN
                send_align_cnt <= 2048;
                debug ("reset_align_cnt , send_align_cnt = 2048");
            END IF;
            IF rising_edge(transmit_align_end) THEN
                send_align_cnt <= send_align_cnt - 1;
            END IF;        
        END PROCESS ALIGN_CNT;

    ----------------------------------------------------------------------------
    ----------------------------------------------------------------------------
    --                       LINK                                             --
    ----------------------------------------------------------------------------
    ----------------------------------------------------------------------------
    ----------------------------------------------------------------------------
    -- SYSTEM CLOCK                                                           --
    ----------------------------------------------------------------------------                   
    SYSTEMCLOCK <= NOT(SYSTEMCLOCK) AFTER (40*TXPERIOD)/2;

    ----------------------------------------------------------------------------
    -- Transmit control                                                           --
    ----------------------------------------------------------------------------                   
        LINK_STATE_TR : PROCESS (RESET, SYSTEMCLOCK)
        BEGIN                     
            IF RESET = '1' THEN
                link_state <= LS4_L_RESET;
            ELSIF rising_edge(SYSTEMCLOCK) THEN
                link_state <= next_link_state;
            END IF;
        END PROCESS LINK_STATE_TR;    
        LINK_TX_NXT : PROCESS ( link_state, PHYRDY, 
                                RX_fifo_full, TX_fifo_empty,
                                TP_result, 
                                crc_check,
                                SYNCp, R_RDYp, X_RDYp, SOFp, EOFp, WTRMp, HOLDp, HOLDAp,
                                R_IPp, R_OKp, R_ERRp) is
        procedure debug (constant s : in string) is
        begin
          report debug("") & "LINK_TX_NXT : " & s;
        end procedure debug;
        BEGIN                   
            CASE link_state IS
                WHEN L1_L_IDLE => 
                  debug ("state : " & link_state_type'image(link_state));
                    IF PHYRDY = '0' THEN
                        next_link_state <= LS1_L_NoCommErr;                    
                        debug ("next_state : LS1_L_NoCommErr");
                    ELSIF TX_fifo_empty = '0' THEN
                        next_link_state <= LT2_DL_SendChkRdy;
                        debug ("next_state : LT2_DL_SendChkRdy");
                    ELSIF X_RDYp = '1' THEN
                        next_link_state <= LR2_L_RcvWaitFifo;                    
                        debug ("next_state : LR2_L_RcvWaitFifo");
                    ELSE
                        next_link_state <= L1_L_IDLE;                    
                    END IF;                
                WHEN LS1_L_NoCommErr => next_link_state <= LS2_L_NoComm;
                    debug ("state : " & link_state_type'image(link_state));
                WHEN LS2_L_NoComm =>  
                    debug ("state : " & link_state_type'image(link_state));
                    IF PHYRDY = '1' THEN
                        next_link_state <= LS3_L_SendAlign;
                        debug ("next_state : LS3_L_SendAlign");
                    ELSE
                        next_link_state <= LS2_L_NoComm;
                    END IF;
                WHEN LS3_L_SendAlign =>
                    debug ("state : " & link_state_type'image(link_state));
                    IF PHYRDY = '1' THEN
                        next_link_state <= L1_L_IDLE;
                        debug ("next_state : L1_L_IDLE");
                    ELSE
                        next_link_state <= LS1_L_NoCommErr;
                        debug ("next_state : LS1_L_NoCommErr");
                    END IF;
                WHEN LS4_L_RESET => next_link_state <= LS2_L_NoComm;
                    debug ("state : " & link_state_type'image(link_state));
                WHEN LT2_DL_SendChkRdy =>
                    debug ("state : " & link_state_type'image(link_state));
                    IF PHYRDY = '0' THEN
                        next_link_state <= LS1_L_NoCommErr;
                        debug ("next_state : LS1_L_NoCommErr");
                    ELSIF R_RDYp = '1' THEN
                        next_link_state <= LT3_L_SendSOF;
                        debug ("next_state : LT3_L_SendSOF");
                    ELSE
                        next_link_state <= LT2_DL_SendChkRdy;
                        debug ("next_state : LT2_DL_SendChkRdy");
                    END IF;                                
                WHEN LT3_L_SendSOF =>
                    debug ("state : " & link_state_type'image(link_state));
                    IF PHYRDY = '0' THEN
                        next_link_state <= LS1_L_NoCommErr;
                        debug ("next_state : LS1_L_NoCommErr");
                    ELSIF SYNCp = '1' THEN
                        next_link_state <= L1_L_IDLE;
                        debug ("next_state : L1_L_IDLE");
                    ELSE
                        next_link_state <= LT4_L_SendData;
                        debug ("next_state : LT4_L_SendData");
                    END IF;                                
                WHEN LT4_L_SendData =>
                    debug ("state : " & link_state_type'image(link_state));
                    IF PHYRDY = '0' THEN
                        next_link_state <= LS1_L_NoCommErr;
                        debug ("next_state : LS1_L_NoCommErr");
                    ELSIF SYNCp = '1' THEN
                        next_link_state <= L1_L_IDLE;
                        debug ("next_state : L1_L_IDLE");
                    ELSIF HOLDp = '1' AND TX_fifo_empty = '0' THEN
                        next_link_state <= LT5_L_RcvrHold;
                        debug ("next_state : LT5_L_RcvrHold");
--                    ELSIF TP_no_data = '1' THEN
                    ELSIF TX_fifo_empty = '1' THEN
                        next_link_state <= LT7_L_SendCRC;
                        debug ("next_state : LT7_L_SendCRC");
                    ELSE
                        next_link_state <= LT4_L_SendData;
                    END IF;                                                
                WHEN LT5_L_RcvrHold =>                  
                    debug ("state : " & link_state_type'image(link_state));
                    IF PHYRDY = '0' THEN
                        next_link_state <= LS1_L_NoCommErr;
                        debug ("next_state : LS1_L_NoCommErr");
                    ELSIF SYNCp = '1' THEN
                        next_link_state <= L1_L_IDLE;
                        debug ("next_state : L1_L_IDLE");
                    ELSIF HOLDp = '1' AND TX_fifo_empty = '0' THEN
                        next_link_state <= LT5_L_RcvrHold;
                        debug ("next_state : LT5_L_RcvrHold");
                    ELSE
                        next_link_state <= LT4_L_SendData;
                        debug ("next_state : LT4_L_SendData");
                    END IF;                                                                
                WHEN LT6_L_SendHold =>
                    debug ("state : " & link_state_type'image(link_state));
                WHEN LT7_L_SendCRC => 
                    debug ("state : " & link_state_type'image(link_state));
                    IF PHYRDY = '0' THEN
                        next_link_state <= LS1_L_NoCommErr;
                        debug ("next_state : LS1_L_NoCommErr");
                    ELSIF SYNCp = '1' THEN
                        next_link_state <= L1_L_IDLE;
                        debug ("next_state : L1_L_IDLE");
                    ELSE
                        next_link_state <= LT8_L_SendEOF;
                        debug ("next_state : LT8_L_SendEOF");
                    END IF;                    
                WHEN LT8_L_SendEOF =>   
                    debug ("state : " & link_state_type'image(link_state));
                    IF PHYRDY = '0' THEN
                        next_link_state <= LS1_L_NoCommErr;
                        debug ("next_state : LS1_L_NoCommErr");
                    ELSIF SYNCp = '1' THEN
                        next_link_state <= L1_L_IDLE;
                        debug ("next_state : L1_L_IDLE");
                    ELSE
                        next_link_state <= LT9_L_Wait;
                        debug ("next_state : LT9_L_Wait");
                    END IF;                                    
                WHEN LT9_L_Wait =>          
                    debug ("state : " & link_state_type'image(link_state));
                    IF PHYRDY = '0' THEN
                        next_link_state <= LS1_L_NoCommErr;
                        debug ("next_state : LS1_L_NoCommErr");
                    ELSIF SYNCp = '1' THEN  -- fail
                        next_link_state <= L1_L_IDLE;
                        debug ("next_state : L1_L_IDLE");
                    ELSIF R_OKp = '1' THEN  -- good
                        next_link_state <= L1_L_IDLE;                    
                        debug ("next_state : L1_L_IDLE");
                    ELSIF R_ERRp = '1' THEN -- bad 
                        next_link_state <= L1_L_IDLE;                    
                        debug ("next_state : L1_L_IDLE");
                    ELSE
                        next_link_state <= LT9_L_Wait;
                    END IF;                                    
                WHEN LR1_L_RcvChkRdy =>
                    debug ("state : " & link_state_type'image(link_state));
                    IF PHYRDY = '0' THEN
                        next_link_state <= LS1_L_NoCommErr;
                        debug ("next_state : LS1_L_NoCommErr");
                    ELSIF X_RDYp = '1' THEN                
                        next_link_state <= LR1_L_RcvChkRdy;
                        debug ("next_state : LR1_L_RcvChkRdy");
                    ELSIF SOFp = '1' THEN                
                        next_link_state <= LR3_L_RcvData;
                        debug ("next_state : LR3_L_RcvData");
                    ELSE
                        next_link_state <= L1_L_IDLE;
                        debug ("next_state : L1_L_IDLE");
                    END IF;                                    
                WHEN LR2_L_RcvWaitFifo => 
                    debug ("state : " & link_state_type'image(link_state));
                    IF PHYRDY = '0' THEN
                        next_link_state <= LS1_L_NoCommErr;
                        debug ("next_state : LS1_L_NoCommErr");
--                    ELSIF TP_Fifo_Space_Avail = '1' AND X_RDYp = '1' THEN                
                    ELSIF RX_fifo_full = '0' AND X_RDYp = '1' THEN                
                        debug ("next_state : LR1_L_RcvChkRdy");
                        next_link_state <= LR1_L_RcvChkRdy;
--                    ELSIF TP_Fifo_Space_Avail = '0' AND X_RDYp = '1' THEN                
                    ELSIF RX_fifo_full = '1' AND X_RDYp = '1' THEN                
                        debug ("next_state : LR2_L_RcvWaitFifo");
                        next_link_state <= LR2_L_RcvWaitFifo;
                    ELSE
                        next_link_state <= L1_L_IDLE;
                        debug ("next_state : L1_L_IDLE");
                    END IF;                    
                WHEN LR3_L_RcvData =>
                    debug ("state : " & link_state_type'image(link_state));
                    IF PHYRDY = '0' THEN
                        next_link_state <= LS1_L_NoCommErr;
                        debug ("next_state : LS1_L_NoCommErr");
                    ELSIF HOLDp = '1' THEN                
                        next_link_state <= LR5_L_SendHold;
                        debug ("next_state : LR5_L_SendHold");
                    ELSIF EOFp = '1' THEN                
                        next_link_state <= LR6_L_RcvEOF;
                        debug ("next_state : LR6_L_RcvEOF");
                    ELSIF WTRMp = '1' THEN                
                        next_link_state <= LR9_L_BadEnd;
                        debug ("next_state : LR9_L_BadEnd");
                    ELSIF SYNCp = '1' THEN                
                        next_link_state <= L1_L_IDLE;
                        debug ("next_state : L1_L_IDLE");
                    ELSIF RX_fifo_full = '1' THEN
                        next_link_state <= LR4_L_Hold;                    
                        debug ("next_state : LR4_L_Hold");
                    ELSE
                        next_link_state <= LR3_L_RcvData;
                    END IF;                                                    
                WHEN LR4_L_Hold =>
                    debug ("state : " & link_state_type'image(link_state));
                    IF PHYRDY = '0' THEN
                        next_link_state <= LS1_L_NoCommErr;
                        debug ("next_state : LS1_L_NoCommErr");
                    ELSIF SYNCp = '1' THEN                
                        next_link_state <= L1_L_IDLE;
                        debug ("next_state : L1_L_IDLE");
                    ELSIF EOFp = '1' THEN                
                        next_link_state <= LR6_L_RcvEOF;
                        debug ("next_state : LR6_L_RcvEOF");
                    ELSIF RX_fifo_full = '1' THEN
                        next_link_state <= LR4_L_Hold;                    
                        debug ("next_state : LR4_L_Hold");
                    ELSIF RX_fifo_full = '0' AND HOLDp = '1' THEN                
                        next_link_state <= LR5_L_SendHold;
                        debug ("next_state : LR5_L_SendHold");
                    ELSIF RX_fifo_full = '0' AND HOLDAp = '1' THEN                
                        next_link_state <= LR3_L_RcvData;
                        debug ("next_state : LR3_L_RcvData");
                    END IF;                                                    
                WHEN LR5_L_SendHold =>
                    debug ("state : " & link_state_type'image(link_state));
                    IF PHYRDY = '0' THEN
                        next_link_state <= LS1_L_NoCommErr;
                        debug ("next_state : LS1_L_NoCommErr");
                    ELSIF SYNCp = '1' THEN                
                        next_link_state <= L1_L_IDLE;
                        debug ("next_state : L1_L_IDLE");
                    ELSIF EOFp = '1' THEN                
                        next_link_state <= LR6_L_RcvEOF;
                        debug ("next_state : LR6_L_RcvEOF");
                    ELSIF HOLDp = '1' THEN                
                        next_link_state <= LR5_L_SendHold;
                        debug ("next_state : LR5_L_SendHold");
                    ELSE                
                        next_link_state <= LR3_L_RcvData;
                        debug ("next_state : LR3_L_RcvData");
                    END IF;                                                    
                WHEN LR6_L_RcvEOF => 
                    debug ("state : " & link_state_type'image(link_state));
                    IF PHYRDY = '0' THEN
                        next_link_state <= LS1_L_NoCommErr;
                        debug ("next_state : LS1_L_NoCommErr");
                    ELSIF crc_check = '1' THEN                
                        next_link_state <= LR7_L_GoodCRC;
                        debug ("next_state : LR7_L_GoodCRC");
                    ELSIF crc_check = '0' THEN                
                        next_link_state <= LR9_L_BadEnd;
                        debug ("next_state : LR9_L_BadEnd");
                    ELSE
                        next_link_state <= LR6_L_RcvEOF;
                        debug ("next_state : LR6_L_RcvEOF");
                    END IF;                                                    
                WHEN LR7_L_GoodCRC => 
                    debug ("state : " & link_state_type'image(link_state));
                    IF PHYRDY = '0' THEN
                        next_link_state <= LS1_L_NoCommErr;
                        debug ("next_state : LS1_L_NoCommErr");
                    ELSIF SYNCp = '1' THEN                
                        next_link_state <= L1_L_IDLE;
                        debug ("next_state : L1_L_IDLE");
                    ELSE
                        CASE TP_result IS
                            WHEN GOOD => next_link_state <= LR8_L_GoodEnd;
                              debug ("next_state : LR8_L_GoodEnd");
                            WHEN NO_FIS => next_link_state <= LR9_L_BadEnd;
                              debug ("next_state : LR9_L_BadEnd");
                            WHEN NO_RESP => next_link_state <= LR7_L_GoodCRC; 
                              debug ("next_state : LR7_L_GoodCRC");
                            WHEN ERR => next_link_state <= LR9_L_BadEnd;
                              debug ("next_state : LR9_L_BadEnd");
                            WHEN others => next_link_state <= LR9_L_BadEnd;
                              debug ("next_state : LR9_L_BadEnd");
                        END CASE;
                    END IF;                                                                                    
                WHEN LR8_L_GoodEnd =>   
                    debug ("state : " & link_state_type'image(link_state));
                    IF PHYRDY = '0' THEN
                        next_link_state <= LS1_L_NoCommErr;
                        debug ("next_state : LS1_L_NoCommErr");
                    ELSIF SYNCp = '1' THEN                
                        next_link_state <= L1_L_IDLE;
                        debug ("next_state : L1_L_IDLE");
                    ELSE
                        next_link_state <= LR8_L_GoodEnd;
                        debug ("next_state : LR8_L_GoodEnd");
                    END IF;                                                                    
                WHEN LR9_L_BadEnd =>
                    debug ("state : " & link_state_type'image(link_state));
                    IF PHYRDY = '0' THEN
                        next_link_state <= LS1_L_NoCommErr;
                        debug ("next_state : LS1_L_NoCommErr");
                    ELSIF SYNCp = '1' THEN                
                        next_link_state <= L1_L_IDLE;
                        debug ("next_state : L1_L_IDLE");
                    ELSE
                        next_link_state <= LR9_L_BadEnd;
                        debug ("next_state : LR9_L_BadEnd");
                    END IF;                                                                    
                WHEN others => next_link_state <= LS4_L_RESET;
            END CASE;
        END PROCESS LINK_TX_NXT;
        LINK_TX_OUT : PROCESS (link_state, SYSTEMCLOCK)
        VARIABLE cnt : INTEGER := 0;                         
        VARIABLE tempd : std_logic_vector(9 DOWNTO 0);
        VARIABLE rnd_data : std_logic_vector(31 DOWNTO 0); -- random data gen for repeated primitives
        VARIABLE FIS_data : std_logic_vector(31 DOWNTO 0);
        VARIABLE TX_rd : std_logic := '0';
        VARIABLE RX_rd : std_logic := '0';     
        VARIABLE crc   : std_logic_vector(31 DOWNTO 0);        
        procedure debug (constant s : in string) is
        begin
          report debug("") & "LINK_TX_OUT : " & s;
        end procedure debug;
        BEGIN 
            IF link_state'EVENT THEN
                cnt := 0; 
            END IF;                 
            IF link_state'EVENT OR (rising_edge(SYSTEMCLOCK) AND next_link_state = link_state) THEN
                TP_transmission_status <= '0'; 
                  CASE link_state IS
                     WHEN L1_L_IDLE => 
                      debug ("state : " & link_state_type'image(link_state));
                         transmit_link_data <= '1';
                         CASE cnt IS 
                             WHEN 0 =>  -- SYNCp
                              debug ("state : " & link_state_type'image(link_state) & " , cnt = 0");
                                 DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                                 TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd))); 
                                encode(TX_rd, D214, DATAIN(19 DOWNTO 10));
                                encode(TX_rd, D215, DATAIN(29 DOWNTO 20));
                                encode(TX_rd, D215, DATAIN(39 DOWNTO 30)); 
                                 cnt := cnt + 1 ;
                             WHEN 1 =>  -- SYNCp
                              debug ("state : " & link_state_type'image(link_state) & " , cnt = 1");
                                 DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                                 TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd))); 
                                encode(TX_rd, D214, DATAIN(19 DOWNTO 10));
                                encode(TX_rd, D215, DATAIN(29 DOWNTO 20));
                                encode(TX_rd, D215, DATAIN(39 DOWNTO 30)); 
                                 cnt := cnt + 1 ;
                             WHEN 2 =>  -- CONT
                              debug ("state : " & link_state_type'image(link_state) & " , cnt = 2");
                                 DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                                 TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd))); 
                                encode(TX_rd, D105, DATAIN(19 DOWNTO 10));
                                encode(TX_rd, D254, DATAIN(29 DOWNTO 20));
                                encode(TX_rd, D254, DATAIN(39 DOWNTO 30)); 
                                 cnt := cnt + 1 ;
                             WHEN others => -- random data      
                              debug ("state : " & link_state_type'image(link_state) & " , cnt = others");
                                 lsfr(lsfr_state_cont, rnd_data);
                                encode(TX_rd, rnd_data(7 DOWNTO 0)  , DATAIN(9 DOWNTO 0));
                                encode(TX_rd, rnd_data(15 DOWNTO 8) , DATAIN(19 DOWNTO 10));
                                encode(TX_rd, rnd_data(23 DOWNTO 16), DATAIN(29 DOWNTO 20));
                                encode(TX_rd, rnd_data(31 DOWNTO 24), DATAIN(39 DOWNTO 30)); 
                         END CASE; 
                    WHEN LS1_L_NoCommErr =>    transmit_link_data <= '0';
                      debug ("state : " & link_state_type'image(link_state));
                       WHEN LS2_L_NoComm =>    transmit_link_data <= '0';
                        debug ("state : " & link_state_type'image(link_state));
                    WHEN LS3_L_SendAlign =>         
                      debug ("state : " & link_state_type'image(link_state));
                        transmit_link_data <= '1';   
                         DATAIN(9 DOWNTO 0)   <= cK285(to_nat(TX_rd));
                         TX_rd := new_rd(TX_rd, cK285(to_nat(TX_rd))); 
                        encode(TX_rd, D102, DATAIN(19 DOWNTO 10));
                        encode(TX_rd, D102, DATAIN(29 DOWNTO 20));
                        encode(TX_rd, D273, DATAIN(39 DOWNTO 30));                         
                     WHEN LS4_L_RESET =>     transmit_link_data <= '0';
                      debug ("state : " & link_state_type'image(link_state));
                    WHEN LT2_DL_SendChkRdy =>   
                      debug ("state : " & link_state_type'image(link_state));
                         transmit_link_data <= '1';
                         CASE cnt IS                     
                             WHEN 0 =>  -- X_RDYp
                              debug ("state : " & link_state_type'image(link_state) & " , cnt = 0");
                                 DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                                 TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd))); 
                                encode(TX_rd, D215, DATAIN(19 DOWNTO 10));
                                encode(TX_rd, D232, DATAIN(29 DOWNTO 20));
                                encode(TX_rd, D232, DATAIN(39 DOWNTO 30)); 
                                 cnt := cnt + 1 ;
                             WHEN 1 =>  -- X_RDYp
                              debug ("state : " & link_state_type'image(link_state) & " , cnt = 1");
                                 DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                                 TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd))); 
                                encode(TX_rd, D215, DATAIN(19 DOWNTO 10));
                                encode(TX_rd, D232, DATAIN(29 DOWNTO 20));
                                encode(TX_rd, D232, DATAIN(39 DOWNTO 30)); 
                                 cnt := cnt + 1 ;
                             WHEN 2 =>  -- CONT
                              debug ("state : " & link_state_type'image(link_state) & " , cnt = 2");
                                 DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                                 TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd))); 
                                encode(TX_rd, D105, DATAIN(19 DOWNTO 10));
                                encode(TX_rd, D254, DATAIN(29 DOWNTO 20));
                                encode(TX_rd, D254, DATAIN(39 DOWNTO 30)); 
                                 cnt := cnt + 1 ;
                             WHEN others => -- random data      
                              debug ("state : " & link_state_type'image(link_state) & " , cnt = others");
                                 lsfr(lsfr_state_cont, rnd_data);
                                encode(TX_rd, rnd_data(7 DOWNTO 0)  , DATAIN(9 DOWNTO 0));
                                encode(TX_rd, rnd_data(15 DOWNTO 8) , DATAIN(19 DOWNTO 10));
                                encode(TX_rd, rnd_data(23 DOWNTO 16), DATAIN(29 DOWNTO 20));
                                encode(TX_rd, rnd_data(31 DOWNTO 24), DATAIN(39 DOWNTO 30)); 
                         END CASE;  
                    WHEN LT3_L_SendSOF =>   
                      debug ("state : " & link_state_type'image(link_state));
                         transmit_link_data <= '1';
                        DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                        TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd)));  
                        encode(TX_rd, D215, DATAIN(19 DOWNTO 10));
                        encode(TX_rd, D231, DATAIN(29 DOWNTO 20));
                        encode(TX_rd, D231, DATAIN(39 DOWNTO 30)); 
                        crc := X"52325032";
                       WHEN LT4_L_SendData =>  
                        debug ("state : " & link_state_type'image(link_state));
                           transmit_link_data <= '1';                             
                           lsfr(lsfr_state_scramble, rnd_data);
                           FIS_data := TX_fifo(TX_rd_ptr);
                           get_crc(crc, FIS_data);
                           FIS_data := FIS_data XOR rnd_data;  
                           
                           tr_fifo_read <= '1', '0' AFTER 1 ps;
                           
                        encode(TX_rd, FIS_data(7 DOWNTO 0)  , DATAIN(9 DOWNTO 0));
                        encode(TX_rd, FIS_data(15 DOWNTO 8) , DATAIN(19 DOWNTO 10));
                        encode(TX_rd, FIS_data(23 DOWNTO 16), DATAIN(29 DOWNTO 20));
                        encode(TX_rd, FIS_data(31 DOWNTO 24), DATAIN(39 DOWNTO 30));                                         
                      WHEN LT5_L_RcvrHold =>  -- HOLDA
                        debug ("state : " & link_state_type'image(link_state));
                         transmit_link_data <= '1';
                        DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                        TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd)));  
                        encode(TX_rd, D105, DATAIN(19 DOWNTO 10));
                        encode(TX_rd, D214, DATAIN(29 DOWNTO 20));
                        encode(TX_rd, D214, DATAIN(39 DOWNTO 30)); 
                    WHEN LT6_L_SendHold => -- HOLD
                      debug ("state : " & link_state_type'image(link_state));
                        transmit_link_data <= '1';
                         DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                         TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd)));                 
                        encode(TX_rd, D105, DATAIN(19 DOWNTO 10));
                        encode(TX_rd, D216, DATAIN(29 DOWNTO 20));
                        encode(TX_rd, D216, DATAIN(39 DOWNTO 30)); 
                    WHEN LT7_L_SendCRC =>
                      debug ("state : " & link_state_type'image(link_state));
                        transmit_link_data <= '1';   
                        lsfr(lsfr_state_scramble, rnd_data);
                         crc := crc XOR rnd_data;
                        encode(TX_rd, crc(7 DOWNTO 0)  , DATAIN(9 DOWNTO 0));
                        encode(TX_rd, crc(15 DOWNTO 8) , DATAIN(19 DOWNTO 10));
                        encode(TX_rd, crc(23 DOWNTO 16), DATAIN(29 DOWNTO 20));
                        encode(TX_rd, crc(31 DOWNTO 24), DATAIN(39 DOWNTO 30));                                                                
                    WHEN LT8_L_SendEOF =>                           
                      debug ("state : " & link_state_type'image(link_state));
                        transmit_link_data <= '1';
                         DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                         TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd)));  
                        encode(TX_rd, D215, DATAIN(19 DOWNTO 10));
                        encode(TX_rd, D216, DATAIN(29 DOWNTO 20));
                        encode(TX_rd, D216, DATAIN(39 DOWNTO 30));                     
                    WHEN LT9_L_Wait => -- WTRM    
                      debug ("state : " & link_state_type'image(link_state));
                        transmit_link_data <= '1';
                         DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                         TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd)));
                        encode(TX_rd, D215, DATAIN(19 DOWNTO 10));
                        encode(TX_rd, D242, DATAIN(29 DOWNTO 20));
                        encode(TX_rd, D242, DATAIN(39 DOWNTO 30));                     
                        TP_transmission_status <= '1'; 
                    WHEN LR1_L_RcvChkRdy =>
                      debug ("state : " & link_state_type'image(link_state));
                         transmit_link_data <= '1';
                         CASE cnt IS 
                             WHEN 0 =>  -- R_RDYp
                              debug ("state : " & link_state_type'image(link_state) & " , cnt = 0");
                                 DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                                 TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd))); 
                                encode(TX_rd, D214, DATAIN(19 DOWNTO 10));
                                encode(TX_rd, D102, DATAIN(29 DOWNTO 20));
                                encode(TX_rd, D102, DATAIN(39 DOWNTO 30));                     
                                 cnt := cnt + 1 ;
                             WHEN 1 =>  -- R_RDYp
                              debug ("state : " & link_state_type'image(link_state) & " , cnt = 1");
                                 DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                                 TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd))); 
                                encode(TX_rd, D214, DATAIN(19 DOWNTO 10));
                                encode(TX_rd, D102, DATAIN(29 DOWNTO 20));
                                encode(TX_rd, D102, DATAIN(39 DOWNTO 30));                     
                                 cnt := cnt + 1 ;
                             WHEN 2 =>  -- CONT
                              debug ("state : " & link_state_type'image(link_state) & " , cnt = 2");
                                 DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                                 TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd))); 
                                encode(TX_rd, D105, DATAIN(19 DOWNTO 10));
                                encode(TX_rd, D254, DATAIN(29 DOWNTO 20));
                                encode(TX_rd, D254, DATAIN(39 DOWNTO 30)); 
                                 cnt := cnt + 1 ;
                             WHEN others => -- random data      
                              debug ("state : " & link_state_type'image(link_state) & " , cnt = others");
                                 lsfr(lsfr_state_cont, rnd_data);
                                encode(TX_rd, rnd_data(7 DOWNTO 0)  , DATAIN(9 DOWNTO 0));
                                encode(TX_rd, rnd_data(15 DOWNTO 8) , DATAIN(19 DOWNTO 10));
                                encode(TX_rd, rnd_data(23 DOWNTO 16), DATAIN(29 DOWNTO 20));
                                encode(TX_rd, rnd_data(31 DOWNTO 24), DATAIN(39 DOWNTO 30)); 
                         END CASE;                     
                    WHEN LR2_L_RcvWaitFifo => 
                      debug ("state : " & link_state_type'image(link_state));
                         transmit_link_data <= '1';
                         CASE cnt IS 
                             WHEN 0 =>  -- SYNCp
                              debug ("state : " & link_state_type'image(link_state) & " , cnt = 0");
                                 DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                                 TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd))); 
                                encode(TX_rd, D214, DATAIN(19 DOWNTO 10));
                                encode(TX_rd, D215, DATAIN(29 DOWNTO 20));
                                encode(TX_rd, D215, DATAIN(39 DOWNTO 30)); 
                                 cnt := cnt + 1 ;
                             WHEN 1 =>  -- SYNCp
                              debug ("state : " & link_state_type'image(link_state) & " , cnt = 1");
                                 DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                                 TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd))); 
                                encode(TX_rd, D214, DATAIN(19 DOWNTO 10));
                                encode(TX_rd, D215, DATAIN(29 DOWNTO 20));
                                encode(TX_rd, D215, DATAIN(39 DOWNTO 30)); 
                                 cnt := cnt + 1 ;
                             WHEN 2 =>  -- CONT
                              debug ("state : " & link_state_type'image(link_state) & " , cnt = 2");
                                 DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                                 TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd))); 
                                encode(TX_rd, D105, DATAIN(19 DOWNTO 10));
                                encode(TX_rd, D254, DATAIN(29 DOWNTO 20));
                                encode(TX_rd, D254, DATAIN(39 DOWNTO 30)); 
                                 cnt := cnt + 1 ;
                             WHEN others => -- random data      
                              debug ("state : " & link_state_type'image(link_state) & " , cnt = others");
                                 lsfr(lsfr_state_cont, rnd_data);
                                encode(TX_rd, rnd_data(7 DOWNTO 0)  , DATAIN(9 DOWNTO 0));
                                encode(TX_rd, rnd_data(15 DOWNTO 8) , DATAIN(19 DOWNTO 10));
                                encode(TX_rd, rnd_data(23 DOWNTO 16), DATAIN(29 DOWNTO 20));
                                encode(TX_rd, rnd_data(31 DOWNTO 24), DATAIN(39 DOWNTO 30)); 
                         END CASE;                     
                    WHEN LR3_L_RcvData => --R_IP
                      debug ("state : " & link_state_type'image(link_state));
                        transmit_link_data <= '1';
                         DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                         TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd))); 
                        encode(TX_rd, D215, DATAIN(19 DOWNTO 10));
                        encode(TX_rd, D212, DATAIN(29 DOWNTO 20));
                        encode(TX_rd, D212, DATAIN(39 DOWNTO 30)); 
                    WHEN LR4_L_Hold => --HOLD
                      debug ("state : " & link_state_type'image(link_state));
                        transmit_link_data <= '1';
                         DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                         TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd))); 
                        encode(TX_rd, D105, DATAIN(19 DOWNTO 10));
                        encode(TX_rd, D216, DATAIN(29 DOWNTO 20));
                        encode(TX_rd, D216, DATAIN(39 DOWNTO 30)); 
                    WHEN LR5_L_SendHold => --HOLDA   
                      debug ("state : " & link_state_type'image(link_state));
                        transmit_link_data <= '1';
                         DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                         TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd))); 
                        encode(TX_rd, D105, DATAIN(19 DOWNTO 10));
                        encode(TX_rd, D214, DATAIN(29 DOWNTO 20));
                        encode(TX_rd, D214, DATAIN(39 DOWNTO 30)); 
                    WHEN LR6_L_RcvEOF => --R_IP
                      debug ("state : " & link_state_type'image(link_state));
                        transmit_link_data <= '1';
                         DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                         TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd))); 
                        encode(TX_rd, D215, DATAIN(19 DOWNTO 10));
                        encode(TX_rd, D212, DATAIN(29 DOWNTO 20));
                        encode(TX_rd, D212, DATAIN(39 DOWNTO 30)); 
                    WHEN LR7_L_GoodCRC => --R_IP
                      debug ("state : " & link_state_type'image(link_state));
                        transmit_link_data <= '1';
                         DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                         TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd))); 
                        encode(TX_rd, D215, DATAIN(19 DOWNTO 10));
                        encode(TX_rd, D212, DATAIN(29 DOWNTO 20));
                        encode(TX_rd, D212, DATAIN(39 DOWNTO 30)); 
                    WHEN LR8_L_GoodEnd => --R_OK
                      debug ("state : " & link_state_type'image(link_state));
                        transmit_link_data <= '1';
                         DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                         TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd))); 
                        encode(TX_rd, D215, DATAIN(19 DOWNTO 10));
                        encode(TX_rd, D211, DATAIN(29 DOWNTO 20));
                        encode(TX_rd, D211, DATAIN(39 DOWNTO 30));
                    WHEN LR9_L_BadEnd => --R_ERR                  
                      debug ("state : " & link_state_type'image(link_state));
                        transmit_link_data <= '1';
                         DATAIN(9 DOWNTO 0)   <= cK283(to_nat(TX_rd));
                         TX_rd := new_rd(TX_rd, cK283(to_nat(TX_rd))); 
                        encode(TX_rd, D215, DATAIN(19 DOWNTO 10));
                        encode(TX_rd, D222, DATAIN(29 DOWNTO 20));
                        encode(TX_rd, D222, DATAIN(39 DOWNTO 30)); 
                    WHEN others =>
                END CASE;
            END IF;
        END PROCESS LINK_TX_OUT;


        LINK_RX_DEC : PROCESS(RXCLOCK)
        VARIABLE RX_rd : std_logic := '0';
        VARIABLE temp  : std_logic_vector(9 DOWNTO 0);
        procedure debug (constant s : in string) is
        begin
          report debug("") & "LINK_RX_DEC : " & s;
        end procedure debug;
        BEGIN                   
            IF rising_edge(RXCLOCK) THEN
                    temp := decode(RX_rd, DATAOUT(9 DOWNTO 0));  
                    RX_rd := new_rd(RX_rd, DATAOUT(9 DOWNTO 0));
                link_err(0) <= temp(8);
                link_ctrl(0) <= temp(9);
                link_data(7 DOWNTO 0) <= temp(7 DOWNTO 0);
              debug ("link(0) , data 7-0");
            
                    temp := decode(RX_rd, DATAOUT(19 DOWNTO 10));
                    RX_rd := new_rd(RX_rd, DATAOUT(19 DOWNTO 10));
                    link_err(1) <= temp(8);
                link_ctrl(1) <= temp(9);
                link_data(15 DOWNTO 8) <= temp(7 DOWNTO 0);
              debug ("link(1) , data 15-8");

                    temp := decode(RX_rd, DATAOUT(29 DOWNTO 20));
                    RX_rd := new_rd(RX_rd, DATAOUT(29 DOWNTO 20));
                    link_err(2) <= temp(8);
                link_ctrl(2) <= temp(9);
                link_data(23 DOWNTO 16) <= temp(7 DOWNTO 0);
              debug ("link(2) , 23-16");

                    temp := decode(RX_rd, DATAOUT(39 DOWNTO 30));
                    RX_rd := new_rd(RX_rd, DATAOUT(39 DOWNTO 30));
                    link_err(3) <= temp(8);
                link_ctrl(3) <= temp(9);
                link_data(31 DOWNTO 24) <= temp(7 DOWNTO 0);
                debug ("link(3) , 31-24");

            END IF;
        END PROCESS LINK_RX_DEC;

        PRIM_DEC : PROCESS (link_data, link_ctrl, link_err)
        VARIABLE cont : std_logic := '0';                         
        procedure debug (constant s : in string) is
        begin
          report debug("") & "PRIM_DEC : " & s;
        end procedure debug;
        BEGIN    
            IF link_ctrl = "0001" AND link_err = "0000" THEN          
                IF link_data = (D215 & D215 & D214 & K283) THEN  -- SYNC                  
                debug ("link_data = SYNC");
                    SYNCp <= '1';  
                    CONTp <= '0';
                    R_OKp <= '0';
                    R_IPp <= '0';
                    WTRMp <= '0';                        
                    cont := '0';
                ELSIF link_data = (D232 & D232 & D215 & K283) THEN   -- X_RDY
                debug ("link_data = X_RDY");
                    X_RDYp <= '1';
                    CONTp <= '0';
                    SYNCp <= '0';                    
                    cont := '0';
                ELSIF link_data = (D102 & D102 & D214 & K283) THEN   -- R_RDY
                debug ("link_data = R_RDY");
                    R_RDYp <= '1';
                    CONTp <= '0';    
                    SYNCp <= '0';                                            
                    cont := '0';
                ELSIF link_data = (D231 & D231 & D215 & K283) THEN    -- SOF  
                debug ("link_data = SOF");
                    SOFp <= '1';
                    CONTp <= '0'; 
                    X_RDYp <= '0';                        
                    cont := '0';
                ELSIF link_data = (D216 & D216 & D215 & K283) THEN     -- EOF
                debug ("link_data = EOF");
                    EOFp <= '1';
                    CONTp <= '0';                        
                    cont := '0';             
                ELSIF link_data = (D242 & D242 & D215 & K283) THEN     -- WTRM     
                debug ("link_data = WTRM");
                    EOFp <= '0';
                    WTRMp <= '1';
                    CONTp <= '0';                        
                    cont := '0';              
                ELSIF link_data = (D212 & D212 & D215 & K283) THEN       -- R_IP   
                debug ("link_data = R_IP");
                    R_IPp <= '1'; 
                    R_RDYp <= '0';  
                    HOLDp      <= '0';        
                    CONTp <= '0';    
                    cont := '0'; 
                ELSIF link_data = (D211 & D211 & D215 & K283) THEN        -- R_OK
                debug ("link_data = R_OK");
                    R_OKp <= '1';    
                    R_IPp <= '0';
                    CONTp <= '0';    
                    cont := '0';             
                ELSIF link_data = (D216 & D216 & D105 & K283) THEN        -- HOLD
                debug ("link_data = HOLD");
                    HOLDp <= '1';    
                    R_IPp <= '0';
                    CONTp <= '0';    
                    cont := '0';             
                ELSIF link_data = (D214 & D214 & D105 & K283) THEN        -- HOLDA
                debug ("link_data = HOLDA");
                    HOLDAp <= '1';    
                    CONTp <= '0';    
                    cont := '0';             
                ELSIF link_data = (D254 & D254 & D105 & K283) THEN         -- CONT  
                debug ("link_data = CONT");
                    CONTp <= '1';    
                    cont := '1';
                ELSE           
                    IF cont = '0' THEN
                      debug ("link_data = others , cont = 0");
                        CONTp     <= '0';    
                        DMATp      <= '0';
                        EOFp      <= '0';    
                        HOLDp      <= '0';
                        HOLDAp      <= '0';
                        PMACKp      <= '0';
                        PMNAKp      <= '0';
                        PMREQ_Pp  <= '0';
                        PMREQ_Sp  <= '0';
                        R_ERRp      <= '0';
                        R_IPp      <= '0';
                        R_OKp      <= '0';
                        R_RDYp      <= '0';
                           SOFp      <= '0';
                        SYNCp      <= '0';
                        WTRMp      <= '0';
                        X_RDYp      <= '0';
                    END IF;                    
                END IF;     
            ELSE                        -- non primitive word
                IF cont = '0' THEN
                  debug ("link_data = X , cont = 0");
                    CONTp     <= '0';    
                    DMATp      <= '0';
                    EOFp      <= '0';    
                    HOLDp      <= '0';
                    HOLDAp      <= '0';
                    PMACKp      <= '0';
                    PMNAKp      <= '0';
                    PMREQ_Pp  <= '0';
                    PMREQ_Sp  <= '0';
                    R_ERRp      <= '0';
                    R_IPp      <= '0';
                    R_OKp      <= '0';
                    R_RDYp      <= '0';
                    SOFp      <= '0';
                    SYNCp      <= '0';
                    WTRMp      <= '0';
                    X_RDYp      <= '0';
                END IF;                                       
            END IF;        
        END PROCESS PRIM_DEC;      

        DESCRAMBLE : PROCESS(SYSTEMCLOCK)
        VARIABLE crc : std_logic_vector(31 DOWNTO 0);
        VARIABLE rnd_data : std_logic_vector(31 DOWNTO 0);
        VARIABLE tmp : std_logic_vector(31 DOWNTO 0); 
        VARIABLE FIS_ERROR : BOOLEAN;
        procedure debug (constant s : in string) is
        begin
          report debug("") & "DESCRAMBLE : " & s;
        end procedure debug;
        BEGIN                  
            IF rising_edge(SYSTEMCLOCK) THEN
                IF SOFp = '1' THEN
                       crc := X"52325032";
--                    rcv_fifo_write <= '1', '0' AFTER 1 ps;
                    link_FIS_state <= FIS_SOF;
                    FIS_ERROR := FALSE;
                    debug ("link_FIS_state = FIS_SOF");
                END IF;
                IF (link_state = LR3_L_RcvData AND next_link_state = LR3_L_RcvData AND HOLDAp = '0') OR
                    (link_state = LR3_L_RcvData AND next_link_state = LR4_L_Hold) OR 
                    (link_state = LR4_L_Hold AND next_link_state = LR4_L_Hold AND HOLDAp = '0') THEN
                    lsfr(lsfr_state_descramble, rnd_data);
                       tmp := link_data XOR rnd_data;
                       get_crc(crc, tmp);
                       link_FIS_data <= tmp;  
                       link_crc <= crc;                    
                    link_FIS_state <= FIS_PAYLOAD;      
                    IF link_err /= "0000" THEN
                        FIS_ERROR := TRUE;
                    END IF;
                    debug ("link_FIS_state = FIS_PAYLOAD");
--                    rcv_fifo_write <= '1', '0' AFTER 1 ps;
                END IF;                         
                IF link_state = LR6_L_RcvEOF THEN     
                        link_FIS_state <= FIS_EOF;
                        debug ("link_FIS_state = FIS_EOF");
                    link_FIS_data <= crc;
                    link_crc <= crc;
--                    rcv_fifo_write <= '1', '0' AFTER 1 ps;  
                    TP_FIS_end <= '1', '0' AFTER 1 ps;
                    IF FIS_ERROR OR crc_check = '0' THEN
                        TP_FIS_OK <= '0';
                        debug ("TP_FIS_OK = 0");
                    ELSE
                        TP_FIS_OK <= '1';
                        debug ("TP_FIS_OK = 1");
                    END IF;
                    
                END IF;
            END IF;
        END PROCESS DESCRAMBLE;
        
        crc_check <= '1' WHEN link_crc = X"00000000" 
                         ELSE '0';


--        RCV_FIFO : PROCESS(rcv_fifo_read, rcv_fifo_write, RESET, COMRESET)
--        VARIABLE dist : INTEGER := 0;
--        BEGIN                
--            IF rising_edge(RESET) OR rising_edge(COMRESET) THEN
--                RX_rd_ptr <= 0;
--                RX_wr_ptr <= 0;
--                dist := 0;
--                RX_fifo_full <= '0';                
--                RX_fifo_empty <= '1';
--            END IF;    
--            IF rising_edge(rcv_fifo_read) THEN
--                IF RX_rd_ptr = (FIFO_SIZE - 1) THEN
--                    RX_rd_ptr <= 0;
--                ELSE   
--                    RX_rd_ptr <= RX_rd_ptr + 1;
--                END IF;                           
--                dist := dist - 1;
--                IF dist = 0 THEN
--                    RX_fifo_empty <= '1';
--                END IF;
--                IF dist < (FIFO_SIZE - 10) THEN    
--                    RX_fifo_full <= '0';    
--                END IF;            
--            END IF;
--            IF rising_edge(rcv_fifo_write) THEN
--                IF RX_wr_ptr = (FIFO_SIZE - 1) THEN
--                    RX_wr_ptr <= 0;
--                ELSE   
--                    RX_wr_ptr <= RX_wr_ptr + 1;
--                END IF;                           
--                dist := dist + 1;
--                IF dist = (FIFO_SIZE - 10) THEN
--                    RX_fifo_full <= '1';
--                END IF;
--                RX_fifo_empty <= '0';     
--                RX_fifo(RX_wr_ptr) <= link_FIS_state & link_err & link_FIS_data;                        
--            END IF;
--        END PROCESS RCV_FIFO;
                         
--        TP_datain <= RX_fifo(RX_rd_ptr);

        TRX_FIFO : PROCESS(tr_fifo_read, tr_fifo_write, RESET, COMRESET)
        VARIABLE dist : INTEGER := 0;
        procedure debug (constant s : in string) is
        begin
          report debug("") & "TRX_FIFO : " & s;
        end procedure debug;
        BEGIN                                                          
            IF rising_edge(RESET) OR rising_edge(COMRESET) THEN
                TX_rd_ptr <= 0;
                TX_wr_ptr <= 0;
                dist := 0;
                TX_fifo_full <= '0';                
                TX_fifo_empty <= '1';
            END IF;    
            IF rising_edge(tr_fifo_read) THEN
                IF TX_rd_ptr = (FIFO_SIZE - 1) THEN
                    TX_rd_ptr <= 0;
                ELSE   
                    TX_rd_ptr <= TX_rd_ptr + 1;
                END IF;                           
                dist := dist - 1;
                IF dist = 0 THEN
                    TX_fifo_empty <= '1';
                    debug ("TX_fifo_empty = 1");
                END IF;
                TX_fifo_full <= '0';                
            END IF;
            IF rising_edge(tr_fifo_write) THEN
                IF TX_wr_ptr = (FIFO_SIZE - 1) THEN
                    TX_wr_ptr <= 0;
                ELSE   
                    TX_wr_ptr <= TX_wr_ptr + 1;
                END IF;                           
                dist := dist + 1;
                IF dist = (FIFO_SIZE - 1) THEN
                    TX_fifo_full <= '1';
                    debug ("TX_fifo_full = 1");
                END IF;
                TX_fifo_empty <= '0';     
                TX_fifo(TX_wr_ptr) <= TP_dataout;                        
            END IF;
        END PROCESS TRX_FIFO;

    ----------------------------------------------------------------------------
    ----------------------------------------------------------------------------
    --                       TRANSPORT                                        --
    ----------------------------------------------------------------------------
    ----------------------------------------------------------------------------

        TP_STATE_TRAN : PROCESS(RESET, COMRESET, SYSTEMCLOCK)
        BEGIN                     
            IF rising_edge(RESET) OR rising_edge(COMRESET) THEN
                TP_state <= DT_DeviceIdle;
            ELSIF rising_edge(SYSTEMCLOCK) THEN
                TP_state <= next_TP_state;
            END IF;
        END PROCESS TP_STATE_TRAN;

        TP_NXT_STATE : PROCESS(TP_state, SOFp, EOFp, TP_RDH_req, TP_PIOSetup_req, TP_TXData_req, TX_fifo_empty,
                            TP_transmission_status, R_OKp, R_ERRp) 
        procedure debug (constant s : in string) is
        begin
          report debug("") & "TP_NXT_STATE : " & s;
        end procedure debug;
        BEGIN                    
            CASE TP_state IS
                WHEN DT_DeviceIdle =>
                debug ("state : " & TP_state_type'image(TP_state));
                    IF SOFp = '1' THEN                                 
                        next_TP_state <= TP_SOF;  
                        debug ("next_state : TP_SOF");
                    ELSIF TP_RDH_req = '1' THEN  
                        next_TP_state <= DT_RegDHFIS;                  
                        debug ("next_state : DT_RegDHFIS");
                    ELSIF TP_PIOSetup_req = '1' THEN
                        next_TP_state <= DT_PIOSTUPFIS;
                        debug ("next_state : DT_PIOSTUPFIS");
                    ELSIF TP_TXData_req = '1' THEN
                        next_TP_state <= DT_DATAIFIS;  
                        debug ("next_state : DT_DATAIFIS");
                    ELSE    
                        next_TP_state <= DT_DeviceIdle;
                    END IF;
                -- decompose states
                WHEN TP_SOF =>
                debug ("state : " & TP_state_type'image(TP_state));
                       next_TP_state <= DT_ChkTyp;                           
                       debug ("next_state : DT_ChkTyp");
                WHEN DT_ChkTyp =>
                debug ("state : " & TP_state_type'image(TP_state));
                    CASE link_FIS_data(7 DOWNTO 0) IS 
                        WHEN FISt_reg_h2d     =>
                            ASSERT FALSE REPORT "DEVICE: Register FIS - Host to Device" SEVERITY NOTE;
                            next_TP_state <= DT_RegHDFIS;
                            debug ("FISt_reg_h2d , next_state : DT_RegHDFIS");
                        WHEN others =>
                            ASSERT FALSE REPORT "DEVICE: ERROR !!!!!! Unexpected FIS type" SEVERITY NOTE;                        
                            next_TP_state <= DT_DeviceIdle;
                            debug ("FISt_reg XXX , next_state : DT_DeviceIdle");
                    END CASE;
                WHEN DT_RegHDFIS =>
                debug ("state : " & TP_state_type'image(TP_state));
                    IF EOFp = '1' THEN
                        next_TP_state <= DT_DeviceIdle;
                        debug ("next_state : DT_DeviceIdle");
                    ELSE
                        next_TP_state <= DT_RegHDFIS;
                        debug ("next_state : DT_RegHDFIS");
                    END IF;                                    
                -- transmit states
                WHEN DT_RegDHFIS =>
                debug ("state : " & TP_state_type'image(TP_state));
                    IF TX_fifo_empty = '1' THEN
                        next_TP_state <= DT_DHFIS_TransStatus;
                        debug ("next_state : DT_DHFIS_TransStatus");
                    ELSE
                        next_TP_state <= DT_RegDHFIS;
                        debug ("next_state : DT_RegDHFIS");
                    END IF;                            
                WHEN DT_DHFIS_TransStatus =>
                debug ("state : " & TP_state_type'image(TP_state));
                    IF TP_transmission_status = '1' AND R_OKp = '1' THEN
                        next_TP_state <= DT_DeviceIdle;
                        debug ("next_state : DT_DeviceIdle");
                    ELSIF TP_transmission_status = '1' AND R_ERRp = '1' THEN
                        next_TP_state <= DT_RegDHFIS;                      
                        debug ("next_state : DT_RegDHFIS");
                    ELSE 
                        next_TP_state <= DT_DHFIS_TransStatus;                        
                    END IF;                                                
                WHEN DT_PIOSTUPFIS =>
                debug ("state : " & TP_state_type'image(TP_state));
                    IF TX_fifo_empty = '1' THEN
                        next_TP_state <= DT_PIOSTUPFIS_TransStatus;
                        debug ("next_state : DT_PIOSTUPFIS_TransStatus");
                    ELSE
                        next_TP_state <= DT_PIOSTUPFIS;
                        debug ("next_state : DT_PIOSTUPFIS");
                    END IF;                            
                WHEN DT_PIOSTUPFIS_TransStatus =>
                debug ("state : " & TP_state_type'image(TP_state));
                    IF TP_transmission_status = '1' AND R_OKp = '1' THEN
                        next_TP_state <= DT_DeviceIdle;
                        debug ("next_state : DT_DeviceIdle");
                    ELSIF TP_transmission_status = '1' AND R_ERRp = '1' THEN
                        next_TP_state <= DT_PIOSTUPFIS;                      
                        debug ("next_state : DT_PIOSTUPFIS");
                    ELSE 
                        next_TP_state <= DT_PIOSTUPFIS_TransStatus;                        
                    END IF;                                                
                WHEN DT_DATAIFIS =>
                WHEN others =>
                    next_TP_state <= DT_DeviceIdle;
            END CASE;
        END PROCESS TP_NXT_STATE;
        
        TP_CTRL_GEN : PROCESS (TP_state, SYSTEMCLOCK)
        VARIABLE cnt : INTEGER := 0;
        VARIABLE rcv_err : BOOLEAN;
        procedure debug (constant s : in string) is
        begin
          report debug("") & "TP_CTRL_GEN : " & s;
        end procedure debug;
        BEGIN                   
            IF TP_state'EVENT THEN
                cnt := 0; 
            END IF;                 
            IF TP_state'EVENT OR (rising_edge(SYSTEMCLOCK)) THEN -- AND next_TP_state = TP_state) THEN
                CASE TP_state IS
                    WHEN DT_DeviceIdle =>
                    debug ("state : " & TP_state_type'image(TP_state));
                    WHEN TP_SOF =>
                    debug ("state : " & TP_state_type'image(TP_state));
                        TP_result <= GOOD;
                        rcv_err := FALSE;
                    WHEN DT_ChkTyp =>
                    debug ("state : " & TP_state_type'image(TP_state));
                        IF link_err /= "0000" THEN
                            rcv_err := TRUE;
                        END IF;     
                        IF link_FIS_data(7 DOWNTO 0) = FISt_reg_h2d  THEN
                        debug ("link_FIS_data = FISt_reg_h2d");
                            CommandReg := link_FIS_data(23 DOWNTO 16);
                            FeaturesReg(7 DOWNTO 0) := link_FIS_data(31 DOWNTO 24);
                            Cbit <= link_FIS_data(15);
                        END IF;
                    WHEN DT_RegHDFIS =>
                    debug ("state : " & TP_state_type'image(TP_state));
                        IF link_err /= "0000" THEN
                            rcv_err := TRUE;
                        ELSE
                            CASE cnt IS 
                                WHEN 0 =>
                                debug ("state : " & TP_state_type'image(TP_state) & " , cnt = 0 , SNR7-0 , CLR7-0 , CHR7-0 , DHR 7-0");
                                    SectorNumberReg(7 DOWNTO 0) := link_FIS_data(7 DOWNTO 0);
                                    CylinderLowReg(7 DOWNTO 0) := link_FIS_data(15 DOWNTO 8);
                                    CylinderHighReg(7 DOWNTO 0) := link_FIS_data(23 DOWNTO 16);
                                    DeviceHeadReg(7 DOWNTO 0) := link_FIS_data(31 DOWNTO 24);    
                                    cnt := cnt + 1;
                                WHEN 1 =>
                                debug ("state : " & TP_state_type'image(TP_state) & " , cnt = 1 , SNR15-8 , CLR15-8 , CHR15-8 , FR 15-8");
                                    SectorNumberReg(15 DOWNTO 8) := link_FIS_data(7 DOWNTO 0);
                                    CylinderLowReg(15 DOWNTO 8) := link_FIS_data(15 DOWNTO 8);
                                    CylinderHighReg(15 DOWNTO 8) := link_FIS_data(23 DOWNTO 16);
                                    FeaturesReg(15 DOWNTO 8) := link_FIS_data(31 DOWNTO 24);
                                    cnt := cnt + 1;
                                WHEN 2 =>
                                debug ("state : " & TP_state_type'image(TP_state) & " , cnt = 2 , SCR7-0 , SCR15-8 , DCR");
                                    SectorCountReg(7 DOWNTO 0) := link_FIS_data(7 DOWNTO 0);
                                    SectorCountReg(15 DOWNTO 8) := link_FIS_data(15 DOWNTO 8);
                                    DeviceControlReg := link_FIS_data(31 DOWNTO 24);
                                    cnt := cnt + 1;
                                WHEN 3 =>
                                debug ("state : " & TP_state_type'image(TP_state) & " , cnt = 3");
                                    cnt := cnt + 1;
                                WHEN 4 =>
                                    IF rcv_err THEN     
                                        TP_result <= ERR;
                                        debug ("state : " & TP_state_type'image(TP_state) & " , cnt = 4 , TP_result = ERR");
                                    ELSE
                                        TP_result <= GOOD;
                                        debug ("state : " & TP_state_type'image(TP_state) & " , cnt = 4 , TP_result = GOOD");
                                    END IF;
                                    IF Cbit = '1' THEN
                                        CMD_rcvd <= '1', '0' AFTER 1 ps;
                                        Cbit <= '0';
                                    END IF;        
                                WHEN others =>                                                                
                            END CASE;                        
                        END IF;
                    -- transmit states                                                    
                    WHEN DT_RegDHFIS =>
                    debug ("state : " & TP_state_type'image(TP_state));
                        CASE cnt IS
                            WHEN 0 =>
                            debug ("state : " & TP_state_type'image(TP_state) & " , cnt = 0 , transmit ErrorReg,StatusReg,0,Ibit,000000,FISt_reg_d2h");
                                TP_dataout <= ErrorReg & StatusReg & '0' & Ibit & "000000" & FISt_reg_d2h; 
                                tr_fifo_write <= '1', '0' AFTER 1 ps;
                                cnt := cnt + 1;
                            WHEN 1 =>
                            debug ("state : " & TP_state_type'image(TP_state) & " , cnt = 1 , transmit DeviceHeadReg,CylinderHighReg7-0,CylinderLowReg7-0,SectorNumberReg7-0");
                                   TP_dataout <= DeviceHeadReg & CylinderHighReg(7 DOWNTO 0) 
                                            & CylinderLowReg(7 DOWNTO 0) & SectorNumberReg(7 DOWNTO 0); 
                                tr_fifo_write <= '1', '0' AFTER 1 ps;
                                cnt := cnt + 1;
                            WHEN 2 =>    
                                debug ("state : " & TP_state_type'image(TP_state) & " , cnt = 2 , transmit 00,CylinderHighReg15-8,CylinderLowReg15-8,SectorNumberReg15-8");
                                TP_dataout <= X"00" & CylinderHighReg(15 DOWNTO 8) 
                                            & CylinderLowReg(15 DOWNTO 8) & SectorNumberReg(15 DOWNTO 8); 
                                tr_fifo_write <= '1', '0' AFTER 1 ps;
                                cnt := cnt + 1;
                            WHEN 3 =>    
                            debug ("state : " & TP_state_type'image(TP_state) & " , cnt = 3 , transmit 00,00,SectorCountReg15-8,SectorCountReg7-0");
                                TP_dataout <= X"00" & X"00" 
                                            & SectorCountReg(15 DOWNTO 8) & SectorCountReg(7 DOWNTO 0); 
                                tr_fifo_write <= '1', '0' AFTER 1 ps;
                                cnt := cnt + 1;
                            WHEN 4 =>    
                            debug ("state : " & TP_state_type'image(TP_state) & " , cnt = 4 , transmit 00,00,00,00");
                                TP_dataout <= X"00" & X"00" & X"00" & X"00";
                                tr_fifo_write <= '1', '0' AFTER 1 ps;
                                cnt := cnt + 1;
                            WHEN others =>
                        END CASE;
                    WHEN DT_DHFIS_TransStatus =>
                    debug ("state : " & TP_state_type'image(TP_state));
                    WHEN DT_PIOSTUPFIS =>
                    debug ("state : " & TP_state_type'image(TP_state));
                        CASE cnt IS
                            WHEN 0 =>
                            debug ("state : " & TP_state_type'image(TP_state) & " , cnt = 0 , transmit ErrorReg,StatusReg,0,Ibit,000000,FISt_pio_setup");
                                TP_dataout <= ErrorReg & StatusReg & '0' & Ibit & "000000" & FISt_pio_setup; 
                                tr_fifo_write <= '1', '0' AFTER 1 ps;
                                cnt := cnt + 1;
                            WHEN 1 =>
                            debug ("state : " & TP_state_type'image(TP_state) & " , cnt = 1 , transmit DeviceHeadReg,CylinderHighReg7-0,CylinderLowReg7-0,SectorNumberReg7-0");
                                   TP_dataout <= DeviceHeadReg & CylinderHighReg(7 DOWNTO 0) 
                                            & CylinderLowReg(7 DOWNTO 0) & SectorNumberReg(7 DOWNTO 0); 
                                tr_fifo_write <= '1', '0' AFTER 1 ps;
                                cnt := cnt + 1;
                            WHEN 2 =>    
                            debug ("state : " & TP_state_type'image(TP_state) & " , cnt = 2 , transmit 00,CylinderHighReg15-8,CylinderLowReg15-8,SectorNumberReg15-8");
                                TP_dataout <= X"00" & CylinderHighReg(15 DOWNTO 8) 
                                            & CylinderLowReg(15 DOWNTO 8) & SectorNumberReg(15 DOWNTO 8); 
                                tr_fifo_write <= '1', '0' AFTER 1 ps;
                                cnt := cnt + 1;
                            WHEN 3 =>    
                            debug ("state : " & TP_state_type'image(TP_state) & " , cnt = 3 , transmit 00,00,SectorCountReg15 -8,SectorCountReg7-0");
                                TP_dataout <= X"00" & X"00" 
                                            & SectorCountReg(15 DOWNTO 8) & SectorCountReg(7 DOWNTO 0); 
                                tr_fifo_write <= '1', '0' AFTER 1 ps;
                                cnt := cnt + 1;
                            WHEN 4 =>    
                            debug ("state : " & TP_state_type'image(TP_state) & " , cnt = 4 , transmit 00,00,00,00");
                                TP_dataout <= X"00" & X"00" & X"00" & X"00";
                                tr_fifo_write <= '1', '0' AFTER 1 ps;
                                cnt := cnt + 1;
                            WHEN others =>
                        END CASE;
                    WHEN DT_DATAIFIS =>
                    debug ("state : " & TP_state_type'image(TP_state));
                     WHEN others =>
                 END CASE;    
             END IF;    
        END PROCESS TP_CTRL_GEN;
        

    ----------------------------------------------------------------------------
    ----------------------------------------------------------------------------
    --                       COMMAND                                          --
    ----------------------------------------------------------------------------
    ----------------------------------------------------------------------------

    CMD_HARD_RESET : PROCESS (RESET, COMRESET)                                      
    VARIABLE diag_ok : BOOLEAN := TRUE;
    procedure debug (constant s : in string) is
    begin
      report debug("") & "CMD_HARD_RESET : " & s;
    end procedure debug;
    BEGIN       
        IF falling_edge(RESET) OR falling_edge(COMRESET) THEN
            IF diag_ok THEN              -- PACKET command feature not set, SATA page 237
                SectorCountReg    := X"0001";    
                SectorNumberReg    := X"0001";    
                CylinderLowReg    := X"0000";    
                CylinderHighReg    := X"0000";    
                DeviceHeadReg    := X"00";    
                ErrorReg        := X"01";    
                StatusReg        := X"00";    
            ELSE                        -- PACKET command feature not set, SATA page 238
                SectorCountReg    := X"0001";    
                SectorNumberReg    := X"0001";    
                CylinderLowReg    := X"0000";    
                CylinderHighReg    := X"0000";    
                DeviceHeadReg    := X"00";    
                ErrorReg        := X"7F";    
                StatusReg        := X"00";                
            END IF;
            TP_RDH_req <= '1', '0' AFTER 80 * TXPERIOD;
        END IF;  
        
    END PROCESS CMD_HARD_RESET;
    
                
    CMD_DECODE : PROCESS(CMD_rcvd)
    procedure debug (constant s : in string) is
    begin
      report debug("") & "CMD_DECODE : " & s;
    end procedure debug;
    BEGIN
        IF rising_edge(CMD_rcvd) THEN
            CASE CommandReg IS
                WHEN X"EC" =>
                  debug ("CommandReg EC , TP_PIOSetup_req = 1");
                    TP_PIOSetup_req <= '1', '0' AFTER 80 * TXPERIOD;
                WHEN others =>
            END CASE;
        END IF;
    END PROCESS CMD_DECODE;
    END BLOCK;             
END vhdl_behavioral;                                                
