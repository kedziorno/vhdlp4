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

-- 6.8.1.1.1 Host Phy Initialization state machine
type states is (hp1,hp2,hp2b,hp3,hp4,hp5,hp5b,hp6,hp7,hp8,hp9,hp10,hp11);
signal state : states;

begin

process_6.8.1.1.1 : process (i_clock) is
begin
  if (rising_edge (i_clock)) then
    if (power_on_reset = '1' or i_reset = '1') then
      state <= hp1;
    else
      case state is
        when hp1 =>
          if (power_on_reset = '1' and i_reset = '0') then
            transmit_COMRESET <= '1'; -- minimum 6 bursts (multiple of 6)
            if (transmit_COMRESET_end = '1') then
              state <= hp2;
            end if;
          end if;
        when hp2 =>
          if (COMINIT_end = '1') then
            state <= hp2b;
          end if;
        when hp2b =>
          if (COMINIT_end = '0') then
            state <= hp3; -- p. 119 note 1 This state is entered asynchronously any time in response to COMINIT unless during a power-on reset or an explicit reset request (in which case HP1 is entered).
          end if;
        when hp3 =>
          if (CALIBRATE_COMPLETE = '1') then
            state <= hp4;
          end if;
        when hp4 =>
          transmit_COMWAKE <= '1';
          if (COMWAKE_detected = '0') then
            state <= hp5;
          end if;
          if (COMWAKE_detected = '1') then
            state <= hp5b;
          end if;
        when hp5 =>
          if (COMWAKE_detected = '1') then
            state <= hp5b;
          end if;
          if (COMWAKE_detected = '0') then
            state <= hp5;
          end if;
        when hp5b =>
          if (COMWAKE_detected = '0') then
            state <= hp6;
          end if;
          if (COMWAKE_detected = '1') then
            state <= hp5b;
          end if;
        when hp6 =>
          transmit_D10_2 <= '1'; -- Host must start transmitting d10.2 characters no later than 533ns (20 Gen1 dwords) after COMWAKE is deasserted as specified in the out of band signaling section
          if (ALIGN_detected = '1') then
            state <= hp11; -- For example: a compliant host may detect the deassertion of COMWAKE in as little as 112ns, such a host should wait at least 116.3ns (175+53.3(2 gen1 dword)-112) after detecting the release of COMWAKE to start looking for ALIGNs.
          end if;
          if (ALIGN_detected = '0' and GEN1_DWORD_32768 = '1') then
            state <= hp1;
          end if;
          if (ALIGN_detected = '0' and GEN1_DWORD_32768 = '0') then
            state <= hp6;
          end if;
        when hp7 =>
          transmit_ALIGN <= '1';
        when hp8 =>
        when hp9 =>
        when hp10 =>
        when hp11 =>
      end case;
    end if;
  end if;
end process process_6.8.1.1.1;

end Behavioral;

