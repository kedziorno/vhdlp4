--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:29:44 09/13/2022
-- Design Name:   
-- Module Name:   /home/user/workspace/pata_sata/tb_figure_7.vhd
-- Project Name:  pata_sata
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: figure_7
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

ENTITY tb_figure_7 IS
END tb_figure_7;

ARCHITECTURE behavior OF tb_figure_7 IS

-- Component Declaration for the Unit Under Test (UUT)
COMPONENT figure_7
PORT(
pd0 : IN  std_logic_vector(0 to 8);
pd1 : IN  std_logic_vector(0 to 8);
pd2 : IN  std_logic_vector(0 to 8);
pd3 : IN  std_logic_vector(0 to 8);
pdc0 : OUT  std_logic_vector(0 to 9);
pdc1 : OUT  std_logic_vector(0 to 9);
pdc2 : OUT  std_logic_vector(0 to 9);
pdc3 : OUT  std_logic_vector(0 to 9);
pbalby3_last : IN  std_logic;
pndf3_last : IN  std_logic;
pbalby3 : OUT  std_logic;
pndf3 : OUT  std_logic
);
END COMPONENT;

--Inputs
signal pd0 : std_logic_vector(0 to 8) := (others => '0');
signal pd1 : std_logic_vector(0 to 8) := (others => '0');
signal pd2 : std_logic_vector(0 to 8) := (others => '0');
signal pd3 : std_logic_vector(0 to 8) := (others => '0');
signal pbalby3_last : std_logic := '0';
signal pndf3_last : std_logic := '0';

--Outputs
signal pdc0 : std_logic_vector(0 to 9);
signal pdc1 : std_logic_vector(0 to 9);
signal pdc2 : std_logic_vector(0 to 9);
signal pdc3 : std_logic_vector(0 to 9);
signal pbalby3 : std_logic;
signal pndf3 : std_logic;

constant clock_period : time := 10 ns;
signal clock : std_logic;

BEGIN

-- Instantiate the Unit Under Test (UUT)
uut: figure_7 PORT MAP (
pd0 => pd0,
pd1 => pd1,
pd2 => pd2,
pd3 => pd3,
pdc0 => pdc0,
pdc1 => pdc1,
pdc2 => pdc2,
pdc3 => pdc3,
pbalby3_last => pbalby3_last,
pndf3_last => pndf3_last,
pbalby3 => pbalby3,
pndf3 => pndf3
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

wait;
end process;

END;
