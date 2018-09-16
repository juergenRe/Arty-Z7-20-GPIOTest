// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun Sep 16 13:26:34 2018
// Host        : ASYS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Juergen/Documents/FPGA/Arty-Z7/Arty-Z7-20-GPIOTest/src/bd/GPIOTest/ip/GPIOTest_GPIOInterface_0_0/GPIOTest_GPIOInterface_0_0_sim_netlist.v
// Design      : GPIOTest_GPIOInterface_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "GPIOTest_GPIOInterface_0_0,GPIOInterface,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "GPIOInterface,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module GPIOTest_GPIOInterface_0_0
   (GPIOPortWr,
    GPIOPortRd,
    clk,
    reset,
    DIn,
    DOut,
    MUX,
    SEL,
    nen_ctrl0,
    nen_idb,
    nen_adl,
    nen_adh,
    phi1,
    phi2);
  input [31:0]GPIOPortWr;
  output [31:0]GPIOPortRd;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN GPIOTest_processing_system7_0_0_FCLK_CLK0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW" *) input reset;
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

  wire \<const0> ;
  wire [7:0]DIn;
  wire [7:0]DOut;
  wire [31:0]\^GPIOPortRd ;
  wire [31:0]GPIOPortWr;
  wire [2:0]MUX;
  wire SEL;
  wire clk;
  wire nen_adh;
  wire nen_adl;
  wire nen_ctrl0;
  wire nen_idb;
  wire phi1;
  wire phi2;
  wire reset;

  assign GPIOPortRd[31:29] = \^GPIOPortRd [31:29];
  assign GPIOPortRd[28] = GPIOPortWr[26];
  assign GPIOPortRd[27] = \<const0> ;
  assign GPIOPortRd[26] = \<const0> ;
  assign GPIOPortRd[25] = \<const0> ;
  assign GPIOPortRd[24] = \<const0> ;
  assign GPIOPortRd[23] = \<const0> ;
  assign GPIOPortRd[22] = \<const0> ;
  assign GPIOPortRd[21] = \<const0> ;
  assign GPIOPortRd[20] = \<const0> ;
  assign GPIOPortRd[19] = \<const0> ;
  assign GPIOPortRd[18] = \<const0> ;
  assign GPIOPortRd[17] = \<const0> ;
  assign GPIOPortRd[16] = \<const0> ;
  assign GPIOPortRd[15:0] = \^GPIOPortRd [15:0];
  GND GND
       (.G(\<const0> ));
  GPIOTest_GPIOInterface_0_0_GPIOInterface U0
       (.DIn(DIn),
        .DOut(DOut),
        .GPIOPortRd({\^GPIOPortRd [31:29],\^GPIOPortRd [15:0]}),
        .GPIOPortWr({GPIOPortWr[31:29],GPIOPortWr[26:24],GPIOPortWr[15:12],GPIOPortWr[10:0]}),
        .MUX(MUX),
        .SEL(SEL),
        .clk(clk),
        .nen_adh(nen_adh),
        .nen_adl(nen_adl),
        .nen_ctrl0(nen_ctrl0),
        .nen_idb(nen_idb),
        .phi1(phi1),
        .phi2(phi2),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "Delay" *) 
module GPIOTest_GPIOInterface_0_0_Delay
   (sig_in,
    phi1,
    clk,
    \phiState_reg[0] ,
    \phiState_reg[1] );
  output sig_in;
  output phi1;
  input clk;
  input \phiState_reg[0] ;
  input \phiState_reg[1] ;

  wire clk;
  wire phi1;
  wire \phiState_reg[0] ;
  wire \phiState_reg[1] ;
  wire sig_in;
  wire \tmp_reg[1]_srl2_n_0 ;

  LUT2 #(
    .INIT(4'h1)) 
    delay_reg_i_1__0
       (.I0(\phiState_reg[0] ),
        .I1(\phiState_reg[1] ),
        .O(sig_in));
  (* srl_bus_name = "\U0/dly_phi1/tmp_reg " *) 
  (* srl_name = "\U0/dly_phi1/tmp_reg[1]_srl2 " *) 
  SRL16E \tmp_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(sig_in),
        .Q(\tmp_reg[1]_srl2_n_0 ));
  FDRE \tmp_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_reg[1]_srl2_n_0 ),
        .Q(phi1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Delay" *) 
module GPIOTest_GPIOInterface_0_0_Delay_0
   (delay_reg_reg,
    phi2,
    clk,
    \phiState_reg[1] ,
    \phiState_reg[0] );
  output delay_reg_reg;
  output phi2;
  input clk;
  input \phiState_reg[1] ;
  input \phiState_reg[0] ;

  wire clk;
  wire delay_reg_reg;
  wire phi2;
  wire \phiState_reg[0] ;
  wire \phiState_reg[1] ;
  wire \tmp_reg[1]_srl2_n_0 ;

  LUT2 #(
    .INIT(4'h2)) 
    delay_reg_i_1
       (.I0(\phiState_reg[1] ),
        .I1(\phiState_reg[0] ),
        .O(delay_reg_reg));
  (* srl_bus_name = "\U0/dly_phi2/tmp_reg " *) 
  (* srl_name = "\U0/dly_phi2/tmp_reg[1]_srl2 " *) 
  SRL16E \tmp_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(delay_reg_reg),
        .Q(\tmp_reg[1]_srl2_n_0 ));
  FDRE \tmp_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_reg[1]_srl2_n_0 ),
        .Q(phi2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "EdgeDetect" *) 
module GPIOTest_GPIOInterface_0_0_EdgeDetect
   (delay_reg,
    \FSM_sequential_fifoState_reg[0] ,
    fifoState13_out,
    reset,
    sig_in,
    clk,
    \FSM_sequential_fifoState_reg[0]_0 ,
    \FSM_sequential_fifoState_reg[1] ,
    in0,
    \phiState_reg[1] ,
    \phiState_reg[0] ,
    Q);
  output delay_reg;
  output \FSM_sequential_fifoState_reg[0] ;
  output fifoState13_out;
  input reset;
  input sig_in;
  input clk;
  input \FSM_sequential_fifoState_reg[0]_0 ;
  input \FSM_sequential_fifoState_reg[1] ;
  input [0:0]in0;
  input \phiState_reg[1] ;
  input \phiState_reg[0] ;
  input [0:0]Q;

  wire \FSM_sequential_fifoState_reg[0] ;
  wire \FSM_sequential_fifoState_reg[0]_0 ;
  wire \FSM_sequential_fifoState_reg[1] ;
  wire [0:0]Q;
  wire clk;
  wire delay_reg;
  wire fifoState13_out;
  wire [0:0]in0;
  wire \phiState_reg[0] ;
  wire \phiState_reg[1] ;
  wire reset;
  wire sig_in;

  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_fifoState[0]_i_1 
       (.I0(\FSM_sequential_fifoState_reg[0]_0 ),
        .I1(\FSM_sequential_fifoState_reg[1] ),
        .I2(in0),
        .O(\FSM_sequential_fifoState_reg[0] ));
  FDRE delay_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_in),
        .Q(delay_reg),
        .R(reset));
  LUT4 #(
    .INIT(16'h0E10)) 
    i__i_1
       (.I0(\phiState_reg[1] ),
        .I1(\phiState_reg[0] ),
        .I2(Q),
        .I3(delay_reg),
        .O(fifoState13_out));
endmodule

(* ORIG_REF_NAME = "EdgeDetect" *) 
module GPIOTest_GPIOInterface_0_0_EdgeDetect_1
   (fifoState1,
    SEL_reg,
    reset,
    \phiState_reg[1] ,
    clk,
    Q,
    \phiState_reg[1]_0 ,
    delay_reg,
    \phiState_reg[0] ,
    \phiState_reg[1]_1 ,
    out,
    SEL);
  output fifoState1;
  output SEL_reg;
  input reset;
  input \phiState_reg[1] ;
  input clk;
  input [3:0]Q;
  input \phiState_reg[1]_0 ;
  input delay_reg;
  input \phiState_reg[0] ;
  input \phiState_reg[1]_1 ;
  input [2:0]out;
  input SEL;

  wire [3:0]Q;
  wire SEL;
  wire SEL_i_2_n_0;
  wire SEL_reg;
  wire clk;
  wire delay_reg;
  wire delay_reg_0;
  wire fifoState1;
  wire [2:0]out;
  wire \phiState_reg[0] ;
  wire \phiState_reg[1] ;
  wire \phiState_reg[1]_0 ;
  wire \phiState_reg[1]_1 ;
  wire reset;

  LUT5 #(
    .INIT(32'hFF2F0020)) 
    SEL_i_1
       (.I0(SEL_i_2_n_0),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[2]),
        .I4(SEL),
        .O(SEL_reg));
  LUT6 #(
    .INIT(64'h00F00F00DDDDDDDD)) 
    SEL_i_2
       (.I0(Q[3]),
        .I1(fifoState1),
        .I2(\phiState_reg[1]_0 ),
        .I3(Q[0]),
        .I4(delay_reg),
        .I5(Q[1]),
        .O(SEL_i_2_n_0));
  FDRE delay_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(\phiState_reg[1] ),
        .Q(delay_reg_0),
        .R(reset));
  LUT4 #(
    .INIT(16'h0B40)) 
    i__i_2
       (.I0(\phiState_reg[0] ),
        .I1(\phiState_reg[1]_1 ),
        .I2(Q[2]),
        .I3(delay_reg_0),
        .O(fifoState1));
endmodule

(* ORIG_REF_NAME = "GPIOInterface" *) 
module GPIOTest_GPIOInterface_0_0_GPIOInterface
   (phi1,
    phi2,
    GPIOPortRd,
    DOut,
    MUX,
    nen_ctrl0,
    nen_idb,
    nen_adl,
    nen_adh,
    SEL,
    clk,
    GPIOPortWr,
    reset,
    DIn);
  output phi1;
  output phi2;
  output [18:0]GPIOPortRd;
  output [7:0]DOut;
  output [2:0]MUX;
  output nen_ctrl0;
  output nen_idb;
  output nen_adl;
  output nen_adh;
  output SEL;
  input clk;
  input [20:0]GPIOPortWr;
  input reset;
  input [7:0]DIn;

  wire \/i_/i__n_0 ;
  wire \/i___0_n_0 ;
  wire \/i___1_n_0 ;
  wire \/i__n_0 ;
  wire [7:0]DIn;
  wire [7:0]DOut;
  wire \FSM_onehot_rdState[4]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_rdState_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_rdState_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_rdState_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_rdState_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_rdState_reg_n_0_[4] ;
  wire \FSM_sequential_fifoState[2]_i_1_n_0 ;
  wire [18:0]GPIOPortRd;
  wire [20:0]GPIOPortWr;
  wire [2:0]MUX;
  wire SEL;
  wire SEL_i_3_n_0;
  wire [1:0]blClkIn;
  wire \blClkIn[0]_i_1_n_0 ;
  wire \blClkIn[1]_i_1_n_0 ;
  wire [1:0]blClkOut;
  wire \blClkOut[0]_i_1_n_0 ;
  wire \blClkOut[1]_i_1_n_0 ;
  wire [1:0]blExc;
  wire blExc0;
  wire \blExc[0]_i_1_n_0 ;
  wire \blExc[1]_i_2_n_0 ;
  wire [1:0]blRdData;
  wire \blRdData[0]_i_1_n_0 ;
  wire \blRdData[1]_i_1_n_0 ;
  wire clk;
  wire cmd_fifo_n_1;
  wire cmd_fifo_n_10;
  wire cmd_fifo_n_11;
  wire cmd_fifo_n_12;
  wire cmd_fifo_n_13;
  wire cmd_fifo_n_14;
  wire cmd_fifo_n_15;
  wire cmd_fifo_n_16;
  wire cmd_fifo_n_17;
  wire cmd_fifo_n_18;
  wire cmd_fifo_n_2;
  wire cmd_fifo_n_3;
  wire cmd_fifo_n_4;
  wire cmd_fifo_n_5;
  wire cmd_fifo_n_6;
  wire cmd_fifo_n_7;
  wire cmd_fifo_n_8;
  wire cmd_fifo_n_9;
  wire data_ena;
  wire data_ena_0;
  wire delay_reg;
  wire dly_phi2_n_0;
  wire \edges_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire [2:0]fifoState;
  wire fifoState1;
  wire fifoState13_out;
  wire full;
  wire i___1_i_1_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_7_n_0;
  wire i__carry__2_i_8_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire nen_adh;
  wire nen_adh_i_1_n_0;
  wire nen_adl;
  wire nen_ctrl0;
  wire nen_ctrl0_i_1_n_0;
  wire nen_idb;
  wire out_fifo_wr_i_1_n_0;
  wire p1_edges_n_1;
  wire p2_edges_n_1;
  wire p_0_in;
  wire p_0_in3_in;
  wire p_2_in;
  wire phi1;
  wire phi2;
  wire \phiState[0]_i_1_n_0 ;
  wire \phiState[1]_i_1_n_0 ;
  wire \phiState_reg_n_0_[0] ;
  wire \phiState_reg_n_0_[1] ;
  wire [31:0]phi_cnt;
  wire [31:1]phi_cnt0;
  wire phi_cnt1_carry__0_i_1_n_0;
  wire phi_cnt1_carry__0_i_2_n_0;
  wire phi_cnt1_carry__0_i_3_n_0;
  wire phi_cnt1_carry__0_i_4_n_0;
  wire phi_cnt1_carry__0_i_5_n_0;
  wire phi_cnt1_carry__0_i_6_n_0;
  wire phi_cnt1_carry__0_i_7_n_0;
  wire phi_cnt1_carry__0_i_8_n_0;
  wire phi_cnt1_carry__0_n_0;
  wire phi_cnt1_carry__0_n_1;
  wire phi_cnt1_carry__0_n_2;
  wire phi_cnt1_carry__0_n_3;
  wire phi_cnt1_carry__1_i_1_n_0;
  wire phi_cnt1_carry__1_i_2_n_0;
  wire phi_cnt1_carry__1_i_3_n_0;
  wire phi_cnt1_carry__1_i_4_n_0;
  wire phi_cnt1_carry__1_i_5_n_0;
  wire phi_cnt1_carry__1_i_6_n_0;
  wire phi_cnt1_carry__1_i_7_n_0;
  wire phi_cnt1_carry__1_i_8_n_0;
  wire phi_cnt1_carry__1_n_0;
  wire phi_cnt1_carry__1_n_1;
  wire phi_cnt1_carry__1_n_2;
  wire phi_cnt1_carry__1_n_3;
  wire phi_cnt1_carry__2_i_1_n_0;
  wire phi_cnt1_carry__2_i_2_n_0;
  wire phi_cnt1_carry__2_i_3_n_0;
  wire phi_cnt1_carry__2_i_4_n_0;
  wire phi_cnt1_carry__2_i_5_n_0;
  wire phi_cnt1_carry__2_i_6_n_0;
  wire phi_cnt1_carry__2_i_7_n_0;
  wire phi_cnt1_carry__2_i_8_n_0;
  wire phi_cnt1_carry__2_n_0;
  wire phi_cnt1_carry__2_n_1;
  wire phi_cnt1_carry__2_n_2;
  wire phi_cnt1_carry__2_n_3;
  wire phi_cnt1_carry_i_1_n_0;
  wire phi_cnt1_carry_i_2_n_0;
  wire phi_cnt1_carry_i_3_n_0;
  wire phi_cnt1_carry_i_4_n_0;
  wire phi_cnt1_carry_i_5_n_0;
  wire phi_cnt1_carry_i_6_n_0;
  wire phi_cnt1_carry_i_7_n_0;
  wire phi_cnt1_carry_i_8_n_0;
  wire phi_cnt1_carry_n_0;
  wire phi_cnt1_carry_n_1;
  wire phi_cnt1_carry_n_2;
  wire phi_cnt1_carry_n_3;
  wire \phi_cnt1_inferred__0/i__carry__0_n_0 ;
  wire \phi_cnt1_inferred__0/i__carry__0_n_1 ;
  wire \phi_cnt1_inferred__0/i__carry__0_n_2 ;
  wire \phi_cnt1_inferred__0/i__carry__0_n_3 ;
  wire \phi_cnt1_inferred__0/i__carry__1_n_0 ;
  wire \phi_cnt1_inferred__0/i__carry__1_n_1 ;
  wire \phi_cnt1_inferred__0/i__carry__1_n_2 ;
  wire \phi_cnt1_inferred__0/i__carry__1_n_3 ;
  wire \phi_cnt1_inferred__0/i__carry__2_n_0 ;
  wire \phi_cnt1_inferred__0/i__carry__2_n_1 ;
  wire \phi_cnt1_inferred__0/i__carry__2_n_2 ;
  wire \phi_cnt1_inferred__0/i__carry__2_n_3 ;
  wire \phi_cnt1_inferred__0/i__carry_n_0 ;
  wire \phi_cnt1_inferred__0/i__carry_n_1 ;
  wire \phi_cnt1_inferred__0/i__carry_n_2 ;
  wire \phi_cnt1_inferred__0/i__carry_n_3 ;
  wire \phi_cnt[0]_i_1_n_0 ;
  wire \phi_cnt[10]_i_1_n_0 ;
  wire \phi_cnt[11]_i_1_n_0 ;
  wire \phi_cnt[12]_i_1_n_0 ;
  wire \phi_cnt[13]_i_1_n_0 ;
  wire \phi_cnt[14]_i_1_n_0 ;
  wire \phi_cnt[15]_i_1_n_0 ;
  wire \phi_cnt[16]_i_1_n_0 ;
  wire \phi_cnt[17]_i_1_n_0 ;
  wire \phi_cnt[18]_i_1_n_0 ;
  wire \phi_cnt[19]_i_1_n_0 ;
  wire \phi_cnt[1]_i_1_n_0 ;
  wire \phi_cnt[20]_i_1_n_0 ;
  wire \phi_cnt[21]_i_1_n_0 ;
  wire \phi_cnt[22]_i_1_n_0 ;
  wire \phi_cnt[23]_i_1_n_0 ;
  wire \phi_cnt[24]_i_1_n_0 ;
  wire \phi_cnt[25]_i_1_n_0 ;
  wire \phi_cnt[26]_i_1_n_0 ;
  wire \phi_cnt[27]_i_1_n_0 ;
  wire \phi_cnt[28]_i_1_n_0 ;
  wire \phi_cnt[29]_i_1_n_0 ;
  wire \phi_cnt[2]_i_1_n_0 ;
  wire \phi_cnt[30]_i_1_n_0 ;
  wire \phi_cnt[31]_i_1_n_0 ;
  wire \phi_cnt[3]_i_1_n_0 ;
  wire \phi_cnt[4]_i_1_n_0 ;
  wire \phi_cnt[5]_i_1_n_0 ;
  wire \phi_cnt[6]_i_1_n_0 ;
  wire \phi_cnt[7]_i_1_n_0 ;
  wire \phi_cnt[8]_i_1_n_0 ;
  wire \phi_cnt[9]_i_1_n_0 ;
  wire \phi_cnt_reg[12]_i_2_n_0 ;
  wire \phi_cnt_reg[12]_i_2_n_1 ;
  wire \phi_cnt_reg[12]_i_2_n_2 ;
  wire \phi_cnt_reg[12]_i_2_n_3 ;
  wire \phi_cnt_reg[16]_i_2_n_0 ;
  wire \phi_cnt_reg[16]_i_2_n_1 ;
  wire \phi_cnt_reg[16]_i_2_n_2 ;
  wire \phi_cnt_reg[16]_i_2_n_3 ;
  wire \phi_cnt_reg[20]_i_2_n_0 ;
  wire \phi_cnt_reg[20]_i_2_n_1 ;
  wire \phi_cnt_reg[20]_i_2_n_2 ;
  wire \phi_cnt_reg[20]_i_2_n_3 ;
  wire \phi_cnt_reg[24]_i_2_n_0 ;
  wire \phi_cnt_reg[24]_i_2_n_1 ;
  wire \phi_cnt_reg[24]_i_2_n_2 ;
  wire \phi_cnt_reg[24]_i_2_n_3 ;
  wire \phi_cnt_reg[28]_i_2_n_0 ;
  wire \phi_cnt_reg[28]_i_2_n_1 ;
  wire \phi_cnt_reg[28]_i_2_n_2 ;
  wire \phi_cnt_reg[28]_i_2_n_3 ;
  wire \phi_cnt_reg[31]_i_2_n_2 ;
  wire \phi_cnt_reg[31]_i_2_n_3 ;
  wire \phi_cnt_reg[4]_i_2_n_0 ;
  wire \phi_cnt_reg[4]_i_2_n_1 ;
  wire \phi_cnt_reg[4]_i_2_n_2 ;
  wire \phi_cnt_reg[4]_i_2_n_3 ;
  wire \phi_cnt_reg[8]_i_2_n_0 ;
  wire \phi_cnt_reg[8]_i_2_n_1 ;
  wire \phi_cnt_reg[8]_i_2_n_2 ;
  wire \phi_cnt_reg[8]_i_2_n_3 ;
  wire rd;
  wire reset;
  wire sig_in;
  wire [15:0]w_data;
  wire wr;
  wire [3:0]NLW_phi_cnt1_carry_O_UNCONNECTED;
  wire [3:0]NLW_phi_cnt1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_phi_cnt1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_phi_cnt1_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_phi_cnt1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_phi_cnt1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_phi_cnt1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_phi_cnt1_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:2]\NLW_phi_cnt_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_phi_cnt_reg[31]_i_2_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h00FF55AE)) 
    \/i_ 
       (.I0(fifoState[1]),
        .I1(blExc[1]),
        .I2(blExc[0]),
        .I3(fifoState[2]),
        .I4(fifoState[0]),
        .O(\/i__n_0 ));
  LUT6 #(
    .INIT(64'h5555115555151115)) 
    \/i_/i_ 
       (.I0(fifoState[0]),
        .I1(fifoState[1]),
        .I2(p_0_in),
        .I3(p_2_in),
        .I4(fifoState13_out),
        .I5(fifoState1),
        .O(\/i_/i__n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \/i___0 
       (.I0(\FSM_onehot_rdState_reg_n_0_[4] ),
        .I1(\FSM_onehot_rdState_reg_n_0_[3] ),
        .I2(\FSM_onehot_rdState_reg_n_0_[0] ),
        .I3(\FSM_onehot_rdState_reg_n_0_[2] ),
        .O(\/i___0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \/i___1 
       (.I0(\FSM_onehot_rdState_reg_n_0_[4] ),
        .I1(\FSM_onehot_rdState_reg_n_0_[1] ),
        .I2(i___1_i_1_n_0),
        .I3(\FSM_onehot_rdState_reg_n_0_[0] ),
        .I4(\FSM_onehot_rdState_reg_n_0_[3] ),
        .I5(\FSM_onehot_rdState_reg_n_0_[2] ),
        .O(\/i___1_n_0 ));
  FDRE \DOut_reg[0] 
       (.C(clk),
        .CE(cmd_fifo_n_2),
        .D(cmd_fifo_n_17),
        .Q(DOut[0]),
        .R(reset));
  FDRE \DOut_reg[1] 
       (.C(clk),
        .CE(cmd_fifo_n_2),
        .D(cmd_fifo_n_16),
        .Q(DOut[1]),
        .R(reset));
  FDRE \DOut_reg[2] 
       (.C(clk),
        .CE(cmd_fifo_n_2),
        .D(cmd_fifo_n_15),
        .Q(DOut[2]),
        .R(reset));
  FDRE \DOut_reg[3] 
       (.C(clk),
        .CE(cmd_fifo_n_2),
        .D(cmd_fifo_n_14),
        .Q(DOut[3]),
        .R(reset));
  FDRE \DOut_reg[4] 
       (.C(clk),
        .CE(cmd_fifo_n_2),
        .D(cmd_fifo_n_13),
        .Q(DOut[4]),
        .R(reset));
  FDRE \DOut_reg[5] 
       (.C(clk),
        .CE(cmd_fifo_n_2),
        .D(cmd_fifo_n_12),
        .Q(DOut[5]),
        .R(reset));
  FDRE \DOut_reg[6] 
       (.C(clk),
        .CE(cmd_fifo_n_2),
        .D(cmd_fifo_n_11),
        .Q(DOut[6]),
        .R(reset));
  FDRE \DOut_reg[7] 
       (.C(clk),
        .CE(cmd_fifo_n_2),
        .D(cmd_fifo_n_10),
        .Q(DOut[7]),
        .R(reset));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_rdState[4]_i_1 
       (.I0(\FSM_onehot_rdState_reg_n_0_[4] ),
        .I1(data_ena_0),
        .O(\FSM_onehot_rdState[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "rds_idle:00001,rds_idb:00010,rds_adl:00100,rds_adh:01000,rds_rdy:10000" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rdState_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_rdState[4]_i_1_n_0 ),
        .D(\FSM_onehot_rdState_reg_n_0_[4] ),
        .Q(\FSM_onehot_rdState_reg_n_0_[0] ),
        .S(reset));
  (* FSM_ENCODED_STATES = "rds_idle:00001,rds_idb:00010,rds_adl:00100,rds_adh:01000,rds_rdy:10000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdState_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_rdState[4]_i_1_n_0 ),
        .D(\FSM_onehot_rdState_reg_n_0_[0] ),
        .Q(\FSM_onehot_rdState_reg_n_0_[1] ),
        .R(reset));
  (* FSM_ENCODED_STATES = "rds_idle:00001,rds_idb:00010,rds_adl:00100,rds_adh:01000,rds_rdy:10000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdState_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_rdState[4]_i_1_n_0 ),
        .D(\FSM_onehot_rdState_reg_n_0_[1] ),
        .Q(\FSM_onehot_rdState_reg_n_0_[2] ),
        .R(reset));
  (* FSM_ENCODED_STATES = "rds_idle:00001,rds_idb:00010,rds_adl:00100,rds_adh:01000,rds_rdy:10000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdState_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_rdState[4]_i_1_n_0 ),
        .D(\FSM_onehot_rdState_reg_n_0_[2] ),
        .Q(\FSM_onehot_rdState_reg_n_0_[3] ),
        .R(reset));
  (* FSM_ENCODED_STATES = "rds_idle:00001,rds_idb:00010,rds_adl:00100,rds_adh:01000,rds_rdy:10000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdState_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_rdState[4]_i_1_n_0 ),
        .D(\FSM_onehot_rdState_reg_n_0_[3] ),
        .Q(\FSM_onehot_rdState_reg_n_0_[4] ),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFAAAA5100AA0000)) 
    \FSM_sequential_fifoState[2]_i_1 
       (.I0(fifoState[1]),
        .I1(blExc[1]),
        .I2(blExc[0]),
        .I3(fifoState[2]),
        .I4(fifoState[0]),
        .I5(fifoState[2]),
        .O(\FSM_sequential_fifoState[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "f_idle:000,f_rd_chk:001,f_sel:010,f_out:011,f_read:100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_fifoState_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p1_edges_n_1),
        .Q(fifoState[0]),
        .R(reset));
  (* FSM_ENCODED_STATES = "f_idle:000,f_rd_chk:001,f_sel:010,f_out:011,f_read:100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_fifoState_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(cmd_fifo_n_1),
        .Q(fifoState[1]),
        .R(reset));
  (* FSM_ENCODED_STATES = "f_idle:000,f_rd_chk:001,f_sel:010,f_out:011,f_read:100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_fifoState_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_fifoState[2]_i_1_n_0 ),
        .Q(fifoState[2]),
        .R(reset));
  FDRE \MUX_reg[0] 
       (.C(clk),
        .CE(cmd_fifo_n_2),
        .D(cmd_fifo_n_9),
        .Q(MUX[0]),
        .R(reset));
  FDRE \MUX_reg[1] 
       (.C(clk),
        .CE(cmd_fifo_n_2),
        .D(cmd_fifo_n_8),
        .Q(MUX[1]),
        .R(reset));
  FDRE \MUX_reg[2] 
       (.C(clk),
        .CE(cmd_fifo_n_2),
        .D(cmd_fifo_n_7),
        .Q(MUX[2]),
        .R(reset));
  LUT2 #(
    .INIT(4'hE)) 
    SEL_i_3
       (.I0(\phiState_reg_n_0_[1] ),
        .I1(\phiState_reg_n_0_[0] ),
        .O(SEL_i_3_n_0));
  FDRE SEL_reg
       (.C(clk),
        .CE(1'b1),
        .D(p2_edges_n_1),
        .Q(SEL),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \blClkIn[0]_i_1 
       (.I0(blClkIn[1]),
        .I1(GPIOPortWr[15]),
        .O(\blClkIn[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \blClkIn[1]_i_1 
       (.I0(blClkIn[1]),
        .I1(GPIOPortWr[15]),
        .I2(blClkIn[0]),
        .O(\blClkIn[1]_i_1_n_0 ));
  FDRE \blClkIn_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\blClkIn[0]_i_1_n_0 ),
        .Q(blClkIn[0]),
        .R(blExc0));
  FDRE \blClkIn_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\blClkIn[1]_i_1_n_0 ),
        .Q(blClkIn[1]),
        .R(blExc0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \blClkOut[0]_i_1 
       (.I0(blClkOut[1]),
        .I1(GPIOPortWr[16]),
        .O(\blClkOut[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \blClkOut[1]_i_1 
       (.I0(blClkOut[1]),
        .I1(GPIOPortWr[16]),
        .I2(blClkOut[0]),
        .O(\blClkOut[1]_i_1_n_0 ));
  FDRE \blClkOut_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\blClkOut[0]_i_1_n_0 ),
        .Q(blClkOut[0]),
        .R(blExc0));
  FDRE \blClkOut_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\blClkOut[1]_i_1_n_0 ),
        .Q(blClkOut[1]),
        .R(blExc0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \blExc[0]_i_1 
       (.I0(blExc[1]),
        .I1(GPIOPortWr[19]),
        .O(\blExc[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \blExc[1]_i_1 
       (.I0(reset),
        .I1(GPIOPortWr[20]),
        .O(blExc0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \blExc[1]_i_2 
       (.I0(blExc[1]),
        .I1(GPIOPortWr[19]),
        .I2(blExc[0]),
        .O(\blExc[1]_i_2_n_0 ));
  FDRE \blExc_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\blExc[0]_i_1_n_0 ),
        .Q(blExc[0]),
        .R(blExc0));
  FDRE \blExc_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\blExc[1]_i_2_n_0 ),
        .Q(blExc[1]),
        .R(blExc0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \blRdData[0]_i_1 
       (.I0(blRdData[1]),
        .I1(GPIOPortWr[18]),
        .O(\blRdData[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \blRdData[1]_i_1 
       (.I0(blRdData[1]),
        .I1(GPIOPortWr[18]),
        .I2(blRdData[0]),
        .O(\blRdData[1]_i_1_n_0 ));
  FDRE \blRdData_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\blRdData[0]_i_1_n_0 ),
        .Q(blRdData[0]),
        .R(blExc0));
  FDRE \blRdData_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\blRdData[1]_i_1_n_0 ),
        .Q(blRdData[1]),
        .R(blExc0));
  GPIOTest_GPIOInterface_0_0_sr_2B_16bit byte_2_word
       (.D(w_data),
        .DIn(DIn),
        .E(data_ena),
        .clk(clk),
        .reset(reset));
  GPIOTest_GPIOInterface_0_0_fifo cmd_fifo
       (.D({cmd_fifo_n_3,cmd_fifo_n_4,cmd_fifo_n_5,cmd_fifo_n_6}),
        .\DOut_reg[7] ({cmd_fifo_n_10,cmd_fifo_n_11,cmd_fifo_n_12,cmd_fifo_n_13,cmd_fifo_n_14,cmd_fifo_n_15,cmd_fifo_n_16,cmd_fifo_n_17}),
        .E(cmd_fifo_n_2),
        .\FSM_sequential_fifoState_reg[1] (cmd_fifo_n_1),
        .\FSM_sequential_fifoState_reg[1]_0 (\/i__n_0 ),
        .GPIOPortWr(GPIOPortWr[14:0]),
        .\MUX_reg[2] ({cmd_fifo_n_7,cmd_fifo_n_8,cmd_fifo_n_9}),
        .blClkIn(blClkIn),
        .clk(clk),
        .fifo_rd_reg(cmd_fifo_n_18),
        .full(full),
        .in0(fifoState[1]),
        .out(fifoState),
        .rd(rd),
        .reset(reset));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEFEEEEE)) 
    data_ena_i_1
       (.I0(\FSM_onehot_rdState_reg_n_0_[2] ),
        .I1(\FSM_onehot_rdState_reg_n_0_[3] ),
        .I2(\FSM_onehot_rdState_reg_n_0_[0] ),
        .I3(blRdData[0]),
        .I4(blRdData[1]),
        .I5(\FSM_onehot_rdState_reg_n_0_[1] ),
        .O(data_ena_0));
  FDRE data_ena_reg
       (.C(clk),
        .CE(1'b1),
        .D(data_ena_0),
        .Q(data_ena),
        .R(reset));
  GPIOTest_GPIOInterface_0_0_Delay dly_phi1
       (.clk(clk),
        .phi1(phi1),
        .\phiState_reg[0] (\phiState_reg_n_0_[0] ),
        .\phiState_reg[1] (\phiState_reg_n_0_[1] ),
        .sig_in(sig_in));
  GPIOTest_GPIOInterface_0_0_Delay_0 dly_phi2
       (.clk(clk),
        .delay_reg_reg(dly_phi2_n_0),
        .phi2(phi2),
        .\phiState_reg[0] (\phiState_reg_n_0_[0] ),
        .\phiState_reg[1] (\phiState_reg_n_0_[1] ));
  FDRE \edges_reg[0] 
       (.C(clk),
        .CE(cmd_fifo_n_2),
        .D(cmd_fifo_n_6),
        .Q(\edges_reg_n_0_[0] ),
        .R(reset));
  FDRE \edges_reg[1] 
       (.C(clk),
        .CE(cmd_fifo_n_2),
        .D(cmd_fifo_n_5),
        .Q(p_2_in),
        .R(reset));
  FDRE \edges_reg[2] 
       (.C(clk),
        .CE(cmd_fifo_n_2),
        .D(cmd_fifo_n_4),
        .Q(p_0_in3_in),
        .R(reset));
  FDRE \edges_reg[3] 
       (.C(clk),
        .CE(cmd_fifo_n_2),
        .D(cmd_fifo_n_3),
        .Q(p_0_in),
        .R(reset));
  LUT3 #(
    .INIT(8'hFE)) 
    execState
       (.I0(fifoState[1]),
        .I1(fifoState[0]),
        .I2(fifoState[2]),
        .O(GPIOPortRd[18]));
  FDRE #(
    .INIT(1'b0)) 
    fifo_rd_reg
       (.C(clk),
        .CE(1'b1),
        .D(cmd_fifo_n_18),
        .Q(rd),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    i___1_i_1
       (.I0(blRdData[1]),
        .I1(blRdData[0]),
        .O(i___1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1
       (.I0(phi_cnt[14]),
        .I1(phi_cnt[15]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2
       (.I0(phi_cnt[12]),
        .I1(phi_cnt[13]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_3
       (.I0(phi_cnt[10]),
        .I1(phi_cnt[11]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_4
       (.I0(phi_cnt[8]),
        .I1(phi_cnt[9]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_5
       (.I0(phi_cnt[15]),
        .I1(phi_cnt[14]),
        .O(i__carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_6
       (.I0(phi_cnt[13]),
        .I1(phi_cnt[12]),
        .O(i__carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_7
       (.I0(phi_cnt[11]),
        .I1(phi_cnt[10]),
        .O(i__carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_8
       (.I0(phi_cnt[9]),
        .I1(phi_cnt[8]),
        .O(i__carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_1
       (.I0(phi_cnt[22]),
        .I1(phi_cnt[23]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_2
       (.I0(phi_cnt[20]),
        .I1(phi_cnt[21]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_3
       (.I0(phi_cnt[18]),
        .I1(phi_cnt[19]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_4
       (.I0(phi_cnt[16]),
        .I1(phi_cnt[17]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_5
       (.I0(phi_cnt[23]),
        .I1(phi_cnt[22]),
        .O(i__carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_6
       (.I0(phi_cnt[21]),
        .I1(phi_cnt[20]),
        .O(i__carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_7
       (.I0(phi_cnt[19]),
        .I1(phi_cnt[18]),
        .O(i__carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_8
       (.I0(phi_cnt[17]),
        .I1(phi_cnt[16]),
        .O(i__carry__1_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__2_i_1
       (.I0(phi_cnt[30]),
        .I1(phi_cnt[31]),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_2
       (.I0(phi_cnt[28]),
        .I1(phi_cnt[29]),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_3
       (.I0(phi_cnt[26]),
        .I1(phi_cnt[27]),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_4
       (.I0(phi_cnt[24]),
        .I1(phi_cnt[25]),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_5
       (.I0(phi_cnt[31]),
        .I1(phi_cnt[30]),
        .O(i__carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_6
       (.I0(phi_cnt[29]),
        .I1(phi_cnt[28]),
        .O(i__carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_7
       (.I0(phi_cnt[27]),
        .I1(phi_cnt[26]),
        .O(i__carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_8
       (.I0(phi_cnt[25]),
        .I1(phi_cnt[24]),
        .O(i__carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1
       (.I0(phi_cnt[6]),
        .I1(phi_cnt[7]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_2
       (.I0(phi_cnt[4]),
        .I1(phi_cnt[5]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_3
       (.I0(phi_cnt[0]),
        .I1(phi_cnt[1]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4
       (.I0(phi_cnt[7]),
        .I1(phi_cnt[6]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5
       (.I0(phi_cnt[5]),
        .I1(phi_cnt[4]),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_6
       (.I0(phi_cnt[2]),
        .I1(phi_cnt[3]),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_7
       (.I0(phi_cnt[1]),
        .I1(phi_cnt[0]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    nen_adh_i_1
       (.I0(\FSM_onehot_rdState_reg_n_0_[4] ),
        .I1(\FSM_onehot_rdState_reg_n_0_[3] ),
        .I2(\FSM_onehot_rdState_reg_n_0_[0] ),
        .I3(\FSM_onehot_rdState_reg_n_0_[1] ),
        .O(nen_adh_i_1_n_0));
  FDSE nen_adh_reg
       (.C(clk),
        .CE(1'b1),
        .D(nen_adh_i_1_n_0),
        .Q(nen_adh),
        .S(reset));
  FDSE nen_adl_reg
       (.C(clk),
        .CE(1'b1),
        .D(\/i___0_n_0 ),
        .Q(nen_adl),
        .S(reset));
  LUT4 #(
    .INIT(16'hFFFE)) 
    nen_ctrl0_i_1
       (.I0(\FSM_onehot_rdState_reg_n_0_[4] ),
        .I1(\FSM_onehot_rdState_reg_n_0_[2] ),
        .I2(\FSM_onehot_rdState_reg_n_0_[0] ),
        .I3(\FSM_onehot_rdState_reg_n_0_[1] ),
        .O(nen_ctrl0_i_1_n_0));
  FDSE nen_ctrl0_reg
       (.C(clk),
        .CE(1'b1),
        .D(nen_ctrl0_i_1_n_0),
        .Q(nen_ctrl0),
        .S(reset));
  FDSE nen_idb_reg
       (.C(clk),
        .CE(1'b1),
        .D(\/i___1_n_0 ),
        .Q(nen_idb),
        .S(reset));
  LUT4 #(
    .INIT(16'hBBB8)) 
    out_fifo_wr_i_1
       (.I0(wr),
        .I1(reset),
        .I2(\FSM_onehot_rdState_reg_n_0_[2] ),
        .I3(\FSM_onehot_rdState_reg_n_0_[4] ),
        .O(out_fifo_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    out_fifo_wr_reg
       (.C(clk),
        .CE(1'b1),
        .D(out_fifo_wr_i_1_n_0),
        .Q(wr),
        .R(1'b0));
  GPIOTest_GPIOInterface_0_0_EdgeDetect p1_edges
       (.\FSM_sequential_fifoState_reg[0] (p1_edges_n_1),
        .\FSM_sequential_fifoState_reg[0]_0 (\/i_/i__n_0 ),
        .\FSM_sequential_fifoState_reg[1] (\/i__n_0 ),
        .Q(\edges_reg_n_0_[0] ),
        .clk(clk),
        .delay_reg(delay_reg),
        .fifoState13_out(fifoState13_out),
        .in0(fifoState[0]),
        .\phiState_reg[0] (\phiState_reg_n_0_[0] ),
        .\phiState_reg[1] (\phiState_reg_n_0_[1] ),
        .reset(reset),
        .sig_in(sig_in));
  GPIOTest_GPIOInterface_0_0_EdgeDetect_1 p2_edges
       (.Q({p_0_in,p_0_in3_in,p_2_in,\edges_reg_n_0_[0] }),
        .SEL(SEL),
        .SEL_reg(p2_edges_n_1),
        .clk(clk),
        .delay_reg(delay_reg),
        .fifoState1(fifoState1),
        .out(fifoState),
        .\phiState_reg[0] (\phiState_reg_n_0_[0] ),
        .\phiState_reg[1] (dly_phi2_n_0),
        .\phiState_reg[1]_0 (SEL_i_3_n_0),
        .\phiState_reg[1]_1 (\phiState_reg_n_0_[1] ),
        .reset(reset));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hCC2E)) 
    \phiState[0]_i_1 
       (.I0(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I1(\phiState_reg_n_0_[0] ),
        .I2(phi_cnt1_carry__2_n_0),
        .I3(reset),
        .O(\phiState[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \phiState[1]_i_1 
       (.I0(\phiState_reg_n_0_[0] ),
        .I1(phi_cnt1_carry__2_n_0),
        .I2(reset),
        .I3(\phiState_reg_n_0_[1] ),
        .O(\phiState[1]_i_1_n_0 ));
  FDRE \phiState_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\phiState[0]_i_1_n_0 ),
        .Q(\phiState_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \phiState_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\phiState[1]_i_1_n_0 ),
        .Q(\phiState_reg_n_0_[1] ),
        .R(1'b0));
  CARRY4 phi_cnt1_carry
       (.CI(1'b0),
        .CO({phi_cnt1_carry_n_0,phi_cnt1_carry_n_1,phi_cnt1_carry_n_2,phi_cnt1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({phi_cnt1_carry_i_1_n_0,phi_cnt1_carry_i_2_n_0,phi_cnt1_carry_i_3_n_0,phi_cnt1_carry_i_4_n_0}),
        .O(NLW_phi_cnt1_carry_O_UNCONNECTED[3:0]),
        .S({phi_cnt1_carry_i_5_n_0,phi_cnt1_carry_i_6_n_0,phi_cnt1_carry_i_7_n_0,phi_cnt1_carry_i_8_n_0}));
  CARRY4 phi_cnt1_carry__0
       (.CI(phi_cnt1_carry_n_0),
        .CO({phi_cnt1_carry__0_n_0,phi_cnt1_carry__0_n_1,phi_cnt1_carry__0_n_2,phi_cnt1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({phi_cnt1_carry__0_i_1_n_0,phi_cnt1_carry__0_i_2_n_0,phi_cnt1_carry__0_i_3_n_0,phi_cnt1_carry__0_i_4_n_0}),
        .O(NLW_phi_cnt1_carry__0_O_UNCONNECTED[3:0]),
        .S({phi_cnt1_carry__0_i_5_n_0,phi_cnt1_carry__0_i_6_n_0,phi_cnt1_carry__0_i_7_n_0,phi_cnt1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry__0_i_1
       (.I0(phi_cnt[14]),
        .I1(phi_cnt[15]),
        .O(phi_cnt1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry__0_i_2
       (.I0(phi_cnt[12]),
        .I1(phi_cnt[13]),
        .O(phi_cnt1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry__0_i_3
       (.I0(phi_cnt[10]),
        .I1(phi_cnt[11]),
        .O(phi_cnt1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry__0_i_4
       (.I0(phi_cnt[8]),
        .I1(phi_cnt[9]),
        .O(phi_cnt1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__0_i_5
       (.I0(phi_cnt[15]),
        .I1(phi_cnt[14]),
        .O(phi_cnt1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__0_i_6
       (.I0(phi_cnt[13]),
        .I1(phi_cnt[12]),
        .O(phi_cnt1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__0_i_7
       (.I0(phi_cnt[11]),
        .I1(phi_cnt[10]),
        .O(phi_cnt1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__0_i_8
       (.I0(phi_cnt[9]),
        .I1(phi_cnt[8]),
        .O(phi_cnt1_carry__0_i_8_n_0));
  CARRY4 phi_cnt1_carry__1
       (.CI(phi_cnt1_carry__0_n_0),
        .CO({phi_cnt1_carry__1_n_0,phi_cnt1_carry__1_n_1,phi_cnt1_carry__1_n_2,phi_cnt1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({phi_cnt1_carry__1_i_1_n_0,phi_cnt1_carry__1_i_2_n_0,phi_cnt1_carry__1_i_3_n_0,phi_cnt1_carry__1_i_4_n_0}),
        .O(NLW_phi_cnt1_carry__1_O_UNCONNECTED[3:0]),
        .S({phi_cnt1_carry__1_i_5_n_0,phi_cnt1_carry__1_i_6_n_0,phi_cnt1_carry__1_i_7_n_0,phi_cnt1_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry__1_i_1
       (.I0(phi_cnt[22]),
        .I1(phi_cnt[23]),
        .O(phi_cnt1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry__1_i_2
       (.I0(phi_cnt[20]),
        .I1(phi_cnt[21]),
        .O(phi_cnt1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry__1_i_3
       (.I0(phi_cnt[18]),
        .I1(phi_cnt[19]),
        .O(phi_cnt1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry__1_i_4
       (.I0(phi_cnt[16]),
        .I1(phi_cnt[17]),
        .O(phi_cnt1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__1_i_5
       (.I0(phi_cnt[23]),
        .I1(phi_cnt[22]),
        .O(phi_cnt1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__1_i_6
       (.I0(phi_cnt[21]),
        .I1(phi_cnt[20]),
        .O(phi_cnt1_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__1_i_7
       (.I0(phi_cnt[19]),
        .I1(phi_cnt[18]),
        .O(phi_cnt1_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__1_i_8
       (.I0(phi_cnt[17]),
        .I1(phi_cnt[16]),
        .O(phi_cnt1_carry__1_i_8_n_0));
  CARRY4 phi_cnt1_carry__2
       (.CI(phi_cnt1_carry__1_n_0),
        .CO({phi_cnt1_carry__2_n_0,phi_cnt1_carry__2_n_1,phi_cnt1_carry__2_n_2,phi_cnt1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({phi_cnt1_carry__2_i_1_n_0,phi_cnt1_carry__2_i_2_n_0,phi_cnt1_carry__2_i_3_n_0,phi_cnt1_carry__2_i_4_n_0}),
        .O(NLW_phi_cnt1_carry__2_O_UNCONNECTED[3:0]),
        .S({phi_cnt1_carry__2_i_5_n_0,phi_cnt1_carry__2_i_6_n_0,phi_cnt1_carry__2_i_7_n_0,phi_cnt1_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    phi_cnt1_carry__2_i_1
       (.I0(phi_cnt[30]),
        .I1(phi_cnt[31]),
        .O(phi_cnt1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry__2_i_2
       (.I0(phi_cnt[28]),
        .I1(phi_cnt[29]),
        .O(phi_cnt1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry__2_i_3
       (.I0(phi_cnt[26]),
        .I1(phi_cnt[27]),
        .O(phi_cnt1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry__2_i_4
       (.I0(phi_cnt[24]),
        .I1(phi_cnt[25]),
        .O(phi_cnt1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__2_i_5
       (.I0(phi_cnt[31]),
        .I1(phi_cnt[30]),
        .O(phi_cnt1_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__2_i_6
       (.I0(phi_cnt[29]),
        .I1(phi_cnt[28]),
        .O(phi_cnt1_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__2_i_7
       (.I0(phi_cnt[27]),
        .I1(phi_cnt[26]),
        .O(phi_cnt1_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__2_i_8
       (.I0(phi_cnt[25]),
        .I1(phi_cnt[24]),
        .O(phi_cnt1_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry_i_1
       (.I0(phi_cnt[6]),
        .I1(phi_cnt[7]),
        .O(phi_cnt1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry_i_2
       (.I0(phi_cnt[5]),
        .I1(phi_cnt[4]),
        .O(phi_cnt1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry_i_3
       (.I0(phi_cnt[3]),
        .I1(phi_cnt[2]),
        .O(phi_cnt1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    phi_cnt1_carry_i_4
       (.I0(phi_cnt[0]),
        .I1(phi_cnt[1]),
        .O(phi_cnt1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry_i_5
       (.I0(phi_cnt[7]),
        .I1(phi_cnt[6]),
        .O(phi_cnt1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry_i_6
       (.I0(phi_cnt[4]),
        .I1(phi_cnt[5]),
        .O(phi_cnt1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry_i_7
       (.I0(phi_cnt[2]),
        .I1(phi_cnt[3]),
        .O(phi_cnt1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    phi_cnt1_carry_i_8
       (.I0(phi_cnt[1]),
        .I1(phi_cnt[0]),
        .O(phi_cnt1_carry_i_8_n_0));
  CARRY4 \phi_cnt1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\phi_cnt1_inferred__0/i__carry_n_0 ,\phi_cnt1_inferred__0/i__carry_n_1 ,\phi_cnt1_inferred__0/i__carry_n_2 ,\phi_cnt1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,1'b0,i__carry_i_3_n_0}),
        .O(\NLW_phi_cnt1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0}));
  CARRY4 \phi_cnt1_inferred__0/i__carry__0 
       (.CI(\phi_cnt1_inferred__0/i__carry_n_0 ),
        .CO({\phi_cnt1_inferred__0/i__carry__0_n_0 ,\phi_cnt1_inferred__0/i__carry__0_n_1 ,\phi_cnt1_inferred__0/i__carry__0_n_2 ,\phi_cnt1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_phi_cnt1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  CARRY4 \phi_cnt1_inferred__0/i__carry__1 
       (.CI(\phi_cnt1_inferred__0/i__carry__0_n_0 ),
        .CO({\phi_cnt1_inferred__0/i__carry__1_n_0 ,\phi_cnt1_inferred__0/i__carry__1_n_1 ,\phi_cnt1_inferred__0/i__carry__1_n_2 ,\phi_cnt1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(\NLW_phi_cnt1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  CARRY4 \phi_cnt1_inferred__0/i__carry__2 
       (.CI(\phi_cnt1_inferred__0/i__carry__1_n_0 ),
        .CO({\phi_cnt1_inferred__0/i__carry__2_n_0 ,\phi_cnt1_inferred__0/i__carry__2_n_1 ,\phi_cnt1_inferred__0/i__carry__2_n_2 ,\phi_cnt1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}),
        .O(\NLW_phi_cnt1_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0151)) 
    \phi_cnt[0]_i_1 
       (.I0(phi_cnt[0]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[10]_i_1 
       (.I0(phi_cnt0[10]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[11]_i_1 
       (.I0(phi_cnt0[11]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[12]_i_1 
       (.I0(phi_cnt0[12]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[13]_i_1 
       (.I0(phi_cnt0[13]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[14]_i_1 
       (.I0(phi_cnt0[14]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[15]_i_1 
       (.I0(phi_cnt0[15]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[16]_i_1 
       (.I0(phi_cnt0[16]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[17]_i_1 
       (.I0(phi_cnt0[17]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[18]_i_1 
       (.I0(phi_cnt0[18]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[19]_i_1 
       (.I0(phi_cnt0[19]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[1]_i_1 
       (.I0(phi_cnt0[1]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[20]_i_1 
       (.I0(phi_cnt0[20]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[21]_i_1 
       (.I0(phi_cnt0[21]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[22]_i_1 
       (.I0(phi_cnt0[22]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[23]_i_1 
       (.I0(phi_cnt0[23]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[24]_i_1 
       (.I0(phi_cnt0[24]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[25]_i_1 
       (.I0(phi_cnt0[25]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[26]_i_1 
       (.I0(phi_cnt0[26]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[27]_i_1 
       (.I0(phi_cnt0[27]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[28]_i_1 
       (.I0(phi_cnt0[28]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[29]_i_1 
       (.I0(phi_cnt0[29]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[2]_i_1 
       (.I0(phi_cnt0[2]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[30]_i_1 
       (.I0(phi_cnt0[30]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[31]_i_1 
       (.I0(phi_cnt0[31]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[3]_i_1 
       (.I0(phi_cnt0[3]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[4]_i_1 
       (.I0(phi_cnt0[4]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[5]_i_1 
       (.I0(phi_cnt0[5]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[6]_i_1 
       (.I0(phi_cnt0[6]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[7]_i_1 
       (.I0(phi_cnt0[7]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[8]_i_1 
       (.I0(phi_cnt0[8]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \phi_cnt[9]_i_1 
       (.I0(phi_cnt0[9]),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phiState_reg_n_0_[0] ),
        .I3(phi_cnt1_carry__2_n_0),
        .O(\phi_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[0]_i_1_n_0 ),
        .Q(phi_cnt[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[10]_i_1_n_0 ),
        .Q(phi_cnt[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[11]_i_1_n_0 ),
        .Q(phi_cnt[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[12]_i_1_n_0 ),
        .Q(phi_cnt[12]),
        .R(reset));
  CARRY4 \phi_cnt_reg[12]_i_2 
       (.CI(\phi_cnt_reg[8]_i_2_n_0 ),
        .CO({\phi_cnt_reg[12]_i_2_n_0 ,\phi_cnt_reg[12]_i_2_n_1 ,\phi_cnt_reg[12]_i_2_n_2 ,\phi_cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(phi_cnt0[12:9]),
        .S(phi_cnt[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[13]_i_1_n_0 ),
        .Q(phi_cnt[13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[14]_i_1_n_0 ),
        .Q(phi_cnt[14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[15]_i_1_n_0 ),
        .Q(phi_cnt[15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[16]_i_1_n_0 ),
        .Q(phi_cnt[16]),
        .R(reset));
  CARRY4 \phi_cnt_reg[16]_i_2 
       (.CI(\phi_cnt_reg[12]_i_2_n_0 ),
        .CO({\phi_cnt_reg[16]_i_2_n_0 ,\phi_cnt_reg[16]_i_2_n_1 ,\phi_cnt_reg[16]_i_2_n_2 ,\phi_cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(phi_cnt0[16:13]),
        .S(phi_cnt[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[17]_i_1_n_0 ),
        .Q(phi_cnt[17]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[18]_i_1_n_0 ),
        .Q(phi_cnt[18]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[19]_i_1_n_0 ),
        .Q(phi_cnt[19]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[1]_i_1_n_0 ),
        .Q(phi_cnt[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[20]_i_1_n_0 ),
        .Q(phi_cnt[20]),
        .R(reset));
  CARRY4 \phi_cnt_reg[20]_i_2 
       (.CI(\phi_cnt_reg[16]_i_2_n_0 ),
        .CO({\phi_cnt_reg[20]_i_2_n_0 ,\phi_cnt_reg[20]_i_2_n_1 ,\phi_cnt_reg[20]_i_2_n_2 ,\phi_cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(phi_cnt0[20:17]),
        .S(phi_cnt[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[21]_i_1_n_0 ),
        .Q(phi_cnt[21]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[22]_i_1_n_0 ),
        .Q(phi_cnt[22]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[23]_i_1_n_0 ),
        .Q(phi_cnt[23]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[24]_i_1_n_0 ),
        .Q(phi_cnt[24]),
        .R(reset));
  CARRY4 \phi_cnt_reg[24]_i_2 
       (.CI(\phi_cnt_reg[20]_i_2_n_0 ),
        .CO({\phi_cnt_reg[24]_i_2_n_0 ,\phi_cnt_reg[24]_i_2_n_1 ,\phi_cnt_reg[24]_i_2_n_2 ,\phi_cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(phi_cnt0[24:21]),
        .S(phi_cnt[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[25]_i_1_n_0 ),
        .Q(phi_cnt[25]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[26]_i_1_n_0 ),
        .Q(phi_cnt[26]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[27]_i_1_n_0 ),
        .Q(phi_cnt[27]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[28]_i_1_n_0 ),
        .Q(phi_cnt[28]),
        .R(reset));
  CARRY4 \phi_cnt_reg[28]_i_2 
       (.CI(\phi_cnt_reg[24]_i_2_n_0 ),
        .CO({\phi_cnt_reg[28]_i_2_n_0 ,\phi_cnt_reg[28]_i_2_n_1 ,\phi_cnt_reg[28]_i_2_n_2 ,\phi_cnt_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(phi_cnt0[28:25]),
        .S(phi_cnt[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[29]_i_1_n_0 ),
        .Q(phi_cnt[29]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[2]_i_1_n_0 ),
        .Q(phi_cnt[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[30]_i_1_n_0 ),
        .Q(phi_cnt[30]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[31]_i_1_n_0 ),
        .Q(phi_cnt[31]),
        .R(reset));
  CARRY4 \phi_cnt_reg[31]_i_2 
       (.CI(\phi_cnt_reg[28]_i_2_n_0 ),
        .CO({\NLW_phi_cnt_reg[31]_i_2_CO_UNCONNECTED [3:2],\phi_cnt_reg[31]_i_2_n_2 ,\phi_cnt_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_phi_cnt_reg[31]_i_2_O_UNCONNECTED [3],phi_cnt0[31:29]}),
        .S({1'b0,phi_cnt[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[3]_i_1_n_0 ),
        .Q(phi_cnt[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[4]_i_1_n_0 ),
        .Q(phi_cnt[4]),
        .R(reset));
  CARRY4 \phi_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\phi_cnt_reg[4]_i_2_n_0 ,\phi_cnt_reg[4]_i_2_n_1 ,\phi_cnt_reg[4]_i_2_n_2 ,\phi_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(phi_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(phi_cnt0[4:1]),
        .S(phi_cnt[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[5]_i_1_n_0 ),
        .Q(phi_cnt[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[6]_i_1_n_0 ),
        .Q(phi_cnt[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[7]_i_1_n_0 ),
        .Q(phi_cnt[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[8]_i_1_n_0 ),
        .Q(phi_cnt[8]),
        .R(reset));
  CARRY4 \phi_cnt_reg[8]_i_2 
       (.CI(\phi_cnt_reg[4]_i_2_n_0 ),
        .CO({\phi_cnt_reg[8]_i_2_n_0 ,\phi_cnt_reg[8]_i_2_n_1 ,\phi_cnt_reg[8]_i_2_n_2 ,\phi_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(phi_cnt0[8:5]),
        .S(phi_cnt[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\phi_cnt[9]_i_1_n_0 ),
        .Q(phi_cnt[9]),
        .R(reset));
  GPIOTest_GPIOInterface_0_0_fifo_2 rd_data_fifo
       (.D(w_data),
        .GPIOPortRd(GPIOPortRd[17:0]),
        .GPIOPortWr(GPIOPortWr[17]),
        .blClkOut(blClkOut),
        .clk(clk),
        .full(full),
        .reset(reset),
        .wr(wr));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module GPIOTest_GPIOInterface_0_0_fifo
   (full,
    \FSM_sequential_fifoState_reg[1] ,
    E,
    D,
    \MUX_reg[2] ,
    \DOut_reg[7] ,
    fifo_rd_reg,
    clk,
    reset,
    out,
    \FSM_sequential_fifoState_reg[1]_0 ,
    in0,
    blClkIn,
    rd,
    GPIOPortWr);
  output full;
  output \FSM_sequential_fifoState_reg[1] ;
  output [0:0]E;
  output [3:0]D;
  output [2:0]\MUX_reg[2] ;
  output [7:0]\DOut_reg[7] ;
  output fifo_rd_reg;
  input clk;
  input reset;
  input [2:0]out;
  input \FSM_sequential_fifoState_reg[1]_0 ;
  input [0:0]in0;
  input [1:0]blClkIn;
  input rd;
  input [14:0]GPIOPortWr;

  wire [3:0]D;
  wire \DOut[0]_i_4_n_0 ;
  wire \DOut[0]_i_5_n_0 ;
  wire \DOut[0]_i_6_n_0 ;
  wire \DOut[0]_i_7_n_0 ;
  wire \DOut[1]_i_4_n_0 ;
  wire \DOut[1]_i_5_n_0 ;
  wire \DOut[1]_i_6_n_0 ;
  wire \DOut[1]_i_7_n_0 ;
  wire \DOut[2]_i_4_n_0 ;
  wire \DOut[2]_i_5_n_0 ;
  wire \DOut[2]_i_6_n_0 ;
  wire \DOut[2]_i_7_n_0 ;
  wire \DOut[3]_i_4_n_0 ;
  wire \DOut[3]_i_5_n_0 ;
  wire \DOut[3]_i_6_n_0 ;
  wire \DOut[3]_i_7_n_0 ;
  wire \DOut[4]_i_4_n_0 ;
  wire \DOut[4]_i_5_n_0 ;
  wire \DOut[4]_i_6_n_0 ;
  wire \DOut[4]_i_7_n_0 ;
  wire \DOut[5]_i_4_n_0 ;
  wire \DOut[5]_i_5_n_0 ;
  wire \DOut[5]_i_6_n_0 ;
  wire \DOut[5]_i_7_n_0 ;
  wire \DOut[6]_i_4_n_0 ;
  wire \DOut[6]_i_5_n_0 ;
  wire \DOut[6]_i_6_n_0 ;
  wire \DOut[6]_i_7_n_0 ;
  wire \DOut[7]_i_5_n_0 ;
  wire \DOut[7]_i_6_n_0 ;
  wire \DOut[7]_i_7_n_0 ;
  wire \DOut[7]_i_8_n_0 ;
  wire \DOut_reg[0]_i_2_n_0 ;
  wire \DOut_reg[0]_i_3_n_0 ;
  wire \DOut_reg[1]_i_2_n_0 ;
  wire \DOut_reg[1]_i_3_n_0 ;
  wire \DOut_reg[2]_i_2_n_0 ;
  wire \DOut_reg[2]_i_3_n_0 ;
  wire \DOut_reg[3]_i_2_n_0 ;
  wire \DOut_reg[3]_i_3_n_0 ;
  wire \DOut_reg[4]_i_2_n_0 ;
  wire \DOut_reg[4]_i_3_n_0 ;
  wire \DOut_reg[5]_i_2_n_0 ;
  wire \DOut_reg[5]_i_3_n_0 ;
  wire \DOut_reg[6]_i_2_n_0 ;
  wire \DOut_reg[6]_i_3_n_0 ;
  wire [7:0]\DOut_reg[7] ;
  wire \DOut_reg[7]_i_3_n_0 ;
  wire \DOut_reg[7]_i_4_n_0 ;
  wire [0:0]E;
  wire \FSM_sequential_fifoState_reg[1] ;
  wire \FSM_sequential_fifoState_reg[1]_0 ;
  wire [14:0]GPIOPortWr;
  wire \MUX[0]_i_4_n_0 ;
  wire \MUX[0]_i_5_n_0 ;
  wire \MUX[0]_i_6_n_0 ;
  wire \MUX[0]_i_7_n_0 ;
  wire \MUX[1]_i_4_n_0 ;
  wire \MUX[1]_i_5_n_0 ;
  wire \MUX[1]_i_6_n_0 ;
  wire \MUX[1]_i_7_n_0 ;
  wire \MUX[2]_i_4_n_0 ;
  wire \MUX[2]_i_5_n_0 ;
  wire \MUX[2]_i_6_n_0 ;
  wire \MUX[2]_i_7_n_0 ;
  wire \MUX_reg[0]_i_2_n_0 ;
  wire \MUX_reg[0]_i_3_n_0 ;
  wire \MUX_reg[1]_i_2_n_0 ;
  wire \MUX_reg[1]_i_3_n_0 ;
  wire [2:0]\MUX_reg[2] ;
  wire \MUX_reg[2]_i_2_n_0 ;
  wire \MUX_reg[2]_i_3_n_0 ;
  wire \array_reg[0]_3 ;
  wire \array_reg[10]_10 ;
  wire \array_reg[11]_15 ;
  wire \array_reg[12]_5 ;
  wire \array_reg[13]_8 ;
  wire \array_reg[14]_9 ;
  wire \array_reg[15][15]_i_2_n_0 ;
  wire \array_reg[15]_16 ;
  wire \array_reg[1]_6 ;
  wire \array_reg[2]_11 ;
  wire \array_reg[3]_14 ;
  wire \array_reg[4]_1 ;
  wire \array_reg[5]_2 ;
  wire \array_reg[6]_12 ;
  wire \array_reg[7]_13 ;
  wire \array_reg[8]_4 ;
  wire \array_reg[9]_7 ;
  wire [15:0]\array_reg_reg[0] ;
  wire [15:0]\array_reg_reg[10] ;
  wire [15:0]\array_reg_reg[11] ;
  wire [15:0]\array_reg_reg[12] ;
  wire [15:0]\array_reg_reg[13] ;
  wire [15:0]\array_reg_reg[14] ;
  wire [15:0]\array_reg_reg[15] ;
  wire [15:0]\array_reg_reg[1] ;
  wire [15:0]\array_reg_reg[2] ;
  wire [15:0]\array_reg_reg[3] ;
  wire [15:0]\array_reg_reg[4] ;
  wire [15:0]\array_reg_reg[5] ;
  wire [15:0]\array_reg_reg[6] ;
  wire [15:0]\array_reg_reg[7] ;
  wire [15:0]\array_reg_reg[8] ;
  wire [15:0]\array_reg_reg[9] ;
  wire [1:0]blClkIn;
  wire clk;
  wire \edges[0]_i_4_n_0 ;
  wire \edges[0]_i_5_n_0 ;
  wire \edges[0]_i_6_n_0 ;
  wire \edges[0]_i_7_n_0 ;
  wire \edges[1]_i_4_n_0 ;
  wire \edges[1]_i_5_n_0 ;
  wire \edges[1]_i_6_n_0 ;
  wire \edges[1]_i_7_n_0 ;
  wire \edges[2]_i_4_n_0 ;
  wire \edges[2]_i_5_n_0 ;
  wire \edges[2]_i_6_n_0 ;
  wire \edges[2]_i_7_n_0 ;
  wire \edges[3]_i_4_n_0 ;
  wire \edges[3]_i_5_n_0 ;
  wire \edges[3]_i_6_n_0 ;
  wire \edges[3]_i_7_n_0 ;
  wire \edges_reg[0]_i_2_n_0 ;
  wire \edges_reg[0]_i_3_n_0 ;
  wire \edges_reg[1]_i_2_n_0 ;
  wire \edges_reg[1]_i_3_n_0 ;
  wire \edges_reg[2]_i_2_n_0 ;
  wire \edges_reg[2]_i_3_n_0 ;
  wire \edges_reg[3]_i_2_n_0 ;
  wire \edges_reg[3]_i_3_n_0 ;
  wire empty_reg_i_1_n_0;
  wire empty_reg_i_2__0_n_0;
  wire empty_reg_i_3__0_n_0;
  wire fifo_empty;
  wire fifo_rd_reg;
  wire full;
  wire full_reg_i_1_n_0;
  wire full_reg_i_2_n_0;
  wire full_reg_i_3_n_0;
  wire [0:0]in0;
  wire [2:0]out;
  wire [3:0]plusOp;
  wire [3:0]plusOp0_in;
  wire \r_ptr_reg[2]_i_1__0_n_0 ;
  wire \r_ptr_reg[3]_i_1_n_0 ;
  wire [3:0]r_ptr_reg_reg__0;
  wire rd;
  wire reset;
  wire \w_ptr_reg[3]_i_1_n_0 ;
  wire [3:0]w_ptr_reg_reg__0;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[0]_i_4 
       (.I0(\array_reg_reg[3] [0]),
        .I1(\array_reg_reg[2] [0]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[1] [0]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[0] [0]),
        .O(\DOut[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[0]_i_5 
       (.I0(\array_reg_reg[7] [0]),
        .I1(\array_reg_reg[6] [0]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[5] [0]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[4] [0]),
        .O(\DOut[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[0]_i_6 
       (.I0(\array_reg_reg[11] [0]),
        .I1(\array_reg_reg[10] [0]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[9] [0]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[8] [0]),
        .O(\DOut[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[0]_i_7 
       (.I0(\array_reg_reg[15] [0]),
        .I1(\array_reg_reg[14] [0]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[13] [0]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[12] [0]),
        .O(\DOut[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[1]_i_4 
       (.I0(\array_reg_reg[3] [1]),
        .I1(\array_reg_reg[2] [1]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[1] [1]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[0] [1]),
        .O(\DOut[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[1]_i_5 
       (.I0(\array_reg_reg[7] [1]),
        .I1(\array_reg_reg[6] [1]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[5] [1]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[4] [1]),
        .O(\DOut[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[1]_i_6 
       (.I0(\array_reg_reg[11] [1]),
        .I1(\array_reg_reg[10] [1]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[9] [1]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[8] [1]),
        .O(\DOut[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[1]_i_7 
       (.I0(\array_reg_reg[15] [1]),
        .I1(\array_reg_reg[14] [1]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[13] [1]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[12] [1]),
        .O(\DOut[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[2]_i_4 
       (.I0(\array_reg_reg[3] [2]),
        .I1(\array_reg_reg[2] [2]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[1] [2]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[0] [2]),
        .O(\DOut[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[2]_i_5 
       (.I0(\array_reg_reg[7] [2]),
        .I1(\array_reg_reg[6] [2]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[5] [2]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[4] [2]),
        .O(\DOut[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[2]_i_6 
       (.I0(\array_reg_reg[11] [2]),
        .I1(\array_reg_reg[10] [2]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[9] [2]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[8] [2]),
        .O(\DOut[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[2]_i_7 
       (.I0(\array_reg_reg[15] [2]),
        .I1(\array_reg_reg[14] [2]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[13] [2]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[12] [2]),
        .O(\DOut[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[3]_i_4 
       (.I0(\array_reg_reg[3] [3]),
        .I1(\array_reg_reg[2] [3]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[1] [3]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[0] [3]),
        .O(\DOut[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[3]_i_5 
       (.I0(\array_reg_reg[7] [3]),
        .I1(\array_reg_reg[6] [3]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[5] [3]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[4] [3]),
        .O(\DOut[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[3]_i_6 
       (.I0(\array_reg_reg[11] [3]),
        .I1(\array_reg_reg[10] [3]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[9] [3]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[8] [3]),
        .O(\DOut[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[3]_i_7 
       (.I0(\array_reg_reg[15] [3]),
        .I1(\array_reg_reg[14] [3]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[13] [3]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[12] [3]),
        .O(\DOut[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[4]_i_4 
       (.I0(\array_reg_reg[3] [4]),
        .I1(\array_reg_reg[2] [4]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[1] [4]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[0] [4]),
        .O(\DOut[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[4]_i_5 
       (.I0(\array_reg_reg[7] [4]),
        .I1(\array_reg_reg[6] [4]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[5] [4]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[4] [4]),
        .O(\DOut[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[4]_i_6 
       (.I0(\array_reg_reg[11] [4]),
        .I1(\array_reg_reg[10] [4]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[9] [4]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[8] [4]),
        .O(\DOut[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[4]_i_7 
       (.I0(\array_reg_reg[15] [4]),
        .I1(\array_reg_reg[14] [4]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[13] [4]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[12] [4]),
        .O(\DOut[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[5]_i_4 
       (.I0(\array_reg_reg[3] [5]),
        .I1(\array_reg_reg[2] [5]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[1] [5]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[0] [5]),
        .O(\DOut[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[5]_i_5 
       (.I0(\array_reg_reg[7] [5]),
        .I1(\array_reg_reg[6] [5]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[5] [5]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[4] [5]),
        .O(\DOut[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[5]_i_6 
       (.I0(\array_reg_reg[11] [5]),
        .I1(\array_reg_reg[10] [5]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[9] [5]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[8] [5]),
        .O(\DOut[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[5]_i_7 
       (.I0(\array_reg_reg[15] [5]),
        .I1(\array_reg_reg[14] [5]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[13] [5]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[12] [5]),
        .O(\DOut[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[6]_i_4 
       (.I0(\array_reg_reg[3] [6]),
        .I1(\array_reg_reg[2] [6]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[1] [6]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[0] [6]),
        .O(\DOut[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[6]_i_5 
       (.I0(\array_reg_reg[7] [6]),
        .I1(\array_reg_reg[6] [6]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[5] [6]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[4] [6]),
        .O(\DOut[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[6]_i_6 
       (.I0(\array_reg_reg[11] [6]),
        .I1(\array_reg_reg[10] [6]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[9] [6]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[8] [6]),
        .O(\DOut[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[6]_i_7 
       (.I0(\array_reg_reg[15] [6]),
        .I1(\array_reg_reg[14] [6]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[13] [6]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[12] [6]),
        .O(\DOut[6]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \DOut[7]_i_1 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(fifo_empty),
        .O(E));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[7]_i_5 
       (.I0(\array_reg_reg[3] [7]),
        .I1(\array_reg_reg[2] [7]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[1] [7]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[0] [7]),
        .O(\DOut[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[7]_i_6 
       (.I0(\array_reg_reg[7] [7]),
        .I1(\array_reg_reg[6] [7]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[5] [7]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[4] [7]),
        .O(\DOut[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[7]_i_7 
       (.I0(\array_reg_reg[11] [7]),
        .I1(\array_reg_reg[10] [7]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[9] [7]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[8] [7]),
        .O(\DOut[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[7]_i_8 
       (.I0(\array_reg_reg[15] [7]),
        .I1(\array_reg_reg[14] [7]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[13] [7]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[12] [7]),
        .O(\DOut[7]_i_8_n_0 ));
  MUXF8 \DOut_reg[0]_i_1 
       (.I0(\DOut_reg[0]_i_2_n_0 ),
        .I1(\DOut_reg[0]_i_3_n_0 ),
        .O(\DOut_reg[7] [0]),
        .S(r_ptr_reg_reg__0[3]));
  MUXF7 \DOut_reg[0]_i_2 
       (.I0(\DOut[0]_i_4_n_0 ),
        .I1(\DOut[0]_i_5_n_0 ),
        .O(\DOut_reg[0]_i_2_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF7 \DOut_reg[0]_i_3 
       (.I0(\DOut[0]_i_6_n_0 ),
        .I1(\DOut[0]_i_7_n_0 ),
        .O(\DOut_reg[0]_i_3_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF8 \DOut_reg[1]_i_1 
       (.I0(\DOut_reg[1]_i_2_n_0 ),
        .I1(\DOut_reg[1]_i_3_n_0 ),
        .O(\DOut_reg[7] [1]),
        .S(r_ptr_reg_reg__0[3]));
  MUXF7 \DOut_reg[1]_i_2 
       (.I0(\DOut[1]_i_4_n_0 ),
        .I1(\DOut[1]_i_5_n_0 ),
        .O(\DOut_reg[1]_i_2_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF7 \DOut_reg[1]_i_3 
       (.I0(\DOut[1]_i_6_n_0 ),
        .I1(\DOut[1]_i_7_n_0 ),
        .O(\DOut_reg[1]_i_3_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF8 \DOut_reg[2]_i_1 
       (.I0(\DOut_reg[2]_i_2_n_0 ),
        .I1(\DOut_reg[2]_i_3_n_0 ),
        .O(\DOut_reg[7] [2]),
        .S(r_ptr_reg_reg__0[3]));
  MUXF7 \DOut_reg[2]_i_2 
       (.I0(\DOut[2]_i_4_n_0 ),
        .I1(\DOut[2]_i_5_n_0 ),
        .O(\DOut_reg[2]_i_2_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF7 \DOut_reg[2]_i_3 
       (.I0(\DOut[2]_i_6_n_0 ),
        .I1(\DOut[2]_i_7_n_0 ),
        .O(\DOut_reg[2]_i_3_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF8 \DOut_reg[3]_i_1 
       (.I0(\DOut_reg[3]_i_2_n_0 ),
        .I1(\DOut_reg[3]_i_3_n_0 ),
        .O(\DOut_reg[7] [3]),
        .S(r_ptr_reg_reg__0[3]));
  MUXF7 \DOut_reg[3]_i_2 
       (.I0(\DOut[3]_i_4_n_0 ),
        .I1(\DOut[3]_i_5_n_0 ),
        .O(\DOut_reg[3]_i_2_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF7 \DOut_reg[3]_i_3 
       (.I0(\DOut[3]_i_6_n_0 ),
        .I1(\DOut[3]_i_7_n_0 ),
        .O(\DOut_reg[3]_i_3_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF8 \DOut_reg[4]_i_1 
       (.I0(\DOut_reg[4]_i_2_n_0 ),
        .I1(\DOut_reg[4]_i_3_n_0 ),
        .O(\DOut_reg[7] [4]),
        .S(r_ptr_reg_reg__0[3]));
  MUXF7 \DOut_reg[4]_i_2 
       (.I0(\DOut[4]_i_4_n_0 ),
        .I1(\DOut[4]_i_5_n_0 ),
        .O(\DOut_reg[4]_i_2_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF7 \DOut_reg[4]_i_3 
       (.I0(\DOut[4]_i_6_n_0 ),
        .I1(\DOut[4]_i_7_n_0 ),
        .O(\DOut_reg[4]_i_3_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF8 \DOut_reg[5]_i_1 
       (.I0(\DOut_reg[5]_i_2_n_0 ),
        .I1(\DOut_reg[5]_i_3_n_0 ),
        .O(\DOut_reg[7] [5]),
        .S(r_ptr_reg_reg__0[3]));
  MUXF7 \DOut_reg[5]_i_2 
       (.I0(\DOut[5]_i_4_n_0 ),
        .I1(\DOut[5]_i_5_n_0 ),
        .O(\DOut_reg[5]_i_2_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF7 \DOut_reg[5]_i_3 
       (.I0(\DOut[5]_i_6_n_0 ),
        .I1(\DOut[5]_i_7_n_0 ),
        .O(\DOut_reg[5]_i_3_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF8 \DOut_reg[6]_i_1 
       (.I0(\DOut_reg[6]_i_2_n_0 ),
        .I1(\DOut_reg[6]_i_3_n_0 ),
        .O(\DOut_reg[7] [6]),
        .S(r_ptr_reg_reg__0[3]));
  MUXF7 \DOut_reg[6]_i_2 
       (.I0(\DOut[6]_i_4_n_0 ),
        .I1(\DOut[6]_i_5_n_0 ),
        .O(\DOut_reg[6]_i_2_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF7 \DOut_reg[6]_i_3 
       (.I0(\DOut[6]_i_6_n_0 ),
        .I1(\DOut[6]_i_7_n_0 ),
        .O(\DOut_reg[6]_i_3_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF8 \DOut_reg[7]_i_2 
       (.I0(\DOut_reg[7]_i_3_n_0 ),
        .I1(\DOut_reg[7]_i_4_n_0 ),
        .O(\DOut_reg[7] [7]),
        .S(r_ptr_reg_reg__0[3]));
  MUXF7 \DOut_reg[7]_i_3 
       (.I0(\DOut[7]_i_5_n_0 ),
        .I1(\DOut[7]_i_6_n_0 ),
        .O(\DOut_reg[7]_i_3_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF7 \DOut_reg[7]_i_4 
       (.I0(\DOut[7]_i_7_n_0 ),
        .I1(\DOut[7]_i_8_n_0 ),
        .O(\DOut_reg[7]_i_4_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  LUT5 #(
    .INIT(32'h1CFF1C00)) 
    \FSM_sequential_fifoState[1]_i_1 
       (.I0(fifo_empty),
        .I1(out[1]),
        .I2(out[0]),
        .I3(\FSM_sequential_fifoState_reg[1]_0 ),
        .I4(in0),
        .O(\FSM_sequential_fifoState_reg[1] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[0]_i_4 
       (.I0(\array_reg_reg[3] [8]),
        .I1(\array_reg_reg[2] [8]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[1] [8]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[0] [8]),
        .O(\MUX[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[0]_i_5 
       (.I0(\array_reg_reg[7] [8]),
        .I1(\array_reg_reg[6] [8]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[5] [8]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[4] [8]),
        .O(\MUX[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[0]_i_6 
       (.I0(\array_reg_reg[11] [8]),
        .I1(\array_reg_reg[10] [8]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[9] [8]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[8] [8]),
        .O(\MUX[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[0]_i_7 
       (.I0(\array_reg_reg[15] [8]),
        .I1(\array_reg_reg[14] [8]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[13] [8]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[12] [8]),
        .O(\MUX[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[1]_i_4 
       (.I0(\array_reg_reg[3] [9]),
        .I1(\array_reg_reg[2] [9]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[1] [9]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[0] [9]),
        .O(\MUX[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[1]_i_5 
       (.I0(\array_reg_reg[7] [9]),
        .I1(\array_reg_reg[6] [9]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[5] [9]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[4] [9]),
        .O(\MUX[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[1]_i_6 
       (.I0(\array_reg_reg[11] [9]),
        .I1(\array_reg_reg[10] [9]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[9] [9]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[8] [9]),
        .O(\MUX[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[1]_i_7 
       (.I0(\array_reg_reg[15] [9]),
        .I1(\array_reg_reg[14] [9]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[13] [9]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[12] [9]),
        .O(\MUX[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[2]_i_4 
       (.I0(\array_reg_reg[3] [10]),
        .I1(\array_reg_reg[2] [10]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[1] [10]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[0] [10]),
        .O(\MUX[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[2]_i_5 
       (.I0(\array_reg_reg[7] [10]),
        .I1(\array_reg_reg[6] [10]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[5] [10]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[4] [10]),
        .O(\MUX[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[2]_i_6 
       (.I0(\array_reg_reg[11] [10]),
        .I1(\array_reg_reg[10] [10]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[9] [10]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[8] [10]),
        .O(\MUX[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[2]_i_7 
       (.I0(\array_reg_reg[15] [10]),
        .I1(\array_reg_reg[14] [10]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[13] [10]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[12] [10]),
        .O(\MUX[2]_i_7_n_0 ));
  MUXF8 \MUX_reg[0]_i_1 
       (.I0(\MUX_reg[0]_i_2_n_0 ),
        .I1(\MUX_reg[0]_i_3_n_0 ),
        .O(\MUX_reg[2] [0]),
        .S(r_ptr_reg_reg__0[3]));
  MUXF7 \MUX_reg[0]_i_2 
       (.I0(\MUX[0]_i_4_n_0 ),
        .I1(\MUX[0]_i_5_n_0 ),
        .O(\MUX_reg[0]_i_2_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF7 \MUX_reg[0]_i_3 
       (.I0(\MUX[0]_i_6_n_0 ),
        .I1(\MUX[0]_i_7_n_0 ),
        .O(\MUX_reg[0]_i_3_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF8 \MUX_reg[1]_i_1 
       (.I0(\MUX_reg[1]_i_2_n_0 ),
        .I1(\MUX_reg[1]_i_3_n_0 ),
        .O(\MUX_reg[2] [1]),
        .S(r_ptr_reg_reg__0[3]));
  MUXF7 \MUX_reg[1]_i_2 
       (.I0(\MUX[1]_i_4_n_0 ),
        .I1(\MUX[1]_i_5_n_0 ),
        .O(\MUX_reg[1]_i_2_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF7 \MUX_reg[1]_i_3 
       (.I0(\MUX[1]_i_6_n_0 ),
        .I1(\MUX[1]_i_7_n_0 ),
        .O(\MUX_reg[1]_i_3_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF8 \MUX_reg[2]_i_1 
       (.I0(\MUX_reg[2]_i_2_n_0 ),
        .I1(\MUX_reg[2]_i_3_n_0 ),
        .O(\MUX_reg[2] [2]),
        .S(r_ptr_reg_reg__0[3]));
  MUXF7 \MUX_reg[2]_i_2 
       (.I0(\MUX[2]_i_4_n_0 ),
        .I1(\MUX[2]_i_5_n_0 ),
        .O(\MUX_reg[2]_i_2_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF7 \MUX_reg[2]_i_3 
       (.I0(\MUX[2]_i_6_n_0 ),
        .I1(\MUX[2]_i_7_n_0 ),
        .O(\MUX_reg[2]_i_3_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \array_reg[0][15]_i_1 
       (.I0(w_ptr_reg_reg__0[0]),
        .I1(w_ptr_reg_reg__0[1]),
        .I2(\array_reg[15][15]_i_2_n_0 ),
        .I3(w_ptr_reg_reg__0[3]),
        .I4(w_ptr_reg_reg__0[2]),
        .O(\array_reg[0]_3 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \array_reg[10][15]_i_1 
       (.I0(w_ptr_reg_reg__0[1]),
        .I1(\array_reg[15][15]_i_2_n_0 ),
        .I2(w_ptr_reg_reg__0[0]),
        .I3(w_ptr_reg_reg__0[3]),
        .I4(w_ptr_reg_reg__0[2]),
        .O(\array_reg[10]_10 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \array_reg[11][15]_i_1 
       (.I0(w_ptr_reg_reg__0[1]),
        .I1(\array_reg[15][15]_i_2_n_0 ),
        .I2(w_ptr_reg_reg__0[0]),
        .I3(w_ptr_reg_reg__0[3]),
        .I4(w_ptr_reg_reg__0[2]),
        .O(\array_reg[11]_15 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \array_reg[12][15]_i_1 
       (.I0(w_ptr_reg_reg__0[0]),
        .I1(w_ptr_reg_reg__0[1]),
        .I2(\array_reg[15][15]_i_2_n_0 ),
        .I3(w_ptr_reg_reg__0[3]),
        .I4(w_ptr_reg_reg__0[2]),
        .O(\array_reg[12]_5 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \array_reg[13][15]_i_1 
       (.I0(\array_reg[15][15]_i_2_n_0 ),
        .I1(w_ptr_reg_reg__0[0]),
        .I2(w_ptr_reg_reg__0[1]),
        .I3(w_ptr_reg_reg__0[3]),
        .I4(w_ptr_reg_reg__0[2]),
        .O(\array_reg[13]_8 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \array_reg[14][15]_i_1 
       (.I0(w_ptr_reg_reg__0[1]),
        .I1(\array_reg[15][15]_i_2_n_0 ),
        .I2(w_ptr_reg_reg__0[0]),
        .I3(w_ptr_reg_reg__0[3]),
        .I4(w_ptr_reg_reg__0[2]),
        .O(\array_reg[14]_9 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \array_reg[15][15]_i_1 
       (.I0(w_ptr_reg_reg__0[2]),
        .I1(w_ptr_reg_reg__0[3]),
        .I2(w_ptr_reg_reg__0[0]),
        .I3(w_ptr_reg_reg__0[1]),
        .I4(\array_reg[15][15]_i_2_n_0 ),
        .O(\array_reg[15]_16 ));
  LUT3 #(
    .INIT(8'h04)) 
    \array_reg[15][15]_i_2 
       (.I0(blClkIn[0]),
        .I1(blClkIn[1]),
        .I2(full),
        .O(\array_reg[15][15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \array_reg[1][15]_i_1 
       (.I0(\array_reg[15][15]_i_2_n_0 ),
        .I1(w_ptr_reg_reg__0[0]),
        .I2(w_ptr_reg_reg__0[1]),
        .I3(w_ptr_reg_reg__0[3]),
        .I4(w_ptr_reg_reg__0[2]),
        .O(\array_reg[1]_6 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \array_reg[2][15]_i_1 
       (.I0(w_ptr_reg_reg__0[1]),
        .I1(\array_reg[15][15]_i_2_n_0 ),
        .I2(w_ptr_reg_reg__0[0]),
        .I3(w_ptr_reg_reg__0[3]),
        .I4(w_ptr_reg_reg__0[2]),
        .O(\array_reg[2]_11 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \array_reg[3][15]_i_1 
       (.I0(w_ptr_reg_reg__0[1]),
        .I1(\array_reg[15][15]_i_2_n_0 ),
        .I2(w_ptr_reg_reg__0[0]),
        .I3(w_ptr_reg_reg__0[3]),
        .I4(w_ptr_reg_reg__0[2]),
        .O(\array_reg[3]_14 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \array_reg[4][15]_i_1 
       (.I0(\array_reg[15][15]_i_2_n_0 ),
        .I1(w_ptr_reg_reg__0[0]),
        .I2(w_ptr_reg_reg__0[3]),
        .I3(w_ptr_reg_reg__0[1]),
        .I4(w_ptr_reg_reg__0[2]),
        .O(\array_reg[4]_1 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \array_reg[5][15]_i_1 
       (.I0(\array_reg[15][15]_i_2_n_0 ),
        .I1(w_ptr_reg_reg__0[1]),
        .I2(w_ptr_reg_reg__0[2]),
        .I3(w_ptr_reg_reg__0[3]),
        .I4(w_ptr_reg_reg__0[0]),
        .O(\array_reg[5]_2 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \array_reg[6][15]_i_1 
       (.I0(w_ptr_reg_reg__0[1]),
        .I1(\array_reg[15][15]_i_2_n_0 ),
        .I2(w_ptr_reg_reg__0[2]),
        .I3(w_ptr_reg_reg__0[3]),
        .I4(w_ptr_reg_reg__0[0]),
        .O(\array_reg[6]_12 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \array_reg[7][15]_i_1 
       (.I0(w_ptr_reg_reg__0[1]),
        .I1(\array_reg[15][15]_i_2_n_0 ),
        .I2(w_ptr_reg_reg__0[2]),
        .I3(w_ptr_reg_reg__0[0]),
        .I4(w_ptr_reg_reg__0[3]),
        .O(\array_reg[7]_13 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \array_reg[8][15]_i_1 
       (.I0(w_ptr_reg_reg__0[0]),
        .I1(w_ptr_reg_reg__0[1]),
        .I2(\array_reg[15][15]_i_2_n_0 ),
        .I3(w_ptr_reg_reg__0[3]),
        .I4(w_ptr_reg_reg__0[2]),
        .O(\array_reg[8]_4 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \array_reg[9][15]_i_1 
       (.I0(\array_reg[15][15]_i_2_n_0 ),
        .I1(w_ptr_reg_reg__0[0]),
        .I2(w_ptr_reg_reg__0[1]),
        .I3(w_ptr_reg_reg__0[3]),
        .I4(w_ptr_reg_reg__0[2]),
        .O(\array_reg[9]_7 ));
  FDCE \array_reg_reg[0][0] 
       (.C(clk),
        .CE(\array_reg[0]_3 ),
        .CLR(reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[0] [0]));
  FDCE \array_reg_reg[0][10] 
       (.C(clk),
        .CE(\array_reg[0]_3 ),
        .CLR(reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[0] [10]));
  FDCE \array_reg_reg[0][12] 
       (.C(clk),
        .CE(\array_reg[0]_3 ),
        .CLR(reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[0] [12]));
  FDCE \array_reg_reg[0][13] 
       (.C(clk),
        .CE(\array_reg[0]_3 ),
        .CLR(reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[0] [13]));
  FDCE \array_reg_reg[0][14] 
       (.C(clk),
        .CE(\array_reg[0]_3 ),
        .CLR(reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[0] [14]));
  FDCE \array_reg_reg[0][15] 
       (.C(clk),
        .CE(\array_reg[0]_3 ),
        .CLR(reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[0] [15]));
  FDCE \array_reg_reg[0][1] 
       (.C(clk),
        .CE(\array_reg[0]_3 ),
        .CLR(reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[0] [1]));
  FDCE \array_reg_reg[0][2] 
       (.C(clk),
        .CE(\array_reg[0]_3 ),
        .CLR(reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[0] [2]));
  FDCE \array_reg_reg[0][3] 
       (.C(clk),
        .CE(\array_reg[0]_3 ),
        .CLR(reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[0] [3]));
  FDCE \array_reg_reg[0][4] 
       (.C(clk),
        .CE(\array_reg[0]_3 ),
        .CLR(reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[0] [4]));
  FDCE \array_reg_reg[0][5] 
       (.C(clk),
        .CE(\array_reg[0]_3 ),
        .CLR(reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[0] [5]));
  FDCE \array_reg_reg[0][6] 
       (.C(clk),
        .CE(\array_reg[0]_3 ),
        .CLR(reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[0] [6]));
  FDCE \array_reg_reg[0][7] 
       (.C(clk),
        .CE(\array_reg[0]_3 ),
        .CLR(reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[0] [7]));
  FDCE \array_reg_reg[0][8] 
       (.C(clk),
        .CE(\array_reg[0]_3 ),
        .CLR(reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[0] [8]));
  FDCE \array_reg_reg[0][9] 
       (.C(clk),
        .CE(\array_reg[0]_3 ),
        .CLR(reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[0] [9]));
  FDCE \array_reg_reg[10][0] 
       (.C(clk),
        .CE(\array_reg[10]_10 ),
        .CLR(reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[10] [0]));
  FDCE \array_reg_reg[10][10] 
       (.C(clk),
        .CE(\array_reg[10]_10 ),
        .CLR(reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[10] [10]));
  FDCE \array_reg_reg[10][12] 
       (.C(clk),
        .CE(\array_reg[10]_10 ),
        .CLR(reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[10] [12]));
  FDCE \array_reg_reg[10][13] 
       (.C(clk),
        .CE(\array_reg[10]_10 ),
        .CLR(reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[10] [13]));
  FDCE \array_reg_reg[10][14] 
       (.C(clk),
        .CE(\array_reg[10]_10 ),
        .CLR(reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[10] [14]));
  FDCE \array_reg_reg[10][15] 
       (.C(clk),
        .CE(\array_reg[10]_10 ),
        .CLR(reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[10] [15]));
  FDCE \array_reg_reg[10][1] 
       (.C(clk),
        .CE(\array_reg[10]_10 ),
        .CLR(reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[10] [1]));
  FDCE \array_reg_reg[10][2] 
       (.C(clk),
        .CE(\array_reg[10]_10 ),
        .CLR(reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[10] [2]));
  FDCE \array_reg_reg[10][3] 
       (.C(clk),
        .CE(\array_reg[10]_10 ),
        .CLR(reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[10] [3]));
  FDCE \array_reg_reg[10][4] 
       (.C(clk),
        .CE(\array_reg[10]_10 ),
        .CLR(reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[10] [4]));
  FDCE \array_reg_reg[10][5] 
       (.C(clk),
        .CE(\array_reg[10]_10 ),
        .CLR(reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[10] [5]));
  FDCE \array_reg_reg[10][6] 
       (.C(clk),
        .CE(\array_reg[10]_10 ),
        .CLR(reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[10] [6]));
  FDCE \array_reg_reg[10][7] 
       (.C(clk),
        .CE(\array_reg[10]_10 ),
        .CLR(reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[10] [7]));
  FDCE \array_reg_reg[10][8] 
       (.C(clk),
        .CE(\array_reg[10]_10 ),
        .CLR(reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[10] [8]));
  FDCE \array_reg_reg[10][9] 
       (.C(clk),
        .CE(\array_reg[10]_10 ),
        .CLR(reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[10] [9]));
  FDCE \array_reg_reg[11][0] 
       (.C(clk),
        .CE(\array_reg[11]_15 ),
        .CLR(reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[11] [0]));
  FDCE \array_reg_reg[11][10] 
       (.C(clk),
        .CE(\array_reg[11]_15 ),
        .CLR(reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[11] [10]));
  FDCE \array_reg_reg[11][12] 
       (.C(clk),
        .CE(\array_reg[11]_15 ),
        .CLR(reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[11] [12]));
  FDCE \array_reg_reg[11][13] 
       (.C(clk),
        .CE(\array_reg[11]_15 ),
        .CLR(reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[11] [13]));
  FDCE \array_reg_reg[11][14] 
       (.C(clk),
        .CE(\array_reg[11]_15 ),
        .CLR(reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[11] [14]));
  FDCE \array_reg_reg[11][15] 
       (.C(clk),
        .CE(\array_reg[11]_15 ),
        .CLR(reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[11] [15]));
  FDCE \array_reg_reg[11][1] 
       (.C(clk),
        .CE(\array_reg[11]_15 ),
        .CLR(reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[11] [1]));
  FDCE \array_reg_reg[11][2] 
       (.C(clk),
        .CE(\array_reg[11]_15 ),
        .CLR(reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[11] [2]));
  FDCE \array_reg_reg[11][3] 
       (.C(clk),
        .CE(\array_reg[11]_15 ),
        .CLR(reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[11] [3]));
  FDCE \array_reg_reg[11][4] 
       (.C(clk),
        .CE(\array_reg[11]_15 ),
        .CLR(reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[11] [4]));
  FDCE \array_reg_reg[11][5] 
       (.C(clk),
        .CE(\array_reg[11]_15 ),
        .CLR(reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[11] [5]));
  FDCE \array_reg_reg[11][6] 
       (.C(clk),
        .CE(\array_reg[11]_15 ),
        .CLR(reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[11] [6]));
  FDCE \array_reg_reg[11][7] 
       (.C(clk),
        .CE(\array_reg[11]_15 ),
        .CLR(reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[11] [7]));
  FDCE \array_reg_reg[11][8] 
       (.C(clk),
        .CE(\array_reg[11]_15 ),
        .CLR(reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[11] [8]));
  FDCE \array_reg_reg[11][9] 
       (.C(clk),
        .CE(\array_reg[11]_15 ),
        .CLR(reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[11] [9]));
  FDCE \array_reg_reg[12][0] 
       (.C(clk),
        .CE(\array_reg[12]_5 ),
        .CLR(reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[12] [0]));
  FDCE \array_reg_reg[12][10] 
       (.C(clk),
        .CE(\array_reg[12]_5 ),
        .CLR(reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[12] [10]));
  FDCE \array_reg_reg[12][12] 
       (.C(clk),
        .CE(\array_reg[12]_5 ),
        .CLR(reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[12] [12]));
  FDCE \array_reg_reg[12][13] 
       (.C(clk),
        .CE(\array_reg[12]_5 ),
        .CLR(reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[12] [13]));
  FDCE \array_reg_reg[12][14] 
       (.C(clk),
        .CE(\array_reg[12]_5 ),
        .CLR(reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[12] [14]));
  FDCE \array_reg_reg[12][15] 
       (.C(clk),
        .CE(\array_reg[12]_5 ),
        .CLR(reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[12] [15]));
  FDCE \array_reg_reg[12][1] 
       (.C(clk),
        .CE(\array_reg[12]_5 ),
        .CLR(reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[12] [1]));
  FDCE \array_reg_reg[12][2] 
       (.C(clk),
        .CE(\array_reg[12]_5 ),
        .CLR(reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[12] [2]));
  FDCE \array_reg_reg[12][3] 
       (.C(clk),
        .CE(\array_reg[12]_5 ),
        .CLR(reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[12] [3]));
  FDCE \array_reg_reg[12][4] 
       (.C(clk),
        .CE(\array_reg[12]_5 ),
        .CLR(reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[12] [4]));
  FDCE \array_reg_reg[12][5] 
       (.C(clk),
        .CE(\array_reg[12]_5 ),
        .CLR(reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[12] [5]));
  FDCE \array_reg_reg[12][6] 
       (.C(clk),
        .CE(\array_reg[12]_5 ),
        .CLR(reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[12] [6]));
  FDCE \array_reg_reg[12][7] 
       (.C(clk),
        .CE(\array_reg[12]_5 ),
        .CLR(reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[12] [7]));
  FDCE \array_reg_reg[12][8] 
       (.C(clk),
        .CE(\array_reg[12]_5 ),
        .CLR(reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[12] [8]));
  FDCE \array_reg_reg[12][9] 
       (.C(clk),
        .CE(\array_reg[12]_5 ),
        .CLR(reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[12] [9]));
  FDCE \array_reg_reg[13][0] 
       (.C(clk),
        .CE(\array_reg[13]_8 ),
        .CLR(reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[13] [0]));
  FDCE \array_reg_reg[13][10] 
       (.C(clk),
        .CE(\array_reg[13]_8 ),
        .CLR(reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[13] [10]));
  FDCE \array_reg_reg[13][12] 
       (.C(clk),
        .CE(\array_reg[13]_8 ),
        .CLR(reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[13] [12]));
  FDCE \array_reg_reg[13][13] 
       (.C(clk),
        .CE(\array_reg[13]_8 ),
        .CLR(reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[13] [13]));
  FDCE \array_reg_reg[13][14] 
       (.C(clk),
        .CE(\array_reg[13]_8 ),
        .CLR(reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[13] [14]));
  FDCE \array_reg_reg[13][15] 
       (.C(clk),
        .CE(\array_reg[13]_8 ),
        .CLR(reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[13] [15]));
  FDCE \array_reg_reg[13][1] 
       (.C(clk),
        .CE(\array_reg[13]_8 ),
        .CLR(reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[13] [1]));
  FDCE \array_reg_reg[13][2] 
       (.C(clk),
        .CE(\array_reg[13]_8 ),
        .CLR(reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[13] [2]));
  FDCE \array_reg_reg[13][3] 
       (.C(clk),
        .CE(\array_reg[13]_8 ),
        .CLR(reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[13] [3]));
  FDCE \array_reg_reg[13][4] 
       (.C(clk),
        .CE(\array_reg[13]_8 ),
        .CLR(reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[13] [4]));
  FDCE \array_reg_reg[13][5] 
       (.C(clk),
        .CE(\array_reg[13]_8 ),
        .CLR(reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[13] [5]));
  FDCE \array_reg_reg[13][6] 
       (.C(clk),
        .CE(\array_reg[13]_8 ),
        .CLR(reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[13] [6]));
  FDCE \array_reg_reg[13][7] 
       (.C(clk),
        .CE(\array_reg[13]_8 ),
        .CLR(reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[13] [7]));
  FDCE \array_reg_reg[13][8] 
       (.C(clk),
        .CE(\array_reg[13]_8 ),
        .CLR(reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[13] [8]));
  FDCE \array_reg_reg[13][9] 
       (.C(clk),
        .CE(\array_reg[13]_8 ),
        .CLR(reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[13] [9]));
  FDCE \array_reg_reg[14][0] 
       (.C(clk),
        .CE(\array_reg[14]_9 ),
        .CLR(reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[14] [0]));
  FDCE \array_reg_reg[14][10] 
       (.C(clk),
        .CE(\array_reg[14]_9 ),
        .CLR(reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[14] [10]));
  FDCE \array_reg_reg[14][12] 
       (.C(clk),
        .CE(\array_reg[14]_9 ),
        .CLR(reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[14] [12]));
  FDCE \array_reg_reg[14][13] 
       (.C(clk),
        .CE(\array_reg[14]_9 ),
        .CLR(reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[14] [13]));
  FDCE \array_reg_reg[14][14] 
       (.C(clk),
        .CE(\array_reg[14]_9 ),
        .CLR(reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[14] [14]));
  FDCE \array_reg_reg[14][15] 
       (.C(clk),
        .CE(\array_reg[14]_9 ),
        .CLR(reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[14] [15]));
  FDCE \array_reg_reg[14][1] 
       (.C(clk),
        .CE(\array_reg[14]_9 ),
        .CLR(reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[14] [1]));
  FDCE \array_reg_reg[14][2] 
       (.C(clk),
        .CE(\array_reg[14]_9 ),
        .CLR(reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[14] [2]));
  FDCE \array_reg_reg[14][3] 
       (.C(clk),
        .CE(\array_reg[14]_9 ),
        .CLR(reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[14] [3]));
  FDCE \array_reg_reg[14][4] 
       (.C(clk),
        .CE(\array_reg[14]_9 ),
        .CLR(reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[14] [4]));
  FDCE \array_reg_reg[14][5] 
       (.C(clk),
        .CE(\array_reg[14]_9 ),
        .CLR(reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[14] [5]));
  FDCE \array_reg_reg[14][6] 
       (.C(clk),
        .CE(\array_reg[14]_9 ),
        .CLR(reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[14] [6]));
  FDCE \array_reg_reg[14][7] 
       (.C(clk),
        .CE(\array_reg[14]_9 ),
        .CLR(reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[14] [7]));
  FDCE \array_reg_reg[14][8] 
       (.C(clk),
        .CE(\array_reg[14]_9 ),
        .CLR(reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[14] [8]));
  FDCE \array_reg_reg[14][9] 
       (.C(clk),
        .CE(\array_reg[14]_9 ),
        .CLR(reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[14] [9]));
  FDCE \array_reg_reg[15][0] 
       (.C(clk),
        .CE(\array_reg[15]_16 ),
        .CLR(reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[15] [0]));
  FDCE \array_reg_reg[15][10] 
       (.C(clk),
        .CE(\array_reg[15]_16 ),
        .CLR(reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[15] [10]));
  FDCE \array_reg_reg[15][12] 
       (.C(clk),
        .CE(\array_reg[15]_16 ),
        .CLR(reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[15] [12]));
  FDCE \array_reg_reg[15][13] 
       (.C(clk),
        .CE(\array_reg[15]_16 ),
        .CLR(reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[15] [13]));
  FDCE \array_reg_reg[15][14] 
       (.C(clk),
        .CE(\array_reg[15]_16 ),
        .CLR(reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[15] [14]));
  FDCE \array_reg_reg[15][15] 
       (.C(clk),
        .CE(\array_reg[15]_16 ),
        .CLR(reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[15] [15]));
  FDCE \array_reg_reg[15][1] 
       (.C(clk),
        .CE(\array_reg[15]_16 ),
        .CLR(reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[15] [1]));
  FDCE \array_reg_reg[15][2] 
       (.C(clk),
        .CE(\array_reg[15]_16 ),
        .CLR(reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[15] [2]));
  FDCE \array_reg_reg[15][3] 
       (.C(clk),
        .CE(\array_reg[15]_16 ),
        .CLR(reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[15] [3]));
  FDCE \array_reg_reg[15][4] 
       (.C(clk),
        .CE(\array_reg[15]_16 ),
        .CLR(reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[15] [4]));
  FDCE \array_reg_reg[15][5] 
       (.C(clk),
        .CE(\array_reg[15]_16 ),
        .CLR(reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[15] [5]));
  FDCE \array_reg_reg[15][6] 
       (.C(clk),
        .CE(\array_reg[15]_16 ),
        .CLR(reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[15] [6]));
  FDCE \array_reg_reg[15][7] 
       (.C(clk),
        .CE(\array_reg[15]_16 ),
        .CLR(reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[15] [7]));
  FDCE \array_reg_reg[15][8] 
       (.C(clk),
        .CE(\array_reg[15]_16 ),
        .CLR(reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[15] [8]));
  FDCE \array_reg_reg[15][9] 
       (.C(clk),
        .CE(\array_reg[15]_16 ),
        .CLR(reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[15] [9]));
  FDCE \array_reg_reg[1][0] 
       (.C(clk),
        .CE(\array_reg[1]_6 ),
        .CLR(reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[1] [0]));
  FDCE \array_reg_reg[1][10] 
       (.C(clk),
        .CE(\array_reg[1]_6 ),
        .CLR(reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[1] [10]));
  FDCE \array_reg_reg[1][12] 
       (.C(clk),
        .CE(\array_reg[1]_6 ),
        .CLR(reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[1] [12]));
  FDCE \array_reg_reg[1][13] 
       (.C(clk),
        .CE(\array_reg[1]_6 ),
        .CLR(reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[1] [13]));
  FDCE \array_reg_reg[1][14] 
       (.C(clk),
        .CE(\array_reg[1]_6 ),
        .CLR(reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[1] [14]));
  FDCE \array_reg_reg[1][15] 
       (.C(clk),
        .CE(\array_reg[1]_6 ),
        .CLR(reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[1] [15]));
  FDCE \array_reg_reg[1][1] 
       (.C(clk),
        .CE(\array_reg[1]_6 ),
        .CLR(reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[1] [1]));
  FDCE \array_reg_reg[1][2] 
       (.C(clk),
        .CE(\array_reg[1]_6 ),
        .CLR(reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[1] [2]));
  FDCE \array_reg_reg[1][3] 
       (.C(clk),
        .CE(\array_reg[1]_6 ),
        .CLR(reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[1] [3]));
  FDCE \array_reg_reg[1][4] 
       (.C(clk),
        .CE(\array_reg[1]_6 ),
        .CLR(reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[1] [4]));
  FDCE \array_reg_reg[1][5] 
       (.C(clk),
        .CE(\array_reg[1]_6 ),
        .CLR(reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[1] [5]));
  FDCE \array_reg_reg[1][6] 
       (.C(clk),
        .CE(\array_reg[1]_6 ),
        .CLR(reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[1] [6]));
  FDCE \array_reg_reg[1][7] 
       (.C(clk),
        .CE(\array_reg[1]_6 ),
        .CLR(reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[1] [7]));
  FDCE \array_reg_reg[1][8] 
       (.C(clk),
        .CE(\array_reg[1]_6 ),
        .CLR(reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[1] [8]));
  FDCE \array_reg_reg[1][9] 
       (.C(clk),
        .CE(\array_reg[1]_6 ),
        .CLR(reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[1] [9]));
  FDCE \array_reg_reg[2][0] 
       (.C(clk),
        .CE(\array_reg[2]_11 ),
        .CLR(reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[2] [0]));
  FDCE \array_reg_reg[2][10] 
       (.C(clk),
        .CE(\array_reg[2]_11 ),
        .CLR(reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[2] [10]));
  FDCE \array_reg_reg[2][12] 
       (.C(clk),
        .CE(\array_reg[2]_11 ),
        .CLR(reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[2] [12]));
  FDCE \array_reg_reg[2][13] 
       (.C(clk),
        .CE(\array_reg[2]_11 ),
        .CLR(reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[2] [13]));
  FDCE \array_reg_reg[2][14] 
       (.C(clk),
        .CE(\array_reg[2]_11 ),
        .CLR(reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[2] [14]));
  FDCE \array_reg_reg[2][15] 
       (.C(clk),
        .CE(\array_reg[2]_11 ),
        .CLR(reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[2] [15]));
  FDCE \array_reg_reg[2][1] 
       (.C(clk),
        .CE(\array_reg[2]_11 ),
        .CLR(reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[2] [1]));
  FDCE \array_reg_reg[2][2] 
       (.C(clk),
        .CE(\array_reg[2]_11 ),
        .CLR(reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[2] [2]));
  FDCE \array_reg_reg[2][3] 
       (.C(clk),
        .CE(\array_reg[2]_11 ),
        .CLR(reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[2] [3]));
  FDCE \array_reg_reg[2][4] 
       (.C(clk),
        .CE(\array_reg[2]_11 ),
        .CLR(reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[2] [4]));
  FDCE \array_reg_reg[2][5] 
       (.C(clk),
        .CE(\array_reg[2]_11 ),
        .CLR(reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[2] [5]));
  FDCE \array_reg_reg[2][6] 
       (.C(clk),
        .CE(\array_reg[2]_11 ),
        .CLR(reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[2] [6]));
  FDCE \array_reg_reg[2][7] 
       (.C(clk),
        .CE(\array_reg[2]_11 ),
        .CLR(reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[2] [7]));
  FDCE \array_reg_reg[2][8] 
       (.C(clk),
        .CE(\array_reg[2]_11 ),
        .CLR(reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[2] [8]));
  FDCE \array_reg_reg[2][9] 
       (.C(clk),
        .CE(\array_reg[2]_11 ),
        .CLR(reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[2] [9]));
  FDCE \array_reg_reg[3][0] 
       (.C(clk),
        .CE(\array_reg[3]_14 ),
        .CLR(reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[3] [0]));
  FDCE \array_reg_reg[3][10] 
       (.C(clk),
        .CE(\array_reg[3]_14 ),
        .CLR(reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[3] [10]));
  FDCE \array_reg_reg[3][12] 
       (.C(clk),
        .CE(\array_reg[3]_14 ),
        .CLR(reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[3] [12]));
  FDCE \array_reg_reg[3][13] 
       (.C(clk),
        .CE(\array_reg[3]_14 ),
        .CLR(reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[3] [13]));
  FDCE \array_reg_reg[3][14] 
       (.C(clk),
        .CE(\array_reg[3]_14 ),
        .CLR(reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[3] [14]));
  FDCE \array_reg_reg[3][15] 
       (.C(clk),
        .CE(\array_reg[3]_14 ),
        .CLR(reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[3] [15]));
  FDCE \array_reg_reg[3][1] 
       (.C(clk),
        .CE(\array_reg[3]_14 ),
        .CLR(reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[3] [1]));
  FDCE \array_reg_reg[3][2] 
       (.C(clk),
        .CE(\array_reg[3]_14 ),
        .CLR(reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[3] [2]));
  FDCE \array_reg_reg[3][3] 
       (.C(clk),
        .CE(\array_reg[3]_14 ),
        .CLR(reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[3] [3]));
  FDCE \array_reg_reg[3][4] 
       (.C(clk),
        .CE(\array_reg[3]_14 ),
        .CLR(reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[3] [4]));
  FDCE \array_reg_reg[3][5] 
       (.C(clk),
        .CE(\array_reg[3]_14 ),
        .CLR(reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[3] [5]));
  FDCE \array_reg_reg[3][6] 
       (.C(clk),
        .CE(\array_reg[3]_14 ),
        .CLR(reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[3] [6]));
  FDCE \array_reg_reg[3][7] 
       (.C(clk),
        .CE(\array_reg[3]_14 ),
        .CLR(reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[3] [7]));
  FDCE \array_reg_reg[3][8] 
       (.C(clk),
        .CE(\array_reg[3]_14 ),
        .CLR(reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[3] [8]));
  FDCE \array_reg_reg[3][9] 
       (.C(clk),
        .CE(\array_reg[3]_14 ),
        .CLR(reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[3] [9]));
  FDCE \array_reg_reg[4][0] 
       (.C(clk),
        .CE(\array_reg[4]_1 ),
        .CLR(reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[4] [0]));
  FDCE \array_reg_reg[4][10] 
       (.C(clk),
        .CE(\array_reg[4]_1 ),
        .CLR(reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[4] [10]));
  FDCE \array_reg_reg[4][12] 
       (.C(clk),
        .CE(\array_reg[4]_1 ),
        .CLR(reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[4] [12]));
  FDCE \array_reg_reg[4][13] 
       (.C(clk),
        .CE(\array_reg[4]_1 ),
        .CLR(reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[4] [13]));
  FDCE \array_reg_reg[4][14] 
       (.C(clk),
        .CE(\array_reg[4]_1 ),
        .CLR(reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[4] [14]));
  FDCE \array_reg_reg[4][15] 
       (.C(clk),
        .CE(\array_reg[4]_1 ),
        .CLR(reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[4] [15]));
  FDCE \array_reg_reg[4][1] 
       (.C(clk),
        .CE(\array_reg[4]_1 ),
        .CLR(reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[4] [1]));
  FDCE \array_reg_reg[4][2] 
       (.C(clk),
        .CE(\array_reg[4]_1 ),
        .CLR(reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[4] [2]));
  FDCE \array_reg_reg[4][3] 
       (.C(clk),
        .CE(\array_reg[4]_1 ),
        .CLR(reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[4] [3]));
  FDCE \array_reg_reg[4][4] 
       (.C(clk),
        .CE(\array_reg[4]_1 ),
        .CLR(reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[4] [4]));
  FDCE \array_reg_reg[4][5] 
       (.C(clk),
        .CE(\array_reg[4]_1 ),
        .CLR(reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[4] [5]));
  FDCE \array_reg_reg[4][6] 
       (.C(clk),
        .CE(\array_reg[4]_1 ),
        .CLR(reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[4] [6]));
  FDCE \array_reg_reg[4][7] 
       (.C(clk),
        .CE(\array_reg[4]_1 ),
        .CLR(reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[4] [7]));
  FDCE \array_reg_reg[4][8] 
       (.C(clk),
        .CE(\array_reg[4]_1 ),
        .CLR(reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[4] [8]));
  FDCE \array_reg_reg[4][9] 
       (.C(clk),
        .CE(\array_reg[4]_1 ),
        .CLR(reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[4] [9]));
  FDCE \array_reg_reg[5][0] 
       (.C(clk),
        .CE(\array_reg[5]_2 ),
        .CLR(reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[5] [0]));
  FDCE \array_reg_reg[5][10] 
       (.C(clk),
        .CE(\array_reg[5]_2 ),
        .CLR(reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[5] [10]));
  FDCE \array_reg_reg[5][12] 
       (.C(clk),
        .CE(\array_reg[5]_2 ),
        .CLR(reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[5] [12]));
  FDCE \array_reg_reg[5][13] 
       (.C(clk),
        .CE(\array_reg[5]_2 ),
        .CLR(reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[5] [13]));
  FDCE \array_reg_reg[5][14] 
       (.C(clk),
        .CE(\array_reg[5]_2 ),
        .CLR(reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[5] [14]));
  FDCE \array_reg_reg[5][15] 
       (.C(clk),
        .CE(\array_reg[5]_2 ),
        .CLR(reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[5] [15]));
  FDCE \array_reg_reg[5][1] 
       (.C(clk),
        .CE(\array_reg[5]_2 ),
        .CLR(reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[5] [1]));
  FDCE \array_reg_reg[5][2] 
       (.C(clk),
        .CE(\array_reg[5]_2 ),
        .CLR(reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[5] [2]));
  FDCE \array_reg_reg[5][3] 
       (.C(clk),
        .CE(\array_reg[5]_2 ),
        .CLR(reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[5] [3]));
  FDCE \array_reg_reg[5][4] 
       (.C(clk),
        .CE(\array_reg[5]_2 ),
        .CLR(reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[5] [4]));
  FDCE \array_reg_reg[5][5] 
       (.C(clk),
        .CE(\array_reg[5]_2 ),
        .CLR(reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[5] [5]));
  FDCE \array_reg_reg[5][6] 
       (.C(clk),
        .CE(\array_reg[5]_2 ),
        .CLR(reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[5] [6]));
  FDCE \array_reg_reg[5][7] 
       (.C(clk),
        .CE(\array_reg[5]_2 ),
        .CLR(reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[5] [7]));
  FDCE \array_reg_reg[5][8] 
       (.C(clk),
        .CE(\array_reg[5]_2 ),
        .CLR(reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[5] [8]));
  FDCE \array_reg_reg[5][9] 
       (.C(clk),
        .CE(\array_reg[5]_2 ),
        .CLR(reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[5] [9]));
  FDCE \array_reg_reg[6][0] 
       (.C(clk),
        .CE(\array_reg[6]_12 ),
        .CLR(reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[6] [0]));
  FDCE \array_reg_reg[6][10] 
       (.C(clk),
        .CE(\array_reg[6]_12 ),
        .CLR(reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[6] [10]));
  FDCE \array_reg_reg[6][12] 
       (.C(clk),
        .CE(\array_reg[6]_12 ),
        .CLR(reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[6] [12]));
  FDCE \array_reg_reg[6][13] 
       (.C(clk),
        .CE(\array_reg[6]_12 ),
        .CLR(reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[6] [13]));
  FDCE \array_reg_reg[6][14] 
       (.C(clk),
        .CE(\array_reg[6]_12 ),
        .CLR(reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[6] [14]));
  FDCE \array_reg_reg[6][15] 
       (.C(clk),
        .CE(\array_reg[6]_12 ),
        .CLR(reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[6] [15]));
  FDCE \array_reg_reg[6][1] 
       (.C(clk),
        .CE(\array_reg[6]_12 ),
        .CLR(reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[6] [1]));
  FDCE \array_reg_reg[6][2] 
       (.C(clk),
        .CE(\array_reg[6]_12 ),
        .CLR(reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[6] [2]));
  FDCE \array_reg_reg[6][3] 
       (.C(clk),
        .CE(\array_reg[6]_12 ),
        .CLR(reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[6] [3]));
  FDCE \array_reg_reg[6][4] 
       (.C(clk),
        .CE(\array_reg[6]_12 ),
        .CLR(reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[6] [4]));
  FDCE \array_reg_reg[6][5] 
       (.C(clk),
        .CE(\array_reg[6]_12 ),
        .CLR(reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[6] [5]));
  FDCE \array_reg_reg[6][6] 
       (.C(clk),
        .CE(\array_reg[6]_12 ),
        .CLR(reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[6] [6]));
  FDCE \array_reg_reg[6][7] 
       (.C(clk),
        .CE(\array_reg[6]_12 ),
        .CLR(reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[6] [7]));
  FDCE \array_reg_reg[6][8] 
       (.C(clk),
        .CE(\array_reg[6]_12 ),
        .CLR(reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[6] [8]));
  FDCE \array_reg_reg[6][9] 
       (.C(clk),
        .CE(\array_reg[6]_12 ),
        .CLR(reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[6] [9]));
  FDCE \array_reg_reg[7][0] 
       (.C(clk),
        .CE(\array_reg[7]_13 ),
        .CLR(reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[7] [0]));
  FDCE \array_reg_reg[7][10] 
       (.C(clk),
        .CE(\array_reg[7]_13 ),
        .CLR(reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[7] [10]));
  FDCE \array_reg_reg[7][12] 
       (.C(clk),
        .CE(\array_reg[7]_13 ),
        .CLR(reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[7] [12]));
  FDCE \array_reg_reg[7][13] 
       (.C(clk),
        .CE(\array_reg[7]_13 ),
        .CLR(reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[7] [13]));
  FDCE \array_reg_reg[7][14] 
       (.C(clk),
        .CE(\array_reg[7]_13 ),
        .CLR(reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[7] [14]));
  FDCE \array_reg_reg[7][15] 
       (.C(clk),
        .CE(\array_reg[7]_13 ),
        .CLR(reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[7] [15]));
  FDCE \array_reg_reg[7][1] 
       (.C(clk),
        .CE(\array_reg[7]_13 ),
        .CLR(reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[7] [1]));
  FDCE \array_reg_reg[7][2] 
       (.C(clk),
        .CE(\array_reg[7]_13 ),
        .CLR(reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[7] [2]));
  FDCE \array_reg_reg[7][3] 
       (.C(clk),
        .CE(\array_reg[7]_13 ),
        .CLR(reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[7] [3]));
  FDCE \array_reg_reg[7][4] 
       (.C(clk),
        .CE(\array_reg[7]_13 ),
        .CLR(reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[7] [4]));
  FDCE \array_reg_reg[7][5] 
       (.C(clk),
        .CE(\array_reg[7]_13 ),
        .CLR(reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[7] [5]));
  FDCE \array_reg_reg[7][6] 
       (.C(clk),
        .CE(\array_reg[7]_13 ),
        .CLR(reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[7] [6]));
  FDCE \array_reg_reg[7][7] 
       (.C(clk),
        .CE(\array_reg[7]_13 ),
        .CLR(reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[7] [7]));
  FDCE \array_reg_reg[7][8] 
       (.C(clk),
        .CE(\array_reg[7]_13 ),
        .CLR(reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[7] [8]));
  FDCE \array_reg_reg[7][9] 
       (.C(clk),
        .CE(\array_reg[7]_13 ),
        .CLR(reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[7] [9]));
  FDCE \array_reg_reg[8][0] 
       (.C(clk),
        .CE(\array_reg[8]_4 ),
        .CLR(reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[8] [0]));
  FDCE \array_reg_reg[8][10] 
       (.C(clk),
        .CE(\array_reg[8]_4 ),
        .CLR(reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[8] [10]));
  FDCE \array_reg_reg[8][12] 
       (.C(clk),
        .CE(\array_reg[8]_4 ),
        .CLR(reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[8] [12]));
  FDCE \array_reg_reg[8][13] 
       (.C(clk),
        .CE(\array_reg[8]_4 ),
        .CLR(reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[8] [13]));
  FDCE \array_reg_reg[8][14] 
       (.C(clk),
        .CE(\array_reg[8]_4 ),
        .CLR(reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[8] [14]));
  FDCE \array_reg_reg[8][15] 
       (.C(clk),
        .CE(\array_reg[8]_4 ),
        .CLR(reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[8] [15]));
  FDCE \array_reg_reg[8][1] 
       (.C(clk),
        .CE(\array_reg[8]_4 ),
        .CLR(reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[8] [1]));
  FDCE \array_reg_reg[8][2] 
       (.C(clk),
        .CE(\array_reg[8]_4 ),
        .CLR(reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[8] [2]));
  FDCE \array_reg_reg[8][3] 
       (.C(clk),
        .CE(\array_reg[8]_4 ),
        .CLR(reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[8] [3]));
  FDCE \array_reg_reg[8][4] 
       (.C(clk),
        .CE(\array_reg[8]_4 ),
        .CLR(reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[8] [4]));
  FDCE \array_reg_reg[8][5] 
       (.C(clk),
        .CE(\array_reg[8]_4 ),
        .CLR(reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[8] [5]));
  FDCE \array_reg_reg[8][6] 
       (.C(clk),
        .CE(\array_reg[8]_4 ),
        .CLR(reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[8] [6]));
  FDCE \array_reg_reg[8][7] 
       (.C(clk),
        .CE(\array_reg[8]_4 ),
        .CLR(reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[8] [7]));
  FDCE \array_reg_reg[8][8] 
       (.C(clk),
        .CE(\array_reg[8]_4 ),
        .CLR(reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[8] [8]));
  FDCE \array_reg_reg[8][9] 
       (.C(clk),
        .CE(\array_reg[8]_4 ),
        .CLR(reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[8] [9]));
  FDCE \array_reg_reg[9][0] 
       (.C(clk),
        .CE(\array_reg[9]_7 ),
        .CLR(reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[9] [0]));
  FDCE \array_reg_reg[9][10] 
       (.C(clk),
        .CE(\array_reg[9]_7 ),
        .CLR(reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[9] [10]));
  FDCE \array_reg_reg[9][12] 
       (.C(clk),
        .CE(\array_reg[9]_7 ),
        .CLR(reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[9] [12]));
  FDCE \array_reg_reg[9][13] 
       (.C(clk),
        .CE(\array_reg[9]_7 ),
        .CLR(reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[9] [13]));
  FDCE \array_reg_reg[9][14] 
       (.C(clk),
        .CE(\array_reg[9]_7 ),
        .CLR(reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[9] [14]));
  FDCE \array_reg_reg[9][15] 
       (.C(clk),
        .CE(\array_reg[9]_7 ),
        .CLR(reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[9] [15]));
  FDCE \array_reg_reg[9][1] 
       (.C(clk),
        .CE(\array_reg[9]_7 ),
        .CLR(reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[9] [1]));
  FDCE \array_reg_reg[9][2] 
       (.C(clk),
        .CE(\array_reg[9]_7 ),
        .CLR(reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[9] [2]));
  FDCE \array_reg_reg[9][3] 
       (.C(clk),
        .CE(\array_reg[9]_7 ),
        .CLR(reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[9] [3]));
  FDCE \array_reg_reg[9][4] 
       (.C(clk),
        .CE(\array_reg[9]_7 ),
        .CLR(reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[9] [4]));
  FDCE \array_reg_reg[9][5] 
       (.C(clk),
        .CE(\array_reg[9]_7 ),
        .CLR(reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[9] [5]));
  FDCE \array_reg_reg[9][6] 
       (.C(clk),
        .CE(\array_reg[9]_7 ),
        .CLR(reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[9] [6]));
  FDCE \array_reg_reg[9][7] 
       (.C(clk),
        .CE(\array_reg[9]_7 ),
        .CLR(reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[9] [7]));
  FDCE \array_reg_reg[9][8] 
       (.C(clk),
        .CE(\array_reg[9]_7 ),
        .CLR(reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[9] [8]));
  FDCE \array_reg_reg[9][9] 
       (.C(clk),
        .CE(\array_reg[9]_7 ),
        .CLR(reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[9] [9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[0]_i_4 
       (.I0(\array_reg_reg[3] [12]),
        .I1(\array_reg_reg[2] [12]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[1] [12]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[0] [12]),
        .O(\edges[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[0]_i_5 
       (.I0(\array_reg_reg[7] [12]),
        .I1(\array_reg_reg[6] [12]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[5] [12]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[4] [12]),
        .O(\edges[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[0]_i_6 
       (.I0(\array_reg_reg[11] [12]),
        .I1(\array_reg_reg[10] [12]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[9] [12]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[8] [12]),
        .O(\edges[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[0]_i_7 
       (.I0(\array_reg_reg[15] [12]),
        .I1(\array_reg_reg[14] [12]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[13] [12]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[12] [12]),
        .O(\edges[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[1]_i_4 
       (.I0(\array_reg_reg[3] [13]),
        .I1(\array_reg_reg[2] [13]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[1] [13]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[0] [13]),
        .O(\edges[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[1]_i_5 
       (.I0(\array_reg_reg[7] [13]),
        .I1(\array_reg_reg[6] [13]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[5] [13]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[4] [13]),
        .O(\edges[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[1]_i_6 
       (.I0(\array_reg_reg[11] [13]),
        .I1(\array_reg_reg[10] [13]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[9] [13]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[8] [13]),
        .O(\edges[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[1]_i_7 
       (.I0(\array_reg_reg[15] [13]),
        .I1(\array_reg_reg[14] [13]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[13] [13]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[12] [13]),
        .O(\edges[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[2]_i_4 
       (.I0(\array_reg_reg[3] [14]),
        .I1(\array_reg_reg[2] [14]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[1] [14]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[0] [14]),
        .O(\edges[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[2]_i_5 
       (.I0(\array_reg_reg[7] [14]),
        .I1(\array_reg_reg[6] [14]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[5] [14]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[4] [14]),
        .O(\edges[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[2]_i_6 
       (.I0(\array_reg_reg[11] [14]),
        .I1(\array_reg_reg[10] [14]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[9] [14]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[8] [14]),
        .O(\edges[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[2]_i_7 
       (.I0(\array_reg_reg[15] [14]),
        .I1(\array_reg_reg[14] [14]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[13] [14]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[12] [14]),
        .O(\edges[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[3]_i_4 
       (.I0(\array_reg_reg[3] [15]),
        .I1(\array_reg_reg[2] [15]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[1] [15]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[0] [15]),
        .O(\edges[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[3]_i_5 
       (.I0(\array_reg_reg[7] [15]),
        .I1(\array_reg_reg[6] [15]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[5] [15]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[4] [15]),
        .O(\edges[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[3]_i_6 
       (.I0(\array_reg_reg[11] [15]),
        .I1(\array_reg_reg[10] [15]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[9] [15]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[8] [15]),
        .O(\edges[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[3]_i_7 
       (.I0(\array_reg_reg[15] [15]),
        .I1(\array_reg_reg[14] [15]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg[13] [15]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg[12] [15]),
        .O(\edges[3]_i_7_n_0 ));
  MUXF8 \edges_reg[0]_i_1 
       (.I0(\edges_reg[0]_i_2_n_0 ),
        .I1(\edges_reg[0]_i_3_n_0 ),
        .O(D[0]),
        .S(r_ptr_reg_reg__0[3]));
  MUXF7 \edges_reg[0]_i_2 
       (.I0(\edges[0]_i_4_n_0 ),
        .I1(\edges[0]_i_5_n_0 ),
        .O(\edges_reg[0]_i_2_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF7 \edges_reg[0]_i_3 
       (.I0(\edges[0]_i_6_n_0 ),
        .I1(\edges[0]_i_7_n_0 ),
        .O(\edges_reg[0]_i_3_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF8 \edges_reg[1]_i_1 
       (.I0(\edges_reg[1]_i_2_n_0 ),
        .I1(\edges_reg[1]_i_3_n_0 ),
        .O(D[1]),
        .S(r_ptr_reg_reg__0[3]));
  MUXF7 \edges_reg[1]_i_2 
       (.I0(\edges[1]_i_4_n_0 ),
        .I1(\edges[1]_i_5_n_0 ),
        .O(\edges_reg[1]_i_2_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF7 \edges_reg[1]_i_3 
       (.I0(\edges[1]_i_6_n_0 ),
        .I1(\edges[1]_i_7_n_0 ),
        .O(\edges_reg[1]_i_3_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF8 \edges_reg[2]_i_1 
       (.I0(\edges_reg[2]_i_2_n_0 ),
        .I1(\edges_reg[2]_i_3_n_0 ),
        .O(D[2]),
        .S(r_ptr_reg_reg__0[3]));
  MUXF7 \edges_reg[2]_i_2 
       (.I0(\edges[2]_i_4_n_0 ),
        .I1(\edges[2]_i_5_n_0 ),
        .O(\edges_reg[2]_i_2_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF7 \edges_reg[2]_i_3 
       (.I0(\edges[2]_i_6_n_0 ),
        .I1(\edges[2]_i_7_n_0 ),
        .O(\edges_reg[2]_i_3_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF8 \edges_reg[3]_i_1 
       (.I0(\edges_reg[3]_i_2_n_0 ),
        .I1(\edges_reg[3]_i_3_n_0 ),
        .O(D[3]),
        .S(r_ptr_reg_reg__0[3]));
  MUXF7 \edges_reg[3]_i_2 
       (.I0(\edges[3]_i_4_n_0 ),
        .I1(\edges[3]_i_5_n_0 ),
        .O(\edges_reg[3]_i_2_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  MUXF7 \edges_reg[3]_i_3 
       (.I0(\edges[3]_i_6_n_0 ),
        .I1(\edges[3]_i_7_n_0 ),
        .O(\edges_reg[3]_i_3_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  LUT6 #(
    .INIT(64'hBABBBABBAAAAA0AA)) 
    empty_reg_i_1
       (.I0(fifo_empty),
        .I1(empty_reg_i_2__0_n_0),
        .I2(blClkIn[0]),
        .I3(blClkIn[1]),
        .I4(full),
        .I5(rd),
        .O(empty_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'hEBBBBBBBBEEEEEEE)) 
    empty_reg_i_2__0
       (.I0(empty_reg_i_3__0_n_0),
        .I1(r_ptr_reg_reg__0[3]),
        .I2(r_ptr_reg_reg__0[0]),
        .I3(r_ptr_reg_reg__0[1]),
        .I4(r_ptr_reg_reg__0[2]),
        .I5(w_ptr_reg_reg__0[3]),
        .O(empty_reg_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hFFFF6FF6F96FFFFF)) 
    empty_reg_i_3__0
       (.I0(r_ptr_reg_reg__0[2]),
        .I1(w_ptr_reg_reg__0[2]),
        .I2(w_ptr_reg_reg__0[1]),
        .I3(r_ptr_reg_reg__0[1]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(w_ptr_reg_reg__0[0]),
        .O(empty_reg_i_3__0_n_0));
  FDPE empty_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_reg_i_1_n_0),
        .PRE(reset),
        .Q(fifo_empty));
  LUT6 #(
    .INIT(64'hFFFFFCDF00000010)) 
    fifo_rd_i_1
       (.I0(fifo_empty),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(reset),
        .I5(rd),
        .O(fifo_rd_reg));
  LUT6 #(
    .INIT(64'hAF00AF00FF0CAF00)) 
    full_reg_i_1
       (.I0(fifo_empty),
        .I1(full_reg_i_2_n_0),
        .I2(rd),
        .I3(full),
        .I4(blClkIn[1]),
        .I5(blClkIn[0]),
        .O(full_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000006CCC9333)) 
    full_reg_i_2
       (.I0(w_ptr_reg_reg__0[2]),
        .I1(w_ptr_reg_reg__0[3]),
        .I2(w_ptr_reg_reg__0[0]),
        .I3(w_ptr_reg_reg__0[1]),
        .I4(r_ptr_reg_reg__0[3]),
        .I5(full_reg_i_3_n_0),
        .O(full_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFF6FF6F96FFFFF)) 
    full_reg_i_3
       (.I0(w_ptr_reg_reg__0[2]),
        .I1(r_ptr_reg_reg__0[2]),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(w_ptr_reg_reg__0[1]),
        .I4(w_ptr_reg_reg__0[0]),
        .I5(r_ptr_reg_reg__0[0]),
        .O(full_reg_i_3_n_0));
  FDCE full_reg_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(full_reg_i_1_n_0),
        .Q(full));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_ptr_reg[0]_i_1__0 
       (.I0(r_ptr_reg_reg__0[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_ptr_reg[1]_i_1__0 
       (.I0(r_ptr_reg_reg__0[0]),
        .I1(r_ptr_reg_reg__0[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_ptr_reg[2]_i_1__0 
       (.I0(r_ptr_reg_reg__0[2]),
        .I1(r_ptr_reg_reg__0[1]),
        .I2(r_ptr_reg_reg__0[0]),
        .O(\r_ptr_reg[2]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h20F0)) 
    \r_ptr_reg[3]_i_1 
       (.I0(blClkIn[1]),
        .I1(blClkIn[0]),
        .I2(rd),
        .I3(fifo_empty),
        .O(\r_ptr_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_ptr_reg[3]_i_2__0 
       (.I0(r_ptr_reg_reg__0[2]),
        .I1(r_ptr_reg_reg__0[1]),
        .I2(r_ptr_reg_reg__0[0]),
        .I3(r_ptr_reg_reg__0[3]),
        .O(plusOp[3]));
  FDCE \r_ptr_reg_reg[0] 
       (.C(clk),
        .CE(\r_ptr_reg[3]_i_1_n_0 ),
        .CLR(reset),
        .D(plusOp[0]),
        .Q(r_ptr_reg_reg__0[0]));
  FDCE \r_ptr_reg_reg[1] 
       (.C(clk),
        .CE(\r_ptr_reg[3]_i_1_n_0 ),
        .CLR(reset),
        .D(plusOp[1]),
        .Q(r_ptr_reg_reg__0[1]));
  FDCE \r_ptr_reg_reg[2] 
       (.C(clk),
        .CE(\r_ptr_reg[3]_i_1_n_0 ),
        .CLR(reset),
        .D(\r_ptr_reg[2]_i_1__0_n_0 ),
        .Q(r_ptr_reg_reg__0[2]));
  FDCE \r_ptr_reg_reg[3] 
       (.C(clk),
        .CE(\r_ptr_reg[3]_i_1_n_0 ),
        .CLR(reset),
        .D(plusOp[3]),
        .Q(r_ptr_reg_reg__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \w_ptr_reg[0]_i_1 
       (.I0(w_ptr_reg_reg__0[0]),
        .O(plusOp0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w_ptr_reg[1]_i_1 
       (.I0(w_ptr_reg_reg__0[0]),
        .I1(w_ptr_reg_reg__0[1]),
        .O(plusOp0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \w_ptr_reg[2]_i_1 
       (.I0(w_ptr_reg_reg__0[2]),
        .I1(w_ptr_reg_reg__0[1]),
        .I2(w_ptr_reg_reg__0[0]),
        .O(plusOp0_in[2]));
  LUT4 #(
    .INIT(16'h0C04)) 
    \w_ptr_reg[3]_i_1 
       (.I0(full),
        .I1(blClkIn[1]),
        .I2(blClkIn[0]),
        .I3(rd),
        .O(\w_ptr_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \w_ptr_reg[3]_i_2 
       (.I0(w_ptr_reg_reg__0[2]),
        .I1(w_ptr_reg_reg__0[3]),
        .I2(w_ptr_reg_reg__0[0]),
        .I3(w_ptr_reg_reg__0[1]),
        .O(plusOp0_in[3]));
  FDCE \w_ptr_reg_reg[0] 
       (.C(clk),
        .CE(\w_ptr_reg[3]_i_1_n_0 ),
        .CLR(reset),
        .D(plusOp0_in[0]),
        .Q(w_ptr_reg_reg__0[0]));
  FDCE \w_ptr_reg_reg[1] 
       (.C(clk),
        .CE(\w_ptr_reg[3]_i_1_n_0 ),
        .CLR(reset),
        .D(plusOp0_in[1]),
        .Q(w_ptr_reg_reg__0[1]));
  FDCE \w_ptr_reg_reg[2] 
       (.C(clk),
        .CE(\w_ptr_reg[3]_i_1_n_0 ),
        .CLR(reset),
        .D(plusOp0_in[2]),
        .Q(w_ptr_reg_reg__0[2]));
  FDCE \w_ptr_reg_reg[3] 
       (.C(clk),
        .CE(\w_ptr_reg[3]_i_1_n_0 ),
        .CLR(reset),
        .D(plusOp0_in[3]),
        .Q(w_ptr_reg_reg__0[3]));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module GPIOTest_GPIOInterface_0_0_fifo_2
   (GPIOPortRd,
    clk,
    reset,
    wr,
    GPIOPortWr,
    blClkOut,
    full,
    D);
  output [17:0]GPIOPortRd;
  input clk;
  input reset;
  input wr;
  input [0:0]GPIOPortWr;
  input [1:0]blClkOut;
  input full;
  input [15:0]D;

  wire [15:0]D;
  wire [17:0]GPIOPortRd;
  wire \GPIOPortRd[0]_INST_0_i_1_n_0 ;
  wire \GPIOPortRd[0]_INST_0_i_2_n_0 ;
  wire \GPIOPortRd[0]_INST_0_i_3_n_0 ;
  wire \GPIOPortRd[0]_INST_0_i_4_n_0 ;
  wire \GPIOPortRd[0]_INST_0_i_5_n_0 ;
  wire \GPIOPortRd[10]_INST_0_i_1_n_0 ;
  wire \GPIOPortRd[10]_INST_0_i_2_n_0 ;
  wire \GPIOPortRd[10]_INST_0_i_3_n_0 ;
  wire \GPIOPortRd[10]_INST_0_i_4_n_0 ;
  wire \GPIOPortRd[10]_INST_0_i_5_n_0 ;
  wire \GPIOPortRd[11]_INST_0_i_1_n_0 ;
  wire \GPIOPortRd[11]_INST_0_i_2_n_0 ;
  wire \GPIOPortRd[11]_INST_0_i_3_n_0 ;
  wire \GPIOPortRd[11]_INST_0_i_4_n_0 ;
  wire \GPIOPortRd[11]_INST_0_i_5_n_0 ;
  wire \GPIOPortRd[12]_INST_0_i_1_n_0 ;
  wire \GPIOPortRd[12]_INST_0_i_2_n_0 ;
  wire \GPIOPortRd[12]_INST_0_i_3_n_0 ;
  wire \GPIOPortRd[12]_INST_0_i_4_n_0 ;
  wire \GPIOPortRd[12]_INST_0_i_5_n_0 ;
  wire \GPIOPortRd[13]_INST_0_i_1_n_0 ;
  wire \GPIOPortRd[13]_INST_0_i_2_n_0 ;
  wire \GPIOPortRd[13]_INST_0_i_3_n_0 ;
  wire \GPIOPortRd[13]_INST_0_i_4_n_0 ;
  wire \GPIOPortRd[13]_INST_0_i_5_n_0 ;
  wire \GPIOPortRd[14]_INST_0_i_1_n_0 ;
  wire \GPIOPortRd[14]_INST_0_i_2_n_0 ;
  wire \GPIOPortRd[14]_INST_0_i_3_n_0 ;
  wire \GPIOPortRd[14]_INST_0_i_4_n_0 ;
  wire \GPIOPortRd[14]_INST_0_i_5_n_0 ;
  wire \GPIOPortRd[15]_INST_0_i_1_n_0 ;
  wire \GPIOPortRd[15]_INST_0_i_2_n_0 ;
  wire \GPIOPortRd[15]_INST_0_i_3_n_0 ;
  wire \GPIOPortRd[15]_INST_0_i_4_n_0 ;
  wire \GPIOPortRd[15]_INST_0_i_5_n_0 ;
  wire \GPIOPortRd[1]_INST_0_i_1_n_0 ;
  wire \GPIOPortRd[1]_INST_0_i_2_n_0 ;
  wire \GPIOPortRd[1]_INST_0_i_3_n_0 ;
  wire \GPIOPortRd[1]_INST_0_i_4_n_0 ;
  wire \GPIOPortRd[1]_INST_0_i_5_n_0 ;
  wire \GPIOPortRd[2]_INST_0_i_1_n_0 ;
  wire \GPIOPortRd[2]_INST_0_i_2_n_0 ;
  wire \GPIOPortRd[2]_INST_0_i_3_n_0 ;
  wire \GPIOPortRd[2]_INST_0_i_4_n_0 ;
  wire \GPIOPortRd[2]_INST_0_i_5_n_0 ;
  wire \GPIOPortRd[3]_INST_0_i_1_n_0 ;
  wire \GPIOPortRd[3]_INST_0_i_2_n_0 ;
  wire \GPIOPortRd[3]_INST_0_i_3_n_0 ;
  wire \GPIOPortRd[3]_INST_0_i_4_n_0 ;
  wire \GPIOPortRd[3]_INST_0_i_5_n_0 ;
  wire \GPIOPortRd[4]_INST_0_i_1_n_0 ;
  wire \GPIOPortRd[4]_INST_0_i_2_n_0 ;
  wire \GPIOPortRd[4]_INST_0_i_3_n_0 ;
  wire \GPIOPortRd[4]_INST_0_i_4_n_0 ;
  wire \GPIOPortRd[4]_INST_0_i_5_n_0 ;
  wire \GPIOPortRd[5]_INST_0_i_1_n_0 ;
  wire \GPIOPortRd[5]_INST_0_i_2_n_0 ;
  wire \GPIOPortRd[5]_INST_0_i_3_n_0 ;
  wire \GPIOPortRd[5]_INST_0_i_4_n_0 ;
  wire \GPIOPortRd[5]_INST_0_i_5_n_0 ;
  wire \GPIOPortRd[6]_INST_0_i_1_n_0 ;
  wire \GPIOPortRd[6]_INST_0_i_2_n_0 ;
  wire \GPIOPortRd[6]_INST_0_i_3_n_0 ;
  wire \GPIOPortRd[6]_INST_0_i_4_n_0 ;
  wire \GPIOPortRd[6]_INST_0_i_5_n_0 ;
  wire \GPIOPortRd[7]_INST_0_i_1_n_0 ;
  wire \GPIOPortRd[7]_INST_0_i_2_n_0 ;
  wire \GPIOPortRd[7]_INST_0_i_3_n_0 ;
  wire \GPIOPortRd[7]_INST_0_i_4_n_0 ;
  wire \GPIOPortRd[7]_INST_0_i_5_n_0 ;
  wire \GPIOPortRd[8]_INST_0_i_1_n_0 ;
  wire \GPIOPortRd[8]_INST_0_i_2_n_0 ;
  wire \GPIOPortRd[8]_INST_0_i_3_n_0 ;
  wire \GPIOPortRd[8]_INST_0_i_4_n_0 ;
  wire \GPIOPortRd[8]_INST_0_i_5_n_0 ;
  wire \GPIOPortRd[9]_INST_0_i_1_n_0 ;
  wire \GPIOPortRd[9]_INST_0_i_2_n_0 ;
  wire \GPIOPortRd[9]_INST_0_i_3_n_0 ;
  wire \GPIOPortRd[9]_INST_0_i_4_n_0 ;
  wire \GPIOPortRd[9]_INST_0_i_5_n_0 ;
  wire [0:0]GPIOPortWr;
  wire \array_reg[0]_29 ;
  wire \array_reg[10]_23 ;
  wire \array_reg[11]_17 ;
  wire \array_reg[12]_22 ;
  wire \array_reg[13]_21 ;
  wire \array_reg[14]_20 ;
  wire \array_reg[15][15]_i_1__0_n_0 ;
  wire \array_reg[1]_30 ;
  wire \array_reg[2]_31 ;
  wire \array_reg[3]_18 ;
  wire \array_reg[4]_28 ;
  wire \array_reg[5]_27 ;
  wire \array_reg[6]_26 ;
  wire \array_reg[7]_19 ;
  wire \array_reg[8]_25 ;
  wire \array_reg[9]_24 ;
  wire \array_reg_reg_n_0_[0][0] ;
  wire \array_reg_reg_n_0_[0][10] ;
  wire \array_reg_reg_n_0_[0][11] ;
  wire \array_reg_reg_n_0_[0][12] ;
  wire \array_reg_reg_n_0_[0][13] ;
  wire \array_reg_reg_n_0_[0][14] ;
  wire \array_reg_reg_n_0_[0][15] ;
  wire \array_reg_reg_n_0_[0][1] ;
  wire \array_reg_reg_n_0_[0][2] ;
  wire \array_reg_reg_n_0_[0][3] ;
  wire \array_reg_reg_n_0_[0][4] ;
  wire \array_reg_reg_n_0_[0][5] ;
  wire \array_reg_reg_n_0_[0][6] ;
  wire \array_reg_reg_n_0_[0][7] ;
  wire \array_reg_reg_n_0_[0][8] ;
  wire \array_reg_reg_n_0_[0][9] ;
  wire \array_reg_reg_n_0_[10][0] ;
  wire \array_reg_reg_n_0_[10][10] ;
  wire \array_reg_reg_n_0_[10][11] ;
  wire \array_reg_reg_n_0_[10][12] ;
  wire \array_reg_reg_n_0_[10][13] ;
  wire \array_reg_reg_n_0_[10][14] ;
  wire \array_reg_reg_n_0_[10][15] ;
  wire \array_reg_reg_n_0_[10][1] ;
  wire \array_reg_reg_n_0_[10][2] ;
  wire \array_reg_reg_n_0_[10][3] ;
  wire \array_reg_reg_n_0_[10][4] ;
  wire \array_reg_reg_n_0_[10][5] ;
  wire \array_reg_reg_n_0_[10][6] ;
  wire \array_reg_reg_n_0_[10][7] ;
  wire \array_reg_reg_n_0_[10][8] ;
  wire \array_reg_reg_n_0_[10][9] ;
  wire \array_reg_reg_n_0_[11][0] ;
  wire \array_reg_reg_n_0_[11][10] ;
  wire \array_reg_reg_n_0_[11][11] ;
  wire \array_reg_reg_n_0_[11][12] ;
  wire \array_reg_reg_n_0_[11][13] ;
  wire \array_reg_reg_n_0_[11][14] ;
  wire \array_reg_reg_n_0_[11][15] ;
  wire \array_reg_reg_n_0_[11][1] ;
  wire \array_reg_reg_n_0_[11][2] ;
  wire \array_reg_reg_n_0_[11][3] ;
  wire \array_reg_reg_n_0_[11][4] ;
  wire \array_reg_reg_n_0_[11][5] ;
  wire \array_reg_reg_n_0_[11][6] ;
  wire \array_reg_reg_n_0_[11][7] ;
  wire \array_reg_reg_n_0_[11][8] ;
  wire \array_reg_reg_n_0_[11][9] ;
  wire \array_reg_reg_n_0_[12][0] ;
  wire \array_reg_reg_n_0_[12][10] ;
  wire \array_reg_reg_n_0_[12][11] ;
  wire \array_reg_reg_n_0_[12][12] ;
  wire \array_reg_reg_n_0_[12][13] ;
  wire \array_reg_reg_n_0_[12][14] ;
  wire \array_reg_reg_n_0_[12][15] ;
  wire \array_reg_reg_n_0_[12][1] ;
  wire \array_reg_reg_n_0_[12][2] ;
  wire \array_reg_reg_n_0_[12][3] ;
  wire \array_reg_reg_n_0_[12][4] ;
  wire \array_reg_reg_n_0_[12][5] ;
  wire \array_reg_reg_n_0_[12][6] ;
  wire \array_reg_reg_n_0_[12][7] ;
  wire \array_reg_reg_n_0_[12][8] ;
  wire \array_reg_reg_n_0_[12][9] ;
  wire \array_reg_reg_n_0_[13][0] ;
  wire \array_reg_reg_n_0_[13][10] ;
  wire \array_reg_reg_n_0_[13][11] ;
  wire \array_reg_reg_n_0_[13][12] ;
  wire \array_reg_reg_n_0_[13][13] ;
  wire \array_reg_reg_n_0_[13][14] ;
  wire \array_reg_reg_n_0_[13][15] ;
  wire \array_reg_reg_n_0_[13][1] ;
  wire \array_reg_reg_n_0_[13][2] ;
  wire \array_reg_reg_n_0_[13][3] ;
  wire \array_reg_reg_n_0_[13][4] ;
  wire \array_reg_reg_n_0_[13][5] ;
  wire \array_reg_reg_n_0_[13][6] ;
  wire \array_reg_reg_n_0_[13][7] ;
  wire \array_reg_reg_n_0_[13][8] ;
  wire \array_reg_reg_n_0_[13][9] ;
  wire \array_reg_reg_n_0_[14][0] ;
  wire \array_reg_reg_n_0_[14][10] ;
  wire \array_reg_reg_n_0_[14][11] ;
  wire \array_reg_reg_n_0_[14][12] ;
  wire \array_reg_reg_n_0_[14][13] ;
  wire \array_reg_reg_n_0_[14][14] ;
  wire \array_reg_reg_n_0_[14][15] ;
  wire \array_reg_reg_n_0_[14][1] ;
  wire \array_reg_reg_n_0_[14][2] ;
  wire \array_reg_reg_n_0_[14][3] ;
  wire \array_reg_reg_n_0_[14][4] ;
  wire \array_reg_reg_n_0_[14][5] ;
  wire \array_reg_reg_n_0_[14][6] ;
  wire \array_reg_reg_n_0_[14][7] ;
  wire \array_reg_reg_n_0_[14][8] ;
  wire \array_reg_reg_n_0_[14][9] ;
  wire \array_reg_reg_n_0_[15][0] ;
  wire \array_reg_reg_n_0_[15][10] ;
  wire \array_reg_reg_n_0_[15][11] ;
  wire \array_reg_reg_n_0_[15][12] ;
  wire \array_reg_reg_n_0_[15][13] ;
  wire \array_reg_reg_n_0_[15][14] ;
  wire \array_reg_reg_n_0_[15][15] ;
  wire \array_reg_reg_n_0_[15][1] ;
  wire \array_reg_reg_n_0_[15][2] ;
  wire \array_reg_reg_n_0_[15][3] ;
  wire \array_reg_reg_n_0_[15][4] ;
  wire \array_reg_reg_n_0_[15][5] ;
  wire \array_reg_reg_n_0_[15][6] ;
  wire \array_reg_reg_n_0_[15][7] ;
  wire \array_reg_reg_n_0_[15][8] ;
  wire \array_reg_reg_n_0_[15][9] ;
  wire \array_reg_reg_n_0_[1][0] ;
  wire \array_reg_reg_n_0_[1][10] ;
  wire \array_reg_reg_n_0_[1][11] ;
  wire \array_reg_reg_n_0_[1][12] ;
  wire \array_reg_reg_n_0_[1][13] ;
  wire \array_reg_reg_n_0_[1][14] ;
  wire \array_reg_reg_n_0_[1][15] ;
  wire \array_reg_reg_n_0_[1][1] ;
  wire \array_reg_reg_n_0_[1][2] ;
  wire \array_reg_reg_n_0_[1][3] ;
  wire \array_reg_reg_n_0_[1][4] ;
  wire \array_reg_reg_n_0_[1][5] ;
  wire \array_reg_reg_n_0_[1][6] ;
  wire \array_reg_reg_n_0_[1][7] ;
  wire \array_reg_reg_n_0_[1][8] ;
  wire \array_reg_reg_n_0_[1][9] ;
  wire \array_reg_reg_n_0_[2][0] ;
  wire \array_reg_reg_n_0_[2][10] ;
  wire \array_reg_reg_n_0_[2][11] ;
  wire \array_reg_reg_n_0_[2][12] ;
  wire \array_reg_reg_n_0_[2][13] ;
  wire \array_reg_reg_n_0_[2][14] ;
  wire \array_reg_reg_n_0_[2][15] ;
  wire \array_reg_reg_n_0_[2][1] ;
  wire \array_reg_reg_n_0_[2][2] ;
  wire \array_reg_reg_n_0_[2][3] ;
  wire \array_reg_reg_n_0_[2][4] ;
  wire \array_reg_reg_n_0_[2][5] ;
  wire \array_reg_reg_n_0_[2][6] ;
  wire \array_reg_reg_n_0_[2][7] ;
  wire \array_reg_reg_n_0_[2][8] ;
  wire \array_reg_reg_n_0_[2][9] ;
  wire \array_reg_reg_n_0_[3][0] ;
  wire \array_reg_reg_n_0_[3][10] ;
  wire \array_reg_reg_n_0_[3][11] ;
  wire \array_reg_reg_n_0_[3][12] ;
  wire \array_reg_reg_n_0_[3][13] ;
  wire \array_reg_reg_n_0_[3][14] ;
  wire \array_reg_reg_n_0_[3][15] ;
  wire \array_reg_reg_n_0_[3][1] ;
  wire \array_reg_reg_n_0_[3][2] ;
  wire \array_reg_reg_n_0_[3][3] ;
  wire \array_reg_reg_n_0_[3][4] ;
  wire \array_reg_reg_n_0_[3][5] ;
  wire \array_reg_reg_n_0_[3][6] ;
  wire \array_reg_reg_n_0_[3][7] ;
  wire \array_reg_reg_n_0_[3][8] ;
  wire \array_reg_reg_n_0_[3][9] ;
  wire \array_reg_reg_n_0_[4][0] ;
  wire \array_reg_reg_n_0_[4][10] ;
  wire \array_reg_reg_n_0_[4][11] ;
  wire \array_reg_reg_n_0_[4][12] ;
  wire \array_reg_reg_n_0_[4][13] ;
  wire \array_reg_reg_n_0_[4][14] ;
  wire \array_reg_reg_n_0_[4][15] ;
  wire \array_reg_reg_n_0_[4][1] ;
  wire \array_reg_reg_n_0_[4][2] ;
  wire \array_reg_reg_n_0_[4][3] ;
  wire \array_reg_reg_n_0_[4][4] ;
  wire \array_reg_reg_n_0_[4][5] ;
  wire \array_reg_reg_n_0_[4][6] ;
  wire \array_reg_reg_n_0_[4][7] ;
  wire \array_reg_reg_n_0_[4][8] ;
  wire \array_reg_reg_n_0_[4][9] ;
  wire \array_reg_reg_n_0_[5][0] ;
  wire \array_reg_reg_n_0_[5][10] ;
  wire \array_reg_reg_n_0_[5][11] ;
  wire \array_reg_reg_n_0_[5][12] ;
  wire \array_reg_reg_n_0_[5][13] ;
  wire \array_reg_reg_n_0_[5][14] ;
  wire \array_reg_reg_n_0_[5][15] ;
  wire \array_reg_reg_n_0_[5][1] ;
  wire \array_reg_reg_n_0_[5][2] ;
  wire \array_reg_reg_n_0_[5][3] ;
  wire \array_reg_reg_n_0_[5][4] ;
  wire \array_reg_reg_n_0_[5][5] ;
  wire \array_reg_reg_n_0_[5][6] ;
  wire \array_reg_reg_n_0_[5][7] ;
  wire \array_reg_reg_n_0_[5][8] ;
  wire \array_reg_reg_n_0_[5][9] ;
  wire \array_reg_reg_n_0_[6][0] ;
  wire \array_reg_reg_n_0_[6][10] ;
  wire \array_reg_reg_n_0_[6][11] ;
  wire \array_reg_reg_n_0_[6][12] ;
  wire \array_reg_reg_n_0_[6][13] ;
  wire \array_reg_reg_n_0_[6][14] ;
  wire \array_reg_reg_n_0_[6][15] ;
  wire \array_reg_reg_n_0_[6][1] ;
  wire \array_reg_reg_n_0_[6][2] ;
  wire \array_reg_reg_n_0_[6][3] ;
  wire \array_reg_reg_n_0_[6][4] ;
  wire \array_reg_reg_n_0_[6][5] ;
  wire \array_reg_reg_n_0_[6][6] ;
  wire \array_reg_reg_n_0_[6][7] ;
  wire \array_reg_reg_n_0_[6][8] ;
  wire \array_reg_reg_n_0_[6][9] ;
  wire \array_reg_reg_n_0_[7][0] ;
  wire \array_reg_reg_n_0_[7][10] ;
  wire \array_reg_reg_n_0_[7][11] ;
  wire \array_reg_reg_n_0_[7][12] ;
  wire \array_reg_reg_n_0_[7][13] ;
  wire \array_reg_reg_n_0_[7][14] ;
  wire \array_reg_reg_n_0_[7][15] ;
  wire \array_reg_reg_n_0_[7][1] ;
  wire \array_reg_reg_n_0_[7][2] ;
  wire \array_reg_reg_n_0_[7][3] ;
  wire \array_reg_reg_n_0_[7][4] ;
  wire \array_reg_reg_n_0_[7][5] ;
  wire \array_reg_reg_n_0_[7][6] ;
  wire \array_reg_reg_n_0_[7][7] ;
  wire \array_reg_reg_n_0_[7][8] ;
  wire \array_reg_reg_n_0_[7][9] ;
  wire \array_reg_reg_n_0_[8][0] ;
  wire \array_reg_reg_n_0_[8][10] ;
  wire \array_reg_reg_n_0_[8][11] ;
  wire \array_reg_reg_n_0_[8][12] ;
  wire \array_reg_reg_n_0_[8][13] ;
  wire \array_reg_reg_n_0_[8][14] ;
  wire \array_reg_reg_n_0_[8][15] ;
  wire \array_reg_reg_n_0_[8][1] ;
  wire \array_reg_reg_n_0_[8][2] ;
  wire \array_reg_reg_n_0_[8][3] ;
  wire \array_reg_reg_n_0_[8][4] ;
  wire \array_reg_reg_n_0_[8][5] ;
  wire \array_reg_reg_n_0_[8][6] ;
  wire \array_reg_reg_n_0_[8][7] ;
  wire \array_reg_reg_n_0_[8][8] ;
  wire \array_reg_reg_n_0_[8][9] ;
  wire \array_reg_reg_n_0_[9][0] ;
  wire \array_reg_reg_n_0_[9][10] ;
  wire \array_reg_reg_n_0_[9][11] ;
  wire \array_reg_reg_n_0_[9][12] ;
  wire \array_reg_reg_n_0_[9][13] ;
  wire \array_reg_reg_n_0_[9][14] ;
  wire \array_reg_reg_n_0_[9][15] ;
  wire \array_reg_reg_n_0_[9][1] ;
  wire \array_reg_reg_n_0_[9][2] ;
  wire \array_reg_reg_n_0_[9][3] ;
  wire \array_reg_reg_n_0_[9][4] ;
  wire \array_reg_reg_n_0_[9][5] ;
  wire \array_reg_reg_n_0_[9][6] ;
  wire \array_reg_reg_n_0_[9][7] ;
  wire \array_reg_reg_n_0_[9][8] ;
  wire \array_reg_reg_n_0_[9][9] ;
  wire [1:0]blClkOut;
  wire clk;
  wire empty_reg;
  wire empty_reg_i_1__0_n_0;
  wire empty_reg_i_2_n_0;
  wire empty_reg_i_3_n_0;
  wire full;
  wire full_reg_i_1__0_n_0;
  wire full_reg_i_2__0_n_0;
  wire full_reg_i_3__0_n_0;
  wire out_fifo_full;
  wire \r_ptr_reg[0]_i_1_n_0 ;
  wire \r_ptr_reg[1]_i_1_n_0 ;
  wire \r_ptr_reg[2]_i_1_n_0 ;
  wire \r_ptr_reg[3]_i_1__0_n_0 ;
  wire \r_ptr_reg[3]_i_2_n_0 ;
  wire [3:0]r_ptr_reg_reg__0;
  wire reset;
  wire \w_ptr_reg[0]_i_1__0_n_0 ;
  wire \w_ptr_reg[1]_i_1__0_n_0 ;
  wire \w_ptr_reg[2]_i_1__0_n_0 ;
  wire \w_ptr_reg[3]_i_1__0_n_0 ;
  wire \w_ptr_reg[3]_i_2__0_n_0 ;
  wire [3:0]w_ptr_reg_reg__0;
  wire wr;

  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[0]_INST_0 
       (.I0(\GPIOPortRd[0]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg__0[3]),
        .I2(\GPIOPortRd[0]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg__0[2]),
        .I4(\GPIOPortRd[0]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr),
        .O(GPIOPortRd[0]));
  MUXF7 \GPIOPortRd[0]_INST_0_i_1 
       (.I0(\GPIOPortRd[0]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[0]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[0]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[0]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][0] ),
        .I1(\array_reg_reg_n_0_[10][0] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[9][0] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[8][0] ),
        .O(\GPIOPortRd[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[0]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][0] ),
        .I1(\array_reg_reg_n_0_[14][0] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[13][0] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[12][0] ),
        .O(\GPIOPortRd[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[0]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][0] ),
        .I1(\array_reg_reg_n_0_[2][0] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[1][0] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[0][0] ),
        .O(\GPIOPortRd[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[0]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][0] ),
        .I1(\array_reg_reg_n_0_[6][0] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[5][0] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[4][0] ),
        .O(\GPIOPortRd[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[10]_INST_0 
       (.I0(\GPIOPortRd[10]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg__0[3]),
        .I2(\GPIOPortRd[10]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg__0[2]),
        .I4(\GPIOPortRd[10]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr),
        .O(GPIOPortRd[10]));
  MUXF7 \GPIOPortRd[10]_INST_0_i_1 
       (.I0(\GPIOPortRd[10]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[10]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[10]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[10]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][10] ),
        .I1(\array_reg_reg_n_0_[10][10] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[9][10] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[8][10] ),
        .O(\GPIOPortRd[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[10]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][10] ),
        .I1(\array_reg_reg_n_0_[14][10] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[13][10] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[12][10] ),
        .O(\GPIOPortRd[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[10]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][10] ),
        .I1(\array_reg_reg_n_0_[2][10] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[1][10] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[0][10] ),
        .O(\GPIOPortRd[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[10]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][10] ),
        .I1(\array_reg_reg_n_0_[6][10] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[5][10] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[4][10] ),
        .O(\GPIOPortRd[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[11]_INST_0 
       (.I0(\GPIOPortRd[11]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg__0[3]),
        .I2(\GPIOPortRd[11]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg__0[2]),
        .I4(\GPIOPortRd[11]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr),
        .O(GPIOPortRd[11]));
  MUXF7 \GPIOPortRd[11]_INST_0_i_1 
       (.I0(\GPIOPortRd[11]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[11]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[11]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[11]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][11] ),
        .I1(\array_reg_reg_n_0_[10][11] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[9][11] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[8][11] ),
        .O(\GPIOPortRd[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[11]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][11] ),
        .I1(\array_reg_reg_n_0_[14][11] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[13][11] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[12][11] ),
        .O(\GPIOPortRd[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[11]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][11] ),
        .I1(\array_reg_reg_n_0_[2][11] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[1][11] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[0][11] ),
        .O(\GPIOPortRd[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[11]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][11] ),
        .I1(\array_reg_reg_n_0_[6][11] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[5][11] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[4][11] ),
        .O(\GPIOPortRd[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[12]_INST_0 
       (.I0(\GPIOPortRd[12]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg__0[3]),
        .I2(\GPIOPortRd[12]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg__0[2]),
        .I4(\GPIOPortRd[12]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr),
        .O(GPIOPortRd[12]));
  MUXF7 \GPIOPortRd[12]_INST_0_i_1 
       (.I0(\GPIOPortRd[12]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[12]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[12]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[12]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][12] ),
        .I1(\array_reg_reg_n_0_[10][12] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[9][12] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[8][12] ),
        .O(\GPIOPortRd[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[12]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][12] ),
        .I1(\array_reg_reg_n_0_[14][12] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[13][12] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[12][12] ),
        .O(\GPIOPortRd[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[12]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][12] ),
        .I1(\array_reg_reg_n_0_[2][12] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[1][12] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[0][12] ),
        .O(\GPIOPortRd[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[12]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][12] ),
        .I1(\array_reg_reg_n_0_[6][12] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[5][12] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[4][12] ),
        .O(\GPIOPortRd[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[13]_INST_0 
       (.I0(\GPIOPortRd[13]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg__0[3]),
        .I2(\GPIOPortRd[13]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg__0[2]),
        .I4(\GPIOPortRd[13]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr),
        .O(GPIOPortRd[13]));
  MUXF7 \GPIOPortRd[13]_INST_0_i_1 
       (.I0(\GPIOPortRd[13]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[13]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[13]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[13]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][13] ),
        .I1(\array_reg_reg_n_0_[10][13] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[9][13] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[8][13] ),
        .O(\GPIOPortRd[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[13]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][13] ),
        .I1(\array_reg_reg_n_0_[14][13] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[13][13] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[12][13] ),
        .O(\GPIOPortRd[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[13]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][13] ),
        .I1(\array_reg_reg_n_0_[2][13] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[1][13] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[0][13] ),
        .O(\GPIOPortRd[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[13]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][13] ),
        .I1(\array_reg_reg_n_0_[6][13] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[5][13] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[4][13] ),
        .O(\GPIOPortRd[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[14]_INST_0 
       (.I0(\GPIOPortRd[14]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg__0[3]),
        .I2(\GPIOPortRd[14]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg__0[2]),
        .I4(\GPIOPortRd[14]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr),
        .O(GPIOPortRd[14]));
  MUXF7 \GPIOPortRd[14]_INST_0_i_1 
       (.I0(\GPIOPortRd[14]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[14]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[14]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[14]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][14] ),
        .I1(\array_reg_reg_n_0_[10][14] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[9][14] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[8][14] ),
        .O(\GPIOPortRd[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[14]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][14] ),
        .I1(\array_reg_reg_n_0_[14][14] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[13][14] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[12][14] ),
        .O(\GPIOPortRd[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[14]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][14] ),
        .I1(\array_reg_reg_n_0_[2][14] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[1][14] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[0][14] ),
        .O(\GPIOPortRd[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[14]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][14] ),
        .I1(\array_reg_reg_n_0_[6][14] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[5][14] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[4][14] ),
        .O(\GPIOPortRd[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[15]_INST_0 
       (.I0(\GPIOPortRd[15]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg__0[3]),
        .I2(\GPIOPortRd[15]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg__0[2]),
        .I4(\GPIOPortRd[15]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr),
        .O(GPIOPortRd[15]));
  MUXF7 \GPIOPortRd[15]_INST_0_i_1 
       (.I0(\GPIOPortRd[15]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[15]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[15]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[15]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][15] ),
        .I1(\array_reg_reg_n_0_[10][15] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[9][15] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[8][15] ),
        .O(\GPIOPortRd[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[15]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][15] ),
        .I1(\array_reg_reg_n_0_[14][15] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[13][15] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[12][15] ),
        .O(\GPIOPortRd[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[15]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][15] ),
        .I1(\array_reg_reg_n_0_[2][15] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[1][15] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[0][15] ),
        .O(\GPIOPortRd[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[15]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][15] ),
        .I1(\array_reg_reg_n_0_[6][15] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[5][15] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[4][15] ),
        .O(\GPIOPortRd[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[1]_INST_0 
       (.I0(\GPIOPortRd[1]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg__0[3]),
        .I2(\GPIOPortRd[1]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg__0[2]),
        .I4(\GPIOPortRd[1]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr),
        .O(GPIOPortRd[1]));
  MUXF7 \GPIOPortRd[1]_INST_0_i_1 
       (.I0(\GPIOPortRd[1]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[1]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[1]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[1]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][1] ),
        .I1(\array_reg_reg_n_0_[10][1] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[9][1] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[8][1] ),
        .O(\GPIOPortRd[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[1]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][1] ),
        .I1(\array_reg_reg_n_0_[14][1] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[13][1] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[12][1] ),
        .O(\GPIOPortRd[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[1]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][1] ),
        .I1(\array_reg_reg_n_0_[2][1] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[1][1] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[0][1] ),
        .O(\GPIOPortRd[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[1]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][1] ),
        .I1(\array_reg_reg_n_0_[6][1] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[5][1] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[4][1] ),
        .O(\GPIOPortRd[1]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \GPIOPortRd[29]_INST_0 
       (.I0(out_fifo_full),
        .I1(full),
        .O(GPIOPortRd[16]));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[2]_INST_0 
       (.I0(\GPIOPortRd[2]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg__0[3]),
        .I2(\GPIOPortRd[2]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg__0[2]),
        .I4(\GPIOPortRd[2]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr),
        .O(GPIOPortRd[2]));
  MUXF7 \GPIOPortRd[2]_INST_0_i_1 
       (.I0(\GPIOPortRd[2]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[2]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[2]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[2]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][2] ),
        .I1(\array_reg_reg_n_0_[10][2] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[9][2] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[8][2] ),
        .O(\GPIOPortRd[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[2]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][2] ),
        .I1(\array_reg_reg_n_0_[14][2] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[13][2] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[12][2] ),
        .O(\GPIOPortRd[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[2]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][2] ),
        .I1(\array_reg_reg_n_0_[2][2] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[1][2] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[0][2] ),
        .O(\GPIOPortRd[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[2]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][2] ),
        .I1(\array_reg_reg_n_0_[6][2] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[5][2] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[4][2] ),
        .O(\GPIOPortRd[2]_INST_0_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \GPIOPortRd[30]_INST_0 
       (.I0(empty_reg),
        .O(GPIOPortRd[17]));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[3]_INST_0 
       (.I0(\GPIOPortRd[3]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg__0[3]),
        .I2(\GPIOPortRd[3]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg__0[2]),
        .I4(\GPIOPortRd[3]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr),
        .O(GPIOPortRd[3]));
  MUXF7 \GPIOPortRd[3]_INST_0_i_1 
       (.I0(\GPIOPortRd[3]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[3]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[3]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[3]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][3] ),
        .I1(\array_reg_reg_n_0_[10][3] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[9][3] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[8][3] ),
        .O(\GPIOPortRd[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[3]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][3] ),
        .I1(\array_reg_reg_n_0_[14][3] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[13][3] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[12][3] ),
        .O(\GPIOPortRd[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[3]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][3] ),
        .I1(\array_reg_reg_n_0_[2][3] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[1][3] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[0][3] ),
        .O(\GPIOPortRd[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[3]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][3] ),
        .I1(\array_reg_reg_n_0_[6][3] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[5][3] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[4][3] ),
        .O(\GPIOPortRd[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[4]_INST_0 
       (.I0(\GPIOPortRd[4]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg__0[3]),
        .I2(\GPIOPortRd[4]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg__0[2]),
        .I4(\GPIOPortRd[4]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr),
        .O(GPIOPortRd[4]));
  MUXF7 \GPIOPortRd[4]_INST_0_i_1 
       (.I0(\GPIOPortRd[4]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[4]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[4]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[4]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][4] ),
        .I1(\array_reg_reg_n_0_[10][4] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[9][4] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[8][4] ),
        .O(\GPIOPortRd[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[4]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][4] ),
        .I1(\array_reg_reg_n_0_[14][4] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[13][4] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[12][4] ),
        .O(\GPIOPortRd[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[4]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][4] ),
        .I1(\array_reg_reg_n_0_[2][4] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[1][4] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[0][4] ),
        .O(\GPIOPortRd[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[4]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][4] ),
        .I1(\array_reg_reg_n_0_[6][4] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[5][4] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[4][4] ),
        .O(\GPIOPortRd[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[5]_INST_0 
       (.I0(\GPIOPortRd[5]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg__0[3]),
        .I2(\GPIOPortRd[5]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg__0[2]),
        .I4(\GPIOPortRd[5]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr),
        .O(GPIOPortRd[5]));
  MUXF7 \GPIOPortRd[5]_INST_0_i_1 
       (.I0(\GPIOPortRd[5]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[5]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[5]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[5]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][5] ),
        .I1(\array_reg_reg_n_0_[10][5] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[9][5] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[8][5] ),
        .O(\GPIOPortRd[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[5]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][5] ),
        .I1(\array_reg_reg_n_0_[14][5] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[13][5] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[12][5] ),
        .O(\GPIOPortRd[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[5]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][5] ),
        .I1(\array_reg_reg_n_0_[2][5] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[1][5] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[0][5] ),
        .O(\GPIOPortRd[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[5]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][5] ),
        .I1(\array_reg_reg_n_0_[6][5] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[5][5] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[4][5] ),
        .O(\GPIOPortRd[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[6]_INST_0 
       (.I0(\GPIOPortRd[6]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg__0[3]),
        .I2(\GPIOPortRd[6]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg__0[2]),
        .I4(\GPIOPortRd[6]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr),
        .O(GPIOPortRd[6]));
  MUXF7 \GPIOPortRd[6]_INST_0_i_1 
       (.I0(\GPIOPortRd[6]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[6]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[6]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[6]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][6] ),
        .I1(\array_reg_reg_n_0_[10][6] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[9][6] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[8][6] ),
        .O(\GPIOPortRd[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[6]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][6] ),
        .I1(\array_reg_reg_n_0_[14][6] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[13][6] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[12][6] ),
        .O(\GPIOPortRd[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[6]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][6] ),
        .I1(\array_reg_reg_n_0_[2][6] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[1][6] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[0][6] ),
        .O(\GPIOPortRd[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[6]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][6] ),
        .I1(\array_reg_reg_n_0_[6][6] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[5][6] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[4][6] ),
        .O(\GPIOPortRd[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[7]_INST_0 
       (.I0(\GPIOPortRd[7]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg__0[3]),
        .I2(\GPIOPortRd[7]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg__0[2]),
        .I4(\GPIOPortRd[7]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr),
        .O(GPIOPortRd[7]));
  MUXF7 \GPIOPortRd[7]_INST_0_i_1 
       (.I0(\GPIOPortRd[7]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[7]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[7]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[7]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][7] ),
        .I1(\array_reg_reg_n_0_[10][7] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[9][7] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[8][7] ),
        .O(\GPIOPortRd[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[7]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][7] ),
        .I1(\array_reg_reg_n_0_[14][7] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[13][7] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[12][7] ),
        .O(\GPIOPortRd[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[7]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][7] ),
        .I1(\array_reg_reg_n_0_[2][7] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[1][7] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[0][7] ),
        .O(\GPIOPortRd[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[7]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][7] ),
        .I1(\array_reg_reg_n_0_[6][7] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[5][7] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[4][7] ),
        .O(\GPIOPortRd[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[8]_INST_0 
       (.I0(\GPIOPortRd[8]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg__0[3]),
        .I2(\GPIOPortRd[8]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg__0[2]),
        .I4(\GPIOPortRd[8]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr),
        .O(GPIOPortRd[8]));
  MUXF7 \GPIOPortRd[8]_INST_0_i_1 
       (.I0(\GPIOPortRd[8]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[8]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[8]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[8]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][8] ),
        .I1(\array_reg_reg_n_0_[10][8] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[9][8] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[8][8] ),
        .O(\GPIOPortRd[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[8]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][8] ),
        .I1(\array_reg_reg_n_0_[14][8] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[13][8] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[12][8] ),
        .O(\GPIOPortRd[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[8]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][8] ),
        .I1(\array_reg_reg_n_0_[2][8] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[1][8] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[0][8] ),
        .O(\GPIOPortRd[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[8]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][8] ),
        .I1(\array_reg_reg_n_0_[6][8] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[5][8] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[4][8] ),
        .O(\GPIOPortRd[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[9]_INST_0 
       (.I0(\GPIOPortRd[9]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg__0[3]),
        .I2(\GPIOPortRd[9]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg__0[2]),
        .I4(\GPIOPortRd[9]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr),
        .O(GPIOPortRd[9]));
  MUXF7 \GPIOPortRd[9]_INST_0_i_1 
       (.I0(\GPIOPortRd[9]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[9]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[9]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[9]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][9] ),
        .I1(\array_reg_reg_n_0_[10][9] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[9][9] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[8][9] ),
        .O(\GPIOPortRd[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[9]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][9] ),
        .I1(\array_reg_reg_n_0_[14][9] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[13][9] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[12][9] ),
        .O(\GPIOPortRd[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[9]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][9] ),
        .I1(\array_reg_reg_n_0_[2][9] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[1][9] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[0][9] ),
        .O(\GPIOPortRd[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[9]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][9] ),
        .I1(\array_reg_reg_n_0_[6][9] ),
        .I2(r_ptr_reg_reg__0[1]),
        .I3(\array_reg_reg_n_0_[5][9] ),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(\array_reg_reg_n_0_[4][9] ),
        .O(\GPIOPortRd[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \array_reg[0][15]_i_1__0 
       (.I0(w_ptr_reg_reg__0[2]),
        .I1(w_ptr_reg_reg__0[0]),
        .I2(w_ptr_reg_reg__0[1]),
        .I3(out_fifo_full),
        .I4(wr),
        .I5(w_ptr_reg_reg__0[3]),
        .O(\array_reg[0]_29 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \array_reg[10][15]_i_1__0 
       (.I0(w_ptr_reg_reg__0[2]),
        .I1(w_ptr_reg_reg__0[1]),
        .I2(w_ptr_reg_reg__0[0]),
        .I3(w_ptr_reg_reg__0[3]),
        .I4(out_fifo_full),
        .I5(wr),
        .O(\array_reg[10]_23 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \array_reg[11][15]_i_1__0 
       (.I0(w_ptr_reg_reg__0[0]),
        .I1(w_ptr_reg_reg__0[1]),
        .I2(w_ptr_reg_reg__0[2]),
        .I3(w_ptr_reg_reg__0[3]),
        .I4(out_fifo_full),
        .I5(wr),
        .O(\array_reg[11]_17 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \array_reg[12][15]_i_1__0 
       (.I0(w_ptr_reg_reg__0[1]),
        .I1(w_ptr_reg_reg__0[0]),
        .I2(w_ptr_reg_reg__0[2]),
        .I3(wr),
        .I4(out_fifo_full),
        .I5(w_ptr_reg_reg__0[3]),
        .O(\array_reg[12]_22 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \array_reg[13][15]_i_1__0 
       (.I0(w_ptr_reg_reg__0[1]),
        .I1(w_ptr_reg_reg__0[0]),
        .I2(w_ptr_reg_reg__0[2]),
        .I3(wr),
        .I4(out_fifo_full),
        .I5(w_ptr_reg_reg__0[3]),
        .O(\array_reg[13]_21 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \array_reg[14][15]_i_1__0 
       (.I0(w_ptr_reg_reg__0[0]),
        .I1(w_ptr_reg_reg__0[1]),
        .I2(w_ptr_reg_reg__0[2]),
        .I3(wr),
        .I4(out_fifo_full),
        .I5(w_ptr_reg_reg__0[3]),
        .O(\array_reg[14]_20 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \array_reg[15][15]_i_1__0 
       (.I0(w_ptr_reg_reg__0[1]),
        .I1(w_ptr_reg_reg__0[0]),
        .I2(w_ptr_reg_reg__0[2]),
        .I3(wr),
        .I4(out_fifo_full),
        .I5(w_ptr_reg_reg__0[3]),
        .O(\array_reg[15][15]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \array_reg[1][15]_i_1__0 
       (.I0(w_ptr_reg_reg__0[2]),
        .I1(w_ptr_reg_reg__0[0]),
        .I2(w_ptr_reg_reg__0[1]),
        .I3(out_fifo_full),
        .I4(wr),
        .I5(w_ptr_reg_reg__0[3]),
        .O(\array_reg[1]_30 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \array_reg[2][15]_i_1__0 
       (.I0(w_ptr_reg_reg__0[2]),
        .I1(w_ptr_reg_reg__0[1]),
        .I2(w_ptr_reg_reg__0[0]),
        .I3(out_fifo_full),
        .I4(wr),
        .I5(w_ptr_reg_reg__0[3]),
        .O(\array_reg[2]_31 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \array_reg[3][15]_i_1__0 
       (.I0(w_ptr_reg_reg__0[0]),
        .I1(w_ptr_reg_reg__0[1]),
        .I2(w_ptr_reg_reg__0[2]),
        .I3(out_fifo_full),
        .I4(wr),
        .I5(w_ptr_reg_reg__0[3]),
        .O(\array_reg[3]_18 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \array_reg[4][15]_i_1__0 
       (.I0(w_ptr_reg_reg__0[1]),
        .I1(w_ptr_reg_reg__0[0]),
        .I2(w_ptr_reg_reg__0[2]),
        .I3(w_ptr_reg_reg__0[3]),
        .I4(wr),
        .I5(out_fifo_full),
        .O(\array_reg[4]_28 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \array_reg[5][15]_i_1__0 
       (.I0(w_ptr_reg_reg__0[1]),
        .I1(w_ptr_reg_reg__0[0]),
        .I2(w_ptr_reg_reg__0[2]),
        .I3(w_ptr_reg_reg__0[3]),
        .I4(wr),
        .I5(out_fifo_full),
        .O(\array_reg[5]_27 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \array_reg[6][15]_i_1__0 
       (.I0(w_ptr_reg_reg__0[0]),
        .I1(w_ptr_reg_reg__0[1]),
        .I2(w_ptr_reg_reg__0[2]),
        .I3(w_ptr_reg_reg__0[3]),
        .I4(wr),
        .I5(out_fifo_full),
        .O(\array_reg[6]_26 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \array_reg[7][15]_i_1__0 
       (.I0(w_ptr_reg_reg__0[3]),
        .I1(w_ptr_reg_reg__0[2]),
        .I2(w_ptr_reg_reg__0[1]),
        .I3(w_ptr_reg_reg__0[0]),
        .I4(wr),
        .I5(out_fifo_full),
        .O(\array_reg[7]_19 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \array_reg[8][15]_i_1__0 
       (.I0(w_ptr_reg_reg__0[2]),
        .I1(w_ptr_reg_reg__0[0]),
        .I2(w_ptr_reg_reg__0[1]),
        .I3(w_ptr_reg_reg__0[3]),
        .I4(out_fifo_full),
        .I5(wr),
        .O(\array_reg[8]_25 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \array_reg[9][15]_i_1__0 
       (.I0(w_ptr_reg_reg__0[2]),
        .I1(w_ptr_reg_reg__0[0]),
        .I2(w_ptr_reg_reg__0[1]),
        .I3(w_ptr_reg_reg__0[3]),
        .I4(out_fifo_full),
        .I5(wr),
        .O(\array_reg[9]_24 ));
  FDCE \array_reg_reg[0][0] 
       (.C(clk),
        .CE(\array_reg[0]_29 ),
        .CLR(reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[0][0] ));
  FDCE \array_reg_reg[0][10] 
       (.C(clk),
        .CE(\array_reg[0]_29 ),
        .CLR(reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[0][10] ));
  FDCE \array_reg_reg[0][11] 
       (.C(clk),
        .CE(\array_reg[0]_29 ),
        .CLR(reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[0][11] ));
  FDCE \array_reg_reg[0][12] 
       (.C(clk),
        .CE(\array_reg[0]_29 ),
        .CLR(reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[0][12] ));
  FDCE \array_reg_reg[0][13] 
       (.C(clk),
        .CE(\array_reg[0]_29 ),
        .CLR(reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[0][13] ));
  FDCE \array_reg_reg[0][14] 
       (.C(clk),
        .CE(\array_reg[0]_29 ),
        .CLR(reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[0][14] ));
  FDCE \array_reg_reg[0][15] 
       (.C(clk),
        .CE(\array_reg[0]_29 ),
        .CLR(reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[0][15] ));
  FDCE \array_reg_reg[0][1] 
       (.C(clk),
        .CE(\array_reg[0]_29 ),
        .CLR(reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[0][1] ));
  FDCE \array_reg_reg[0][2] 
       (.C(clk),
        .CE(\array_reg[0]_29 ),
        .CLR(reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[0][2] ));
  FDCE \array_reg_reg[0][3] 
       (.C(clk),
        .CE(\array_reg[0]_29 ),
        .CLR(reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[0][3] ));
  FDCE \array_reg_reg[0][4] 
       (.C(clk),
        .CE(\array_reg[0]_29 ),
        .CLR(reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[0][4] ));
  FDCE \array_reg_reg[0][5] 
       (.C(clk),
        .CE(\array_reg[0]_29 ),
        .CLR(reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[0][5] ));
  FDCE \array_reg_reg[0][6] 
       (.C(clk),
        .CE(\array_reg[0]_29 ),
        .CLR(reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[0][6] ));
  FDCE \array_reg_reg[0][7] 
       (.C(clk),
        .CE(\array_reg[0]_29 ),
        .CLR(reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[0][7] ));
  FDCE \array_reg_reg[0][8] 
       (.C(clk),
        .CE(\array_reg[0]_29 ),
        .CLR(reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[0][8] ));
  FDCE \array_reg_reg[0][9] 
       (.C(clk),
        .CE(\array_reg[0]_29 ),
        .CLR(reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[0][9] ));
  FDCE \array_reg_reg[10][0] 
       (.C(clk),
        .CE(\array_reg[10]_23 ),
        .CLR(reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[10][0] ));
  FDCE \array_reg_reg[10][10] 
       (.C(clk),
        .CE(\array_reg[10]_23 ),
        .CLR(reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[10][10] ));
  FDCE \array_reg_reg[10][11] 
       (.C(clk),
        .CE(\array_reg[10]_23 ),
        .CLR(reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[10][11] ));
  FDCE \array_reg_reg[10][12] 
       (.C(clk),
        .CE(\array_reg[10]_23 ),
        .CLR(reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[10][12] ));
  FDCE \array_reg_reg[10][13] 
       (.C(clk),
        .CE(\array_reg[10]_23 ),
        .CLR(reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[10][13] ));
  FDCE \array_reg_reg[10][14] 
       (.C(clk),
        .CE(\array_reg[10]_23 ),
        .CLR(reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[10][14] ));
  FDCE \array_reg_reg[10][15] 
       (.C(clk),
        .CE(\array_reg[10]_23 ),
        .CLR(reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[10][15] ));
  FDCE \array_reg_reg[10][1] 
       (.C(clk),
        .CE(\array_reg[10]_23 ),
        .CLR(reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[10][1] ));
  FDCE \array_reg_reg[10][2] 
       (.C(clk),
        .CE(\array_reg[10]_23 ),
        .CLR(reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[10][2] ));
  FDCE \array_reg_reg[10][3] 
       (.C(clk),
        .CE(\array_reg[10]_23 ),
        .CLR(reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[10][3] ));
  FDCE \array_reg_reg[10][4] 
       (.C(clk),
        .CE(\array_reg[10]_23 ),
        .CLR(reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[10][4] ));
  FDCE \array_reg_reg[10][5] 
       (.C(clk),
        .CE(\array_reg[10]_23 ),
        .CLR(reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[10][5] ));
  FDCE \array_reg_reg[10][6] 
       (.C(clk),
        .CE(\array_reg[10]_23 ),
        .CLR(reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[10][6] ));
  FDCE \array_reg_reg[10][7] 
       (.C(clk),
        .CE(\array_reg[10]_23 ),
        .CLR(reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[10][7] ));
  FDCE \array_reg_reg[10][8] 
       (.C(clk),
        .CE(\array_reg[10]_23 ),
        .CLR(reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[10][8] ));
  FDCE \array_reg_reg[10][9] 
       (.C(clk),
        .CE(\array_reg[10]_23 ),
        .CLR(reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[10][9] ));
  FDCE \array_reg_reg[11][0] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[11][0] ));
  FDCE \array_reg_reg[11][10] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[11][10] ));
  FDCE \array_reg_reg[11][11] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[11][11] ));
  FDCE \array_reg_reg[11][12] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[11][12] ));
  FDCE \array_reg_reg[11][13] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[11][13] ));
  FDCE \array_reg_reg[11][14] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[11][14] ));
  FDCE \array_reg_reg[11][15] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[11][15] ));
  FDCE \array_reg_reg[11][1] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[11][1] ));
  FDCE \array_reg_reg[11][2] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[11][2] ));
  FDCE \array_reg_reg[11][3] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[11][3] ));
  FDCE \array_reg_reg[11][4] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[11][4] ));
  FDCE \array_reg_reg[11][5] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[11][5] ));
  FDCE \array_reg_reg[11][6] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[11][6] ));
  FDCE \array_reg_reg[11][7] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[11][7] ));
  FDCE \array_reg_reg[11][8] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[11][8] ));
  FDCE \array_reg_reg[11][9] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[11][9] ));
  FDCE \array_reg_reg[12][0] 
       (.C(clk),
        .CE(\array_reg[12]_22 ),
        .CLR(reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[12][0] ));
  FDCE \array_reg_reg[12][10] 
       (.C(clk),
        .CE(\array_reg[12]_22 ),
        .CLR(reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[12][10] ));
  FDCE \array_reg_reg[12][11] 
       (.C(clk),
        .CE(\array_reg[12]_22 ),
        .CLR(reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[12][11] ));
  FDCE \array_reg_reg[12][12] 
       (.C(clk),
        .CE(\array_reg[12]_22 ),
        .CLR(reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[12][12] ));
  FDCE \array_reg_reg[12][13] 
       (.C(clk),
        .CE(\array_reg[12]_22 ),
        .CLR(reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[12][13] ));
  FDCE \array_reg_reg[12][14] 
       (.C(clk),
        .CE(\array_reg[12]_22 ),
        .CLR(reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[12][14] ));
  FDCE \array_reg_reg[12][15] 
       (.C(clk),
        .CE(\array_reg[12]_22 ),
        .CLR(reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[12][15] ));
  FDCE \array_reg_reg[12][1] 
       (.C(clk),
        .CE(\array_reg[12]_22 ),
        .CLR(reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[12][1] ));
  FDCE \array_reg_reg[12][2] 
       (.C(clk),
        .CE(\array_reg[12]_22 ),
        .CLR(reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[12][2] ));
  FDCE \array_reg_reg[12][3] 
       (.C(clk),
        .CE(\array_reg[12]_22 ),
        .CLR(reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[12][3] ));
  FDCE \array_reg_reg[12][4] 
       (.C(clk),
        .CE(\array_reg[12]_22 ),
        .CLR(reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[12][4] ));
  FDCE \array_reg_reg[12][5] 
       (.C(clk),
        .CE(\array_reg[12]_22 ),
        .CLR(reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[12][5] ));
  FDCE \array_reg_reg[12][6] 
       (.C(clk),
        .CE(\array_reg[12]_22 ),
        .CLR(reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[12][6] ));
  FDCE \array_reg_reg[12][7] 
       (.C(clk),
        .CE(\array_reg[12]_22 ),
        .CLR(reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[12][7] ));
  FDCE \array_reg_reg[12][8] 
       (.C(clk),
        .CE(\array_reg[12]_22 ),
        .CLR(reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[12][8] ));
  FDCE \array_reg_reg[12][9] 
       (.C(clk),
        .CE(\array_reg[12]_22 ),
        .CLR(reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[12][9] ));
  FDCE \array_reg_reg[13][0] 
       (.C(clk),
        .CE(\array_reg[13]_21 ),
        .CLR(reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[13][0] ));
  FDCE \array_reg_reg[13][10] 
       (.C(clk),
        .CE(\array_reg[13]_21 ),
        .CLR(reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[13][10] ));
  FDCE \array_reg_reg[13][11] 
       (.C(clk),
        .CE(\array_reg[13]_21 ),
        .CLR(reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[13][11] ));
  FDCE \array_reg_reg[13][12] 
       (.C(clk),
        .CE(\array_reg[13]_21 ),
        .CLR(reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[13][12] ));
  FDCE \array_reg_reg[13][13] 
       (.C(clk),
        .CE(\array_reg[13]_21 ),
        .CLR(reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[13][13] ));
  FDCE \array_reg_reg[13][14] 
       (.C(clk),
        .CE(\array_reg[13]_21 ),
        .CLR(reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[13][14] ));
  FDCE \array_reg_reg[13][15] 
       (.C(clk),
        .CE(\array_reg[13]_21 ),
        .CLR(reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[13][15] ));
  FDCE \array_reg_reg[13][1] 
       (.C(clk),
        .CE(\array_reg[13]_21 ),
        .CLR(reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[13][1] ));
  FDCE \array_reg_reg[13][2] 
       (.C(clk),
        .CE(\array_reg[13]_21 ),
        .CLR(reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[13][2] ));
  FDCE \array_reg_reg[13][3] 
       (.C(clk),
        .CE(\array_reg[13]_21 ),
        .CLR(reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[13][3] ));
  FDCE \array_reg_reg[13][4] 
       (.C(clk),
        .CE(\array_reg[13]_21 ),
        .CLR(reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[13][4] ));
  FDCE \array_reg_reg[13][5] 
       (.C(clk),
        .CE(\array_reg[13]_21 ),
        .CLR(reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[13][5] ));
  FDCE \array_reg_reg[13][6] 
       (.C(clk),
        .CE(\array_reg[13]_21 ),
        .CLR(reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[13][6] ));
  FDCE \array_reg_reg[13][7] 
       (.C(clk),
        .CE(\array_reg[13]_21 ),
        .CLR(reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[13][7] ));
  FDCE \array_reg_reg[13][8] 
       (.C(clk),
        .CE(\array_reg[13]_21 ),
        .CLR(reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[13][8] ));
  FDCE \array_reg_reg[13][9] 
       (.C(clk),
        .CE(\array_reg[13]_21 ),
        .CLR(reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[13][9] ));
  FDCE \array_reg_reg[14][0] 
       (.C(clk),
        .CE(\array_reg[14]_20 ),
        .CLR(reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[14][0] ));
  FDCE \array_reg_reg[14][10] 
       (.C(clk),
        .CE(\array_reg[14]_20 ),
        .CLR(reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[14][10] ));
  FDCE \array_reg_reg[14][11] 
       (.C(clk),
        .CE(\array_reg[14]_20 ),
        .CLR(reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[14][11] ));
  FDCE \array_reg_reg[14][12] 
       (.C(clk),
        .CE(\array_reg[14]_20 ),
        .CLR(reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[14][12] ));
  FDCE \array_reg_reg[14][13] 
       (.C(clk),
        .CE(\array_reg[14]_20 ),
        .CLR(reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[14][13] ));
  FDCE \array_reg_reg[14][14] 
       (.C(clk),
        .CE(\array_reg[14]_20 ),
        .CLR(reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[14][14] ));
  FDCE \array_reg_reg[14][15] 
       (.C(clk),
        .CE(\array_reg[14]_20 ),
        .CLR(reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[14][15] ));
  FDCE \array_reg_reg[14][1] 
       (.C(clk),
        .CE(\array_reg[14]_20 ),
        .CLR(reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[14][1] ));
  FDCE \array_reg_reg[14][2] 
       (.C(clk),
        .CE(\array_reg[14]_20 ),
        .CLR(reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[14][2] ));
  FDCE \array_reg_reg[14][3] 
       (.C(clk),
        .CE(\array_reg[14]_20 ),
        .CLR(reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[14][3] ));
  FDCE \array_reg_reg[14][4] 
       (.C(clk),
        .CE(\array_reg[14]_20 ),
        .CLR(reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[14][4] ));
  FDCE \array_reg_reg[14][5] 
       (.C(clk),
        .CE(\array_reg[14]_20 ),
        .CLR(reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[14][5] ));
  FDCE \array_reg_reg[14][6] 
       (.C(clk),
        .CE(\array_reg[14]_20 ),
        .CLR(reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[14][6] ));
  FDCE \array_reg_reg[14][7] 
       (.C(clk),
        .CE(\array_reg[14]_20 ),
        .CLR(reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[14][7] ));
  FDCE \array_reg_reg[14][8] 
       (.C(clk),
        .CE(\array_reg[14]_20 ),
        .CLR(reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[14][8] ));
  FDCE \array_reg_reg[14][9] 
       (.C(clk),
        .CE(\array_reg[14]_20 ),
        .CLR(reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[14][9] ));
  FDCE \array_reg_reg[15][0] 
       (.C(clk),
        .CE(\array_reg[15][15]_i_1__0_n_0 ),
        .CLR(reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[15][0] ));
  FDCE \array_reg_reg[15][10] 
       (.C(clk),
        .CE(\array_reg[15][15]_i_1__0_n_0 ),
        .CLR(reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[15][10] ));
  FDCE \array_reg_reg[15][11] 
       (.C(clk),
        .CE(\array_reg[15][15]_i_1__0_n_0 ),
        .CLR(reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[15][11] ));
  FDCE \array_reg_reg[15][12] 
       (.C(clk),
        .CE(\array_reg[15][15]_i_1__0_n_0 ),
        .CLR(reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[15][12] ));
  FDCE \array_reg_reg[15][13] 
       (.C(clk),
        .CE(\array_reg[15][15]_i_1__0_n_0 ),
        .CLR(reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[15][13] ));
  FDCE \array_reg_reg[15][14] 
       (.C(clk),
        .CE(\array_reg[15][15]_i_1__0_n_0 ),
        .CLR(reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[15][14] ));
  FDCE \array_reg_reg[15][15] 
       (.C(clk),
        .CE(\array_reg[15][15]_i_1__0_n_0 ),
        .CLR(reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[15][15] ));
  FDCE \array_reg_reg[15][1] 
       (.C(clk),
        .CE(\array_reg[15][15]_i_1__0_n_0 ),
        .CLR(reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[15][1] ));
  FDCE \array_reg_reg[15][2] 
       (.C(clk),
        .CE(\array_reg[15][15]_i_1__0_n_0 ),
        .CLR(reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[15][2] ));
  FDCE \array_reg_reg[15][3] 
       (.C(clk),
        .CE(\array_reg[15][15]_i_1__0_n_0 ),
        .CLR(reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[15][3] ));
  FDCE \array_reg_reg[15][4] 
       (.C(clk),
        .CE(\array_reg[15][15]_i_1__0_n_0 ),
        .CLR(reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[15][4] ));
  FDCE \array_reg_reg[15][5] 
       (.C(clk),
        .CE(\array_reg[15][15]_i_1__0_n_0 ),
        .CLR(reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[15][5] ));
  FDCE \array_reg_reg[15][6] 
       (.C(clk),
        .CE(\array_reg[15][15]_i_1__0_n_0 ),
        .CLR(reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[15][6] ));
  FDCE \array_reg_reg[15][7] 
       (.C(clk),
        .CE(\array_reg[15][15]_i_1__0_n_0 ),
        .CLR(reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[15][7] ));
  FDCE \array_reg_reg[15][8] 
       (.C(clk),
        .CE(\array_reg[15][15]_i_1__0_n_0 ),
        .CLR(reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[15][8] ));
  FDCE \array_reg_reg[15][9] 
       (.C(clk),
        .CE(\array_reg[15][15]_i_1__0_n_0 ),
        .CLR(reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[15][9] ));
  FDCE \array_reg_reg[1][0] 
       (.C(clk),
        .CE(\array_reg[1]_30 ),
        .CLR(reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[1][0] ));
  FDCE \array_reg_reg[1][10] 
       (.C(clk),
        .CE(\array_reg[1]_30 ),
        .CLR(reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[1][10] ));
  FDCE \array_reg_reg[1][11] 
       (.C(clk),
        .CE(\array_reg[1]_30 ),
        .CLR(reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[1][11] ));
  FDCE \array_reg_reg[1][12] 
       (.C(clk),
        .CE(\array_reg[1]_30 ),
        .CLR(reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[1][12] ));
  FDCE \array_reg_reg[1][13] 
       (.C(clk),
        .CE(\array_reg[1]_30 ),
        .CLR(reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[1][13] ));
  FDCE \array_reg_reg[1][14] 
       (.C(clk),
        .CE(\array_reg[1]_30 ),
        .CLR(reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[1][14] ));
  FDCE \array_reg_reg[1][15] 
       (.C(clk),
        .CE(\array_reg[1]_30 ),
        .CLR(reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[1][15] ));
  FDCE \array_reg_reg[1][1] 
       (.C(clk),
        .CE(\array_reg[1]_30 ),
        .CLR(reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[1][1] ));
  FDCE \array_reg_reg[1][2] 
       (.C(clk),
        .CE(\array_reg[1]_30 ),
        .CLR(reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[1][2] ));
  FDCE \array_reg_reg[1][3] 
       (.C(clk),
        .CE(\array_reg[1]_30 ),
        .CLR(reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[1][3] ));
  FDCE \array_reg_reg[1][4] 
       (.C(clk),
        .CE(\array_reg[1]_30 ),
        .CLR(reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[1][4] ));
  FDCE \array_reg_reg[1][5] 
       (.C(clk),
        .CE(\array_reg[1]_30 ),
        .CLR(reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[1][5] ));
  FDCE \array_reg_reg[1][6] 
       (.C(clk),
        .CE(\array_reg[1]_30 ),
        .CLR(reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[1][6] ));
  FDCE \array_reg_reg[1][7] 
       (.C(clk),
        .CE(\array_reg[1]_30 ),
        .CLR(reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[1][7] ));
  FDCE \array_reg_reg[1][8] 
       (.C(clk),
        .CE(\array_reg[1]_30 ),
        .CLR(reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[1][8] ));
  FDCE \array_reg_reg[1][9] 
       (.C(clk),
        .CE(\array_reg[1]_30 ),
        .CLR(reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[1][9] ));
  FDCE \array_reg_reg[2][0] 
       (.C(clk),
        .CE(\array_reg[2]_31 ),
        .CLR(reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[2][0] ));
  FDCE \array_reg_reg[2][10] 
       (.C(clk),
        .CE(\array_reg[2]_31 ),
        .CLR(reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[2][10] ));
  FDCE \array_reg_reg[2][11] 
       (.C(clk),
        .CE(\array_reg[2]_31 ),
        .CLR(reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[2][11] ));
  FDCE \array_reg_reg[2][12] 
       (.C(clk),
        .CE(\array_reg[2]_31 ),
        .CLR(reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[2][12] ));
  FDCE \array_reg_reg[2][13] 
       (.C(clk),
        .CE(\array_reg[2]_31 ),
        .CLR(reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[2][13] ));
  FDCE \array_reg_reg[2][14] 
       (.C(clk),
        .CE(\array_reg[2]_31 ),
        .CLR(reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[2][14] ));
  FDCE \array_reg_reg[2][15] 
       (.C(clk),
        .CE(\array_reg[2]_31 ),
        .CLR(reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[2][15] ));
  FDCE \array_reg_reg[2][1] 
       (.C(clk),
        .CE(\array_reg[2]_31 ),
        .CLR(reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[2][1] ));
  FDCE \array_reg_reg[2][2] 
       (.C(clk),
        .CE(\array_reg[2]_31 ),
        .CLR(reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[2][2] ));
  FDCE \array_reg_reg[2][3] 
       (.C(clk),
        .CE(\array_reg[2]_31 ),
        .CLR(reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[2][3] ));
  FDCE \array_reg_reg[2][4] 
       (.C(clk),
        .CE(\array_reg[2]_31 ),
        .CLR(reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[2][4] ));
  FDCE \array_reg_reg[2][5] 
       (.C(clk),
        .CE(\array_reg[2]_31 ),
        .CLR(reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[2][5] ));
  FDCE \array_reg_reg[2][6] 
       (.C(clk),
        .CE(\array_reg[2]_31 ),
        .CLR(reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[2][6] ));
  FDCE \array_reg_reg[2][7] 
       (.C(clk),
        .CE(\array_reg[2]_31 ),
        .CLR(reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[2][7] ));
  FDCE \array_reg_reg[2][8] 
       (.C(clk),
        .CE(\array_reg[2]_31 ),
        .CLR(reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[2][8] ));
  FDCE \array_reg_reg[2][9] 
       (.C(clk),
        .CE(\array_reg[2]_31 ),
        .CLR(reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[2][9] ));
  FDCE \array_reg_reg[3][0] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[3][0] ));
  FDCE \array_reg_reg[3][10] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[3][10] ));
  FDCE \array_reg_reg[3][11] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[3][11] ));
  FDCE \array_reg_reg[3][12] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[3][12] ));
  FDCE \array_reg_reg[3][13] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[3][13] ));
  FDCE \array_reg_reg[3][14] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[3][14] ));
  FDCE \array_reg_reg[3][15] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[3][15] ));
  FDCE \array_reg_reg[3][1] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[3][1] ));
  FDCE \array_reg_reg[3][2] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[3][2] ));
  FDCE \array_reg_reg[3][3] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[3][3] ));
  FDCE \array_reg_reg[3][4] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[3][4] ));
  FDCE \array_reg_reg[3][5] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[3][5] ));
  FDCE \array_reg_reg[3][6] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[3][6] ));
  FDCE \array_reg_reg[3][7] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[3][7] ));
  FDCE \array_reg_reg[3][8] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[3][8] ));
  FDCE \array_reg_reg[3][9] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[3][9] ));
  FDCE \array_reg_reg[4][0] 
       (.C(clk),
        .CE(\array_reg[4]_28 ),
        .CLR(reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[4][0] ));
  FDCE \array_reg_reg[4][10] 
       (.C(clk),
        .CE(\array_reg[4]_28 ),
        .CLR(reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[4][10] ));
  FDCE \array_reg_reg[4][11] 
       (.C(clk),
        .CE(\array_reg[4]_28 ),
        .CLR(reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[4][11] ));
  FDCE \array_reg_reg[4][12] 
       (.C(clk),
        .CE(\array_reg[4]_28 ),
        .CLR(reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[4][12] ));
  FDCE \array_reg_reg[4][13] 
       (.C(clk),
        .CE(\array_reg[4]_28 ),
        .CLR(reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[4][13] ));
  FDCE \array_reg_reg[4][14] 
       (.C(clk),
        .CE(\array_reg[4]_28 ),
        .CLR(reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[4][14] ));
  FDCE \array_reg_reg[4][15] 
       (.C(clk),
        .CE(\array_reg[4]_28 ),
        .CLR(reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[4][15] ));
  FDCE \array_reg_reg[4][1] 
       (.C(clk),
        .CE(\array_reg[4]_28 ),
        .CLR(reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[4][1] ));
  FDCE \array_reg_reg[4][2] 
       (.C(clk),
        .CE(\array_reg[4]_28 ),
        .CLR(reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[4][2] ));
  FDCE \array_reg_reg[4][3] 
       (.C(clk),
        .CE(\array_reg[4]_28 ),
        .CLR(reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[4][3] ));
  FDCE \array_reg_reg[4][4] 
       (.C(clk),
        .CE(\array_reg[4]_28 ),
        .CLR(reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[4][4] ));
  FDCE \array_reg_reg[4][5] 
       (.C(clk),
        .CE(\array_reg[4]_28 ),
        .CLR(reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[4][5] ));
  FDCE \array_reg_reg[4][6] 
       (.C(clk),
        .CE(\array_reg[4]_28 ),
        .CLR(reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[4][6] ));
  FDCE \array_reg_reg[4][7] 
       (.C(clk),
        .CE(\array_reg[4]_28 ),
        .CLR(reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[4][7] ));
  FDCE \array_reg_reg[4][8] 
       (.C(clk),
        .CE(\array_reg[4]_28 ),
        .CLR(reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[4][8] ));
  FDCE \array_reg_reg[4][9] 
       (.C(clk),
        .CE(\array_reg[4]_28 ),
        .CLR(reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[4][9] ));
  FDCE \array_reg_reg[5][0] 
       (.C(clk),
        .CE(\array_reg[5]_27 ),
        .CLR(reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[5][0] ));
  FDCE \array_reg_reg[5][10] 
       (.C(clk),
        .CE(\array_reg[5]_27 ),
        .CLR(reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[5][10] ));
  FDCE \array_reg_reg[5][11] 
       (.C(clk),
        .CE(\array_reg[5]_27 ),
        .CLR(reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[5][11] ));
  FDCE \array_reg_reg[5][12] 
       (.C(clk),
        .CE(\array_reg[5]_27 ),
        .CLR(reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[5][12] ));
  FDCE \array_reg_reg[5][13] 
       (.C(clk),
        .CE(\array_reg[5]_27 ),
        .CLR(reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[5][13] ));
  FDCE \array_reg_reg[5][14] 
       (.C(clk),
        .CE(\array_reg[5]_27 ),
        .CLR(reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[5][14] ));
  FDCE \array_reg_reg[5][15] 
       (.C(clk),
        .CE(\array_reg[5]_27 ),
        .CLR(reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[5][15] ));
  FDCE \array_reg_reg[5][1] 
       (.C(clk),
        .CE(\array_reg[5]_27 ),
        .CLR(reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[5][1] ));
  FDCE \array_reg_reg[5][2] 
       (.C(clk),
        .CE(\array_reg[5]_27 ),
        .CLR(reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[5][2] ));
  FDCE \array_reg_reg[5][3] 
       (.C(clk),
        .CE(\array_reg[5]_27 ),
        .CLR(reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[5][3] ));
  FDCE \array_reg_reg[5][4] 
       (.C(clk),
        .CE(\array_reg[5]_27 ),
        .CLR(reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[5][4] ));
  FDCE \array_reg_reg[5][5] 
       (.C(clk),
        .CE(\array_reg[5]_27 ),
        .CLR(reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[5][5] ));
  FDCE \array_reg_reg[5][6] 
       (.C(clk),
        .CE(\array_reg[5]_27 ),
        .CLR(reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[5][6] ));
  FDCE \array_reg_reg[5][7] 
       (.C(clk),
        .CE(\array_reg[5]_27 ),
        .CLR(reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[5][7] ));
  FDCE \array_reg_reg[5][8] 
       (.C(clk),
        .CE(\array_reg[5]_27 ),
        .CLR(reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[5][8] ));
  FDCE \array_reg_reg[5][9] 
       (.C(clk),
        .CE(\array_reg[5]_27 ),
        .CLR(reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[5][9] ));
  FDCE \array_reg_reg[6][0] 
       (.C(clk),
        .CE(\array_reg[6]_26 ),
        .CLR(reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[6][0] ));
  FDCE \array_reg_reg[6][10] 
       (.C(clk),
        .CE(\array_reg[6]_26 ),
        .CLR(reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[6][10] ));
  FDCE \array_reg_reg[6][11] 
       (.C(clk),
        .CE(\array_reg[6]_26 ),
        .CLR(reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[6][11] ));
  FDCE \array_reg_reg[6][12] 
       (.C(clk),
        .CE(\array_reg[6]_26 ),
        .CLR(reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[6][12] ));
  FDCE \array_reg_reg[6][13] 
       (.C(clk),
        .CE(\array_reg[6]_26 ),
        .CLR(reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[6][13] ));
  FDCE \array_reg_reg[6][14] 
       (.C(clk),
        .CE(\array_reg[6]_26 ),
        .CLR(reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[6][14] ));
  FDCE \array_reg_reg[6][15] 
       (.C(clk),
        .CE(\array_reg[6]_26 ),
        .CLR(reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[6][15] ));
  FDCE \array_reg_reg[6][1] 
       (.C(clk),
        .CE(\array_reg[6]_26 ),
        .CLR(reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[6][1] ));
  FDCE \array_reg_reg[6][2] 
       (.C(clk),
        .CE(\array_reg[6]_26 ),
        .CLR(reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[6][2] ));
  FDCE \array_reg_reg[6][3] 
       (.C(clk),
        .CE(\array_reg[6]_26 ),
        .CLR(reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[6][3] ));
  FDCE \array_reg_reg[6][4] 
       (.C(clk),
        .CE(\array_reg[6]_26 ),
        .CLR(reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[6][4] ));
  FDCE \array_reg_reg[6][5] 
       (.C(clk),
        .CE(\array_reg[6]_26 ),
        .CLR(reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[6][5] ));
  FDCE \array_reg_reg[6][6] 
       (.C(clk),
        .CE(\array_reg[6]_26 ),
        .CLR(reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[6][6] ));
  FDCE \array_reg_reg[6][7] 
       (.C(clk),
        .CE(\array_reg[6]_26 ),
        .CLR(reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[6][7] ));
  FDCE \array_reg_reg[6][8] 
       (.C(clk),
        .CE(\array_reg[6]_26 ),
        .CLR(reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[6][8] ));
  FDCE \array_reg_reg[6][9] 
       (.C(clk),
        .CE(\array_reg[6]_26 ),
        .CLR(reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[6][9] ));
  FDCE \array_reg_reg[7][0] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[7][0] ));
  FDCE \array_reg_reg[7][10] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[7][10] ));
  FDCE \array_reg_reg[7][11] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[7][11] ));
  FDCE \array_reg_reg[7][12] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[7][12] ));
  FDCE \array_reg_reg[7][13] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[7][13] ));
  FDCE \array_reg_reg[7][14] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[7][14] ));
  FDCE \array_reg_reg[7][15] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[7][15] ));
  FDCE \array_reg_reg[7][1] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[7][1] ));
  FDCE \array_reg_reg[7][2] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[7][2] ));
  FDCE \array_reg_reg[7][3] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[7][3] ));
  FDCE \array_reg_reg[7][4] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[7][4] ));
  FDCE \array_reg_reg[7][5] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[7][5] ));
  FDCE \array_reg_reg[7][6] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[7][6] ));
  FDCE \array_reg_reg[7][7] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[7][7] ));
  FDCE \array_reg_reg[7][8] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[7][8] ));
  FDCE \array_reg_reg[7][9] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[7][9] ));
  FDCE \array_reg_reg[8][0] 
       (.C(clk),
        .CE(\array_reg[8]_25 ),
        .CLR(reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[8][0] ));
  FDCE \array_reg_reg[8][10] 
       (.C(clk),
        .CE(\array_reg[8]_25 ),
        .CLR(reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[8][10] ));
  FDCE \array_reg_reg[8][11] 
       (.C(clk),
        .CE(\array_reg[8]_25 ),
        .CLR(reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[8][11] ));
  FDCE \array_reg_reg[8][12] 
       (.C(clk),
        .CE(\array_reg[8]_25 ),
        .CLR(reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[8][12] ));
  FDCE \array_reg_reg[8][13] 
       (.C(clk),
        .CE(\array_reg[8]_25 ),
        .CLR(reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[8][13] ));
  FDCE \array_reg_reg[8][14] 
       (.C(clk),
        .CE(\array_reg[8]_25 ),
        .CLR(reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[8][14] ));
  FDCE \array_reg_reg[8][15] 
       (.C(clk),
        .CE(\array_reg[8]_25 ),
        .CLR(reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[8][15] ));
  FDCE \array_reg_reg[8][1] 
       (.C(clk),
        .CE(\array_reg[8]_25 ),
        .CLR(reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[8][1] ));
  FDCE \array_reg_reg[8][2] 
       (.C(clk),
        .CE(\array_reg[8]_25 ),
        .CLR(reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[8][2] ));
  FDCE \array_reg_reg[8][3] 
       (.C(clk),
        .CE(\array_reg[8]_25 ),
        .CLR(reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[8][3] ));
  FDCE \array_reg_reg[8][4] 
       (.C(clk),
        .CE(\array_reg[8]_25 ),
        .CLR(reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[8][4] ));
  FDCE \array_reg_reg[8][5] 
       (.C(clk),
        .CE(\array_reg[8]_25 ),
        .CLR(reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[8][5] ));
  FDCE \array_reg_reg[8][6] 
       (.C(clk),
        .CE(\array_reg[8]_25 ),
        .CLR(reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[8][6] ));
  FDCE \array_reg_reg[8][7] 
       (.C(clk),
        .CE(\array_reg[8]_25 ),
        .CLR(reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[8][7] ));
  FDCE \array_reg_reg[8][8] 
       (.C(clk),
        .CE(\array_reg[8]_25 ),
        .CLR(reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[8][8] ));
  FDCE \array_reg_reg[8][9] 
       (.C(clk),
        .CE(\array_reg[8]_25 ),
        .CLR(reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[8][9] ));
  FDCE \array_reg_reg[9][0] 
       (.C(clk),
        .CE(\array_reg[9]_24 ),
        .CLR(reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[9][0] ));
  FDCE \array_reg_reg[9][10] 
       (.C(clk),
        .CE(\array_reg[9]_24 ),
        .CLR(reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[9][10] ));
  FDCE \array_reg_reg[9][11] 
       (.C(clk),
        .CE(\array_reg[9]_24 ),
        .CLR(reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[9][11] ));
  FDCE \array_reg_reg[9][12] 
       (.C(clk),
        .CE(\array_reg[9]_24 ),
        .CLR(reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[9][12] ));
  FDCE \array_reg_reg[9][13] 
       (.C(clk),
        .CE(\array_reg[9]_24 ),
        .CLR(reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[9][13] ));
  FDCE \array_reg_reg[9][14] 
       (.C(clk),
        .CE(\array_reg[9]_24 ),
        .CLR(reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[9][14] ));
  FDCE \array_reg_reg[9][15] 
       (.C(clk),
        .CE(\array_reg[9]_24 ),
        .CLR(reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[9][15] ));
  FDCE \array_reg_reg[9][1] 
       (.C(clk),
        .CE(\array_reg[9]_24 ),
        .CLR(reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[9][1] ));
  FDCE \array_reg_reg[9][2] 
       (.C(clk),
        .CE(\array_reg[9]_24 ),
        .CLR(reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[9][2] ));
  FDCE \array_reg_reg[9][3] 
       (.C(clk),
        .CE(\array_reg[9]_24 ),
        .CLR(reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[9][3] ));
  FDCE \array_reg_reg[9][4] 
       (.C(clk),
        .CE(\array_reg[9]_24 ),
        .CLR(reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[9][4] ));
  FDCE \array_reg_reg[9][5] 
       (.C(clk),
        .CE(\array_reg[9]_24 ),
        .CLR(reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[9][5] ));
  FDCE \array_reg_reg[9][6] 
       (.C(clk),
        .CE(\array_reg[9]_24 ),
        .CLR(reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[9][6] ));
  FDCE \array_reg_reg[9][7] 
       (.C(clk),
        .CE(\array_reg[9]_24 ),
        .CLR(reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[9][7] ));
  FDCE \array_reg_reg[9][8] 
       (.C(clk),
        .CE(\array_reg[9]_24 ),
        .CLR(reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[9][8] ));
  FDCE \array_reg_reg[9][9] 
       (.C(clk),
        .CE(\array_reg[9]_24 ),
        .CLR(reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[9][9] ));
  LUT6 #(
    .INIT(64'hCCCC00C0CCDCCCDC)) 
    empty_reg_i_1__0
       (.I0(empty_reg_i_2_n_0),
        .I1(empty_reg),
        .I2(blClkOut[1]),
        .I3(blClkOut[0]),
        .I4(out_fifo_full),
        .I5(wr),
        .O(empty_reg_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h95556AAAFFFFFFFF)) 
    empty_reg_i_2
       (.I0(r_ptr_reg_reg__0[3]),
        .I1(r_ptr_reg_reg__0[2]),
        .I2(r_ptr_reg_reg__0[0]),
        .I3(r_ptr_reg_reg__0[1]),
        .I4(w_ptr_reg_reg__0[3]),
        .I5(empty_reg_i_3_n_0),
        .O(empty_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000900906900000)) 
    empty_reg_i_3
       (.I0(r_ptr_reg_reg__0[2]),
        .I1(w_ptr_reg_reg__0[2]),
        .I2(w_ptr_reg_reg__0[1]),
        .I3(r_ptr_reg_reg__0[1]),
        .I4(r_ptr_reg_reg__0[0]),
        .I5(w_ptr_reg_reg__0[0]),
        .O(empty_reg_i_3_n_0));
  FDPE empty_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_reg_i_1__0_n_0),
        .PRE(reset),
        .Q(empty_reg));
  LUT6 #(
    .INIT(64'hFCE0FCFCF0E0F0F0)) 
    full_reg_i_1__0
       (.I0(empty_reg),
        .I1(wr),
        .I2(out_fifo_full),
        .I3(blClkOut[0]),
        .I4(blClkOut[1]),
        .I5(full_reg_i_2__0_n_0),
        .O(full_reg_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h2888888882222222)) 
    full_reg_i_2__0
       (.I0(full_reg_i_3__0_n_0),
        .I1(w_ptr_reg_reg__0[3]),
        .I2(w_ptr_reg_reg__0[0]),
        .I3(w_ptr_reg_reg__0[1]),
        .I4(w_ptr_reg_reg__0[2]),
        .I5(r_ptr_reg_reg__0[3]),
        .O(full_reg_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0840021010084002)) 
    full_reg_i_3__0
       (.I0(r_ptr_reg_reg__0[0]),
        .I1(r_ptr_reg_reg__0[2]),
        .I2(w_ptr_reg_reg__0[0]),
        .I3(w_ptr_reg_reg__0[1]),
        .I4(w_ptr_reg_reg__0[2]),
        .I5(r_ptr_reg_reg__0[1]),
        .O(full_reg_i_3__0_n_0));
  FDCE full_reg_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(full_reg_i_1__0_n_0),
        .Q(out_fifo_full));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_ptr_reg[0]_i_1 
       (.I0(r_ptr_reg_reg__0[0]),
        .O(\r_ptr_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_ptr_reg[1]_i_1 
       (.I0(r_ptr_reg_reg__0[0]),
        .I1(r_ptr_reg_reg__0[1]),
        .O(\r_ptr_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_ptr_reg[2]_i_1 
       (.I0(r_ptr_reg_reg__0[2]),
        .I1(r_ptr_reg_reg__0[1]),
        .I2(r_ptr_reg_reg__0[0]),
        .O(\r_ptr_reg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h080C)) 
    \r_ptr_reg[3]_i_1__0 
       (.I0(wr),
        .I1(blClkOut[1]),
        .I2(blClkOut[0]),
        .I3(empty_reg),
        .O(\r_ptr_reg[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_ptr_reg[3]_i_2 
       (.I0(r_ptr_reg_reg__0[1]),
        .I1(r_ptr_reg_reg__0[0]),
        .I2(r_ptr_reg_reg__0[2]),
        .I3(r_ptr_reg_reg__0[3]),
        .O(\r_ptr_reg[3]_i_2_n_0 ));
  FDCE \r_ptr_reg_reg[0] 
       (.C(clk),
        .CE(\r_ptr_reg[3]_i_1__0_n_0 ),
        .CLR(reset),
        .D(\r_ptr_reg[0]_i_1_n_0 ),
        .Q(r_ptr_reg_reg__0[0]));
  FDCE \r_ptr_reg_reg[1] 
       (.C(clk),
        .CE(\r_ptr_reg[3]_i_1__0_n_0 ),
        .CLR(reset),
        .D(\r_ptr_reg[1]_i_1_n_0 ),
        .Q(r_ptr_reg_reg__0[1]));
  FDCE \r_ptr_reg_reg[2] 
       (.C(clk),
        .CE(\r_ptr_reg[3]_i_1__0_n_0 ),
        .CLR(reset),
        .D(\r_ptr_reg[2]_i_1_n_0 ),
        .Q(r_ptr_reg_reg__0[2]));
  FDCE \r_ptr_reg_reg[3] 
       (.C(clk),
        .CE(\r_ptr_reg[3]_i_1__0_n_0 ),
        .CLR(reset),
        .D(\r_ptr_reg[3]_i_2_n_0 ),
        .Q(r_ptr_reg_reg__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \w_ptr_reg[0]_i_1__0 
       (.I0(w_ptr_reg_reg__0[0]),
        .O(\w_ptr_reg[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w_ptr_reg[1]_i_1__0 
       (.I0(w_ptr_reg_reg__0[0]),
        .I1(w_ptr_reg_reg__0[1]),
        .O(\w_ptr_reg[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \w_ptr_reg[2]_i_1__0 
       (.I0(w_ptr_reg_reg__0[0]),
        .I1(w_ptr_reg_reg__0[1]),
        .I2(w_ptr_reg_reg__0[2]),
        .O(\w_ptr_reg[2]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h20F0)) 
    \w_ptr_reg[3]_i_1__0 
       (.I0(blClkOut[1]),
        .I1(blClkOut[0]),
        .I2(wr),
        .I3(out_fifo_full),
        .O(\w_ptr_reg[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \w_ptr_reg[3]_i_2__0 
       (.I0(w_ptr_reg_reg__0[2]),
        .I1(w_ptr_reg_reg__0[1]),
        .I2(w_ptr_reg_reg__0[0]),
        .I3(w_ptr_reg_reg__0[3]),
        .O(\w_ptr_reg[3]_i_2__0_n_0 ));
  FDCE \w_ptr_reg_reg[0] 
       (.C(clk),
        .CE(\w_ptr_reg[3]_i_1__0_n_0 ),
        .CLR(reset),
        .D(\w_ptr_reg[0]_i_1__0_n_0 ),
        .Q(w_ptr_reg_reg__0[0]));
  FDCE \w_ptr_reg_reg[1] 
       (.C(clk),
        .CE(\w_ptr_reg[3]_i_1__0_n_0 ),
        .CLR(reset),
        .D(\w_ptr_reg[1]_i_1__0_n_0 ),
        .Q(w_ptr_reg_reg__0[1]));
  FDCE \w_ptr_reg_reg[2] 
       (.C(clk),
        .CE(\w_ptr_reg[3]_i_1__0_n_0 ),
        .CLR(reset),
        .D(\w_ptr_reg[2]_i_1__0_n_0 ),
        .Q(w_ptr_reg_reg__0[2]));
  FDCE \w_ptr_reg_reg[3] 
       (.C(clk),
        .CE(\w_ptr_reg[3]_i_1__0_n_0 ),
        .CLR(reset),
        .D(\w_ptr_reg[3]_i_2__0_n_0 ),
        .Q(w_ptr_reg_reg__0[3]));
endmodule

(* ORIG_REF_NAME = "sr_2B_16bit" *) 
module GPIOTest_GPIOInterface_0_0_sr_2B_16bit
   (D,
    reset,
    E,
    DIn,
    clk);
  output [15:0]D;
  input reset;
  input [0:0]E;
  input [7:0]DIn;
  input clk;

  wire [15:0]D;
  wire [7:0]DIn;
  wire [0:0]E;
  wire clk;
  wire reset;

  FDRE \data_sr_content_reg[0][0] 
       (.C(clk),
        .CE(E),
        .D(DIn[0]),
        .Q(D[0]),
        .R(reset));
  FDRE \data_sr_content_reg[0][1] 
       (.C(clk),
        .CE(E),
        .D(DIn[1]),
        .Q(D[1]),
        .R(reset));
  FDRE \data_sr_content_reg[0][2] 
       (.C(clk),
        .CE(E),
        .D(DIn[2]),
        .Q(D[2]),
        .R(reset));
  FDRE \data_sr_content_reg[0][3] 
       (.C(clk),
        .CE(E),
        .D(DIn[3]),
        .Q(D[3]),
        .R(reset));
  FDRE \data_sr_content_reg[0][4] 
       (.C(clk),
        .CE(E),
        .D(DIn[4]),
        .Q(D[4]),
        .R(reset));
  FDRE \data_sr_content_reg[0][5] 
       (.C(clk),
        .CE(E),
        .D(DIn[5]),
        .Q(D[5]),
        .R(reset));
  FDRE \data_sr_content_reg[0][6] 
       (.C(clk),
        .CE(E),
        .D(DIn[6]),
        .Q(D[6]),
        .R(reset));
  FDRE \data_sr_content_reg[0][7] 
       (.C(clk),
        .CE(E),
        .D(DIn[7]),
        .Q(D[7]),
        .R(reset));
  FDRE \data_sr_content_reg[1][0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(D[8]),
        .R(reset));
  FDRE \data_sr_content_reg[1][1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(D[9]),
        .R(reset));
  FDRE \data_sr_content_reg[1][2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(D[10]),
        .R(reset));
  FDRE \data_sr_content_reg[1][3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(D[11]),
        .R(reset));
  FDRE \data_sr_content_reg[1][4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(D[12]),
        .R(reset));
  FDRE \data_sr_content_reg[1][5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(D[13]),
        .R(reset));
  FDRE \data_sr_content_reg[1][6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(D[14]),
        .R(reset));
  FDRE \data_sr_content_reg[1][7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(D[15]),
        .R(reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
