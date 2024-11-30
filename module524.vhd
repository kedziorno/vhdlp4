----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:24:22 06/29/2023 
-- Design Name: 
-- Module Name:    module524 - Behavioral 
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

-- 5.2 Standard ATA Emulation
-- Standard ATA interoperability state diagrams
--This state diagram defines the protocol of the host adapter to emulate Master only legacy ATA
--devices as seen from the host BIOS or software driver. The interrupt pending flag (IPF) is an internal
--state bit in the host adapter that reflects whether or not the device has an interrupt pending to the
--host.

entity module524 is
port (
i_clock,i_reset : in std_logic;
COMRESET : in std_logic;
SRST : in std_logic;
nIEN : in std_logic;
BSY : out std_logic;
LL_COMRESET : out std_logic;
TL_ControlFIS : out std_logic;
interrupt : out std_logic
);
end module524;

architecture Behavioral of module524 is

-- shadow register block
-- devices shall ignore DEV bit
signal status_shadow_register : std_logic_vector (7 downto 0) := x"7f";

signal IPF : std_logic;
signal DEV : std_logic;

--HA0: HA_SEL/NOINTRQ The interrupt signal is not asserted to the host.
--HA1: HA_SEL/INTRQ The interrupt signal is asserted to the host.
--HA2: HA_NOTSEL The interrupt signal is not asserted to the host.
type ha_states is (
idle,
ha0,
ha01,ha02,ha03,ha04,ha05,ha06,ha07,ha08,ha09,ha10,
ha1,
ha11,ha12,ha13,ha14,ha15,ha16,ha17,ha18,ha19,ha110,
ha2
);
signal ha_state : ha_states;

begin

p0 : process (i_clock,i_reset) is
begin
  if (rising_edge (i_clock)) then
    if (i_reset = '1') then
      ha_state <= idle;
      IPF <= '0';
    else
      case (ha_state) is
        when idle =>
          if (IPF = '0' or nIEN = '1') then
            ha_state <= ha0;
          elsif (nIEN = '0' and IPF = '1') then
            ha_state <= ha1;
          else
            ha_state <= idle;
          end if;
        when ha0 =>
          interrupt <= '0';
          if (COMRESET = '1') then
            ha_state <= ha01;
          end if;
        when ha01 =>
          BSY <= '1';
          IPF <= '0';
          LL_COMRESET <= '1';
          ha_state <= ha0;
        when ha02 =>
          if (SRST = '0' and (nIEN = '1' or IPF = '0')) then
            TL_ContrlFIS <= '1';
            ha_state <= ha0;
          end if;
        when ha03 =>
          if (SRST = '0' and nIEN = '0' and IPF = '1') then
            ha_state <= ha1;
          end if;
        when ha04 =>
          if (SRST= '1') then
            BSY <= '1';
            IPF <= '0';
            TL_ContrlFIS <= '1';
            ha_state <= ha0;
          end if;
        when ha05 =>
          BSY <= '1';
          IPF <= '0';
          TL_CmdFIS <= '1';
          ha_state <= ha0;
        when ha06 =>
          if (DEV = '1') then
            ha_state <= ha2;
          end if;
        when ha07 =>
          ha_state <= ha0;
        when ha08 =>
          if (IPF = '0') then
            status_shadow_register <= x"00";
            ha_state <= ha0;
          end if;
        when ha09 =>
          if (IPF = '1' and nIEN = '1') then
            IPF <= '1';
            status_shadow_register <= x"00";
            ha_state <= ha0;
          end if;
        when ha10 =>
          if (IPF = '1' and nIEN = '0') then
            IPF <= '1';
            status_shadow_register <= x"00";
            ha_state <= ha1;
          end if;
        when ha1 =>
          interrupt <= '1';
          ha_state <= ha11;
        when ha11 =>
          if (COMRESET = '1') then
            BSY <= '1';
            IPF <= '0';
            LL_COMRESET <= '1';
            ha_state <= ha0;
          end if;
        when ha12 =>
          if (SRST = '0' and (nIEN = '1' or IPF = '0')) then
            TL_ContrlFIS <= '1';
            ha_state <= ha0;
          end if;
        when ha13 =>
          if (SRST = '0' and (nIEN = '0' and IPF = '1')) then
            TL_CntrlFIS <= '1';
            ha_state <= ha1;
          end if;
        when ha14 =>
          if (SRST = '1') then
            BSY <= '1';
            IPF <= '0';
            TL_ContrlFIS <= '1';
            ha_state <= ha0;
          end if;
        when ha15 =>
          BSY <= '1';
          IPF <= '0';
          TL_CmdFIS <= '1';
          ha_state <= ha0;
        when ha16 =>
          if (DEV = '1') then
            ha_state <= ha2;
          end if;
        when ha17 =>
          IPF <= '0';
          ha_state <= ha0;
        when ha18 =>
          ha_state <= ha1;
        when ha19 =>
          ha_state <= ha1;
        when ha110 =>
          status_shadow_register <= x"00";
          ha_state <= ha1;
        when ha2 =>
          interrupt <= '1';
          ha_state <= ha21;
        when ha21 =>
          if (COMRESET = '1') then
            BSY <= '1';
            DEV <= '0';
            IPF <= '0';
            LL_COMRESET <= '1';
            ha_state <= ha0;
          end if;
        when ha22 =>
          if (SRST = '0') then
            TL_ContrlFIS <= '1';
            ha_state <= ha2;
          end if;
        when ha23 =>
          if (SRST = '1') then
            BSY <= '1';
            DEV <= '0';
            IPF <= '0';
            TL_ContrlFIS <= '1';
            ha_state <= ha0;
          end if; 
        when ha24 =>
          if (Command_Register /= EXECUTE_DEVICE_DIAGNOSTIC) then
            BSY <= '0';
            ha_state <= ha2;
          end if;
        when ha25 =>
          if (Command_Register = EXECUTE_DEVICE_DIAGNOSTIC) then
            BSY <= '1';
            DEV <= '0';
            IPF <= '0';
            TL_CmdFIS <= '1';
            ha_state <= ha0;
          end if;
        when ha26 =>
          if (DEV = '0' and (nIEN = '1' or IPF = '0')) then
            ha_state <= ha0;
          end if;
        when ha27 =>
          if (DEV = '0' and (nIEN = '0' or IPF = '1')) then
            ha_state <= ha1;
          end if;
        when ha28 =>
          ha_state <= ha2;
        when ha29 =>
          status_shadow_register <= x"00";
          ha_state <= ha2;
        when ha210 =>
          -- return status_shadow_register
          ha_state <= ha2;
        when ha211 =>
          status_shadow_register <= x"00";
          ha_state <= ha2;
      end case;
    end if;
  end if;
end process p0;

end Behavioral;

