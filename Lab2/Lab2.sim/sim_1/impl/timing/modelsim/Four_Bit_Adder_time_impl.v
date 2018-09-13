// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Wed Sep 12 23:35:06 2018
// Host        : Ferrari running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Dexter/Documents/ECE4525/Lab2/Lab2.sim/sim_1/impl/timing/modelsim/Four_Bit_Adder_time_impl.v
// Design      : Four_Bit_Adder
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "7f3a14dd" *) 
(* NotValidForBitStream *)
module Four_Bit_Adder
   (input_a0,
    input_a1,
    input_a2,
    input_a3,
    input_b0,
    input_b1,
    input_b2,
    input_b3,
    carry_in,
    sum0,
    sum1,
    sum2,
    sum3,
    carry_out);
  input input_a0;
  input input_a1;
  input input_a2;
  input input_a3;
  input input_b0;
  input input_b1;
  input input_b2;
  input input_b3;
  input carry_in;
  output sum0;
  output sum1;
  output sum2;
  output sum3;
  output carry_out;

  wire carry_in;
  wire carry_in_IBUF;
  wire carry_out;
  wire carry_out1__1;
  wire carry_out_OBUF;
  wire input_a0;
  wire input_a0_IBUF;
  wire input_a1;
  wire input_a1_IBUF;
  wire input_a2;
  wire input_a2_IBUF;
  wire input_a3;
  wire input_a3_IBUF;
  wire input_b0;
  wire input_b0_IBUF;
  wire input_b1;
  wire input_b1_IBUF;
  wire input_b2;
  wire input_b2_IBUF;
  wire input_b3;
  wire input_b3_IBUF;
  wire sum0;
  wire sum0_OBUF;
  wire sum1;
  wire sum1_OBUF;
  wire sum2;
  wire sum2_OBUF;
  wire sum3;
  wire sum3_OBUF;

initial begin
 $sdf_annotate("Four_Bit_Adder_time_impl.sdf",,,,"tool_control");
end
  IBUF carry_in_IBUF_inst
       (.I(carry_in),
        .O(carry_in_IBUF));
  OBUF carry_out_OBUF_inst
       (.I(carry_out_OBUF),
        .O(carry_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    carry_out_OBUF_inst_i_1
       (.I0(input_a3_IBUF),
        .I1(input_b2_IBUF),
        .I2(carry_out1__1),
        .I3(input_a2_IBUF),
        .I4(input_b3_IBUF),
        .O(carry_out_OBUF));
  IBUF input_a0_IBUF_inst
       (.I(input_a0),
        .O(input_a0_IBUF));
  IBUF input_a1_IBUF_inst
       (.I(input_a1),
        .O(input_a1_IBUF));
  IBUF input_a2_IBUF_inst
       (.I(input_a2),
        .O(input_a2_IBUF));
  IBUF input_a3_IBUF_inst
       (.I(input_a3),
        .O(input_a3_IBUF));
  IBUF input_b0_IBUF_inst
       (.I(input_b0),
        .O(input_b0_IBUF));
  IBUF input_b1_IBUF_inst
       (.I(input_b1),
        .O(input_b1_IBUF));
  IBUF input_b2_IBUF_inst
       (.I(input_b2),
        .O(input_b2_IBUF));
  IBUF input_b3_IBUF_inst
       (.I(input_b3),
        .O(input_b3_IBUF));
  OBUF sum0_OBUF_inst
       (.I(sum0_OBUF),
        .O(sum0));
  LUT3 #(
    .INIT(8'h96)) 
    sum0_OBUF_inst_i_1
       (.I0(input_b0_IBUF),
        .I1(input_a0_IBUF),
        .I2(carry_in_IBUF),
        .O(sum0_OBUF));
  OBUF sum1_OBUF_inst
       (.I(sum1_OBUF),
        .O(sum1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    sum1_OBUF_inst_i_1
       (.I0(input_b1_IBUF),
        .I1(input_a1_IBUF),
        .I2(input_a0_IBUF),
        .I3(carry_in_IBUF),
        .I4(input_b0_IBUF),
        .O(sum1_OBUF));
  OBUF sum2_OBUF_inst
       (.I(sum2_OBUF),
        .O(sum2));
  LUT3 #(
    .INIT(8'h96)) 
    sum2_OBUF_inst_i_1
       (.I0(input_b2_IBUF),
        .I1(input_a2_IBUF),
        .I2(carry_out1__1),
        .O(sum2_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    sum2_OBUF_inst_i_2
       (.I0(input_a1_IBUF),
        .I1(input_b0_IBUF),
        .I2(carry_in_IBUF),
        .I3(input_a0_IBUF),
        .I4(input_b1_IBUF),
        .O(carry_out1__1));
  OBUF sum3_OBUF_inst
       (.I(sum3_OBUF),
        .O(sum3));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    sum3_OBUF_inst_i_1
       (.I0(input_b3_IBUF),
        .I1(input_a3_IBUF),
        .I2(input_a2_IBUF),
        .I3(carry_out1__1),
        .I4(input_b2_IBUF),
        .O(sum3_OBUF));
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
