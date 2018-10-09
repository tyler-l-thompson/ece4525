// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Tue Oct  9 17:21:27 2018
// Host        : Ferrari running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Dexter/Documents/ECE4525/HW5/HW5.sim/sim_1/impl/timing/modelsim/State_Machine_time_impl.v
// Design      : State_Machine
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "d602e7c4" *) 
(* NotValidForBitStream *)
module State_Machine
   (A,
    B,
    RESET,
    CLK,
    state_status,
    state_output);
  input A;
  input B;
  input RESET;
  input CLK;
  output [2:0]state_status;
  output [1:0]state_output;

  wire A;
  wire A_IBUF;
  wire B;
  wire B_IBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire \FSM_sequential_present_state[0]_i_1_n_0 ;
  wire \FSM_sequential_present_state[1]_i_1_n_0 ;
  wire \FSM_sequential_present_state[2]_i_1_n_0 ;
  wire RESET;
  wire RESET_IBUF;
  (* RTL_KEEP = "yes" *) wire [2:0]present_state;
  wire [1:0]state_output;
  wire [1:0]state_output_OBUF;
  wire [2:0]state_status;
  wire [2:0]state_status_OBUF;

initial begin
 $sdf_annotate("State_Machine_time_impl.sdf",,,,"tool_control");
end
  IBUF A_IBUF_inst
       (.I(A),
        .O(A_IBUF));
  IBUF B_IBUF_inst
       (.I(B),
        .O(B_IBUF));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  LUT6 #(
    .INIT(64'hDDDD94D800000000)) 
    \FSM_sequential_present_state[0]_i_1 
       (.I0(A_IBUF),
        .I1(B_IBUF),
        .I2(present_state[0]),
        .I3(present_state[1]),
        .I4(present_state[2]),
        .I5(RESET_IBUF),
        .O(\FSM_sequential_present_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h141488A400000000)) 
    \FSM_sequential_present_state[1]_i_1 
       (.I0(A_IBUF),
        .I1(B_IBUF),
        .I2(present_state[0]),
        .I3(present_state[1]),
        .I4(present_state[2]),
        .I5(RESET_IBUF),
        .O(\FSM_sequential_present_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACAC361000000000)) 
    \FSM_sequential_present_state[2]_i_1 
       (.I0(B_IBUF),
        .I1(A_IBUF),
        .I2(present_state[0]),
        .I3(present_state[1]),
        .I4(present_state[2]),
        .I5(RESET_IBUF),
        .O(\FSM_sequential_present_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s2:010,s0:000,s5:100,s1:001,s3:101,s4:011" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_present_state_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_present_state[0]_i_1_n_0 ),
        .Q(present_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "s2:010,s0:000,s5:100,s1:001,s3:101,s4:011" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_present_state_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_present_state[1]_i_1_n_0 ),
        .Q(present_state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "s2:010,s0:000,s5:100,s1:001,s3:101,s4:011" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_present_state_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_present_state[2]_i_1_n_0 ),
        .Q(present_state[2]),
        .R(1'b0));
  IBUF RESET_IBUF_inst
       (.I(RESET),
        .O(RESET_IBUF));
  OBUF \state_output_OBUF[0]_inst 
       (.I(state_output_OBUF[0]),
        .O(state_output[0]));
  LUT3 #(
    .INIT(8'h06)) 
    \state_output_OBUF[0]_inst_i_1 
       (.I0(present_state[2]),
        .I1(present_state[0]),
        .I2(present_state[1]),
        .O(state_output_OBUF[0]));
  OBUF \state_output_OBUF[1]_inst 
       (.I(state_output_OBUF[1]),
        .O(state_output[1]));
  LUT3 #(
    .INIT(8'h26)) 
    \state_output_OBUF[1]_inst_i_1 
       (.I0(present_state[1]),
        .I1(present_state[2]),
        .I2(present_state[0]),
        .O(state_output_OBUF[1]));
  OBUF \state_status_OBUF[0]_inst 
       (.I(state_status_OBUF[0]),
        .O(state_status[0]));
  LUT3 #(
    .INIT(8'h54)) 
    \state_status_OBUF[0]_inst_i_1 
       (.I0(present_state[1]),
        .I1(present_state[2]),
        .I2(present_state[0]),
        .O(state_status_OBUF[0]));
  OBUF \state_status_OBUF[1]_inst 
       (.I(state_status_OBUF[1]),
        .O(state_status[1]));
  LUT3 #(
    .INIT(8'h24)) 
    \state_status_OBUF[1]_inst_i_1 
       (.I0(present_state[0]),
        .I1(present_state[1]),
        .I2(present_state[2]),
        .O(state_status_OBUF[1]));
  OBUF \state_status_OBUF[2]_inst 
       (.I(state_status_OBUF[2]),
        .O(state_status[2]));
  LUT3 #(
    .INIT(8'h24)) 
    \state_status_OBUF[2]_inst_i_1 
       (.I0(present_state[0]),
        .I1(present_state[2]),
        .I2(present_state[1]),
        .O(state_status_OBUF[2]));
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
