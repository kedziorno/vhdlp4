---------------------------------------------------------------------- 
----                                                              ---- 
----  VHDL Wishbone TESTBENCH                                     ---- 
----                                                              ---- 
----  This file is part of the vhdl_wb_tb project                 ---- 
----  http://www.opencores.org/cores/vhdl_wb_tb/                  ---- 
----                                                              ---- 
----  This file contains the wishbone_bfm_pkg package and defines ----
----  wishbone transaction processes functions for simulation.    ---- 
----                                                              ---- 
----  To Do:                                                      ---- 
----   -                                                          ---- 
----                                                              ---- 
----  Author(s):                                                  ---- 
----      - Sinx, sinx@opencores.org                              ---- 
----                                                              ---- 
---------------------------------------------------------------------- 
----    SVN information
----
----      $URL: file:///svn/vhdl_wb_tb/vhdl_wb_tb/trunk/bench/vhdl/wishbone_bfm_pkg.vhd $
---- $Revision: 23 $
----     $Date: 2018-08-01 12:40:03 +0200 (Wed, 01 Aug 2018) $
----   $Author: sinx $
----       $Id: wishbone_bfm_pkg.vhd 23 2018-08-01 10:40:03Z sinx $
---------------------------------------------------------------------- 
----                                                              ---- 
---- Copyright (C) 2018 Authors and OPENCORES.ORG                 ---- 
----                                                              ---- 
---- This source file may be used and distributed without         ---- 
---- restriction provided that this copyright statement is not    ---- 
---- removed from the file and that any derivative work contains  ---- 
---- the original copyright notice and the associated disclaimer. ---- 
----                                                              ---- 
---- This source file is free software; you can redistribute it   ---- 
---- and/or modify it under the terms of the GNU Lesser General   ---- 
---- Public License as published by the Free Software Foundation; ---- 
---- either version 2.1 of the License, or (at your option) any   ---- 
---- later version.                                               ---- 
----                                                              ---- 
---- This source is distributed in the hope that it will be       ---- 
---- useful, but WITHOUT ANY WARRANTY; without even the implied   ---- 
---- warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ---- 
---- PURPOSE.  See the GNU Lesser General Public License for more ---- 
---- details.                                                     ---- 
----                                                              ---- 
---- You should have received a copy of the GNU Lesser General    ---- 
---- Public License along with this source; if not, download it   ---- 
---- from http://www.opencores.org/lgpl.shtml                     ---- 
----                                                              ---- 
----------------------------------------------------------------------

-- library -----------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.my_project_pkg.all;
use work.wishbone_pkg.all;
use work.convert_pkg.all;

-- package -----------------------------------------------------------
package wishbone_bfm_pkg is
  -- defines output signals of wb bfm (simulation only)
  type wishbone_bfm_master_out_t is record
    -- 2.2.2 Signals Common to MASTER and SLAVE Interfaces 
    dat : wishbone_data_t; -- data []
    rst : std_logic; -- reset [mandatory RULE 3.40]
    tgd : wishbone_tag_data_t; -- data tag []
    -- 2.2.3 MASTER Signals
    adr : wishbone_address_t; -- address [optional]
    cyc : std_logic; -- cycle [mandatory RULE 3.40]
    lock: std_logic; -- lock []
    sel : wishbone_byte_select_t;
    stb : std_logic; -- strobe [mandatory RULE 3.40]
    tga : wishbone_tag_address_t; -- address tag []
    tgc : wishbone_tag_cycle_t; -- cycle tag []
    we  : std_logic; -- write enable []
  end record wishbone_bfm_master_out_t;

  -- defines input signals of wb bfm (simulation only)
  type wishbone_bfm_master_in_t is record
    -- 2.2.2 Signals Common to MASTER and SLAVE Interfaces 
    rst : std_logic; -- reset [mandatory RULE 3.40]
    clk : std_logic; -- clock [mandatory RULE 3.40]
    dat : wishbone_data_t; -- read data []
    tgd : wishbone_tag_data_t; -- read data tag []
    -- 2.2.4 SLAVE Signals 
    ack : std_logic; -- acknowledge [mandatory RULE 3.40]
    err : std_logic; -- error [optional PERMISSION 3.20]
    rty : std_logic; -- retry [optional PERMISSION 3.25]
    --stall : std_logic;
    int   : std_logic; -- interrupt [non WB signal]
  end record wishbone_bfm_master_in_t;

  -- define the idle state of wb bus
  constant wb_bfm_master_out_idle_c : wishbone_bfm_master_out_t := (
    dat  =>  wishbone_data_of_unused_address_c,
    rst  =>  '0',
    tgd  =>  (others=>'0'),
    adr  =>  (others=>'U'),
    cyc  =>  '0',
    lock =>  '0',
    sel  =>  (others=>'0'),
    stb  =>  '0',
    tga  =>  (others=>'0'),
    tgc  =>  (others=>'0'),
    we   =>  '0'
    );
  -- BUS FUNCTIONS -----------------------------------------------------
  ---------------------------------------------------------------------- 
  ---------------------------------------------------------------------- 
  -- generate single write cycle
  procedure wb_write(
    address_i                   : in  integer; -- address to write to
    data_i                      : in  integer; -- data value to be written
    signal i                    : in  wishbone_bfm_master_in_t; -- incoming wb signals
    signal o                    : out wishbone_bfm_master_out_t; -- incoming wb signals
    verbose_mode_i              : in  integer range 0 to 2 := 1; -- verbose mode; 2= print all activities; others: print nothing
    message_prolog_i            : in  string  := "" -- string to be added in front of generated message
    );

  -- generate single read cycle and verify read word with expected_data_i
  procedure wb_read(
    address_i                   : in  integer; -- address to read from
    expected_data_i             : in  integer; -- data to be compared to read data; if different an error message is generated
    signal i                    : in  wishbone_bfm_master_in_t;  -- incoming wb signals
    signal o                    : out wishbone_bfm_master_out_t; -- outgoing wb signals
    verbose_mode_i              : in  integer range 0 to 4 := 1; -- verbose mode; 0=no output, 1=error only, 2= all, 3=use expected_data_mask_i, 4=show difference read to exp.
    message_prolog_i            : in  string  := ""; -- string to be added in front of generated message
    expected_data_mask_i        : in  integer := 0 -- bit mask for expected_data_i; 0: bis is not compared; 1: bit is compared
    );

  -- generate single read cycle and return read data via read_data_o
  procedure wb_read(
    address_i                   : in  integer; -- address to read from
    read_data_o                 : out std_logic_vector (wishbone_data_width_c-1 downto 0); -- read data output
    signal i                    : in  wishbone_bfm_master_in_t; -- incoming wb signals
    signal o                    : out wishbone_bfm_master_out_t;  -- outgoing wb signals
    verbose_mode_i              : in  integer range 0 to 4 := 0; -- verbose mode; 2 = output read data; others: no output
    message_prolog_i            : in  string  := "" -- string to be added in front of generated message
    );
  ---------------------------------------------------------------------- 
end;

-- package body ------------------------------------------------------
package body wishbone_bfm_pkg is
  ---------------------------------------------------------------------- 
  ---------------------------------------------------------------------- 
  procedure wb_write(
    address_i                   : in  integer; -- address to write to
    data_i                      : in  integer; -- data value to be written
    signal i                    : in  wishbone_bfm_master_in_t; -- incoming wb signals
    signal o                    : out wishbone_bfm_master_out_t; -- outgoing wb signals
    verbose_mode_i              : in  integer range 0 to 2 := 1; -- verbose mode; 0=no output, 1=error only, 2= all
    message_prolog_i            : in  string  := "" -- string to be added in front of generated message
    ) is
    ---------------------------------------------------------------------- 
  begin
    o.adr       <= to_std_logic_vector(address_i, wishbone_address_width_c);
    o.dat       <= to_std_logic_vector(data_i, wishbone_data_width_c);
    o.we        <= '1';
    o.rst       <= '0';
    o.tgd       <= (others => '0');
    o.cyc       <= '1';
    o.lock      <= '1';
    o.sel       <= (others => '1');
    o.stb       <= '1';
    o.tga       <= (others => '0');
    o.tgc       <= (others => '0');
    if (verbose_mode_i = 2) then
      report message_prolog_i & " writing :" & to_string(data_i, 16, wishbone_data_width_c/4) & " to: " & to_string(address_i, 16, wishbone_address_width_c/4);
    end if;

    -- ack handling
    loop
      wait until rising_edge(i.clk);
      if (i.ack = '1') then
        exit;
      end if;
    end loop;
    o           <= wb_bfm_master_out_idle_c; -- reset bus
  end wb_write;
  ----------------------------------------------------------------------
  ----------------------------------------------------------------------
  procedure wb_read(
    address_i               : in  integer;   -- address to read from
    read_data_o             : out std_logic_vector (wishbone_data_width_c-1 downto 0);-- read data output
    signal i                : in  wishbone_bfm_master_in_t;  -- incoming wb signals
    signal o                : out wishbone_bfm_master_out_t;  -- outgoing wb signals
    verbose_mode_i          : in  integer range 0 to 4 := 0; -- verbose mode; 2 = output read data; others: no output
    message_prolog_i        : in  string  := "" -- string to be added in front of generated message
    ) is
    ----------------------------------------------------------------------
  begin
    o.adr       <= to_std_logic_vector(address_i, wishbone_address_width_c);
    o.dat       <= (others => 'U');
    o.we        <= '0';
    o.rst       <= '0';
    o.tgd       <= (others => '0');
    o.cyc       <= '1';
    o.lock      <= '1';
    o.sel       <= (others => '1');
    o.stb       <= '1';
    o.tga       <= (others => '0');
    o.tgc       <= (others => '0');
    -- ack handling
    loop
      wait until rising_edge(i.clk);
      read_data_o := i.dat;
      if (i.ack = '1') then
        exit;
      end if;
    end loop;
    o           <= wb_bfm_master_out_idle_c; -- reset bus

    if (verbose_mode_i = 2) then  -- output all
      report message_prolog_i & ": read data at address 0x" & to_string(address_i, 16, wishbone_address_width_c/4)
--      report message_prolog_i & ": read data at address 0x" & to_string(address_i, 16, wishbone_address_width_c/4) & " was: 0x" & to_string(readdata_v, 16, wishbone_data_width_c/4)
        severity note;
    end if;
  end wb_read;
  ------------------------------------------------------------------------
  ------------------------------------------------------------------------
  procedure wb_read(
    address_i                   : in  integer; -- address to read from
    expected_data_i             : in  integer; -- data to be compared to read data; if different an error message is generated
    signal i                    : in  wishbone_bfm_master_in_t; -- incoming wb signals
    signal o                    : out wishbone_bfm_master_out_t; -- outgoing wb signals
    verbose_mode_i              : in  integer range 0 to 4 := 1; -- verbose mode; 0=no output, 1=error only, 2= all, 3=use expected_data_mask_i, 4=show difference read to exp.
    message_prolog_i            : in  string  := ""; -- string to be added in front of generated message
    expected_data_mask_i        : in  integer := 0 -- bit mask for expected_data_i; 0: bis is not compared; 1: bit is compared
    ) is
    ----------------------------------------------------------------------
    variable readdata_v : std_logic_vector (31 downto 0);
    variable diff_v     : integer;
    ----------------------------------------------------------------------
  begin
    wb_read(address_i,readdata_v,i,o); -- read from bus
    
    diff_v     := to_integer(readdata_v) - expected_data_i;

    if (verbose_mode_i = 1) then -- output errors only
      if (readdata_v /= to_std_logic_vector(expected_data_i, wishbone_data_width_c)) then
        report "error" & message_prolog_i & ": expected data at address 0x" & to_string(address_i, 16, wishbone_address_width_c/4) &
          " was: 0x" & to_string(expected_data_i, 16, wishbone_data_width_c/4) & " but read: 0x" & to_string(readdata_v,16,wishbone_data_width_c/4)
          severity error;
      end if;
    elsif (verbose_mode_i = 2) then  -- output all
      report message_prolog_i & ": read data at address 0x" & to_string(address_i, 16, wishbone_address_width_c/4) &
        " was: 0x" & to_string(readdata_v, 16, wishbone_data_width_c/4)
        severity note;
    elsif (verbose_mode_i = 3) then  -- output filter
      if ((readdata_v and to_std_logic_vector(expected_data_mask_i, wishbone_data_width_c)) /=
          to_std_logic_vector(expected_data_i, wishbone_data_width_c)) then
        report message_prolog_i & ": read data at address 0x" & to_string(address_i, 16, wishbone_address_width_c/4) &
          " was: 0x" & to_string(readdata_v, 16, wishbone_data_width_c/4)
          severity note;
      end if;
    elsif verbose_mode_i = 4 then
      if (readdata_v /= to_std_logic_vector(expected_data_i, wishbone_data_width_c)) then
        report "error" & message_prolog_i & ": expected data at address 0x" & to_string(address_i, 16, wishbone_address_width_c/4) &
          " was: 0x" & to_string(expected_data_i, 16, wishbone_data_width_c/4) & " but read: 0x" & to_string(readdata_v,16,wishbone_data_width_c/4) & " diff: " & to_string(readdata_v,16,wishbone_address_width_c/4)
          severity error;
      end if;
    end if;
  end wb_read;
  --------------------------------------------------------------------
end package body;
----------------------------------------------------------------------
---- end of file                                                  ---- 
----------------------------------------------------------------------