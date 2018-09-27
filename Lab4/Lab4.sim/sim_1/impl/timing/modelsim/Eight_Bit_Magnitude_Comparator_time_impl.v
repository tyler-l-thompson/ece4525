// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Wed Sep 26 19:36:23 2018
// Host        : Ferrari running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Dexter/Documents/ECE4525/Lab4/Lab4.sim/sim_1/impl/timing/modelsim/Eight_Bit_Magnitude_Comparator_time_impl.v
// Design      : Eight_Bit_Magnitude_Comparator
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "a887679c" *) 
(* NotValidForBitStream *)
module Eight_Bit_Magnitude_Comparator
   (LA,
    P_GT_QIN,
    P_LT_QIN,
    P0,
    P1,
    P2,
    P3,
    P4,
    P5,
    P6,
    P7,
    Q0,
    Q1,
    Q2,
    Q3,
    Q4,
    Q5,
    Q6,
    Q7,
    P_GT_QOUT,
    P_LT_QOUT);
  input LA;
  input P_GT_QIN;
  input P_LT_QIN;
  input P0;
  input P1;
  input P2;
  input P3;
  input P4;
  input P5;
  input P6;
  input P7;
  input Q0;
  input Q1;
  input Q2;
  input Q3;
  input Q4;
  input Q5;
  input Q6;
  input Q7;
  output P_GT_QOUT;
  output P_LT_QOUT;

  wire LA;
  wire LA_IBUF;
  wire P0;
  wire P0_IBUF;
  wire P1;
  wire P1_IBUF;
  wire P2;
  wire P2_IBUF;
  wire P3;
  wire P3_IBUF;
  wire P4;
  wire P4_IBUF;
  wire P5;
  wire P5_IBUF;
  wire P6;
  wire P6_IBUF;
  wire P7;
  wire P7_IBUF;
  wire P_GT_QIN;
  wire P_GT_QIN_IBUF;
  wire P_GT_QOUT;
  wire P_GT_QOUT_OBUF;
  wire P_GT_QOUT_OBUF_inst_i_10_n_0;
  wire P_GT_QOUT_OBUF_inst_i_11_n_0;
  wire P_GT_QOUT_OBUF_inst_i_12_n_0;
  wire P_GT_QOUT_OBUF_inst_i_13_n_0;
  wire P_GT_QOUT_OBUF_inst_i_14_n_0;
  wire P_GT_QOUT_OBUF_inst_i_15_n_0;
  wire P_GT_QOUT_OBUF_inst_i_16_n_0;
  wire P_GT_QOUT_OBUF_inst_i_17_n_0;
  wire P_GT_QOUT_OBUF_inst_i_18_n_0;
  wire P_GT_QOUT_OBUF_inst_i_19_n_0;
  wire P_GT_QOUT_OBUF_inst_i_20_n_0;
  wire P_GT_QOUT_OBUF_inst_i_21_n_0;
  wire P_GT_QOUT_OBUF_inst_i_22_n_0;
  wire P_GT_QOUT_OBUF_inst_i_23_n_0;
  wire P_GT_QOUT_OBUF_inst_i_24_n_0;
  wire P_GT_QOUT_OBUF_inst_i_2_n_0;
  wire P_GT_QOUT_OBUF_inst_i_3_n_0;
  wire P_GT_QOUT_OBUF_inst_i_4_n_0;
  wire P_GT_QOUT_OBUF_inst_i_5_n_0;
  wire P_GT_QOUT_OBUF_inst_i_6_n_0;
  wire P_GT_QOUT_OBUF_inst_i_7_n_0;
  wire P_GT_QOUT_OBUF_inst_i_8_n_0;
  wire P_GT_QOUT_OBUF_inst_i_9_n_0;
  wire P_LT_QIN;
  wire P_LT_QIN_IBUF;
  wire P_LT_QOUT;
  wire P_LT_QOUT_OBUF;
  wire P_LT_QOUT_OBUF_inst_i_2_n_0;
  wire P_LT_QOUT_OBUF_inst_i_3_n_0;
  wire P_LT_QOUT_OBUF_inst_i_4_n_0;
  wire P_LT_QOUT_OBUF_inst_i_5_n_0;
  wire P_LT_QOUT_OBUF_inst_i_6_n_0;
  wire P_LT_QOUT_OBUF_inst_i_7_n_0;
  wire Q0;
  wire Q0_IBUF;
  wire Q1;
  wire Q1_IBUF;
  wire Q2;
  wire Q2_IBUF;
  wire Q3;
  wire Q3_IBUF;
  wire Q4;
  wire Q4_IBUF;
  wire Q5;
  wire Q5_IBUF;
  wire Q6;
  wire Q6_IBUF;
  wire Q7;
  wire Q7_IBUF;

initial begin
 $sdf_annotate("Eight_Bit_Magnitude_Comparator_time_impl.sdf",,,,"tool_control");
end
  IBUF LA_IBUF_inst
       (.I(LA),
        .O(LA_IBUF));
  IBUF P0_IBUF_inst
       (.I(P0),
        .O(P0_IBUF));
  IBUF P1_IBUF_inst
       (.I(P1),
        .O(P1_IBUF));
  IBUF P2_IBUF_inst
       (.I(P2),
        .O(P2_IBUF));
  IBUF P3_IBUF_inst
       (.I(P3),
        .O(P3_IBUF));
  IBUF P4_IBUF_inst
       (.I(P4),
        .O(P4_IBUF));
  IBUF P5_IBUF_inst
       (.I(P5),
        .O(P5_IBUF));
  IBUF P6_IBUF_inst
       (.I(P6),
        .O(P6_IBUF));
  IBUF P7_IBUF_inst
       (.I(P7),
        .O(P7_IBUF));
  IBUF P_GT_QIN_IBUF_inst
       (.I(P_GT_QIN),
        .O(P_GT_QIN_IBUF));
  OBUF P_GT_QOUT_OBUF_inst
       (.I(P_GT_QOUT_OBUF),
        .O(P_GT_QOUT));
  LUT6 #(
    .INIT(64'h55559AAA555559AA)) 
    P_GT_QOUT_OBUF_inst_i_1
       (.I0(LA_IBUF),
        .I1(P_GT_QOUT_OBUF_inst_i_2_n_0),
        .I2(P_GT_QOUT_OBUF_inst_i_3_n_0),
        .I3(P_GT_QOUT_OBUF_inst_i_4_n_0),
        .I4(P_GT_QOUT_OBUF_inst_i_5_n_0),
        .I5(P_GT_QOUT_OBUF_inst_i_6_n_0),
        .O(P_GT_QOUT_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hDF2001FE)) 
    P_GT_QOUT_OBUF_inst_i_10
       (.I0(P6_IBUF),
        .I1(P_GT_QOUT_OBUF_inst_i_17_n_0),
        .I2(P5_IBUF),
        .I3(P7_IBUF),
        .I4(LA_IBUF),
        .O(P_GT_QOUT_OBUF_inst_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    P_GT_QOUT_OBUF_inst_i_11
       (.I0(P_GT_QOUT_OBUF_inst_i_18_n_0),
        .I1(Q5_IBUF),
        .I2(LA_IBUF),
        .O(P_GT_QOUT_OBUF_inst_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h69)) 
    P_GT_QOUT_OBUF_inst_i_12
       (.I0(P_GT_QOUT_OBUF_inst_i_17_n_0),
        .I1(LA_IBUF),
        .I2(P5_IBUF),
        .O(P_GT_QOUT_OBUF_inst_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF69F6FF9)) 
    P_GT_QOUT_OBUF_inst_i_13
       (.I0(Q5_IBUF),
        .I1(P_GT_QOUT_OBUF_inst_i_18_n_0),
        .I2(P5_IBUF),
        .I3(LA_IBUF),
        .I4(P_GT_QOUT_OBUF_inst_i_17_n_0),
        .O(P_GT_QOUT_OBUF_inst_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hA956A659)) 
    P_GT_QOUT_OBUF_inst_i_14
       (.I0(P1_IBUF),
        .I1(P0_IBUF),
        .I2(LA_IBUF),
        .I3(Q1_IBUF),
        .I4(Q0_IBUF),
        .O(P_GT_QOUT_OBUF_inst_i_14_n_0));
  LUT6 #(
    .INIT(64'h1281482484182142)) 
    P_GT_QOUT_OBUF_inst_i_15
       (.I0(LA_IBUF),
        .I1(Q3_IBUF),
        .I2(Q2_IBUF),
        .I3(P_GT_QOUT_OBUF_inst_i_19_n_0),
        .I4(P_GT_QOUT_OBUF_inst_i_20_n_0),
        .I5(P_GT_QOUT_OBUF_inst_i_21_n_0),
        .O(P_GT_QOUT_OBUF_inst_i_15_n_0));
  LUT5 #(
    .INIT(32'h7130F371)) 
    P_GT_QOUT_OBUF_inst_i_16
       (.I0(P_GT_QOUT_OBUF_inst_i_22_n_0),
        .I1(P_GT_QOUT_OBUF_inst_i_23_n_0),
        .I2(P_GT_QOUT_OBUF_inst_i_20_n_0),
        .I3(P_GT_QOUT_OBUF_inst_i_21_n_0),
        .I4(P_GT_QOUT_OBUF_inst_i_24_n_0),
        .O(P_GT_QOUT_OBUF_inst_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    P_GT_QOUT_OBUF_inst_i_17
       (.I0(P3_IBUF),
        .I1(P2_IBUF),
        .I2(P1_IBUF),
        .I3(P0_IBUF),
        .I4(P4_IBUF),
        .I5(LA_IBUF),
        .O(P_GT_QOUT_OBUF_inst_i_17_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    P_GT_QOUT_OBUF_inst_i_18
       (.I0(Q3_IBUF),
        .I1(Q2_IBUF),
        .I2(Q1_IBUF),
        .I3(Q0_IBUF),
        .I4(Q4_IBUF),
        .I5(LA_IBUF),
        .O(P_GT_QOUT_OBUF_inst_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h01)) 
    P_GT_QOUT_OBUF_inst_i_19
       (.I0(Q0_IBUF),
        .I1(Q1_IBUF),
        .I2(LA_IBUF),
        .O(P_GT_QOUT_OBUF_inst_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFF00000001FFFE)) 
    P_GT_QOUT_OBUF_inst_i_2
       (.I0(P3_IBUF),
        .I1(P2_IBUF),
        .I2(P1_IBUF),
        .I3(P0_IBUF),
        .I4(P4_IBUF),
        .I5(LA_IBUF),
        .O(P_GT_QOUT_OBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFF0001FE)) 
    P_GT_QOUT_OBUF_inst_i_20
       (.I0(P0_IBUF),
        .I1(P1_IBUF),
        .I2(P2_IBUF),
        .I3(P3_IBUF),
        .I4(LA_IBUF),
        .O(P_GT_QOUT_OBUF_inst_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF01E)) 
    P_GT_QOUT_OBUF_inst_i_21
       (.I0(P1_IBUF),
        .I1(P0_IBUF),
        .I2(P2_IBUF),
        .I3(LA_IBUF),
        .O(P_GT_QOUT_OBUF_inst_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hBFD30BAB)) 
    P_GT_QOUT_OBUF_inst_i_22
       (.I0(Q0_IBUF),
        .I1(P0_IBUF),
        .I2(P1_IBUF),
        .I3(LA_IBUF),
        .I4(Q1_IBUF),
        .O(P_GT_QOUT_OBUF_inst_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFF0001FE)) 
    P_GT_QOUT_OBUF_inst_i_23
       (.I0(Q0_IBUF),
        .I1(Q1_IBUF),
        .I2(Q2_IBUF),
        .I3(Q3_IBUF),
        .I4(LA_IBUF),
        .O(P_GT_QOUT_OBUF_inst_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF01E)) 
    P_GT_QOUT_OBUF_inst_i_24
       (.I0(Q1_IBUF),
        .I1(Q0_IBUF),
        .I2(Q2_IBUF),
        .I3(LA_IBUF),
        .O(P_GT_QOUT_OBUF_inst_i_24_n_0));
  LUT6 #(
    .INIT(64'hFFFF00000001FFFE)) 
    P_GT_QOUT_OBUF_inst_i_3
       (.I0(Q3_IBUF),
        .I1(Q2_IBUF),
        .I2(Q1_IBUF),
        .I3(Q0_IBUF),
        .I4(Q4_IBUF),
        .I5(LA_IBUF),
        .O(P_GT_QOUT_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000099009900000)) 
    P_GT_QOUT_OBUF_inst_i_4
       (.I0(P_GT_QOUT_OBUF_inst_i_7_n_0),
        .I1(P_GT_QOUT_OBUF_inst_i_8_n_0),
        .I2(P_GT_QOUT_OBUF_inst_i_9_n_0),
        .I3(P_GT_QOUT_OBUF_inst_i_10_n_0),
        .I4(P_GT_QOUT_OBUF_inst_i_11_n_0),
        .I5(P_GT_QOUT_OBUF_inst_i_12_n_0),
        .O(P_GT_QOUT_OBUF_inst_i_4_n_0));
  LUT5 #(
    .INIT(32'h173F0317)) 
    P_GT_QOUT_OBUF_inst_i_5
       (.I0(P_GT_QOUT_OBUF_inst_i_13_n_0),
        .I1(P_GT_QOUT_OBUF_inst_i_9_n_0),
        .I2(P_GT_QOUT_OBUF_inst_i_10_n_0),
        .I3(P_GT_QOUT_OBUF_inst_i_7_n_0),
        .I4(P_GT_QOUT_OBUF_inst_i_8_n_0),
        .O(P_GT_QOUT_OBUF_inst_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF80080000)) 
    P_GT_QOUT_OBUF_inst_i_6
       (.I0(P_GT_QOUT_OBUF_inst_i_14_n_0),
        .I1(P_GT_QOUT_OBUF_inst_i_15_n_0),
        .I2(P0_IBUF),
        .I3(Q0_IBUF),
        .I4(P_GT_QIN_IBUF),
        .I5(P_GT_QOUT_OBUF_inst_i_16_n_0),
        .O(P_GT_QOUT_OBUF_inst_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hD21E)) 
    P_GT_QOUT_OBUF_inst_i_7
       (.I0(P5_IBUF),
        .I1(P_GT_QOUT_OBUF_inst_i_17_n_0),
        .I2(P6_IBUF),
        .I3(LA_IBUF),
        .O(P_GT_QOUT_OBUF_inst_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hD21E)) 
    P_GT_QOUT_OBUF_inst_i_8
       (.I0(Q5_IBUF),
        .I1(P_GT_QOUT_OBUF_inst_i_18_n_0),
        .I2(Q6_IBUF),
        .I3(LA_IBUF),
        .O(P_GT_QOUT_OBUF_inst_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h20DFFE01)) 
    P_GT_QOUT_OBUF_inst_i_9
       (.I0(Q6_IBUF),
        .I1(P_GT_QOUT_OBUF_inst_i_18_n_0),
        .I2(Q5_IBUF),
        .I3(Q7_IBUF),
        .I4(LA_IBUF),
        .O(P_GT_QOUT_OBUF_inst_i_9_n_0));
  IBUF P_LT_QIN_IBUF_inst
       (.I(P_LT_QIN),
        .O(P_LT_QIN_IBUF));
  OBUF P_LT_QOUT_OBUF_inst
       (.I(P_LT_QOUT_OBUF),
        .O(P_LT_QOUT));
  LUT6 #(
    .INIT(64'h55559AAA555559AA)) 
    P_LT_QOUT_OBUF_inst_i_1
       (.I0(LA_IBUF),
        .I1(P_GT_QOUT_OBUF_inst_i_3_n_0),
        .I2(P_GT_QOUT_OBUF_inst_i_2_n_0),
        .I3(P_GT_QOUT_OBUF_inst_i_4_n_0),
        .I4(P_LT_QOUT_OBUF_inst_i_2_n_0),
        .I5(P_LT_QOUT_OBUF_inst_i_3_n_0),
        .O(P_LT_QOUT_OBUF));
  LUT5 #(
    .INIT(32'hFF4D4D00)) 
    P_LT_QOUT_OBUF_inst_i_2
       (.I0(P_LT_QOUT_OBUF_inst_i_4_n_0),
        .I1(P_GT_QOUT_OBUF_inst_i_7_n_0),
        .I2(P_GT_QOUT_OBUF_inst_i_8_n_0),
        .I3(P_GT_QOUT_OBUF_inst_i_10_n_0),
        .I4(P_GT_QOUT_OBUF_inst_i_9_n_0),
        .O(P_LT_QOUT_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hECCCCCCCFCCCECCC)) 
    P_LT_QOUT_OBUF_inst_i_3
       (.I0(P_LT_QIN_IBUF),
        .I1(P_LT_QOUT_OBUF_inst_i_5_n_0),
        .I2(P_GT_QOUT_OBUF_inst_i_14_n_0),
        .I3(P_GT_QOUT_OBUF_inst_i_15_n_0),
        .I4(Q0_IBUF),
        .I5(P0_IBUF),
        .O(P_LT_QOUT_OBUF_inst_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h9FF6F96F)) 
    P_LT_QOUT_OBUF_inst_i_4
       (.I0(Q5_IBUF),
        .I1(P_GT_QOUT_OBUF_inst_i_18_n_0),
        .I2(P5_IBUF),
        .I3(LA_IBUF),
        .I4(P_GT_QOUT_OBUF_inst_i_17_n_0),
        .O(P_LT_QOUT_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'h80F8FFFF000080F8)) 
    P_LT_QOUT_OBUF_inst_i_5
       (.I0(P_LT_QOUT_OBUF_inst_i_6_n_0),
        .I1(P_LT_QOUT_OBUF_inst_i_7_n_0),
        .I2(P_GT_QOUT_OBUF_inst_i_24_n_0),
        .I3(P_GT_QOUT_OBUF_inst_i_21_n_0),
        .I4(P_GT_QOUT_OBUF_inst_i_20_n_0),
        .I5(P_GT_QOUT_OBUF_inst_i_23_n_0),
        .O(P_LT_QOUT_OBUF_inst_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h39)) 
    P_LT_QOUT_OBUF_inst_i_6
       (.I0(P0_IBUF),
        .I1(P1_IBUF),
        .I2(LA_IBUF),
        .O(P_LT_QOUT_OBUF_inst_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hC6)) 
    P_LT_QOUT_OBUF_inst_i_7
       (.I0(Q0_IBUF),
        .I1(Q1_IBUF),
        .I2(LA_IBUF),
        .O(P_LT_QOUT_OBUF_inst_i_7_n_0));
  IBUF Q0_IBUF_inst
       (.I(Q0),
        .O(Q0_IBUF));
  IBUF Q1_IBUF_inst
       (.I(Q1),
        .O(Q1_IBUF));
  IBUF Q2_IBUF_inst
       (.I(Q2),
        .O(Q2_IBUF));
  IBUF Q3_IBUF_inst
       (.I(Q3),
        .O(Q3_IBUF));
  IBUF Q4_IBUF_inst
       (.I(Q4),
        .O(Q4_IBUF));
  IBUF Q5_IBUF_inst
       (.I(Q5),
        .O(Q5_IBUF));
  IBUF Q6_IBUF_inst
       (.I(Q6),
        .O(Q6_IBUF));
  IBUF Q7_IBUF_inst
       (.I(Q7),
        .O(Q7_IBUF));
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
