// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Dec 17 14:03:46 2019
// Host        : CHGFN1A945754 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/s91153/Documents/FPGA/Arty-Z7/Arty-Z7-20-GPIOTest/src/bd/GPIOTest/ip/GPIOTest_system_ila_0_0/GPIOTest_system_ila_0_0_stub.v
// Design      : GPIOTest_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "bd_76a3,Vivado 2019.1" *)
module GPIOTest_system_ila_0_0(clk, probe0, probe1, probe2)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[31:0],probe2[31:0]" */;
  input clk;
  input [0:0]probe0;
  input [31:0]probe1;
  input [31:0]probe2;
endmodule
