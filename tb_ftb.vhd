--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:42:27 04/25/2023
-- Design Name:   
-- Module Name:   /home/user/workspace/spraid/tb_ftb.vhd
-- Project Name:  spraid
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: flashtb
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
 
ENTITY tb_ftb IS
END tb_ftb;
 
ARCHITECTURE behavior OF tb_ftb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT flashtb
    PORT(
         reset : IN  std_logic;
         clk : IN  std_logic;
         read : IN  std_logic;
         write : IN  std_logic;
         din : IN  std_logic_vector(7 downto 0);
         dout : OUT  std_logic_vector(7 downto 0);
         busy : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';
   signal read : std_logic := '0';
   signal write : std_logic := '0';
   signal din : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal dout : std_logic_vector(7 downto 0);
   signal busy : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: flashtb PORT MAP (
          reset => reset,
          clk => clk,
          read => read,
          write => write,
          din => din,
          dout => dout,
          busy => busy
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100ms.
		reset <= '1';
      wait for 100ns;	
		reset <= '0';
      wait for clk_period*10;
      -- insert stimulus here
		write <= '1';
		din <= x"ff";
		wait until busy = '0';
		write <= '0';
		din <= x"00";
		wait for clk_period*100;

--		wait until busy = '1';
--		wait until busy = '0';
		
		read <= '1';
		wait until busy = '0';
		read <= '0';
		wait for clk_period*100;

      wait for clk_period*13;
		report "done" severity failure;
   end process;

END;
