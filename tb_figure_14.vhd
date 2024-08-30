--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:24:59 09/15/2022
-- Design Name:   
-- Module Name:   /home/user/workspace/pata_sata/tb_figure_14.vhd
-- Project Name:  pata_sata
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: figure_14
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

ENTITY tb_figure_14 IS
END tb_figure_14;

ARCHITECTURE behavior OF tb_figure_14 IS

-- Component Declaration for the Unit Under Test (UUT)
COMPONENT figure_14
PORT(
pcd : IN  std_logic_vector(0 to 9);
pd : OUT  std_logic_vector(0 to 8);
pndfby : IN  std_logic;
pdfby : IN  std_logic;
pviol : OUT  std_logic;
pinvby : OUT  std_logic;
pduby : OUT  std_logic;
pnduby : OUT  std_logic
);
END COMPONENT;

--Inputs
signal pcd : std_logic_vector(0 to 9) := (others => '0');
signal pndfby : std_logic := '0';
signal pdfby : std_logic := '0';

--Outputs
signal pd : std_logic_vector(0 to 8);
signal pviol : std_logic;
signal pinvby : std_logic;
signal pduby : std_logic;
signal pnduby : std_logic;

constant clock_period : time := 10 ns;
signal clock : std_logic;

BEGIN

-- Instantiate the Unit Under Test (UUT)
uut: figure_14 PORT MAP (
pcd => pcd,
pd => pd,
pndfby => pndfby,
pdfby => pdfby,
pviol => pviol,
pinvby => pinvby,
pduby => pduby,
pnduby => pnduby
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
pcd <= "0101010101"; wait for clock_period*10;
pcd <= "1001110101"; wait for clock_period*10;
pcd <= "1001001010"; wait for clock_period*10;

pcd <= "0010101010"; wait for clock_period;
pcd <= "0001010101"; wait for clock_period;
pcd <= "1110101010"; wait for clock_period;
pcd <= "1101010101"; wait for clock_period;
pcd <= "1010101000"; wait for clock_period;
pcd <= "0101010100"; wait for clock_period;
pcd <= "1010101011"; wait for clock_period;
pcd <= "0101010111"; wait for clock_period;
wait;
end process;

END;
