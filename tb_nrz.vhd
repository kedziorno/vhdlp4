--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:30:08 09/06/2022
-- Design Name:   
-- Module Name:   /home/user/workspace/pata_sata/tb_nrz.vhd
-- Project Name:  pata_sata
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nrz
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

ENTITY tb_nrz IS
END tb_nrz;

ARCHITECTURE behavior OF tb_nrz IS 

-- Component Declaration for the Unit Under Test (UUT)

COMPONENT nrzs
PORT(
i_reset : IN  std_logic;
i_clock : IN  std_logic;
i_in : IN  std_logic;
o_out : OUT  std_logic
);
END COMPONENT nrzs;
for all : nrzs use entity work.nrz(nrz_s);

COMPONENT nrzsi
PORT(
i_reset : IN  std_logic;
i_clock : IN  std_logic;
i_in : IN  std_logic;
o_out : OUT  std_logic
);
END COMPONENT nrzsi;
for all : nrzsi use entity work.nrz(nrz_si);

COMPONENT nrzm
PORT(
i_reset : IN  std_logic;
i_clock : IN  std_logic;
i_in : IN  std_logic;
o_out : OUT  std_logic
);
END COMPONENT nrzm;
for all : nrzm use entity work.nrz(nrz_m);

COMPONENT nrzmi
PORT(
i_reset : IN  std_logic;
i_clock : IN  std_logic;
i_in : IN  std_logic;
o_out : OUT  std_logic
);
END COMPONENT nrzmi;
for all : nrzmi use entity work.nrz(nrz_mi);

--Inputs
signal i_reset : std_logic := '0';
signal i_clock : std_logic := '0';
signal i_in : std_logic := '0';

--Outputs
signal nrzs_o_out : std_logic;
signal nrzsi_o_out : std_logic;
signal nrzm_o_out : std_logic;
signal nrzmi_o_out : std_logic;

-- Clock period definitions
constant i_clock_period : time := 10 ns;

BEGIN

-- Instantiate the Unit Under Test (UUT)

uut1: nrzs PORT MAP (
i_reset => i_reset,
i_clock => i_clock,
i_in => i_in,
o_out => nrzs_o_out
);

uut2: nrzsi PORT MAP (
i_reset => i_reset,
i_clock => i_clock,
i_in => i_in,
o_out => nrzsi_o_out
);

uut3: nrzm PORT MAP (
i_reset => i_reset,
i_clock => i_clock,
i_in => i_in,
o_out => nrzm_o_out
);

uut4: nrzmi PORT MAP (
i_reset => i_reset,
i_clock => i_clock,
i_in => i_in,
o_out => nrzmi_o_out
);

-- Clock process definitions
i_clock_process : process
begin
i_clock <= '0';
wait for i_clock_period/2;
i_clock <= '1';
wait for i_clock_period/2;
end process;

-- Stimulus process
stim_proc: process
begin		
-- hold reset state for 100 ns.
i_reset <= '1';
wait for 100 ns;	
i_reset <= '0';
wait for i_clock_period*10;
-- XXX NRZL
i_in <= '1'; wait for i_clock_period;
i_in <= '0'; wait for i_clock_period;
i_in <= '1'; wait for i_clock_period;
i_in <= '1'; wait for i_clock_period;
i_in <= '0'; wait for i_clock_period;
i_in <= '0'; wait for i_clock_period;
i_in <= '0'; wait for i_clock_period;
i_in <= '1'; wait for i_clock_period;
i_in <= '1'; wait for i_clock_period;
i_in <= '0'; wait for i_clock_period;
i_in <= '1'; wait for i_clock_period;
i_in <= '0'; wait for i_clock_period;
report "done" severity failure;

wait;
end process;

END;
