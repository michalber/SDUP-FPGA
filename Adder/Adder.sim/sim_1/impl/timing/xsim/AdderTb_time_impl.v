// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Jun 16 15:19:18 2021
// Host        : DESKTOP-28EGR53 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               E:/elektronika-notatki/Rok_IV/SDUP/SDUP-FPGA/Adder/Adder.sim/sim_1/impl/timing/xsim/AdderTb_time_impl.v
// Design      : CarrySelectAdder
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "34d8aa2a" *) (* W = "16" *) 
(* NotValidForBitStream *)
module CarrySelectAdder
   (A,
    B,
    cin,
    S,
    cout);
  input [15:0]A;
  input [15:0]B;
  input cin;
  output [15:0]S;
  output cout;

  wire [15:0]A;
  wire [15:0]A_IBUF;
  wire [15:0]B;
  wire [15:0]B_IBUF;
  wire [15:0]S;
  wire [15:0]S_OBUF;
  wire \S_OBUF[11]_inst_i_2_n_0 ;
  wire \S_OBUF[12]_inst_i_2_n_0 ;
  wire \S_OBUF[12]_inst_i_3_n_0 ;
  wire \S_OBUF[12]_inst_i_4_n_0 ;
  wire \S_OBUF[12]_inst_i_5_n_0 ;
  wire \S_OBUF[12]_inst_i_6_n_0 ;
  wire \S_OBUF[12]_inst_i_7_n_0 ;
  wire \S_OBUF[14]_inst_i_2_n_0 ;
  wire \S_OBUF[15]_inst_i_2_n_0 ;
  wire \S_OBUF[15]_inst_i_3_n_0 ;
  wire \S_OBUF[15]_inst_i_4_n_0 ;
  wire \S_OBUF[15]_inst_i_5_n_0 ;
  wire \S_OBUF[15]_inst_i_6_n_0 ;
  wire \S_OBUF[3]_inst_i_2_n_0 ;
  wire \S_OBUF[5]_inst_i_2_n_0 ;
  wire \S_OBUF[7]_inst_i_2_n_0 ;
  wire \S_OBUF[9]_inst_i_2_n_0 ;
  wire cin;
  wire cin_IBUF;
  wire cout;
  wire cout_OBUF;

initial begin
 $sdf_annotate("AdderTb_time_impl.sdf",,,,"tool_control");
end
  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[10]_inst 
       (.I(A[10]),
        .O(A_IBUF[10]));
  IBUF \A_IBUF[11]_inst 
       (.I(A[11]),
        .O(A_IBUF[11]));
  IBUF \A_IBUF[12]_inst 
       (.I(A[12]),
        .O(A_IBUF[12]));
  IBUF \A_IBUF[13]_inst 
       (.I(A[13]),
        .O(A_IBUF[13]));
  IBUF \A_IBUF[14]_inst 
       (.I(A[14]),
        .O(A_IBUF[14]));
  IBUF \A_IBUF[15]_inst 
       (.I(A[15]),
        .O(A_IBUF[15]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF \A_IBUF[4]_inst 
       (.I(A[4]),
        .O(A_IBUF[4]));
  IBUF \A_IBUF[5]_inst 
       (.I(A[5]),
        .O(A_IBUF[5]));
  IBUF \A_IBUF[6]_inst 
       (.I(A[6]),
        .O(A_IBUF[6]));
  IBUF \A_IBUF[7]_inst 
       (.I(A[7]),
        .O(A_IBUF[7]));
  IBUF \A_IBUF[8]_inst 
       (.I(A[8]),
        .O(A_IBUF[8]));
  IBUF \A_IBUF[9]_inst 
       (.I(A[9]),
        .O(A_IBUF[9]));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[10]_inst 
       (.I(B[10]),
        .O(B_IBUF[10]));
  IBUF \B_IBUF[11]_inst 
       (.I(B[11]),
        .O(B_IBUF[11]));
  IBUF \B_IBUF[12]_inst 
       (.I(B[12]),
        .O(B_IBUF[12]));
  IBUF \B_IBUF[13]_inst 
       (.I(B[13]),
        .O(B_IBUF[13]));
  IBUF \B_IBUF[14]_inst 
       (.I(B[14]),
        .O(B_IBUF[14]));
  IBUF \B_IBUF[15]_inst 
       (.I(B[15]),
        .O(B_IBUF[15]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  IBUF \B_IBUF[4]_inst 
       (.I(B[4]),
        .O(B_IBUF[4]));
  IBUF \B_IBUF[5]_inst 
       (.I(B[5]),
        .O(B_IBUF[5]));
  IBUF \B_IBUF[6]_inst 
       (.I(B[6]),
        .O(B_IBUF[6]));
  IBUF \B_IBUF[7]_inst 
       (.I(B[7]),
        .O(B_IBUF[7]));
  IBUF \B_IBUF[8]_inst 
       (.I(B[8]),
        .O(B_IBUF[8]));
  IBUF \B_IBUF[9]_inst 
       (.I(B[9]),
        .O(B_IBUF[9]));
  OBUF \S_OBUF[0]_inst 
       (.I(S_OBUF[0]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \S_OBUF[0]_inst_i_1 
       (.I0(cin_IBUF),
        .I1(A_IBUF[0]),
        .I2(B_IBUF[0]),
        .O(S_OBUF[0]));
  OBUF \S_OBUF[10]_inst 
       (.I(S_OBUF[10]),
        .O(S[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \S_OBUF[10]_inst_i_1 
       (.I0(\S_OBUF[11]_inst_i_2_n_0 ),
        .I1(A_IBUF[10]),
        .I2(B_IBUF[10]),
        .O(S_OBUF[10]));
  OBUF \S_OBUF[11]_inst 
       (.I(S_OBUF[11]),
        .O(S[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \S_OBUF[11]_inst_i_1 
       (.I0(A_IBUF[10]),
        .I1(B_IBUF[10]),
        .I2(\S_OBUF[11]_inst_i_2_n_0 ),
        .I3(A_IBUF[11]),
        .I4(B_IBUF[11]),
        .O(S_OBUF[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \S_OBUF[11]_inst_i_2 
       (.I0(\S_OBUF[9]_inst_i_2_n_0 ),
        .I1(B_IBUF[8]),
        .I2(A_IBUF[8]),
        .I3(B_IBUF[9]),
        .I4(A_IBUF[9]),
        .O(\S_OBUF[11]_inst_i_2_n_0 ));
  OBUF \S_OBUF[12]_inst 
       (.I(S_OBUF[12]),
        .O(S[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \S_OBUF[12]_inst_i_1 
       (.I0(A_IBUF[11]),
        .I1(B_IBUF[11]),
        .I2(\S_OBUF[12]_inst_i_2_n_0 ),
        .I3(A_IBUF[12]),
        .I4(B_IBUF[12]),
        .O(S_OBUF[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \S_OBUF[12]_inst_i_2 
       (.I0(\S_OBUF[12]_inst_i_3_n_0 ),
        .I1(B_IBUF[9]),
        .I2(A_IBUF[9]),
        .I3(B_IBUF[10]),
        .I4(A_IBUF[10]),
        .O(\S_OBUF[12]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \S_OBUF[12]_inst_i_3 
       (.I0(\S_OBUF[12]_inst_i_4_n_0 ),
        .I1(B_IBUF[7]),
        .I2(A_IBUF[7]),
        .I3(B_IBUF[8]),
        .I4(A_IBUF[8]),
        .O(\S_OBUF[12]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF220F2200000)) 
    \S_OBUF[12]_inst_i_4 
       (.I0(\S_OBUF[12]_inst_i_5_n_0 ),
        .I1(\S_OBUF[12]_inst_i_6_n_0 ),
        .I2(B_IBUF[5]),
        .I3(A_IBUF[5]),
        .I4(B_IBUF[6]),
        .I5(A_IBUF[6]),
        .O(\S_OBUF[12]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \S_OBUF[12]_inst_i_5 
       (.I0(B_IBUF[4]),
        .I1(A_IBUF[4]),
        .O(\S_OBUF[12]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0202022A022A2A2A)) 
    \S_OBUF[12]_inst_i_6 
       (.I0(\S_OBUF[12]_inst_i_7_n_0 ),
        .I1(A_IBUF[3]),
        .I2(B_IBUF[3]),
        .I3(A_IBUF[2]),
        .I4(B_IBUF[2]),
        .I5(\S_OBUF[3]_inst_i_2_n_0 ),
        .O(\S_OBUF[12]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \S_OBUF[12]_inst_i_7 
       (.I0(B_IBUF[4]),
        .I1(A_IBUF[4]),
        .O(\S_OBUF[12]_inst_i_7_n_0 ));
  OBUF \S_OBUF[13]_inst 
       (.I(S_OBUF[13]),
        .O(S[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \S_OBUF[13]_inst_i_1 
       (.I0(\S_OBUF[14]_inst_i_2_n_0 ),
        .I1(A_IBUF[13]),
        .I2(B_IBUF[13]),
        .O(S_OBUF[13]));
  OBUF \S_OBUF[14]_inst 
       (.I(S_OBUF[14]),
        .O(S[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \S_OBUF[14]_inst_i_1 
       (.I0(A_IBUF[13]),
        .I1(B_IBUF[13]),
        .I2(\S_OBUF[14]_inst_i_2_n_0 ),
        .I3(A_IBUF[14]),
        .I4(B_IBUF[14]),
        .O(S_OBUF[14]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \S_OBUF[14]_inst_i_2 
       (.I0(\S_OBUF[12]_inst_i_2_n_0 ),
        .I1(B_IBUF[11]),
        .I2(A_IBUF[11]),
        .I3(B_IBUF[12]),
        .I4(A_IBUF[12]),
        .O(\S_OBUF[14]_inst_i_2_n_0 ));
  OBUF \S_OBUF[15]_inst 
       (.I(S_OBUF[15]),
        .O(S[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \S_OBUF[15]_inst_i_1 
       (.I0(A_IBUF[14]),
        .I1(B_IBUF[14]),
        .I2(\S_OBUF[15]_inst_i_2_n_0 ),
        .I3(A_IBUF[15]),
        .I4(B_IBUF[15]),
        .O(S_OBUF[15]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \S_OBUF[15]_inst_i_2 
       (.I0(\S_OBUF[15]_inst_i_3_n_0 ),
        .I1(B_IBUF[12]),
        .I2(A_IBUF[12]),
        .I3(B_IBUF[13]),
        .I4(A_IBUF[13]),
        .O(\S_OBUF[15]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF220F2200000)) 
    \S_OBUF[15]_inst_i_3 
       (.I0(\S_OBUF[15]_inst_i_4_n_0 ),
        .I1(\S_OBUF[15]_inst_i_5_n_0 ),
        .I2(B_IBUF[10]),
        .I3(A_IBUF[10]),
        .I4(B_IBUF[11]),
        .I5(A_IBUF[11]),
        .O(\S_OBUF[15]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \S_OBUF[15]_inst_i_4 
       (.I0(B_IBUF[9]),
        .I1(A_IBUF[9]),
        .O(\S_OBUF[15]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0202022A022A2A2A)) 
    \S_OBUF[15]_inst_i_5 
       (.I0(\S_OBUF[15]_inst_i_6_n_0 ),
        .I1(A_IBUF[8]),
        .I2(B_IBUF[8]),
        .I3(A_IBUF[7]),
        .I4(B_IBUF[7]),
        .I5(\S_OBUF[12]_inst_i_4_n_0 ),
        .O(\S_OBUF[15]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \S_OBUF[15]_inst_i_6 
       (.I0(B_IBUF[9]),
        .I1(A_IBUF[9]),
        .O(\S_OBUF[15]_inst_i_6_n_0 ));
  OBUF \S_OBUF[1]_inst 
       (.I(S_OBUF[1]),
        .O(S[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \S_OBUF[1]_inst_i_1 
       (.I0(cin_IBUF),
        .I1(A_IBUF[0]),
        .I2(B_IBUF[0]),
        .I3(A_IBUF[1]),
        .I4(B_IBUF[1]),
        .O(S_OBUF[1]));
  OBUF \S_OBUF[2]_inst 
       (.I(S_OBUF[2]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \S_OBUF[2]_inst_i_1 
       (.I0(\S_OBUF[3]_inst_i_2_n_0 ),
        .I1(A_IBUF[2]),
        .I2(B_IBUF[2]),
        .O(S_OBUF[2]));
  OBUF \S_OBUF[3]_inst 
       (.I(S_OBUF[3]),
        .O(S[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \S_OBUF[3]_inst_i_1 
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[2]),
        .I2(\S_OBUF[3]_inst_i_2_n_0 ),
        .I3(A_IBUF[3]),
        .I4(B_IBUF[3]),
        .O(S_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \S_OBUF[3]_inst_i_2 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[0]),
        .I2(cin_IBUF),
        .I3(B_IBUF[1]),
        .I4(A_IBUF[1]),
        .O(\S_OBUF[3]_inst_i_2_n_0 ));
  OBUF \S_OBUF[4]_inst 
       (.I(S_OBUF[4]),
        .O(S[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \S_OBUF[4]_inst_i_1 
       (.I0(\S_OBUF[5]_inst_i_2_n_0 ),
        .I1(A_IBUF[4]),
        .I2(B_IBUF[4]),
        .O(S_OBUF[4]));
  OBUF \S_OBUF[5]_inst 
       (.I(S_OBUF[5]),
        .O(S[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \S_OBUF[5]_inst_i_1 
       (.I0(A_IBUF[4]),
        .I1(B_IBUF[4]),
        .I2(\S_OBUF[5]_inst_i_2_n_0 ),
        .I3(A_IBUF[5]),
        .I4(B_IBUF[5]),
        .O(S_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \S_OBUF[5]_inst_i_2 
       (.I0(\S_OBUF[3]_inst_i_2_n_0 ),
        .I1(B_IBUF[2]),
        .I2(A_IBUF[2]),
        .I3(B_IBUF[3]),
        .I4(A_IBUF[3]),
        .O(\S_OBUF[5]_inst_i_2_n_0 ));
  OBUF \S_OBUF[6]_inst 
       (.I(S_OBUF[6]),
        .O(S[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \S_OBUF[6]_inst_i_1 
       (.I0(A_IBUF[6]),
        .I1(B_IBUF[6]),
        .I2(\S_OBUF[7]_inst_i_2_n_0 ),
        .O(S_OBUF[6]));
  OBUF \S_OBUF[7]_inst 
       (.I(S_OBUF[7]),
        .O(S[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \S_OBUF[7]_inst_i_1 
       (.I0(A_IBUF[6]),
        .I1(B_IBUF[6]),
        .I2(\S_OBUF[7]_inst_i_2_n_0 ),
        .I3(A_IBUF[7]),
        .I4(B_IBUF[7]),
        .O(S_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \S_OBUF[7]_inst_i_2 
       (.I0(\S_OBUF[5]_inst_i_2_n_0 ),
        .I1(B_IBUF[4]),
        .I2(A_IBUF[4]),
        .I3(B_IBUF[5]),
        .I4(A_IBUF[5]),
        .O(\S_OBUF[7]_inst_i_2_n_0 ));
  OBUF \S_OBUF[8]_inst 
       (.I(S_OBUF[8]),
        .O(S[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \S_OBUF[8]_inst_i_1 
       (.I0(\S_OBUF[9]_inst_i_2_n_0 ),
        .I1(A_IBUF[8]),
        .I2(B_IBUF[8]),
        .O(S_OBUF[8]));
  OBUF \S_OBUF[9]_inst 
       (.I(S_OBUF[9]),
        .O(S[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \S_OBUF[9]_inst_i_1 
       (.I0(A_IBUF[8]),
        .I1(B_IBUF[8]),
        .I2(\S_OBUF[9]_inst_i_2_n_0 ),
        .I3(A_IBUF[9]),
        .I4(B_IBUF[9]),
        .O(S_OBUF[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \S_OBUF[9]_inst_i_2 
       (.I0(\S_OBUF[7]_inst_i_2_n_0 ),
        .I1(B_IBUF[6]),
        .I2(A_IBUF[6]),
        .I3(B_IBUF[7]),
        .I4(A_IBUF[7]),
        .O(\S_OBUF[9]_inst_i_2_n_0 ));
  IBUF cin_IBUF_inst
       (.I(cin),
        .O(cin_IBUF));
  OBUF cout_OBUF_inst
       (.I(cout_OBUF),
        .O(cout));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    cout_OBUF_inst_i_1
       (.I0(\S_OBUF[15]_inst_i_2_n_0 ),
        .I1(B_IBUF[14]),
        .I2(A_IBUF[14]),
        .I3(B_IBUF[15]),
        .I4(A_IBUF[15]),
        .O(cout_OBUF));
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
