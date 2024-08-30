-------------------------------------------------------------------------------
-- Copyright (c) 2023 Xilinx, Inc.
-- All Rights Reserved
-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor     : Xilinx
-- \   \   \/     Version    : 14.7
--  \   \         Application: XILINX CORE Generator
--  /   /         Filename   : oob_control_ila.vhd
-- /___/   /\     Timestamp  : Thu Apr 13 19:06:44 CEST 2023
-- \   \  /  \
--  \___\/\___\
--
-- Design Name: VHDL Synthesis Wrapper
-------------------------------------------------------------------------------
-- This wrapper is used to integrate with Project Navigator and PlanAhead

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY oob_control_ila IS
  port (
    CONTROL: inout std_logic_vector(35 downto 0);
    CLK: in std_logic;
    TRIG0: in std_logic_vector(15 downto 0);
    TRIG1: in std_logic_vector(15 downto 0);
    TRIG2: in std_logic_vector(15 downto 0);
    TRIG3: in std_logic_vector(15 downto 0);
    TRIG4: in std_logic_vector(31 downto 0);
    TRIG5: in std_logic_vector(3 downto 0);
    TRIG6: in std_logic_vector(31 downto 0);
    TRIG7: in std_logic_vector(31 downto 0));
END oob_control_ila;

ARCHITECTURE oob_control_ila_a OF oob_control_ila IS
BEGIN

END oob_control_ila_a;
