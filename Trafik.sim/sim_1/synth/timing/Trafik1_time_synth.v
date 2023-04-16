// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Sun Apr 16 01:40:40 2023
// Host        : HANI running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/HANIO/Trafik/Trafik.sim/sim_1/synth/timing/Trafik1_time_synth.v
// Design      : Trafik1
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module Trafik1
   (clk,
    red,
    blue,
    green);
  input clk;
  output red;
  output blue;
  output green;

  wire blue;
  wire blue_OBUF;
  wire blue_i_1_n_0;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire green;
  wire green_OBUF;
  wire green_i_1_n_0;
  wire red;
  wire red_OBUF;
  wire red_i_1_n_0;
  wire red_i_2_n_0;
  wire [1:0]state;
  wire \state[1]_i_1_n_0 ;

initial begin
 $sdf_annotate("Trafik1_time_synth.sdf",,,,"tool_control");
end
  OBUF blue_OBUF_inst
       (.I(blue_OBUF),
        .O(blue));
  LUT1 #(
    .INIT(2'h1)) 
    blue_i_1
       (.I0(state[0]),
        .O(blue_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    blue_reg
       (.C(clk_IBUF_BUFG),
        .CE(red_i_1_n_0),
        .D(blue_i_1_n_0),
        .Q(blue_OBUF),
        .R(1'b0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF green_OBUF_inst
       (.I(green_OBUF),
        .O(green));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    green_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .O(green_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    green_reg
       (.C(clk_IBUF_BUFG),
        .CE(red_i_1_n_0),
        .D(green_i_1_n_0),
        .Q(green_OBUF),
        .R(1'b0));
  OBUF red_OBUF_inst
       (.I(red_OBUF),
        .O(red));
  LUT2 #(
    .INIT(4'hE)) 
    red_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .O(red_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    red_i_2
       (.I0(state[1]),
        .O(red_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    red_reg
       (.C(clk_IBUF_BUFG),
        .CE(red_i_1_n_0),
        .D(red_i_2_n_0),
        .Q(red_OBUF),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \state[1]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(state[1]),
        .Q(state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
