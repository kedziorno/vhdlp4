--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:57:45 06/24/2023
-- Design Name:   
-- Module Name:   /home/user/workspace/raid/spraid/tb_sata_communication.vhd
-- Project Name:  spraid
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Hsata Dsata
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
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
use STD.textio.all;
use ieee.std_logic_textio.all;

ENTITY tb_sata_communication IS
END tb_sata_communication;

ARCHITECTURE behavior OF tb_sata_communication IS

-- Component Declaration for the Unit Under Test (UUT)
COMPONENT Hsata
PORT(
RESET : IN  std_logic;
RXp : IN  std_logic;
RXn : IN  std_logic;
TXp : OUT  std_logic;
TXn : OUT  std_logic
);
END COMPONENT;

COMPONENT Dsata
PORT(
RESET : IN  std_logic;
RXp : IN  std_logic;
RXn : IN  std_logic;
TXp : OUT  std_logic;
TXn : OUT  std_logic
);
END COMPONENT;

--Inputs
signal RESET : std_logic := '0';
signal RXph : std_logic := '0';
signal RXpd : std_logic := '0';
signal RXnh : std_logic := '0';
signal RXnd : std_logic := '0';

--Outputs
signal TXph : std_logic;
signal TXpd : std_logic;
signal TXnh : std_logic;
signal TXnd : std_logic;

signal clock : std_logic;
constant clock_period : time := 1 ns;

BEGIN

-- Instantiate the Unit Under Test (UUT)
host : Hsata PORT MAP (
RESET => RESET,
RXp => RXph,
RXn => RXnh,
TXp => TXph,
TXn => TXnh
);

device : Dsata PORT MAP (
RESET => RESET,
RXp => RXpd,
RXn => RXnd,
TXp => TXpd,
TXn => TXnd
);

RXph <= TXpd;
RXnh <= TXnd;

RXpd <= TXph;
RXnd <= TXnh;

clock_process :process
begin
clock <= '0';
wait for clock_period/2;
clock <= '1';
wait for clock_period/2;
end process;

-- Stimulus process
stim_proc: process
variable v_OLINE : line;
file file_RESULTS : text;
constant cs : string := "";
begin
file_open(file_RESULTS, "output_results_host.txt", write_mode);
write(v_OLINE, cs, left);
writeline(file_RESULTS, v_OLINE);
file_close(file_RESULTS);
file_open(file_RESULTS, "output_results_device.txt", write_mode);
write(v_OLINE, cs, left);
writeline(file_RESULTS, v_OLINE);
file_close(file_RESULTS);
reset <= '1';
wait for 10000 ns;	
reset <= '0';
wait for clock_period*10;

-- insert stimulus here 
wait for 1000 us;
report "tb done" severity failure;
wait;
end process;

END;
