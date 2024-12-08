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

constant C_COMRESET_idle_counter : integer := HOST_COMRESET_IDLE/GEN1_1_DWORD;
signal COMRESET_idle_counter : integer range 0 to C_COMRESET_idle_counter - 1;
signal COMRESET_idle_enable : std_logic;
type COMRESET_idle_states is (COMRESET_idle_state_a,COMRESET_idle_state_b);
signal COMRESET_idle_state : COMRESET_idle_states;

constant C_COMRESET_burst_counter : integer := HOST_COMRESET_BURST/GEN1_1_DWORD;
signal COMRESET_burst_counter : integer range 0 to C_COMRESET_burst_counter - 1;
constant C_COMRESET_idle_counter : integer := HOST_COMRESET_IDLE/GEN1_1_DWORD;
signal COMRESET_idle_counter : integer range 0 to C_COMRESET_idle_counter - 1;
type power_on_states is (CR1,CRw1,CR2,CRw2,CR3,CRw3,CR4,CRw4,CR5,CRw5,CR6,CRw6);
signal power_on_state : power_on_states;
--signal power_on_counter : integer;

constant C_COMINIT_burst_counter : integer := HOST_COMINIT_BURST/GEN1_1_DWORD;
signal COMINIT_burst_counter : integer range 0 to C_COMINIT_burst_counter - 1;
constant C_COMINIT_idle_counter : integer := HOST_COMINIT_IDLE/GEN1_1_DWORD;
signal COMINIT_idle_counter : integer range 0 to C_COMINIT_idle_counter - 1;
type power_on_states is (CI1,CIw1,CR2,CRw2,CR3,CRw3,CR4,CRw4,CR5,CRw5,CR6,CRw6);
signal power_on_state_COMINIT : power_on_states;

--constant C_COMRESET_burst_counter : integer := HOST_COMRESET_BURST/GEN1_1_DWORD;
--signal COMRESET_burst_counter : integer range 0 to C_COMRESET_burst_counter - 1;
--signal COMRESET_burst_enable : std_logic;
--type COMRESET_burst_states is (COMRESET_burst_state_a,COMRESET_burst_state_b);
--signal COMRESET_burst_state : COMRESET_burst_states;

constant C_COMWAKE_burst_counter : integer := HOST_COMWAKE_BURST/GEN1_1_DWORD;
signal COMWAKE_burst_counter : integer range 0 to C_COMWAKE_burst_counter - 1;
constant C_COMWAKE_idle_counter : integer := HOST_COMWAKE_IDLE/GEN1_1_DWORD;
signal COMWAKE_idle_counter : integer range 0 to C_COMWAKE_idle_counter - 1;
type power_on_states_COMWAKE is (CI1,CIw1,CI2,CIw2,CI3,CIw3,CI4,CIw4,CI5,CIw5,CI6,CIw6);
signal power_on_state_COMWAKE : power_on_states_COMWAKE;

constant C_CLOCK_M1 : integer := 1;
constant C_CLOCK_M2 : integer := 2;
constant C_CLOCK_M3 : integer := 3;
constant C_CLOCK_M4 : integer := 4;
constant C_CLOCK_MAX : integer := C_CLOCK_M4;
constant C_CLOCK_MAX1 : integer := 16;
signal clock_counter_1 : integer range 0 to C_CLOCK_MAX - 1;
signal clock_counter_2 : integer range 0 to C_CLOCK_MAX1 - 1;
signal clock_counter_3 : integer range 0 to C_CLOCK_MAX - 1;
signal clock_mux1 : std_logic;

constant C_PMACK_burst_counter : integer := HOST_COMWAKE_BURST/GEN1_1_DWORD;
signal PMACK_burst_counter : integer range 0 to C_PMACK_burst_counter - 1;
type partial_slumber_PMACK_states is (idle, CI1, CI2, CI3, CI4, CI5);
signal partial_slumber_PMACK_state : partial_slumber_PMACK_states;

constant C_PMREQ_burst_counter : integer := HOST_COMWAKE_BURST/GEN1_1_DWORD;
signal PMREQ_burst_counter : integer range 0 to C_PMREQ_burst_counter - 1;
type partial_slumber_PMREQ_states is (CI1, CI2, CI3, CI4, CI5, CI6, CI7);
signal partial_slumber_PMREQ_state : partial_slumber_PMREQ_states;

begin

process_6_8_1_1_1 : process (i_clock) is -- p. 119
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
end process process_6_8_1_1_1;

process_6_8_1_1_2 : process (i_clock) is -- p. 123
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
          if (COMWAKE_detected = '0' and (PARTIAL_signal = '1' or SLUMBER_signal = '1')) then
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
end process process_6_8_1_1_2;

--process_COMRESET_burst_counter : process (i_clock) is
--begin
--  if (rising_edge (i_clock)) then
--    if (i_reset = '1') then
--      COMRESET_burst_state <= a;
--    else
--      case (COMRESET_burst_state) is
--        when a =>
--          if (COMRESET_burst_enable = '1') then
--            COMRESET_burst_state <= b;
--            COMRESET_burst_counter <= 0;
--          else
--            COMRESET_burst_state <= a;
--          end if;
--        when b =>
--          if (COMRESET_burst_counter = C_COMRESET_burst_counter - 1) then
--            COMRESET_burst_state <= a;
--            COMRESET_burst_counter <= 0;
--          else
--            COMRESET_burst_counter <= COMRESET_burst_counter + 1;
--          end if;
--      end case;
--    end if;
--  end if;
--end process process_COMRESET_burst_counter;

process_COMRESET_idle_counter : process (i_clock) is
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1') then
      COMRESET_idle_state <= a;
    else
      case (COMRESET_idle_state) is
        when a =>
          if (COMRESET_idle_enable = '1') then
            COMRESET_idle_state <= b;
            COMRESET_idle_counter <= 0;
          else
            COMRESET_idle_state <= a;
          end if;
        when b =>
          if (COMRESET_idle_counter = C_COMRESET_idle_counter - 1) then
            COMRESET_idle_state <= a;
            COMRESET_idle_counter <= 0;
          else
            COMRESET_idle_counter <= COMRESET_idle_counter + 1;
          end if;
      end case;
    end if;
  end if;
end process process_COMRESET_idle_counter;

-- 6.8.1.2 Power-on sequence timing diagram p. 125
process_6_8_1_2_COMRESET : process (i_clock) is
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1') then
      power_on_state <= CR1;
      COMRESET_burst_counter <= 0;
      COMRESET_idle_counter <= 0;
    else
      case (power_on_state) is
        when CR1 =>
          TX <= '1';
          if (COMRESET_burst_counter = C_COMRESET_burst_counter - 1) then
            power_on_state <= CRw1;
            COMRESET_burst_counter <= 0;
          else
            power_on_state <= CR1;
            COMRESET_burst_counter <= COMRESET_burst_counter + 1;
          end if;
        when CRw1 =>
          TX <= '0';
          if (COMRESET_idle_counter = C_COMRESET_idle_counter - 1) then
            power_on_state <= CR2;
            COMRESET_idle_counter <= 0;
          else
            power_on_state <= CRw1;
            COMRESET_idle_counter <= COMRESET_idle_counter + 1;
          end if;
        when CR2 =>
          TX <= '1';
          if (COMRESET_burst_counter = C_COMRESET_burst_counter - 1) then
            power_on_state <= CRw2;
            COMRESET_burst_counter <= 0;
          else
            power_on_state <= CR2;
            COMRESET_burst_counter <= COMRESET_burst_counter + 1;
          end if;
        when CRw2 =>
          TX <= '0';
          if (COMRESET_idle_counter = C_COMRESET_idle_counter - 1) then
            power_on_state <= CR3;
            COMRESET_idle_counter <= 0;
          else
            power_on_state <= CRw2;
            COMRESET_idle_counter <= COMRESET_idle_counter + 1;
          end if;
        when CR3 =>
          TX <= '1';
          if (COMRESET_burst_counter = C_COMRESET_burst_counter - 1) then
            power_on_state <= CRw3;
            COMRESET_burst_counter <= 0;
          else
            power_on_state <= CR3;
            COMRESET_burst_counter <= COMRESET_burst_counter + 1;
          end if;
        when CRw3 =>
          TX <= '0';
          if (COMRESET_idle_counter = C_COMRESET_idle_counter - 1) then
            power_on_state <= CR4;
            COMRESET_idle_counter <= 0;
          else
            power_on_state <= CRw3;
            COMRESET_idle_counter <= COMRESET_idle_counter + 1;
          end if;
        when CR4 =>
          TX <= '1';
          if (COMRESET_burst_counter = C_COMRESET_burst_counter - 1) then
            power_on_state <= CRw4;
            COMRESET_burst_counter <= 0;
          else
            power_on_state <= CR4;
            COMRESET_burst_counter <= COMRESET_burst_counter + 1;
          end if;
        when CRw4 =>
          TX <= '0';
          if (COMRESET_idle_counter = C_COMRESET_idle_counter - 1) then
            power_on_state <= CR5;
            COMRESET_idle_counter <= 0;
          else
            power_on_state <= CRw4;
            COMRESET_idle_counter <= COMRESET_idle_counter + 1;
          end if;
        when CR5 =>
          TX <= '1';
          if (COMRESET_burst_counter = C_COMRESET_burst_counter - 1) then
            power_on_state <= CRw5;
            COMRESET_burst_counter <= 0;
          else
            power_on_state <= CR5;
            COMRESET_burst_counter <= COMRESET_burst_counter + 1;
          end if;
        when CRw5 =>
          TX <= '0';
          if (COMRESET_idle_counter = C_COMRESET_idle_counter - 1) then
            power_on_state <= CR6;
            COMRESET_idle_counter <= 0;
          else
            power_on_state <= CRw5;
            COMRESET_idle_counter <= COMRESET_idle_counter + 1;
          end if;
        when CR6 =>
          TX <= '1';
          if (COMRESET_burst_counter = C_COMRESET_burst_counter - 1) then
            power_on_state <= CRw6;
            COMRESET_burst_counter <= 0;
          else
            power_on_state <= CR6;
            COMRESET_burst_counter <= COMRESET_burst_counter + 1;
          end if;
        when CRw6 =>
          TX <= '0';
          if (COMRESET_idle_counter = C_COMRESET_idle_counter - 1) then
            power_on_state <= CRw6;
            COMRESET_idle_counter <= 0;
          else
            power_on_state <= CRw6;
            COMRESET_idle_counter <= COMRESET_idle_counter + 1;
          end if;
      end case;
    end if;
  end if;
end process process_6_8_1_2_COMRESET;

process_6_8_1_2_COMINIT : process (i_clock) is
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1') then
      power_on_state_COMINIT <= CI1;
      COMRESET_burst_counter <= 0;
      COMRESET_idle_counter <= 0;
    else
      case (power_on_state_COMINIT) is
        when CI1 =>
          TX <= '1';
          if (COMRESET_burst_counter = C_COMRESET_burst_counter - 1) then
            power_on_state_COMINIT <= CIw1;
            COMRESET_burst_counter <= 0;
          else
            power_on_state_COMINIT <= CI1;
            COMRESET_burst_counter <= COMRESET_burst_counter + 1;
          end if;
        when CIw1 =>
          TX <= '0';
          if (COMRESET_idle_counter = C_COMRESET_idle_counter - 1) then
            power_on_state_COMINIT <= CI2;
            COMRESET_idle_counter <= 0;
          else
            power_on_state_COMINIT <= CIw1;
            COMRESET_idle_counter <= COMRESET_idle_counter + 1;
          end if;
        when CI2 =>
          TX <= '1';
          if (COMRESET_burst_counter = C_COMRESET_burst_counter - 1) then
            power_on_state_COMINIT <= CIw2;
            COMRESET_burst_counter <= 0;
          else
            power_on_state_COMINIT <= CI2;
            COMRESET_burst_counter <= COMRESET_burst_counter + 1;
          end if;
        when CIw2 =>
          TX <= '0';
          if (COMRESET_idle_counter = C_COMRESET_idle_counter - 1) then
            power_on_state_COMINIT <= CI3;
            COMRESET_idle_counter <= 0;
          else
            power_on_state_COMINIT <= CIw2;
            COMRESET_idle_counter <= COMRESET_idle_counter + 1;
          end if;
        when CI3 =>
          TX <= '1';
          if (COMRESET_burst_counter = C_COMRESET_burst_counter - 1) then
            power_on_state_COMINIT <= CIw3;
            COMRESET_burst_counter <= 0;
          else
            power_on_state_COMINIT <= CI3;
            COMRESET_burst_counter <= COMRESET_burst_counter + 1;
          end if;
        when CIw3 =>
          TX <= '0';
          if (COMRESET_idle_counter = C_COMRESET_idle_counter - 1) then
            power_on_state_COMINIT <= CI4;
            COMRESET_idle_counter <= 0;
          else
            power_on_state_COMINIT <= CIw3;
            COMRESET_idle_counter <= COMRESET_idle_counter + 1;
          end if;
        when CI4 =>
          TX <= '1';
          if (COMRESET_burst_counter = C_COMRESET_burst_counter - 1) then
            power_on_state_COMINIT <= CIw4;
            COMRESET_burst_counter <= 0;
          else
            power_on_state_COMINIT <= CI4;
            COMRESET_burst_counter <= COMRESET_burst_counter + 1;
          end if;
        when CIw4 =>
          TX <= '0';
          if (COMRESET_idle_counter = C_COMRESET_idle_counter - 1) then
            power_on_state_COMINIT <= CI5;
            COMRESET_idle_counter <= 0;
          else
            power_on_state_COMINIT <= CIw4;
            COMRESET_idle_counter <= COMRESET_idle_counter + 1;
          end if;
        when CI5 =>
          TX <= '1';
          if (COMRESET_burst_counter = C_COMRESET_burst_counter - 1) then
            power_on_state_COMINIT <= CIw5;
            COMRESET_burst_counter <= 0;
          else
            power_on_state_COMINIT <= CI5;
            COMRESET_burst_counter <= COMRESET_burst_counter + 1;
          end if;
        when CIw5 =>
          TX <= '0';
          if (COMRESET_idle_counter = C_COMRESET_idle_counter - 1) then
            power_on_state_COMINIT <= CI6;
            COMRESET_idle_counter <= 0;
          else
            power_on_state_COMINIT <= CIw5;
            COMRESET_idle_counter <= COMRESET_idle_counter + 1;
          end if;
        when CI6 =>
          TX <= '1';
          if (COMRESET_burst_counter = C_COMRESET_burst_counter - 1) then
            power_on_state_COMINIT <= CIw6;
            COMRESET_burst_counter <= 0;
          else
            power_on_state_COMINIT <= CI6;
            COMRESET_burst_counter <= COMRESET_burst_counter + 1;
          end if;
        when CIw6 =>
          TX <= '0';
          if (COMRESET_idle_counter = C_COMRESET_idle_counter - 1) then
            power_on_state_COMINIT <= CIw6;
            COMRESET_idle_counter <= 0;
          else
            power_on_state_COMINIT <= CIw6;
            COMRESET_idle_counter <= COMRESET_idle_counter + 1;
          end if;
      end case;
    end if;
  end if;
end process process_6_8_1_2_COMINIT;

process_6_8_1_2_COMWAKE : process (i_clock) is
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1') then
      power_on_state_COMWAKE <= CI1;
      COMWAKE_burst_counter <= 0;
      COMWAKE_idle_counter <= 0;
    else
      case (power_on_state_COMWAKE) is
        when CI1 =>
          TX <= '1';
          if (COMWAKE_burst_counter = C_COMWAKE_burst_counter - 1) then
            power_on_state_COMWAKE <= CIw1;
            COMWAKE_burst_counter <= 0;
          else
            power_on_state_COMWAKE <= CI1;
            COMWAKE_burst_counter <= COMWAKE_burst_counter + 1;
          end if;
        when CIw1 =>
          TX <= '0';
          if (COMWAKE_idle_counter = C_COMWAKE_idle_counter - 1) then
            power_on_state_COMWAKE <= CI2;
            COMWAKE_idle_counter <= 0;
          else
            power_on_state_COMWAKE <= CIw1;
            COMWAKE_idle_counter <= COMWAKE_idle_counter + 1;
          end if;
        when CI2 =>
          TX <= '1';
          if (COMWAKE_burst_counter = C_COMWAKE_burst_counter - 1) then
            power_on_state_COMWAKE <= CIw2;
            COMWAKE_burst_counter <= 0;
          else
            power_on_state_COMWAKE <= CI2;
            COMWAKE_burst_counter <= COMWAKE_burst_counter + 1;
          end if;
        when CIw2 =>
          TX <= '0';
          if (COMWAKE_idle_counter = C_COMWAKE_idle_counter - 1) then
            power_on_state_COMWAKE <= CI3;
            COMWAKE_idle_counter <= 0;
          else
            power_on_state_COMWAKE <= CIw2;
            COMWAKE_idle_counter <= COMWAKE_idle_counter + 1;
          end if;
        when CI3 =>
          TX <= '1';
          if (COMWAKE_burst_counter = C_COMWAKE_burst_counter - 1) then
            power_on_state_COMWAKE <= CIw3;
            COMWAKE_burst_counter <= 0;
          else
            power_on_state_COMWAKE <= CI3;
            COMWAKE_burst_counter <= COMWAKE_burst_counter + 1;
          end if;
        when CIw3 =>
          TX <= '0';
          if (COMWAKE_idle_counter = C_COMWAKE_idle_counter - 1) then
            power_on_state_COMWAKE <= CI4;
            COMWAKE_idle_counter <= 0;
          else
            power_on_state_COMWAKE <= CIw3;
            COMWAKE_idle_counter <= COMWAKE_idle_counter + 1;
          end if;
        when CI4 =>
          TX <= '1';
          if (COMWAKE_burst_counter = C_COMWAKE_burst_counter - 1) then
            power_on_state_COMWAKE <= CIw4;
            COMWAKE_burst_counter <= 0;
          else
            power_on_state_COMWAKE <= CI4;
            COMWAKE_burst_counter <= COMWAKE_burst_counter + 1;
          end if;
        when CIw4 =>
          TX <= '0';
          if (COMWAKE_idle_counter = C_COMWAKE_idle_counter - 1) then
            power_on_state_COMWAKE <= CI5;
            COMWAKE_idle_counter <= 0;
          else
            power_on_state_COMWAKE <= CIw4;
            COMWAKE_idle_counter <= COMWAKE_idle_counter + 1;
          end if;
        when CI5 =>
          TX <= '1';
          if (COMWAKE_burst_counter = C_COMWAKE_burst_counter - 1) then
            power_on_state_COMWAKE <= CIw5;
            COMWAKE_burst_counter <= 0;
          else
            power_on_state_COMWAKE <= CI5;
            COMWAKE_burst_counter <= COMWAKE_burst_counter + 1;
          end if;
        when CIw5 =>
          TX <= '0';
          if (COMWAKE_idle_counter = C_COMWAKE_idle_counter - 1) then
            power_on_state_COMWAKE <= CI6;
            COMWAKE_idle_counter <= 0;
          else
            power_on_state_COMWAKE <= CIw5;
            COMWAKE_idle_counter <= COMWAKE_idle_counter + 1;
          end if;
        when CI6 =>
          TX <= '1';
          if (COMWAKE_burst_counter = C_COMWAKE_burst_counter - 1) then
            power_on_state_COMWAKE <= CIw6;
            COMWAKE_burst_counter <= 0;
          else
            power_on_state_COMWAKE <= CI6;
            COMWAKE_burst_counter <= COMWAKE_burst_counter + 1;
          end if;
        when CIw6 =>
          TX <= '0';
          if (COMWAKE_idle_counter = C_COMWAKE_idle_counter - 1) then
            power_on_state_COMWAKE <= CIw6;
            COMWAKE_idle_counter <= 0;
          else
            power_on_state_COMWAKE <= CIw6;
            COMWAKE_idle_counter <= COMWAKE_idle_counter + 1;
          end if;
      end case;
    end if;
  end if;
end process process_6_8_1_2_COMWAKE;

process_6_8_1_4_1_PMREQ_HOST : process (i_clock) is
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1') then
      partial_slumber_PMREQ_state <= CI1;
      PMREQ_burst_counter <= 0;
      TX_PMREQ <= '0';
    else
      case (partial_slumber_PMREQ_state) is
        when CI1 =>
          TX_PMREQ <= '1';
          if (PMREQ_burst_counter = C_PMREQ_burst_counter - 1) then
            partial_slumber_PMREQ_state <= CI2;
            PMREQ_burst_counter <= 0;
          else
            partial_slumber_PMREQ_state <= CI1;
            PMREQ_burst_counter <= PMREQ_burst_counter + 1;
          end if;
        when CI2 =>
          TX_PMREQ <= '1';
          if (PMREQ_burst_counter = C_PMREQ_burst_counter - 1) then
            partial_slumber_PMREQ_state <= CI3;
            PMREQ_burst_counter <= 0;
          else
            partial_slumber_PMREQ_state <= CI2;
            PMREQ_burst_counter <= PMREQ_burst_counter + 1;
          end if;
        when CI3 =>
          TX_PMREQ <= '1';
          if (PMREQ_burst_counter = C_PMREQ_burst_counter - 1) then
            partial_slumber_PMREQ_state <= CI4;
            PMREQ_burst_counter <= 0;
          else
            partial_slumber_PMREQ_state <= CI3;
            PMREQ_burst_counter <= PMREQ_burst_counter + 1;
          end if;
        when CI4 =>
          TX_PMREQ <= '1';
          if (PMREQ_burst_counter = C_PMREQ_burst_counter - 1) then
            partial_slumber_PMREQ_state <= CI5;
            PMREQ_burst_counter <= 0;
          else
            partial_slumber_PMREQ_state <= CI4;
            PMREQ_burst_counter <= PMREQ_burst_counter + 1;
          end if;
        when CI5 =>
          TX_PMREQ <= '0';
          if (RX_PMACK = '1') then
            partial_slumber_PMREQ_state <= CI6;
          else
            partial_slumber_PMREQ_state <= CI1;
          end if;
        when CI6 =>
          -- Host to partial mode
          partial_slumber_PMREQ_state <= CI7;
        when CI7 =>
          -- Partial mode
      end case;
    end if;
  end if;
end process process_6_8_1_4_1_PMREQ_HOST;

process_6_8_1_4_2_PMACK_HOST : process (i_clock) is
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1') then
      partial_slumber_PMACK_state <= idle;
      PMACK_burst_counter <= 0;
      TX_PMACK <= '0';
    else
      case (partial_slumber_PMREQ_state) is
        when idle =>
          if (RX_PMREQ = '1') then
            partial_slumber_PMACK_state <= CI1;
          else
            partial_slumber_PMACK_state <= idle;
          end if;
        when CI1 =>
          TX_PMACK <= '1';
          if (PMREQ_burst_counter = C_PMREQ_burst_counter - 1) then
            partial_slumber_PMREQ_state <= CI2;
            PMREQ_burst_counter <= 0;
          else
            partial_slumber_PMREQ_state <= CI1;
            PMREQ_burst_counter <= PMREQ_burst_counter + 1;
          end if;
        when CI2 =>
          TX_PMACK <= '1';
          if (PMREQ_burst_counter = C_PMREQ_burst_counter - 1) then
            partial_slumber_PMREQ_state <= CI3;
            PMREQ_burst_counter <= 0;
          else
            partial_slumber_PMREQ_state <= CI2;
            PMREQ_burst_counter <= PMREQ_burst_counter + 1;
          end if;
        when CI3 =>
          TX_PMACK <= '1';
          if (PMREQ_burst_counter = C_PMREQ_burst_counter - 1) then
            partial_slumber_PMREQ_state <= CI4;
            PMREQ_burst_counter <= 0;
          else
            partial_slumber_PMREQ_state <= CI3;
            PMREQ_burst_counter <= PMREQ_burst_counter + 1;
          end if;
        when CI4 =>
          TX_PMACK <= '1';
          if (PMREQ_burst_counter = C_PMREQ_burst_counter - 1) then
            partial_slumber_PMREQ_state <= CI5;
            PMREQ_burst_counter <= 0;
          else
            partial_slumber_PMREQ_state <= CI4;
            PMREQ_burst_counter <= PMREQ_burst_counter + 1;
          end if;
        when CI5 =>
          TX_PMACK <= '0';
          -- Host to partial mode
      end case;
    end if;
  end if;
end process process_6_8_1_4_2_PMACK_HOST;

process_clock_MUX1 : process (i_clock) is
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1') then
      clock_mux1 <= '0';
    else
      if (clock_counter_3 = clock_counter_2) then
        clock_mux1 <= not clock_mux1;
        clock_counter_3 <= 0;
      else
        clock_mux1 <= clock_mux1;
        clock_counter_3 <= clock_counter_3 + 1;
      end if;
    end if;
  end if;
end process process_clock_MUX1;

process_clock_MUX2 : process (clock_counter_2) is
begin
  case (clock_counter_2) is
    when C_CLOCK_M1 =>
      clock_counter_1 <= C_CLOCK_M1;
    when C_CLOCK_M2 =>
      clock_counter_1 <= C_CLOCK_M2;
    when C_CLOCK_M3 =>
      clock_counter_1 <= C_CLOCK_M3;
    when C_CLOCK_M4 =>
      clock_counter_1 <= C_CLOCK_M4;
    when others =>
      clock_counter_1 <= 0;
  end case;
end process process_clock_MUX2;

end Behavioral;
