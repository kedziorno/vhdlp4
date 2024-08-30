---------------------------------------------------------------------- 
----                                                              ---- 
----  VHDL Wishbone TESTBENCH                                     ---- 
----                                                              ---- 
----  This file is part of the vhdl_wb_tb project                 ---- 
----  http://www.opencores.org/cores/vhdl_wb_tb/                  ---- 
----                                                              ---- 
----  This file contains the one test sequence for the test bench.----
----  Several test sequences shall be stored in several tc_xxxx   ---- 
----  files. This file contains the architecture for the tc_top   ----
----  enity, lcated in tc_top.vhd.                                ----
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
----      $URL: file:///svn/vhdl_wb_tb/vhdl_wb_tb/trunk/bench/vhdl/tc_xxxx.vhd $
---- $Revision: 19 $
----     $Date: 2018-08-01 11:57:18 +0200 (Wed, 01 Aug 2018) $
----   $Author: sinx $
----       $Id: tc_xxxx.vhd 19 2018-08-01 09:57:18Z sinx $
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
use work.convert_pkg.all;
use work.wishbone_pkg.all;
use work.wishbone_bfm_pkg.all;
use work.my_project_pkg.all;
use work.tb_pkg.all;

-- architecture ------------------------------------------------------
architecture tc_xxxx of tc_top is
  ----------------------------------------------------------------------
  --  local constant definitions
----------------------------------------------------------------------
begin
  ----------------------------------------------------------------------
  tc_xxxx_proc : process
    variable result_v       : std_logic_vector(wishbone_data_width_c-1 downto 0);
  begin
  ----------------------------------------------------------------------
    -- standard signal initialization
    wb_o <= wb_bfm_master_out_idle_c;
    
    wait until wb_i.rst = '0';
    wait until (wb_i.clk'event and wb_i.clk = '1'); --rising_edge(wb_i.clk);
    wait until (wb_i.clk'event and wb_i.clk = '1'); --rising_edge(wb_i.clk);
    --
    wait for 400 ns;
    wait until (wb_i.clk'event and wb_i.clk = '1'); --rising_edge(wb_i.clk);
    --
  ----------------------------------------------------------------------
    
    report "-----------------------------------------------------------------";
    report "-- tc_xxxx: ADD_DESCRIPTION_HERE                               --";
    report "-----------------------------------------------------------------";
    report "--configure stimulator";
    report "-----------------------------------------------------------------";

    wb_write(stimulator_register0_c       , 0, wb_i, wb_o);

    report "-----------------------------------------------------------------";
    report "--configure verifier";
    report "-----------------------------------------------------------------";

    wb_write(verifier_register0_c         , 2, wb_i, wb_o);
    wb_write(verifier_register1_c         , 16#2b#, wb_i, wb_o);
    report "--configuration done";
    report "-----------------------------------------------------------------";
    report "--starting stimulator";
    report "-----------------------------------------------------------------";

    report "-----------------------------------------------------------------";
    report "-- stimulation run";
    report "-----------------------------------------------------------------";
    wb_write(stimulator_register0_c       , 3, wb_i, wb_o); -- shift '1' in
    wb_write(stimulator_register0_c       , 1, wb_i, wb_o);
    wb_write(stimulator_register0_c       , 2, wb_i, wb_o); -- shift '0' in
    wb_write(stimulator_register0_c       , 0, wb_i, wb_o);

    -- read current value in verifier for wb_read illustration
    wb_read (verifier_register2_c         , 2, wb_i, wb_o);
    wb_read (verifier_register2_c         , 2, wb_i, wb_o,2); -- print all info
    wb_read (verifier_register2_c         , 2, wb_i, wb_o,2, " <TEXT>"); -- add text
    
    for I in 0 to 10 loop -- read current value 10 times for illustration of wb_read
      wb_read (verifier_register2_c         , result_v, wb_i, wb_o); -- read value to variable
      report " Read value from verifier_register2_c register : " & to_string(result_v) & " = " & to_string(to_integer(result_v));
    end loop;

    -- further shifts
    wb_write(stimulator_register0_c       , 3, wb_i, wb_o); -- shift '1' in
    wb_write(stimulator_register0_c       , 1, wb_i, wb_o);

    ---------------------------------------------------------------------------
    ---------------------------------------------------------------------------
    ---------------------------------------------------------------------------
    report "-----------------------------------------------------------------";
    report "--check results";
    report "-----------------------------------------------------------------";
    -- wait for 6 us;
    -- wait until rising_edge(wb_i.clk);
    wb_read (verifier_register2_c         , 5, wb_i, wb_o); -- reads correct
    wb_read (verifier_register2_c         , 5, wb_i, wb_o,0, " <TEXT>"); -- reads correct 
    wb_read (verifier_register2_c         , 5, wb_i, wb_o,1, " <TEXT>"); -- reads correct 
    wb_read (verifier_register2_c         , 5, wb_i, wb_o,2, " <TEXT>"); -- reads correct 
    wb_read (verifier_register2_c         , 5, wb_i, wb_o,3, " <TEXT>"); -- reads correct 
    wb_read (verifier_register2_c         , 5, wb_i, wb_o,4, " <TEXT>"); -- reads correct 
    report "-----------------------------------------------------------------";
    report "-----------------------------------------------------------------";
    report "-- Till here there should be no errors. Now we provoke error messages for illustration.";
    wb_read (verifier_register2_c         , 6, wb_i, wb_o); -- provoke error (read value is 5)
    wb_read (verifier_register2_c         , 6, wb_i, wb_o,0); -- provoke error (read value is 5)
    wb_read (verifier_register2_c         , 6, wb_i, wb_o,1); -- provoke error (read value is 5)
    wb_read (verifier_register2_c         , 6, wb_i, wb_o,2); -- provoke error (read value is 5)
    wb_read (verifier_register2_c         , 6, wb_i, wb_o,2," <TEXT>"); -- provoke error (read value is 5)
    wb_read (verifier_register2_c         , 6, wb_i, wb_o,3,"",7); -- provoke error (read value is 5)
    wb_read (verifier_register2_c         , 6, wb_i, wb_o,4); -- provoke error (read value is 5)
    -- wait for 1 us;    
  ----------------------------------------------------------------------
    report "-- tc_xxxx finished";
  ----------------------------------------------------------------------
    --
    report "test case tc_xxxx completed successfully";
    report "-----------------------------------------------------------------";
    report "-----------------------------------------------------------------";
    wait for 100 ns;
    
    if (exit_simulator_at_tc_end_c/="1") then
      std.env.stop(0); -- pause simulation
    else
      std.env.finish(0); -- stop simulation
    end if;
  end process tc_xxxx_proc;
  ----------------------------------------------------------------------
end tc_xxxx;
----------------------------------------------------------------------
---- end of file                                                  ---- 
----------------------------------------------------------------------