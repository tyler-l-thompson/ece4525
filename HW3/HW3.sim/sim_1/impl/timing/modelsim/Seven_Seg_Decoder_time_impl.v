// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Tue Sep 25 12:29:50 2018
// Host        : Ferrari running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Dexter/Documents/ECE4525/HW3/HW3.sim/sim_1/impl/timing/modelsim/Seven_Seg_Decoder_time_impl.v
// Design      : Seven_Seg_Decoder
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "d2dbb3d9" *) 
(* NotValidForBitStream *)
module Seven_Seg_Decoder
   (input_a,
    input_b,
    input_c,
    input_d,
    input_lt,
    output_a,
    output_b,
    output_c,
    output_d,
    output_e,
    output_f,
    output_g);
  input input_a;
  input input_b;
  input input_c;
  input input_d;
  input input_lt;
  output output_a;
  output output_b;
  output output_c;
  output output_d;
  output output_e;
  output output_f;
  output output_g;

  wire input_a;
  wire input_a_IBUF;
  wire input_b;
  wire input_b_IBUF;
  wire input_c;
  wire input_c_IBUF;
  wire input_d;
  wire input_d_IBUF;
  wire input_lt;
  wire input_lt_IBUF;
  wire output_a;
  wire output_a_OBUF;
  wire output_b;
  wire output_b_OBUF;
  wire output_c;
  wire output_c_OBUF;
  wire output_d;
  wire output_d_OBUF;
  wire output_e;
  wire output_e_OBUF;
  wire output_f;
  wire output_f_OBUF;
  wire output_g;
  wire output_g_OBUF;

initial begin
 $sdf_annotate("Seven_Seg_Decoder_time_impl.sdf",,,,"tool_control");
end
  IBUF input_a_IBUF_inst
       (.I(input_a),
        .O(input_a_IBUF));
  IBUF input_b_IBUF_inst
       (.I(input_b),
        .O(input_b_IBUF));
  IBUF input_c_IBUF_inst
       (.I(input_c),
        .O(input_c_IBUF));
  IBUF input_d_IBUF_inst
       (.I(input_d),
        .O(input_d_IBUF));
  IBUF input_lt_IBUF_inst
       (.I(input_lt),
        .O(input_lt_IBUF));
  OBUF output_a_OBUF_inst
       (.I(output_a_OBUF),
        .O(output_a));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h008A8A82)) 
    output_a_OBUF_inst_i_1
       (.I0(input_lt_IBUF),
        .I1(input_a_IBUF),
        .I2(input_c_IBUF),
        .I3(input_b_IBUF),
        .I4(input_d_IBUF),
        .O(output_a_OBUF));
  OBUF output_b_OBUF_inst
       (.I(output_b_OBUF),
        .O(output_b));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h202A0A2A)) 
    output_b_OBUF_inst_i_1
       (.I0(input_lt_IBUF),
        .I1(input_d_IBUF),
        .I2(input_b_IBUF),
        .I3(input_c_IBUF),
        .I4(input_a_IBUF),
        .O(output_b_OBUF));
  OBUF output_c_OBUF_inst
       (.I(output_c_OBUF),
        .O(output_c));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2A2A202A)) 
    output_c_OBUF_inst_i_1
       (.I0(input_lt_IBUF),
        .I1(input_d_IBUF),
        .I2(input_c_IBUF),
        .I3(input_b_IBUF),
        .I4(input_a_IBUF),
        .O(output_c_OBUF));
  OBUF output_d_OBUF_inst
       (.I(output_d_OBUF),
        .O(output_d));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h28A2)) 
    output_d_OBUF_inst_i_1
       (.I0(input_lt_IBUF),
        .I1(input_c_IBUF),
        .I2(input_b_IBUF),
        .I3(input_a_IBUF),
        .O(output_d_OBUF));
  OBUF output_e_OBUF_inst
       (.I(output_e_OBUF),
        .O(output_e));
  LUT4 #(
    .INIT(16'h0D00)) 
    output_e_OBUF_inst_i_1
       (.I0(input_c_IBUF),
        .I1(input_b_IBUF),
        .I2(input_a_IBUF),
        .I3(input_lt_IBUF),
        .O(output_e_OBUF));
  OBUF output_f_OBUF_inst
       (.I(output_f_OBUF),
        .O(output_f));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h54DD0000)) 
    output_f_OBUF_inst_i_1
       (.I0(input_b_IBUF),
        .I1(input_c_IBUF),
        .I2(input_d_IBUF),
        .I3(input_a_IBUF),
        .I4(input_lt_IBUF),
        .O(output_f_OBUF));
  OBUF output_g_OBUF_inst
       (.I(output_g_OBUF),
        .O(output_g));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h4C4CCCC0)) 
    output_g_OBUF_inst_i_1
       (.I0(input_a_IBUF),
        .I1(input_lt_IBUF),
        .I2(input_b_IBUF),
        .I3(input_d_IBUF),
        .I4(input_c_IBUF),
        .O(output_g_OBUF));
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
