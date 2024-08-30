-- Generated by PERL program wishbone.pl. Do not edit this file.
--
-- For defines see wishbone.defines
--
-- Generated Fri Apr 30 16:20:22 2004
--
-- Wishbone masters:
--   or32_i
--   or32_d
--
-- Wishbone slaves:
--   uart
--     baseadr 0x90000000 - size 0x00100000
--   bootRAM
--     baseadr 0x00000000 - size 0x00100000
-----------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

package intercon_package is

type or32_i_wbm_i_type is record
  dat_i : std_logic_vector(31 downto 0);
  err_i : std_logic;
  rty_i : std_logic;
  ack_i : std_logic;
end record;
type or32_i_wbm_o_type is record
  sel_o : std_logic_vector(3 downto 0);
  adr_o : std_logic_vector(31 downto 0);
  bte_o : std_logic_vector(1 downto 0);
  cti_o : std_logic_vector(2 downto 0);
  cyc_o : std_logic;
  stb_o : std_logic;
end record;

type or32_d_wbm_i_type is record
  dat_i : std_logic_vector(31 downto 0);
  err_i : std_logic;
  rty_i : std_logic;
  ack_i : std_logic;
end record;
type or32_d_wbm_o_type is record
  dat_o : std_logic_vector(31 downto 0);
  we_o  : std_logic;
  sel_o : std_logic_vector(3 downto 0);
  adr_o : std_logic_vector(31 downto 0);
  bte_o : std_logic_vector(1 downto 0);
  cti_o : std_logic_vector(2 downto 0);
  cyc_o : std_logic;
  stb_o : std_logic;
end record;

type uart_wbs_i_type is record
  dat_i : std_logic_vector(31 downto 0);
  we_i  : std_logic;
  sel_i : std_logic_vector(3 downto 0);
  adr_i : std_logic_vector(4 downto 0);
  cyc_i : std_logic;
  stb_i : std_logic;
end record;
type uart_wbs_o_type is record
  dat_o : std_logic_vector(31 downto 0);
  ack_o : std_logic;
end record;
type bootRAM_wbs_i_type is record
  dat_i : std_logic_vector(31 downto 0);
  we_i  : std_logic;
  sel_i : std_logic_vector(3 downto 0);
  adr_i : std_logic_vector(11 downto 2);
  cyc_i : std_logic;
  stb_i : std_logic;
end record;
type bootRAM_wbs_o_type is record
  dat_o : std_logic_vector(31 downto 0);
  ack_o : std_logic;
end record;

function "and" (
  l : std_logic_vector;
  r : std_logic)
return std_logic_vector;
end intercon_package;
package body intercon_package is

function "and" (
  l : std_logic_vector;
  r : std_logic)
return std_logic_vector is
  variable result : std_logic_vector(l'range);
begin  -- "and"
  for i in l'range loop
  result(i) := l(i) and r;
end loop;  -- i
return result;
end "and";
end intercon_package;
library IEEE;
use IEEE.std_logic_1164.all;

entity trafic_supervision is

  generic (
    priority     : integer;
    tot_priority : integer);

  port (
    bg           : in  std_logic;       -- bus grant
    ce           : in  std_logic;       -- clock enable
    trafic_limit : out std_logic;
    clk          : in  std_logic;
    reset        : in  std_logic);

end trafic_supervision;

architecture rtl of trafic_supervision is

  signal shreg : std_logic_vector(tot_priority-1 downto 0);
  signal cntr : integer range 0 to tot_priority;

begin  -- rtl

  -- purpose: holds information of usage of latest cycles
  -- type   : sequential
  -- inputs : clk, reset, ce, bg
  -- outputs: shreg('left)
  sh_reg: process (clk,reset)
  begin  -- process shreg
    if reset = '1' then                 -- asynchronous reset (active hi)
      shreg <= (others=>'0');
    elsif clk'event and clk = '1' then  -- rising clock edge
      if ce='1' then
        shreg <= shreg(tot_priority-2 downto 0) & bg;
      end if;
    end if;
  end process sh_reg;

  -- purpose: keeps track of used cycles
  -- type   : sequential
  -- inputs : clk, reset, shreg('left), bg, ce
  -- outputs: trafic_limit
  counter: process (clk, reset)
  begin  -- process counter
    if reset = '1' then                 -- asynchronous reset (active hi)
      cntr <= 0;
      trafic_limit <= '0';
    elsif clk'event and clk = '1' then  -- rising clock edge
      if ce='1' then
        if bg='1' and shreg(tot_priority-1)='0' then
          cntr <= cntr + 1;
          if cntr=priority-1 then
            trafic_limit <= '1';
          end if;
        elsif bg='0' and shreg(tot_priority-1)='1' then
          cntr <= cntr - 1;
          if cntr=priority then
            trafic_limit <= '0';
          end if;
        end if;
      end if;
    end if;
  end process counter;

end rtl;

library IEEE;
use IEEE.std_logic_1164.all;
use work.intercon_package.all;

entity intercon is
  port (
  -- wishbone master port(s)
  -- or32_i
  or32_i_wbm_i : out or32_i_wbm_i_type;
  or32_i_wbm_o : in  or32_i_wbm_o_type;
  -- or32_d
  or32_d_wbm_i : out or32_d_wbm_i_type;
  or32_d_wbm_o : in  or32_d_wbm_o_type;
  -- wishbone slave port(s)
  -- uart
  uart_wbs_i : out uart_wbs_i_type;
  uart_wbs_o : in uart_wbs_o_type;
  -- bootRAM
  bootRAM_wbs_i : out bootRAM_wbs_i_type;
  bootRAM_wbs_o : in bootRAM_wbs_o_type;
  -- clock and reset
  clk   : in std_logic;
  reset : in std_logic);
end intercon;
architecture rtl of intercon is
  signal or32_i_dat_i : std_logic_vector(31 downto 0);
  signal or32_i_ack_i : std_logic;
  signal or32_i_err_i : std_logic;
  signal or32_i_rty_i : std_logic;
  signal or32_i_sel_o : std_logic_vector(3 downto 0);
  signal or32_i_adr_o : std_logic_vector(31 downto 0);
  signal or32_i_bte_o : std_logic_vector(1 downto 0);
  signal or32_i_cti_o : std_logic_vector(2 downto 0);
  signal or32_i_cyc_o : std_logic;
  signal or32_i_stb_o : std_logic;
  signal or32_d_dat_i : std_logic_vector(31 downto 0);
  signal or32_d_ack_i : std_logic;
  signal or32_d_err_i : std_logic;
  signal or32_d_rty_i : std_logic;
  signal or32_d_dat_o : std_logic_vector(31 downto 0);
  signal or32_d_we_o  : std_logic;
  signal or32_d_sel_o : std_logic_vector(3 downto 0);
  signal or32_d_adr_o : std_logic_vector(31 downto 0);
  signal or32_d_bte_o : std_logic_vector(1 downto 0);
  signal or32_d_cti_o : std_logic_vector(2 downto 0);
  signal or32_d_cyc_o : std_logic;
  signal or32_d_stb_o : std_logic;
  signal uart_dat_o : std_logic_vector(31 downto 0);
  signal uart_ack_o : std_logic;
  signal uart_dat_i : std_logic_vector(31 downto 0);
  signal uart_we_i  : std_logic;
  signal uart_sel_i : std_logic_vector(3 downto 0);
  signal uart_adr_i : std_logic_vector(4 downto 0);
  signal uart_cyc_i : std_logic;
  signal uart_stb_i : std_logic;
  signal bootRAM_dat_o : std_logic_vector(31 downto 0);
  signal bootRAM_ack_o : std_logic;
  signal bootRAM_dat_i : std_logic_vector(31 downto 0);
  signal bootRAM_we_i  : std_logic;
  signal bootRAM_sel_i : std_logic_vector(3 downto 0);
  signal bootRAM_adr_i : std_logic_vector(11 downto 2);
  signal bootRAM_cyc_i : std_logic;
  signal bootRAM_stb_i : std_logic;
  signal or32_i_bootRAM_ss : std_logic; -- slave select
  signal or32_i_bootRAM_bg : std_logic; -- bus grant
  signal or32_d_uart_ss : std_logic; -- slave select
  signal or32_d_uart_bg : std_logic; -- bus grant
  signal or32_d_bootRAM_ss : std_logic; -- slave select
  signal or32_d_bootRAM_bg : std_logic; -- bus grant
begin  -- rtl
or32_d_uart_bg <= or32_d_uart_ss and or32_d_cyc_o;
arbiter_bootRAM : block
  signal or32_i_bg, or32_i_bg_1, or32_i_bg_2, or32_i_bg_q : std_logic;
  signal or32_i_trafic_limit : std_logic;
  signal or32_d_bg, or32_d_bg_1, or32_d_bg_2, or32_d_bg_q : std_logic;
  signal or32_d_trafic_limit : std_logic;
  signal ce, idle, ack : std_logic;
begin
ack <= bootRAM_ack_o;

trafic_supervision_1 : entity work.trafic_supervision
generic map(
  priority => 3,
  tot_priority => 4)
port map(
  bg => or32_i_bootRAM_bg,
  ce => ce,
  trafic_limit => or32_i_trafic_limit,
  clk => clk,
  reset => reset);

trafic_supervision_2 : entity work.trafic_supervision
generic map(
  priority => 1,
  tot_priority => 4)
port map(
  bg => or32_d_bootRAM_bg,
  ce => ce,
  trafic_limit => or32_d_trafic_limit,
  clk => clk,
  reset => reset);

process(clk,reset)
begin
if reset='1' then
  or32_i_bg_q <= '0';
elsif clk'event and clk='1' then
if or32_i_bg_q='0' then
  or32_i_bg_q <= or32_i_bg;
elsif ack='1' and (or32_i_cti_o="000" or or32_i_cti_o="111") then
  or32_i_bg_q <= '0';
end if;
end if;
end process;

process(clk,reset)
begin
if reset='1' then
  or32_d_bg_q <= '0';
elsif clk'event and clk='1' then
if or32_d_bg_q='0' then
  or32_d_bg_q <= or32_d_bg;
elsif ack='1' and (or32_d_cti_o="000" or or32_d_cti_o="111") then
  or32_d_bg_q <= '0';
end if;
end if;
end process;

idle <= '1' when or32_i_bg_q='0' and or32_d_bg_q='0' else '0';
or32_i_bg_1 <= '1' when idle='1' and or32_i_cyc_o='1' and or32_i_bootRAM_ss='1' and or32_i_trafic_limit='0' else '0';
or32_d_bg_1 <= '1' when idle='1' and or32_i_bg_1='0' and or32_d_cyc_o='1' and or32_d_bootRAM_ss='1' and or32_d_trafic_limit='0' else '0';
or32_i_bg_2 <= '1' when idle='1' and or32_d_bg_1='0' and or32_i_cyc_o='1' and or32_i_bootRAM_ss='1' else '0';
or32_d_bg_2 <= '1' when idle='1' and or32_i_bg_2='0' and or32_d_cyc_o='1' and or32_d_bootRAM_ss='1' else '0';
or32_i_bg <= or32_i_bg_q or or32_i_bg_1 or or32_i_bg_2;
or32_d_bg <= or32_d_bg_q or or32_d_bg_1 or or32_d_bg_2;
ce <= (or32_i_cyc_o and or32_i_bootRAM_ss) or (or32_d_cyc_o and or32_d_bootRAM_ss) when idle='1' else '0';
or32_i_bootRAM_bg <= or32_i_bg;
or32_d_bootRAM_bg <= or32_d_bg;
end block arbiter_bootRAM;
decoder:block
begin
or32_i_bootRAM_ss <= '1' when or32_i_adr_o(31 downto 20)="000000000000" else 
'0';
or32_d_uart_ss <= '1' when or32_d_adr_o(31 downto 20)="100100000000" else 
'0';
or32_d_bootRAM_ss <= '1' when or32_d_adr_o(31 downto 20)="000000000000" else 
'0';
uart_adr_i <= or32_d_adr_o(4 downto 0);
bootRAM_adr_i <= (or32_i_adr_o(11 downto 2) and or32_i_bootRAM_bg) or (or32_d_adr_o(11 downto 2) and or32_d_bootRAM_bg);
end block decoder;

-- cyc_i(s)
uart_cyc_i <= (or32_d_cyc_o and or32_d_uart_bg);
bootRAM_cyc_i <= (or32_i_cyc_o and or32_i_bootRAM_bg) or (or32_d_cyc_o and or32_d_bootRAM_bg);
-- stb_i(s)
uart_stb_i <= (or32_d_stb_o and or32_d_uart_bg);
bootRAM_stb_i <= (or32_i_stb_o and or32_i_bootRAM_bg) or (or32_d_stb_o and or32_d_bootRAM_bg);
-- we_i(s)
uart_we_i <= (or32_d_we_o and or32_d_uart_bg);
bootRAM_we_i <= (or32_d_we_o and or32_d_bootRAM_bg);
-- ack_i(s)
or32_i_ack_i <= (bootRAM_ack_o and or32_i_bootRAM_bg);
or32_d_ack_i <= (uart_ack_o and or32_d_uart_bg) or (bootRAM_ack_o and or32_d_bootRAM_bg);
-- rty_i(s)
or32_i_rty_i <= '0';
or32_d_rty_i <= '0';
-- err_i(s)
or32_i_err_i <= '0';
or32_d_err_i <= '0';
-- sel_i(s)
uart_sel_i <= (or32_d_sel_o and or32_d_uart_bg);
bootRAM_sel_i <= (or32_i_sel_o and or32_i_bootRAM_bg) or (or32_d_sel_o and or32_d_bootRAM_bg);
-- slave dat_i(s)
uart_dat_i <= or32_d_dat_o;
bootRAM_dat_i <= or32_d_dat_o;
-- master dat_i(s)
or32_i_dat_i <= bootRAM_dat_o;
or32_d_dat_i <= (uart_dat_o and or32_d_uart_bg) or (bootRAM_dat_o and or32_d_bootRAM_bg);
-- tgc_i
-- tga_i
or32_i_wbm_i.dat_i <= or32_i_dat_i;
or32_i_wbm_i.ack_i <= or32_i_ack_i ;
or32_i_wbm_i.err_i <= or32_i_err_i;
or32_i_wbm_i.rty_i <= or32_i_rty_i;
or32_i_sel_o <= or32_i_wbm_o.sel_o;
or32_i_adr_o <= or32_i_wbm_o.adr_o;
or32_i_cti_o <= or32_i_wbm_o.cti_o;
or32_i_bte_o <= or32_i_wbm_o.bte_o;
or32_i_cyc_o <= or32_i_wbm_o.cyc_o;
or32_i_stb_o <= or32_i_wbm_o.stb_o;
or32_d_wbm_i.dat_i <= or32_d_dat_i;
or32_d_wbm_i.ack_i <= or32_d_ack_i ;
or32_d_wbm_i.err_i <= or32_d_err_i;
or32_d_wbm_i.rty_i <= or32_d_rty_i;
or32_d_dat_o <= or32_d_wbm_o.dat_o;
or32_d_we_o  <= or32_d_wbm_o.we_o;
or32_d_sel_o <= or32_d_wbm_o.sel_o;
or32_d_adr_o <= or32_d_wbm_o.adr_o;
or32_d_cti_o <= or32_d_wbm_o.cti_o;
or32_d_bte_o <= or32_d_wbm_o.bte_o;
or32_d_cyc_o <= or32_d_wbm_o.cyc_o;
or32_d_stb_o <= or32_d_wbm_o.stb_o;
uart_dat_o <= uart_wbs_o.dat_o;
uart_ack_o <= uart_wbs_o.ack_o;
uart_wbs_i.dat_i <= uart_dat_i;
uart_wbs_i.we_i  <= uart_we_i;
uart_wbs_i.sel_i <= uart_sel_i;
uart_wbs_i.adr_i <= uart_adr_i;
uart_wbs_i.cyc_i <= uart_cyc_i;
uart_wbs_i.stb_i <= uart_stb_i;
bootRAM_dat_o <= bootRAM_wbs_o.dat_o;
bootRAM_ack_o <= bootRAM_wbs_o.ack_o;
bootRAM_wbs_i.dat_i <= bootRAM_dat_i;
bootRAM_wbs_i.we_i  <= bootRAM_we_i;
bootRAM_wbs_i.sel_i <= bootRAM_sel_i;
bootRAM_wbs_i.adr_i <= bootRAM_adr_i;
bootRAM_wbs_i.cyc_i <= bootRAM_cyc_i;
bootRAM_wbs_i.stb_i <= bootRAM_stb_i;
end rtl;