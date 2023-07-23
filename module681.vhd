----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:16:14 07/21/2023 
-- Design Name: 
-- Module Name:    module681 - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity module681 is
port (
i_clock,i_reset : in std_logic;
o : out std_logic
);
end module681;

architecture Behavioral of module681 is

-- 6.8.1.1.1 Host Phy Initialization state_hr machine
type states_hr is (
hr_reset,
hr_awaitcominit,
hr_awaitnocominit,
hr_calibrate,
hr_comwake,
hr_awaitcomwake,
hr_awaitnocomwake,
hr_awaitalign,
hr_sendalign,
hr_ready,
hr_partial,
hr_slumber,
hr_adjustspeed);
signal state_hr : states_hr;

type states_dr is (
dr_reset,
dr_cominit,
dr_awaitcomwake,
dr_awaitnocomwake,
dr_calibrate,
dr_comwake,
dr_sendalign,
dr_ready,
dr_partial,
dr_slumber,
dr_reductespeed,
dr_error
);
signal state_dr : states_dr;

begin

process_6.8.1.1.1 : process (i_clock) is
begin
  if (rising_edge (i_clock)) then
    if (power_on_reset = '1' or i_reset = '1') then -- xxx must be asynch
      state_hr <= hr_reset;
    else
      case (state_hr) is
        when hr_reset => -- Transmit COMRESET
          if (power_on_reset = '1' and i_reset = '0') then
            transmit_COMRESET <= '1'; -- minimum 6 bursts (multiple of 6)
            if (transmit_COMRESET_end = '1') then
              state_hr <= hr_awaitcominit;
            end if;
          end if;
        when hr_awaitcominit => -- Interface quiescent
          if (COMINIT_end = '1') then
            state_hr <= hr_awaitnocominit;
          end if;
        when hr_awaitnocominit => -- Interface quiescent
          if (COMINIT_end = '0') then
            state_hr <= hr_calibrate; -- p. 119 note 1 This state_hr is entered asynchronously any time in response to COMINIT unless during a power-on reset or an explicit reset request (in which case HP1 is entered).
          end if;
        when hr_calibrate => -- Perform calibration
          if (CALIBRATE_COMPLETE = '1') then
            state_hr <= hr_comwake;
          end if;
          if (CALIBRATE_COMPLETE = '0') then
            state_hr <= hr_calibrate;
          end if;
        when hr_comwake => -- Transmit COMWAKE
          transmit_COMWAKE <= '1';
          if (COMWAKE_detected = '0') then
            state_hr <= hr_awaitcomwake;
          end if;
          if (COMWAKE_detected = '1') then
            state_hr <= hr_awaitnocomwake;
          end if;
        when hr_awaitcomwake => -- Interface quiescent
          if (COMWAKE_detected = '1') then
            state_hr <= hr_awaitnocomwake;
          end if;
          if (COMWAKE_detected = '0') then
            state_hr <= hr_awaitcomwake;
          end if;
        when hr_awaitnocomwake => -- Interface quiescent
          if (COMWAKE_detected = '0') then
            state_hr <= hr_awaitalign;
          end if;
          if (COMWAKE_detected = '1') then
            state_hr <= hr_awaitnocomwake;
          end if;
        when hr_awaitalign => -- Host transmits D10.2 characters at lowest supported rate
          transmit_D10_2 <= '1'; -- Host must start transmitting d10.2 characters no later than 533ns (20 Gen1 dwords) after COMWAKE is deasserted as specified in the out of band signaling section
          if (ALIGN_detected = '1') then
            state_hr <= hr_reset1; -- For example: a compliant host may detect the deassertion of COMWAKE in as little as 112ns, such a host should wait at least 116.3ns (175+53.3(2 gen1 dword)-112) after detecting the release of COMWAKE to start looking for ALIGNs.
          end if;
          if (ALIGN_detected = '0' and GEN1_DWORD_32768 = '1') then
            state_hr <= hr_reset;
          end if;
          if (ALIGN_detected = '0' and GEN1_DWORD_32768 = '0') then
            state_hr <= hr_awaitalign;
          end if;
        when hr_sendalign => -- Transmit ALIGN at speed detected
          transmit_ALIGN <= '1';
          if (three_b2b_nonALIGN_detected = '1') then
            state_hr <= hr_ready; -- Non-ALIGN primitives can be detected by the presence of the k28.3 control character in the byte0 position
          end if;
          if (three_b2b_nonALIGN_detected = '0') then
            state_hr <= hr_sendalign;
          end if;
        when hr_ready => -- Transmit word from Link - PhyRdy asserted only when in the HR_Ready state_hr and the Phy is maintaining synchronization with the incoming signal to its receiver and is transmitting a valid signal on its transmitter.
          if (PARTIAL = '1') then
            state_hr <= hr_partial;
          end if;
          if (SLUMBER = '1') then
            state_hr <= hr_slumber;
          end if;
          state_hr <= hr_ready;
        when hr_partial => -- Interface quiescent
          if (PARTIAL_signal = '0' and COMWAKE_detected = '0') then
            state_hr <= hr_comwake;
          end if;
          if (PARTIAL_signal = '0' and COMWAKE_detected = '1') then
            state_hr <= hr_awaitnocomwake;
          end if;
          if (PARTIAL_signal = '1') then
            state_hr <= hr_partial;
          end if;
        when hr_slumber => -- Interface quiescent
          -- 1. Host Phy must remember if COMWAKE was detected during Slumber to determine if the wakeup request originated from the host or the Phy. 2. The host Phy may take this transition only after it has recovered from slumber mode and the Phy is prepared to initiate communications. If Phy has not yet recovered from the slumber mode it shall remain in this state.
          if (SLUMBER_signal = '0' and COMWAKE_detected = '0') then -- 1,2
            state_hr <= hr_comwake;
          end if;
          if (SLUMBER_signal = '0' and COMWAKE_detected = '1') then -- 1,2
            state_hr <= hr_awaitnocomwake;
          end if;
          if (SLUMBER_signal = '1') then
            state_hr <= hr_slumber;
          end if;
        when hr_adjustspeed => -- Interface undefined but not quiescent
          -- Some implementations may undergo a transient condition where invalid signals are transmitted during the change in their internal transmission/reception speed. The host may transmit invalid signals for a period of up to 53ns (two Gen1 dwords) during the speed transition. Transmit jitter and unit interval timing requirements may not be met during this period but shall be met for all other bits transmitted in this state. A Phase shift may occur across the speed transition time.
          if (SPEED_completed = '1') then
            state_hr <= hr_sendalign;
          end if;
          if (SPEED_completed = '0') then
            state_hr <= hr_adjustspeed;
          end if;
      end case;
    end if;
  end if;
end process process_6.8.1.1.1;

process_6.8.1.1.2 : process (i_clock) is
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1' or power_on_reset = '1') then -- xxx must be asynch
      state_dr <= dr_reset;
    else
      case (state_dr) is
        when dr_reset => -- Interface quiescent
          if (COMRESET = '0' and power_on_reset = '0') then
            state_dr <= dr_cominit;
          end if;
          if (COMRESET = '1' or power_on_reset = '1') then
            state_dr <= dr_reset;
          end if;
        when dr_cominit => -- Transmit COMINIT
          -- COMINIT transmitted for a 6 bursts duration
          state <= dr_awaitcomwake;
        when dr_awaitcomwake => -- Interface quiescent
          if (COMWAKE_detected = '1') then
            state <= dr_awaitnocomwake;
          end if;
          if (COMWAKE_detected = '0') then
            state <= dr_awaitcomwake;
          end if;
        when dr_awaitnocomwake => -- Interface quiescent
          if (COMWAKE_detected = '0' and power_on_reset = '1') then
            state <= dr_calibrate;
          end if;
          if (COMWAKE_detected = '0' and (PARTIAL_signal = '1' or SLUMBER_signal = '1') then
            state <= dr_comwake;
          end if;
          if (COMWAKE_detected = '1') then
            state <= dr_awaitnocomwake;
          end if;
        when dr_calibrate => -- Perform calibration
          if (CALIBRATE_COMPLETE = '1') then
            state <= dr_comwake;
          end if;
          if (CALIBRATE_COMPLETE = '0') then
            state <= dr_calibrate;
          end if;
        when dr_comwake => -- Transmit COMWAKE
          state <= dr_sendalign;
        when dr_sendalign => -- Transmit ALIGN
          if (ALIGN_detected = '1') then
            state <= dr_ready;
          end if;
          if (ALIGN_detected = '0' and GEN1_DWORD_32768 = '1' and ALIGN_SPEED = '1') then
            -- ALIGN not detected from host and ALIGN primitives transmitted for 54.6us (2048 5 Gen1 ALIGN primitives) at speed OTHER than lowest
            state <= dr_reductespeed;
          end if;
          if (ALIGN_detected = '0' and GEN1_DWORD_32768 = '1' and ALIGN_SPEED = '0') then
            -- ALIGN not detected from host and ALIGN primitives transmitted for 54.6us (2048 5 Gen1 ALIGN primitives) at lowest speed
            state <= dr_error;
          end if;
          if (ALIGN_detected = '0' and GEN1_DWORD_32768 = '0') then
            -- ALIGN not detected from host and ALIGN primitives transmitted for less than 54.6us (2048 Gen1 ALIGN primitives)
            state <= dr_sendalign;
          end if;
        when dr_ready => -- Transmit word from Link
          if (PARTIAL_signal = '1') then
            state <= dr_partial;
          end if;
          if (SLUMBER_signal = '1') then
            state <= dr_slumber;
          end if;
          if (PARTIAL_signal = '0' or SLUMBER_signal = '0') then
            state <= dr_ready;
          end if;
        when dr_partial => -- Interface quiescent
          if (PARTIAL_signal = '0') then
            state <= dr_comwake;
          end if;
          if (PARTIAL_signal and COMWAKE_detected = '1') then
            state <= dr_awaitnocomwake;
          end if;
          if (PARTIAL_signal = '1') then
            state <= dr_partial;
          end if;
        when dr_slumber => -- Interface quiescent
          if (SLUMBER_signal = '0') then
            state <= dr_comwake;
          end if;
          if (SLUMBER_signal = '0' and COMWAKE_detected = '1') then
            state <= dr_awaitnocomwake;
          end if;
          if (SLUMBER_signal = '1') then
            state <= dr_slumber;
          end if;
        when dr_reductespeed => -- Interface quiescent
          if (LEGACY_SPEED = '1') then
            state <= dr_sendalign;
          end if;
          if (LEGACY_SPEED = '0') then
            state <= dr_reductespeed;
          end if;
        when dr_error => -- Interface quiescent
          if (SLUMBER_signal = '1' or PARTIAL_signal = '1') then
            state <= dr_comwake;
          end if;
          state <= dr_error;
      end case;
    end if;
  end if;
end process process_6.8.1.1.2;

end Behavioral;

