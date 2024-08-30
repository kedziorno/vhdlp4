--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:09:29 09/15/2022
-- Design Name:   
-- Module Name:   /home/user/workspace/pata_sata/tb_figure_13.vhd
-- Project Name:  pata_sata
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: figure_13
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

ENTITY tb_figure_13 IS
END tb_figure_13;

ARCHITECTURE behavior OF tb_figure_13 IS

-- Component Declaration for the Unit Under Test (UUT)
COMPONENT figure_13
PORT(
pcf : IN  std_logic;
pcg : IN  std_logic;
pch : IN  std_logic;
pcndn : IN  std_logic;
penin : IN  std_logic;
pci : IN  std_logic;
ni : IN  std_logic;
npdur6 : IN  std_logic;
ndur6 : IN  std_logic;
nk28 : IN  std_logic;
neuei : IN  std_logic;
p22 : IN  std_logic;
pcj : IN  std_logic;
ndv64 : OUT  std_logic;
pdrr4 : OUT  std_logic;
pf : OUT  std_logic;
pdur4 : OUT  std_logic;
pndur4 : OUT  std_logic;
nvkx7 : OUT  std_logic;
pk : OUT  std_logic;
ph : OUT  std_logic;
pg : OUT  std_logic;
pinvr4 : OUT  std_logic;
pndrr4 : OUT  std_logic
);
END COMPONENT;

signal inp : std_logic_vector(0 to 4);
signal oup : std_logic_vector(0 to 3);

--Inputs
signal pcf : std_logic := '0';
signal pcg : std_logic := '0';
signal pch : std_logic := '0';
signal pcndn : std_logic := '0';
signal penin : std_logic := '0';
signal pci : std_logic := '0';
signal ni : std_logic := '0';
signal npdur6 : std_logic := '0';
signal ndur6 : std_logic := '0';
signal nk28 : std_logic := '0';
signal neuei : std_logic := '0';
signal p22 : std_logic := '0';
signal pcj : std_logic := '0';

--Outputs
signal ndv64 : std_logic;
signal pdrr4 : std_logic;
signal pf : std_logic;
signal pdur4 : std_logic;
signal pndur4 : std_logic;
signal nvkx7 : std_logic;
signal pk : std_logic;
signal ph : std_logic;
signal pg : std_logic;
signal pinvr4 : std_logic;
signal pndrr4 : std_logic;

constant clock_period : time := 10 ns;
signal clock : std_logic;

BEGIN

pcf <= inp(0);
pcg <= inp(1);
pch <= inp(2);
pci <= inp(3);
pcj <= inp(4);
oup(0) <= pf;
oup(1) <= pg;
oup(2) <= ph;
oup(3) <= pk;

-- Instantiate the Unit Under Test (UUT)
uut: figure_13 PORT MAP (
pcf => pcf,
pcg => pcg,
pch => pch,
pcndn => pcndn,
penin => penin,
pci => pci,
ni => ni,
npdur6 => npdur6,
ndur6 => ndur6,
nk28 => nk28,
neuei => neuei,
p22 => p22,
pcj => pcj,
ndv64 => ndv64,
pdrr4 => pdrr4,
pf => pf,
pdur4 => pdur4,
pndur4 => pndur4,
nvkx7 => nvkx7,
pk => pk,
ph => ph,
pg => pg,
pinvr4 => pinvr4,
pndrr4 => pndrr4
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
inp <= "11010"; wait for clock_period;
inp <= "11101"; wait for clock_period;
inp <= "00010"; wait for clock_period;
inp <= "00101"; wait for clock_period;
inp <= "01011"; wait for clock_period;
inp <= "10111"; wait for clock_period;
inp <= "01000"; wait for clock_period;
inp <= "10100"; wait for clock_period;
wait;
end process;

END;
