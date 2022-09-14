--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:39:49 09/14/2022
-- Design Name:   
-- Module Name:   /home/user/workspace/pata_sata/tb_figure_10.vhd
-- Project Name:  pata_sata
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: figure_10
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

ENTITY tb_figure_10 IS
END tb_figure_10;

ARCHITECTURE behavior OF tb_figure_10 IS

-- Component Declaration for the Unit Under Test (UUT)
COMPONENT figure_10
PORT(
pca : IN  std_logic;
pcb : IN  std_logic;
pcc : IN  std_logic;
pcd : IN  std_logic;
pce : IN  std_logic;
pci : IN  std_logic;
p3x : IN  std_logic;
px3 : IN  std_logic;
pcndn : OUT  std_logic;
neuei : OUT  std_logic;
penin : OUT  std_logic;
ni : OUT  std_logic;
nk28 : OUT  std_logic;
pinvr6 : OUT  std_logic;
pa : OUT  std_logic;
pb : OUT  std_logic;
pc : OUT  std_logic;
pd : OUT  std_logic;
pe : OUT  std_logic
);
END COMPONENT;

--Inputs
signal pca : std_logic := '0';
signal pcb : std_logic := '0';
signal pcc : std_logic := '0';
signal pcd : std_logic := '0';
signal pce : std_logic := '0';
signal pci : std_logic := '0';
signal p3x : std_logic := '0';
signal px3 : std_logic := '0';
signal inp : std_logic_vector(0 to 5);

--Outputs
signal pcndn : std_logic;
signal neuei : std_logic;
signal penin : std_logic;
signal ni : std_logic;
signal nk28 : std_logic;
signal pinvr6 : std_logic;
signal pa : std_logic;
signal pb : std_logic;
signal pc : std_logic;
signal pd : std_logic;
signal pe : std_logic;
signal oup : std_logic_vector(0 to 4);

constant clock_period : time := 10 ns;
signal clock : std_logic;

BEGIN

pca <= inp(5);
pcb <= inp(4);
pcc <= inp(3);
pcd <= inp(2);
pce <= inp(1);
pci <= inp(0);
oup(0) <= pa;
oup(1) <= pb;
oup(2) <= pc;
oup(3) <= pd;
oup(4) <= pe;

-- Instantiate the Unit Under Test (UUT)
uut: figure_10 PORT MAP (
pca => pca,
pcb => pcb,
pcc => pcc,
pcd => pcd,
pce => pce,
pci => pci,
p3x => p3x,
px3 => px3,
pcndn => pcndn,
neuei => neuei,
penin => penin,
ni => ni,
nk28 => nk28,
pinvr6 => pinvr6,
pa => pa,
pb => pb,
pc => pc,
pd => pd,
pe => pe
);

-- Clock process definitions
clock_process : process
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
inp <= "110101"; wait for clock_period;
inp <= "111010"; wait for clock_period;
inp <= "000101"; wait for clock_period;
inp <= "001010"; wait for clock_period;
inp <= "010111"; wait for clock_period;
inp <= "101011"; wait for clock_period;
inp <= "010100"; wait for clock_period;
inp <= "101000"; wait for clock_period;
wait;
end process;

END;
