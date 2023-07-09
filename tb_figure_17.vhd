--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:58:48 09/21/2022
-- Design Name:   
-- Module Name:   /home/user/workspace/pata_sata/tb_figure_17.vhd
-- Project Name:  pata_sata
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: figure_17
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

ENTITY tb_figure_17 IS
END tb_figure_17;

ARCHITECTURE behavior OF tb_figure_17 IS

-- Component Declaration for the Unit Under Test (UUT)
COMPONENT figure_17
PORT(
pcd40 : IN  std_logic_vector(0 to 39);
pdfby3 : OUT  std_logic;
pndfby3 : OUT  std_logic;
pduby3 : OUT  std_logic;
pnduby3 : OUT  std_logic;
pd36 : OUT  std_logic_vector(0 to 35);
pinvby : OUT  std_logic_vector(0 to 3);
pviol : OUT  std_logic_vector(0 to 3);
pndfby3_last : IN  std_logic;
pduby3_last : IN  std_logic;
pdfby3_last : IN  std_logic;
pnduby3_last : IN  std_logic
);
END COMPONENT;

--Inputs
signal pcd40 : std_logic_vector(0 to 39) := (others => '0');
signal pndfby3_last : std_logic := '0';
signal pduby3_last : std_logic := '0';
signal pdfby3_last : std_logic := '0';
signal pnduby3_last : std_logic := '0';

--Outputs
signal pdfby3 : std_logic;
signal pndfby3 : std_logic;
signal pduby3 : std_logic;
signal pnduby3 : std_logic;
signal pd36 : std_logic_vector(0 to 35);
signal pinvby : std_logic_vector(0 to 3);
signal pviol : std_logic_vector(0 to 3);

constant clock_period : time := 10 ns;
signal clock : std_logic;

BEGIN

-- Instantiate the Unit Under Test (UUT)
uut: figure_17 PORT MAP (
pcd40 => pcd40,
pdfby3 => pdfby3,
pndfby3 => pndfby3,
pduby3 => pduby3,
pnduby3 => pnduby3,
pd36 => pd36,
pinvby => pinvby,
pviol => pviol,
pndfby3_last => pndfby3_last,
pduby3_last => pduby3_last,
pdfby3_last => pdfby3_last,
pnduby3_last => pnduby3_last
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
stim_proc : process
begin
-- hold reset state for 100 ns.
wait for 100 ns;
wait for clock_period*10;
-- insert stimulus here
pcd40 <= "1101010101010101010101010101010101010101"; wait for clock_period;
pcd40 <= "1110101010101010101010101010101010101010"; wait for clock_period;
pcd40 <= "0010101010101010101010101010101010101010"; wait for clock_period;
pcd40 <= "0001010101010101010101010101010101010101"; wait for clock_period;
pcd40 <= "0101010101010101010101010101010101010111"; wait for clock_period;
pcd40 <= "1010101010101010101010101010101010101011"; wait for clock_period;
pcd40 <= "1010101010101010101010101010101010101000"; wait for clock_period;
pcd40 <= "0101010101010101010101010101010101010100"; wait for clock_period;
report "done" severity failure;
wait;
end process;

END;
