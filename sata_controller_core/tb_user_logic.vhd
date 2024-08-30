--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:27:42 04/13/2023
-- Design Name:   
-- Module Name:   /home/user/workspace/sata_controller_core/tb_user_logic.vhd
-- Project Name:  sata_controller_core
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: user_logic
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

ENTITY tb_user_logic IS
END tb_user_logic;

ARCHITECTURE behavior OF tb_user_logic IS 

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
	
-- Component Declaration for the Unit Under Test (UUT)

COMPONENT user_logic
generic (
    CHIPSCOPE                      : boolean := false;
    DATA_WIDTH                     : natural := 32;
    C_SLV_DWIDTH                   : integer := 32;
    C_NUM_REG                      : integer := 8
);
PORT(
user_logic_ila_control : IN  std_logic_vector(35 downto 0);
cmd_layer_ila_control : IN  std_logic_vector(35 downto 0);
sata_rx_frame_ila_control : IN  std_logic_vector(35 downto 0);
sata_tx_frame_ila_control : IN  std_logic_vector(35 downto 0);
sata_phy_ila_control : IN  std_logic_vector(35 downto 0);
oob_control_ila_control : IN  std_logic_vector(35 downto 0);
scrambler_ila_control : IN  std_logic_vector(35 downto 0);
descrambler_ila_control : IN  std_logic_vector(35 downto 0);
TXP0_OUT : OUT  std_logic;
TXN0_OUT : OUT  std_logic;
RXP0_IN : IN  std_logic;
RXN0_IN : IN  std_logic;
TILE0_PLLLKDET_OUT_N : OUT  std_logic;
DCMLOCKED_OUT : OUT  std_logic;
LINKUP_led : OUT  std_logic;
GEN2_led : OUT  std_logic;
RESET : IN  std_logic;
CLKIN_150 : IN  std_logic;
SATA_CORE_DOUT : OUT  std_logic_vector(0 to 31);
SATA_CORE_DOUT_WE : OUT  std_logic;
SATA_CORE_CLK_OUT : OUT  std_logic;
SATA_CORE_DIN : IN  std_logic_vector(0 to 31);
SATA_CORE_DIN_WE : IN  std_logic;
SATA_CORE_FULL : OUT  std_logic;
NPI_CORE_REQ_TYPE : OUT  std_logic_vector(0 to 1);
NPI_CORE_NEW_CMD : OUT  std_logic;
NPI_CORE_NUM_RD_BYTES : OUT  std_logic_vector(0 to 31);
NPI_CORE_NUM_WR_BYTES : OUT  std_logic_vector(0 to 31);
NPI_CORE_INIT_WR_ADDR : OUT  std_logic_vector(0 to 31);
NPI_CORE_INIT_RD_ADDR : OUT  std_logic_vector(0 to 31);
NPI_CORE_READY_FOR_CMD : IN  std_logic;
Bus2IP_Clk : IN  std_logic;
Bus2IP_Reset : IN  std_logic;
Bus2IP_Data : IN  std_logic_vector(0 to 31);
Bus2IP_BE : IN  std_logic_vector(0 to 3);
Bus2IP_RdCE : IN  std_logic_vector(0 to 7);
Bus2IP_WrCE : IN  std_logic_vector(0 to 7);
IP2Bus_Data : OUT  std_logic_vector(0 to 31);
IP2Bus_RdAck : OUT  std_logic;
IP2Bus_WrAck : OUT  std_logic;
IP2Bus_Error : OUT  std_logic
);
END COMPONENT;


--Inputs
signal user_logic_ila_control : std_logic_vector(35 downto 0) := (others => '0');
signal cmd_layer_ila_control : std_logic_vector(35 downto 0) := (others => '0');
signal sata_rx_frame_ila_control : std_logic_vector(35 downto 0) := (others => '0');
signal sata_tx_frame_ila_control : std_logic_vector(35 downto 0) := (others => '0');
signal sata_phy_ila_control : std_logic_vector(35 downto 0) := (others => '0');
signal oob_control_ila_control : std_logic_vector(35 downto 0) := (others => '0');
signal scrambler_ila_control : std_logic_vector(35 downto 0) := (others => '0');
signal descrambler_ila_control : std_logic_vector(35 downto 0) := (others => '0');
signal RXP0_IN : std_logic := '0';
signal RXN0_IN : std_logic := '0';
signal CLKIN_150 : std_logic := '0';
signal SATA_CORE_DIN : std_logic_vector(0 to 31) := (others => '0');
signal SATA_CORE_DIN_WE : std_logic := '0';
signal NPI_CORE_READY_FOR_CMD : std_logic := '0';
signal Bus2IP_Clk : std_logic := '0';
signal Bus2IP_Reset : std_logic := '0';
signal Bus2IP_Data : std_logic_vector(0 to 31) := (others => '0');
signal Bus2IP_BE : std_logic_vector(0 to 3) := (others => '0');
signal Bus2IP_RdCE : std_logic_vector(0 to 7) := (others => '0');
signal Bus2IP_WrCE : std_logic_vector(0 to 7) := (others => '0');

--Outputs
signal TXP0_OUT : std_logic;
signal TXN0_OUT : std_logic;
signal TILE0_PLLLKDET_OUT_N : std_logic;
signal DCMLOCKED_OUT : std_logic;
signal LINKUP_led : std_logic;
signal GEN2_led : std_logic;
signal SATA_CORE_DOUT : std_logic_vector(0 to 31);
signal SATA_CORE_DOUT_WE : std_logic;
signal SATA_CORE_CLK_OUT : std_logic;
signal NPI_CORE_REQ_TYPE : std_logic_vector(0 to 1);
signal NPI_CORE_NEW_CMD : std_logic;
signal NPI_CORE_NUM_RD_BYTES : std_logic_vector(0 to 31);
signal NPI_CORE_NUM_WR_BYTES : std_logic_vector(0 to 31);
signal NPI_CORE_INIT_WR_ADDR : std_logic_vector(0 to 31);
signal NPI_CORE_INIT_RD_ADDR : std_logic_vector(0 to 31);
signal IP2Bus_Data : std_logic_vector(0 to 31);
signal IP2Bus_RdAck : std_logic;
signal IP2Bus_WrAck : std_logic;
signal IP2Bus_Error : std_logic;

-- Clock period definitions
constant CLKIN_150_period : time := 7.5 ns;
constant Bus2IP_Clk_period : time := 10 ns;

BEGIN

uut1: npi_core PORT MAP (
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
	
-- Instantiate the Unit Under Test (UUT)
uut: user_logic PORT MAP (
user_logic_ila_control => user_logic_ila_control,
cmd_layer_ila_control => cmd_layer_ila_control,
sata_rx_frame_ila_control => sata_rx_frame_ila_control,
sata_tx_frame_ila_control => sata_tx_frame_ila_control,
sata_phy_ila_control => sata_phy_ila_control,
oob_control_ila_control => oob_control_ila_control,
scrambler_ila_control => scrambler_ila_control,
descrambler_ila_control => descrambler_ila_control,
TXP0_OUT => TXP0_OUT,
TXN0_OUT => TXN0_OUT,
RXP0_IN => RXP0_IN,
RXN0_IN => RXN0_IN,
TILE0_PLLLKDET_OUT_N => TILE0_PLLLKDET_OUT_N,
DCMLOCKED_OUT => DCMLOCKED_OUT,
LINKUP_led => LINKUP_led,
GEN2_led => GEN2_led,
RESET => RESET,
CLKIN_150 => CLKIN_150,
SATA_CORE_DOUT => SATA_CORE_DOUT,
SATA_CORE_DOUT_WE => SATA_CORE_DOUT_WE,
SATA_CORE_CLK_OUT => SATA_CORE_CLK_OUT,
SATA_CORE_DIN => SATA_CORE_DIN,
SATA_CORE_DIN_WE => SATA_CORE_DIN_WE,
SATA_CORE_FULL => SATA_CORE_FULL,
NPI_CORE_REQ_TYPE => req_type,
NPI_CORE_NEW_CMD => new_cmd,
NPI_CORE_NUM_RD_BYTES => num_read_bytes_in,
NPI_CORE_NUM_WR_BYTES => num_write_bytes_in,
NPI_CORE_INIT_WR_ADDR => NPI_init_wr_addr_in,
NPI_CORE_INIT_RD_ADDR => NPI_init_rd_addr_in,
NPI_CORE_READY_FOR_CMD => NPI_ready_for_cmd,
Bus2IP_Clk => Bus2IP_Clk,
Bus2IP_Reset => Bus2IP_Reset,
Bus2IP_Data => Bus2IP_Data,
Bus2IP_BE => Bus2IP_BE,
Bus2IP_RdCE => Bus2IP_RdCE,
Bus2IP_WrCE => Bus2IP_WrCE,
IP2Bus_Data => IP2Bus_Data,
IP2Bus_RdAck => IP2Bus_RdAck,
IP2Bus_WrAck => IP2Bus_WrAck,
IP2Bus_Error => IP2Bus_Error
);

-- Clock process definitions
CLKIN_150_process :process
begin
CLKIN_150 <= '0';
wait for CLKIN_150_period/2;
CLKIN_150 <= '1';
wait for CLKIN_150_period/2;
end process;

Bus2IP_Clk_process :process
begin
Bus2IP_Clk <= '0';
wait for Bus2IP_Clk_period/2;
Bus2IP_Clk <= '1';
wait for Bus2IP_Clk_period/2;
end process;


-- Stimulus process
stim_proc: process
begin		
-- hold reset state for 100 ns.
RESET <= '1';
Bus2IP_Reset <= '1';
wait for 100 ns;	
RESET <= '0';
Bus2IP_Reset <= '0';
wait for CLKIN_150_period*10;
-- insert stimulus here 

Bus2IP_Data <= (31 => '0',others => '1');
Bus2IP_BE <= (others => '1');

Bus2IP_RdCE <= (0 => '1',others => '0');
wait for CLKIN_150_period*10;
Bus2IP_RdCE <= (1 => '1',others => '0');
wait for CLKIN_150_period*10;
Bus2IP_RdCE <= (2 => '1',others => '0');
wait for CLKIN_150_period*10;
Bus2IP_RdCE <= (3 => '1',others => '0');
wait for CLKIN_150_period*10;
Bus2IP_RdCE <= (4 => '1',others => '0');
wait for CLKIN_150_period*10;
Bus2IP_RdCE <= (5 => '1',others => '0');
wait for CLKIN_150_period*10;
Bus2IP_RdCE <= (6 => '1',others => '0');
wait for CLKIN_150_period*10;
Bus2IP_RdCE <= (7 => '1',others => '0');
wait for CLKIN_150_period*10;

Bus2IP_WrCE <= (0 => '1',others => '0');
wait for CLKIN_150_period*10;
Bus2IP_WrCE <= (1 => '1',others => '0');
wait for CLKIN_150_period*10;
Bus2IP_WrCE <= (2 => '1',others => '0');
wait for CLKIN_150_period*10;
Bus2IP_WrCE <= (3 => '1',others => '0');
wait for CLKIN_150_period*10;
Bus2IP_WrCE <= (4 => '1',others => '0');
wait for CLKIN_150_period*10;
Bus2IP_WrCE <= (5 => '1',others => '0');
wait for CLKIN_150_period*10;
Bus2IP_WrCE <= (6 => '1',others => '0');
wait for CLKIN_150_period*10;
Bus2IP_WrCE <= (7 => '1',others => '0');
wait for CLKIN_150_period*10;

wait for 10 ms;

report "done" severity failure;

end process;

END;
