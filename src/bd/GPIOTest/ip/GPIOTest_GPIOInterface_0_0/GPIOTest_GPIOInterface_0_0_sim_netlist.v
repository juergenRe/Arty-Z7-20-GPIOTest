// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Dec 17 14:02:07 2019
// Host        : CHGFN1A945754 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/s91153/Documents/FPGA/Arty-Z7/Arty-Z7-20-GPIOTest/src/bd/GPIOTest/ip/GPIOTest_GPIOInterface_0_0/GPIOTest_GPIOInterface_0_0_sim_netlist.v
// Design      : GPIOTest_GPIOInterface_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "GPIOTest_GPIOInterface_0_0,GPIOInterface,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "GPIOInterface,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module GPIOTest_GPIOInterface_0_0
   (GPIOPortWr,
    GPIOPortRd,
    clk,
    reset_n,
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN GPIOTest_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
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
  wire reset_n;

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
        .GPIOPortWr({GPIOPortWr[31:28],GPIOPortWr[26:24],GPIOPortWr[15:12],GPIOPortWr[10:0]}),
        .MUX(MUX),
        .SEL(SEL),
        .clk(clk),
        .nen_adh(nen_adh),
        .nen_adl(nen_adl),
        .nen_ctrl0(nen_ctrl0),
        .nen_idb(nen_idb),
        .phi1(phi1),
        .phi2(phi2),
        .reset_n(reset_n));
endmodule

(* ORIG_REF_NAME = "Delay" *) 
module GPIOTest_GPIOInterface_0_0_Delay
   (phi1,
    Q,
    clk);
  output phi1;
  input [0:0]Q;
  input clk;

  wire [0:0]Q;
  wire clk;
  wire phi1;
  wire \tmp_reg[1]_srl2_n_0 ;

  (* srl_bus_name = "\U0/dly_phi1/tmp_reg " *) 
  (* srl_name = "\U0/dly_phi1/tmp_reg[1]_srl2 " *) 
  SRL16E \tmp_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Q),
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
   (phi2,
    Q,
    clk);
  output phi2;
  input [0:0]Q;
  input clk;

  wire [0:0]Q;
  wire clk;
  wire phi2;
  wire \tmp_reg[1]_srl2_n_0 ;

  (* srl_bus_name = "\U0/dly_phi2/tmp_reg " *) 
  (* srl_name = "\U0/dly_phi2/tmp_reg[1]_srl2 " *) 
  SRL16E \tmp_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Q),
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
    SR,
    Q,
    clk);
  output delay_reg;
  input [0:0]SR;
  input [0:0]Q;
  input clk;

  wire [0:0]Q;
  wire [0:0]SR;
  wire clk;
  wire delay_reg;

  FDRE delay_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(Q),
        .Q(delay_reg),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "EdgeDetect" *) 
module GPIOTest_GPIOInterface_0_0_EdgeDetect_1
   (\FSM_sequential_fifoState_reg[2] ,
    SEL_reg,
    SR,
    Q,
    clk,
    fifoState,
    SEL_i_2_0,
    delay_reg,
    ExcTick,
    fifo_reset,
    SEL);
  output \FSM_sequential_fifoState_reg[2] ;
  output SEL_reg;
  input [0:0]SR;
  input [1:0]Q;
  input clk;
  input [2:0]fifoState;
  input [3:0]SEL_i_2_0;
  input delay_reg;
  input ExcTick;
  input fifo_reset;
  input SEL;

  wire ExcTick;
  wire \FSM_sequential_fifoState_reg[2] ;
  wire [1:0]Q;
  wire SEL;
  wire [3:0]SEL_i_2_0;
  wire SEL_i_2_n_0;
  wire SEL_i_3_n_0;
  wire SEL_reg;
  wire [0:0]SR;
  wire clk;
  wire delay_reg;
  wire delay_reg_0;
  wire [2:0]fifoState;
  wire fifo_reset;

  LUT6 #(
    .INIT(64'h00000000DFDE8B8A)) 
    \FSM_sequential_fifoState[0]_i_1 
       (.I0(fifoState[2]),
        .I1(fifoState[0]),
        .I2(fifoState[1]),
        .I3(ExcTick),
        .I4(SEL_i_2_n_0),
        .I5(fifo_reset),
        .O(\FSM_sequential_fifoState_reg[2] ));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    SEL_i_1
       (.I0(SEL),
        .I1(fifoState[2]),
        .I2(fifoState[1]),
        .I3(SEL_i_2_n_0),
        .I4(fifo_reset),
        .O(SEL_reg));
  LUT6 #(
    .INIT(64'h0151010101015101)) 
    SEL_i_2
       (.I0(fifoState[0]),
        .I1(SEL_i_3_n_0),
        .I2(SEL_i_2_0[1]),
        .I3(delay_reg),
        .I4(Q[0]),
        .I5(SEL_i_2_0[0]),
        .O(SEL_i_2_n_0));
  LUT4 #(
    .INIT(16'hA28A)) 
    SEL_i_3
       (.I0(SEL_i_2_0[3]),
        .I1(SEL_i_2_0[2]),
        .I2(delay_reg_0),
        .I3(Q[1]),
        .O(SEL_i_3_n_0));
  FDRE delay_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(delay_reg_0),
        .R(SR));
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
    DIn,
    reset_n);
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
  input [21:0]GPIOPortWr;
  input [7:0]DIn;
  input reset_n;

  wire ClkInTick;
  wire ClkOutTick;
  wire [7:0]DIn;
  wire [7:0]DOut;
  wire ExcTick;
  wire \FSM_onehot_blClkIn[0]_i_1_n_0 ;
  wire \FSM_onehot_blClkIn[1]_i_1_n_0 ;
  wire \FSM_onehot_blClkIn[2]_i_1_n_0 ;
  wire \FSM_onehot_blClkIn_reg_n_0_[0] ;
  wire \FSM_onehot_blClkIn_reg_n_0_[1] ;
  wire \FSM_onehot_blClkOut[0]_i_1_n_0 ;
  wire \FSM_onehot_blClkOut[1]_i_1_n_0 ;
  wire \FSM_onehot_blClkOut[2]_i_1_n_0 ;
  wire \FSM_onehot_blClkOut_reg_n_0_[0] ;
  wire \FSM_onehot_blClkOut_reg_n_0_[1] ;
  wire \FSM_onehot_blExc[0]_i_1_n_0 ;
  wire \FSM_onehot_blExc[1]_i_1_n_0 ;
  wire \FSM_onehot_blExc[2]_i_2_n_0 ;
  wire \FSM_onehot_blExc_reg_n_0_[0] ;
  wire \FSM_onehot_blExc_reg_n_0_[1] ;
  wire \FSM_onehot_blRdData[0]_i_1_n_0 ;
  wire \FSM_onehot_blRdData[1]_i_1_n_0 ;
  wire \FSM_onehot_blRdData[2]_i_1_n_0 ;
  wire \FSM_onehot_blRdData_reg_n_0_[0] ;
  wire \FSM_onehot_blRdData_reg_n_0_[1] ;
  wire \FSM_onehot_phiState[0]_i_1_n_0 ;
  wire \FSM_onehot_phiState[3]_i_1_n_0 ;
  wire \FSM_onehot_phiState[3]_i_2_n_0 ;
  wire \FSM_onehot_phiState[3]_i_3_n_0 ;
  wire \FSM_onehot_phiState_reg_n_0_[1] ;
  wire \FSM_onehot_phiState_reg_n_0_[3] ;
  wire \FSM_onehot_rdState[4]_i_1_n_0 ;
  wire \FSM_onehot_rdState_reg_n_0_[0] ;
  wire \FSM_onehot_rdState_reg_n_0_[1] ;
  wire \FSM_onehot_rdState_reg_n_0_[2] ;
  wire \FSM_onehot_rdState_reg_n_0_[3] ;
  wire \FSM_onehot_rdState_reg_n_0_[4] ;
  wire \FSM_sequential_fifoState[2]_i_1_n_0 ;
  wire [18:0]GPIOPortRd;
  wire [21:0]GPIOPortWr;
  wire [2:0]MUX;
  wire RdDataTick;
  wire SEL;
  wire \__13/i__n_0 ;
  wire \__14/i__n_0 ;
  wire blExc0;
  wire clk;
  wire cmd_fifo_n_0;
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
  wire cmd_fifo_n_7;
  wire cmd_fifo_n_8;
  wire cmd_fifo_n_9;
  wire data_ena;
  wire data_ena_33;
  wire delay_reg;
  wire \edges_reg_n_0_[0] ;
  wire [2:0]fifoState;
  wire fifo_reset;
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
  wire i__carry_i_8_n_0;
  wire nen_adh;
  wire nen_adh_i_1_n_0;
  wire nen_adl;
  wire nen_ctrl0;
  wire nen_ctrl0_i_2_n_0;
  wire nen_idb;
  wire out_fifo_full;
  wire out_fifo_wr_i_1_n_0;
  wire p2_edges_n_0;
  wire p2_edges_n_1;
  wire [3:0]p_0_in;
  wire p_0_in3_in;
  wire p_0_in_0;
  wire p_2_in;
  wire phi1;
  wire phi2;
  wire phi_1_int;
  wire phi_2_int;
  wire [31:0]phi_cnt;
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
  wire \phi_cnt[31]_i_3_n_0 ;
  wire \phi_cnt_reg[12]_i_2_n_0 ;
  wire \phi_cnt_reg[12]_i_2_n_1 ;
  wire \phi_cnt_reg[12]_i_2_n_2 ;
  wire \phi_cnt_reg[12]_i_2_n_3 ;
  wire \phi_cnt_reg[12]_i_2_n_4 ;
  wire \phi_cnt_reg[12]_i_2_n_5 ;
  wire \phi_cnt_reg[12]_i_2_n_6 ;
  wire \phi_cnt_reg[12]_i_2_n_7 ;
  wire \phi_cnt_reg[16]_i_2_n_0 ;
  wire \phi_cnt_reg[16]_i_2_n_1 ;
  wire \phi_cnt_reg[16]_i_2_n_2 ;
  wire \phi_cnt_reg[16]_i_2_n_3 ;
  wire \phi_cnt_reg[16]_i_2_n_4 ;
  wire \phi_cnt_reg[16]_i_2_n_5 ;
  wire \phi_cnt_reg[16]_i_2_n_6 ;
  wire \phi_cnt_reg[16]_i_2_n_7 ;
  wire \phi_cnt_reg[20]_i_2_n_0 ;
  wire \phi_cnt_reg[20]_i_2_n_1 ;
  wire \phi_cnt_reg[20]_i_2_n_2 ;
  wire \phi_cnt_reg[20]_i_2_n_3 ;
  wire \phi_cnt_reg[20]_i_2_n_4 ;
  wire \phi_cnt_reg[20]_i_2_n_5 ;
  wire \phi_cnt_reg[20]_i_2_n_6 ;
  wire \phi_cnt_reg[20]_i_2_n_7 ;
  wire \phi_cnt_reg[24]_i_2_n_0 ;
  wire \phi_cnt_reg[24]_i_2_n_1 ;
  wire \phi_cnt_reg[24]_i_2_n_2 ;
  wire \phi_cnt_reg[24]_i_2_n_3 ;
  wire \phi_cnt_reg[24]_i_2_n_4 ;
  wire \phi_cnt_reg[24]_i_2_n_5 ;
  wire \phi_cnt_reg[24]_i_2_n_6 ;
  wire \phi_cnt_reg[24]_i_2_n_7 ;
  wire \phi_cnt_reg[28]_i_2_n_0 ;
  wire \phi_cnt_reg[28]_i_2_n_1 ;
  wire \phi_cnt_reg[28]_i_2_n_2 ;
  wire \phi_cnt_reg[28]_i_2_n_3 ;
  wire \phi_cnt_reg[28]_i_2_n_4 ;
  wire \phi_cnt_reg[28]_i_2_n_5 ;
  wire \phi_cnt_reg[28]_i_2_n_6 ;
  wire \phi_cnt_reg[28]_i_2_n_7 ;
  wire \phi_cnt_reg[31]_i_2_n_2 ;
  wire \phi_cnt_reg[31]_i_2_n_3 ;
  wire \phi_cnt_reg[31]_i_2_n_5 ;
  wire \phi_cnt_reg[31]_i_2_n_6 ;
  wire \phi_cnt_reg[31]_i_2_n_7 ;
  wire \phi_cnt_reg[4]_i_2_n_0 ;
  wire \phi_cnt_reg[4]_i_2_n_1 ;
  wire \phi_cnt_reg[4]_i_2_n_2 ;
  wire \phi_cnt_reg[4]_i_2_n_3 ;
  wire \phi_cnt_reg[4]_i_2_n_4 ;
  wire \phi_cnt_reg[4]_i_2_n_5 ;
  wire \phi_cnt_reg[4]_i_2_n_6 ;
  wire \phi_cnt_reg[4]_i_2_n_7 ;
  wire \phi_cnt_reg[8]_i_2_n_0 ;
  wire \phi_cnt_reg[8]_i_2_n_1 ;
  wire \phi_cnt_reg[8]_i_2_n_2 ;
  wire \phi_cnt_reg[8]_i_2_n_3 ;
  wire \phi_cnt_reg[8]_i_2_n_4 ;
  wire \phi_cnt_reg[8]_i_2_n_5 ;
  wire \phi_cnt_reg[8]_i_2_n_6 ;
  wire \phi_cnt_reg[8]_i_2_n_7 ;
  wire \phi_cnt_reg_n_0_[0] ;
  wire \phi_cnt_reg_n_0_[10] ;
  wire \phi_cnt_reg_n_0_[11] ;
  wire \phi_cnt_reg_n_0_[12] ;
  wire \phi_cnt_reg_n_0_[13] ;
  wire \phi_cnt_reg_n_0_[14] ;
  wire \phi_cnt_reg_n_0_[15] ;
  wire \phi_cnt_reg_n_0_[16] ;
  wire \phi_cnt_reg_n_0_[17] ;
  wire \phi_cnt_reg_n_0_[18] ;
  wire \phi_cnt_reg_n_0_[19] ;
  wire \phi_cnt_reg_n_0_[1] ;
  wire \phi_cnt_reg_n_0_[20] ;
  wire \phi_cnt_reg_n_0_[21] ;
  wire \phi_cnt_reg_n_0_[22] ;
  wire \phi_cnt_reg_n_0_[23] ;
  wire \phi_cnt_reg_n_0_[24] ;
  wire \phi_cnt_reg_n_0_[25] ;
  wire \phi_cnt_reg_n_0_[26] ;
  wire \phi_cnt_reg_n_0_[27] ;
  wire \phi_cnt_reg_n_0_[28] ;
  wire \phi_cnt_reg_n_0_[29] ;
  wire \phi_cnt_reg_n_0_[2] ;
  wire \phi_cnt_reg_n_0_[30] ;
  wire \phi_cnt_reg_n_0_[31] ;
  wire \phi_cnt_reg_n_0_[3] ;
  wire \phi_cnt_reg_n_0_[4] ;
  wire \phi_cnt_reg_n_0_[5] ;
  wire \phi_cnt_reg_n_0_[6] ;
  wire \phi_cnt_reg_n_0_[7] ;
  wire \phi_cnt_reg_n_0_[8] ;
  wire \phi_cnt_reg_n_0_[9] ;
  wire rd;
  wire reset;
  wire reset_n;
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

  FDRE \DOut_reg[0] 
       (.C(clk),
        .CE(cmd_fifo_n_0),
        .D(cmd_fifo_n_17),
        .Q(DOut[0]),
        .R(fifo_reset));
  FDRE \DOut_reg[1] 
       (.C(clk),
        .CE(cmd_fifo_n_0),
        .D(cmd_fifo_n_16),
        .Q(DOut[1]),
        .R(fifo_reset));
  FDRE \DOut_reg[2] 
       (.C(clk),
        .CE(cmd_fifo_n_0),
        .D(cmd_fifo_n_15),
        .Q(DOut[2]),
        .R(fifo_reset));
  FDRE \DOut_reg[3] 
       (.C(clk),
        .CE(cmd_fifo_n_0),
        .D(cmd_fifo_n_14),
        .Q(DOut[3]),
        .R(fifo_reset));
  FDRE \DOut_reg[4] 
       (.C(clk),
        .CE(cmd_fifo_n_0),
        .D(cmd_fifo_n_13),
        .Q(DOut[4]),
        .R(fifo_reset));
  FDRE \DOut_reg[5] 
       (.C(clk),
        .CE(cmd_fifo_n_0),
        .D(cmd_fifo_n_12),
        .Q(DOut[5]),
        .R(fifo_reset));
  FDRE \DOut_reg[6] 
       (.C(clk),
        .CE(cmd_fifo_n_0),
        .D(cmd_fifo_n_11),
        .Q(DOut[6]),
        .R(fifo_reset));
  FDRE \DOut_reg[7] 
       (.C(clk),
        .CE(cmd_fifo_n_0),
        .D(cmd_fifo_n_10),
        .Q(DOut[7]),
        .R(fifo_reset));
  LUT4 #(
    .INIT(16'hABAA)) 
    \FSM_onehot_blClkIn[0]_i_1 
       (.I0(ClkInTick),
        .I1(\FSM_onehot_blClkIn_reg_n_0_[1] ),
        .I2(GPIOPortWr[15]),
        .I3(\FSM_onehot_blClkIn_reg_n_0_[0] ),
        .O(\FSM_onehot_blClkIn[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE40)) 
    \FSM_onehot_blClkIn[1]_i_1 
       (.I0(ClkInTick),
        .I1(\FSM_onehot_blClkIn_reg_n_0_[1] ),
        .I2(GPIOPortWr[15]),
        .I3(\FSM_onehot_blClkIn_reg_n_0_[0] ),
        .O(\FSM_onehot_blClkIn[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hCC8C)) 
    \FSM_onehot_blClkIn[2]_i_1 
       (.I0(ClkInTick),
        .I1(\FSM_onehot_blClkIn_reg_n_0_[1] ),
        .I2(GPIOPortWr[15]),
        .I3(\FSM_onehot_blClkIn_reg_n_0_[0] ),
        .O(\FSM_onehot_blClkIn[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "blidle:001,blactive:010,bltrg:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_blClkIn_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_blClkIn[0]_i_1_n_0 ),
        .Q(\FSM_onehot_blClkIn_reg_n_0_[0] ),
        .S(blExc0));
  (* FSM_ENCODED_STATES = "blidle:001,blactive:010,bltrg:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_blClkIn_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_blClkIn[1]_i_1_n_0 ),
        .Q(\FSM_onehot_blClkIn_reg_n_0_[1] ),
        .R(blExc0));
  (* FSM_ENCODED_STATES = "blidle:001,blactive:010,bltrg:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_blClkIn_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_blClkIn[2]_i_1_n_0 ),
        .Q(ClkInTick),
        .R(blExc0));
  LUT4 #(
    .INIT(16'hABAA)) 
    \FSM_onehot_blClkOut[0]_i_1 
       (.I0(ClkOutTick),
        .I1(\FSM_onehot_blClkOut_reg_n_0_[1] ),
        .I2(GPIOPortWr[16]),
        .I3(\FSM_onehot_blClkOut_reg_n_0_[0] ),
        .O(\FSM_onehot_blClkOut[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE40)) 
    \FSM_onehot_blClkOut[1]_i_1 
       (.I0(ClkOutTick),
        .I1(\FSM_onehot_blClkOut_reg_n_0_[1] ),
        .I2(GPIOPortWr[16]),
        .I3(\FSM_onehot_blClkOut_reg_n_0_[0] ),
        .O(\FSM_onehot_blClkOut[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hCC8C)) 
    \FSM_onehot_blClkOut[2]_i_1 
       (.I0(ClkOutTick),
        .I1(\FSM_onehot_blClkOut_reg_n_0_[1] ),
        .I2(GPIOPortWr[16]),
        .I3(\FSM_onehot_blClkOut_reg_n_0_[0] ),
        .O(\FSM_onehot_blClkOut[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "blidle:001,blactive:010,bltrg:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_blClkOut_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_blClkOut[0]_i_1_n_0 ),
        .Q(\FSM_onehot_blClkOut_reg_n_0_[0] ),
        .S(blExc0));
  (* FSM_ENCODED_STATES = "blidle:001,blactive:010,bltrg:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_blClkOut_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_blClkOut[1]_i_1_n_0 ),
        .Q(\FSM_onehot_blClkOut_reg_n_0_[1] ),
        .R(blExc0));
  (* FSM_ENCODED_STATES = "blidle:001,blactive:010,bltrg:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_blClkOut_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_blClkOut[2]_i_1_n_0 ),
        .Q(ClkOutTick),
        .R(blExc0));
  LUT4 #(
    .INIT(16'hABAA)) 
    \FSM_onehot_blExc[0]_i_1 
       (.I0(ExcTick),
        .I1(\FSM_onehot_blExc_reg_n_0_[1] ),
        .I2(GPIOPortWr[20]),
        .I3(\FSM_onehot_blExc_reg_n_0_[0] ),
        .O(\FSM_onehot_blExc[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE40)) 
    \FSM_onehot_blExc[1]_i_1 
       (.I0(ExcTick),
        .I1(\FSM_onehot_blExc_reg_n_0_[1] ),
        .I2(GPIOPortWr[20]),
        .I3(\FSM_onehot_blExc_reg_n_0_[0] ),
        .O(\FSM_onehot_blExc[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_blExc[2]_i_1 
       (.I0(GPIOPortWr[21]),
        .I1(reset_n),
        .O(blExc0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hCC8C)) 
    \FSM_onehot_blExc[2]_i_2 
       (.I0(ExcTick),
        .I1(\FSM_onehot_blExc_reg_n_0_[1] ),
        .I2(GPIOPortWr[20]),
        .I3(\FSM_onehot_blExc_reg_n_0_[0] ),
        .O(\FSM_onehot_blExc[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "blidle:001,blactive:010,bltrg:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_blExc_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_blExc[0]_i_1_n_0 ),
        .Q(\FSM_onehot_blExc_reg_n_0_[0] ),
        .S(blExc0));
  (* FSM_ENCODED_STATES = "blidle:001,blactive:010,bltrg:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_blExc_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_blExc[1]_i_1_n_0 ),
        .Q(\FSM_onehot_blExc_reg_n_0_[1] ),
        .R(blExc0));
  (* FSM_ENCODED_STATES = "blidle:001,blactive:010,bltrg:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_blExc_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_blExc[2]_i_2_n_0 ),
        .Q(ExcTick),
        .R(blExc0));
  LUT4 #(
    .INIT(16'hAAAE)) 
    \FSM_onehot_blRdData[0]_i_1 
       (.I0(RdDataTick),
        .I1(\FSM_onehot_blRdData_reg_n_0_[0] ),
        .I2(GPIOPortWr[19]),
        .I3(\FSM_onehot_blRdData_reg_n_0_[1] ),
        .O(\FSM_onehot_blRdData[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hDCC8)) 
    \FSM_onehot_blRdData[1]_i_1 
       (.I0(RdDataTick),
        .I1(\FSM_onehot_blRdData_reg_n_0_[0] ),
        .I2(GPIOPortWr[19]),
        .I3(\FSM_onehot_blRdData_reg_n_0_[1] ),
        .O(\FSM_onehot_blRdData[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FSM_onehot_blRdData[2]_i_1 
       (.I0(RdDataTick),
        .I1(\FSM_onehot_blRdData_reg_n_0_[0] ),
        .I2(GPIOPortWr[19]),
        .I3(\FSM_onehot_blRdData_reg_n_0_[1] ),
        .O(\FSM_onehot_blRdData[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "blidle:001,blactive:010,bltrg:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_blRdData_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_blRdData[0]_i_1_n_0 ),
        .Q(\FSM_onehot_blRdData_reg_n_0_[0] ),
        .S(blExc0));
  (* FSM_ENCODED_STATES = "blidle:001,blactive:010,bltrg:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_blRdData_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_blRdData[1]_i_1_n_0 ),
        .Q(\FSM_onehot_blRdData_reg_n_0_[1] ),
        .R(blExc0));
  (* FSM_ENCODED_STATES = "blidle:001,blactive:010,bltrg:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_blRdData_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_blRdData[2]_i_1_n_0 ),
        .Q(RdDataTick),
        .R(blExc0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_phiState[0]_i_1 
       (.I0(\FSM_onehot_phiState_reg_n_0_[3] ),
        .I1(phi_cnt1_carry__2_n_0),
        .I2(phi_2_int),
        .O(\FSM_onehot_phiState[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA0808080808)) 
    \FSM_onehot_phiState[3]_i_1 
       (.I0(reset_n),
        .I1(phi_cnt1_carry__2_n_0),
        .I2(\FSM_onehot_phiState[3]_i_3_n_0 ),
        .I3(\FSM_onehot_phiState_reg_n_0_[3] ),
        .I4(\FSM_onehot_phiState_reg_n_0_[1] ),
        .I5(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .O(\FSM_onehot_phiState[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_phiState[3]_i_2 
       (.I0(phi_2_int),
        .I1(phi_cnt1_carry__2_n_0),
        .O(\FSM_onehot_phiState[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_phiState[3]_i_3 
       (.I0(phi_1_int),
        .I1(phi_2_int),
        .O(\FSM_onehot_phiState[3]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "pst_p1_p2:0010,pst_p2:0100,pst_p1:0001,pst_p2_p1:1000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_phiState_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_phiState[3]_i_1_n_0 ),
        .D(\FSM_onehot_phiState[0]_i_1_n_0 ),
        .Q(phi_1_int),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "pst_p1_p2:0010,pst_p2:0100,pst_p1:0001,pst_p2_p1:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_phiState_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_phiState[3]_i_1_n_0 ),
        .D(phi_1_int),
        .Q(\FSM_onehot_phiState_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "pst_p1_p2:0010,pst_p2:0100,pst_p1:0001,pst_p2_p1:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_phiState_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_phiState[3]_i_1_n_0 ),
        .D(\FSM_onehot_phiState_reg_n_0_[1] ),
        .Q(phi_2_int),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "pst_p1_p2:0010,pst_p2:0100,pst_p1:0001,pst_p2_p1:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_phiState_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_phiState[3]_i_1_n_0 ),
        .D(\FSM_onehot_phiState[3]_i_2_n_0 ),
        .Q(\FSM_onehot_phiState_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \FSM_onehot_rdState[4]_i_1 
       (.I0(\FSM_onehot_rdState_reg_n_0_[4] ),
        .I1(\FSM_onehot_rdState_reg_n_0_[1] ),
        .I2(RdDataTick),
        .I3(\FSM_onehot_rdState_reg_n_0_[0] ),
        .I4(\FSM_onehot_rdState_reg_n_0_[3] ),
        .I5(\FSM_onehot_rdState_reg_n_0_[2] ),
        .O(\FSM_onehot_rdState[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "rds_idle:00001,rds_idb:00010,rds_adl:00100,rds_adh:01000,rds_rdy:10000," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rdState_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_rdState[4]_i_1_n_0 ),
        .D(\FSM_onehot_rdState_reg_n_0_[4] ),
        .Q(\FSM_onehot_rdState_reg_n_0_[0] ),
        .S(reset));
  (* FSM_ENCODED_STATES = "rds_idle:00001,rds_idb:00010,rds_adl:00100,rds_adh:01000,rds_rdy:10000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdState_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_rdState[4]_i_1_n_0 ),
        .D(\FSM_onehot_rdState_reg_n_0_[0] ),
        .Q(\FSM_onehot_rdState_reg_n_0_[1] ),
        .R(reset));
  (* FSM_ENCODED_STATES = "rds_idle:00001,rds_idb:00010,rds_adl:00100,rds_adh:01000,rds_rdy:10000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdState_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_rdState[4]_i_1_n_0 ),
        .D(\FSM_onehot_rdState_reg_n_0_[1] ),
        .Q(\FSM_onehot_rdState_reg_n_0_[2] ),
        .R(reset));
  (* FSM_ENCODED_STATES = "rds_idle:00001,rds_idb:00010,rds_adl:00100,rds_adh:01000,rds_rdy:10000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdState_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_rdState[4]_i_1_n_0 ),
        .D(\FSM_onehot_rdState_reg_n_0_[2] ),
        .Q(\FSM_onehot_rdState_reg_n_0_[3] ),
        .R(reset));
  (* FSM_ENCODED_STATES = "rds_idle:00001,rds_idb:00010,rds_adl:00100,rds_adh:01000,rds_rdy:10000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdState_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_rdState[4]_i_1_n_0 ),
        .D(\FSM_onehot_rdState_reg_n_0_[3] ),
        .Q(\FSM_onehot_rdState_reg_n_0_[4] ),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h00E8)) 
    \FSM_sequential_fifoState[2]_i_1 
       (.I0(fifoState[2]),
        .I1(fifoState[0]),
        .I2(fifoState[1]),
        .I3(fifo_reset),
        .O(\FSM_sequential_fifoState[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "f_rd_chk:001,f_read:100,f_idle:000,f_sel:010,f_out:011" *) 
  FDRE \FSM_sequential_fifoState_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p2_edges_n_0),
        .Q(fifoState[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "f_rd_chk:001,f_read:100,f_idle:000,f_sel:010,f_out:011" *) 
  FDRE \FSM_sequential_fifoState_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(cmd_fifo_n_1),
        .Q(fifoState[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "f_rd_chk:001,f_read:100,f_idle:000,f_sel:010,f_out:011" *) 
  FDRE \FSM_sequential_fifoState_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_fifoState[2]_i_1_n_0 ),
        .Q(fifoState[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \GPIOPortRd[31]_INST_0 
       (.I0(fifoState[2]),
        .I1(fifoState[0]),
        .I2(fifoState[1]),
        .O(GPIOPortRd[18]));
  FDRE \MUX_reg[0] 
       (.C(clk),
        .CE(cmd_fifo_n_0),
        .D(cmd_fifo_n_9),
        .Q(MUX[0]),
        .R(fifo_reset));
  FDRE \MUX_reg[1] 
       (.C(clk),
        .CE(cmd_fifo_n_0),
        .D(cmd_fifo_n_8),
        .Q(MUX[1]),
        .R(fifo_reset));
  FDRE \MUX_reg[2] 
       (.C(clk),
        .CE(cmd_fifo_n_0),
        .D(cmd_fifo_n_7),
        .Q(MUX[2]),
        .R(fifo_reset));
  FDRE SEL_reg
       (.C(clk),
        .CE(1'b1),
        .D(p2_edges_n_1),
        .Q(SEL),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \__13/i_ 
       (.I0(\FSM_onehot_rdState_reg_n_0_[4] ),
        .I1(\FSM_onehot_rdState_reg_n_0_[3] ),
        .I2(\FSM_onehot_rdState_reg_n_0_[0] ),
        .I3(\FSM_onehot_rdState_reg_n_0_[2] ),
        .O(\__13/i__n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \__14/i_ 
       (.I0(\FSM_onehot_rdState_reg_n_0_[4] ),
        .I1(\FSM_onehot_rdState_reg_n_0_[1] ),
        .I2(RdDataTick),
        .I3(\FSM_onehot_rdState_reg_n_0_[0] ),
        .I4(\FSM_onehot_rdState_reg_n_0_[3] ),
        .I5(\FSM_onehot_rdState_reg_n_0_[2] ),
        .O(\__14/i__n_0 ));
  GPIOTest_GPIOInterface_0_0_sr_2B_16bit byte_2_word
       (.D(w_data),
        .DIn(DIn),
        .E(data_ena),
        .SR(reset),
        .clk(clk),
        .reset_n(reset_n));
  GPIOTest_GPIOInterface_0_0_fifo cmd_fifo
       (.ClkInTick(ClkInTick),
        .D(p_0_in),
        .E(cmd_fifo_n_0),
        .\FSM_sequential_fifoState_reg[2] (cmd_fifo_n_1),
        .GPIOPortRd(GPIOPortRd[16]),
        .GPIOPortWr(GPIOPortWr[14:0]),
        .clk(clk),
        .empty_reg_reg_0(cmd_fifo_n_18),
        .fifoState(fifoState),
        .fifo_reset(fifo_reset),
        .out_fifo_full(out_fifo_full),
        .\r_ptr_reg_reg[3]_0 ({cmd_fifo_n_7,cmd_fifo_n_8,cmd_fifo_n_9}),
        .\r_ptr_reg_reg[3]_1 ({cmd_fifo_n_10,cmd_fifo_n_11,cmd_fifo_n_12,cmd_fifo_n_13,cmd_fifo_n_14,cmd_fifo_n_15,cmd_fifo_n_16,cmd_fifo_n_17}),
        .rd(rd));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    data_ena_i_1
       (.I0(\FSM_onehot_rdState_reg_n_0_[2] ),
        .I1(\FSM_onehot_rdState_reg_n_0_[3] ),
        .I2(\FSM_onehot_rdState_reg_n_0_[0] ),
        .I3(RdDataTick),
        .I4(\FSM_onehot_rdState_reg_n_0_[1] ),
        .O(data_ena_33));
  FDRE data_ena_reg
       (.C(clk),
        .CE(1'b1),
        .D(data_ena_33),
        .Q(data_ena),
        .R(reset));
  GPIOTest_GPIOInterface_0_0_Delay dly_phi1
       (.Q(phi_1_int),
        .clk(clk),
        .phi1(phi1));
  GPIOTest_GPIOInterface_0_0_Delay_0 dly_phi2
       (.Q(phi_2_int),
        .clk(clk),
        .phi2(phi2));
  FDRE \edges_reg[0] 
       (.C(clk),
        .CE(cmd_fifo_n_0),
        .D(p_0_in[0]),
        .Q(\edges_reg_n_0_[0] ),
        .R(fifo_reset));
  FDRE \edges_reg[1] 
       (.C(clk),
        .CE(cmd_fifo_n_0),
        .D(p_0_in[1]),
        .Q(p_2_in),
        .R(fifo_reset));
  FDRE \edges_reg[2] 
       (.C(clk),
        .CE(cmd_fifo_n_0),
        .D(p_0_in[2]),
        .Q(p_0_in3_in),
        .R(fifo_reset));
  FDRE \edges_reg[3] 
       (.C(clk),
        .CE(cmd_fifo_n_0),
        .D(p_0_in[3]),
        .Q(p_0_in_0),
        .R(fifo_reset));
  FDRE #(
    .INIT(1'b0)) 
    fifo_rd_reg
       (.C(clk),
        .CE(1'b1),
        .D(cmd_fifo_n_18),
        .Q(rd),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1
       (.I0(\phi_cnt_reg_n_0_[14] ),
        .I1(\phi_cnt_reg_n_0_[15] ),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2
       (.I0(\phi_cnt_reg_n_0_[12] ),
        .I1(\phi_cnt_reg_n_0_[13] ),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_3
       (.I0(\phi_cnt_reg_n_0_[10] ),
        .I1(\phi_cnt_reg_n_0_[11] ),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_4
       (.I0(\phi_cnt_reg_n_0_[8] ),
        .I1(\phi_cnt_reg_n_0_[9] ),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_5
       (.I0(\phi_cnt_reg_n_0_[15] ),
        .I1(\phi_cnt_reg_n_0_[14] ),
        .O(i__carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_6
       (.I0(\phi_cnt_reg_n_0_[13] ),
        .I1(\phi_cnt_reg_n_0_[12] ),
        .O(i__carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_7
       (.I0(\phi_cnt_reg_n_0_[11] ),
        .I1(\phi_cnt_reg_n_0_[10] ),
        .O(i__carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_8
       (.I0(\phi_cnt_reg_n_0_[9] ),
        .I1(\phi_cnt_reg_n_0_[8] ),
        .O(i__carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_1
       (.I0(\phi_cnt_reg_n_0_[22] ),
        .I1(\phi_cnt_reg_n_0_[23] ),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_2
       (.I0(\phi_cnt_reg_n_0_[20] ),
        .I1(\phi_cnt_reg_n_0_[21] ),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_3
       (.I0(\phi_cnt_reg_n_0_[18] ),
        .I1(\phi_cnt_reg_n_0_[19] ),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_4
       (.I0(\phi_cnt_reg_n_0_[16] ),
        .I1(\phi_cnt_reg_n_0_[17] ),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_5
       (.I0(\phi_cnt_reg_n_0_[23] ),
        .I1(\phi_cnt_reg_n_0_[22] ),
        .O(i__carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_6
       (.I0(\phi_cnt_reg_n_0_[21] ),
        .I1(\phi_cnt_reg_n_0_[20] ),
        .O(i__carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_7
       (.I0(\phi_cnt_reg_n_0_[19] ),
        .I1(\phi_cnt_reg_n_0_[18] ),
        .O(i__carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_8
       (.I0(\phi_cnt_reg_n_0_[17] ),
        .I1(\phi_cnt_reg_n_0_[16] ),
        .O(i__carry__1_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__2_i_1
       (.I0(\phi_cnt_reg_n_0_[30] ),
        .I1(\phi_cnt_reg_n_0_[31] ),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_2
       (.I0(\phi_cnt_reg_n_0_[28] ),
        .I1(\phi_cnt_reg_n_0_[29] ),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_3
       (.I0(\phi_cnt_reg_n_0_[26] ),
        .I1(\phi_cnt_reg_n_0_[27] ),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_4
       (.I0(\phi_cnt_reg_n_0_[24] ),
        .I1(\phi_cnt_reg_n_0_[25] ),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_5
       (.I0(\phi_cnt_reg_n_0_[31] ),
        .I1(\phi_cnt_reg_n_0_[30] ),
        .O(i__carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_6
       (.I0(\phi_cnt_reg_n_0_[29] ),
        .I1(\phi_cnt_reg_n_0_[28] ),
        .O(i__carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_7
       (.I0(\phi_cnt_reg_n_0_[27] ),
        .I1(\phi_cnt_reg_n_0_[26] ),
        .O(i__carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_8
       (.I0(\phi_cnt_reg_n_0_[25] ),
        .I1(\phi_cnt_reg_n_0_[24] ),
        .O(i__carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1
       (.I0(\phi_cnt_reg_n_0_[6] ),
        .I1(\phi_cnt_reg_n_0_[7] ),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_2
       (.I0(\phi_cnt_reg_n_0_[4] ),
        .I1(\phi_cnt_reg_n_0_[5] ),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3
       (.I0(\phi_cnt_reg_n_0_[2] ),
        .I1(\phi_cnt_reg_n_0_[3] ),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_4
       (.I0(\phi_cnt_reg_n_0_[0] ),
        .I1(\phi_cnt_reg_n_0_[1] ),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_5
       (.I0(\phi_cnt_reg_n_0_[7] ),
        .I1(\phi_cnt_reg_n_0_[6] ),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_6
       (.I0(\phi_cnt_reg_n_0_[5] ),
        .I1(\phi_cnt_reg_n_0_[4] ),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_7
       (.I0(\phi_cnt_reg_n_0_[3] ),
        .I1(\phi_cnt_reg_n_0_[2] ),
        .O(i__carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_8
       (.I0(\phi_cnt_reg_n_0_[1] ),
        .I1(\phi_cnt_reg_n_0_[0] ),
        .O(i__carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
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
        .D(\__13/i__n_0 ),
        .Q(nen_adl),
        .S(reset));
  LUT4 #(
    .INIT(16'hFFFE)) 
    nen_ctrl0_i_2
       (.I0(\FSM_onehot_rdState_reg_n_0_[4] ),
        .I1(\FSM_onehot_rdState_reg_n_0_[2] ),
        .I2(\FSM_onehot_rdState_reg_n_0_[0] ),
        .I3(\FSM_onehot_rdState_reg_n_0_[1] ),
        .O(nen_ctrl0_i_2_n_0));
  FDSE nen_ctrl0_reg
       (.C(clk),
        .CE(1'b1),
        .D(nen_ctrl0_i_2_n_0),
        .Q(nen_ctrl0),
        .S(reset));
  FDSE nen_idb_reg
       (.C(clk),
        .CE(1'b1),
        .D(\__14/i__n_0 ),
        .Q(nen_idb),
        .S(reset));
  LUT4 #(
    .INIT(16'hEFE0)) 
    out_fifo_wr_i_1
       (.I0(\FSM_onehot_rdState_reg_n_0_[2] ),
        .I1(\FSM_onehot_rdState_reg_n_0_[4] ),
        .I2(reset_n),
        .I3(wr),
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
       (.Q(phi_1_int),
        .SR(reset),
        .clk(clk),
        .delay_reg(delay_reg));
  GPIOTest_GPIOInterface_0_0_EdgeDetect_1 p2_edges
       (.ExcTick(ExcTick),
        .\FSM_sequential_fifoState_reg[2] (p2_edges_n_0),
        .Q({phi_2_int,phi_1_int}),
        .SEL(SEL),
        .SEL_i_2_0({p_0_in_0,p_0_in3_in,p_2_in,\edges_reg_n_0_[0] }),
        .SEL_reg(p2_edges_n_1),
        .SR(reset),
        .clk(clk),
        .delay_reg(delay_reg),
        .fifoState(fifoState),
        .fifo_reset(fifo_reset));
  CARRY4 phi_cnt1_carry
       (.CI(1'b0),
        .CO({phi_cnt1_carry_n_0,phi_cnt1_carry_n_1,phi_cnt1_carry_n_2,phi_cnt1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({phi_cnt1_carry_i_1_n_0,phi_cnt1_carry_i_2_n_0,1'b0,phi_cnt1_carry_i_3_n_0}),
        .O(NLW_phi_cnt1_carry_O_UNCONNECTED[3:0]),
        .S({phi_cnt1_carry_i_4_n_0,phi_cnt1_carry_i_5_n_0,phi_cnt1_carry_i_6_n_0,phi_cnt1_carry_i_7_n_0}));
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
       (.I0(\phi_cnt_reg_n_0_[14] ),
        .I1(\phi_cnt_reg_n_0_[15] ),
        .O(phi_cnt1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry__0_i_2
       (.I0(\phi_cnt_reg_n_0_[12] ),
        .I1(\phi_cnt_reg_n_0_[13] ),
        .O(phi_cnt1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry__0_i_3
       (.I0(\phi_cnt_reg_n_0_[10] ),
        .I1(\phi_cnt_reg_n_0_[11] ),
        .O(phi_cnt1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry__0_i_4
       (.I0(\phi_cnt_reg_n_0_[8] ),
        .I1(\phi_cnt_reg_n_0_[9] ),
        .O(phi_cnt1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__0_i_5
       (.I0(\phi_cnt_reg_n_0_[15] ),
        .I1(\phi_cnt_reg_n_0_[14] ),
        .O(phi_cnt1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__0_i_6
       (.I0(\phi_cnt_reg_n_0_[13] ),
        .I1(\phi_cnt_reg_n_0_[12] ),
        .O(phi_cnt1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__0_i_7
       (.I0(\phi_cnt_reg_n_0_[11] ),
        .I1(\phi_cnt_reg_n_0_[10] ),
        .O(phi_cnt1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__0_i_8
       (.I0(\phi_cnt_reg_n_0_[9] ),
        .I1(\phi_cnt_reg_n_0_[8] ),
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
       (.I0(\phi_cnt_reg_n_0_[22] ),
        .I1(\phi_cnt_reg_n_0_[23] ),
        .O(phi_cnt1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry__1_i_2
       (.I0(\phi_cnt_reg_n_0_[20] ),
        .I1(\phi_cnt_reg_n_0_[21] ),
        .O(phi_cnt1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry__1_i_3
       (.I0(\phi_cnt_reg_n_0_[18] ),
        .I1(\phi_cnt_reg_n_0_[19] ),
        .O(phi_cnt1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry__1_i_4
       (.I0(\phi_cnt_reg_n_0_[16] ),
        .I1(\phi_cnt_reg_n_0_[17] ),
        .O(phi_cnt1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__1_i_5
       (.I0(\phi_cnt_reg_n_0_[23] ),
        .I1(\phi_cnt_reg_n_0_[22] ),
        .O(phi_cnt1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__1_i_6
       (.I0(\phi_cnt_reg_n_0_[21] ),
        .I1(\phi_cnt_reg_n_0_[20] ),
        .O(phi_cnt1_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__1_i_7
       (.I0(\phi_cnt_reg_n_0_[19] ),
        .I1(\phi_cnt_reg_n_0_[18] ),
        .O(phi_cnt1_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__1_i_8
       (.I0(\phi_cnt_reg_n_0_[17] ),
        .I1(\phi_cnt_reg_n_0_[16] ),
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
       (.I0(\phi_cnt_reg_n_0_[30] ),
        .I1(\phi_cnt_reg_n_0_[31] ),
        .O(phi_cnt1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry__2_i_2
       (.I0(\phi_cnt_reg_n_0_[28] ),
        .I1(\phi_cnt_reg_n_0_[29] ),
        .O(phi_cnt1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry__2_i_3
       (.I0(\phi_cnt_reg_n_0_[26] ),
        .I1(\phi_cnt_reg_n_0_[27] ),
        .O(phi_cnt1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry__2_i_4
       (.I0(\phi_cnt_reg_n_0_[24] ),
        .I1(\phi_cnt_reg_n_0_[25] ),
        .O(phi_cnt1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__2_i_5
       (.I0(\phi_cnt_reg_n_0_[31] ),
        .I1(\phi_cnt_reg_n_0_[30] ),
        .O(phi_cnt1_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__2_i_6
       (.I0(\phi_cnt_reg_n_0_[29] ),
        .I1(\phi_cnt_reg_n_0_[28] ),
        .O(phi_cnt1_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__2_i_7
       (.I0(\phi_cnt_reg_n_0_[27] ),
        .I1(\phi_cnt_reg_n_0_[26] ),
        .O(phi_cnt1_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry__2_i_8
       (.I0(\phi_cnt_reg_n_0_[25] ),
        .I1(\phi_cnt_reg_n_0_[24] ),
        .O(phi_cnt1_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phi_cnt1_carry_i_1
       (.I0(\phi_cnt_reg_n_0_[6] ),
        .I1(\phi_cnt_reg_n_0_[7] ),
        .O(phi_cnt1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    phi_cnt1_carry_i_2
       (.I0(\phi_cnt_reg_n_0_[5] ),
        .I1(\phi_cnt_reg_n_0_[4] ),
        .O(phi_cnt1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    phi_cnt1_carry_i_3
       (.I0(\phi_cnt_reg_n_0_[0] ),
        .I1(\phi_cnt_reg_n_0_[1] ),
        .O(phi_cnt1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phi_cnt1_carry_i_4
       (.I0(\phi_cnt_reg_n_0_[7] ),
        .I1(\phi_cnt_reg_n_0_[6] ),
        .O(phi_cnt1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    phi_cnt1_carry_i_5
       (.I0(\phi_cnt_reg_n_0_[5] ),
        .I1(\phi_cnt_reg_n_0_[4] ),
        .O(phi_cnt1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    phi_cnt1_carry_i_6
       (.I0(\phi_cnt_reg_n_0_[3] ),
        .I1(\phi_cnt_reg_n_0_[2] ),
        .O(phi_cnt1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    phi_cnt1_carry_i_7
       (.I0(\phi_cnt_reg_n_0_[1] ),
        .I1(\phi_cnt_reg_n_0_[0] ),
        .O(phi_cnt1_carry_i_7_n_0));
  CARRY4 \phi_cnt1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\phi_cnt1_inferred__0/i__carry_n_0 ,\phi_cnt1_inferred__0/i__carry_n_1 ,\phi_cnt1_inferred__0/i__carry_n_2 ,\phi_cnt1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_phi_cnt1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
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
  LUT6 #(
    .INIT(64'h0155015501550101)) 
    \phi_cnt[0]_i_1 
       (.I0(\phi_cnt_reg_n_0_[0] ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[0]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[10]_i_1 
       (.I0(\phi_cnt_reg[12]_i_2_n_6 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[10]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[11]_i_1 
       (.I0(\phi_cnt_reg[12]_i_2_n_5 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[11]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[12]_i_1 
       (.I0(\phi_cnt_reg[12]_i_2_n_4 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[12]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[13]_i_1 
       (.I0(\phi_cnt_reg[16]_i_2_n_7 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[13]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[14]_i_1 
       (.I0(\phi_cnt_reg[16]_i_2_n_6 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[14]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[15]_i_1 
       (.I0(\phi_cnt_reg[16]_i_2_n_5 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[15]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[16]_i_1 
       (.I0(\phi_cnt_reg[16]_i_2_n_4 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[16]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[17]_i_1 
       (.I0(\phi_cnt_reg[20]_i_2_n_7 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[17]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[18]_i_1 
       (.I0(\phi_cnt_reg[20]_i_2_n_6 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[18]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[19]_i_1 
       (.I0(\phi_cnt_reg[20]_i_2_n_5 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[19]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[1]_i_1 
       (.I0(\phi_cnt_reg[4]_i_2_n_7 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[1]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[20]_i_1 
       (.I0(\phi_cnt_reg[20]_i_2_n_4 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[20]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[21]_i_1 
       (.I0(\phi_cnt_reg[24]_i_2_n_7 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[21]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[22]_i_1 
       (.I0(\phi_cnt_reg[24]_i_2_n_6 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[22]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[23]_i_1 
       (.I0(\phi_cnt_reg[24]_i_2_n_5 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[23]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[24]_i_1 
       (.I0(\phi_cnt_reg[24]_i_2_n_4 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[24]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[25]_i_1 
       (.I0(\phi_cnt_reg[28]_i_2_n_7 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[25]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[26]_i_1 
       (.I0(\phi_cnt_reg[28]_i_2_n_6 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[26]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[27]_i_1 
       (.I0(\phi_cnt_reg[28]_i_2_n_5 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[27]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[28]_i_1 
       (.I0(\phi_cnt_reg[28]_i_2_n_4 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[28]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[29]_i_1 
       (.I0(\phi_cnt_reg[31]_i_2_n_7 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[29]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[2]_i_1 
       (.I0(\phi_cnt_reg[4]_i_2_n_6 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[2]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[30]_i_1 
       (.I0(\phi_cnt_reg[31]_i_2_n_6 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[30]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[31]_i_1 
       (.I0(\phi_cnt_reg[31]_i_2_n_5 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[31]));
  LUT2 #(
    .INIT(4'h1)) 
    \phi_cnt[31]_i_3 
       (.I0(\FSM_onehot_phiState_reg_n_0_[1] ),
        .I1(\FSM_onehot_phiState_reg_n_0_[3] ),
        .O(\phi_cnt[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[3]_i_1 
       (.I0(\phi_cnt_reg[4]_i_2_n_5 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[3]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[4]_i_1 
       (.I0(\phi_cnt_reg[4]_i_2_n_4 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[4]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[5]_i_1 
       (.I0(\phi_cnt_reg[8]_i_2_n_7 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[5]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[6]_i_1 
       (.I0(\phi_cnt_reg[8]_i_2_n_6 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[6]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[7]_i_1 
       (.I0(\phi_cnt_reg[8]_i_2_n_5 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[7]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[8]_i_1 
       (.I0(\phi_cnt_reg[8]_i_2_n_4 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[8]));
  LUT6 #(
    .INIT(64'h02AA02AA02AA0202)) 
    \phi_cnt[9]_i_1 
       (.I0(\phi_cnt_reg[12]_i_2_n_7 ),
        .I1(\phi_cnt1_inferred__0/i__carry__2_n_0 ),
        .I2(\phi_cnt[31]_i_3_n_0 ),
        .I3(phi_cnt1_carry__2_n_0),
        .I4(phi_2_int),
        .I5(phi_1_int),
        .O(phi_cnt[9]));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[0]),
        .Q(\phi_cnt_reg_n_0_[0] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[10]),
        .Q(\phi_cnt_reg_n_0_[10] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[11]),
        .Q(\phi_cnt_reg_n_0_[11] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[12]),
        .Q(\phi_cnt_reg_n_0_[12] ),
        .R(reset));
  CARRY4 \phi_cnt_reg[12]_i_2 
       (.CI(\phi_cnt_reg[8]_i_2_n_0 ),
        .CO({\phi_cnt_reg[12]_i_2_n_0 ,\phi_cnt_reg[12]_i_2_n_1 ,\phi_cnt_reg[12]_i_2_n_2 ,\phi_cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phi_cnt_reg[12]_i_2_n_4 ,\phi_cnt_reg[12]_i_2_n_5 ,\phi_cnt_reg[12]_i_2_n_6 ,\phi_cnt_reg[12]_i_2_n_7 }),
        .S({\phi_cnt_reg_n_0_[12] ,\phi_cnt_reg_n_0_[11] ,\phi_cnt_reg_n_0_[10] ,\phi_cnt_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[13]),
        .Q(\phi_cnt_reg_n_0_[13] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[14]),
        .Q(\phi_cnt_reg_n_0_[14] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[15]),
        .Q(\phi_cnt_reg_n_0_[15] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[16]),
        .Q(\phi_cnt_reg_n_0_[16] ),
        .R(reset));
  CARRY4 \phi_cnt_reg[16]_i_2 
       (.CI(\phi_cnt_reg[12]_i_2_n_0 ),
        .CO({\phi_cnt_reg[16]_i_2_n_0 ,\phi_cnt_reg[16]_i_2_n_1 ,\phi_cnt_reg[16]_i_2_n_2 ,\phi_cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phi_cnt_reg[16]_i_2_n_4 ,\phi_cnt_reg[16]_i_2_n_5 ,\phi_cnt_reg[16]_i_2_n_6 ,\phi_cnt_reg[16]_i_2_n_7 }),
        .S({\phi_cnt_reg_n_0_[16] ,\phi_cnt_reg_n_0_[15] ,\phi_cnt_reg_n_0_[14] ,\phi_cnt_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[17]),
        .Q(\phi_cnt_reg_n_0_[17] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[18]),
        .Q(\phi_cnt_reg_n_0_[18] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[19]),
        .Q(\phi_cnt_reg_n_0_[19] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[1]),
        .Q(\phi_cnt_reg_n_0_[1] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[20]),
        .Q(\phi_cnt_reg_n_0_[20] ),
        .R(reset));
  CARRY4 \phi_cnt_reg[20]_i_2 
       (.CI(\phi_cnt_reg[16]_i_2_n_0 ),
        .CO({\phi_cnt_reg[20]_i_2_n_0 ,\phi_cnt_reg[20]_i_2_n_1 ,\phi_cnt_reg[20]_i_2_n_2 ,\phi_cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phi_cnt_reg[20]_i_2_n_4 ,\phi_cnt_reg[20]_i_2_n_5 ,\phi_cnt_reg[20]_i_2_n_6 ,\phi_cnt_reg[20]_i_2_n_7 }),
        .S({\phi_cnt_reg_n_0_[20] ,\phi_cnt_reg_n_0_[19] ,\phi_cnt_reg_n_0_[18] ,\phi_cnt_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[21]),
        .Q(\phi_cnt_reg_n_0_[21] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[22]),
        .Q(\phi_cnt_reg_n_0_[22] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[23]),
        .Q(\phi_cnt_reg_n_0_[23] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[24]),
        .Q(\phi_cnt_reg_n_0_[24] ),
        .R(reset));
  CARRY4 \phi_cnt_reg[24]_i_2 
       (.CI(\phi_cnt_reg[20]_i_2_n_0 ),
        .CO({\phi_cnt_reg[24]_i_2_n_0 ,\phi_cnt_reg[24]_i_2_n_1 ,\phi_cnt_reg[24]_i_2_n_2 ,\phi_cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phi_cnt_reg[24]_i_2_n_4 ,\phi_cnt_reg[24]_i_2_n_5 ,\phi_cnt_reg[24]_i_2_n_6 ,\phi_cnt_reg[24]_i_2_n_7 }),
        .S({\phi_cnt_reg_n_0_[24] ,\phi_cnt_reg_n_0_[23] ,\phi_cnt_reg_n_0_[22] ,\phi_cnt_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[25]),
        .Q(\phi_cnt_reg_n_0_[25] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[26]),
        .Q(\phi_cnt_reg_n_0_[26] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[27]),
        .Q(\phi_cnt_reg_n_0_[27] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[28]),
        .Q(\phi_cnt_reg_n_0_[28] ),
        .R(reset));
  CARRY4 \phi_cnt_reg[28]_i_2 
       (.CI(\phi_cnt_reg[24]_i_2_n_0 ),
        .CO({\phi_cnt_reg[28]_i_2_n_0 ,\phi_cnt_reg[28]_i_2_n_1 ,\phi_cnt_reg[28]_i_2_n_2 ,\phi_cnt_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phi_cnt_reg[28]_i_2_n_4 ,\phi_cnt_reg[28]_i_2_n_5 ,\phi_cnt_reg[28]_i_2_n_6 ,\phi_cnt_reg[28]_i_2_n_7 }),
        .S({\phi_cnt_reg_n_0_[28] ,\phi_cnt_reg_n_0_[27] ,\phi_cnt_reg_n_0_[26] ,\phi_cnt_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[29]),
        .Q(\phi_cnt_reg_n_0_[29] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[2]),
        .Q(\phi_cnt_reg_n_0_[2] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[30]),
        .Q(\phi_cnt_reg_n_0_[30] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[31]),
        .Q(\phi_cnt_reg_n_0_[31] ),
        .R(reset));
  CARRY4 \phi_cnt_reg[31]_i_2 
       (.CI(\phi_cnt_reg[28]_i_2_n_0 ),
        .CO({\NLW_phi_cnt_reg[31]_i_2_CO_UNCONNECTED [3:2],\phi_cnt_reg[31]_i_2_n_2 ,\phi_cnt_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_phi_cnt_reg[31]_i_2_O_UNCONNECTED [3],\phi_cnt_reg[31]_i_2_n_5 ,\phi_cnt_reg[31]_i_2_n_6 ,\phi_cnt_reg[31]_i_2_n_7 }),
        .S({1'b0,\phi_cnt_reg_n_0_[31] ,\phi_cnt_reg_n_0_[30] ,\phi_cnt_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[3]),
        .Q(\phi_cnt_reg_n_0_[3] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[4]),
        .Q(\phi_cnt_reg_n_0_[4] ),
        .R(reset));
  CARRY4 \phi_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\phi_cnt_reg[4]_i_2_n_0 ,\phi_cnt_reg[4]_i_2_n_1 ,\phi_cnt_reg[4]_i_2_n_2 ,\phi_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(\phi_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phi_cnt_reg[4]_i_2_n_4 ,\phi_cnt_reg[4]_i_2_n_5 ,\phi_cnt_reg[4]_i_2_n_6 ,\phi_cnt_reg[4]_i_2_n_7 }),
        .S({\phi_cnt_reg_n_0_[4] ,\phi_cnt_reg_n_0_[3] ,\phi_cnt_reg_n_0_[2] ,\phi_cnt_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[5]),
        .Q(\phi_cnt_reg_n_0_[5] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[6]),
        .Q(\phi_cnt_reg_n_0_[6] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[7]),
        .Q(\phi_cnt_reg_n_0_[7] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[8]),
        .Q(\phi_cnt_reg_n_0_[8] ),
        .R(reset));
  CARRY4 \phi_cnt_reg[8]_i_2 
       (.CI(\phi_cnt_reg[4]_i_2_n_0 ),
        .CO({\phi_cnt_reg[8]_i_2_n_0 ,\phi_cnt_reg[8]_i_2_n_1 ,\phi_cnt_reg[8]_i_2_n_2 ,\phi_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phi_cnt_reg[8]_i_2_n_4 ,\phi_cnt_reg[8]_i_2_n_5 ,\phi_cnt_reg[8]_i_2_n_6 ,\phi_cnt_reg[8]_i_2_n_7 }),
        .S({\phi_cnt_reg_n_0_[8] ,\phi_cnt_reg_n_0_[7] ,\phi_cnt_reg_n_0_[6] ,\phi_cnt_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \phi_cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(phi_cnt[9]),
        .Q(\phi_cnt_reg_n_0_[9] ),
        .R(reset));
  GPIOTest_GPIOInterface_0_0_fifo_2 rd_data_fifo
       (.ClkOutTick(ClkOutTick),
        .D(w_data),
        .GPIOPortRd({GPIOPortRd[17],GPIOPortRd[15:0]}),
        .GPIOPortWr(GPIOPortWr[18:17]),
        .clk(clk),
        .fifo_reset(fifo_reset),
        .out_fifo_full(out_fifo_full),
        .reset_n(reset_n),
        .wr(wr));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module GPIOTest_GPIOInterface_0_0_fifo
   (E,
    \FSM_sequential_fifoState_reg[2] ,
    GPIOPortRd,
    D,
    \r_ptr_reg_reg[3]_0 ,
    \r_ptr_reg_reg[3]_1 ,
    empty_reg_reg_0,
    clk,
    fifo_reset,
    fifoState,
    ClkInTick,
    rd,
    out_fifo_full,
    GPIOPortWr);
  output [0:0]E;
  output \FSM_sequential_fifoState_reg[2] ;
  output [0:0]GPIOPortRd;
  output [3:0]D;
  output [2:0]\r_ptr_reg_reg[3]_0 ;
  output [7:0]\r_ptr_reg_reg[3]_1 ;
  output empty_reg_reg_0;
  input clk;
  input fifo_reset;
  input [2:0]fifoState;
  input ClkInTick;
  input rd;
  input out_fifo_full;
  input [14:0]GPIOPortWr;

  wire ClkInTick;
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
  wire \DOut[7]_i_6_n_0 ;
  wire \DOut[7]_i_7_n_0 ;
  wire \DOut[7]_i_8_n_0 ;
  wire \DOut[7]_i_9_n_0 ;
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
  wire \DOut_reg[7]_i_4_n_0 ;
  wire \DOut_reg[7]_i_5_n_0 ;
  wire [0:0]E;
  wire \FSM_sequential_fifoState_reg[2] ;
  wire [0:0]GPIOPortRd;
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
  wire \MUX_reg[2]_i_2_n_0 ;
  wire \MUX_reg[2]_i_3_n_0 ;
  wire \array_reg[0]_14 ;
  wire \array_reg[10]_8 ;
  wire \array_reg[11]_1 ;
  wire \array_reg[12]_7 ;
  wire \array_reg[13]_6 ;
  wire \array_reg[14]_5 ;
  wire \array_reg[15]_4 ;
  wire \array_reg[1]_15 ;
  wire \array_reg[2]_16 ;
  wire \array_reg[3]_2 ;
  wire \array_reg[4]_13 ;
  wire \array_reg[5]_12 ;
  wire \array_reg[6]_11 ;
  wire \array_reg[7]_3 ;
  wire \array_reg[8]_10 ;
  wire \array_reg[9]_9 ;
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
  wire empty_reg_reg_0;
  wire [2:0]fifoState;
  wire fifo_empty;
  wire fifo_reset;
  wire full;
  wire full_reg_i_1_n_0;
  wire full_reg_i_2_n_0;
  wire full_reg_i_3_n_0;
  wire out_fifo_full;
  wire [3:0]plusOp;
  wire [3:0]plusOp0_in;
  wire \r_ptr_reg[2]_i_1__0_n_0 ;
  wire \r_ptr_reg[3]_i_1_n_0 ;
  wire [3:0]r_ptr_reg_reg;
  wire [2:0]\r_ptr_reg_reg[3]_0 ;
  wire [7:0]\r_ptr_reg_reg[3]_1 ;
  wire rd;
  wire \w_ptr_reg[3]_i_1_n_0 ;
  wire [3:0]w_ptr_reg_reg;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[0]_i_4 
       (.I0(\array_reg_reg[3] [0]),
        .I1(\array_reg_reg[2] [0]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[1] [0]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[0] [0]),
        .O(\DOut[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[0]_i_5 
       (.I0(\array_reg_reg[7] [0]),
        .I1(\array_reg_reg[6] [0]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[5] [0]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[4] [0]),
        .O(\DOut[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[0]_i_6 
       (.I0(\array_reg_reg[11] [0]),
        .I1(\array_reg_reg[10] [0]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[9] [0]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[8] [0]),
        .O(\DOut[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[0]_i_7 
       (.I0(\array_reg_reg[15] [0]),
        .I1(\array_reg_reg[14] [0]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[13] [0]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[12] [0]),
        .O(\DOut[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[1]_i_4 
       (.I0(\array_reg_reg[3] [1]),
        .I1(\array_reg_reg[2] [1]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[1] [1]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[0] [1]),
        .O(\DOut[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[1]_i_5 
       (.I0(\array_reg_reg[7] [1]),
        .I1(\array_reg_reg[6] [1]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[5] [1]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[4] [1]),
        .O(\DOut[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[1]_i_6 
       (.I0(\array_reg_reg[11] [1]),
        .I1(\array_reg_reg[10] [1]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[9] [1]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[8] [1]),
        .O(\DOut[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[1]_i_7 
       (.I0(\array_reg_reg[15] [1]),
        .I1(\array_reg_reg[14] [1]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[13] [1]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[12] [1]),
        .O(\DOut[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[2]_i_4 
       (.I0(\array_reg_reg[3] [2]),
        .I1(\array_reg_reg[2] [2]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[1] [2]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[0] [2]),
        .O(\DOut[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[2]_i_5 
       (.I0(\array_reg_reg[7] [2]),
        .I1(\array_reg_reg[6] [2]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[5] [2]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[4] [2]),
        .O(\DOut[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[2]_i_6 
       (.I0(\array_reg_reg[11] [2]),
        .I1(\array_reg_reg[10] [2]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[9] [2]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[8] [2]),
        .O(\DOut[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[2]_i_7 
       (.I0(\array_reg_reg[15] [2]),
        .I1(\array_reg_reg[14] [2]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[13] [2]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[12] [2]),
        .O(\DOut[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[3]_i_4 
       (.I0(\array_reg_reg[3] [3]),
        .I1(\array_reg_reg[2] [3]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[1] [3]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[0] [3]),
        .O(\DOut[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[3]_i_5 
       (.I0(\array_reg_reg[7] [3]),
        .I1(\array_reg_reg[6] [3]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[5] [3]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[4] [3]),
        .O(\DOut[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[3]_i_6 
       (.I0(\array_reg_reg[11] [3]),
        .I1(\array_reg_reg[10] [3]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[9] [3]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[8] [3]),
        .O(\DOut[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[3]_i_7 
       (.I0(\array_reg_reg[15] [3]),
        .I1(\array_reg_reg[14] [3]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[13] [3]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[12] [3]),
        .O(\DOut[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[4]_i_4 
       (.I0(\array_reg_reg[3] [4]),
        .I1(\array_reg_reg[2] [4]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[1] [4]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[0] [4]),
        .O(\DOut[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[4]_i_5 
       (.I0(\array_reg_reg[7] [4]),
        .I1(\array_reg_reg[6] [4]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[5] [4]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[4] [4]),
        .O(\DOut[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[4]_i_6 
       (.I0(\array_reg_reg[11] [4]),
        .I1(\array_reg_reg[10] [4]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[9] [4]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[8] [4]),
        .O(\DOut[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[4]_i_7 
       (.I0(\array_reg_reg[15] [4]),
        .I1(\array_reg_reg[14] [4]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[13] [4]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[12] [4]),
        .O(\DOut[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[5]_i_4 
       (.I0(\array_reg_reg[3] [5]),
        .I1(\array_reg_reg[2] [5]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[1] [5]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[0] [5]),
        .O(\DOut[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[5]_i_5 
       (.I0(\array_reg_reg[7] [5]),
        .I1(\array_reg_reg[6] [5]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[5] [5]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[4] [5]),
        .O(\DOut[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[5]_i_6 
       (.I0(\array_reg_reg[11] [5]),
        .I1(\array_reg_reg[10] [5]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[9] [5]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[8] [5]),
        .O(\DOut[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[5]_i_7 
       (.I0(\array_reg_reg[15] [5]),
        .I1(\array_reg_reg[14] [5]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[13] [5]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[12] [5]),
        .O(\DOut[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[6]_i_4 
       (.I0(\array_reg_reg[3] [6]),
        .I1(\array_reg_reg[2] [6]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[1] [6]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[0] [6]),
        .O(\DOut[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[6]_i_5 
       (.I0(\array_reg_reg[7] [6]),
        .I1(\array_reg_reg[6] [6]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[5] [6]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[4] [6]),
        .O(\DOut[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[6]_i_6 
       (.I0(\array_reg_reg[11] [6]),
        .I1(\array_reg_reg[10] [6]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[9] [6]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[8] [6]),
        .O(\DOut[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[6]_i_7 
       (.I0(\array_reg_reg[15] [6]),
        .I1(\array_reg_reg[14] [6]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[13] [6]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[12] [6]),
        .O(\DOut[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \DOut[7]_i_2 
       (.I0(fifo_empty),
        .I1(fifoState[2]),
        .I2(fifoState[1]),
        .I3(fifoState[0]),
        .O(E));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[7]_i_6 
       (.I0(\array_reg_reg[3] [7]),
        .I1(\array_reg_reg[2] [7]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[1] [7]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[0] [7]),
        .O(\DOut[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[7]_i_7 
       (.I0(\array_reg_reg[7] [7]),
        .I1(\array_reg_reg[6] [7]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[5] [7]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[4] [7]),
        .O(\DOut[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[7]_i_8 
       (.I0(\array_reg_reg[11] [7]),
        .I1(\array_reg_reg[10] [7]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[9] [7]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[8] [7]),
        .O(\DOut[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DOut[7]_i_9 
       (.I0(\array_reg_reg[15] [7]),
        .I1(\array_reg_reg[14] [7]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[13] [7]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[12] [7]),
        .O(\DOut[7]_i_9_n_0 ));
  MUXF8 \DOut_reg[0]_i_1 
       (.I0(\DOut_reg[0]_i_2_n_0 ),
        .I1(\DOut_reg[0]_i_3_n_0 ),
        .O(\r_ptr_reg_reg[3]_1 [0]),
        .S(r_ptr_reg_reg[3]));
  MUXF7 \DOut_reg[0]_i_2 
       (.I0(\DOut[0]_i_4_n_0 ),
        .I1(\DOut[0]_i_5_n_0 ),
        .O(\DOut_reg[0]_i_2_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF7 \DOut_reg[0]_i_3 
       (.I0(\DOut[0]_i_6_n_0 ),
        .I1(\DOut[0]_i_7_n_0 ),
        .O(\DOut_reg[0]_i_3_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF8 \DOut_reg[1]_i_1 
       (.I0(\DOut_reg[1]_i_2_n_0 ),
        .I1(\DOut_reg[1]_i_3_n_0 ),
        .O(\r_ptr_reg_reg[3]_1 [1]),
        .S(r_ptr_reg_reg[3]));
  MUXF7 \DOut_reg[1]_i_2 
       (.I0(\DOut[1]_i_4_n_0 ),
        .I1(\DOut[1]_i_5_n_0 ),
        .O(\DOut_reg[1]_i_2_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF7 \DOut_reg[1]_i_3 
       (.I0(\DOut[1]_i_6_n_0 ),
        .I1(\DOut[1]_i_7_n_0 ),
        .O(\DOut_reg[1]_i_3_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF8 \DOut_reg[2]_i_1 
       (.I0(\DOut_reg[2]_i_2_n_0 ),
        .I1(\DOut_reg[2]_i_3_n_0 ),
        .O(\r_ptr_reg_reg[3]_1 [2]),
        .S(r_ptr_reg_reg[3]));
  MUXF7 \DOut_reg[2]_i_2 
       (.I0(\DOut[2]_i_4_n_0 ),
        .I1(\DOut[2]_i_5_n_0 ),
        .O(\DOut_reg[2]_i_2_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF7 \DOut_reg[2]_i_3 
       (.I0(\DOut[2]_i_6_n_0 ),
        .I1(\DOut[2]_i_7_n_0 ),
        .O(\DOut_reg[2]_i_3_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF8 \DOut_reg[3]_i_1 
       (.I0(\DOut_reg[3]_i_2_n_0 ),
        .I1(\DOut_reg[3]_i_3_n_0 ),
        .O(\r_ptr_reg_reg[3]_1 [3]),
        .S(r_ptr_reg_reg[3]));
  MUXF7 \DOut_reg[3]_i_2 
       (.I0(\DOut[3]_i_4_n_0 ),
        .I1(\DOut[3]_i_5_n_0 ),
        .O(\DOut_reg[3]_i_2_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF7 \DOut_reg[3]_i_3 
       (.I0(\DOut[3]_i_6_n_0 ),
        .I1(\DOut[3]_i_7_n_0 ),
        .O(\DOut_reg[3]_i_3_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF8 \DOut_reg[4]_i_1 
       (.I0(\DOut_reg[4]_i_2_n_0 ),
        .I1(\DOut_reg[4]_i_3_n_0 ),
        .O(\r_ptr_reg_reg[3]_1 [4]),
        .S(r_ptr_reg_reg[3]));
  MUXF7 \DOut_reg[4]_i_2 
       (.I0(\DOut[4]_i_4_n_0 ),
        .I1(\DOut[4]_i_5_n_0 ),
        .O(\DOut_reg[4]_i_2_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF7 \DOut_reg[4]_i_3 
       (.I0(\DOut[4]_i_6_n_0 ),
        .I1(\DOut[4]_i_7_n_0 ),
        .O(\DOut_reg[4]_i_3_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF8 \DOut_reg[5]_i_1 
       (.I0(\DOut_reg[5]_i_2_n_0 ),
        .I1(\DOut_reg[5]_i_3_n_0 ),
        .O(\r_ptr_reg_reg[3]_1 [5]),
        .S(r_ptr_reg_reg[3]));
  MUXF7 \DOut_reg[5]_i_2 
       (.I0(\DOut[5]_i_4_n_0 ),
        .I1(\DOut[5]_i_5_n_0 ),
        .O(\DOut_reg[5]_i_2_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF7 \DOut_reg[5]_i_3 
       (.I0(\DOut[5]_i_6_n_0 ),
        .I1(\DOut[5]_i_7_n_0 ),
        .O(\DOut_reg[5]_i_3_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF8 \DOut_reg[6]_i_1 
       (.I0(\DOut_reg[6]_i_2_n_0 ),
        .I1(\DOut_reg[6]_i_3_n_0 ),
        .O(\r_ptr_reg_reg[3]_1 [6]),
        .S(r_ptr_reg_reg[3]));
  MUXF7 \DOut_reg[6]_i_2 
       (.I0(\DOut[6]_i_4_n_0 ),
        .I1(\DOut[6]_i_5_n_0 ),
        .O(\DOut_reg[6]_i_2_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF7 \DOut_reg[6]_i_3 
       (.I0(\DOut[6]_i_6_n_0 ),
        .I1(\DOut[6]_i_7_n_0 ),
        .O(\DOut_reg[6]_i_3_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF8 \DOut_reg[7]_i_3 
       (.I0(\DOut_reg[7]_i_4_n_0 ),
        .I1(\DOut_reg[7]_i_5_n_0 ),
        .O(\r_ptr_reg_reg[3]_1 [7]),
        .S(r_ptr_reg_reg[3]));
  MUXF7 \DOut_reg[7]_i_4 
       (.I0(\DOut[7]_i_6_n_0 ),
        .I1(\DOut[7]_i_7_n_0 ),
        .O(\DOut_reg[7]_i_4_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF7 \DOut_reg[7]_i_5 
       (.I0(\DOut[7]_i_8_n_0 ),
        .I1(\DOut[7]_i_9_n_0 ),
        .O(\DOut_reg[7]_i_5_n_0 ),
        .S(r_ptr_reg_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000B0B4)) 
    \FSM_sequential_fifoState[1]_i_1 
       (.I0(fifoState[2]),
        .I1(fifoState[0]),
        .I2(fifoState[1]),
        .I3(fifo_empty),
        .I4(fifo_reset),
        .O(\FSM_sequential_fifoState_reg[2] ));
  LUT2 #(
    .INIT(4'hE)) 
    \GPIOPortRd[29]_INST_0 
       (.I0(full),
        .I1(out_fifo_full),
        .O(GPIOPortRd));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[0]_i_4 
       (.I0(\array_reg_reg[3] [8]),
        .I1(\array_reg_reg[2] [8]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[1] [8]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[0] [8]),
        .O(\MUX[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[0]_i_5 
       (.I0(\array_reg_reg[7] [8]),
        .I1(\array_reg_reg[6] [8]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[5] [8]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[4] [8]),
        .O(\MUX[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[0]_i_6 
       (.I0(\array_reg_reg[11] [8]),
        .I1(\array_reg_reg[10] [8]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[9] [8]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[8] [8]),
        .O(\MUX[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[0]_i_7 
       (.I0(\array_reg_reg[15] [8]),
        .I1(\array_reg_reg[14] [8]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[13] [8]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[12] [8]),
        .O(\MUX[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[1]_i_4 
       (.I0(\array_reg_reg[3] [9]),
        .I1(\array_reg_reg[2] [9]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[1] [9]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[0] [9]),
        .O(\MUX[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[1]_i_5 
       (.I0(\array_reg_reg[7] [9]),
        .I1(\array_reg_reg[6] [9]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[5] [9]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[4] [9]),
        .O(\MUX[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[1]_i_6 
       (.I0(\array_reg_reg[11] [9]),
        .I1(\array_reg_reg[10] [9]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[9] [9]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[8] [9]),
        .O(\MUX[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[1]_i_7 
       (.I0(\array_reg_reg[15] [9]),
        .I1(\array_reg_reg[14] [9]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[13] [9]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[12] [9]),
        .O(\MUX[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[2]_i_4 
       (.I0(\array_reg_reg[3] [10]),
        .I1(\array_reg_reg[2] [10]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[1] [10]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[0] [10]),
        .O(\MUX[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[2]_i_5 
       (.I0(\array_reg_reg[7] [10]),
        .I1(\array_reg_reg[6] [10]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[5] [10]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[4] [10]),
        .O(\MUX[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[2]_i_6 
       (.I0(\array_reg_reg[11] [10]),
        .I1(\array_reg_reg[10] [10]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[9] [10]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[8] [10]),
        .O(\MUX[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \MUX[2]_i_7 
       (.I0(\array_reg_reg[15] [10]),
        .I1(\array_reg_reg[14] [10]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[13] [10]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[12] [10]),
        .O(\MUX[2]_i_7_n_0 ));
  MUXF8 \MUX_reg[0]_i_1 
       (.I0(\MUX_reg[0]_i_2_n_0 ),
        .I1(\MUX_reg[0]_i_3_n_0 ),
        .O(\r_ptr_reg_reg[3]_0 [0]),
        .S(r_ptr_reg_reg[3]));
  MUXF7 \MUX_reg[0]_i_2 
       (.I0(\MUX[0]_i_4_n_0 ),
        .I1(\MUX[0]_i_5_n_0 ),
        .O(\MUX_reg[0]_i_2_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF7 \MUX_reg[0]_i_3 
       (.I0(\MUX[0]_i_6_n_0 ),
        .I1(\MUX[0]_i_7_n_0 ),
        .O(\MUX_reg[0]_i_3_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF8 \MUX_reg[1]_i_1 
       (.I0(\MUX_reg[1]_i_2_n_0 ),
        .I1(\MUX_reg[1]_i_3_n_0 ),
        .O(\r_ptr_reg_reg[3]_0 [1]),
        .S(r_ptr_reg_reg[3]));
  MUXF7 \MUX_reg[1]_i_2 
       (.I0(\MUX[1]_i_4_n_0 ),
        .I1(\MUX[1]_i_5_n_0 ),
        .O(\MUX_reg[1]_i_2_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF7 \MUX_reg[1]_i_3 
       (.I0(\MUX[1]_i_6_n_0 ),
        .I1(\MUX[1]_i_7_n_0 ),
        .O(\MUX_reg[1]_i_3_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF8 \MUX_reg[2]_i_1 
       (.I0(\MUX_reg[2]_i_2_n_0 ),
        .I1(\MUX_reg[2]_i_3_n_0 ),
        .O(\r_ptr_reg_reg[3]_0 [2]),
        .S(r_ptr_reg_reg[3]));
  MUXF7 \MUX_reg[2]_i_2 
       (.I0(\MUX[2]_i_4_n_0 ),
        .I1(\MUX[2]_i_5_n_0 ),
        .O(\MUX_reg[2]_i_2_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF7 \MUX_reg[2]_i_3 
       (.I0(\MUX[2]_i_6_n_0 ),
        .I1(\MUX[2]_i_7_n_0 ),
        .O(\MUX_reg[2]_i_3_n_0 ),
        .S(r_ptr_reg_reg[2]));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \array_reg[0][15]_i_1 
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[2]),
        .I3(full),
        .I4(ClkInTick),
        .I5(w_ptr_reg_reg[3]),
        .O(\array_reg[0]_14 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \array_reg[10][15]_i_1 
       (.I0(w_ptr_reg_reg[2]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[0]),
        .I3(w_ptr_reg_reg[3]),
        .I4(full),
        .I5(ClkInTick),
        .O(\array_reg[10]_8 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \array_reg[11][15]_i_1 
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[2]),
        .I3(w_ptr_reg_reg[3]),
        .I4(full),
        .I5(ClkInTick),
        .O(\array_reg[11]_1 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \array_reg[12][15]_i_1 
       (.I0(w_ptr_reg_reg[2]),
        .I1(ClkInTick),
        .I2(full),
        .I3(w_ptr_reg_reg[3]),
        .I4(w_ptr_reg_reg[1]),
        .I5(w_ptr_reg_reg[0]),
        .O(\array_reg[12]_7 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \array_reg[13][15]_i_1 
       (.I0(w_ptr_reg_reg[1]),
        .I1(w_ptr_reg_reg[0]),
        .I2(w_ptr_reg_reg[2]),
        .I3(ClkInTick),
        .I4(full),
        .I5(w_ptr_reg_reg[3]),
        .O(\array_reg[13]_6 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \array_reg[14][15]_i_1 
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[2]),
        .I3(ClkInTick),
        .I4(full),
        .I5(w_ptr_reg_reg[3]),
        .O(\array_reg[14]_5 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \array_reg[15][15]_i_1 
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[2]),
        .I3(w_ptr_reg_reg[3]),
        .I4(full),
        .I5(ClkInTick),
        .O(\array_reg[15]_4 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \array_reg[1][15]_i_1 
       (.I0(w_ptr_reg_reg[2]),
        .I1(w_ptr_reg_reg[0]),
        .I2(w_ptr_reg_reg[1]),
        .I3(full),
        .I4(ClkInTick),
        .I5(w_ptr_reg_reg[3]),
        .O(\array_reg[1]_15 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \array_reg[2][15]_i_1 
       (.I0(w_ptr_reg_reg[2]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[0]),
        .I3(full),
        .I4(ClkInTick),
        .I5(w_ptr_reg_reg[3]),
        .O(\array_reg[2]_16 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \array_reg[3][15]_i_1 
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[2]),
        .I3(full),
        .I4(ClkInTick),
        .I5(w_ptr_reg_reg[3]),
        .O(\array_reg[3]_2 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \array_reg[4][15]_i_1 
       (.I0(w_ptr_reg_reg[1]),
        .I1(w_ptr_reg_reg[0]),
        .I2(w_ptr_reg_reg[2]),
        .I3(w_ptr_reg_reg[3]),
        .I4(ClkInTick),
        .I5(full),
        .O(\array_reg[4]_13 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \array_reg[5][15]_i_1 
       (.I0(w_ptr_reg_reg[1]),
        .I1(w_ptr_reg_reg[0]),
        .I2(w_ptr_reg_reg[2]),
        .I3(w_ptr_reg_reg[3]),
        .I4(ClkInTick),
        .I5(full),
        .O(\array_reg[5]_12 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \array_reg[6][15]_i_1 
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[2]),
        .I3(w_ptr_reg_reg[3]),
        .I4(ClkInTick),
        .I5(full),
        .O(\array_reg[6]_11 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \array_reg[7][15]_i_1 
       (.I0(w_ptr_reg_reg[3]),
        .I1(w_ptr_reg_reg[2]),
        .I2(w_ptr_reg_reg[1]),
        .I3(w_ptr_reg_reg[0]),
        .I4(ClkInTick),
        .I5(full),
        .O(\array_reg[7]_3 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \array_reg[8][15]_i_1 
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[2]),
        .I3(w_ptr_reg_reg[3]),
        .I4(full),
        .I5(ClkInTick),
        .O(\array_reg[8]_10 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \array_reg[9][15]_i_1 
       (.I0(w_ptr_reg_reg[2]),
        .I1(w_ptr_reg_reg[0]),
        .I2(w_ptr_reg_reg[1]),
        .I3(w_ptr_reg_reg[3]),
        .I4(full),
        .I5(ClkInTick),
        .O(\array_reg[9]_9 ));
  FDCE \array_reg_reg[0][0] 
       (.C(clk),
        .CE(\array_reg[0]_14 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[0] [0]));
  FDCE \array_reg_reg[0][10] 
       (.C(clk),
        .CE(\array_reg[0]_14 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[0] [10]));
  FDCE \array_reg_reg[0][12] 
       (.C(clk),
        .CE(\array_reg[0]_14 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[0] [12]));
  FDCE \array_reg_reg[0][13] 
       (.C(clk),
        .CE(\array_reg[0]_14 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[0] [13]));
  FDCE \array_reg_reg[0][14] 
       (.C(clk),
        .CE(\array_reg[0]_14 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[0] [14]));
  FDCE \array_reg_reg[0][15] 
       (.C(clk),
        .CE(\array_reg[0]_14 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[0] [15]));
  FDCE \array_reg_reg[0][1] 
       (.C(clk),
        .CE(\array_reg[0]_14 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[0] [1]));
  FDCE \array_reg_reg[0][2] 
       (.C(clk),
        .CE(\array_reg[0]_14 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[0] [2]));
  FDCE \array_reg_reg[0][3] 
       (.C(clk),
        .CE(\array_reg[0]_14 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[0] [3]));
  FDCE \array_reg_reg[0][4] 
       (.C(clk),
        .CE(\array_reg[0]_14 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[0] [4]));
  FDCE \array_reg_reg[0][5] 
       (.C(clk),
        .CE(\array_reg[0]_14 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[0] [5]));
  FDCE \array_reg_reg[0][6] 
       (.C(clk),
        .CE(\array_reg[0]_14 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[0] [6]));
  FDCE \array_reg_reg[0][7] 
       (.C(clk),
        .CE(\array_reg[0]_14 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[0] [7]));
  FDCE \array_reg_reg[0][8] 
       (.C(clk),
        .CE(\array_reg[0]_14 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[0] [8]));
  FDCE \array_reg_reg[0][9] 
       (.C(clk),
        .CE(\array_reg[0]_14 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[0] [9]));
  FDCE \array_reg_reg[10][0] 
       (.C(clk),
        .CE(\array_reg[10]_8 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[10] [0]));
  FDCE \array_reg_reg[10][10] 
       (.C(clk),
        .CE(\array_reg[10]_8 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[10] [10]));
  FDCE \array_reg_reg[10][12] 
       (.C(clk),
        .CE(\array_reg[10]_8 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[10] [12]));
  FDCE \array_reg_reg[10][13] 
       (.C(clk),
        .CE(\array_reg[10]_8 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[10] [13]));
  FDCE \array_reg_reg[10][14] 
       (.C(clk),
        .CE(\array_reg[10]_8 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[10] [14]));
  FDCE \array_reg_reg[10][15] 
       (.C(clk),
        .CE(\array_reg[10]_8 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[10] [15]));
  FDCE \array_reg_reg[10][1] 
       (.C(clk),
        .CE(\array_reg[10]_8 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[10] [1]));
  FDCE \array_reg_reg[10][2] 
       (.C(clk),
        .CE(\array_reg[10]_8 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[10] [2]));
  FDCE \array_reg_reg[10][3] 
       (.C(clk),
        .CE(\array_reg[10]_8 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[10] [3]));
  FDCE \array_reg_reg[10][4] 
       (.C(clk),
        .CE(\array_reg[10]_8 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[10] [4]));
  FDCE \array_reg_reg[10][5] 
       (.C(clk),
        .CE(\array_reg[10]_8 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[10] [5]));
  FDCE \array_reg_reg[10][6] 
       (.C(clk),
        .CE(\array_reg[10]_8 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[10] [6]));
  FDCE \array_reg_reg[10][7] 
       (.C(clk),
        .CE(\array_reg[10]_8 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[10] [7]));
  FDCE \array_reg_reg[10][8] 
       (.C(clk),
        .CE(\array_reg[10]_8 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[10] [8]));
  FDCE \array_reg_reg[10][9] 
       (.C(clk),
        .CE(\array_reg[10]_8 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[10] [9]));
  FDCE \array_reg_reg[11][0] 
       (.C(clk),
        .CE(\array_reg[11]_1 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[11] [0]));
  FDCE \array_reg_reg[11][10] 
       (.C(clk),
        .CE(\array_reg[11]_1 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[11] [10]));
  FDCE \array_reg_reg[11][12] 
       (.C(clk),
        .CE(\array_reg[11]_1 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[11] [12]));
  FDCE \array_reg_reg[11][13] 
       (.C(clk),
        .CE(\array_reg[11]_1 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[11] [13]));
  FDCE \array_reg_reg[11][14] 
       (.C(clk),
        .CE(\array_reg[11]_1 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[11] [14]));
  FDCE \array_reg_reg[11][15] 
       (.C(clk),
        .CE(\array_reg[11]_1 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[11] [15]));
  FDCE \array_reg_reg[11][1] 
       (.C(clk),
        .CE(\array_reg[11]_1 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[11] [1]));
  FDCE \array_reg_reg[11][2] 
       (.C(clk),
        .CE(\array_reg[11]_1 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[11] [2]));
  FDCE \array_reg_reg[11][3] 
       (.C(clk),
        .CE(\array_reg[11]_1 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[11] [3]));
  FDCE \array_reg_reg[11][4] 
       (.C(clk),
        .CE(\array_reg[11]_1 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[11] [4]));
  FDCE \array_reg_reg[11][5] 
       (.C(clk),
        .CE(\array_reg[11]_1 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[11] [5]));
  FDCE \array_reg_reg[11][6] 
       (.C(clk),
        .CE(\array_reg[11]_1 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[11] [6]));
  FDCE \array_reg_reg[11][7] 
       (.C(clk),
        .CE(\array_reg[11]_1 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[11] [7]));
  FDCE \array_reg_reg[11][8] 
       (.C(clk),
        .CE(\array_reg[11]_1 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[11] [8]));
  FDCE \array_reg_reg[11][9] 
       (.C(clk),
        .CE(\array_reg[11]_1 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[11] [9]));
  FDCE \array_reg_reg[12][0] 
       (.C(clk),
        .CE(\array_reg[12]_7 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[12] [0]));
  FDCE \array_reg_reg[12][10] 
       (.C(clk),
        .CE(\array_reg[12]_7 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[12] [10]));
  FDCE \array_reg_reg[12][12] 
       (.C(clk),
        .CE(\array_reg[12]_7 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[12] [12]));
  FDCE \array_reg_reg[12][13] 
       (.C(clk),
        .CE(\array_reg[12]_7 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[12] [13]));
  FDCE \array_reg_reg[12][14] 
       (.C(clk),
        .CE(\array_reg[12]_7 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[12] [14]));
  FDCE \array_reg_reg[12][15] 
       (.C(clk),
        .CE(\array_reg[12]_7 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[12] [15]));
  FDCE \array_reg_reg[12][1] 
       (.C(clk),
        .CE(\array_reg[12]_7 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[12] [1]));
  FDCE \array_reg_reg[12][2] 
       (.C(clk),
        .CE(\array_reg[12]_7 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[12] [2]));
  FDCE \array_reg_reg[12][3] 
       (.C(clk),
        .CE(\array_reg[12]_7 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[12] [3]));
  FDCE \array_reg_reg[12][4] 
       (.C(clk),
        .CE(\array_reg[12]_7 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[12] [4]));
  FDCE \array_reg_reg[12][5] 
       (.C(clk),
        .CE(\array_reg[12]_7 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[12] [5]));
  FDCE \array_reg_reg[12][6] 
       (.C(clk),
        .CE(\array_reg[12]_7 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[12] [6]));
  FDCE \array_reg_reg[12][7] 
       (.C(clk),
        .CE(\array_reg[12]_7 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[12] [7]));
  FDCE \array_reg_reg[12][8] 
       (.C(clk),
        .CE(\array_reg[12]_7 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[12] [8]));
  FDCE \array_reg_reg[12][9] 
       (.C(clk),
        .CE(\array_reg[12]_7 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[12] [9]));
  FDCE \array_reg_reg[13][0] 
       (.C(clk),
        .CE(\array_reg[13]_6 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[13] [0]));
  FDCE \array_reg_reg[13][10] 
       (.C(clk),
        .CE(\array_reg[13]_6 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[13] [10]));
  FDCE \array_reg_reg[13][12] 
       (.C(clk),
        .CE(\array_reg[13]_6 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[13] [12]));
  FDCE \array_reg_reg[13][13] 
       (.C(clk),
        .CE(\array_reg[13]_6 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[13] [13]));
  FDCE \array_reg_reg[13][14] 
       (.C(clk),
        .CE(\array_reg[13]_6 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[13] [14]));
  FDCE \array_reg_reg[13][15] 
       (.C(clk),
        .CE(\array_reg[13]_6 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[13] [15]));
  FDCE \array_reg_reg[13][1] 
       (.C(clk),
        .CE(\array_reg[13]_6 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[13] [1]));
  FDCE \array_reg_reg[13][2] 
       (.C(clk),
        .CE(\array_reg[13]_6 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[13] [2]));
  FDCE \array_reg_reg[13][3] 
       (.C(clk),
        .CE(\array_reg[13]_6 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[13] [3]));
  FDCE \array_reg_reg[13][4] 
       (.C(clk),
        .CE(\array_reg[13]_6 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[13] [4]));
  FDCE \array_reg_reg[13][5] 
       (.C(clk),
        .CE(\array_reg[13]_6 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[13] [5]));
  FDCE \array_reg_reg[13][6] 
       (.C(clk),
        .CE(\array_reg[13]_6 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[13] [6]));
  FDCE \array_reg_reg[13][7] 
       (.C(clk),
        .CE(\array_reg[13]_6 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[13] [7]));
  FDCE \array_reg_reg[13][8] 
       (.C(clk),
        .CE(\array_reg[13]_6 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[13] [8]));
  FDCE \array_reg_reg[13][9] 
       (.C(clk),
        .CE(\array_reg[13]_6 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[13] [9]));
  FDCE \array_reg_reg[14][0] 
       (.C(clk),
        .CE(\array_reg[14]_5 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[14] [0]));
  FDCE \array_reg_reg[14][10] 
       (.C(clk),
        .CE(\array_reg[14]_5 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[14] [10]));
  FDCE \array_reg_reg[14][12] 
       (.C(clk),
        .CE(\array_reg[14]_5 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[14] [12]));
  FDCE \array_reg_reg[14][13] 
       (.C(clk),
        .CE(\array_reg[14]_5 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[14] [13]));
  FDCE \array_reg_reg[14][14] 
       (.C(clk),
        .CE(\array_reg[14]_5 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[14] [14]));
  FDCE \array_reg_reg[14][15] 
       (.C(clk),
        .CE(\array_reg[14]_5 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[14] [15]));
  FDCE \array_reg_reg[14][1] 
       (.C(clk),
        .CE(\array_reg[14]_5 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[14] [1]));
  FDCE \array_reg_reg[14][2] 
       (.C(clk),
        .CE(\array_reg[14]_5 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[14] [2]));
  FDCE \array_reg_reg[14][3] 
       (.C(clk),
        .CE(\array_reg[14]_5 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[14] [3]));
  FDCE \array_reg_reg[14][4] 
       (.C(clk),
        .CE(\array_reg[14]_5 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[14] [4]));
  FDCE \array_reg_reg[14][5] 
       (.C(clk),
        .CE(\array_reg[14]_5 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[14] [5]));
  FDCE \array_reg_reg[14][6] 
       (.C(clk),
        .CE(\array_reg[14]_5 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[14] [6]));
  FDCE \array_reg_reg[14][7] 
       (.C(clk),
        .CE(\array_reg[14]_5 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[14] [7]));
  FDCE \array_reg_reg[14][8] 
       (.C(clk),
        .CE(\array_reg[14]_5 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[14] [8]));
  FDCE \array_reg_reg[14][9] 
       (.C(clk),
        .CE(\array_reg[14]_5 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[14] [9]));
  FDCE \array_reg_reg[15][0] 
       (.C(clk),
        .CE(\array_reg[15]_4 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[15] [0]));
  FDCE \array_reg_reg[15][10] 
       (.C(clk),
        .CE(\array_reg[15]_4 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[15] [10]));
  FDCE \array_reg_reg[15][12] 
       (.C(clk),
        .CE(\array_reg[15]_4 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[15] [12]));
  FDCE \array_reg_reg[15][13] 
       (.C(clk),
        .CE(\array_reg[15]_4 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[15] [13]));
  FDCE \array_reg_reg[15][14] 
       (.C(clk),
        .CE(\array_reg[15]_4 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[15] [14]));
  FDCE \array_reg_reg[15][15] 
       (.C(clk),
        .CE(\array_reg[15]_4 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[15] [15]));
  FDCE \array_reg_reg[15][1] 
       (.C(clk),
        .CE(\array_reg[15]_4 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[15] [1]));
  FDCE \array_reg_reg[15][2] 
       (.C(clk),
        .CE(\array_reg[15]_4 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[15] [2]));
  FDCE \array_reg_reg[15][3] 
       (.C(clk),
        .CE(\array_reg[15]_4 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[15] [3]));
  FDCE \array_reg_reg[15][4] 
       (.C(clk),
        .CE(\array_reg[15]_4 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[15] [4]));
  FDCE \array_reg_reg[15][5] 
       (.C(clk),
        .CE(\array_reg[15]_4 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[15] [5]));
  FDCE \array_reg_reg[15][6] 
       (.C(clk),
        .CE(\array_reg[15]_4 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[15] [6]));
  FDCE \array_reg_reg[15][7] 
       (.C(clk),
        .CE(\array_reg[15]_4 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[15] [7]));
  FDCE \array_reg_reg[15][8] 
       (.C(clk),
        .CE(\array_reg[15]_4 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[15] [8]));
  FDCE \array_reg_reg[15][9] 
       (.C(clk),
        .CE(\array_reg[15]_4 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[15] [9]));
  FDCE \array_reg_reg[1][0] 
       (.C(clk),
        .CE(\array_reg[1]_15 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[1] [0]));
  FDCE \array_reg_reg[1][10] 
       (.C(clk),
        .CE(\array_reg[1]_15 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[1] [10]));
  FDCE \array_reg_reg[1][12] 
       (.C(clk),
        .CE(\array_reg[1]_15 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[1] [12]));
  FDCE \array_reg_reg[1][13] 
       (.C(clk),
        .CE(\array_reg[1]_15 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[1] [13]));
  FDCE \array_reg_reg[1][14] 
       (.C(clk),
        .CE(\array_reg[1]_15 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[1] [14]));
  FDCE \array_reg_reg[1][15] 
       (.C(clk),
        .CE(\array_reg[1]_15 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[1] [15]));
  FDCE \array_reg_reg[1][1] 
       (.C(clk),
        .CE(\array_reg[1]_15 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[1] [1]));
  FDCE \array_reg_reg[1][2] 
       (.C(clk),
        .CE(\array_reg[1]_15 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[1] [2]));
  FDCE \array_reg_reg[1][3] 
       (.C(clk),
        .CE(\array_reg[1]_15 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[1] [3]));
  FDCE \array_reg_reg[1][4] 
       (.C(clk),
        .CE(\array_reg[1]_15 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[1] [4]));
  FDCE \array_reg_reg[1][5] 
       (.C(clk),
        .CE(\array_reg[1]_15 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[1] [5]));
  FDCE \array_reg_reg[1][6] 
       (.C(clk),
        .CE(\array_reg[1]_15 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[1] [6]));
  FDCE \array_reg_reg[1][7] 
       (.C(clk),
        .CE(\array_reg[1]_15 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[1] [7]));
  FDCE \array_reg_reg[1][8] 
       (.C(clk),
        .CE(\array_reg[1]_15 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[1] [8]));
  FDCE \array_reg_reg[1][9] 
       (.C(clk),
        .CE(\array_reg[1]_15 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[1] [9]));
  FDCE \array_reg_reg[2][0] 
       (.C(clk),
        .CE(\array_reg[2]_16 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[2] [0]));
  FDCE \array_reg_reg[2][10] 
       (.C(clk),
        .CE(\array_reg[2]_16 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[2] [10]));
  FDCE \array_reg_reg[2][12] 
       (.C(clk),
        .CE(\array_reg[2]_16 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[2] [12]));
  FDCE \array_reg_reg[2][13] 
       (.C(clk),
        .CE(\array_reg[2]_16 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[2] [13]));
  FDCE \array_reg_reg[2][14] 
       (.C(clk),
        .CE(\array_reg[2]_16 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[2] [14]));
  FDCE \array_reg_reg[2][15] 
       (.C(clk),
        .CE(\array_reg[2]_16 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[2] [15]));
  FDCE \array_reg_reg[2][1] 
       (.C(clk),
        .CE(\array_reg[2]_16 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[2] [1]));
  FDCE \array_reg_reg[2][2] 
       (.C(clk),
        .CE(\array_reg[2]_16 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[2] [2]));
  FDCE \array_reg_reg[2][3] 
       (.C(clk),
        .CE(\array_reg[2]_16 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[2] [3]));
  FDCE \array_reg_reg[2][4] 
       (.C(clk),
        .CE(\array_reg[2]_16 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[2] [4]));
  FDCE \array_reg_reg[2][5] 
       (.C(clk),
        .CE(\array_reg[2]_16 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[2] [5]));
  FDCE \array_reg_reg[2][6] 
       (.C(clk),
        .CE(\array_reg[2]_16 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[2] [6]));
  FDCE \array_reg_reg[2][7] 
       (.C(clk),
        .CE(\array_reg[2]_16 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[2] [7]));
  FDCE \array_reg_reg[2][8] 
       (.C(clk),
        .CE(\array_reg[2]_16 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[2] [8]));
  FDCE \array_reg_reg[2][9] 
       (.C(clk),
        .CE(\array_reg[2]_16 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[2] [9]));
  FDCE \array_reg_reg[3][0] 
       (.C(clk),
        .CE(\array_reg[3]_2 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[3] [0]));
  FDCE \array_reg_reg[3][10] 
       (.C(clk),
        .CE(\array_reg[3]_2 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[3] [10]));
  FDCE \array_reg_reg[3][12] 
       (.C(clk),
        .CE(\array_reg[3]_2 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[3] [12]));
  FDCE \array_reg_reg[3][13] 
       (.C(clk),
        .CE(\array_reg[3]_2 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[3] [13]));
  FDCE \array_reg_reg[3][14] 
       (.C(clk),
        .CE(\array_reg[3]_2 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[3] [14]));
  FDCE \array_reg_reg[3][15] 
       (.C(clk),
        .CE(\array_reg[3]_2 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[3] [15]));
  FDCE \array_reg_reg[3][1] 
       (.C(clk),
        .CE(\array_reg[3]_2 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[3] [1]));
  FDCE \array_reg_reg[3][2] 
       (.C(clk),
        .CE(\array_reg[3]_2 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[3] [2]));
  FDCE \array_reg_reg[3][3] 
       (.C(clk),
        .CE(\array_reg[3]_2 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[3] [3]));
  FDCE \array_reg_reg[3][4] 
       (.C(clk),
        .CE(\array_reg[3]_2 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[3] [4]));
  FDCE \array_reg_reg[3][5] 
       (.C(clk),
        .CE(\array_reg[3]_2 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[3] [5]));
  FDCE \array_reg_reg[3][6] 
       (.C(clk),
        .CE(\array_reg[3]_2 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[3] [6]));
  FDCE \array_reg_reg[3][7] 
       (.C(clk),
        .CE(\array_reg[3]_2 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[3] [7]));
  FDCE \array_reg_reg[3][8] 
       (.C(clk),
        .CE(\array_reg[3]_2 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[3] [8]));
  FDCE \array_reg_reg[3][9] 
       (.C(clk),
        .CE(\array_reg[3]_2 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[3] [9]));
  FDCE \array_reg_reg[4][0] 
       (.C(clk),
        .CE(\array_reg[4]_13 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[4] [0]));
  FDCE \array_reg_reg[4][10] 
       (.C(clk),
        .CE(\array_reg[4]_13 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[4] [10]));
  FDCE \array_reg_reg[4][12] 
       (.C(clk),
        .CE(\array_reg[4]_13 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[4] [12]));
  FDCE \array_reg_reg[4][13] 
       (.C(clk),
        .CE(\array_reg[4]_13 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[4] [13]));
  FDCE \array_reg_reg[4][14] 
       (.C(clk),
        .CE(\array_reg[4]_13 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[4] [14]));
  FDCE \array_reg_reg[4][15] 
       (.C(clk),
        .CE(\array_reg[4]_13 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[4] [15]));
  FDCE \array_reg_reg[4][1] 
       (.C(clk),
        .CE(\array_reg[4]_13 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[4] [1]));
  FDCE \array_reg_reg[4][2] 
       (.C(clk),
        .CE(\array_reg[4]_13 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[4] [2]));
  FDCE \array_reg_reg[4][3] 
       (.C(clk),
        .CE(\array_reg[4]_13 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[4] [3]));
  FDCE \array_reg_reg[4][4] 
       (.C(clk),
        .CE(\array_reg[4]_13 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[4] [4]));
  FDCE \array_reg_reg[4][5] 
       (.C(clk),
        .CE(\array_reg[4]_13 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[4] [5]));
  FDCE \array_reg_reg[4][6] 
       (.C(clk),
        .CE(\array_reg[4]_13 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[4] [6]));
  FDCE \array_reg_reg[4][7] 
       (.C(clk),
        .CE(\array_reg[4]_13 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[4] [7]));
  FDCE \array_reg_reg[4][8] 
       (.C(clk),
        .CE(\array_reg[4]_13 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[4] [8]));
  FDCE \array_reg_reg[4][9] 
       (.C(clk),
        .CE(\array_reg[4]_13 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[4] [9]));
  FDCE \array_reg_reg[5][0] 
       (.C(clk),
        .CE(\array_reg[5]_12 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[5] [0]));
  FDCE \array_reg_reg[5][10] 
       (.C(clk),
        .CE(\array_reg[5]_12 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[5] [10]));
  FDCE \array_reg_reg[5][12] 
       (.C(clk),
        .CE(\array_reg[5]_12 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[5] [12]));
  FDCE \array_reg_reg[5][13] 
       (.C(clk),
        .CE(\array_reg[5]_12 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[5] [13]));
  FDCE \array_reg_reg[5][14] 
       (.C(clk),
        .CE(\array_reg[5]_12 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[5] [14]));
  FDCE \array_reg_reg[5][15] 
       (.C(clk),
        .CE(\array_reg[5]_12 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[5] [15]));
  FDCE \array_reg_reg[5][1] 
       (.C(clk),
        .CE(\array_reg[5]_12 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[5] [1]));
  FDCE \array_reg_reg[5][2] 
       (.C(clk),
        .CE(\array_reg[5]_12 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[5] [2]));
  FDCE \array_reg_reg[5][3] 
       (.C(clk),
        .CE(\array_reg[5]_12 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[5] [3]));
  FDCE \array_reg_reg[5][4] 
       (.C(clk),
        .CE(\array_reg[5]_12 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[5] [4]));
  FDCE \array_reg_reg[5][5] 
       (.C(clk),
        .CE(\array_reg[5]_12 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[5] [5]));
  FDCE \array_reg_reg[5][6] 
       (.C(clk),
        .CE(\array_reg[5]_12 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[5] [6]));
  FDCE \array_reg_reg[5][7] 
       (.C(clk),
        .CE(\array_reg[5]_12 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[5] [7]));
  FDCE \array_reg_reg[5][8] 
       (.C(clk),
        .CE(\array_reg[5]_12 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[5] [8]));
  FDCE \array_reg_reg[5][9] 
       (.C(clk),
        .CE(\array_reg[5]_12 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[5] [9]));
  FDCE \array_reg_reg[6][0] 
       (.C(clk),
        .CE(\array_reg[6]_11 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[6] [0]));
  FDCE \array_reg_reg[6][10] 
       (.C(clk),
        .CE(\array_reg[6]_11 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[6] [10]));
  FDCE \array_reg_reg[6][12] 
       (.C(clk),
        .CE(\array_reg[6]_11 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[6] [12]));
  FDCE \array_reg_reg[6][13] 
       (.C(clk),
        .CE(\array_reg[6]_11 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[6] [13]));
  FDCE \array_reg_reg[6][14] 
       (.C(clk),
        .CE(\array_reg[6]_11 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[6] [14]));
  FDCE \array_reg_reg[6][15] 
       (.C(clk),
        .CE(\array_reg[6]_11 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[6] [15]));
  FDCE \array_reg_reg[6][1] 
       (.C(clk),
        .CE(\array_reg[6]_11 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[6] [1]));
  FDCE \array_reg_reg[6][2] 
       (.C(clk),
        .CE(\array_reg[6]_11 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[6] [2]));
  FDCE \array_reg_reg[6][3] 
       (.C(clk),
        .CE(\array_reg[6]_11 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[6] [3]));
  FDCE \array_reg_reg[6][4] 
       (.C(clk),
        .CE(\array_reg[6]_11 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[6] [4]));
  FDCE \array_reg_reg[6][5] 
       (.C(clk),
        .CE(\array_reg[6]_11 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[6] [5]));
  FDCE \array_reg_reg[6][6] 
       (.C(clk),
        .CE(\array_reg[6]_11 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[6] [6]));
  FDCE \array_reg_reg[6][7] 
       (.C(clk),
        .CE(\array_reg[6]_11 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[6] [7]));
  FDCE \array_reg_reg[6][8] 
       (.C(clk),
        .CE(\array_reg[6]_11 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[6] [8]));
  FDCE \array_reg_reg[6][9] 
       (.C(clk),
        .CE(\array_reg[6]_11 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[6] [9]));
  FDCE \array_reg_reg[7][0] 
       (.C(clk),
        .CE(\array_reg[7]_3 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[7] [0]));
  FDCE \array_reg_reg[7][10] 
       (.C(clk),
        .CE(\array_reg[7]_3 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[7] [10]));
  FDCE \array_reg_reg[7][12] 
       (.C(clk),
        .CE(\array_reg[7]_3 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[7] [12]));
  FDCE \array_reg_reg[7][13] 
       (.C(clk),
        .CE(\array_reg[7]_3 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[7] [13]));
  FDCE \array_reg_reg[7][14] 
       (.C(clk),
        .CE(\array_reg[7]_3 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[7] [14]));
  FDCE \array_reg_reg[7][15] 
       (.C(clk),
        .CE(\array_reg[7]_3 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[7] [15]));
  FDCE \array_reg_reg[7][1] 
       (.C(clk),
        .CE(\array_reg[7]_3 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[7] [1]));
  FDCE \array_reg_reg[7][2] 
       (.C(clk),
        .CE(\array_reg[7]_3 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[7] [2]));
  FDCE \array_reg_reg[7][3] 
       (.C(clk),
        .CE(\array_reg[7]_3 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[7] [3]));
  FDCE \array_reg_reg[7][4] 
       (.C(clk),
        .CE(\array_reg[7]_3 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[7] [4]));
  FDCE \array_reg_reg[7][5] 
       (.C(clk),
        .CE(\array_reg[7]_3 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[7] [5]));
  FDCE \array_reg_reg[7][6] 
       (.C(clk),
        .CE(\array_reg[7]_3 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[7] [6]));
  FDCE \array_reg_reg[7][7] 
       (.C(clk),
        .CE(\array_reg[7]_3 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[7] [7]));
  FDCE \array_reg_reg[7][8] 
       (.C(clk),
        .CE(\array_reg[7]_3 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[7] [8]));
  FDCE \array_reg_reg[7][9] 
       (.C(clk),
        .CE(\array_reg[7]_3 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[7] [9]));
  FDCE \array_reg_reg[8][0] 
       (.C(clk),
        .CE(\array_reg[8]_10 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[8] [0]));
  FDCE \array_reg_reg[8][10] 
       (.C(clk),
        .CE(\array_reg[8]_10 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[8] [10]));
  FDCE \array_reg_reg[8][12] 
       (.C(clk),
        .CE(\array_reg[8]_10 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[8] [12]));
  FDCE \array_reg_reg[8][13] 
       (.C(clk),
        .CE(\array_reg[8]_10 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[8] [13]));
  FDCE \array_reg_reg[8][14] 
       (.C(clk),
        .CE(\array_reg[8]_10 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[8] [14]));
  FDCE \array_reg_reg[8][15] 
       (.C(clk),
        .CE(\array_reg[8]_10 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[8] [15]));
  FDCE \array_reg_reg[8][1] 
       (.C(clk),
        .CE(\array_reg[8]_10 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[8] [1]));
  FDCE \array_reg_reg[8][2] 
       (.C(clk),
        .CE(\array_reg[8]_10 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[8] [2]));
  FDCE \array_reg_reg[8][3] 
       (.C(clk),
        .CE(\array_reg[8]_10 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[8] [3]));
  FDCE \array_reg_reg[8][4] 
       (.C(clk),
        .CE(\array_reg[8]_10 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[8] [4]));
  FDCE \array_reg_reg[8][5] 
       (.C(clk),
        .CE(\array_reg[8]_10 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[8] [5]));
  FDCE \array_reg_reg[8][6] 
       (.C(clk),
        .CE(\array_reg[8]_10 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[8] [6]));
  FDCE \array_reg_reg[8][7] 
       (.C(clk),
        .CE(\array_reg[8]_10 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[8] [7]));
  FDCE \array_reg_reg[8][8] 
       (.C(clk),
        .CE(\array_reg[8]_10 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[8] [8]));
  FDCE \array_reg_reg[8][9] 
       (.C(clk),
        .CE(\array_reg[8]_10 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[8] [9]));
  FDCE \array_reg_reg[9][0] 
       (.C(clk),
        .CE(\array_reg[9]_9 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[0]),
        .Q(\array_reg_reg[9] [0]));
  FDCE \array_reg_reg[9][10] 
       (.C(clk),
        .CE(\array_reg[9]_9 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[10]),
        .Q(\array_reg_reg[9] [10]));
  FDCE \array_reg_reg[9][12] 
       (.C(clk),
        .CE(\array_reg[9]_9 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[11]),
        .Q(\array_reg_reg[9] [12]));
  FDCE \array_reg_reg[9][13] 
       (.C(clk),
        .CE(\array_reg[9]_9 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[12]),
        .Q(\array_reg_reg[9] [13]));
  FDCE \array_reg_reg[9][14] 
       (.C(clk),
        .CE(\array_reg[9]_9 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[13]),
        .Q(\array_reg_reg[9] [14]));
  FDCE \array_reg_reg[9][15] 
       (.C(clk),
        .CE(\array_reg[9]_9 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[14]),
        .Q(\array_reg_reg[9] [15]));
  FDCE \array_reg_reg[9][1] 
       (.C(clk),
        .CE(\array_reg[9]_9 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[1]),
        .Q(\array_reg_reg[9] [1]));
  FDCE \array_reg_reg[9][2] 
       (.C(clk),
        .CE(\array_reg[9]_9 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[2]),
        .Q(\array_reg_reg[9] [2]));
  FDCE \array_reg_reg[9][3] 
       (.C(clk),
        .CE(\array_reg[9]_9 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[3]),
        .Q(\array_reg_reg[9] [3]));
  FDCE \array_reg_reg[9][4] 
       (.C(clk),
        .CE(\array_reg[9]_9 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[4]),
        .Q(\array_reg_reg[9] [4]));
  FDCE \array_reg_reg[9][5] 
       (.C(clk),
        .CE(\array_reg[9]_9 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[5]),
        .Q(\array_reg_reg[9] [5]));
  FDCE \array_reg_reg[9][6] 
       (.C(clk),
        .CE(\array_reg[9]_9 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[6]),
        .Q(\array_reg_reg[9] [6]));
  FDCE \array_reg_reg[9][7] 
       (.C(clk),
        .CE(\array_reg[9]_9 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[7]),
        .Q(\array_reg_reg[9] [7]));
  FDCE \array_reg_reg[9][8] 
       (.C(clk),
        .CE(\array_reg[9]_9 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[8]),
        .Q(\array_reg_reg[9] [8]));
  FDCE \array_reg_reg[9][9] 
       (.C(clk),
        .CE(\array_reg[9]_9 ),
        .CLR(fifo_reset),
        .D(GPIOPortWr[9]),
        .Q(\array_reg_reg[9] [9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[0]_i_4 
       (.I0(\array_reg_reg[3] [12]),
        .I1(\array_reg_reg[2] [12]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[1] [12]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[0] [12]),
        .O(\edges[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[0]_i_5 
       (.I0(\array_reg_reg[7] [12]),
        .I1(\array_reg_reg[6] [12]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[5] [12]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[4] [12]),
        .O(\edges[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[0]_i_6 
       (.I0(\array_reg_reg[11] [12]),
        .I1(\array_reg_reg[10] [12]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[9] [12]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[8] [12]),
        .O(\edges[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[0]_i_7 
       (.I0(\array_reg_reg[15] [12]),
        .I1(\array_reg_reg[14] [12]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[13] [12]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[12] [12]),
        .O(\edges[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[1]_i_4 
       (.I0(\array_reg_reg[3] [13]),
        .I1(\array_reg_reg[2] [13]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[1] [13]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[0] [13]),
        .O(\edges[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[1]_i_5 
       (.I0(\array_reg_reg[7] [13]),
        .I1(\array_reg_reg[6] [13]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[5] [13]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[4] [13]),
        .O(\edges[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[1]_i_6 
       (.I0(\array_reg_reg[11] [13]),
        .I1(\array_reg_reg[10] [13]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[9] [13]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[8] [13]),
        .O(\edges[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[1]_i_7 
       (.I0(\array_reg_reg[15] [13]),
        .I1(\array_reg_reg[14] [13]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[13] [13]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[12] [13]),
        .O(\edges[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[2]_i_4 
       (.I0(\array_reg_reg[3] [14]),
        .I1(\array_reg_reg[2] [14]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[1] [14]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[0] [14]),
        .O(\edges[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[2]_i_5 
       (.I0(\array_reg_reg[7] [14]),
        .I1(\array_reg_reg[6] [14]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[5] [14]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[4] [14]),
        .O(\edges[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[2]_i_6 
       (.I0(\array_reg_reg[11] [14]),
        .I1(\array_reg_reg[10] [14]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[9] [14]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[8] [14]),
        .O(\edges[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[2]_i_7 
       (.I0(\array_reg_reg[15] [14]),
        .I1(\array_reg_reg[14] [14]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[13] [14]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[12] [14]),
        .O(\edges[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[3]_i_4 
       (.I0(\array_reg_reg[3] [15]),
        .I1(\array_reg_reg[2] [15]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[1] [15]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[0] [15]),
        .O(\edges[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[3]_i_5 
       (.I0(\array_reg_reg[7] [15]),
        .I1(\array_reg_reg[6] [15]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[5] [15]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[4] [15]),
        .O(\edges[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[3]_i_6 
       (.I0(\array_reg_reg[11] [15]),
        .I1(\array_reg_reg[10] [15]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[9] [15]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[8] [15]),
        .O(\edges[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \edges[3]_i_7 
       (.I0(\array_reg_reg[15] [15]),
        .I1(\array_reg_reg[14] [15]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg[13] [15]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg[12] [15]),
        .O(\edges[3]_i_7_n_0 ));
  MUXF8 \edges_reg[0]_i_1 
       (.I0(\edges_reg[0]_i_2_n_0 ),
        .I1(\edges_reg[0]_i_3_n_0 ),
        .O(D[0]),
        .S(r_ptr_reg_reg[3]));
  MUXF7 \edges_reg[0]_i_2 
       (.I0(\edges[0]_i_4_n_0 ),
        .I1(\edges[0]_i_5_n_0 ),
        .O(\edges_reg[0]_i_2_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF7 \edges_reg[0]_i_3 
       (.I0(\edges[0]_i_6_n_0 ),
        .I1(\edges[0]_i_7_n_0 ),
        .O(\edges_reg[0]_i_3_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF8 \edges_reg[1]_i_1 
       (.I0(\edges_reg[1]_i_2_n_0 ),
        .I1(\edges_reg[1]_i_3_n_0 ),
        .O(D[1]),
        .S(r_ptr_reg_reg[3]));
  MUXF7 \edges_reg[1]_i_2 
       (.I0(\edges[1]_i_4_n_0 ),
        .I1(\edges[1]_i_5_n_0 ),
        .O(\edges_reg[1]_i_2_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF7 \edges_reg[1]_i_3 
       (.I0(\edges[1]_i_6_n_0 ),
        .I1(\edges[1]_i_7_n_0 ),
        .O(\edges_reg[1]_i_3_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF8 \edges_reg[2]_i_1 
       (.I0(\edges_reg[2]_i_2_n_0 ),
        .I1(\edges_reg[2]_i_3_n_0 ),
        .O(D[2]),
        .S(r_ptr_reg_reg[3]));
  MUXF7 \edges_reg[2]_i_2 
       (.I0(\edges[2]_i_4_n_0 ),
        .I1(\edges[2]_i_5_n_0 ),
        .O(\edges_reg[2]_i_2_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF7 \edges_reg[2]_i_3 
       (.I0(\edges[2]_i_6_n_0 ),
        .I1(\edges[2]_i_7_n_0 ),
        .O(\edges_reg[2]_i_3_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF8 \edges_reg[3]_i_1 
       (.I0(\edges_reg[3]_i_2_n_0 ),
        .I1(\edges_reg[3]_i_3_n_0 ),
        .O(D[3]),
        .S(r_ptr_reg_reg[3]));
  MUXF7 \edges_reg[3]_i_2 
       (.I0(\edges[3]_i_4_n_0 ),
        .I1(\edges[3]_i_5_n_0 ),
        .O(\edges_reg[3]_i_2_n_0 ),
        .S(r_ptr_reg_reg[2]));
  MUXF7 \edges_reg[3]_i_3 
       (.I0(\edges[3]_i_6_n_0 ),
        .I1(\edges[3]_i_7_n_0 ),
        .O(\edges_reg[3]_i_3_n_0 ),
        .S(r_ptr_reg_reg[2]));
  LUT5 #(
    .INIT(32'hFB00FB30)) 
    empty_reg_i_1
       (.I0(full),
        .I1(ClkInTick),
        .I2(rd),
        .I3(fifo_empty),
        .I4(empty_reg_i_2__0_n_0),
        .O(empty_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'hEBBBBBBBBEEEEEEE)) 
    empty_reg_i_2__0
       (.I0(empty_reg_i_3__0_n_0),
        .I1(r_ptr_reg_reg[3]),
        .I2(r_ptr_reg_reg[0]),
        .I3(r_ptr_reg_reg[1]),
        .I4(r_ptr_reg_reg[2]),
        .I5(w_ptr_reg_reg[3]),
        .O(empty_reg_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hFFFF6FF6F96FFFFF)) 
    empty_reg_i_3__0
       (.I0(r_ptr_reg_reg[2]),
        .I1(w_ptr_reg_reg[2]),
        .I2(w_ptr_reg_reg[1]),
        .I3(r_ptr_reg_reg[1]),
        .I4(r_ptr_reg_reg[0]),
        .I5(w_ptr_reg_reg[0]),
        .O(empty_reg_i_3__0_n_0));
  FDPE empty_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_reg_i_1_n_0),
        .PRE(fifo_reset),
        .Q(fifo_empty));
  LUT6 #(
    .INIT(64'hFFFFFFC700000004)) 
    fifo_rd_i_1
       (.I0(fifo_empty),
        .I1(fifoState[0]),
        .I2(fifoState[1]),
        .I3(fifo_reset),
        .I4(fifoState[2]),
        .I5(rd),
        .O(empty_reg_reg_0));
  LUT5 #(
    .INIT(32'hFFAF0C00)) 
    full_reg_i_1
       (.I0(fifo_empty),
        .I1(full_reg_i_2_n_0),
        .I2(rd),
        .I3(ClkInTick),
        .I4(full),
        .O(full_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h2888888882222222)) 
    full_reg_i_2
       (.I0(full_reg_i_3_n_0),
        .I1(w_ptr_reg_reg[3]),
        .I2(w_ptr_reg_reg[0]),
        .I3(w_ptr_reg_reg[1]),
        .I4(w_ptr_reg_reg[2]),
        .I5(r_ptr_reg_reg[3]),
        .O(full_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000900906900000)) 
    full_reg_i_3
       (.I0(w_ptr_reg_reg[2]),
        .I1(r_ptr_reg_reg[2]),
        .I2(r_ptr_reg_reg[1]),
        .I3(w_ptr_reg_reg[1]),
        .I4(w_ptr_reg_reg[0]),
        .I5(r_ptr_reg_reg[0]),
        .O(full_reg_i_3_n_0));
  FDCE full_reg_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(fifo_reset),
        .D(full_reg_i_1_n_0),
        .Q(full));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_ptr_reg[0]_i_1__0 
       (.I0(r_ptr_reg_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_ptr_reg[1]_i_1__0 
       (.I0(r_ptr_reg_reg[0]),
        .I1(r_ptr_reg_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_ptr_reg[2]_i_1__0 
       (.I0(r_ptr_reg_reg[2]),
        .I1(r_ptr_reg_reg[1]),
        .I2(r_ptr_reg_reg[0]),
        .O(\r_ptr_reg[2]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h8C)) 
    \r_ptr_reg[3]_i_1 
       (.I0(ClkInTick),
        .I1(rd),
        .I2(fifo_empty),
        .O(\r_ptr_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_ptr_reg[3]_i_2__0 
       (.I0(r_ptr_reg_reg[2]),
        .I1(r_ptr_reg_reg[1]),
        .I2(r_ptr_reg_reg[0]),
        .I3(r_ptr_reg_reg[3]),
        .O(plusOp[3]));
  FDCE \r_ptr_reg_reg[0] 
       (.C(clk),
        .CE(\r_ptr_reg[3]_i_1_n_0 ),
        .CLR(fifo_reset),
        .D(plusOp[0]),
        .Q(r_ptr_reg_reg[0]));
  FDCE \r_ptr_reg_reg[1] 
       (.C(clk),
        .CE(\r_ptr_reg[3]_i_1_n_0 ),
        .CLR(fifo_reset),
        .D(plusOp[1]),
        .Q(r_ptr_reg_reg[1]));
  FDCE \r_ptr_reg_reg[2] 
       (.C(clk),
        .CE(\r_ptr_reg[3]_i_1_n_0 ),
        .CLR(fifo_reset),
        .D(\r_ptr_reg[2]_i_1__0_n_0 ),
        .Q(r_ptr_reg_reg[2]));
  FDCE \r_ptr_reg_reg[3] 
       (.C(clk),
        .CE(\r_ptr_reg[3]_i_1_n_0 ),
        .CLR(fifo_reset),
        .D(plusOp[3]),
        .Q(r_ptr_reg_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \w_ptr_reg[0]_i_1 
       (.I0(w_ptr_reg_reg[0]),
        .O(plusOp0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w_ptr_reg[1]_i_1 
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .O(plusOp0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \w_ptr_reg[2]_i_1 
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[2]),
        .O(plusOp0_in[2]));
  LUT3 #(
    .INIT(8'h8C)) 
    \w_ptr_reg[3]_i_1 
       (.I0(rd),
        .I1(ClkInTick),
        .I2(full),
        .O(\w_ptr_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \w_ptr_reg[3]_i_2 
       (.I0(w_ptr_reg_reg[2]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[0]),
        .I3(w_ptr_reg_reg[3]),
        .O(plusOp0_in[3]));
  FDCE \w_ptr_reg_reg[0] 
       (.C(clk),
        .CE(\w_ptr_reg[3]_i_1_n_0 ),
        .CLR(fifo_reset),
        .D(plusOp0_in[0]),
        .Q(w_ptr_reg_reg[0]));
  FDCE \w_ptr_reg_reg[1] 
       (.C(clk),
        .CE(\w_ptr_reg[3]_i_1_n_0 ),
        .CLR(fifo_reset),
        .D(plusOp0_in[1]),
        .Q(w_ptr_reg_reg[1]));
  FDCE \w_ptr_reg_reg[2] 
       (.C(clk),
        .CE(\w_ptr_reg[3]_i_1_n_0 ),
        .CLR(fifo_reset),
        .D(plusOp0_in[2]),
        .Q(w_ptr_reg_reg[2]));
  FDCE \w_ptr_reg_reg[3] 
       (.C(clk),
        .CE(\w_ptr_reg[3]_i_1_n_0 ),
        .CLR(fifo_reset),
        .D(plusOp0_in[3]),
        .Q(w_ptr_reg_reg[3]));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module GPIOTest_GPIOInterface_0_0_fifo_2
   (fifo_reset,
    out_fifo_full,
    GPIOPortRd,
    clk,
    GPIOPortWr,
    wr,
    ClkOutTick,
    reset_n,
    D);
  output fifo_reset;
  output out_fifo_full;
  output [16:0]GPIOPortRd;
  input clk;
  input [1:0]GPIOPortWr;
  input wr;
  input ClkOutTick;
  input reset_n;
  input [15:0]D;

  wire ClkOutTick;
  wire [15:0]D;
  wire [16:0]GPIOPortRd;
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
  wire [1:0]GPIOPortWr;
  wire \array_reg[0]_30 ;
  wire \array_reg[10]_24 ;
  wire \array_reg[11]_17 ;
  wire \array_reg[12]_23 ;
  wire \array_reg[13]_22 ;
  wire \array_reg[14]_21 ;
  wire \array_reg[15]_20 ;
  wire \array_reg[1]_31 ;
  wire \array_reg[2]_32 ;
  wire \array_reg[3]_18 ;
  wire \array_reg[4]_29 ;
  wire \array_reg[5]_28 ;
  wire \array_reg[6]_27 ;
  wire \array_reg[7]_19 ;
  wire \array_reg[8]_26 ;
  wire \array_reg[9]_25 ;
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
  wire clk;
  wire empty_reg;
  wire empty_reg_i_1__0_n_0;
  wire empty_reg_i_2_n_0;
  wire empty_reg_i_3_n_0;
  wire fifo_reset;
  wire full_reg_i_1__0_n_0;
  wire full_reg_i_2__0_n_0;
  wire full_reg_i_3__0_n_0;
  wire out_fifo_full;
  wire \r_ptr_reg[0]_i_1_n_0 ;
  wire \r_ptr_reg[1]_i_1_n_0 ;
  wire \r_ptr_reg[2]_i_1_n_0 ;
  wire \r_ptr_reg[3]_i_1__0_n_0 ;
  wire \r_ptr_reg[3]_i_2_n_0 ;
  wire [3:0]r_ptr_reg_reg;
  wire reset_n;
  wire \w_ptr_reg[0]_i_1__0_n_0 ;
  wire \w_ptr_reg[1]_i_1__0_n_0 ;
  wire \w_ptr_reg[2]_i_1__0_n_0 ;
  wire \w_ptr_reg[3]_i_1__0_n_0 ;
  wire \w_ptr_reg[3]_i_2__0_n_0 ;
  wire [3:0]w_ptr_reg_reg;
  wire wr;

  LUT2 #(
    .INIT(4'hB)) 
    \DOut[7]_i_1 
       (.I0(GPIOPortWr[1]),
        .I1(reset_n),
        .O(fifo_reset));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[0]_INST_0 
       (.I0(\GPIOPortRd[0]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg[3]),
        .I2(\GPIOPortRd[0]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg[2]),
        .I4(\GPIOPortRd[0]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr[0]),
        .O(GPIOPortRd[0]));
  MUXF7 \GPIOPortRd[0]_INST_0_i_1 
       (.I0(\GPIOPortRd[0]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[0]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[0]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[0]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][0] ),
        .I1(\array_reg_reg_n_0_[10][0] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[9][0] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[8][0] ),
        .O(\GPIOPortRd[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[0]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][0] ),
        .I1(\array_reg_reg_n_0_[14][0] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[13][0] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[12][0] ),
        .O(\GPIOPortRd[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[0]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][0] ),
        .I1(\array_reg_reg_n_0_[2][0] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[1][0] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[0][0] ),
        .O(\GPIOPortRd[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[0]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][0] ),
        .I1(\array_reg_reg_n_0_[6][0] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[5][0] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[4][0] ),
        .O(\GPIOPortRd[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[10]_INST_0 
       (.I0(\GPIOPortRd[10]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg[3]),
        .I2(\GPIOPortRd[10]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg[2]),
        .I4(\GPIOPortRd[10]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr[0]),
        .O(GPIOPortRd[10]));
  MUXF7 \GPIOPortRd[10]_INST_0_i_1 
       (.I0(\GPIOPortRd[10]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[10]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[10]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[10]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][10] ),
        .I1(\array_reg_reg_n_0_[10][10] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[9][10] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[8][10] ),
        .O(\GPIOPortRd[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[10]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][10] ),
        .I1(\array_reg_reg_n_0_[14][10] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[13][10] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[12][10] ),
        .O(\GPIOPortRd[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[10]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][10] ),
        .I1(\array_reg_reg_n_0_[2][10] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[1][10] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[0][10] ),
        .O(\GPIOPortRd[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[10]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][10] ),
        .I1(\array_reg_reg_n_0_[6][10] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[5][10] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[4][10] ),
        .O(\GPIOPortRd[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[11]_INST_0 
       (.I0(\GPIOPortRd[11]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg[3]),
        .I2(\GPIOPortRd[11]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg[2]),
        .I4(\GPIOPortRd[11]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr[0]),
        .O(GPIOPortRd[11]));
  MUXF7 \GPIOPortRd[11]_INST_0_i_1 
       (.I0(\GPIOPortRd[11]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[11]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[11]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[11]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][11] ),
        .I1(\array_reg_reg_n_0_[10][11] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[9][11] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[8][11] ),
        .O(\GPIOPortRd[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[11]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][11] ),
        .I1(\array_reg_reg_n_0_[14][11] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[13][11] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[12][11] ),
        .O(\GPIOPortRd[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[11]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][11] ),
        .I1(\array_reg_reg_n_0_[2][11] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[1][11] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[0][11] ),
        .O(\GPIOPortRd[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[11]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][11] ),
        .I1(\array_reg_reg_n_0_[6][11] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[5][11] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[4][11] ),
        .O(\GPIOPortRd[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[12]_INST_0 
       (.I0(\GPIOPortRd[12]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg[3]),
        .I2(\GPIOPortRd[12]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg[2]),
        .I4(\GPIOPortRd[12]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr[0]),
        .O(GPIOPortRd[12]));
  MUXF7 \GPIOPortRd[12]_INST_0_i_1 
       (.I0(\GPIOPortRd[12]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[12]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[12]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[12]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][12] ),
        .I1(\array_reg_reg_n_0_[10][12] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[9][12] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[8][12] ),
        .O(\GPIOPortRd[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[12]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][12] ),
        .I1(\array_reg_reg_n_0_[14][12] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[13][12] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[12][12] ),
        .O(\GPIOPortRd[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[12]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][12] ),
        .I1(\array_reg_reg_n_0_[2][12] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[1][12] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[0][12] ),
        .O(\GPIOPortRd[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[12]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][12] ),
        .I1(\array_reg_reg_n_0_[6][12] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[5][12] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[4][12] ),
        .O(\GPIOPortRd[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[13]_INST_0 
       (.I0(\GPIOPortRd[13]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg[3]),
        .I2(\GPIOPortRd[13]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg[2]),
        .I4(\GPIOPortRd[13]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr[0]),
        .O(GPIOPortRd[13]));
  MUXF7 \GPIOPortRd[13]_INST_0_i_1 
       (.I0(\GPIOPortRd[13]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[13]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[13]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[13]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][13] ),
        .I1(\array_reg_reg_n_0_[10][13] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[9][13] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[8][13] ),
        .O(\GPIOPortRd[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[13]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][13] ),
        .I1(\array_reg_reg_n_0_[14][13] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[13][13] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[12][13] ),
        .O(\GPIOPortRd[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[13]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][13] ),
        .I1(\array_reg_reg_n_0_[2][13] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[1][13] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[0][13] ),
        .O(\GPIOPortRd[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[13]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][13] ),
        .I1(\array_reg_reg_n_0_[6][13] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[5][13] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[4][13] ),
        .O(\GPIOPortRd[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[14]_INST_0 
       (.I0(\GPIOPortRd[14]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg[3]),
        .I2(\GPIOPortRd[14]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg[2]),
        .I4(\GPIOPortRd[14]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr[0]),
        .O(GPIOPortRd[14]));
  MUXF7 \GPIOPortRd[14]_INST_0_i_1 
       (.I0(\GPIOPortRd[14]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[14]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[14]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[14]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][14] ),
        .I1(\array_reg_reg_n_0_[10][14] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[9][14] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[8][14] ),
        .O(\GPIOPortRd[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[14]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][14] ),
        .I1(\array_reg_reg_n_0_[14][14] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[13][14] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[12][14] ),
        .O(\GPIOPortRd[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[14]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][14] ),
        .I1(\array_reg_reg_n_0_[2][14] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[1][14] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[0][14] ),
        .O(\GPIOPortRd[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[14]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][14] ),
        .I1(\array_reg_reg_n_0_[6][14] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[5][14] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[4][14] ),
        .O(\GPIOPortRd[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[15]_INST_0 
       (.I0(\GPIOPortRd[15]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg[3]),
        .I2(\GPIOPortRd[15]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg[2]),
        .I4(\GPIOPortRd[15]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr[0]),
        .O(GPIOPortRd[15]));
  MUXF7 \GPIOPortRd[15]_INST_0_i_1 
       (.I0(\GPIOPortRd[15]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[15]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[15]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[15]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][15] ),
        .I1(\array_reg_reg_n_0_[10][15] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[9][15] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[8][15] ),
        .O(\GPIOPortRd[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[15]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][15] ),
        .I1(\array_reg_reg_n_0_[14][15] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[13][15] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[12][15] ),
        .O(\GPIOPortRd[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[15]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][15] ),
        .I1(\array_reg_reg_n_0_[2][15] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[1][15] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[0][15] ),
        .O(\GPIOPortRd[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[15]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][15] ),
        .I1(\array_reg_reg_n_0_[6][15] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[5][15] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[4][15] ),
        .O(\GPIOPortRd[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[1]_INST_0 
       (.I0(\GPIOPortRd[1]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg[3]),
        .I2(\GPIOPortRd[1]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg[2]),
        .I4(\GPIOPortRd[1]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr[0]),
        .O(GPIOPortRd[1]));
  MUXF7 \GPIOPortRd[1]_INST_0_i_1 
       (.I0(\GPIOPortRd[1]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[1]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[1]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[1]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][1] ),
        .I1(\array_reg_reg_n_0_[10][1] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[9][1] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[8][1] ),
        .O(\GPIOPortRd[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[1]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][1] ),
        .I1(\array_reg_reg_n_0_[14][1] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[13][1] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[12][1] ),
        .O(\GPIOPortRd[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[1]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][1] ),
        .I1(\array_reg_reg_n_0_[2][1] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[1][1] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[0][1] ),
        .O(\GPIOPortRd[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[1]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][1] ),
        .I1(\array_reg_reg_n_0_[6][1] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[5][1] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[4][1] ),
        .O(\GPIOPortRd[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[2]_INST_0 
       (.I0(\GPIOPortRd[2]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg[3]),
        .I2(\GPIOPortRd[2]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg[2]),
        .I4(\GPIOPortRd[2]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr[0]),
        .O(GPIOPortRd[2]));
  MUXF7 \GPIOPortRd[2]_INST_0_i_1 
       (.I0(\GPIOPortRd[2]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[2]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[2]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[2]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][2] ),
        .I1(\array_reg_reg_n_0_[10][2] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[9][2] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[8][2] ),
        .O(\GPIOPortRd[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[2]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][2] ),
        .I1(\array_reg_reg_n_0_[14][2] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[13][2] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[12][2] ),
        .O(\GPIOPortRd[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[2]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][2] ),
        .I1(\array_reg_reg_n_0_[2][2] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[1][2] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[0][2] ),
        .O(\GPIOPortRd[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[2]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][2] ),
        .I1(\array_reg_reg_n_0_[6][2] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[5][2] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[4][2] ),
        .O(\GPIOPortRd[2]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \GPIOPortRd[30]_INST_0 
       (.I0(empty_reg),
        .O(GPIOPortRd[16]));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[3]_INST_0 
       (.I0(\GPIOPortRd[3]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg[3]),
        .I2(\GPIOPortRd[3]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg[2]),
        .I4(\GPIOPortRd[3]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr[0]),
        .O(GPIOPortRd[3]));
  MUXF7 \GPIOPortRd[3]_INST_0_i_1 
       (.I0(\GPIOPortRd[3]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[3]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[3]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[3]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][3] ),
        .I1(\array_reg_reg_n_0_[10][3] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[9][3] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[8][3] ),
        .O(\GPIOPortRd[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[3]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][3] ),
        .I1(\array_reg_reg_n_0_[14][3] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[13][3] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[12][3] ),
        .O(\GPIOPortRd[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[3]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][3] ),
        .I1(\array_reg_reg_n_0_[2][3] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[1][3] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[0][3] ),
        .O(\GPIOPortRd[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[3]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][3] ),
        .I1(\array_reg_reg_n_0_[6][3] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[5][3] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[4][3] ),
        .O(\GPIOPortRd[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[4]_INST_0 
       (.I0(\GPIOPortRd[4]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg[3]),
        .I2(\GPIOPortRd[4]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg[2]),
        .I4(\GPIOPortRd[4]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr[0]),
        .O(GPIOPortRd[4]));
  MUXF7 \GPIOPortRd[4]_INST_0_i_1 
       (.I0(\GPIOPortRd[4]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[4]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[4]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[4]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][4] ),
        .I1(\array_reg_reg_n_0_[10][4] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[9][4] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[8][4] ),
        .O(\GPIOPortRd[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[4]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][4] ),
        .I1(\array_reg_reg_n_0_[14][4] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[13][4] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[12][4] ),
        .O(\GPIOPortRd[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[4]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][4] ),
        .I1(\array_reg_reg_n_0_[2][4] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[1][4] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[0][4] ),
        .O(\GPIOPortRd[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[4]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][4] ),
        .I1(\array_reg_reg_n_0_[6][4] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[5][4] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[4][4] ),
        .O(\GPIOPortRd[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[5]_INST_0 
       (.I0(\GPIOPortRd[5]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg[3]),
        .I2(\GPIOPortRd[5]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg[2]),
        .I4(\GPIOPortRd[5]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr[0]),
        .O(GPIOPortRd[5]));
  MUXF7 \GPIOPortRd[5]_INST_0_i_1 
       (.I0(\GPIOPortRd[5]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[5]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[5]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[5]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][5] ),
        .I1(\array_reg_reg_n_0_[10][5] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[9][5] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[8][5] ),
        .O(\GPIOPortRd[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[5]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][5] ),
        .I1(\array_reg_reg_n_0_[14][5] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[13][5] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[12][5] ),
        .O(\GPIOPortRd[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[5]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][5] ),
        .I1(\array_reg_reg_n_0_[2][5] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[1][5] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[0][5] ),
        .O(\GPIOPortRd[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[5]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][5] ),
        .I1(\array_reg_reg_n_0_[6][5] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[5][5] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[4][5] ),
        .O(\GPIOPortRd[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[6]_INST_0 
       (.I0(\GPIOPortRd[6]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg[3]),
        .I2(\GPIOPortRd[6]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg[2]),
        .I4(\GPIOPortRd[6]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr[0]),
        .O(GPIOPortRd[6]));
  MUXF7 \GPIOPortRd[6]_INST_0_i_1 
       (.I0(\GPIOPortRd[6]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[6]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[6]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[6]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][6] ),
        .I1(\array_reg_reg_n_0_[10][6] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[9][6] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[8][6] ),
        .O(\GPIOPortRd[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[6]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][6] ),
        .I1(\array_reg_reg_n_0_[14][6] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[13][6] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[12][6] ),
        .O(\GPIOPortRd[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[6]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][6] ),
        .I1(\array_reg_reg_n_0_[2][6] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[1][6] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[0][6] ),
        .O(\GPIOPortRd[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[6]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][6] ),
        .I1(\array_reg_reg_n_0_[6][6] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[5][6] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[4][6] ),
        .O(\GPIOPortRd[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[7]_INST_0 
       (.I0(\GPIOPortRd[7]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg[3]),
        .I2(\GPIOPortRd[7]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg[2]),
        .I4(\GPIOPortRd[7]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr[0]),
        .O(GPIOPortRd[7]));
  MUXF7 \GPIOPortRd[7]_INST_0_i_1 
       (.I0(\GPIOPortRd[7]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[7]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[7]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[7]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][7] ),
        .I1(\array_reg_reg_n_0_[10][7] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[9][7] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[8][7] ),
        .O(\GPIOPortRd[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[7]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][7] ),
        .I1(\array_reg_reg_n_0_[14][7] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[13][7] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[12][7] ),
        .O(\GPIOPortRd[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[7]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][7] ),
        .I1(\array_reg_reg_n_0_[2][7] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[1][7] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[0][7] ),
        .O(\GPIOPortRd[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[7]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][7] ),
        .I1(\array_reg_reg_n_0_[6][7] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[5][7] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[4][7] ),
        .O(\GPIOPortRd[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[8]_INST_0 
       (.I0(\GPIOPortRd[8]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg[3]),
        .I2(\GPIOPortRd[8]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg[2]),
        .I4(\GPIOPortRd[8]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr[0]),
        .O(GPIOPortRd[8]));
  MUXF7 \GPIOPortRd[8]_INST_0_i_1 
       (.I0(\GPIOPortRd[8]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[8]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[8]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[8]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][8] ),
        .I1(\array_reg_reg_n_0_[10][8] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[9][8] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[8][8] ),
        .O(\GPIOPortRd[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[8]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][8] ),
        .I1(\array_reg_reg_n_0_[14][8] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[13][8] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[12][8] ),
        .O(\GPIOPortRd[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[8]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][8] ),
        .I1(\array_reg_reg_n_0_[2][8] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[1][8] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[0][8] ),
        .O(\GPIOPortRd[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[8]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][8] ),
        .I1(\array_reg_reg_n_0_[6][8] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[5][8] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[4][8] ),
        .O(\GPIOPortRd[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \GPIOPortRd[9]_INST_0 
       (.I0(\GPIOPortRd[9]_INST_0_i_1_n_0 ),
        .I1(r_ptr_reg_reg[3]),
        .I2(\GPIOPortRd[9]_INST_0_i_2_n_0 ),
        .I3(r_ptr_reg_reg[2]),
        .I4(\GPIOPortRd[9]_INST_0_i_3_n_0 ),
        .I5(GPIOPortWr[0]),
        .O(GPIOPortRd[9]));
  MUXF7 \GPIOPortRd[9]_INST_0_i_1 
       (.I0(\GPIOPortRd[9]_INST_0_i_4_n_0 ),
        .I1(\GPIOPortRd[9]_INST_0_i_5_n_0 ),
        .O(\GPIOPortRd[9]_INST_0_i_1_n_0 ),
        .S(r_ptr_reg_reg[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[9]_INST_0_i_2 
       (.I0(\array_reg_reg_n_0_[11][9] ),
        .I1(\array_reg_reg_n_0_[10][9] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[9][9] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[8][9] ),
        .O(\GPIOPortRd[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[9]_INST_0_i_3 
       (.I0(\array_reg_reg_n_0_[15][9] ),
        .I1(\array_reg_reg_n_0_[14][9] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[13][9] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[12][9] ),
        .O(\GPIOPortRd[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[9]_INST_0_i_4 
       (.I0(\array_reg_reg_n_0_[3][9] ),
        .I1(\array_reg_reg_n_0_[2][9] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[1][9] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[0][9] ),
        .O(\GPIOPortRd[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GPIOPortRd[9]_INST_0_i_5 
       (.I0(\array_reg_reg_n_0_[7][9] ),
        .I1(\array_reg_reg_n_0_[6][9] ),
        .I2(r_ptr_reg_reg[1]),
        .I3(\array_reg_reg_n_0_[5][9] ),
        .I4(r_ptr_reg_reg[0]),
        .I5(\array_reg_reg_n_0_[4][9] ),
        .O(\GPIOPortRd[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \array_reg[0][15]_i_1__0 
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[2]),
        .I3(out_fifo_full),
        .I4(wr),
        .I5(w_ptr_reg_reg[3]),
        .O(\array_reg[0]_30 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \array_reg[10][15]_i_1__0 
       (.I0(w_ptr_reg_reg[2]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[0]),
        .I3(w_ptr_reg_reg[3]),
        .I4(out_fifo_full),
        .I5(wr),
        .O(\array_reg[10]_24 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \array_reg[11][15]_i_1__0 
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[2]),
        .I3(w_ptr_reg_reg[3]),
        .I4(out_fifo_full),
        .I5(wr),
        .O(\array_reg[11]_17 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \array_reg[12][15]_i_1__0 
       (.I0(w_ptr_reg_reg[2]),
        .I1(wr),
        .I2(out_fifo_full),
        .I3(w_ptr_reg_reg[3]),
        .I4(w_ptr_reg_reg[1]),
        .I5(w_ptr_reg_reg[0]),
        .O(\array_reg[12]_23 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \array_reg[13][15]_i_1__0 
       (.I0(w_ptr_reg_reg[1]),
        .I1(w_ptr_reg_reg[0]),
        .I2(w_ptr_reg_reg[2]),
        .I3(wr),
        .I4(out_fifo_full),
        .I5(w_ptr_reg_reg[3]),
        .O(\array_reg[13]_22 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \array_reg[14][15]_i_1__0 
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[2]),
        .I3(wr),
        .I4(out_fifo_full),
        .I5(w_ptr_reg_reg[3]),
        .O(\array_reg[14]_21 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \array_reg[15][15]_i_1__0 
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[2]),
        .I3(w_ptr_reg_reg[3]),
        .I4(out_fifo_full),
        .I5(wr),
        .O(\array_reg[15]_20 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \array_reg[1][15]_i_1__0 
       (.I0(w_ptr_reg_reg[2]),
        .I1(w_ptr_reg_reg[0]),
        .I2(w_ptr_reg_reg[1]),
        .I3(out_fifo_full),
        .I4(wr),
        .I5(w_ptr_reg_reg[3]),
        .O(\array_reg[1]_31 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \array_reg[2][15]_i_1__0 
       (.I0(w_ptr_reg_reg[2]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[0]),
        .I3(out_fifo_full),
        .I4(wr),
        .I5(w_ptr_reg_reg[3]),
        .O(\array_reg[2]_32 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \array_reg[3][15]_i_1__0 
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[2]),
        .I3(out_fifo_full),
        .I4(wr),
        .I5(w_ptr_reg_reg[3]),
        .O(\array_reg[3]_18 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \array_reg[4][15]_i_1__0 
       (.I0(w_ptr_reg_reg[1]),
        .I1(w_ptr_reg_reg[0]),
        .I2(w_ptr_reg_reg[2]),
        .I3(w_ptr_reg_reg[3]),
        .I4(wr),
        .I5(out_fifo_full),
        .O(\array_reg[4]_29 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \array_reg[5][15]_i_1__0 
       (.I0(w_ptr_reg_reg[1]),
        .I1(w_ptr_reg_reg[0]),
        .I2(w_ptr_reg_reg[2]),
        .I3(w_ptr_reg_reg[3]),
        .I4(wr),
        .I5(out_fifo_full),
        .O(\array_reg[5]_28 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \array_reg[6][15]_i_1__0 
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[2]),
        .I3(w_ptr_reg_reg[3]),
        .I4(wr),
        .I5(out_fifo_full),
        .O(\array_reg[6]_27 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \array_reg[7][15]_i_1__0 
       (.I0(w_ptr_reg_reg[3]),
        .I1(w_ptr_reg_reg[2]),
        .I2(w_ptr_reg_reg[1]),
        .I3(w_ptr_reg_reg[0]),
        .I4(wr),
        .I5(out_fifo_full),
        .O(\array_reg[7]_19 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \array_reg[8][15]_i_1__0 
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[2]),
        .I3(w_ptr_reg_reg[3]),
        .I4(out_fifo_full),
        .I5(wr),
        .O(\array_reg[8]_26 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \array_reg[9][15]_i_1__0 
       (.I0(w_ptr_reg_reg[2]),
        .I1(w_ptr_reg_reg[0]),
        .I2(w_ptr_reg_reg[1]),
        .I3(w_ptr_reg_reg[3]),
        .I4(out_fifo_full),
        .I5(wr),
        .O(\array_reg[9]_25 ));
  FDCE \array_reg_reg[0][0] 
       (.C(clk),
        .CE(\array_reg[0]_30 ),
        .CLR(fifo_reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[0][0] ));
  FDCE \array_reg_reg[0][10] 
       (.C(clk),
        .CE(\array_reg[0]_30 ),
        .CLR(fifo_reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[0][10] ));
  FDCE \array_reg_reg[0][11] 
       (.C(clk),
        .CE(\array_reg[0]_30 ),
        .CLR(fifo_reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[0][11] ));
  FDCE \array_reg_reg[0][12] 
       (.C(clk),
        .CE(\array_reg[0]_30 ),
        .CLR(fifo_reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[0][12] ));
  FDCE \array_reg_reg[0][13] 
       (.C(clk),
        .CE(\array_reg[0]_30 ),
        .CLR(fifo_reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[0][13] ));
  FDCE \array_reg_reg[0][14] 
       (.C(clk),
        .CE(\array_reg[0]_30 ),
        .CLR(fifo_reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[0][14] ));
  FDCE \array_reg_reg[0][15] 
       (.C(clk),
        .CE(\array_reg[0]_30 ),
        .CLR(fifo_reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[0][15] ));
  FDCE \array_reg_reg[0][1] 
       (.C(clk),
        .CE(\array_reg[0]_30 ),
        .CLR(fifo_reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[0][1] ));
  FDCE \array_reg_reg[0][2] 
       (.C(clk),
        .CE(\array_reg[0]_30 ),
        .CLR(fifo_reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[0][2] ));
  FDCE \array_reg_reg[0][3] 
       (.C(clk),
        .CE(\array_reg[0]_30 ),
        .CLR(fifo_reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[0][3] ));
  FDCE \array_reg_reg[0][4] 
       (.C(clk),
        .CE(\array_reg[0]_30 ),
        .CLR(fifo_reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[0][4] ));
  FDCE \array_reg_reg[0][5] 
       (.C(clk),
        .CE(\array_reg[0]_30 ),
        .CLR(fifo_reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[0][5] ));
  FDCE \array_reg_reg[0][6] 
       (.C(clk),
        .CE(\array_reg[0]_30 ),
        .CLR(fifo_reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[0][6] ));
  FDCE \array_reg_reg[0][7] 
       (.C(clk),
        .CE(\array_reg[0]_30 ),
        .CLR(fifo_reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[0][7] ));
  FDCE \array_reg_reg[0][8] 
       (.C(clk),
        .CE(\array_reg[0]_30 ),
        .CLR(fifo_reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[0][8] ));
  FDCE \array_reg_reg[0][9] 
       (.C(clk),
        .CE(\array_reg[0]_30 ),
        .CLR(fifo_reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[0][9] ));
  FDCE \array_reg_reg[10][0] 
       (.C(clk),
        .CE(\array_reg[10]_24 ),
        .CLR(fifo_reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[10][0] ));
  FDCE \array_reg_reg[10][10] 
       (.C(clk),
        .CE(\array_reg[10]_24 ),
        .CLR(fifo_reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[10][10] ));
  FDCE \array_reg_reg[10][11] 
       (.C(clk),
        .CE(\array_reg[10]_24 ),
        .CLR(fifo_reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[10][11] ));
  FDCE \array_reg_reg[10][12] 
       (.C(clk),
        .CE(\array_reg[10]_24 ),
        .CLR(fifo_reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[10][12] ));
  FDCE \array_reg_reg[10][13] 
       (.C(clk),
        .CE(\array_reg[10]_24 ),
        .CLR(fifo_reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[10][13] ));
  FDCE \array_reg_reg[10][14] 
       (.C(clk),
        .CE(\array_reg[10]_24 ),
        .CLR(fifo_reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[10][14] ));
  FDCE \array_reg_reg[10][15] 
       (.C(clk),
        .CE(\array_reg[10]_24 ),
        .CLR(fifo_reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[10][15] ));
  FDCE \array_reg_reg[10][1] 
       (.C(clk),
        .CE(\array_reg[10]_24 ),
        .CLR(fifo_reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[10][1] ));
  FDCE \array_reg_reg[10][2] 
       (.C(clk),
        .CE(\array_reg[10]_24 ),
        .CLR(fifo_reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[10][2] ));
  FDCE \array_reg_reg[10][3] 
       (.C(clk),
        .CE(\array_reg[10]_24 ),
        .CLR(fifo_reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[10][3] ));
  FDCE \array_reg_reg[10][4] 
       (.C(clk),
        .CE(\array_reg[10]_24 ),
        .CLR(fifo_reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[10][4] ));
  FDCE \array_reg_reg[10][5] 
       (.C(clk),
        .CE(\array_reg[10]_24 ),
        .CLR(fifo_reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[10][5] ));
  FDCE \array_reg_reg[10][6] 
       (.C(clk),
        .CE(\array_reg[10]_24 ),
        .CLR(fifo_reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[10][6] ));
  FDCE \array_reg_reg[10][7] 
       (.C(clk),
        .CE(\array_reg[10]_24 ),
        .CLR(fifo_reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[10][7] ));
  FDCE \array_reg_reg[10][8] 
       (.C(clk),
        .CE(\array_reg[10]_24 ),
        .CLR(fifo_reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[10][8] ));
  FDCE \array_reg_reg[10][9] 
       (.C(clk),
        .CE(\array_reg[10]_24 ),
        .CLR(fifo_reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[10][9] ));
  FDCE \array_reg_reg[11][0] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(fifo_reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[11][0] ));
  FDCE \array_reg_reg[11][10] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(fifo_reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[11][10] ));
  FDCE \array_reg_reg[11][11] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(fifo_reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[11][11] ));
  FDCE \array_reg_reg[11][12] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(fifo_reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[11][12] ));
  FDCE \array_reg_reg[11][13] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(fifo_reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[11][13] ));
  FDCE \array_reg_reg[11][14] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(fifo_reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[11][14] ));
  FDCE \array_reg_reg[11][15] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(fifo_reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[11][15] ));
  FDCE \array_reg_reg[11][1] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(fifo_reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[11][1] ));
  FDCE \array_reg_reg[11][2] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(fifo_reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[11][2] ));
  FDCE \array_reg_reg[11][3] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(fifo_reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[11][3] ));
  FDCE \array_reg_reg[11][4] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(fifo_reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[11][4] ));
  FDCE \array_reg_reg[11][5] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(fifo_reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[11][5] ));
  FDCE \array_reg_reg[11][6] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(fifo_reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[11][6] ));
  FDCE \array_reg_reg[11][7] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(fifo_reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[11][7] ));
  FDCE \array_reg_reg[11][8] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(fifo_reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[11][8] ));
  FDCE \array_reg_reg[11][9] 
       (.C(clk),
        .CE(\array_reg[11]_17 ),
        .CLR(fifo_reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[11][9] ));
  FDCE \array_reg_reg[12][0] 
       (.C(clk),
        .CE(\array_reg[12]_23 ),
        .CLR(fifo_reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[12][0] ));
  FDCE \array_reg_reg[12][10] 
       (.C(clk),
        .CE(\array_reg[12]_23 ),
        .CLR(fifo_reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[12][10] ));
  FDCE \array_reg_reg[12][11] 
       (.C(clk),
        .CE(\array_reg[12]_23 ),
        .CLR(fifo_reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[12][11] ));
  FDCE \array_reg_reg[12][12] 
       (.C(clk),
        .CE(\array_reg[12]_23 ),
        .CLR(fifo_reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[12][12] ));
  FDCE \array_reg_reg[12][13] 
       (.C(clk),
        .CE(\array_reg[12]_23 ),
        .CLR(fifo_reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[12][13] ));
  FDCE \array_reg_reg[12][14] 
       (.C(clk),
        .CE(\array_reg[12]_23 ),
        .CLR(fifo_reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[12][14] ));
  FDCE \array_reg_reg[12][15] 
       (.C(clk),
        .CE(\array_reg[12]_23 ),
        .CLR(fifo_reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[12][15] ));
  FDCE \array_reg_reg[12][1] 
       (.C(clk),
        .CE(\array_reg[12]_23 ),
        .CLR(fifo_reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[12][1] ));
  FDCE \array_reg_reg[12][2] 
       (.C(clk),
        .CE(\array_reg[12]_23 ),
        .CLR(fifo_reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[12][2] ));
  FDCE \array_reg_reg[12][3] 
       (.C(clk),
        .CE(\array_reg[12]_23 ),
        .CLR(fifo_reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[12][3] ));
  FDCE \array_reg_reg[12][4] 
       (.C(clk),
        .CE(\array_reg[12]_23 ),
        .CLR(fifo_reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[12][4] ));
  FDCE \array_reg_reg[12][5] 
       (.C(clk),
        .CE(\array_reg[12]_23 ),
        .CLR(fifo_reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[12][5] ));
  FDCE \array_reg_reg[12][6] 
       (.C(clk),
        .CE(\array_reg[12]_23 ),
        .CLR(fifo_reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[12][6] ));
  FDCE \array_reg_reg[12][7] 
       (.C(clk),
        .CE(\array_reg[12]_23 ),
        .CLR(fifo_reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[12][7] ));
  FDCE \array_reg_reg[12][8] 
       (.C(clk),
        .CE(\array_reg[12]_23 ),
        .CLR(fifo_reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[12][8] ));
  FDCE \array_reg_reg[12][9] 
       (.C(clk),
        .CE(\array_reg[12]_23 ),
        .CLR(fifo_reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[12][9] ));
  FDCE \array_reg_reg[13][0] 
       (.C(clk),
        .CE(\array_reg[13]_22 ),
        .CLR(fifo_reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[13][0] ));
  FDCE \array_reg_reg[13][10] 
       (.C(clk),
        .CE(\array_reg[13]_22 ),
        .CLR(fifo_reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[13][10] ));
  FDCE \array_reg_reg[13][11] 
       (.C(clk),
        .CE(\array_reg[13]_22 ),
        .CLR(fifo_reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[13][11] ));
  FDCE \array_reg_reg[13][12] 
       (.C(clk),
        .CE(\array_reg[13]_22 ),
        .CLR(fifo_reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[13][12] ));
  FDCE \array_reg_reg[13][13] 
       (.C(clk),
        .CE(\array_reg[13]_22 ),
        .CLR(fifo_reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[13][13] ));
  FDCE \array_reg_reg[13][14] 
       (.C(clk),
        .CE(\array_reg[13]_22 ),
        .CLR(fifo_reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[13][14] ));
  FDCE \array_reg_reg[13][15] 
       (.C(clk),
        .CE(\array_reg[13]_22 ),
        .CLR(fifo_reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[13][15] ));
  FDCE \array_reg_reg[13][1] 
       (.C(clk),
        .CE(\array_reg[13]_22 ),
        .CLR(fifo_reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[13][1] ));
  FDCE \array_reg_reg[13][2] 
       (.C(clk),
        .CE(\array_reg[13]_22 ),
        .CLR(fifo_reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[13][2] ));
  FDCE \array_reg_reg[13][3] 
       (.C(clk),
        .CE(\array_reg[13]_22 ),
        .CLR(fifo_reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[13][3] ));
  FDCE \array_reg_reg[13][4] 
       (.C(clk),
        .CE(\array_reg[13]_22 ),
        .CLR(fifo_reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[13][4] ));
  FDCE \array_reg_reg[13][5] 
       (.C(clk),
        .CE(\array_reg[13]_22 ),
        .CLR(fifo_reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[13][5] ));
  FDCE \array_reg_reg[13][6] 
       (.C(clk),
        .CE(\array_reg[13]_22 ),
        .CLR(fifo_reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[13][6] ));
  FDCE \array_reg_reg[13][7] 
       (.C(clk),
        .CE(\array_reg[13]_22 ),
        .CLR(fifo_reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[13][7] ));
  FDCE \array_reg_reg[13][8] 
       (.C(clk),
        .CE(\array_reg[13]_22 ),
        .CLR(fifo_reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[13][8] ));
  FDCE \array_reg_reg[13][9] 
       (.C(clk),
        .CE(\array_reg[13]_22 ),
        .CLR(fifo_reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[13][9] ));
  FDCE \array_reg_reg[14][0] 
       (.C(clk),
        .CE(\array_reg[14]_21 ),
        .CLR(fifo_reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[14][0] ));
  FDCE \array_reg_reg[14][10] 
       (.C(clk),
        .CE(\array_reg[14]_21 ),
        .CLR(fifo_reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[14][10] ));
  FDCE \array_reg_reg[14][11] 
       (.C(clk),
        .CE(\array_reg[14]_21 ),
        .CLR(fifo_reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[14][11] ));
  FDCE \array_reg_reg[14][12] 
       (.C(clk),
        .CE(\array_reg[14]_21 ),
        .CLR(fifo_reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[14][12] ));
  FDCE \array_reg_reg[14][13] 
       (.C(clk),
        .CE(\array_reg[14]_21 ),
        .CLR(fifo_reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[14][13] ));
  FDCE \array_reg_reg[14][14] 
       (.C(clk),
        .CE(\array_reg[14]_21 ),
        .CLR(fifo_reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[14][14] ));
  FDCE \array_reg_reg[14][15] 
       (.C(clk),
        .CE(\array_reg[14]_21 ),
        .CLR(fifo_reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[14][15] ));
  FDCE \array_reg_reg[14][1] 
       (.C(clk),
        .CE(\array_reg[14]_21 ),
        .CLR(fifo_reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[14][1] ));
  FDCE \array_reg_reg[14][2] 
       (.C(clk),
        .CE(\array_reg[14]_21 ),
        .CLR(fifo_reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[14][2] ));
  FDCE \array_reg_reg[14][3] 
       (.C(clk),
        .CE(\array_reg[14]_21 ),
        .CLR(fifo_reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[14][3] ));
  FDCE \array_reg_reg[14][4] 
       (.C(clk),
        .CE(\array_reg[14]_21 ),
        .CLR(fifo_reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[14][4] ));
  FDCE \array_reg_reg[14][5] 
       (.C(clk),
        .CE(\array_reg[14]_21 ),
        .CLR(fifo_reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[14][5] ));
  FDCE \array_reg_reg[14][6] 
       (.C(clk),
        .CE(\array_reg[14]_21 ),
        .CLR(fifo_reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[14][6] ));
  FDCE \array_reg_reg[14][7] 
       (.C(clk),
        .CE(\array_reg[14]_21 ),
        .CLR(fifo_reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[14][7] ));
  FDCE \array_reg_reg[14][8] 
       (.C(clk),
        .CE(\array_reg[14]_21 ),
        .CLR(fifo_reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[14][8] ));
  FDCE \array_reg_reg[14][9] 
       (.C(clk),
        .CE(\array_reg[14]_21 ),
        .CLR(fifo_reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[14][9] ));
  FDCE \array_reg_reg[15][0] 
       (.C(clk),
        .CE(\array_reg[15]_20 ),
        .CLR(fifo_reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[15][0] ));
  FDCE \array_reg_reg[15][10] 
       (.C(clk),
        .CE(\array_reg[15]_20 ),
        .CLR(fifo_reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[15][10] ));
  FDCE \array_reg_reg[15][11] 
       (.C(clk),
        .CE(\array_reg[15]_20 ),
        .CLR(fifo_reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[15][11] ));
  FDCE \array_reg_reg[15][12] 
       (.C(clk),
        .CE(\array_reg[15]_20 ),
        .CLR(fifo_reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[15][12] ));
  FDCE \array_reg_reg[15][13] 
       (.C(clk),
        .CE(\array_reg[15]_20 ),
        .CLR(fifo_reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[15][13] ));
  FDCE \array_reg_reg[15][14] 
       (.C(clk),
        .CE(\array_reg[15]_20 ),
        .CLR(fifo_reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[15][14] ));
  FDCE \array_reg_reg[15][15] 
       (.C(clk),
        .CE(\array_reg[15]_20 ),
        .CLR(fifo_reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[15][15] ));
  FDCE \array_reg_reg[15][1] 
       (.C(clk),
        .CE(\array_reg[15]_20 ),
        .CLR(fifo_reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[15][1] ));
  FDCE \array_reg_reg[15][2] 
       (.C(clk),
        .CE(\array_reg[15]_20 ),
        .CLR(fifo_reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[15][2] ));
  FDCE \array_reg_reg[15][3] 
       (.C(clk),
        .CE(\array_reg[15]_20 ),
        .CLR(fifo_reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[15][3] ));
  FDCE \array_reg_reg[15][4] 
       (.C(clk),
        .CE(\array_reg[15]_20 ),
        .CLR(fifo_reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[15][4] ));
  FDCE \array_reg_reg[15][5] 
       (.C(clk),
        .CE(\array_reg[15]_20 ),
        .CLR(fifo_reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[15][5] ));
  FDCE \array_reg_reg[15][6] 
       (.C(clk),
        .CE(\array_reg[15]_20 ),
        .CLR(fifo_reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[15][6] ));
  FDCE \array_reg_reg[15][7] 
       (.C(clk),
        .CE(\array_reg[15]_20 ),
        .CLR(fifo_reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[15][7] ));
  FDCE \array_reg_reg[15][8] 
       (.C(clk),
        .CE(\array_reg[15]_20 ),
        .CLR(fifo_reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[15][8] ));
  FDCE \array_reg_reg[15][9] 
       (.C(clk),
        .CE(\array_reg[15]_20 ),
        .CLR(fifo_reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[15][9] ));
  FDCE \array_reg_reg[1][0] 
       (.C(clk),
        .CE(\array_reg[1]_31 ),
        .CLR(fifo_reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[1][0] ));
  FDCE \array_reg_reg[1][10] 
       (.C(clk),
        .CE(\array_reg[1]_31 ),
        .CLR(fifo_reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[1][10] ));
  FDCE \array_reg_reg[1][11] 
       (.C(clk),
        .CE(\array_reg[1]_31 ),
        .CLR(fifo_reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[1][11] ));
  FDCE \array_reg_reg[1][12] 
       (.C(clk),
        .CE(\array_reg[1]_31 ),
        .CLR(fifo_reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[1][12] ));
  FDCE \array_reg_reg[1][13] 
       (.C(clk),
        .CE(\array_reg[1]_31 ),
        .CLR(fifo_reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[1][13] ));
  FDCE \array_reg_reg[1][14] 
       (.C(clk),
        .CE(\array_reg[1]_31 ),
        .CLR(fifo_reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[1][14] ));
  FDCE \array_reg_reg[1][15] 
       (.C(clk),
        .CE(\array_reg[1]_31 ),
        .CLR(fifo_reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[1][15] ));
  FDCE \array_reg_reg[1][1] 
       (.C(clk),
        .CE(\array_reg[1]_31 ),
        .CLR(fifo_reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[1][1] ));
  FDCE \array_reg_reg[1][2] 
       (.C(clk),
        .CE(\array_reg[1]_31 ),
        .CLR(fifo_reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[1][2] ));
  FDCE \array_reg_reg[1][3] 
       (.C(clk),
        .CE(\array_reg[1]_31 ),
        .CLR(fifo_reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[1][3] ));
  FDCE \array_reg_reg[1][4] 
       (.C(clk),
        .CE(\array_reg[1]_31 ),
        .CLR(fifo_reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[1][4] ));
  FDCE \array_reg_reg[1][5] 
       (.C(clk),
        .CE(\array_reg[1]_31 ),
        .CLR(fifo_reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[1][5] ));
  FDCE \array_reg_reg[1][6] 
       (.C(clk),
        .CE(\array_reg[1]_31 ),
        .CLR(fifo_reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[1][6] ));
  FDCE \array_reg_reg[1][7] 
       (.C(clk),
        .CE(\array_reg[1]_31 ),
        .CLR(fifo_reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[1][7] ));
  FDCE \array_reg_reg[1][8] 
       (.C(clk),
        .CE(\array_reg[1]_31 ),
        .CLR(fifo_reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[1][8] ));
  FDCE \array_reg_reg[1][9] 
       (.C(clk),
        .CE(\array_reg[1]_31 ),
        .CLR(fifo_reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[1][9] ));
  FDCE \array_reg_reg[2][0] 
       (.C(clk),
        .CE(\array_reg[2]_32 ),
        .CLR(fifo_reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[2][0] ));
  FDCE \array_reg_reg[2][10] 
       (.C(clk),
        .CE(\array_reg[2]_32 ),
        .CLR(fifo_reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[2][10] ));
  FDCE \array_reg_reg[2][11] 
       (.C(clk),
        .CE(\array_reg[2]_32 ),
        .CLR(fifo_reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[2][11] ));
  FDCE \array_reg_reg[2][12] 
       (.C(clk),
        .CE(\array_reg[2]_32 ),
        .CLR(fifo_reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[2][12] ));
  FDCE \array_reg_reg[2][13] 
       (.C(clk),
        .CE(\array_reg[2]_32 ),
        .CLR(fifo_reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[2][13] ));
  FDCE \array_reg_reg[2][14] 
       (.C(clk),
        .CE(\array_reg[2]_32 ),
        .CLR(fifo_reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[2][14] ));
  FDCE \array_reg_reg[2][15] 
       (.C(clk),
        .CE(\array_reg[2]_32 ),
        .CLR(fifo_reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[2][15] ));
  FDCE \array_reg_reg[2][1] 
       (.C(clk),
        .CE(\array_reg[2]_32 ),
        .CLR(fifo_reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[2][1] ));
  FDCE \array_reg_reg[2][2] 
       (.C(clk),
        .CE(\array_reg[2]_32 ),
        .CLR(fifo_reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[2][2] ));
  FDCE \array_reg_reg[2][3] 
       (.C(clk),
        .CE(\array_reg[2]_32 ),
        .CLR(fifo_reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[2][3] ));
  FDCE \array_reg_reg[2][4] 
       (.C(clk),
        .CE(\array_reg[2]_32 ),
        .CLR(fifo_reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[2][4] ));
  FDCE \array_reg_reg[2][5] 
       (.C(clk),
        .CE(\array_reg[2]_32 ),
        .CLR(fifo_reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[2][5] ));
  FDCE \array_reg_reg[2][6] 
       (.C(clk),
        .CE(\array_reg[2]_32 ),
        .CLR(fifo_reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[2][6] ));
  FDCE \array_reg_reg[2][7] 
       (.C(clk),
        .CE(\array_reg[2]_32 ),
        .CLR(fifo_reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[2][7] ));
  FDCE \array_reg_reg[2][8] 
       (.C(clk),
        .CE(\array_reg[2]_32 ),
        .CLR(fifo_reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[2][8] ));
  FDCE \array_reg_reg[2][9] 
       (.C(clk),
        .CE(\array_reg[2]_32 ),
        .CLR(fifo_reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[2][9] ));
  FDCE \array_reg_reg[3][0] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(fifo_reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[3][0] ));
  FDCE \array_reg_reg[3][10] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(fifo_reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[3][10] ));
  FDCE \array_reg_reg[3][11] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(fifo_reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[3][11] ));
  FDCE \array_reg_reg[3][12] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(fifo_reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[3][12] ));
  FDCE \array_reg_reg[3][13] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(fifo_reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[3][13] ));
  FDCE \array_reg_reg[3][14] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(fifo_reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[3][14] ));
  FDCE \array_reg_reg[3][15] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(fifo_reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[3][15] ));
  FDCE \array_reg_reg[3][1] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(fifo_reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[3][1] ));
  FDCE \array_reg_reg[3][2] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(fifo_reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[3][2] ));
  FDCE \array_reg_reg[3][3] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(fifo_reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[3][3] ));
  FDCE \array_reg_reg[3][4] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(fifo_reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[3][4] ));
  FDCE \array_reg_reg[3][5] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(fifo_reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[3][5] ));
  FDCE \array_reg_reg[3][6] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(fifo_reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[3][6] ));
  FDCE \array_reg_reg[3][7] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(fifo_reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[3][7] ));
  FDCE \array_reg_reg[3][8] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(fifo_reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[3][8] ));
  FDCE \array_reg_reg[3][9] 
       (.C(clk),
        .CE(\array_reg[3]_18 ),
        .CLR(fifo_reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[3][9] ));
  FDCE \array_reg_reg[4][0] 
       (.C(clk),
        .CE(\array_reg[4]_29 ),
        .CLR(fifo_reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[4][0] ));
  FDCE \array_reg_reg[4][10] 
       (.C(clk),
        .CE(\array_reg[4]_29 ),
        .CLR(fifo_reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[4][10] ));
  FDCE \array_reg_reg[4][11] 
       (.C(clk),
        .CE(\array_reg[4]_29 ),
        .CLR(fifo_reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[4][11] ));
  FDCE \array_reg_reg[4][12] 
       (.C(clk),
        .CE(\array_reg[4]_29 ),
        .CLR(fifo_reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[4][12] ));
  FDCE \array_reg_reg[4][13] 
       (.C(clk),
        .CE(\array_reg[4]_29 ),
        .CLR(fifo_reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[4][13] ));
  FDCE \array_reg_reg[4][14] 
       (.C(clk),
        .CE(\array_reg[4]_29 ),
        .CLR(fifo_reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[4][14] ));
  FDCE \array_reg_reg[4][15] 
       (.C(clk),
        .CE(\array_reg[4]_29 ),
        .CLR(fifo_reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[4][15] ));
  FDCE \array_reg_reg[4][1] 
       (.C(clk),
        .CE(\array_reg[4]_29 ),
        .CLR(fifo_reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[4][1] ));
  FDCE \array_reg_reg[4][2] 
       (.C(clk),
        .CE(\array_reg[4]_29 ),
        .CLR(fifo_reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[4][2] ));
  FDCE \array_reg_reg[4][3] 
       (.C(clk),
        .CE(\array_reg[4]_29 ),
        .CLR(fifo_reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[4][3] ));
  FDCE \array_reg_reg[4][4] 
       (.C(clk),
        .CE(\array_reg[4]_29 ),
        .CLR(fifo_reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[4][4] ));
  FDCE \array_reg_reg[4][5] 
       (.C(clk),
        .CE(\array_reg[4]_29 ),
        .CLR(fifo_reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[4][5] ));
  FDCE \array_reg_reg[4][6] 
       (.C(clk),
        .CE(\array_reg[4]_29 ),
        .CLR(fifo_reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[4][6] ));
  FDCE \array_reg_reg[4][7] 
       (.C(clk),
        .CE(\array_reg[4]_29 ),
        .CLR(fifo_reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[4][7] ));
  FDCE \array_reg_reg[4][8] 
       (.C(clk),
        .CE(\array_reg[4]_29 ),
        .CLR(fifo_reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[4][8] ));
  FDCE \array_reg_reg[4][9] 
       (.C(clk),
        .CE(\array_reg[4]_29 ),
        .CLR(fifo_reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[4][9] ));
  FDCE \array_reg_reg[5][0] 
       (.C(clk),
        .CE(\array_reg[5]_28 ),
        .CLR(fifo_reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[5][0] ));
  FDCE \array_reg_reg[5][10] 
       (.C(clk),
        .CE(\array_reg[5]_28 ),
        .CLR(fifo_reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[5][10] ));
  FDCE \array_reg_reg[5][11] 
       (.C(clk),
        .CE(\array_reg[5]_28 ),
        .CLR(fifo_reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[5][11] ));
  FDCE \array_reg_reg[5][12] 
       (.C(clk),
        .CE(\array_reg[5]_28 ),
        .CLR(fifo_reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[5][12] ));
  FDCE \array_reg_reg[5][13] 
       (.C(clk),
        .CE(\array_reg[5]_28 ),
        .CLR(fifo_reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[5][13] ));
  FDCE \array_reg_reg[5][14] 
       (.C(clk),
        .CE(\array_reg[5]_28 ),
        .CLR(fifo_reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[5][14] ));
  FDCE \array_reg_reg[5][15] 
       (.C(clk),
        .CE(\array_reg[5]_28 ),
        .CLR(fifo_reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[5][15] ));
  FDCE \array_reg_reg[5][1] 
       (.C(clk),
        .CE(\array_reg[5]_28 ),
        .CLR(fifo_reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[5][1] ));
  FDCE \array_reg_reg[5][2] 
       (.C(clk),
        .CE(\array_reg[5]_28 ),
        .CLR(fifo_reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[5][2] ));
  FDCE \array_reg_reg[5][3] 
       (.C(clk),
        .CE(\array_reg[5]_28 ),
        .CLR(fifo_reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[5][3] ));
  FDCE \array_reg_reg[5][4] 
       (.C(clk),
        .CE(\array_reg[5]_28 ),
        .CLR(fifo_reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[5][4] ));
  FDCE \array_reg_reg[5][5] 
       (.C(clk),
        .CE(\array_reg[5]_28 ),
        .CLR(fifo_reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[5][5] ));
  FDCE \array_reg_reg[5][6] 
       (.C(clk),
        .CE(\array_reg[5]_28 ),
        .CLR(fifo_reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[5][6] ));
  FDCE \array_reg_reg[5][7] 
       (.C(clk),
        .CE(\array_reg[5]_28 ),
        .CLR(fifo_reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[5][7] ));
  FDCE \array_reg_reg[5][8] 
       (.C(clk),
        .CE(\array_reg[5]_28 ),
        .CLR(fifo_reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[5][8] ));
  FDCE \array_reg_reg[5][9] 
       (.C(clk),
        .CE(\array_reg[5]_28 ),
        .CLR(fifo_reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[5][9] ));
  FDCE \array_reg_reg[6][0] 
       (.C(clk),
        .CE(\array_reg[6]_27 ),
        .CLR(fifo_reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[6][0] ));
  FDCE \array_reg_reg[6][10] 
       (.C(clk),
        .CE(\array_reg[6]_27 ),
        .CLR(fifo_reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[6][10] ));
  FDCE \array_reg_reg[6][11] 
       (.C(clk),
        .CE(\array_reg[6]_27 ),
        .CLR(fifo_reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[6][11] ));
  FDCE \array_reg_reg[6][12] 
       (.C(clk),
        .CE(\array_reg[6]_27 ),
        .CLR(fifo_reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[6][12] ));
  FDCE \array_reg_reg[6][13] 
       (.C(clk),
        .CE(\array_reg[6]_27 ),
        .CLR(fifo_reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[6][13] ));
  FDCE \array_reg_reg[6][14] 
       (.C(clk),
        .CE(\array_reg[6]_27 ),
        .CLR(fifo_reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[6][14] ));
  FDCE \array_reg_reg[6][15] 
       (.C(clk),
        .CE(\array_reg[6]_27 ),
        .CLR(fifo_reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[6][15] ));
  FDCE \array_reg_reg[6][1] 
       (.C(clk),
        .CE(\array_reg[6]_27 ),
        .CLR(fifo_reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[6][1] ));
  FDCE \array_reg_reg[6][2] 
       (.C(clk),
        .CE(\array_reg[6]_27 ),
        .CLR(fifo_reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[6][2] ));
  FDCE \array_reg_reg[6][3] 
       (.C(clk),
        .CE(\array_reg[6]_27 ),
        .CLR(fifo_reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[6][3] ));
  FDCE \array_reg_reg[6][4] 
       (.C(clk),
        .CE(\array_reg[6]_27 ),
        .CLR(fifo_reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[6][4] ));
  FDCE \array_reg_reg[6][5] 
       (.C(clk),
        .CE(\array_reg[6]_27 ),
        .CLR(fifo_reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[6][5] ));
  FDCE \array_reg_reg[6][6] 
       (.C(clk),
        .CE(\array_reg[6]_27 ),
        .CLR(fifo_reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[6][6] ));
  FDCE \array_reg_reg[6][7] 
       (.C(clk),
        .CE(\array_reg[6]_27 ),
        .CLR(fifo_reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[6][7] ));
  FDCE \array_reg_reg[6][8] 
       (.C(clk),
        .CE(\array_reg[6]_27 ),
        .CLR(fifo_reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[6][8] ));
  FDCE \array_reg_reg[6][9] 
       (.C(clk),
        .CE(\array_reg[6]_27 ),
        .CLR(fifo_reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[6][9] ));
  FDCE \array_reg_reg[7][0] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(fifo_reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[7][0] ));
  FDCE \array_reg_reg[7][10] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(fifo_reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[7][10] ));
  FDCE \array_reg_reg[7][11] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(fifo_reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[7][11] ));
  FDCE \array_reg_reg[7][12] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(fifo_reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[7][12] ));
  FDCE \array_reg_reg[7][13] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(fifo_reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[7][13] ));
  FDCE \array_reg_reg[7][14] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(fifo_reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[7][14] ));
  FDCE \array_reg_reg[7][15] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(fifo_reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[7][15] ));
  FDCE \array_reg_reg[7][1] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(fifo_reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[7][1] ));
  FDCE \array_reg_reg[7][2] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(fifo_reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[7][2] ));
  FDCE \array_reg_reg[7][3] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(fifo_reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[7][3] ));
  FDCE \array_reg_reg[7][4] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(fifo_reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[7][4] ));
  FDCE \array_reg_reg[7][5] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(fifo_reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[7][5] ));
  FDCE \array_reg_reg[7][6] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(fifo_reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[7][6] ));
  FDCE \array_reg_reg[7][7] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(fifo_reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[7][7] ));
  FDCE \array_reg_reg[7][8] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(fifo_reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[7][8] ));
  FDCE \array_reg_reg[7][9] 
       (.C(clk),
        .CE(\array_reg[7]_19 ),
        .CLR(fifo_reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[7][9] ));
  FDCE \array_reg_reg[8][0] 
       (.C(clk),
        .CE(\array_reg[8]_26 ),
        .CLR(fifo_reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[8][0] ));
  FDCE \array_reg_reg[8][10] 
       (.C(clk),
        .CE(\array_reg[8]_26 ),
        .CLR(fifo_reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[8][10] ));
  FDCE \array_reg_reg[8][11] 
       (.C(clk),
        .CE(\array_reg[8]_26 ),
        .CLR(fifo_reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[8][11] ));
  FDCE \array_reg_reg[8][12] 
       (.C(clk),
        .CE(\array_reg[8]_26 ),
        .CLR(fifo_reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[8][12] ));
  FDCE \array_reg_reg[8][13] 
       (.C(clk),
        .CE(\array_reg[8]_26 ),
        .CLR(fifo_reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[8][13] ));
  FDCE \array_reg_reg[8][14] 
       (.C(clk),
        .CE(\array_reg[8]_26 ),
        .CLR(fifo_reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[8][14] ));
  FDCE \array_reg_reg[8][15] 
       (.C(clk),
        .CE(\array_reg[8]_26 ),
        .CLR(fifo_reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[8][15] ));
  FDCE \array_reg_reg[8][1] 
       (.C(clk),
        .CE(\array_reg[8]_26 ),
        .CLR(fifo_reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[8][1] ));
  FDCE \array_reg_reg[8][2] 
       (.C(clk),
        .CE(\array_reg[8]_26 ),
        .CLR(fifo_reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[8][2] ));
  FDCE \array_reg_reg[8][3] 
       (.C(clk),
        .CE(\array_reg[8]_26 ),
        .CLR(fifo_reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[8][3] ));
  FDCE \array_reg_reg[8][4] 
       (.C(clk),
        .CE(\array_reg[8]_26 ),
        .CLR(fifo_reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[8][4] ));
  FDCE \array_reg_reg[8][5] 
       (.C(clk),
        .CE(\array_reg[8]_26 ),
        .CLR(fifo_reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[8][5] ));
  FDCE \array_reg_reg[8][6] 
       (.C(clk),
        .CE(\array_reg[8]_26 ),
        .CLR(fifo_reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[8][6] ));
  FDCE \array_reg_reg[8][7] 
       (.C(clk),
        .CE(\array_reg[8]_26 ),
        .CLR(fifo_reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[8][7] ));
  FDCE \array_reg_reg[8][8] 
       (.C(clk),
        .CE(\array_reg[8]_26 ),
        .CLR(fifo_reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[8][8] ));
  FDCE \array_reg_reg[8][9] 
       (.C(clk),
        .CE(\array_reg[8]_26 ),
        .CLR(fifo_reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[8][9] ));
  FDCE \array_reg_reg[9][0] 
       (.C(clk),
        .CE(\array_reg[9]_25 ),
        .CLR(fifo_reset),
        .D(D[0]),
        .Q(\array_reg_reg_n_0_[9][0] ));
  FDCE \array_reg_reg[9][10] 
       (.C(clk),
        .CE(\array_reg[9]_25 ),
        .CLR(fifo_reset),
        .D(D[10]),
        .Q(\array_reg_reg_n_0_[9][10] ));
  FDCE \array_reg_reg[9][11] 
       (.C(clk),
        .CE(\array_reg[9]_25 ),
        .CLR(fifo_reset),
        .D(D[11]),
        .Q(\array_reg_reg_n_0_[9][11] ));
  FDCE \array_reg_reg[9][12] 
       (.C(clk),
        .CE(\array_reg[9]_25 ),
        .CLR(fifo_reset),
        .D(D[12]),
        .Q(\array_reg_reg_n_0_[9][12] ));
  FDCE \array_reg_reg[9][13] 
       (.C(clk),
        .CE(\array_reg[9]_25 ),
        .CLR(fifo_reset),
        .D(D[13]),
        .Q(\array_reg_reg_n_0_[9][13] ));
  FDCE \array_reg_reg[9][14] 
       (.C(clk),
        .CE(\array_reg[9]_25 ),
        .CLR(fifo_reset),
        .D(D[14]),
        .Q(\array_reg_reg_n_0_[9][14] ));
  FDCE \array_reg_reg[9][15] 
       (.C(clk),
        .CE(\array_reg[9]_25 ),
        .CLR(fifo_reset),
        .D(D[15]),
        .Q(\array_reg_reg_n_0_[9][15] ));
  FDCE \array_reg_reg[9][1] 
       (.C(clk),
        .CE(\array_reg[9]_25 ),
        .CLR(fifo_reset),
        .D(D[1]),
        .Q(\array_reg_reg_n_0_[9][1] ));
  FDCE \array_reg_reg[9][2] 
       (.C(clk),
        .CE(\array_reg[9]_25 ),
        .CLR(fifo_reset),
        .D(D[2]),
        .Q(\array_reg_reg_n_0_[9][2] ));
  FDCE \array_reg_reg[9][3] 
       (.C(clk),
        .CE(\array_reg[9]_25 ),
        .CLR(fifo_reset),
        .D(D[3]),
        .Q(\array_reg_reg_n_0_[9][3] ));
  FDCE \array_reg_reg[9][4] 
       (.C(clk),
        .CE(\array_reg[9]_25 ),
        .CLR(fifo_reset),
        .D(D[4]),
        .Q(\array_reg_reg_n_0_[9][4] ));
  FDCE \array_reg_reg[9][5] 
       (.C(clk),
        .CE(\array_reg[9]_25 ),
        .CLR(fifo_reset),
        .D(D[5]),
        .Q(\array_reg_reg_n_0_[9][5] ));
  FDCE \array_reg_reg[9][6] 
       (.C(clk),
        .CE(\array_reg[9]_25 ),
        .CLR(fifo_reset),
        .D(D[6]),
        .Q(\array_reg_reg_n_0_[9][6] ));
  FDCE \array_reg_reg[9][7] 
       (.C(clk),
        .CE(\array_reg[9]_25 ),
        .CLR(fifo_reset),
        .D(D[7]),
        .Q(\array_reg_reg_n_0_[9][7] ));
  FDCE \array_reg_reg[9][8] 
       (.C(clk),
        .CE(\array_reg[9]_25 ),
        .CLR(fifo_reset),
        .D(D[8]),
        .Q(\array_reg_reg_n_0_[9][8] ));
  FDCE \array_reg_reg[9][9] 
       (.C(clk),
        .CE(\array_reg[9]_25 ),
        .CLR(fifo_reset),
        .D(D[9]),
        .Q(\array_reg_reg_n_0_[9][9] ));
  LUT5 #(
    .INIT(32'hFB00FB30)) 
    empty_reg_i_1__0
       (.I0(out_fifo_full),
        .I1(wr),
        .I2(ClkOutTick),
        .I3(empty_reg),
        .I4(empty_reg_i_2_n_0),
        .O(empty_reg_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h95556AAAFFFFFFFF)) 
    empty_reg_i_2
       (.I0(r_ptr_reg_reg[3]),
        .I1(r_ptr_reg_reg[2]),
        .I2(r_ptr_reg_reg[0]),
        .I3(r_ptr_reg_reg[1]),
        .I4(w_ptr_reg_reg[3]),
        .I5(empty_reg_i_3_n_0),
        .O(empty_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000900906900000)) 
    empty_reg_i_3
       (.I0(r_ptr_reg_reg[2]),
        .I1(w_ptr_reg_reg[2]),
        .I2(w_ptr_reg_reg[1]),
        .I3(r_ptr_reg_reg[1]),
        .I4(r_ptr_reg_reg[0]),
        .I5(w_ptr_reg_reg[0]),
        .O(empty_reg_i_3_n_0));
  FDPE empty_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_reg_i_1__0_n_0),
        .PRE(fifo_reset),
        .Q(empty_reg));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFAF0C00)) 
    full_reg_i_1__0
       (.I0(empty_reg),
        .I1(full_reg_i_2__0_n_0),
        .I2(ClkOutTick),
        .I3(wr),
        .I4(out_fifo_full),
        .O(full_reg_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h2888888882222222)) 
    full_reg_i_2__0
       (.I0(full_reg_i_3__0_n_0),
        .I1(w_ptr_reg_reg[3]),
        .I2(w_ptr_reg_reg[0]),
        .I3(w_ptr_reg_reg[1]),
        .I4(w_ptr_reg_reg[2]),
        .I5(r_ptr_reg_reg[3]),
        .O(full_reg_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0840021010084002)) 
    full_reg_i_3__0
       (.I0(r_ptr_reg_reg[0]),
        .I1(r_ptr_reg_reg[2]),
        .I2(w_ptr_reg_reg[0]),
        .I3(w_ptr_reg_reg[1]),
        .I4(w_ptr_reg_reg[2]),
        .I5(r_ptr_reg_reg[1]),
        .O(full_reg_i_3__0_n_0));
  FDCE full_reg_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(fifo_reset),
        .D(full_reg_i_1__0_n_0),
        .Q(out_fifo_full));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_ptr_reg[0]_i_1 
       (.I0(r_ptr_reg_reg[0]),
        .O(\r_ptr_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_ptr_reg[1]_i_1 
       (.I0(r_ptr_reg_reg[0]),
        .I1(r_ptr_reg_reg[1]),
        .O(\r_ptr_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_ptr_reg[2]_i_1 
       (.I0(r_ptr_reg_reg[2]),
        .I1(r_ptr_reg_reg[1]),
        .I2(r_ptr_reg_reg[0]),
        .O(\r_ptr_reg[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8C)) 
    \r_ptr_reg[3]_i_1__0 
       (.I0(wr),
        .I1(ClkOutTick),
        .I2(empty_reg),
        .O(\r_ptr_reg[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_ptr_reg[3]_i_2 
       (.I0(r_ptr_reg_reg[1]),
        .I1(r_ptr_reg_reg[0]),
        .I2(r_ptr_reg_reg[2]),
        .I3(r_ptr_reg_reg[3]),
        .O(\r_ptr_reg[3]_i_2_n_0 ));
  FDCE \r_ptr_reg_reg[0] 
       (.C(clk),
        .CE(\r_ptr_reg[3]_i_1__0_n_0 ),
        .CLR(fifo_reset),
        .D(\r_ptr_reg[0]_i_1_n_0 ),
        .Q(r_ptr_reg_reg[0]));
  FDCE \r_ptr_reg_reg[1] 
       (.C(clk),
        .CE(\r_ptr_reg[3]_i_1__0_n_0 ),
        .CLR(fifo_reset),
        .D(\r_ptr_reg[1]_i_1_n_0 ),
        .Q(r_ptr_reg_reg[1]));
  FDCE \r_ptr_reg_reg[2] 
       (.C(clk),
        .CE(\r_ptr_reg[3]_i_1__0_n_0 ),
        .CLR(fifo_reset),
        .D(\r_ptr_reg[2]_i_1_n_0 ),
        .Q(r_ptr_reg_reg[2]));
  FDCE \r_ptr_reg_reg[3] 
       (.C(clk),
        .CE(\r_ptr_reg[3]_i_1__0_n_0 ),
        .CLR(fifo_reset),
        .D(\r_ptr_reg[3]_i_2_n_0 ),
        .Q(r_ptr_reg_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \w_ptr_reg[0]_i_1__0 
       (.I0(w_ptr_reg_reg[0]),
        .O(\w_ptr_reg[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w_ptr_reg[1]_i_1__0 
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .O(\w_ptr_reg[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \w_ptr_reg[2]_i_1__0 
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[2]),
        .O(\w_ptr_reg[2]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h8C)) 
    \w_ptr_reg[3]_i_1__0 
       (.I0(ClkOutTick),
        .I1(wr),
        .I2(out_fifo_full),
        .O(\w_ptr_reg[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \w_ptr_reg[3]_i_2__0 
       (.I0(w_ptr_reg_reg[2]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[0]),
        .I3(w_ptr_reg_reg[3]),
        .O(\w_ptr_reg[3]_i_2__0_n_0 ));
  FDCE \w_ptr_reg_reg[0] 
       (.C(clk),
        .CE(\w_ptr_reg[3]_i_1__0_n_0 ),
        .CLR(fifo_reset),
        .D(\w_ptr_reg[0]_i_1__0_n_0 ),
        .Q(w_ptr_reg_reg[0]));
  FDCE \w_ptr_reg_reg[1] 
       (.C(clk),
        .CE(\w_ptr_reg[3]_i_1__0_n_0 ),
        .CLR(fifo_reset),
        .D(\w_ptr_reg[1]_i_1__0_n_0 ),
        .Q(w_ptr_reg_reg[1]));
  FDCE \w_ptr_reg_reg[2] 
       (.C(clk),
        .CE(\w_ptr_reg[3]_i_1__0_n_0 ),
        .CLR(fifo_reset),
        .D(\w_ptr_reg[2]_i_1__0_n_0 ),
        .Q(w_ptr_reg_reg[2]));
  FDCE \w_ptr_reg_reg[3] 
       (.C(clk),
        .CE(\w_ptr_reg[3]_i_1__0_n_0 ),
        .CLR(fifo_reset),
        .D(\w_ptr_reg[3]_i_2__0_n_0 ),
        .Q(w_ptr_reg_reg[3]));
endmodule

(* ORIG_REF_NAME = "sr_2B_16bit" *) 
module GPIOTest_GPIOInterface_0_0_sr_2B_16bit
   (SR,
    D,
    reset_n,
    E,
    DIn,
    clk);
  output [0:0]SR;
  output [15:0]D;
  input reset_n;
  input [0:0]E;
  input [7:0]DIn;
  input clk;

  wire [15:0]D;
  wire [7:0]DIn;
  wire [0:0]E;
  wire [0:0]SR;
  wire clk;
  wire reset_n;

  FDRE \data_sr_content_reg[0][0] 
       (.C(clk),
        .CE(E),
        .D(DIn[0]),
        .Q(D[0]),
        .R(SR));
  FDRE \data_sr_content_reg[0][1] 
       (.C(clk),
        .CE(E),
        .D(DIn[1]),
        .Q(D[1]),
        .R(SR));
  FDRE \data_sr_content_reg[0][2] 
       (.C(clk),
        .CE(E),
        .D(DIn[2]),
        .Q(D[2]),
        .R(SR));
  FDRE \data_sr_content_reg[0][3] 
       (.C(clk),
        .CE(E),
        .D(DIn[3]),
        .Q(D[3]),
        .R(SR));
  FDRE \data_sr_content_reg[0][4] 
       (.C(clk),
        .CE(E),
        .D(DIn[4]),
        .Q(D[4]),
        .R(SR));
  FDRE \data_sr_content_reg[0][5] 
       (.C(clk),
        .CE(E),
        .D(DIn[5]),
        .Q(D[5]),
        .R(SR));
  FDRE \data_sr_content_reg[0][6] 
       (.C(clk),
        .CE(E),
        .D(DIn[6]),
        .Q(D[6]),
        .R(SR));
  FDRE \data_sr_content_reg[0][7] 
       (.C(clk),
        .CE(E),
        .D(DIn[7]),
        .Q(D[7]),
        .R(SR));
  FDRE \data_sr_content_reg[1][0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(D[8]),
        .R(SR));
  FDRE \data_sr_content_reg[1][1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(D[9]),
        .R(SR));
  FDRE \data_sr_content_reg[1][2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(D[10]),
        .R(SR));
  FDRE \data_sr_content_reg[1][3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(D[11]),
        .R(SR));
  FDRE \data_sr_content_reg[1][4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(D[12]),
        .R(SR));
  FDRE \data_sr_content_reg[1][5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(D[13]),
        .R(SR));
  FDRE \data_sr_content_reg[1][6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(D[14]),
        .R(SR));
  FDRE \data_sr_content_reg[1][7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(D[15]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    nen_ctrl0_i_1
       (.I0(reset_n),
        .O(SR));
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
