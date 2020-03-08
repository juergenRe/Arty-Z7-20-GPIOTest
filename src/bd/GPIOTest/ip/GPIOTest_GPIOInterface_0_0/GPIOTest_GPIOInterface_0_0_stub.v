// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Dec 17 14:02:07 2019
// Host        : CHGFN1A945754 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/s91153/Documents/FPGA/Arty-Z7/Arty-Z7-20-GPIOTest/src/bd/GPIOTest/ip/GPIOTest_GPIOInterface_0_0/GPIOTest_GPIOInterface_0_0_stub.v
// Design      : GPIOTest_GPIOInterface_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "GPIOInterface,Vivado 2019.1" *)
module GPIOTest_GPIOInterface_0_0(GPIOPortWr, GPIOPortRd, clk, reset_n, DIn, DOut, MUX, 
  SEL, nen_ctrl0, nen_idb, nen_adl, nen_adh, phi1, phi2)
/* synthesis syn_black_box black_box_pad_pin="GPIOPortWr[31:0],GPIOPortRd[31:0],clk,reset_n,DIn[7:0],DOut[7:0],MUX[2:0],SEL,nen_ctrl0,nen_idb,nen_adl,nen_adh,phi1,phi2" */;
  input [31:0]GPIOPortWr;
  output [31:0]GPIOPortRd;
  input clk;
  input reset_n;
  input [7:0]DIn;
  output [7:0]DOut;
  output [2:0]MUX;
  output SEL;
  output nen_ctrl0;
  output nen_idb;
  output nen_adl;
  output nen_adh;
  output phi1;
  output phi2;
endmodule
