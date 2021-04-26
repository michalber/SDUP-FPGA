// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Apr 19 15:28:20 2021
// Host        : DESKTOP-28EGR53 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               E:/elektronika-notatki/Rok_IV/SDUP/SDUP-FPGA/Lab6/NewtonRaphson/NewtonRaphson.sim/sim_1/synth/timing/xsim/mul12_tb_time_synth.v
// Design      : mul12
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module mul12
   (input0,
    input1,
    output0);
  input [11:0]input0;
  input [11:0]input1;
  output [23:0]output0;

  wire [11:0]input0;
  wire [11:0]input0_IBUF;
  wire [11:0]input1;
  wire [11:0]input1_IBUF;
  wire [23:0]output0;
  wire [23:0]output0_OBUF;
  wire NLW_output00_CARRYCASCOUT_UNCONNECTED;
  wire NLW_output00_MULTSIGNOUT_UNCONNECTED;
  wire NLW_output00_OVERFLOW_UNCONNECTED;
  wire NLW_output00_PATTERNBDETECT_UNCONNECTED;
  wire NLW_output00_PATTERNDETECT_UNCONNECTED;
  wire NLW_output00_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_output00_ACOUT_UNCONNECTED;
  wire [17:0]NLW_output00_BCOUT_UNCONNECTED;
  wire [3:0]NLW_output00_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_output00_P_UNCONNECTED;
  wire [47:0]NLW_output00_PCOUT_UNCONNECTED;

initial begin
 $sdf_annotate("mul12_tb_time_synth.sdf",,,,"tool_control");
end
  IBUF \input0_IBUF[0]_inst 
       (.I(input0[0]),
        .O(input0_IBUF[0]));
  IBUF \input0_IBUF[10]_inst 
       (.I(input0[10]),
        .O(input0_IBUF[10]));
  IBUF \input0_IBUF[11]_inst 
       (.I(input0[11]),
        .O(input0_IBUF[11]));
  IBUF \input0_IBUF[1]_inst 
       (.I(input0[1]),
        .O(input0_IBUF[1]));
  IBUF \input0_IBUF[2]_inst 
       (.I(input0[2]),
        .O(input0_IBUF[2]));
  IBUF \input0_IBUF[3]_inst 
       (.I(input0[3]),
        .O(input0_IBUF[3]));
  IBUF \input0_IBUF[4]_inst 
       (.I(input0[4]),
        .O(input0_IBUF[4]));
  IBUF \input0_IBUF[5]_inst 
       (.I(input0[5]),
        .O(input0_IBUF[5]));
  IBUF \input0_IBUF[6]_inst 
       (.I(input0[6]),
        .O(input0_IBUF[6]));
  IBUF \input0_IBUF[7]_inst 
       (.I(input0[7]),
        .O(input0_IBUF[7]));
  IBUF \input0_IBUF[8]_inst 
       (.I(input0[8]),
        .O(input0_IBUF[8]));
  IBUF \input0_IBUF[9]_inst 
       (.I(input0[9]),
        .O(input0_IBUF[9]));
  IBUF \input1_IBUF[0]_inst 
       (.I(input1[0]),
        .O(input1_IBUF[0]));
  IBUF \input1_IBUF[10]_inst 
       (.I(input1[10]),
        .O(input1_IBUF[10]));
  IBUF \input1_IBUF[11]_inst 
       (.I(input1[11]),
        .O(input1_IBUF[11]));
  IBUF \input1_IBUF[1]_inst 
       (.I(input1[1]),
        .O(input1_IBUF[1]));
  IBUF \input1_IBUF[2]_inst 
       (.I(input1[2]),
        .O(input1_IBUF[2]));
  IBUF \input1_IBUF[3]_inst 
       (.I(input1[3]),
        .O(input1_IBUF[3]));
  IBUF \input1_IBUF[4]_inst 
       (.I(input1[4]),
        .O(input1_IBUF[4]));
  IBUF \input1_IBUF[5]_inst 
       (.I(input1[5]),
        .O(input1_IBUF[5]));
  IBUF \input1_IBUF[6]_inst 
       (.I(input1[6]),
        .O(input1_IBUF[6]));
  IBUF \input1_IBUF[7]_inst 
       (.I(input1[7]),
        .O(input1_IBUF[7]));
  IBUF \input1_IBUF[8]_inst 
       (.I(input1[8]),
        .O(input1_IBUF[8]));
  IBUF \input1_IBUF[9]_inst 
       (.I(input1[9]),
        .O(input1_IBUF[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    output00
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,input0_IBUF}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_output00_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,input1_IBUF}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_output00_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_output00_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_output00_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_output00_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_output00_OVERFLOW_UNCONNECTED),
        .P({NLW_output00_P_UNCONNECTED[47:24],output0_OBUF}),
        .PATTERNBDETECT(NLW_output00_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_output00_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_output00_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_output00_UNDERFLOW_UNCONNECTED));
  OBUF \output0_OBUF[0]_inst 
       (.I(output0_OBUF[0]),
        .O(output0[0]));
  OBUF \output0_OBUF[10]_inst 
       (.I(output0_OBUF[10]),
        .O(output0[10]));
  OBUF \output0_OBUF[11]_inst 
       (.I(output0_OBUF[11]),
        .O(output0[11]));
  OBUF \output0_OBUF[12]_inst 
       (.I(output0_OBUF[12]),
        .O(output0[12]));
  OBUF \output0_OBUF[13]_inst 
       (.I(output0_OBUF[13]),
        .O(output0[13]));
  OBUF \output0_OBUF[14]_inst 
       (.I(output0_OBUF[14]),
        .O(output0[14]));
  OBUF \output0_OBUF[15]_inst 
       (.I(output0_OBUF[15]),
        .O(output0[15]));
  OBUF \output0_OBUF[16]_inst 
       (.I(output0_OBUF[16]),
        .O(output0[16]));
  OBUF \output0_OBUF[17]_inst 
       (.I(output0_OBUF[17]),
        .O(output0[17]));
  OBUF \output0_OBUF[18]_inst 
       (.I(output0_OBUF[18]),
        .O(output0[18]));
  OBUF \output0_OBUF[19]_inst 
       (.I(output0_OBUF[19]),
        .O(output0[19]));
  OBUF \output0_OBUF[1]_inst 
       (.I(output0_OBUF[1]),
        .O(output0[1]));
  OBUF \output0_OBUF[20]_inst 
       (.I(output0_OBUF[20]),
        .O(output0[20]));
  OBUF \output0_OBUF[21]_inst 
       (.I(output0_OBUF[21]),
        .O(output0[21]));
  OBUF \output0_OBUF[22]_inst 
       (.I(output0_OBUF[22]),
        .O(output0[22]));
  OBUF \output0_OBUF[23]_inst 
       (.I(output0_OBUF[23]),
        .O(output0[23]));
  OBUF \output0_OBUF[2]_inst 
       (.I(output0_OBUF[2]),
        .O(output0[2]));
  OBUF \output0_OBUF[3]_inst 
       (.I(output0_OBUF[3]),
        .O(output0[3]));
  OBUF \output0_OBUF[4]_inst 
       (.I(output0_OBUF[4]),
        .O(output0[4]));
  OBUF \output0_OBUF[5]_inst 
       (.I(output0_OBUF[5]),
        .O(output0[5]));
  OBUF \output0_OBUF[6]_inst 
       (.I(output0_OBUF[6]),
        .O(output0[6]));
  OBUF \output0_OBUF[7]_inst 
       (.I(output0_OBUF[7]),
        .O(output0[7]));
  OBUF \output0_OBUF[8]_inst 
       (.I(output0_OBUF[8]),
        .O(output0[8]));
  OBUF \output0_OBUF[9]_inst 
       (.I(output0_OBUF[9]),
        .O(output0[9]));
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
