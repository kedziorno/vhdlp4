--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:12:50 04/25/2023
-- Design Name:   
-- Module Name:   /home/user/workspace/spraid/tb_ft.vhd
-- Project Name:  spraid
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: flash_test
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
 
ENTITY tb_ft IS
END tb_ft;
 
ARCHITECTURE behavior OF tb_ft IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT flash_test
    PORT(
         reset : IN  std_logic;
         clk : IN  std_logic;
         busy : OUT  std_logic;
         BTN1 : IN  std_logic;
         BTN2 : IN  std_logic;
         LED1 : OUT  std_logic;
         LED2 : OUT  std_logic;
         LED3 : OUT  std_logic;
         spi_clk : OUT  std_logic;
         spi_cs : OUT  std_logic;
         spi_mosi : OUT  std_logic;
         spi_miso : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';
   signal BTN1 : std_logic := '0';
   signal BTN2 : std_logic := '0';
   signal spi_miso : std_logic := '0';

 	--Outputs
   signal busy : std_logic;
   signal LED1 : std_logic;
   signal LED2 : std_logic;
   signal LED3 : std_logic;
   signal spi_clk : std_logic;
   signal spi_cs : std_logic;
   signal spi_mosi : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10ns;
   constant spi_clk_period : time := 10ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: flash_test PORT MAP (
          reset => reset,
          clk => clk,
          busy => busy,
          BTN1 => BTN1,
          BTN2 => BTN2,
          LED1 => LED1,
          LED2 => LED2,
          LED3 => LED3,
          spi_clk => spi_clk,
          spi_cs => spi_cs,
          spi_mosi => spi_mosi,
          spi_miso => spi_miso
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
--   spi_clk_process :process
--   begin
--		spi_clk <= '0';
--		wait for spi_clk_period/2;
--		spi_clk <= '1';
--		wait for spi_clk_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100ms.
		reset <= '0';
      wait for 100ns;	
		reset <= '1';
      wait for clk_period*50;
      -- insert stimulus here 
		
--		wait until busy = '0';
		
		btn1 <= '1';
		wait for clk_period*10;
		btn1 <= '0';
		wait for clk_period*10;

--		wait until busy = '0';

		btn2 <= '1';
		wait for clk_period*10;
		btn2 <= '0';
		wait for clk_period*10;

--		wait until busy = '0';

		wait for clk_period*20;
      report "done" severity failure;
   end process;

END;
