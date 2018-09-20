// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Wed Sep 19 18:30:34 2018
// Host        : Ferrari running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Dexter/Documents/ECE4525/Lab3/Lab3.sim/sim_1/impl/timing/modelsim/Task_One_time_impl.v
// Design      : Task_One
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "d9a4136e" *) 
(* NotValidForBitStream *)
module Task_One
   (A,
    B,
    CIN,
    C0,
    C1,
    C2,
    C3,
    Sel0,
    Sel1,
    Sel2,
    Sel3,
    SUM,
    COUT,
    Y0,
    Y1,
    Y2,
    Y3);
  input A;
  input B;
  input CIN;
  input C0;
  input C1;
  input C2;
  input C3;
  input Sel0;
  input Sel1;
  input Sel2;
  input Sel3;
  output SUM;
  output COUT;
  output Y0;
  output Y1;
  output Y2;
  output Y3;

  wire A;
  wire A_IBUF;
  wire B;
  wire B_IBUF;
  wire C0;
  wire C0_IBUF;
  wire C1;
  wire C1_IBUF;
  wire C2;
  wire C2_IBUF;
  wire C3;
  wire C3_IBUF;
  wire CIN;
  wire CIN_IBUF;
  wire COUT;
  wire COUT_OBUF;
  wire SUM;
  wire SUM_OBUF;
  wire Sel0;
  wire Sel0_IBUF;
  wire Sel1;
  wire Sel1_IBUF;
  wire Sel2;
  wire Sel2_IBUF;
  wire Sel3;
  wire Sel3_IBUF;
  wire Y0;
  wire Y0_OBUF;
  wire Y1;
  wire Y1_OBUF;
  wire Y2;
  wire Y2_OBUF;
  wire Y3;
  wire Y3_OBUF;
  wire Y3_OBUF_inst_i_2_n_0;
  wire output0__0;

initial begin
 $sdf_annotate("Task_One_time_impl.sdf",,,,"tool_control");
end
  IBUF A_IBUF_inst
       (.I(A),
        .O(A_IBUF));
  IBUF B_IBUF_inst
       (.I(B),
        .O(B_IBUF));
  IBUF C0_IBUF_inst
       (.I(C0),
        .O(C0_IBUF));
  IBUF C1_IBUF_inst
       (.I(C1),
        .O(C1_IBUF));
  IBUF C2_IBUF_inst
       (.I(C2),
        .O(C2_IBUF));
  IBUF C3_IBUF_inst
       (.I(C3),
        .O(C3_IBUF));
  IBUF CIN_IBUF_inst
       (.I(CIN),
        .O(CIN_IBUF));
  OBUF COUT_OBUF_inst
       (.I(COUT_OBUF),
        .O(COUT));
  LUT3 #(
    .INIT(8'hE8)) 
    COUT_OBUF_inst_i_1
       (.I0(A_IBUF),
        .I1(CIN_IBUF),
        .I2(B_IBUF),
        .O(COUT_OBUF));
  OBUF SUM_OBUF_inst
       (.I(SUM_OBUF),
        .O(SUM));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    SUM_OBUF_inst_i_1
       (.I0(B_IBUF),
        .I1(A_IBUF),
        .I2(CIN_IBUF),
        .O(SUM_OBUF));
  IBUF Sel0_IBUF_inst
       (.I(Sel0),
        .O(Sel0_IBUF));
  IBUF Sel1_IBUF_inst
       (.I(Sel1),
        .O(Sel1_IBUF));
  IBUF Sel2_IBUF_inst
       (.I(Sel2),
        .O(Sel2_IBUF));
  IBUF Sel3_IBUF_inst
       (.I(Sel3),
        .O(Sel3_IBUF));
  OBUF Y0_OBUF_inst
       (.I(Y0_OBUF),
        .O(Y0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFE800E8)) 
    Y0_OBUF_inst_i_1
       (.I0(A_IBUF),
        .I1(CIN_IBUF),
        .I2(B_IBUF),
        .I3(Sel0_IBUF),
        .I4(C0_IBUF),
        .O(Y0_OBUF));
  OBUF Y1_OBUF_inst
       (.I(Y1_OBUF),
        .O(Y1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    Y1_OBUF_inst_i_1
       (.I0(Y0_OBUF),
        .I1(Sel1_IBUF),
        .I2(C1_IBUF),
        .O(Y1_OBUF));
  OBUF Y2_OBUF_inst
       (.I(Y2_OBUF),
        .O(Y2));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    Y2_OBUF_inst_i_1
       (.I0(Y0_OBUF),
        .I1(Sel1_IBUF),
        .I2(C1_IBUF),
        .I3(Sel2_IBUF),
        .I4(C2_IBUF),
        .O(Y2_OBUF));
  OBUF Y3_OBUF_inst
       (.I(Y3_OBUF),
        .O(Y3));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    Y3_OBUF_inst_i_1
       (.I0(Y3_OBUF_inst_i_2_n_0),
        .I1(output0__0),
        .I2(Sel2_IBUF),
        .I3(C2_IBUF),
        .I4(Sel3_IBUF),
        .I5(C3_IBUF),
        .O(Y3_OBUF));
  LUT6 #(
    .INIT(64'h00000000BBB8B888)) 
    Y3_OBUF_inst_i_2
       (.I0(C0_IBUF),
        .I1(Sel0_IBUF),
        .I2(B_IBUF),
        .I3(CIN_IBUF),
        .I4(A_IBUF),
        .I5(Sel1_IBUF),
        .O(Y3_OBUF_inst_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    Y3_OBUF_inst_i_3
       (.I0(C1_IBUF),
        .I1(Sel1_IBUF),
        .O(output0__0));
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
