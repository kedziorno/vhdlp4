--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:59:24 09/16/2022
-- Design Name:   
-- Module Name:   /home/user/workspace/pata_sata/tb_figure_15.vhd
-- Project Name:  pata_sata
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: figure_15
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;

ENTITY tb_figure_15 IS
END tb_figure_15;

ARCHITECTURE behavior OF tb_figure_15 IS

-- Component Declaration for the Unit Under Test (UUT)
COMPONENT figure_15
PORT(
pduby : OUT  std_logic;
pnduby : OUT  std_logic;
pinvby : OUT  std_logic;
pviol : OUT  std_logic;
pndfby : OUT  std_logic;
pduby_last : IN  std_logic;
pnduby_last : IN  std_logic;
pndfby_last : IN  std_logic;
pcd : IN  std_logic_vector(0 to 9);
pd : OUT  std_logic_vector(0 to 8)
);
END COMPONENT;

--Inputs
signal pduby_last : std_logic := '0';
signal pnduby_last : std_logic := '0';
signal pndfby_last : std_logic := '0';
signal pcd : std_logic_vector(0 to 9) := (others => '0');

--Outputs
signal pduby : std_logic;
signal pnduby : std_logic;
signal pinvby : std_logic;
signal pviol : std_logic;
signal pndfby : std_logic;
signal pd : std_logic_vector(0 to 8);

constant clock_period : time := 10 ns;
signal clock : std_logic;

BEGIN

-- Instantiate the Unit Under Test (UUT)
uut: figure_15 PORT MAP (
pduby => pduby,
pnduby => pnduby,
pinvby => pinvby,
pviol => pviol,
pndfby => pndfby,
pduby_last => pduby_last,
pnduby_last => pnduby_last,
pndfby_last => pndfby_last,
pcd => pcd,
pd => pd
);

-- Clock process definitions
clock_process :process
begin
clock <= '0';
wait for clock_period/2;
clock <= '1';
wait for clock_period/2;
end process;

-- Stimulus process
stim_proc: process
begin
-- hold reset state for 100 ns.
wait for 100 ns;
wait for clock_period*10;
-- insert stimulus here
pcd <= "1101010101"; wait for clock_period;
pcd <= "1110101010"; wait for clock_period;
pcd <= "0001010101"; wait for clock_period;
pcd <= "0010101010"; wait for clock_period;
pcd <= "0101010111"; wait for clock_period;
pcd <= "1010101011"; wait for clock_period;
pcd <= "0101010100"; wait for clock_period;
pcd <= "1010101000"; wait for clock_period;
wait;
end process;

END;
