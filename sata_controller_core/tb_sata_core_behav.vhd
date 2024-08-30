--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:14:31 04/13/2023
-- Design Name:   
-- Module Name:   /home/user/workspace/sata_controller_core/tb_sata_core_behav.vhd
-- Project Name:  sata_controller_core
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sata_core
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

ENTITY tb_sata_core_behav IS
END tb_sata_core_behav;

ARCHITECTURE behavior OF tb_sata_core_behav IS 

-- Component Declaration for the Unit Under Test (UUT)

COMPONENT sata_core
PORT(
sata_rx_frame_ila_control : IN  std_logic_vector(35 downto 0);
sata_tx_frame_ila_control : IN  std_logic_vector(35 downto 0);
sata_phy_ila_control : IN  std_logic_vector(35 downto 0);
oob_control_ila_control : IN  std_logic_vector(35 downto 0);
cmd_layer_ila_control : IN  std_logic_vector(35 downto 0);
scrambler_ila_control : IN  std_logic_vector(35 downto 0);
descrambler_ila_control : IN  std_logic_vector(35 downto 0);
ready_for_cmd : OUT  std_logic;
new_cmd : IN  std_logic;
cmd_type : IN  std_logic_vector(1 downto 0);
sector_count : IN  std_logic_vector(31 downto 0);
sector_addr : IN  std_logic_vector(31 downto 0);
sata_din : IN  std_logic_vector(31 downto 0);
sata_din_we : IN  std_logic;
sata_core_full : OUT  std_logic;
sata_dout : OUT  std_logic_vector(31 downto 0);
sata_dout_re : IN  std_logic;
sata_core_empty : OUT  std_logic;
SATA_USER_DATA_CLK_IN : IN  std_logic;
SATA_USER_DATA_CLK_OUT : OUT  std_logic;
sata_timer : OUT  std_logic_vector(31 downto 0);
CLKIN_150 : IN  std_logic;
reset : IN  std_logic;
LINKUP : OUT  std_logic;
TXP0_OUT : OUT  std_logic;
TXN0_OUT : OUT  std_logic;
RXP0_IN : IN  std_logic;
RXN0_IN : IN  std_logic;
PLLLKDET_OUT_N : OUT  std_logic;
DCMLOCKED_OUT : OUT  std_logic
);
END COMPONENT;


--Inputs
signal sata_rx_frame_ila_control : std_logic_vector(35 downto 0) := (others => '0');
signal sata_tx_frame_ila_control : std_logic_vector(35 downto 0) := (others => '0');
signal sata_phy_ila_control : std_logic_vector(35 downto 0) := (others => '0');
signal oob_control_ila_control : std_logic_vector(35 downto 0) := (others => '0');
signal cmd_layer_ila_control : std_logic_vector(35 downto 0) := (others => '0');
signal scrambler_ila_control : std_logic_vector(35 downto 0) := (others => '0');
signal descrambler_ila_control : std_logic_vector(35 downto 0) := (others => '0');
signal new_cmd : std_logic := '0';
signal cmd_type : std_logic_vector(1 downto 0) := (others => '0');
signal sector_count : std_logic_vector(31 downto 0) := (others => '0');
signal sector_addr : std_logic_vector(31 downto 0) := (others => '0');
signal sata_din : std_logic_vector(31 downto 0) := (others => '0');
signal sata_din_we : std_logic := '0';
signal sata_dout_re : std_logic := '0';
signal SATA_USER_DATA_CLK_IN : std_logic := '0';
signal CLKIN_150 : std_logic := '0';
signal reset : std_logic := '0';
signal RXP0_IN : std_logic := '0';
signal RXN0_IN : std_logic := '0';

--Outputs
signal ready_for_cmd : std_logic;
signal sata_core_full : std_logic;
signal sata_dout : std_logic_vector(31 downto 0);
signal sata_core_empty : std_logic;
signal SATA_USER_DATA_CLK_OUT : std_logic;
signal sata_timer : std_logic_vector(31 downto 0);
signal LINKUP : std_logic;
signal TXP0_OUT : std_logic;
signal TXN0_OUT : std_logic;
signal PLLLKDET_OUT_N : std_logic;
signal DCMLOCKED_OUT : std_logic;

-- Clock period definitions
constant CLKIN_150_period : time := 10 ns;

BEGIN

-- Instantiate the Unit Under Test (UUT)
uut: sata_core PORT MAP (
sata_rx_frame_ila_control => sata_rx_frame_ila_control,
sata_tx_frame_ila_control => sata_tx_frame_ila_control,
sata_phy_ila_control => sata_phy_ila_control,
oob_control_ila_control => oob_control_ila_control,
cmd_layer_ila_control => cmd_layer_ila_control,
scrambler_ila_control => scrambler_ila_control,
descrambler_ila_control => descrambler_ila_control,
ready_for_cmd => ready_for_cmd,
new_cmd => new_cmd,
cmd_type => cmd_type,
sector_count => sector_count,
sector_addr => sector_addr,
sata_din => sata_din,
sata_din_we => sata_din_we,
sata_core_full => sata_core_full,
sata_dout => sata_dout,
sata_dout_re => sata_dout_re,
sata_core_empty => sata_core_empty,
SATA_USER_DATA_CLK_IN => SATA_USER_DATA_CLK_IN,
SATA_USER_DATA_CLK_OUT => SATA_USER_DATA_CLK_OUT,
sata_timer => sata_timer,
CLKIN_150 => CLKIN_150,
reset => reset,
LINKUP => LINKUP,
TXP0_OUT => TXP0_OUT,
TXN0_OUT => TXN0_OUT,
RXP0_IN => RXP0_IN,
RXN0_IN => RXN0_IN,
PLLLKDET_OUT_N => PLLLKDET_OUT_N,
DCMLOCKED_OUT => DCMLOCKED_OUT
);

-- Clock process definitions
CLKIN_150_process :process
begin
CLKIN_150 <= '0';
wait for CLKIN_150_period/2;
CLKIN_150 <= '1';
wait for CLKIN_150_period/2;
end process;


-- Stimulus process
stim_proc: process
begin		
-- hold reset state for 100 ns.
wait for 100 ns;	

wait for CLKIN_150_period*10;

-- insert stimulus here 

wait;
end process;

END;
