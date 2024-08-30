--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:00:43 04/13/2023
-- Design Name:   
-- Module Name:   /home/user/workspace/sata_controller_core/tb_npi_core.vhd
-- Project Name:  sata_controller_core
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: npi_core
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
 
ENTITY tb_npi_core IS
END tb_npi_core;
 
ARCHITECTURE behavior OF tb_npi_core IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT npi_core
    PORT(
         npi_if_ila_control : IN  std_logic_vector(35 downto 0);
         npi_if_tx_ila_control : IN  std_logic_vector(35 downto 0);
         npi_ila_control : IN  std_logic_vector(35 downto 0);
         MPMC_Clk : IN  std_logic;
         user_clk : IN  std_logic;
         reset : IN  std_logic;
         NPI_CORE_DIN : IN  std_logic_vector(31 downto 0);
         NPI_CORE_WE : IN  std_logic;
         NPI_CORE_FULL : OUT  std_logic;
         NPI_CORE_DOUT : OUT  std_logic_vector(31 downto 0);
         NPI_CORE_DOUT_WE : OUT  std_logic;
         SATA_CORE_FULL : IN  std_logic;
         req_type : IN  std_logic_vector(1 downto 0);
         new_cmd : IN  std_logic;
         num_read_bytes_in : IN  std_logic_vector(31 downto 0);
         num_write_bytes_in : IN  std_logic_vector(31 downto 0);
         NPI_init_wr_addr_in : IN  std_logic_vector(31 downto 0);
         NPI_init_rd_addr_in : IN  std_logic_vector(31 downto 0);
         NPI_ready_for_cmd : OUT  std_logic;
         NPI_AddrAck : IN  std_logic;
         NPI_WrFIFO_AlmostFull : IN  std_logic;
         NPI_RdFIFO_Empty : IN  std_logic;
         NPI_InitDone : IN  std_logic;
         NPI_WrFIFO_Empty : IN  std_logic;
         NPI_RdFIFO_Latency : IN  std_logic_vector(1 downto 0);
         NPI_RdFIFO_RdWdAddr : IN  std_logic_vector(3 downto 0);
         NPI_RdFIFO_Data : IN  std_logic_vector(63 downto 0);
         NPI_AddrReq : OUT  std_logic;
         NPI_RNW : OUT  std_logic;
         NPI_WrFIFO_Push : OUT  std_logic;
         NPI_RdFIFO_Pop : OUT  std_logic;
         NPI_RdModWr : OUT  std_logic;
         NPI_WrFIFO_Flush : OUT  std_logic;
         NPI_RdFIFO_Flush : OUT  std_logic;
         NPI_Size : OUT  std_logic_vector(3 downto 0);
         NPI_WrFIFO_BE : OUT  std_logic_vector(7 downto 0);
         NPI_Addr : OUT  std_logic_vector(31 downto 0);
         NPI_WrFIFO_Data : OUT  std_logic_vector(63 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal npi_if_ila_control : std_logic_vector(35 downto 0) := (others => '0');
   signal npi_if_tx_ila_control : std_logic_vector(35 downto 0) := (others => '0');
   signal npi_ila_control : std_logic_vector(35 downto 0) := (others => '0');
   signal MPMC_Clk : std_logic := '0';
   signal user_clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal NPI_CORE_DIN : std_logic_vector(31 downto 0) := (others => '0');
   signal NPI_CORE_WE : std_logic := '0';
   signal SATA_CORE_FULL : std_logic := '0';
   signal req_type : std_logic_vector(1 downto 0) := (others => '0');
   signal new_cmd : std_logic := '0';
   signal num_read_bytes_in : std_logic_vector(31 downto 0) := (others => '0');
   signal num_write_bytes_in : std_logic_vector(31 downto 0) := (others => '0');
   signal NPI_init_wr_addr_in : std_logic_vector(31 downto 0) := (others => '0');
   signal NPI_init_rd_addr_in : std_logic_vector(31 downto 0) := (others => '0');
   signal NPI_AddrAck : std_logic := '0';
   signal NPI_WrFIFO_AlmostFull : std_logic := '0';
   signal NPI_RdFIFO_Empty : std_logic := '0';
   signal NPI_InitDone : std_logic := '0';
   signal NPI_WrFIFO_Empty : std_logic := '0';
   signal NPI_RdFIFO_Latency : std_logic_vector(1 downto 0) := (others => '0');
   signal NPI_RdFIFO_RdWdAddr : std_logic_vector(3 downto 0) := (others => '0');
   signal NPI_RdFIFO_Data : std_logic_vector(63 downto 0) := (others => '0');

 	--Outputs
   signal NPI_CORE_FULL : std_logic;
   signal NPI_CORE_DOUT : std_logic_vector(31 downto 0);
   signal NPI_CORE_DOUT_WE : std_logic;
   signal NPI_ready_for_cmd : std_logic;
   signal NPI_AddrReq : std_logic;
   signal NPI_RNW : std_logic;
   signal NPI_WrFIFO_Push : std_logic;
   signal NPI_RdFIFO_Pop : std_logic;
   signal NPI_RdModWr : std_logic;
   signal NPI_WrFIFO_Flush : std_logic;
   signal NPI_RdFIFO_Flush : std_logic;
   signal NPI_Size : std_logic_vector(3 downto 0);
   signal NPI_WrFIFO_BE : std_logic_vector(7 downto 0);
   signal NPI_Addr : std_logic_vector(31 downto 0);
   signal NPI_WrFIFO_Data : std_logic_vector(63 downto 0);

   -- Clock period definitions
   constant MPMC_Clk_period : time := 10 ns;
   constant user_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: npi_core PORT MAP (
          npi_if_ila_control => npi_if_ila_control,
          npi_if_tx_ila_control => npi_if_tx_ila_control,
          npi_ila_control => npi_ila_control,
          MPMC_Clk => MPMC_Clk,
          user_clk => user_clk,
          reset => reset,
          NPI_CORE_DIN => NPI_CORE_DIN,
          NPI_CORE_WE => NPI_CORE_WE,
          NPI_CORE_FULL => NPI_CORE_FULL,
          NPI_CORE_DOUT => NPI_CORE_DOUT,
          NPI_CORE_DOUT_WE => NPI_CORE_DOUT_WE,
          SATA_CORE_FULL => SATA_CORE_FULL,
          req_type => req_type,
          new_cmd => new_cmd,
          num_read_bytes_in => num_read_bytes_in,
          num_write_bytes_in => num_write_bytes_in,
          NPI_init_wr_addr_in => NPI_init_wr_addr_in,
          NPI_init_rd_addr_in => NPI_init_rd_addr_in,
          NPI_ready_for_cmd => NPI_ready_for_cmd,
          NPI_AddrAck => NPI_AddrAck,
          NPI_WrFIFO_AlmostFull => NPI_WrFIFO_AlmostFull,
          NPI_RdFIFO_Empty => NPI_RdFIFO_Empty,
          NPI_InitDone => NPI_InitDone,
          NPI_WrFIFO_Empty => NPI_WrFIFO_Empty,
          NPI_RdFIFO_Latency => NPI_RdFIFO_Latency,
          NPI_RdFIFO_RdWdAddr => NPI_RdFIFO_RdWdAddr,
          NPI_RdFIFO_Data => NPI_RdFIFO_Data,
          NPI_AddrReq => NPI_AddrReq,
          NPI_RNW => NPI_RNW,
          NPI_WrFIFO_Push => NPI_WrFIFO_Push,
          NPI_RdFIFO_Pop => NPI_RdFIFO_Pop,
          NPI_RdModWr => NPI_RdModWr,
          NPI_WrFIFO_Flush => NPI_WrFIFO_Flush,
          NPI_RdFIFO_Flush => NPI_RdFIFO_Flush,
          NPI_Size => NPI_Size,
          NPI_WrFIFO_BE => NPI_WrFIFO_BE,
          NPI_Addr => NPI_Addr,
          NPI_WrFIFO_Data => NPI_WrFIFO_Data
        );

   -- Clock process definitions
   MPMC_Clk_process :process
   begin
		MPMC_Clk <= '0';
		wait for MPMC_Clk_period/2;
		MPMC_Clk <= '1';
		wait for MPMC_Clk_period/2;
   end process;
 
   user_clk_process :process
   begin
		user_clk <= '0';
		wait for user_clk_period/2;
		user_clk <= '1';
		wait for user_clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for MPMC_Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
