--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:50:33 04/29/2023
-- Design Name:   
-- Module Name:   /home/user/workspace/raid/spraid/tb_wb_spraid.vhd
-- Project Name:  spraid
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: wb_spraid
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

use work.io_pack.all;

ENTITY tb_wb_spraid IS
END tb_wb_spraid;

ARCHITECTURE behavior OF tb_wb_spraid IS 

COMPONENT MX25V1006F
PORT(
SCLK : IN  std_logic;
CS : IN  std_logic;
SI : INOUT  std_logic;
SO : INOUT  std_logic;
WP : INOUT  std_logic
);
END COMPONENT;

-- Component Declaration for wishbone system controler
COMPONENT syscon
PORT(
RST_sys    : in  std_logic;
CLK_stop   : in  std_logic;
RST_O      : out std_logic;
CLK_O      : out std_logic
);
END COMPONENT;

-- Component Declaration for wishbone master
COMPONENT wb_master
PORT(
RST_I    : IN std_logic;
CLK_I    : IN std_logic;
DAT_I    : IN std_logic_vector(31 downto 0);
ACK_I    : IN std_logic;
ERR_I    : IN std_logic;
RTY_I    : IN std_logic;
SEL_O    : OUT std_logic_vector(3 downto 0);          
RST_sys  : OUT std_logic;
CLK_stop : OUT std_logic;
ADR_O    : OUT std_logic_vector(31 downto 0);
DAT_O    : OUT std_logic_vector(31 downto 0);
WE_O     : OUT std_logic;
STB_O    : OUT std_logic;
CYC_O    : OUT std_logic;
LOCK_O   : OUT std_logic;
CYCLE_IS : OUT cycle_type
);
END COMPONENT;

-- Component Declaration for the Unit Under Test (UUT)
COMPONENT wb_spraid
PORT(
wb_clk_i : IN  std_logic;
wb_dat_i : IN  std_logic_vector(31 downto 0);
wb_dat_o : OUT  std_logic_vector(31 downto 0);
wb_rst_i : IN  std_logic;
wb_ack_o : OUT  std_logic;
wb_adr_i : IN  std_logic_vector(31 downto 0);
wb_cyc_i : IN  std_logic;
wb_stall_o : OUT  std_logic;
wb_err_o : OUT  std_logic;
wb_rty_o : OUT  std_logic;
wb_stb_i : IN  std_logic;
wb_we_i : IN  std_logic;
spi0_clk : OUT  std_logic;
spi0_cs : OUT  std_logic;
spi0_mosi : OUT  std_logic;
spi0_miso : IN  std_logic;
spi1_clk : OUT  std_logic;
spi1_cs : OUT  std_logic;
spi1_mosi : OUT  std_logic;
spi1_miso : IN  std_logic;
spi2_clk : OUT  std_logic;
spi2_cs : OUT  std_logic;
spi2_mosi : OUT  std_logic;
spi2_miso : IN  std_logic;
spi3_clk : OUT  std_logic;
spi3_cs : OUT  std_logic;
spi3_mosi : OUT  std_logic;
spi3_miso : IN  std_logic
);
END COMPONENT;

--Inputs
SIGNAL RST_I :  std_logic := '0';
SIGNAL CLK_I :  std_logic := '0';
SIGNAL ACK_I :  std_logic := '0';
SIGNAL ERR_I :  std_logic := '0';
SIGNAL RTY_I :  std_logic := '0';
SIGNAL DAT_I :  std_logic_vector(31 downto 0) := (others=>'0');

--Outputs
SIGNAL RST_sys  :  std_logic;
SIGNAL CLK_stop :  std_logic;
SIGNAL ADR_O    :  std_logic_vector(31 downto 0);
SIGNAL DAT_O    :  std_logic_vector(31 downto 0);
SIGNAL WE_O     :  std_logic;
SIGNAL STB_O    :  std_logic;
SIGNAL CYC_O    :  std_logic;
SIGNAL LOCK_O   :  std_logic;
SIGNAL SEL_O    :  std_logic_vector(3 downto 0);
SIGNAL CYCLE_IS : cycle_type;

--Inputs
signal wb_clk_i : std_logic := '0';
signal wb_dat_i : std_logic_vector(31 downto 0) := (others => '0');
signal wb_rst_i : std_logic := '0';
signal wb_adr_i : std_logic_vector(31 downto 0) := (others => '0');
signal wb_cyc_i : std_logic := '0';
signal wb_stb_i : std_logic := '0';
signal wb_we_i : std_logic := '0';
signal spi0_miso : std_logic := '0';
signal spi1_miso : std_logic := '0';
signal spi2_miso : std_logic := '0';
signal spi3_miso : std_logic := '0';

--Outputs
signal wb_dat_o : std_logic_vector(31 downto 0);
signal wb_ack_o : std_logic;
signal wb_stall_o : std_logic;
signal wb_err_o : std_logic;
signal wb_rty_o : std_logic;
signal spi0_clk : std_logic;
signal spi0_cs : std_logic;
signal spi0_mosi : std_logic;
signal spi1_clk : std_logic;
signal spi1_cs : std_logic;
signal spi1_mosi : std_logic;
signal spi2_clk : std_logic;
signal spi2_cs : std_logic;
signal spi2_mosi : std_logic;
signal spi3_clk : std_logic;
signal spi3_cs : std_logic;
signal spi3_mosi : std_logic;

signal mem_wp : std_logic := '1';

BEGIN

-- Instantiate the system controler
sys_con: syscon PORT MAP(
RST_sys  => RST_sys,
CLK_stop => CLK_stop,
RST_O    => RST_I,
CLK_O    => CLK_I
);

-- Instantiate the wishbone master
wb_m1: wb_master PORT MAP(
RST_sys  => RST_sys,
CLK_stop => CLK_stop,
RST_I    => RST_I,
CLK_I    => CLK_I,
ADR_O    => ADR_O,
DAT_I    => DAT_I,
DAT_O    => DAT_O,
WE_O     => WE_O,
STB_O    => STB_O,
CYC_O    => CYC_O,
ACK_I    => ACK_I,
ERR_I    => ERR_I,
RTY_I    => RTY_I,
LOCK_O   => LOCK_O,
SEL_O    => SEL_O,
CYCLE_IS => CYCLE_IS
);

wb_clk_i <= CLK_I;
wb_rst_i <= RST_I;
wb_dat_i <= DAT_O;
DAT_I <= wb_dat_o;
wb_adr_i <= ADR_O;
ACK_I <= wb_ack_o;
wb_cyc_i <= CYC_O;
ERR_I <= wb_err_o;
RTY_I <= wb_rty_o;
wb_stb_i <= STB_O;
wb_we_i <= WE_O;

-- Instantiate the Unit Under Test (UUT)
uut: wb_spraid PORT MAP (
wb_clk_i => wb_clk_i,
wb_rst_i => wb_rst_i,
wb_dat_i => wb_dat_i,
wb_dat_o => wb_dat_o,
wb_adr_i => wb_adr_i,
wb_ack_o => wb_ack_o,
wb_cyc_i => wb_cyc_i,
wb_stall_o => wb_stall_o,
wb_err_o => wb_err_o,
wb_rty_o => wb_rty_o,
wb_stb_i => wb_stb_i,
wb_we_i => wb_we_i,

spi0_clk => spi0_clk,
spi0_cs => spi0_cs,
spi0_mosi => spi0_mosi,
spi0_miso => spi0_miso,

spi1_clk => spi1_clk,
spi1_cs => spi1_cs,
spi1_mosi => spi1_mosi,
spi1_miso => spi1_miso,

spi2_clk => spi2_clk,
spi2_cs => spi2_cs,
spi2_mosi => spi2_mosi,
spi2_miso => spi2_miso,

spi3_clk => spi3_clk,
spi3_cs => spi3_cs,
spi3_mosi => spi3_mosi,
spi3_miso => spi3_miso
);

mem1: MX25V1006F PORT MAP (
SCLK => spi0_clk,
CS => spi0_cs,
SI => spi0_mosi,
SO => spi0_miso,
WP => mem_wp
);

mem2: MX25V1006F PORT MAP (
SCLK => spi1_clk,
CS => spi1_cs,
SI => spi1_mosi,
SO => spi1_miso,
WP => mem_wp
);

mem3: MX25V1006F PORT MAP (
SCLK => spi2_clk,
CS => spi2_cs,
SI => spi2_mosi,
SO => spi2_miso,
WP => mem_wp
);

mem4: MX25V1006F PORT MAP (
SCLK => spi3_clk,
CS => spi3_cs,
SI => spi3_mosi,
SO => spi3_miso,
WP => mem_wp
);

END;
