///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2023 Xilinx, Inc.
// All Rights Reserved
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor     : Xilinx
// \   \   \/     Version    : 14.7
//  \   \         Application: Xilinx CORE Generator
//  /   /         Filename   : npi_if_ila.veo
// /___/   /\     Timestamp  : Thu Apr 13 20:47:59 CEST 2023
// \   \  /  \
//  \___\/\___\
//
// Design Name: ISE Instantiation template
///////////////////////////////////////////////////////////////////////////////

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
npi_if_ila YourInstanceName (
    .CONTROL(CONTROL), // INOUT BUS [35:0]
    .CLK(CLK), // IN
    .TRIG0(TRIG0), // IN BUS [31:0]
    .TRIG1(TRIG1), // IN BUS [31:0]
    .TRIG2(TRIG2), // IN BUS [31:0]
    .TRIG3(TRIG3), // IN BUS [3:0]
    .TRIG4(TRIG4), // IN BUS [23:0]
    .TRIG5(TRIG5), // IN BUS [63:0]
    .TRIG6(TRIG6), // IN BUS [63:0]
    .TRIG7(TRIG7) // IN BUS [31:0]
);

// INST_TAG_END ------ End INSTANTIATION Template ---------

