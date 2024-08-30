///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2023 Xilinx, Inc.
// All Rights Reserved
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor     : Xilinx
// \   \   \/     Version    : 14.7
//  \   \         Application: Xilinx CORE Generator
//  /   /         Filename   : npi_ila.v
// /___/   /\     Timestamp  : Thu Apr 13 20:44:08 CEST 2023
// \   \  /  \
//  \___\/\___\
//
// Design Name: Verilog Synthesis Wrapper
///////////////////////////////////////////////////////////////////////////////
// This wrapper is used to integrate with Project Navigator and PlanAhead

`timescale 1ns/1ps

module npi_ila(
    CONTROL,
    CLK,
    TRIG0,
    TRIG1,
    TRIG2,
    TRIG3,
    TRIG4,
    TRIG5,
    TRIG6,
    TRIG7,
    TRIG8,
    TRIG9) /* synthesis syn_black_box syn_noprune=1 */;


inout [35 : 0] CONTROL;
input CLK;
input [63 : 0] TRIG0;
input [63 : 0] TRIG1;
input [31 : 0] TRIG2;
input [31 : 0] TRIG3;
input [7 : 0] TRIG4;
input [7 : 0] TRIG5;
input [3 : 0] TRIG6;
input [3 : 0] TRIG7;
input [1 : 0] TRIG8;
input [31 : 0] TRIG9;

endmodule
