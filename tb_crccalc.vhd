--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:46:33 12/14/2024
-- Design Name:   
-- Module Name:   /home/user/_WORKSPACE_/kedziorno/raid/tb_crccalc.vhd
-- Project Name:  spraid
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: embedded_kcpsm3
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

ENTITY tb_crccalc IS
END tb_crccalc;

ARCHITECTURE behavior OF tb_crccalc IS 

-- Component Declaration for the Unit Under Test (UUT)

COMPONENT embedded_kcpsm3
PORT (
crccalc_output : out std_logic_vector(31 downto 0);
data_in : in std_logic_vector(31 downto 0);
clk : in std_logic;
reset : in std_logic
);
END COMPONENT;

--Inputs
signal clk : std_logic := '0';
signal reset : std_logic := '0';
--signal data_in : std_logic_vector(31 downto 0) := x"00000000"; -- xxx ouptut value must be 0x52325032 - ok
signal data_in : std_logic_vector(31 downto 0) := x"00308027"; -- xxx example value from crccalc.psm

--Outputs
signal crccalc_output : std_logic_vector(31 downto 0);

-- Clock period definitions
constant clk_period : time := 10 ns;

BEGIN

-- Instantiate the Unit Under Test (UUT)
uut: embedded_kcpsm3 PORT MAP (
crccalc_output => crccalc_output,
data_in => data_in,
clk => clk,
reset => reset
);

-- Clock process definitions
clk_process: process
begin
clk <= '0';
wait for clk_period/2;
clk <= '1';
wait for clk_period/2;
end process;

-- Stimulus process
stim_proc: process
begin
-- hold reset state for 100 ns.
reset <= '1';
wait for 100 ns;
reset <= '0';
wait for clk_period*10;
-- insert stimulus here
wait for 1 ms;
report "tb done" severity failure;
end process;

END;
