///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2023 Xilinx, Inc.
// All Rights Reserved
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor     : Xilinx
// \   \   \/     Version    : 14.7
//  \   \         Application: Xilinx CORE Generator
//  /   /         Filename   : user_logic_ila.v
// /___/   /\     Timestamp  : Thu Apr 13 16:40:03 CEST 2023
// \   \  /  \
//  \___\/\___\
//
// Design Name: Verilog Synthesis Wrapper
///////////////////////////////////////////////////////////////////////////////
// This wrapper is used to integrate with Project Navigator and PlanAhead

`timescale 1ns/1ps

module user_logic_ila(
    CONTROL,
    CLK,
    TRIG0,
    TRIG1,
    TRIG2,
    TRIG3,
    TRIG4,
    TRIG5) /* synthesis syn_black_box syn_noprune=1 */;


inout [35 : 0] CONTROL;
input CLK;
input [3 : 0] TRIG0;
input [31 : 0] TRIG1;
input [31 : 0] TRIG2;
input [31 : 0] TRIG3;
input [31 : 0] TRIG4;
input [7 : 0] TRIG5;

endmodule
