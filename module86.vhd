----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:38:12 12/10/2024 
-- Design Name: 
-- Module Name:    module86 - Behavioral 
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

entity module86 is
port (
i_clock,i_reset : in std_logic;
o : out std_logic
);
end entity module86;

architecture behavioral of module86 is
-- 8.6 Host transport states

begin

-- 8.6.1 Host transport idle state diagram
process_8_6_1 : process (i_clock) is -- p. 202
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1') then -- xxx must be asynch
      state <= ht_hostidle;
    else
      case (state) is
        when ht_hostidle => -- HTI1 , Host adapter waits for frame or frame request
          if (SCOMMAND_reg_wr = '1') then
            state <= ht_cmdfis;
          end if;
          if (SCONTROL_reg_wr = '1') then
            state <= ht_cntrlfis;
          end if;
          if (LL_FIS_received = '1') then -- frame receipt
            state <= ht_chktyp;
          end if;
          if (AL_DMASetup_FIS = '1') then
            state <= ht_dmastupfis;
          end if;
          if (AL_BIST_FIS = '1') then
            state <= ht_xmitbist;
          end if;
          if (AL_PIO_FIS = '1') then
            state <= ht_piootrans2;
          end if;
        when ht_chktyp => -- HTI2 , Received FIS type checked , LL indicate FIS received
          if (AL_REGISTER_FIS = '1') then
            state <= ht_regfis;
          end if;
          if (AL_SDB_FIS = '1') then
            state <= ht_db_fis;
          end if;
          if (AL_DMA_FIS = '1') then
            state <= ht_dma_fis;
          end if;
          if (AL_PIOSetup_FIS = '1') then
            state <= ht_ps_fis;
          end if;
          if (AL_DMASetup_FIS = '1') then -- first party
            state <= ht_ds_fis;
          end if;
          if (AL_BIST_FIS = '1') then
            state <= ht_rcvbist;
          end if;
          if (AL_DATA_FIS = '1' and AL_PIOSetup_FIS = '0') then
            state <= ht_dmaitrans;
          end if;
          if (AL_DATA_FIS = '1' and AL_PIOSetup_FIS = '1') then
            state <= ht_pioitrans;
          end if;
          if (AL_XXX_FIS = '1') then -- unknown FIS
            state <= ht_hostidle;
          end if;
          if (LL_Error = '1') then -- illegal transition
            state <= ht_hostidle;
          end if;
      end case;
    end if;
  end if;
end process process_8_6_1;

-- 8.6.2 Host Transport transmit command FIS diagram
process_8_6_2 : process (i_clock) is -- p. 205
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1') then -- xxx must be asynch
      state <= ht_cmdfis;
    else
      case (state) is
        when ht_cmdfis => -- HTCM1 , Construct Cmd type FIS from the content of the shadow registers and notify Link to transfer
          if (FIS_transfer_complete = '1') then
            state <= ht_transstatus;
          end if;
          if (LL_Error = '1') then
            state <= ht_hostidle;
          end if;
          if (LL_FIS_received = '1') then -- frame receipt
            state <= ht_hostidle;
          end if;
        when ht_transstatus => -- HTCM2 , Check Link and Phy transmission results and if an error occurred take appropriate action
          if (status_checked = '1' and error = '0') then
            state <= ht_hostidle;
          end if;
          if (status_checked = '1' and error = '1' and i_reset = '0') then
            state <= ht_cmdfis;
          end if;
          if (status_checked = '1' and error = '1' and i_reset = '1') then
            state <= ht_hostidle;
          end if;
          if (LL_Error = '1') then
            state <= ht_hostidle;
          end if;
      end case;
    end if;
  end if;
end process process_8_6_2;

-- 8.6.3 Host Transport transmit control FIS diagram
process_8_6_3 : process (i_clock) is -- p. 207
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1') then -- xxx must be asynch
      state <= ht_cntrlfis;
    else
      case (state) is
        when ht_cntrlfis => -- HTCR1 , Construct Cntrl type FIS from the content of the shadow registers and notify Link to transfer
          if (FIS_transfer_complete = '1') then
            state <= ht_transstatus;
          end if;
          if (LL_Error = '1') then
            state <= ht_hostidle;
          end if;
          if (LL_FIS_received = '1') then -- frame receipt
            state <= ht_hostidle;
          end if;
        when ht_transstatus => -- HTCR2 , Check Link and Phy transmission results and if an error occurred take appropriate action
          if (status_checked = '1' and error = '0') then
            state <= ht_hostidle;
          end if;
          if (status_checked = '1' and error = '1') then
            state <= ht_cntrlfis;
          end if;
      end case;
    end if;
  end if;
end process process_8_6_3;

-- 8.6.4 Host Transport transmit First-party DMA Setup – Device to Host or Host to Device FIS state diagram
process_8_6_4 : process (i_clock) is -- p. 208
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1') then -- xxx must be asynch
      state <= ht_dmastupfis;
    else
      case (state) is
        when ht_dmastupfis => -- HTDMASTUP0 , Construct the DMA Setup – H2D or D2H FIS from the content provided by the AL and notifies LL to transfer
          if (FIS_transfer_complete = '1') then
            state <= ht_transstatus;
          end if;
          if (LL_Error = '1') then
            state <= ht_hostidle;
          end if;
          if (LL_FIS_received = '1') then -- frame receipt
            state <= ht_hostidle;
          end if;
        when ht_transstatus => -- HTPDMASTUP1 , Check Link and Phy transmission results and if an error occurred take appropriate action
          if (status_checked = '1' and error = '0') then
            state <= ht_hostidle;
          end if;
          if (status_checked = '1' and error = '1' and i_reset = '0') then
            state <= ht_dmastupfis;
          end if;
          if (status_checked = '1' and error = '1' and i_reset = '1') then
            state <= ht_hostidle;
          end if;
      end case;
    end if;
  end if;
end process process_8_6_4;

-- 8.6.5 Host Transport transmit BIST Activate FIS
process_8_6_5 : process (i_clock) is -- p. 210
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1') then -- xxx must be asynch
      state <= ht_xmitbist;
    else
      case (state) is
        when ht_xmitbist => -- HTXBIST1 , Construct the BIST Activate FIS from the content provided by the Application layer and notify Link to transfer
          if (FIS_transfer_complete = '1') then
            status <= ht_transbiststatus;
          end if;
          if (LL_Error = '1') then
            status <= ht_hostidle;
          end if;
          if (FIS_transfer_complete = '1') then -- frame receipt
            status <= ht_hostidle;
          end if;
        when ht_transbiststatus => -- HTXBIST2 , Check Link and Phy transmission results and if an error occurred take appropriate action
          if (status_checked = '1' and error = '0') then
            status <= ht_hostidle;
          end if;
          if (status_checked = '1' and error = '1') then
            status <= ht_xmitbist;
          end if;
      end case;
    end if;
  end if;
end process process_8_6_5;

-- 8.6.6 Host Transport decompose Register FIS diagram
process_8_6_6 : process (i_clock) is -- p. 211
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1') then -- xxx must be asynch
      state <= ht_regfis;
    else
      case (state) is
        when ht_regfis => -- HTR1 , Place FIS contents from device into appropriate holding registers
          if (FIS_transfer_complete = '1') then
            state <= ht_transstatus;
          end if;
          if (LL_Error = '1') then
            state <= ht_hostidle;
          end if;
        when ht_transstatus => -- HTR2 , Check Link and Phy transmission results and if an error occurred take appropriate action , if IRQ bit set TL set IRQ pending
          if (status_checked = '1' and error = '0') then
            state <= ht_hostidle;
          end if;
      end case;
    end if;
  end if;
end process process_8_6_6;

-- 8.6.7 Host Transport decompose a Set Device Bits FIS state diagram
process_8_6_7 : process (i_clock) is -- p. 212
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1') then -- xxx must be asynch
      state <= ht_dbfis;
    else
      case (state) is
        when ht_dbfis => -- HTDB0 , Receive Set Device Bits FIS
          if (status_checked = '1' and error = '0') then
            state <= ht_devbits;
          end if;
          if (status_checked = '1' and error = '1') then
            state <= ht_hostidle;
          end if;
        when ht_devbits => -- HTDB1 , Load Error register and bits of the Status register
          if (register_bits_loaded = '1') then
            state <= ht_hostidle;
          end if;
      end case;
    end if;
  end if;
end process process_8_6_7;

-- 8.6.8 Host Transport decompose a DMA Activate FIS diagram
process_8_6_8 : process (i_clock) is -- p. 213
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1') then -- xxx must be asynch
      state <= ht_dma_fis;
    else
      case (state) is
        when ht_dma_fis => -- HTDA1 , no comment
          if (status_checked = '1' and error = '0') then
            state <= ht_dmaotrans1;
          end if;
          if (status_checked = '1' and error = '1') then
            state <= ht_hostidle;
          end if;
          if (LL_Error = '1') then
            state <= ht_hostidle;
          end if;
        when ht_dmaotrans1 => -- HTDA2 , DMA controller initialized ?
          if (dma_controller_initialized = '0') then
            state <= ht_dmaotrans1;
          end if;
          if (dma_controller_initialized = '1') then
            state <= ht_dmaotrans2;
          end if;
          if (i_reset = '1' OR COMRESET = '1') then -- Notification of software reset or device reset command from the host application , LL send SYNC
            state <= ht_hostidle;
          end if;
        when ht_dmaotrans2 => -- HTDA3 , Active DMA controller
          if (transfer_complete = '0' and transmit_block_8KB = '0') then
            state <= ht_dmaotrans2;
          end if;
          if (transfer_complete = '0' and transmit_block_8KB = '1') then -- LL must close current frame
            state <= ht_dmaend;
          end if;
          if (LL_Abort = '1') then
            state <= ht_dmaend;
          end if;
          if (transfer_complete = '1') then
            state <= ht_dmaend;
          end if;
          if (LL_Error = '1') then
            state <= ht_hostidle;
          end if;
          if (i_reset = '1' or COMRESET = '1') then -- Notification of software reset or device reset command from the host application , LL send SYNC
            state <= ht_hostidle;
          end if;
        when ht_dmaend => -- HTDA4, Check DMA Controller completion
          if (dma_controller_completed = '1' and error = '0') then
            state <= ht_hostidle;
          end if;
          if (dma_controller_completed = '1' and error = '1') then
            state <= ht_hostidle;
          end if;
          if (LL_Abort = '1' or (transfer_complete = '1' and error = '0')) then -- LL append CRC and EOF
            state <= ht_hostidle;
          end if;
          if (LL_Abort = '1' or (transfer_complete = '1' and error = '1')) then -- LL append CRC and EOF
            state <= ht_hostidle;
          end if;
        when ht_dmaitrans => -- HTDA5 , Activate DMA controller if initialized, receive Data FIS
          if (transfer_complete = '0' or dma_ready = '0') then
            state <= ht_dmaitrans;
          end if;
          if (i_reset = '1' or COMRESET = '1') then -- SRST asserted, or device reset command issued , LL send SYNC
            state <= ht_hostidle;
          end if;
          if (transfer_complete = '1') then
            state <= ht_dmaend;
          end if;
          if (LL_Error = '1') then
            state <= ht_hostidle;
          end if;
      end case;
    end if;
  end if;
end process process_8_6_8;

-- 8.6.9 Host Transport decompose a PIO Setup FIS state diagram
process_8_6_9 : process (i_clock) is -- p. 216
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1') then -- xxx must be asynch
      state <= ht_ps_fis;
    else
      case (state) is
        when ht_ps_fis => -- HTPS1 , Determine the direction of the requested PIO transfer
          if (transfer_h2d = '1' and error = '0') then -- FIS_D_bit = '0'
            state <= ht_piootrans1;
          end if;
          if (transfer_d2h = '1' and error = '0') then -- FIS_D_bit = '1'
            state <= ht_hostidle;
          end if;
          if (error = '1') then
            state <= ht_hostidle;
          end if;
          if (LL_Error = '1') then
            state <= ht_hostidle;
          end if;
        when ht_piootrans1 => -- HTPS2 , Place initial register content received from FIS into shadow registers
          state <= ht_hostidle; -- unconditional
        when ht_piootrans2 => -- HTPS3 , Wait for Link layer to indicate data transfer complete
          if (transfer_complete = '0') then
            state <= ht_piootrans2;
          end if;
          if (transfer_complete = '1') then
            state <= ht_pioend;
          end if;
          if (LL_Abort = '1') then
            state <= ht_pioend;
          end if;
          if (LL_Error = '1') then
            state <= ht_hostidle;
          end if;
          if (i_reset = '1' or COMRESET = '1') then -- LL send SYNC
            state <= ht_hostidle;
          end if;
        when ht_pioend => -- HTPS4 , Place ending register content from PIO REQ FIS into shadow registers
          if (error = '0') then
            state <= ht_hostidle;
          end if;
          if (error = '1') then
            state <= ht_hostidle;
          end if;
        when ht_pioitrans1 => -- HTPS5 , Wait until initial PIO data received in data frame
          if (PIO_data = '1') then -- I bit from PIO FIS to status shadow register and IRQ=I_bit
            state <= ht_pioitrans2;
          end if;
          if (i_reset = '1' or COMRESET = '1') then -- LL send SYNC
            state <= ht_hostidle;
          end if;
          if (LL_Error = '1') then
            state <= ht_hostidle;
          end if;
        when ht_pioitrans2 => -- HTPS6 , Wait for Link layer to indicate data transfer complete
          if (transfer_complete = '0') then
            state <= ht_pioitrans2;
          end if;
          if (transfer_complete = '1') then
            state <= ht_pioend;
          end if;
          if (LL_Abort = '1') then
            state <= ht_pioend;
          end if;
          if (LL_Error = '1') then
            state <= ht_hostidle;
          end if;
      end case;
    end if;
  end if;
end process process_8_6_9;

-- 8.6.10 Host Transport decompose a First-party DMA Setup FIS state diagram
process_8_6_10 : process (i_clock) is -- p. 220
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1') then -- xxx must be asynch
      state <= ht_ds_fis;
    else
      case (state) is
        when ht_ds_fis => -- HTDS1 , ht_ds_fis , Initialize the DMA controller for a first party DMA with the content of the request FIS
          if (dma_controller_initialized = '1' and error = '0') then
            state <= ht_hostidle;
          end if;
          if (error = '1') then
            state <= ht_hostidle;
          end if;
          if (LL_Error = '1') then
            state <= ht_hostidle;
          end if;
      end case;
    end if;
  end if;
end process process_8_6_10;

-- 8.6.11 Host transport decompose a BIST Activate FIS state diagram
process_8_6_11 : process (i_clock) is -- p. 221
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1') then -- xxx must be asynch
      state <= ht_rcvbist;
    else
      case (state) is
        when ht_rcvbist => -- HTRBIST1 , Determine validity of loopback mode requested
          if (status_checked = '1' and error = '0' and loopback_mode = '1') then
            state <= ht_bisttrans1;
          end if;
          if (status_checked = '1' and error = '0' and loopback_mode = '0') then
            state <= ht_hostidle;
          end if;
          if (status_checked = '1' and error = '1') then
            state <= ht_hostidle;
          end if;
          if (LL_Error = '1') then
            state <= ht_hostidle;
          end if;
        when ht_bisttrans1 => -- HTRBIST2 , Notify application layer of desired BIST modes
          state <= ht_hostidle; -- unconditional
      end case;
    end if;
  end if;
end process process_8_6_11;

end architecture behavioral;
