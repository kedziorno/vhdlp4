--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:52:24 09/12/2022
-- Design Name:   
-- Module Name:   /home/user/workspace/pata_sata/tb_encoder8b10b.vhd
-- Project Name:  pata_sata
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: encoder8b10b
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

ENTITY tb_encoder8b10b IS
END tb_encoder8b10b;

ARCHITECTURE behavior OF tb_encoder8b10b IS 

-- Component Declaration for the Unit Under Test (UUT)
COMPONENT encoder8b10b
PORT(
pcmpls4 : IN  std_logic;
pndfs6 : IN  std_logic;
ncmpls6 : IN  std_logic;
pk : IN  std_logic;
ipt : IN  std_logic_vector(7 downto 0);
opt : OUT  std_logic_vector(9 downto 0)
);
END COMPONENT;

--Inputs
signal pcmpls4 : std_logic := '0';
signal pndfs6 : std_logic := '0';
signal ncmpls6 : std_logic := '0';
signal pk : std_logic := '0';
signal ipt : std_logic_vector(7 downto 0) := (others => '0');

--Outputs
signal opt : std_logic_vector(9 downto 0);

constant clock_period : time := 10 ns;
signal clock : std_logic;

BEGIN

-- Instantiate the Unit Under Test (UUT)
uut: encoder8b10b PORT MAP (
pcmpls4 => pcmpls4,
pndfs6 => pndfs6,
ncmpls6 => ncmpls6,
pk => pk,
ipt => ipt,
opt => opt
);

-- Clock process definitions
clock_process :process
begin
clock <= '0';
wait for clock_period/2;
clock <= '1';
wait for clock_period/2;
end process;

pk <= '0';
pndfs6 <= '0';
pcmpls4 <= '0';
ncmpls6 <= '0';

-- Stimulus process
stim_proc : process
begin
-- hold reset state for 100 ns.
wait for 100 ns;
wait for clock_period*10;
-- insert stimulus here
ipt <= "11010101"; wait for clock_period;
wait;
end process;

END;
