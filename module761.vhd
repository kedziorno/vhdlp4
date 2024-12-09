----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:31:44 12/08/2024 
-- Design Name: 
-- Module Name:    module761 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity module761 is
port (
i_clock,i_reset : in std_logic;
o : out std_logic
);
end entity module761;

architecture behavioral of module761 is

begin

-- 7.6.1.2 Link idle state diagram
process_7_6_1_2 : process (i_clock) is -- p. 163
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1') then -- xxx must be asynch
      state <= l_idle;
    else
      case (state) is
        when l_idle => -- L1 , Transmit SYNC , Waits for X_RDY , entered when frase transmission has been completed by LL
          if (frame_transmission = '1' and physical_layer_ready = '1') then
            state <= hl_sendchkrdy;
          end if;
          if (partial_power_mode = '1' and physical_layer_ready = '1') then
            state <= l_tpmpartial;
          end if;
          if (slumber_power_mode = '1' and physical_layer_ready = '1') then
            state <= l_tpmslumber;
          end if;
          if (X_RDY = '1') then
            state <= l_rcvwaitfifo;
          end if;
          if ((PMREQ_P = '1' or PMREQ_S = '1') and power_modes = '1') then
            state <= l_pmoff;
          end if;
          if ((PMREQ_P = '1' or PMREQ_S = '1') and power_modes = '0') then
            state <= l_pmdeny;
          end if;
          if (frame_transmission = '0') then
            state <= l_idle;
          end if;
          if (physical_layer_not_ready = '1') then
            state <= l_nocommerr;
          end if;
        when l_nocommerr => -- LS1
          state <= l_nocomm;
        when l_nocomm => -- LS2 , Transmit ALIGN
          if (physical_layer_not_ready = '1') then
            state <= l_nocomm;
          end if;
          if (physical_layer_ready = '1') then
            state <= l_sendalign;
          end if;
        when l_sendalign => -- LS3 , Transmit ALIGN
          if (physical_layer_not_ready = '1') then
            state <= l_nocommerr;
          end if;
          if (physical_layer_ready = '1') then
            state <= l_idle;
          end if;
        when l_reset => -- LS4
          if (LRESET = '1') then
            state <= l_reset;
          end if;
          if (LRESET = '0') then
            state <= l_nocomm;
          end if;
      end case;
    end if;
  end if;
end process process_7_6_1_2;

-- 7.6.1.3 Link transmit state diagram
process_7_6_1_3 : process (i_clock) is -- p. 166
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1') then -- xxx must be asynch
      state <= hl_sendchkrdy;
    else
      case (state) is
        when hl_sendchkrdy => -- LT1 , Transmit X_RDY , Waits X_RDY or R_RDY
          if (R_RDY = '1') then
            state <= l_sendsof;
          end if;
          if (X_RDY = '1') then
            state <= l_rcvwaitfifo;
          end if;
          if (AnyDword = '1') then
            state <= hl_sendchkrdy;
          end if;
          if (physical_layer_not_ready = '1') then
            state <= l_nocommerr;
          end if;
        when l_sendsof => -- LT3 , Transmit SOF
          if (physical_layer_ready = '1') then
            state <= l_senddata;
          end if;
          if (physical_layer_not_ready = '1') then
            state <= l_nocommerr;
          end if;
          if (SYNC = '1') then
            state <= l_idle;
          end if;
        when l_senddata => -- LT4 , Transmit DWORD , CRC Calculation
          if (TL_Control_Register_frame = '1') then -- priority over all other states
            l_state <= l_idle;
          else
            if (more_data_to_transmit = '1' and AnyDword = '1') then
              state <= l_senddata;
            end if;
            if (HOLD = '1') then
              state <= l_rcvrhold;
            end if;
            if (data_transmit_not_complete = '1' and data_not_ready = '1' and AnyDword = '1') then
              state <= l_sendhold;
            end if;
            if (DMAT = '1' or data_transmit_complete = '1') then
              state <= l_sendcrc;
            end if;
            if (SYNC = '1') then
              state <= l_idle;
            end if;
            if (physical_layer_not_ready = '1') then
              state <= l_nocommerr;
            end if;
          end if;
        when l_rcvrhold => -- LT5 , Transmit HOLDA
          if (TL_Control_Register_frame = '1') then -- priority over all other states
            l_state <= l_idle;
          else
            if (more_data_to_transmit = '1' and AnyDword = '1') then
              state <= l_senddata;
            end if;
            if ((more_data_to_transmit = '1' and HOLD = '1') or DecErr = '1') then
              state <= l_rcvrhold;
            end if;
            if (more_data_to_transmit = '1' and SYNC = '1') then
              state <= l_idle;
            end if;
            if (more_data_to_transmit = '1' and DMAT = '1') then
              state <= l_sendcrc;
            end if;
            if (physical_layer_not_ready = '1') then
              state <= l_nocommerr;
            end if;
            if (SYNC = '1') then
              state <= l_idle;
            end if;
          end if;
        when l_sendhold => -- LT6 , Transmit HOLD
          if (TL_Control_Register_frame = '1') then -- priority over all other states
            l_state <= l_idle;
          else
            if (more_data_to_transmit = '1' and AnyDword = '1') then
              state <= l_senddata;
            end if;
            if (more_data_to_transmit = '1' and HOLD = '1') then
              state <= l_rcvrhold;
            end if;
            if (data_transmit_not_complete = '1' and data_not_ready = '1' and AnyDword = '1') then
              state <= l_sendhold;
            end if;
            if (DMAT = '1') then
              state <= l_sendcrc;
            end if;
            if (SYNC = '1') then
              state <= l_idle;
            end if;
            if (physical_layer_not_ready = '1') then
              state <= l_nocommerr;
            end if;
          end if;
        when l_sendcrc => -- LT7 , Transmit CRC
          if (physical_layer_ready = '1' and SYNC = '0') then -- CRC primitive has been transmited
            state <= l_sendeof;
          end if;
          if (physical_layer_not_ready = '1') then
            state <= l_nocommerr;
          end if;
          if (physical_layer_ready = '1' and SYNC = '1') then
            state <= l_idle;
          end if;
        when l_sendeof => -- LT8 , Transmit EOF
          if (physical_layer_ready = '1' and SYNC = '0') then -- EOF primitive has been transmitted
            state <= l_wait;
          end if;
          if (physical_layer_not_ready = '1') then
            state <= l_nocommerr;
          end if;
          if (physical_layer_ready = '1' and SYNC = '1') then
            state <= l_idle;
          end if;
        when l_wait => -- LT9 , Transmit WTRM
          if (R_OK = '1') then
            state <= l_idle;
          end if;
          if (R_ERR = '1') then
            state <= l_idle;
          end if;
          if (SYNC = '1') then
            state <= l_idle;
          end if;
          if (AnyDword = '1') then
            state <= l_wait;
          end if;
          if (physical_layer_not_ready = '1') then
            state <= l_nocommerr;
          end if;
      end case;
    end if;
  end if;
end process process_7_6_1_3;

-- 7.6.1.4 Link receive state diagram
process_7_6_1_4 : process (i_clock) is -- p. 173
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1') then -- xxx must be asynch
      state <= l_rcvchkrdy;
    else
      case (state) is
        when l_rcvchkrdy => -- LR1 , Transmit R_RDY
          if (X_RDY = '1') then
            state <= l_rcvchkrdy;
          end if;
          if (SOF = '1') then
            state <= l_rcvdata;
          end if;
          if (AnyDword = '1') then
            state <= l_idle;
          end if;
          if (physical_layer_not_ready = '1') then
            state <= l_nocommerr;
          end if;
        when l_rcvwaitfifo => -- LR2 , Transmit SYNC
          if (X_RDY = '1'and fifo_space = '1') then
            state <= l_rcvchkrdy;
          end if;
          if (X_RDY = '1'and fifo_space = '0') then
            state <= l_rcvwaitfifo;
          end if;
          if (AnyDword = '1') then
            state <= l_idle;
          end if;
          if (physical_layer_not_ready = '1') then
            state <= l_nocommerr;
          end if;
        when l_rcvdata => -- LR3 , Transmit R_IP (or DMAT when TL wish terminate transfer)
          if ((DataDword = '1' and fifo_space = '1') or HOLDA = '1') then
            state <= l_rcvdata;
          end if;
          if (DataDword = '1' and fifo_space = '0') then
            state <= l_hold;
          end if;
          if (HOLD = '1') then
            state <= l_sendhold;
          end if;
          if (EOF = '1') then
            state <= l_rcveof;
          end if;
          if (WTRM = '1') then
            state <= l_badend;
          end if;
          if (SYNC = '1') then
            state <= l_idle;
          end if;
          if (AnyDword = '1') then
            state <= l_rcvdata;
          end if;
          if (physical_layer_not_ready = '1') then
            state <= l_nocommerr;
          end if;
          if (TL_Control_Register_frame = '1') then -- XXX nothing about priority
            l_state <= l_idle;
          end if;
        when l_hold => -- LR4 , Transmit HOLD
          if ((fifo_space = '1' and AnyDword = '1') or EOF = '1') then
            state <= l_rcvdata;
          end if;
          if (fifo_space = '1' and HOLD = '1') then
            state <= l_sendhold;
          end if;
          if (EOF = '1') then
            state <= l_rcveof;
          end if;
          if (fifo_space = '0' and EOF = '0' and SYNC = '0' and physical_layer_ready = '1') then
            state <= l_hold;
          end if;
          if (physical_layer_not_ready = '1') then
            state <= l_nocommerr;
          end if;
          if (SYNC = '1') then
            state <= l_idle;
          end if;
          if (TL_Control_Register_frame = '1') then -- XXX nothing about priority
            l_state <= l_idle;
          end if;
        when l_sendhold => -- LR5 , Transmit HOLDA (or DMAT when TL wish terminate transfer)
          if (AnyDword = '1') then
            state <= l_rcvdata;
          end if;
          if (HOLD = '1') then
            state <= l_sendhold;
          end if;
          if (EOF = '1') then
            state <= l_rcveof;
          end if;
          if (SYNC = '1') then
            state <= l_idle;
          end if;
          if (physical_layer_not_ready = '1') then
            state <= l_nocommerr;
          end if;
          if (TL_Control_Register_frame = '1') then -- XXX nothing about priority
            l_state <= l_idle;
          end if;
        when l_rcveof => -- LR6 , Transmit R_IP , check calculated CRC
          if (crc_check = '0') then
            state <= l_rcveof;
          end if;
          if (crc_check = '1' and crc_good = '1') then
            state <= l_goodcrc;
          end if;
          if (crc_check = '1' and crc_bad = '1') then
            state <= l_badend;
          end if;
          if (physical_layer_not_ready = '1') then
            state <= l_nocommerr;
          end if;
        when l_goodcrc => -- LR7 , Transmit R_IP , for first time LL notify TL about good CRC for frame
          if (TL_good_result = '1') then
            state <= l_goodend;
          end if;
          if (TL_unrecognized_FIS = '1') then
            state <= l_badend;
          end if;
          if (TL_wait_transfer = '1') then
            state <= l_goodcrc;
          end if;
          if (physical_layer_not_ready = '1') then
            state <= l_nocommerr;
          end if;
          if (TL_Error = '1' or LL_Error = '1') then
            state <= l_badend;
          end if;
          if (SYNC = '1') then
            state <= l_idle;
          end if;
        when l_goodend => -- LR8 , Transmit R_OK
          if (SYNC = '1') then
            state <= l_idle;
          end if;
          if (AnyDword = '1') then
            state <= l_goodend;
          end if;
          if (physical_layer_not_ready = '1') then
            state <= l_nocommerr;
          end if;
        when l_badend => -- LR9 , Transmit R_ERR
          if (SYNC = '1') then
            state <= l_idle;
          end if;
          if (AnyDword = '1') then
            state <= l_badend;
          end if;
          if (physical_layer_not_ready = '1') then
            state <= l_nocommerr;
          end if;
      end case;
    end if;
  end if;
end process process_7_6_1_4;

-- 7.6.1.5 Link power mode state diagram
process_7_6_1_5 : process (i_clock) is -- p. 181
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1') then -- xxx must be asynch
      state <= l_tpmpartial;
    else
      case (state) is
        when l_tpmpartial => -- LPM1 , Transmit PMREQ_P
          if (PMACK = '1') then
            state <= l_chkphyrdy;
          end if;
          if (X_RDY = '1') then -- abort req from TL to enter PM
            state <= l_rcvwaitfifo;
          end if;
          if (SYNC = '1' or R_OK = '1') then -- opposite side not yet processed the PMREQ_S
            state <= l_tpmpartial;
          end if;
          if (AnyDword = '1') then -- host to l_idle , dev to l_tpmpartial , abort req from TL to enter PM , Note Transition LPM1:4
            state <= l_idle;
          end if;
          if (PMREQ_P = '1' or PMREQ_S = '1') then -- abort req from TL to enter PM , Note Transition LPM1:5
            state <= l_tpmpartial;
          end if;
          if (physical_layer_not_ready = '1') then -- constitutes error , unexpected transition
            state <= l_nocommerr;
          end if;
        when l_tpmslumber => -- LPM2 , Transmit PMREQ_S
          if (PMACK = '1') then
            state <= l_chkphyrdy;
          end if;
          if (X_RDY = '1') then -- abort req from TL to enter PM
            state <= l_rcvwaitfifo;
          end if;
          if (SYNC = '1' or R_OK = '1') then -- opposite side not yet processed the PMREQ_S
            state <= l_tpmslumber;
          end if;
          if (AnyDword = '1') then -- host to l_idle , dev to l_tpmslumber , abort req from TL to enter PM
            state <= l_idle;
          end if;
          if (PMREQ_P = '1' or PMREQ_S = '1') then -- abort req from TL to enter PM , Note Transition LPM2:5
            state <= l_tpmslumber;
          end if;
          if (physical_layer_not_ready = '1') then -- constitutes error , unexpected transition
            state <= l_nocommerr;
          end if;
        when l_pmoff => -- LPM3 , Transmit PMACK
          if (PMACK_4 = '1') then -- 4
            state <= l_chkphyrdy;
          end if;
          if (PMACK_4 = '0') then -- < 4
            state <= l_pmoff;
          end if;
        when l_pmdeny => -- LPM4 , Transmit PMNACK
          if (PMREQ_P = '1' or PMREQ_S = '1') then
            state <= l_pmdeny;
          end if;
          if (AnyDword = '1') then
            state <= l_idle;
          end if;
          if (physical_layer_not_ready = '1') then
            state <= l_nocommerr;
          end if;
        when l_chkphyrdy => -- LPM5 , Assert Partial/Slumber to Phy (as appropriate)
          if (physical_layer_ready = '1') then
            state <= l_chkphyrdy;
          end if;
          if (physical_layer_not_ready = '1') then
            state <= l_nocommpower;
          end if;
        when l_nocommpower => -- LPM6 , Maintain Partial/Slumber assertion (as appropriate)
          if (TL_request = '1' or COMWAKE = '1') then
            state <= l_wakeup1;
          end if;
          if (TL_request = '0' and COMWAKE = '0') then
            state <= l_nocommpower;
          end if;
        when l_wakeup1 => -- LPM7 , Deassert both Partial and Slumber
          if (physical_layer_ready = '1') then
            state <= l_wakeup2;
          end if;
          if (physical_layer_not_ready = '1') then
            state <= l_wakeup1;
          end if;
        when l_wakeup2 => -- LPM8 , Transmit ALIGN
          if (physical_layer_ready = '1') then
            state <= l_idle;
          end if;
          if (physical_layer_not_ready = '1') then
            state <= l_nocommerr;
          end if;
      end case;
    end if;
  end if;
end process process_7_6_1_5;

end architecture behavioral;
