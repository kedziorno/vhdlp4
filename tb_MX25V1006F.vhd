--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:22:13 04/29/2023
-- Design Name:   
-- Module Name:   /home/user/workspace/raid/spraid/tb_MX25V1006F.vhd
-- Project Name:  spraid
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MX25V1006F
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
 
ENTITY tb_MX25V1006F IS
END tb_MX25V1006F;
 
ARCHITECTURE behavior OF tb_MX25V1006F IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MX25V1006F
    PORT(
         SCLK : IN  std_logic;
         CS : IN  std_logic;
         SI : INOUT  std_logic;
         SO : INOUT  std_logic;
         WP : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal SCLK : std_logic := '0';
   signal CS : std_logic := '0';

	--BiDirs
   signal SI : std_logic;
   signal SO : std_logic;
   signal WP : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MX25V1006F PORT MAP (
          SCLK => SCLK,
          CS => CS,
          SI => SI,
          SO => SO,
          WP => WP
        );
 
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period := 1ns;
 
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100ms.
      wait for 100ms;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
