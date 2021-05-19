// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Apr 28 19:15:34 2021
// Host        : DESKTOP-28EGR53 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               E:/elektronika-notatki/Rok_IV/SDUP/SDUP-FPGA/Lab7/CordicOpt/CordicOpt.sim/sim_1/impl/timing/xsim/cordic_rtl_TB_time_impl.v
// Design      : cordic_rtl6
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "a819aba1" *) (* W = "12" *) (* W1 = "16" *) 
(* guard_bits = "4" *) (* i_max = "13" *) (* real_FIX1 = "16384.000000" *) 
(* NotValidForBitStream *)
module cordic_rtl6
   (clock,
    reset,
    start,
    angle_in,
    ready_out,
    sin_out,
    cos_out);
  input clock;
  input reset;
  input start;
  input [11:0]angle_in;
  output ready_out;
  output [11:0]sin_out;
  output [11:0]cos_out;

  wire [15:0]angle;
  wire [11:0]angle0;
  wire \angle[10]_i_1_n_0 ;
  wire \angle[11]_i_10_n_0 ;
  wire \angle[11]_i_11_n_0 ;
  wire \angle[11]_i_1_n_0 ;
  wire \angle[11]_i_4_n_0 ;
  wire \angle[11]_i_5_n_0 ;
  wire \angle[11]_i_6_n_0 ;
  wire \angle[11]_i_7_n_0 ;
  wire \angle[11]_i_8_n_0 ;
  wire \angle[11]_i_9_n_0 ;
  wire \angle[12]_i_1_n_0 ;
  wire \angle[13]_i_1_n_0 ;
  wire \angle[14]_i_1_n_0 ;
  wire \angle[15]_i_10_n_0 ;
  wire \angle[15]_i_11_n_0 ;
  wire \angle[15]_i_1_n_0 ;
  wire \angle[15]_i_2_n_0 ;
  wire \angle[15]_i_5_n_0 ;
  wire \angle[15]_i_6_n_0 ;
  wire \angle[15]_i_7_n_0 ;
  wire \angle[15]_i_8_n_0 ;
  wire \angle[15]_i_9_n_0 ;
  wire \angle[3]_i_1_n_0 ;
  wire \angle[3]_i_3_n_0 ;
  wire \angle[3]_i_4_n_0 ;
  wire \angle[3]_i_5_n_0 ;
  wire \angle[3]_i_6_n_0 ;
  wire \angle[3]_i_7_n_0 ;
  wire \angle[4]_i_1_n_0 ;
  wire \angle[5]_i_1_n_0 ;
  wire \angle[6]_i_1_n_0 ;
  wire \angle[7]_i_10_n_0 ;
  wire \angle[7]_i_1_n_0 ;
  wire \angle[7]_i_4_n_0 ;
  wire \angle[7]_i_5_n_0 ;
  wire \angle[7]_i_6_n_0 ;
  wire \angle[7]_i_7_n_0 ;
  wire \angle[7]_i_8_n_0 ;
  wire \angle[7]_i_9_n_0 ;
  wire \angle[8]_i_1_n_0 ;
  wire \angle[9]_i_1_n_0 ;
  wire [11:0]angle_in;
  wire [11:0]angle_in_IBUF;
  wire \angle_reg[11]_i_2_n_0 ;
  wire \angle_reg[11]_i_2_n_4 ;
  wire \angle_reg[11]_i_2_n_5 ;
  wire \angle_reg[11]_i_2_n_6 ;
  wire \angle_reg[11]_i_2_n_7 ;
  wire \angle_reg[11]_i_3_n_0 ;
  wire \angle_reg[15]_i_3_n_4 ;
  wire \angle_reg[15]_i_3_n_5 ;
  wire \angle_reg[15]_i_3_n_6 ;
  wire \angle_reg[15]_i_3_n_7 ;
  wire \angle_reg[3]_i_2_n_0 ;
  wire \angle_reg[3]_i_2_n_4 ;
  wire \angle_reg[3]_i_2_n_5 ;
  wire \angle_reg[3]_i_2_n_6 ;
  wire \angle_reg[3]_i_2_n_7 ;
  wire \angle_reg[7]_i_2_n_0 ;
  wire \angle_reg[7]_i_2_n_4 ;
  wire \angle_reg[7]_i_2_n_5 ;
  wire \angle_reg[7]_i_2_n_6 ;
  wire \angle_reg[7]_i_2_n_7 ;
  wire \angle_reg[7]_i_3_n_0 ;
  wire [13:0]atan_val;
  wire \atan_val[0]_i_1_n_0 ;
  wire \atan_val[10]_i_1_n_0 ;
  wire \atan_val[11]_i_1_n_0 ;
  wire \atan_val[12]_i_1_n_0 ;
  wire \atan_val[13]_i_1_n_0 ;
  wire \atan_val[13]_i_2_n_0 ;
  wire \atan_val[1]_i_1_n_0 ;
  wire \atan_val[2]_i_1_n_0 ;
  wire \atan_val[3]_i_1_n_0 ;
  wire \atan_val[4]_i_1_n_0 ;
  wire \atan_val[5]_i_1_n_0 ;
  wire \atan_val[6]_i_1_n_0 ;
  wire \atan_val[6]_i_2_n_0 ;
  wire \atan_val[7]_i_1_n_0 ;
  wire \atan_val[8]_i_1_n_0 ;
  wire \atan_val[9]_i_1_n_0 ;
  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [15:0]cos;
  wire \cos[14]_i_2_n_0 ;
  wire \cos[14]_i_3_n_0 ;
  wire \cos[14]_i_4_n_0 ;
  wire \cos[14]_i_5_n_0 ;
  wire \cos[15]_i_2_n_0 ;
  wire \cos[1]_i_3_n_0 ;
  wire \cos[1]_i_4_n_0 ;
  wire \cos[1]_i_5_n_0 ;
  wire \cos[5]_i_2_n_0 ;
  wire \cos[5]_i_3_n_0 ;
  wire \cos[5]_i_4_n_0 ;
  wire \cos[5]_i_5_n_0 ;
  wire \cos[8]_i_2_n_0 ;
  wire \cos[8]_i_3_n_0 ;
  wire \cos[8]_i_4_n_0 ;
  wire \cos[8]_i_5_n_0 ;
  wire [15:0]cos_frac;
  wire \cos_frac[0]_i_1_n_0 ;
  wire \cos_frac[0]_i_2_n_0 ;
  wire \cos_frac[10]_i_1_n_0 ;
  wire \cos_frac[10]_i_2_n_0 ;
  wire \cos_frac[11]_i_1_n_0 ;
  wire \cos_frac[11]_i_2_n_0 ;
  wire \cos_frac[12]_i_1_n_0 ;
  wire \cos_frac[12]_i_2_n_0 ;
  wire \cos_frac[13]_i_1_n_0 ;
  wire \cos_frac[13]_i_2_n_0 ;
  wire \cos_frac[13]_i_3_n_0 ;
  wire \cos_frac[14]_i_1_n_0 ;
  wire \cos_frac[1]_i_1_n_0 ;
  wire \cos_frac[1]_i_2_n_0 ;
  wire \cos_frac[2]_i_1_n_0 ;
  wire \cos_frac[2]_i_2_n_0 ;
  wire \cos_frac[3]_i_1_n_0 ;
  wire \cos_frac[3]_i_2_n_0 ;
  wire \cos_frac[4]_i_1_n_0 ;
  wire \cos_frac[4]_i_2_n_0 ;
  wire \cos_frac[5]_i_1_n_0 ;
  wire \cos_frac[5]_i_2_n_0 ;
  wire \cos_frac[6]_i_1_n_0 ;
  wire \cos_frac[6]_i_2_n_0 ;
  wire \cos_frac[7]_i_1_n_0 ;
  wire \cos_frac[7]_i_2_n_0 ;
  wire \cos_frac[7]_i_3_n_0 ;
  wire \cos_frac[8]_i_1_n_0 ;
  wire \cos_frac[8]_i_2_n_0 ;
  wire \cos_frac[8]_i_3_n_0 ;
  wire \cos_frac[9]_i_1_n_0 ;
  wire \cos_frac[9]_i_2_n_0 ;
  wire [11:0]cos_out;
  wire \cos_out[3]_i_2_n_0 ;
  wire [11:0]cos_out_OBUF;
  wire \cos_out_reg[11]_i_1_n_4 ;
  wire \cos_out_reg[11]_i_1_n_5 ;
  wire \cos_out_reg[11]_i_1_n_6 ;
  wire \cos_out_reg[11]_i_1_n_7 ;
  wire \cos_out_reg[3]_i_1_n_0 ;
  wire \cos_out_reg[3]_i_1_n_4 ;
  wire \cos_out_reg[3]_i_1_n_5 ;
  wire \cos_out_reg[3]_i_1_n_6 ;
  wire \cos_out_reg[3]_i_1_n_7 ;
  wire \cos_out_reg[7]_i_1_n_0 ;
  wire \cos_out_reg[7]_i_1_n_4 ;
  wire \cos_out_reg[7]_i_1_n_5 ;
  wire \cos_out_reg[7]_i_1_n_6 ;
  wire \cos_out_reg[7]_i_1_n_7 ;
  wire \cos_reg[14]_i_1_n_0 ;
  wire \cos_reg[1]_i_1_n_0 ;
  wire \cos_reg[5]_i_1_n_0 ;
  wire \cos_reg[8]_i_1_n_0 ;
  wire [3:0]i;
  wire [3:0]i__0;
  wire \i_rep[0]_i_1_n_0 ;
  wire \i_rep[1]_i_1_n_0 ;
  wire \i_rep[2]_i_1_n_0 ;
  wire \i_rep[3]_i_1_n_0 ;
  wire \i_rep[3]_i_2_n_0 ;
  wire \i_rep[3]_i_3_n_0 ;
  wire [15:0]out;
  wire p_0_in;
  wire [11:0]p_1_in;
  wire ready_out;
  wire ready_out_OBUF;
  wire ready_out_i_1_n_0;
  wire reset;
  wire reset_IBUF;
  wire \sin[11]_i_2_n_0 ;
  wire \sin[11]_i_3_n_0 ;
  wire \sin[11]_i_4_n_0 ;
  wire \sin[11]_i_5_n_0 ;
  wire \sin[15]_i_2_n_0 ;
  wire \sin[15]_i_3_n_0 ;
  wire \sin[15]_i_4_n_0 ;
  wire \sin[15]_i_5_n_0 ;
  wire \sin[3]_i_2_n_0 ;
  wire \sin[3]_i_3_n_0 ;
  wire \sin[3]_i_4_n_0 ;
  wire \sin[3]_i_5_n_0 ;
  wire \sin[7]_i_2_n_0 ;
  wire \sin[7]_i_3_n_0 ;
  wire \sin[7]_i_4_n_0 ;
  wire \sin[7]_i_5_n_0 ;
  wire \sin_frac[0]_i_1_n_0 ;
  wire \sin_frac[0]_i_2_n_0 ;
  wire \sin_frac[10]_i_1_n_0 ;
  wire \sin_frac[10]_i_2_n_0 ;
  wire \sin_frac[11]_i_1_n_0 ;
  wire \sin_frac[11]_i_2_n_0 ;
  wire \sin_frac[12]_i_1_n_0 ;
  wire \sin_frac[12]_i_2_n_0 ;
  wire \sin_frac[13]_i_1_n_0 ;
  wire \sin_frac[13]_i_2_n_0 ;
  wire \sin_frac[13]_i_3_n_0 ;
  wire \sin_frac[14]_i_1_n_0 ;
  wire \sin_frac[1]_i_1_n_0 ;
  wire \sin_frac[1]_i_2_n_0 ;
  wire \sin_frac[2]_i_1_n_0 ;
  wire \sin_frac[2]_i_2_n_0 ;
  wire \sin_frac[3]_i_1_n_0 ;
  wire \sin_frac[3]_i_2_n_0 ;
  wire \sin_frac[4]_i_1_n_0 ;
  wire \sin_frac[4]_i_2_n_0 ;
  wire \sin_frac[5]_i_1_n_0 ;
  wire \sin_frac[5]_i_2_n_0 ;
  wire \sin_frac[6]_i_1_n_0 ;
  wire \sin_frac[6]_i_2_n_0 ;
  wire \sin_frac[7]_i_1_n_0 ;
  wire \sin_frac[7]_i_2_n_0 ;
  wire \sin_frac[7]_i_3_n_0 ;
  wire \sin_frac[8]_i_1_n_0 ;
  wire \sin_frac[8]_i_2_n_0 ;
  wire \sin_frac[8]_i_3_n_0 ;
  wire \sin_frac[9]_i_1_n_0 ;
  wire \sin_frac[9]_i_2_n_0 ;
  wire \sin_frac_reg_n_0_[0] ;
  wire \sin_frac_reg_n_0_[10] ;
  wire \sin_frac_reg_n_0_[11] ;
  wire \sin_frac_reg_n_0_[12] ;
  wire \sin_frac_reg_n_0_[13] ;
  wire \sin_frac_reg_n_0_[14] ;
  wire \sin_frac_reg_n_0_[15] ;
  wire \sin_frac_reg_n_0_[1] ;
  wire \sin_frac_reg_n_0_[2] ;
  wire \sin_frac_reg_n_0_[3] ;
  wire \sin_frac_reg_n_0_[4] ;
  wire \sin_frac_reg_n_0_[5] ;
  wire \sin_frac_reg_n_0_[6] ;
  wire \sin_frac_reg_n_0_[7] ;
  wire \sin_frac_reg_n_0_[8] ;
  wire \sin_frac_reg_n_0_[9] ;
  wire [11:0]sin_out;
  wire \sin_out[11]_i_1_n_0 ;
  wire \sin_out[3]_i_2_n_0 ;
  wire [11:0]sin_out_OBUF;
  wire \sin_out_reg[11]_i_2_n_4 ;
  wire \sin_out_reg[11]_i_2_n_5 ;
  wire \sin_out_reg[11]_i_2_n_6 ;
  wire \sin_out_reg[11]_i_2_n_7 ;
  wire \sin_out_reg[3]_i_1_n_0 ;
  wire \sin_out_reg[3]_i_1_n_4 ;
  wire \sin_out_reg[3]_i_1_n_5 ;
  wire \sin_out_reg[3]_i_1_n_6 ;
  wire \sin_out_reg[3]_i_1_n_7 ;
  wire \sin_out_reg[7]_i_1_n_0 ;
  wire \sin_out_reg[7]_i_1_n_4 ;
  wire \sin_out_reg[7]_i_1_n_5 ;
  wire \sin_out_reg[7]_i_1_n_6 ;
  wire \sin_out_reg[7]_i_1_n_7 ;
  wire \sin_reg[11]_i_1_n_0 ;
  wire \sin_reg[11]_i_1_n_4 ;
  wire \sin_reg[11]_i_1_n_5 ;
  wire \sin_reg[11]_i_1_n_6 ;
  wire \sin_reg[11]_i_1_n_7 ;
  wire \sin_reg[15]_i_1_n_4 ;
  wire \sin_reg[15]_i_1_n_5 ;
  wire \sin_reg[15]_i_1_n_6 ;
  wire \sin_reg[15]_i_1_n_7 ;
  wire \sin_reg[3]_i_1_n_0 ;
  wire \sin_reg[3]_i_1_n_4 ;
  wire \sin_reg[3]_i_1_n_5 ;
  wire \sin_reg[3]_i_1_n_6 ;
  wire \sin_reg[3]_i_1_n_7 ;
  wire \sin_reg[7]_i_1_n_0 ;
  wire \sin_reg[7]_i_1_n_4 ;
  wire \sin_reg[7]_i_1_n_5 ;
  wire \sin_reg[7]_i_1_n_6 ;
  wire \sin_reg[7]_i_1_n_7 ;
  wire \sin_reg_n_0_[0] ;
  wire \sin_reg_n_0_[1] ;
  wire \sin_reg_n_0_[2] ;
  wire start;
  wire start_IBUF;
  wire [1:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire [2:0]\NLW_angle_reg[11]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_angle_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_angle_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_angle_reg[15]_i_4_CO_UNCONNECTED ;
  wire [2:0]\NLW_angle_reg[3]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_angle_reg[7]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_angle_reg[7]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_cos_out_reg[11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cos_out_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cos_out_reg[7]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cos_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cos_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_cos_reg[15]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_cos_reg[1]_i_1_CO_UNCONNECTED ;
  wire [0:0]\NLW_cos_reg[1]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_cos_reg[5]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cos_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_sin_out_reg[11]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_sin_out_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_sin_out_reg[7]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_sin_reg[11]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_sin_reg[15]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_sin_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_sin_reg[7]_i_1_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("cordic_rtl_TB_time_impl.sdf",,,,"tool_control");
end
  LUT3 #(
    .INIT(8'hB8)) 
    \angle[10]_i_1 
       (.I0(\angle_reg[11]_i_2_n_5 ),
        .I1(state[1]),
        .I2(angle0[6]),
        .O(\angle[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \angle[11]_i_1 
       (.I0(\angle_reg[11]_i_2_n_4 ),
        .I1(state[1]),
        .I2(angle0[7]),
        .O(\angle[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \angle[11]_i_10 
       (.I0(angle_in_IBUF[5]),
        .O(\angle[11]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \angle[11]_i_11 
       (.I0(angle_in_IBUF[4]),
        .O(\angle[11]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \angle[11]_i_4 
       (.I0(angle[11]),
        .I1(atan_val[11]),
        .I2(angle[15]),
        .O(\angle[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \angle[11]_i_5 
       (.I0(angle[10]),
        .I1(atan_val[10]),
        .I2(angle[15]),
        .O(\angle[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \angle[11]_i_6 
       (.I0(angle[9]),
        .I1(atan_val[9]),
        .I2(angle[15]),
        .O(\angle[11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \angle[11]_i_7 
       (.I0(angle[8]),
        .I1(atan_val[8]),
        .I2(angle[15]),
        .O(\angle[11]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \angle[11]_i_8 
       (.I0(angle_in_IBUF[7]),
        .O(\angle[11]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \angle[11]_i_9 
       (.I0(angle_in_IBUF[6]),
        .O(\angle[11]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \angle[12]_i_1 
       (.I0(\angle_reg[15]_i_3_n_7 ),
        .I1(state[1]),
        .I2(angle0[8]),
        .O(\angle[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \angle[13]_i_1 
       (.I0(\angle_reg[15]_i_3_n_6 ),
        .I1(state[1]),
        .I2(angle0[9]),
        .O(\angle[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \angle[14]_i_1 
       (.I0(\angle_reg[15]_i_3_n_5 ),
        .I1(state[1]),
        .I2(angle0[10]),
        .O(\angle[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h000E)) 
    \angle[15]_i_1 
       (.I0(state[1]),
        .I1(start_IBUF),
        .I2(state[0]),
        .I3(reset_IBUF),
        .O(\angle[15]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \angle[15]_i_10 
       (.I0(angle_in_IBUF[9]),
        .O(\angle[15]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \angle[15]_i_11 
       (.I0(angle_in_IBUF[8]),
        .O(\angle[15]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \angle[15]_i_2 
       (.I0(\angle_reg[15]_i_3_n_4 ),
        .I1(state[1]),
        .I2(angle0[11]),
        .O(\angle[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \angle[15]_i_5 
       (.I0(angle[14]),
        .I1(angle[15]),
        .O(\angle[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \angle[15]_i_6 
       (.I0(angle[13]),
        .I1(atan_val[13]),
        .I2(angle[15]),
        .O(\angle[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \angle[15]_i_7 
       (.I0(angle[12]),
        .I1(atan_val[12]),
        .I2(angle[15]),
        .O(\angle[15]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \angle[15]_i_8 
       (.I0(angle_in_IBUF[11]),
        .O(\angle[15]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \angle[15]_i_9 
       (.I0(angle_in_IBUF[10]),
        .O(\angle[15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \angle[3]_i_1 
       (.I0(reset_IBUF),
        .I1(state[0]),
        .I2(start_IBUF),
        .I3(state[1]),
        .O(\angle[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \angle[3]_i_3 
       (.I0(angle[15]),
        .O(\angle[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \angle[3]_i_4 
       (.I0(angle[3]),
        .I1(atan_val[3]),
        .I2(angle[15]),
        .O(\angle[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \angle[3]_i_5 
       (.I0(angle[2]),
        .I1(atan_val[2]),
        .I2(angle[15]),
        .O(\angle[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \angle[3]_i_6 
       (.I0(angle[1]),
        .I1(atan_val[1]),
        .I2(angle[15]),
        .O(\angle[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \angle[3]_i_7 
       (.I0(angle[0]),
        .I1(atan_val[0]),
        .I2(angle[15]),
        .O(\angle[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \angle[4]_i_1 
       (.I0(\angle_reg[7]_i_2_n_7 ),
        .I1(state[1]),
        .I2(angle0[0]),
        .O(\angle[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \angle[5]_i_1 
       (.I0(\angle_reg[7]_i_2_n_6 ),
        .I1(state[1]),
        .I2(angle0[1]),
        .O(\angle[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \angle[6]_i_1 
       (.I0(\angle_reg[7]_i_2_n_5 ),
        .I1(state[1]),
        .I2(angle0[2]),
        .O(\angle[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \angle[7]_i_1 
       (.I0(\angle_reg[7]_i_2_n_4 ),
        .I1(state[1]),
        .I2(angle0[3]),
        .O(\angle[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \angle[7]_i_10 
       (.I0(angle_in_IBUF[1]),
        .O(\angle[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \angle[7]_i_4 
       (.I0(angle[7]),
        .I1(atan_val[7]),
        .I2(angle[15]),
        .O(\angle[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \angle[7]_i_5 
       (.I0(angle[6]),
        .I1(atan_val[6]),
        .I2(angle[15]),
        .O(\angle[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \angle[7]_i_6 
       (.I0(angle[5]),
        .I1(atan_val[5]),
        .I2(angle[15]),
        .O(\angle[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \angle[7]_i_7 
       (.I0(angle[4]),
        .I1(atan_val[4]),
        .I2(angle[15]),
        .O(\angle[7]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \angle[7]_i_8 
       (.I0(angle_in_IBUF[3]),
        .O(\angle[7]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \angle[7]_i_9 
       (.I0(angle_in_IBUF[2]),
        .O(\angle[7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \angle[8]_i_1 
       (.I0(\angle_reg[11]_i_2_n_7 ),
        .I1(state[1]),
        .I2(angle0[4]),
        .O(\angle[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \angle[9]_i_1 
       (.I0(\angle_reg[11]_i_2_n_6 ),
        .I1(state[1]),
        .I2(angle0[5]),
        .O(\angle[9]_i_1_n_0 ));
  IBUF \angle_in_IBUF[0]_inst 
       (.I(angle_in[0]),
        .O(angle_in_IBUF[0]));
  IBUF \angle_in_IBUF[10]_inst 
       (.I(angle_in[10]),
        .O(angle_in_IBUF[10]));
  IBUF \angle_in_IBUF[11]_inst 
       (.I(angle_in[11]),
        .O(angle_in_IBUF[11]));
  IBUF \angle_in_IBUF[1]_inst 
       (.I(angle_in[1]),
        .O(angle_in_IBUF[1]));
  IBUF \angle_in_IBUF[2]_inst 
       (.I(angle_in[2]),
        .O(angle_in_IBUF[2]));
  IBUF \angle_in_IBUF[3]_inst 
       (.I(angle_in[3]),
        .O(angle_in_IBUF[3]));
  IBUF \angle_in_IBUF[4]_inst 
       (.I(angle_in[4]),
        .O(angle_in_IBUF[4]));
  IBUF \angle_in_IBUF[5]_inst 
       (.I(angle_in[5]),
        .O(angle_in_IBUF[5]));
  IBUF \angle_in_IBUF[6]_inst 
       (.I(angle_in[6]),
        .O(angle_in_IBUF[6]));
  IBUF \angle_in_IBUF[7]_inst 
       (.I(angle_in[7]),
        .O(angle_in_IBUF[7]));
  IBUF \angle_in_IBUF[8]_inst 
       (.I(angle_in[8]),
        .O(angle_in_IBUF[8]));
  IBUF \angle_in_IBUF[9]_inst 
       (.I(angle_in[9]),
        .O(angle_in_IBUF[9]));
  FDRE #(
    .INIT(1'b0)) 
    \angle_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\angle_reg[3]_i_2_n_7 ),
        .Q(angle[0]),
        .R(\angle[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \angle_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\angle[10]_i_1_n_0 ),
        .Q(angle[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \angle_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\angle[11]_i_1_n_0 ),
        .Q(angle[11]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \angle_reg[11]_i_2 
       (.CI(\angle_reg[7]_i_2_n_0 ),
        .CO({\angle_reg[11]_i_2_n_0 ,\NLW_angle_reg[11]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(angle[11:8]),
        .O({\angle_reg[11]_i_2_n_4 ,\angle_reg[11]_i_2_n_5 ,\angle_reg[11]_i_2_n_6 ,\angle_reg[11]_i_2_n_7 }),
        .S({\angle[11]_i_4_n_0 ,\angle[11]_i_5_n_0 ,\angle[11]_i_6_n_0 ,\angle[11]_i_7_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \angle_reg[11]_i_3 
       (.CI(\angle_reg[7]_i_3_n_0 ),
        .CO({\angle_reg[11]_i_3_n_0 ,\NLW_angle_reg[11]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(angle0[7:4]),
        .S({\angle[11]_i_8_n_0 ,\angle[11]_i_9_n_0 ,\angle[11]_i_10_n_0 ,\angle[11]_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \angle_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\angle[12]_i_1_n_0 ),
        .Q(angle[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \angle_reg[13] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\angle[13]_i_1_n_0 ),
        .Q(angle[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \angle_reg[14] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\angle[14]_i_1_n_0 ),
        .Q(angle[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \angle_reg[15] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\angle[15]_i_2_n_0 ),
        .Q(angle[15]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \angle_reg[15]_i_3 
       (.CI(\angle_reg[11]_i_2_n_0 ),
        .CO(\NLW_angle_reg[15]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,angle[14:12]}),
        .O({\angle_reg[15]_i_3_n_4 ,\angle_reg[15]_i_3_n_5 ,\angle_reg[15]_i_3_n_6 ,\angle_reg[15]_i_3_n_7 }),
        .S({1'b1,\angle[15]_i_5_n_0 ,\angle[15]_i_6_n_0 ,\angle[15]_i_7_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \angle_reg[15]_i_4 
       (.CI(\angle_reg[11]_i_3_n_0 ),
        .CO(\NLW_angle_reg[15]_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(angle0[11:8]),
        .S({\angle[15]_i_8_n_0 ,\angle[15]_i_9_n_0 ,\angle[15]_i_10_n_0 ,\angle[15]_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \angle_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\angle_reg[3]_i_2_n_6 ),
        .Q(angle[1]),
        .R(\angle[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \angle_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\angle_reg[3]_i_2_n_5 ),
        .Q(angle[2]),
        .R(\angle[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \angle_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\angle_reg[3]_i_2_n_4 ),
        .Q(angle[3]),
        .R(\angle[3]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \angle_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\angle_reg[3]_i_2_n_0 ,\NLW_angle_reg[3]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\angle[3]_i_3_n_0 ),
        .DI(angle[3:0]),
        .O({\angle_reg[3]_i_2_n_4 ,\angle_reg[3]_i_2_n_5 ,\angle_reg[3]_i_2_n_6 ,\angle_reg[3]_i_2_n_7 }),
        .S({\angle[3]_i_4_n_0 ,\angle[3]_i_5_n_0 ,\angle[3]_i_6_n_0 ,\angle[3]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \angle_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\angle[4]_i_1_n_0 ),
        .Q(angle[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \angle_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\angle[5]_i_1_n_0 ),
        .Q(angle[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \angle_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\angle[6]_i_1_n_0 ),
        .Q(angle[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \angle_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\angle[7]_i_1_n_0 ),
        .Q(angle[7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \angle_reg[7]_i_2 
       (.CI(\angle_reg[3]_i_2_n_0 ),
        .CO({\angle_reg[7]_i_2_n_0 ,\NLW_angle_reg[7]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(angle[7:4]),
        .O({\angle_reg[7]_i_2_n_4 ,\angle_reg[7]_i_2_n_5 ,\angle_reg[7]_i_2_n_6 ,\angle_reg[7]_i_2_n_7 }),
        .S({\angle[7]_i_4_n_0 ,\angle[7]_i_5_n_0 ,\angle[7]_i_6_n_0 ,\angle[7]_i_7_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \angle_reg[7]_i_3 
       (.CI(1'b0),
        .CO({\angle_reg[7]_i_3_n_0 ,\NLW_angle_reg[7]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(angle0[3:0]),
        .S({\angle[7]_i_8_n_0 ,\angle[7]_i_9_n_0 ,\angle[7]_i_10_n_0 ,angle_in_IBUF[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \angle_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\angle[8]_i_1_n_0 ),
        .Q(angle[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \angle_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\angle[9]_i_1_n_0 ),
        .Q(angle[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1084)) 
    \atan_val[0]_i_1 
       (.I0(i[3]),
        .I1(i[2]),
        .I2(i[1]),
        .I3(i[0]),
        .O(\atan_val[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \atan_val[10]_i_1 
       (.I0(i[1]),
        .I1(i[0]),
        .I2(i[2]),
        .O(\atan_val[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \atan_val[11]_i_1 
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .O(\atan_val[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \atan_val[12]_i_1 
       (.I0(i[2]),
        .I1(i[1]),
        .O(\atan_val[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \atan_val[13]_i_1 
       (.I0(i[3]),
        .I1(reset_IBUF),
        .I2(state[0]),
        .I3(state[1]),
        .O(\atan_val[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \atan_val[13]_i_2 
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .O(\atan_val[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0814)) 
    \atan_val[1]_i_1 
       (.I0(i[3]),
        .I1(i[2]),
        .I2(i[1]),
        .I3(i[0]),
        .O(\atan_val[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0355)) 
    \atan_val[2]_i_1 
       (.I0(i[3]),
        .I1(i[0]),
        .I2(i[1]),
        .I3(i[2]),
        .O(\atan_val[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2114)) 
    \atan_val[3]_i_1 
       (.I0(i[3]),
        .I1(i[2]),
        .I2(i[1]),
        .I3(i[0]),
        .O(\atan_val[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1024)) 
    \atan_val[4]_i_1 
       (.I0(i[3]),
        .I1(i[2]),
        .I2(i[1]),
        .I3(i[0]),
        .O(\atan_val[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1314)) 
    \atan_val[5]_i_1 
       (.I0(i[3]),
        .I1(i[2]),
        .I2(i[1]),
        .I3(i[0]),
        .O(\atan_val[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \atan_val[6]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(reset_IBUF),
        .O(\atan_val[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1007)) 
    \atan_val[6]_i_2 
       (.I0(i[3]),
        .I1(i[2]),
        .I2(i[0]),
        .I3(i[1]),
        .O(\atan_val[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hD6)) 
    \atan_val[7]_i_1 
       (.I0(i[2]),
        .I1(i[0]),
        .I2(i[1]),
        .O(\atan_val[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h76)) 
    \atan_val[8]_i_1 
       (.I0(i[2]),
        .I1(i[0]),
        .I2(i[1]),
        .O(\atan_val[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h67)) 
    \atan_val[9]_i_1 
       (.I0(i[2]),
        .I1(i[1]),
        .I2(i[0]),
        .O(\atan_val[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \atan_val_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\atan_val[0]_i_1_n_0 ),
        .Q(atan_val[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \atan_val_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\atan_val[10]_i_1_n_0 ),
        .Q(atan_val[10]),
        .R(\atan_val[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \atan_val_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\atan_val[11]_i_1_n_0 ),
        .Q(atan_val[11]),
        .R(\atan_val[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \atan_val_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\atan_val[12]_i_1_n_0 ),
        .Q(atan_val[12]),
        .R(\atan_val[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \atan_val_reg[13] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\atan_val[13]_i_2_n_0 ),
        .Q(atan_val[13]),
        .R(\atan_val[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \atan_val_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\atan_val[1]_i_1_n_0 ),
        .Q(atan_val[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \atan_val_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\atan_val[2]_i_1_n_0 ),
        .Q(atan_val[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \atan_val_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\atan_val[3]_i_1_n_0 ),
        .Q(atan_val[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \atan_val_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\atan_val[4]_i_1_n_0 ),
        .Q(atan_val[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \atan_val_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\atan_val[5]_i_1_n_0 ),
        .Q(atan_val[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \atan_val_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\atan_val[6]_i_2_n_0 ),
        .Q(atan_val[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \atan_val_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\atan_val[7]_i_1_n_0 ),
        .Q(atan_val[7]),
        .R(\atan_val[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \atan_val_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\atan_val[8]_i_1_n_0 ),
        .Q(atan_val[8]),
        .R(\atan_val[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \atan_val_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\atan_val[9]_i_1_n_0 ),
        .Q(atan_val[9]),
        .R(\atan_val[13]_i_1_n_0 ));
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  LUT3 #(
    .INIT(8'h96)) 
    \cos[14]_i_2 
       (.I0(cos[14]),
        .I1(\sin_frac_reg_n_0_[14] ),
        .I2(angle[15]),
        .O(\cos[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cos[14]_i_3 
       (.I0(cos[13]),
        .I1(\sin_frac_reg_n_0_[13] ),
        .I2(angle[15]),
        .O(\cos[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cos[14]_i_4 
       (.I0(cos[12]),
        .I1(\sin_frac_reg_n_0_[12] ),
        .I2(angle[15]),
        .O(\cos[14]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cos[14]_i_5 
       (.I0(cos[11]),
        .I1(\sin_frac_reg_n_0_[11] ),
        .I2(angle[15]),
        .O(\cos[14]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cos[15]_i_2 
       (.I0(cos[15]),
        .I1(\sin_frac_reg_n_0_[15] ),
        .I2(angle[15]),
        .O(\cos[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cos[1]_i_3 
       (.I0(cos[2]),
        .I1(\sin_frac_reg_n_0_[2] ),
        .I2(angle[15]),
        .O(\cos[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cos[1]_i_4 
       (.I0(cos[1]),
        .I1(\sin_frac_reg_n_0_[1] ),
        .I2(angle[15]),
        .O(\cos[1]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cos[1]_i_5 
       (.I0(cos[0]),
        .I1(\sin_frac_reg_n_0_[0] ),
        .I2(angle[15]),
        .O(\cos[1]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cos[5]_i_2 
       (.I0(cos[6]),
        .I1(\sin_frac_reg_n_0_[6] ),
        .I2(angle[15]),
        .O(\cos[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cos[5]_i_3 
       (.I0(cos[5]),
        .I1(\sin_frac_reg_n_0_[5] ),
        .I2(angle[15]),
        .O(\cos[5]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cos[5]_i_4 
       (.I0(cos[4]),
        .I1(\sin_frac_reg_n_0_[4] ),
        .I2(angle[15]),
        .O(\cos[5]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cos[5]_i_5 
       (.I0(cos[3]),
        .I1(\sin_frac_reg_n_0_[3] ),
        .I2(angle[15]),
        .O(\cos[5]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cos[8]_i_2 
       (.I0(cos[10]),
        .I1(\sin_frac_reg_n_0_[10] ),
        .I2(angle[15]),
        .O(\cos[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cos[8]_i_3 
       (.I0(cos[9]),
        .I1(\sin_frac_reg_n_0_[9] ),
        .I2(angle[15]),
        .O(\cos[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cos[8]_i_4 
       (.I0(cos[8]),
        .I1(\sin_frac_reg_n_0_[8] ),
        .I2(angle[15]),
        .O(\cos[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cos[8]_i_5 
       (.I0(cos[7]),
        .I1(\sin_frac_reg_n_0_[7] ),
        .I2(angle[15]),
        .O(\cos[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \cos_frac[0]_i_1 
       (.I0(\cos_frac[3]_i_2_n_0 ),
        .I1(i__0[1]),
        .I2(\cos_frac[1]_i_2_n_0 ),
        .I3(i__0[0]),
        .I4(\cos_frac[2]_i_2_n_0 ),
        .I5(\cos_frac[0]_i_2_n_0 ),
        .O(\cos_frac[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_frac[0]_i_2 
       (.I0(cos[12]),
        .I1(cos[4]),
        .I2(i__0[2]),
        .I3(cos[8]),
        .I4(i__0[3]),
        .I5(cos[0]),
        .O(\cos_frac[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cos_frac[10]_i_1 
       (.I0(\cos_frac[11]_i_2_n_0 ),
        .I1(i__0[0]),
        .I2(\cos_frac[10]_i_2_n_0 ),
        .O(\cos_frac[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \cos_frac[10]_i_2 
       (.I0(i__0[2]),
        .I1(cos[15]),
        .I2(i__0[3]),
        .I3(cos[12]),
        .I4(i__0[1]),
        .I5(\cos_frac[8]_i_2_n_0 ),
        .O(\cos_frac[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cos_frac[11]_i_1 
       (.I0(\cos_frac[12]_i_2_n_0 ),
        .I1(i__0[0]),
        .I2(\cos_frac[11]_i_2_n_0 ),
        .O(\cos_frac[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \cos_frac[11]_i_2 
       (.I0(cos[13]),
        .I1(i__0[1]),
        .I2(i__0[2]),
        .I3(cos[15]),
        .I4(i__0[3]),
        .I5(cos[11]),
        .O(\cos_frac[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cos_frac[12]_i_1 
       (.I0(\cos_frac[13]_i_3_n_0 ),
        .I1(i__0[0]),
        .I2(\cos_frac[12]_i_2_n_0 ),
        .O(\cos_frac[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \cos_frac[12]_i_2 
       (.I0(cos[14]),
        .I1(i__0[1]),
        .I2(i__0[2]),
        .I3(cos[15]),
        .I4(i__0[3]),
        .I5(cos[12]),
        .O(\cos_frac[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cos_frac[13]_i_1 
       (.I0(\cos_frac[13]_i_2_n_0 ),
        .I1(i__0[0]),
        .I2(\cos_frac[13]_i_3_n_0 ),
        .O(\cos_frac[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \cos_frac[13]_i_2 
       (.I0(i__0[1]),
        .I1(i__0[2]),
        .I2(cos[15]),
        .I3(i__0[3]),
        .I4(cos[14]),
        .O(\cos_frac[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \cos_frac[13]_i_3 
       (.I0(i__0[1]),
        .I1(i__0[2]),
        .I2(cos[15]),
        .I3(i__0[3]),
        .I4(cos[13]),
        .O(\cos_frac[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \cos_frac[14]_i_1 
       (.I0(i__0[0]),
        .I1(i__0[1]),
        .I2(i__0[2]),
        .I3(cos[15]),
        .I4(i__0[3]),
        .I5(cos[14]),
        .O(\cos_frac[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \cos_frac[1]_i_1 
       (.I0(\cos_frac[4]_i_2_n_0 ),
        .I1(i__0[1]),
        .I2(\cos_frac[2]_i_2_n_0 ),
        .I3(\cos_frac[3]_i_2_n_0 ),
        .I4(\cos_frac[1]_i_2_n_0 ),
        .I5(i__0[0]),
        .O(\cos_frac[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_frac[1]_i_2 
       (.I0(cos[13]),
        .I1(cos[5]),
        .I2(i__0[2]),
        .I3(cos[9]),
        .I4(i__0[3]),
        .I5(cos[1]),
        .O(\cos_frac[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_frac[2]_i_1 
       (.I0(\cos_frac[5]_i_2_n_0 ),
        .I1(\cos_frac[3]_i_2_n_0 ),
        .I2(i__0[0]),
        .I3(\cos_frac[4]_i_2_n_0 ),
        .I4(i__0[1]),
        .I5(\cos_frac[2]_i_2_n_0 ),
        .O(\cos_frac[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_frac[2]_i_2 
       (.I0(cos[14]),
        .I1(cos[6]),
        .I2(i__0[2]),
        .I3(cos[10]),
        .I4(i__0[3]),
        .I5(cos[2]),
        .O(\cos_frac[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_frac[3]_i_1 
       (.I0(\cos_frac[6]_i_2_n_0 ),
        .I1(\cos_frac[4]_i_2_n_0 ),
        .I2(i__0[0]),
        .I3(\cos_frac[5]_i_2_n_0 ),
        .I4(i__0[1]),
        .I5(\cos_frac[3]_i_2_n_0 ),
        .O(\cos_frac[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_frac[3]_i_2 
       (.I0(cos[15]),
        .I1(cos[7]),
        .I2(i__0[2]),
        .I3(cos[11]),
        .I4(i__0[3]),
        .I5(cos[3]),
        .O(\cos_frac[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_frac[4]_i_1 
       (.I0(\cos_frac[7]_i_3_n_0 ),
        .I1(\cos_frac[5]_i_2_n_0 ),
        .I2(i__0[0]),
        .I3(\cos_frac[6]_i_2_n_0 ),
        .I4(i__0[1]),
        .I5(\cos_frac[4]_i_2_n_0 ),
        .O(\cos_frac[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_frac[4]_i_2 
       (.I0(cos[15]),
        .I1(cos[8]),
        .I2(i__0[2]),
        .I3(cos[12]),
        .I4(i__0[3]),
        .I5(cos[4]),
        .O(\cos_frac[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_frac[5]_i_1 
       (.I0(\cos_frac[8]_i_3_n_0 ),
        .I1(\cos_frac[6]_i_2_n_0 ),
        .I2(i__0[0]),
        .I3(\cos_frac[7]_i_3_n_0 ),
        .I4(i__0[1]),
        .I5(\cos_frac[5]_i_2_n_0 ),
        .O(\cos_frac[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_frac[5]_i_2 
       (.I0(cos[15]),
        .I1(cos[9]),
        .I2(i__0[2]),
        .I3(cos[13]),
        .I4(i__0[3]),
        .I5(cos[5]),
        .O(\cos_frac[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_frac[6]_i_1 
       (.I0(\cos_frac[7]_i_2_n_0 ),
        .I1(\cos_frac[7]_i_3_n_0 ),
        .I2(i__0[0]),
        .I3(\cos_frac[8]_i_3_n_0 ),
        .I4(i__0[1]),
        .I5(\cos_frac[6]_i_2_n_0 ),
        .O(\cos_frac[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_frac[6]_i_2 
       (.I0(cos[15]),
        .I1(cos[10]),
        .I2(i__0[2]),
        .I3(cos[14]),
        .I4(i__0[3]),
        .I5(cos[6]),
        .O(\cos_frac[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_frac[7]_i_1 
       (.I0(\cos_frac[8]_i_2_n_0 ),
        .I1(\cos_frac[8]_i_3_n_0 ),
        .I2(i__0[0]),
        .I3(\cos_frac[7]_i_2_n_0 ),
        .I4(i__0[1]),
        .I5(\cos_frac[7]_i_3_n_0 ),
        .O(\cos_frac[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \cos_frac[7]_i_2 
       (.I0(cos[13]),
        .I1(i__0[2]),
        .I2(cos[15]),
        .I3(i__0[3]),
        .I4(cos[9]),
        .O(\cos_frac[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \cos_frac[7]_i_3 
       (.I0(cos[11]),
        .I1(i__0[2]),
        .I2(cos[15]),
        .I3(i__0[3]),
        .I4(cos[7]),
        .O(\cos_frac[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \cos_frac[8]_i_1 
       (.I0(\cos_frac[8]_i_2_n_0 ),
        .I1(i__0[1]),
        .I2(\cos_frac[8]_i_3_n_0 ),
        .I3(\cos_frac[9]_i_2_n_0 ),
        .I4(i__0[0]),
        .O(\cos_frac[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \cos_frac[8]_i_2 
       (.I0(cos[14]),
        .I1(i__0[2]),
        .I2(cos[15]),
        .I3(i__0[3]),
        .I4(cos[10]),
        .O(\cos_frac[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \cos_frac[8]_i_3 
       (.I0(cos[12]),
        .I1(i__0[2]),
        .I2(cos[15]),
        .I3(i__0[3]),
        .I4(cos[8]),
        .O(\cos_frac[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cos_frac[9]_i_1 
       (.I0(\cos_frac[10]_i_2_n_0 ),
        .I1(i__0[0]),
        .I2(\cos_frac[9]_i_2_n_0 ),
        .O(\cos_frac[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \cos_frac[9]_i_2 
       (.I0(i__0[2]),
        .I1(cos[15]),
        .I2(i__0[3]),
        .I3(cos[11]),
        .I4(i__0[1]),
        .I5(\cos_frac[7]_i_2_n_0 ),
        .O(\cos_frac[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cos_frac_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\cos_frac[0]_i_1_n_0 ),
        .Q(cos_frac[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cos_frac_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\cos_frac[10]_i_1_n_0 ),
        .Q(cos_frac[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cos_frac_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\cos_frac[11]_i_1_n_0 ),
        .Q(cos_frac[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cos_frac_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\cos_frac[12]_i_1_n_0 ),
        .Q(cos_frac[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cos_frac_reg[13] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\cos_frac[13]_i_1_n_0 ),
        .Q(cos_frac[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cos_frac_reg[14] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\cos_frac[14]_i_1_n_0 ),
        .Q(cos_frac[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cos_frac_reg[15] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(cos[15]),
        .Q(cos_frac[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cos_frac_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\cos_frac[1]_i_1_n_0 ),
        .Q(cos_frac[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cos_frac_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\cos_frac[2]_i_1_n_0 ),
        .Q(cos_frac[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cos_frac_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\cos_frac[3]_i_1_n_0 ),
        .Q(cos_frac[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cos_frac_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\cos_frac[4]_i_1_n_0 ),
        .Q(cos_frac[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cos_frac_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\cos_frac[5]_i_1_n_0 ),
        .Q(cos_frac[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cos_frac_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\cos_frac[6]_i_1_n_0 ),
        .Q(cos_frac[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cos_frac_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\cos_frac[7]_i_1_n_0 ),
        .Q(cos_frac[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cos_frac_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\cos_frac[8]_i_1_n_0 ),
        .Q(cos_frac[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cos_frac_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\cos_frac[9]_i_1_n_0 ),
        .Q(cos_frac[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \cos_out[3]_i_2 
       (.I0(cos[4]),
        .I1(cos[3]),
        .O(\cos_out[3]_i_2_n_0 ));
  OBUF \cos_out_OBUF[0]_inst 
       (.I(cos_out_OBUF[0]),
        .O(cos_out[0]));
  OBUF \cos_out_OBUF[10]_inst 
       (.I(cos_out_OBUF[10]),
        .O(cos_out[10]));
  OBUF \cos_out_OBUF[11]_inst 
       (.I(cos_out_OBUF[11]),
        .O(cos_out[11]));
  OBUF \cos_out_OBUF[1]_inst 
       (.I(cos_out_OBUF[1]),
        .O(cos_out[1]));
  OBUF \cos_out_OBUF[2]_inst 
       (.I(cos_out_OBUF[2]),
        .O(cos_out[2]));
  OBUF \cos_out_OBUF[3]_inst 
       (.I(cos_out_OBUF[3]),
        .O(cos_out[3]));
  OBUF \cos_out_OBUF[4]_inst 
       (.I(cos_out_OBUF[4]),
        .O(cos_out[4]));
  OBUF \cos_out_OBUF[5]_inst 
       (.I(cos_out_OBUF[5]),
        .O(cos_out[5]));
  OBUF \cos_out_OBUF[6]_inst 
       (.I(cos_out_OBUF[6]),
        .O(cos_out[6]));
  OBUF \cos_out_OBUF[7]_inst 
       (.I(cos_out_OBUF[7]),
        .O(cos_out[7]));
  OBUF \cos_out_OBUF[8]_inst 
       (.I(cos_out_OBUF[8]),
        .O(cos_out[8]));
  OBUF \cos_out_OBUF[9]_inst 
       (.I(cos_out_OBUF[9]),
        .O(cos_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \cos_out_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\cos_out_reg[3]_i_1_n_7 ),
        .Q(cos_out_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cos_out_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\cos_out_reg[11]_i_1_n_5 ),
        .Q(cos_out_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cos_out_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\cos_out_reg[11]_i_1_n_4 ),
        .Q(cos_out_OBUF[11]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \cos_out_reg[11]_i_1 
       (.CI(\cos_out_reg[7]_i_1_n_0 ),
        .CO(\NLW_cos_out_reg[11]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cos_out_reg[11]_i_1_n_4 ,\cos_out_reg[11]_i_1_n_5 ,\cos_out_reg[11]_i_1_n_6 ,\cos_out_reg[11]_i_1_n_7 }),
        .S(cos[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \cos_out_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\cos_out_reg[3]_i_1_n_6 ),
        .Q(cos_out_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cos_out_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\cos_out_reg[3]_i_1_n_5 ),
        .Q(cos_out_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cos_out_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\cos_out_reg[3]_i_1_n_4 ),
        .Q(cos_out_OBUF[3]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \cos_out_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\cos_out_reg[3]_i_1_n_0 ,\NLW_cos_out_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,cos[4]}),
        .O({\cos_out_reg[3]_i_1_n_4 ,\cos_out_reg[3]_i_1_n_5 ,\cos_out_reg[3]_i_1_n_6 ,\cos_out_reg[3]_i_1_n_7 }),
        .S({cos[7:5],\cos_out[3]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cos_out_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\cos_out_reg[7]_i_1_n_7 ),
        .Q(cos_out_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cos_out_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\cos_out_reg[7]_i_1_n_6 ),
        .Q(cos_out_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cos_out_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\cos_out_reg[7]_i_1_n_5 ),
        .Q(cos_out_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cos_out_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\cos_out_reg[7]_i_1_n_4 ),
        .Q(cos_out_OBUF[7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \cos_out_reg[7]_i_1 
       (.CI(\cos_out_reg[3]_i_1_n_0 ),
        .CO({\cos_out_reg[7]_i_1_n_0 ,\NLW_cos_out_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cos_out_reg[7]_i_1_n_4 ,\cos_out_reg[7]_i_1_n_5 ,\cos_out_reg[7]_i_1_n_6 ,\cos_out_reg[7]_i_1_n_7 }),
        .S(cos[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cos_out_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\cos_out_reg[11]_i_1_n_7 ),
        .Q(cos_out_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cos_out_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\cos_out_reg[11]_i_1_n_6 ),
        .Q(cos_out_OBUF[9]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \cos_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(out[0]),
        .Q(cos[0]),
        .S(\angle[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \cos_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(out[10]),
        .Q(cos[10]),
        .S(\angle[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cos_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(out[11]),
        .Q(cos[11]),
        .R(\angle[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cos_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(out[12]),
        .Q(cos[12]),
        .R(\angle[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \cos_reg[13] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(out[13]),
        .Q(cos[13]),
        .S(\angle[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cos_reg[14] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(out[14]),
        .Q(cos[14]),
        .R(\angle[3]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \cos_reg[14]_i_1 
       (.CI(\cos_reg[8]_i_1_n_0 ),
        .CO({\cos_reg[14]_i_1_n_0 ,\NLW_cos_reg[14]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(cos[14:11]),
        .O(out[14:11]),
        .S({\cos[14]_i_2_n_0 ,\cos[14]_i_3_n_0 ,\cos[14]_i_4_n_0 ,\cos[14]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cos_reg[15] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(out[15]),
        .Q(cos[15]),
        .R(\angle[3]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \cos_reg[15]_i_1 
       (.CI(\cos_reg[14]_i_1_n_0 ),
        .CO(\NLW_cos_reg[15]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cos_reg[15]_i_1_O_UNCONNECTED [3:1],out[15]}),
        .S({1'b0,1'b0,1'b0,\cos[15]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cos_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(out[1]),
        .Q(cos[1]),
        .R(\angle[3]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET SWEEP " *) 
  CARRY4 \cos_reg[1]_i_1 
       (.CI(1'b0),
        .CO({\cos_reg[1]_i_1_n_0 ,\NLW_cos_reg[1]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(angle[15]),
        .DI({cos[2:0],1'b0}),
        .O({out[2:0],\NLW_cos_reg[1]_i_1_O_UNCONNECTED [0]}),
        .S({\cos[1]_i_3_n_0 ,\cos[1]_i_4_n_0 ,\cos[1]_i_5_n_0 ,1'b1}));
  FDSE #(
    .INIT(1'b1)) 
    \cos_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(out[2]),
        .Q(cos[2]),
        .S(\angle[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \cos_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(out[3]),
        .Q(cos[3]),
        .S(\angle[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \cos_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(out[4]),
        .Q(cos[4]),
        .S(\angle[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cos_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(out[5]),
        .Q(cos[5]),
        .R(\angle[3]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \cos_reg[5]_i_1 
       (.CI(\cos_reg[1]_i_1_n_0 ),
        .CO({\cos_reg[5]_i_1_n_0 ,\NLW_cos_reg[5]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(cos[6:3]),
        .O(out[6:3]),
        .S({\cos[5]_i_2_n_0 ,\cos[5]_i_3_n_0 ,\cos[5]_i_4_n_0 ,\cos[5]_i_5_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \cos_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(out[6]),
        .Q(cos[6]),
        .S(\angle[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \cos_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(out[7]),
        .Q(cos[7]),
        .S(\angle[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cos_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(out[8]),
        .Q(cos[8]),
        .R(\angle[3]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \cos_reg[8]_i_1 
       (.CI(\cos_reg[5]_i_1_n_0 ),
        .CO({\cos_reg[8]_i_1_n_0 ,\NLW_cos_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(cos[10:7]),
        .O(out[10:7]),
        .S({\cos[8]_i_2_n_0 ,\cos[8]_i_3_n_0 ,\cos[8]_i_4_n_0 ,\cos[8]_i_5_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \cos_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(out[9]),
        .Q(cos[9]),
        .S(\angle[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\i_rep[3]_i_2_n_0 ),
        .D(\i_rep[0]_i_1_n_0 ),
        .Q(i__0[0]),
        .R(\i_rep[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\i_rep[3]_i_2_n_0 ),
        .D(\i_rep[1]_i_1_n_0 ),
        .Q(i__0[1]),
        .R(\i_rep[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\i_rep[3]_i_2_n_0 ),
        .D(\i_rep[2]_i_1_n_0 ),
        .Q(i__0[2]),
        .R(\i_rep[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\i_rep[3]_i_2_n_0 ),
        .D(\i_rep[3]_i_3_n_0 ),
        .Q(i__0[3]),
        .R(\i_rep[3]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\i_rep[3]_i_2_n_0 ),
        .D(\i_rep[0]_i_1_n_0 ),
        .Q(i[0]),
        .R(\i_rep[3]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\i_rep[3]_i_2_n_0 ),
        .D(\i_rep[1]_i_1_n_0 ),
        .Q(i[1]),
        .R(\i_rep[3]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\i_rep[3]_i_2_n_0 ),
        .D(\i_rep[2]_i_1_n_0 ),
        .Q(i[2]),
        .R(\i_rep[3]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\i_rep[3]_i_2_n_0 ),
        .D(\i_rep[3]_i_3_n_0 ),
        .Q(i[3]),
        .R(\i_rep[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \i_rep[0]_i_1 
       (.I0(i__0[0]),
        .O(\i_rep[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_rep[1]_i_1 
       (.I0(i__0[0]),
        .I1(i__0[1]),
        .O(\i_rep[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \i_rep[2]_i_1 
       (.I0(i__0[0]),
        .I1(i__0[1]),
        .I2(i__0[2]),
        .O(\i_rep[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \i_rep[3]_i_1 
       (.I0(reset_IBUF),
        .I1(state[1]),
        .I2(start_IBUF),
        .I3(state[0]),
        .O(\i_rep[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h000E)) 
    \i_rep[3]_i_2 
       (.I0(state[0]),
        .I1(start_IBUF),
        .I2(state[1]),
        .I3(reset_IBUF),
        .O(\i_rep[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \i_rep[3]_i_3 
       (.I0(i__0[1]),
        .I1(i__0[0]),
        .I2(i__0[2]),
        .I3(i__0[3]),
        .O(\i_rep[3]_i_3_n_0 ));
  OBUF ready_out_OBUF_inst
       (.I(ready_out_OBUF),
        .O(ready_out));
  LUT3 #(
    .INIT(8'hA4)) 
    ready_out_i_1
       (.I0(state[0]),
        .I1(start_IBUF),
        .I2(state[1]),
        .O(ready_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ready_out_reg
       (.C(clock_IBUF_BUFG),
        .CE(ready_out_i_1_n_0),
        .D(state[1]),
        .Q(ready_out_OBUF),
        .R(reset_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  LUT3 #(
    .INIT(8'h69)) 
    \sin[11]_i_2 
       (.I0(p_1_in[7]),
        .I1(cos_frac[11]),
        .I2(angle[15]),
        .O(\sin[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sin[11]_i_3 
       (.I0(p_1_in[6]),
        .I1(cos_frac[10]),
        .I2(angle[15]),
        .O(\sin[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sin[11]_i_4 
       (.I0(p_1_in[5]),
        .I1(cos_frac[9]),
        .I2(angle[15]),
        .O(\sin[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sin[11]_i_5 
       (.I0(p_1_in[4]),
        .I1(cos_frac[8]),
        .I2(angle[15]),
        .O(\sin[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sin[15]_i_2 
       (.I0(p_1_in[11]),
        .I1(cos_frac[15]),
        .I2(angle[15]),
        .O(\sin[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sin[15]_i_3 
       (.I0(p_1_in[10]),
        .I1(cos_frac[14]),
        .I2(angle[15]),
        .O(\sin[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sin[15]_i_4 
       (.I0(p_1_in[9]),
        .I1(cos_frac[13]),
        .I2(angle[15]),
        .O(\sin[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sin[15]_i_5 
       (.I0(p_1_in[8]),
        .I1(cos_frac[12]),
        .I2(angle[15]),
        .O(\sin[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sin[3]_i_2 
       (.I0(p_0_in),
        .I1(cos_frac[3]),
        .I2(angle[15]),
        .O(\sin[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sin[3]_i_3 
       (.I0(\sin_reg_n_0_[2] ),
        .I1(cos_frac[2]),
        .I2(angle[15]),
        .O(\sin[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sin[3]_i_4 
       (.I0(\sin_reg_n_0_[1] ),
        .I1(cos_frac[1]),
        .I2(angle[15]),
        .O(\sin[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sin[3]_i_5 
       (.I0(\sin_reg_n_0_[0] ),
        .I1(cos_frac[0]),
        .I2(angle[15]),
        .O(\sin[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sin[7]_i_2 
       (.I0(p_1_in[3]),
        .I1(cos_frac[7]),
        .I2(angle[15]),
        .O(\sin[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sin[7]_i_3 
       (.I0(p_1_in[2]),
        .I1(cos_frac[6]),
        .I2(angle[15]),
        .O(\sin[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sin[7]_i_4 
       (.I0(p_1_in[1]),
        .I1(cos_frac[5]),
        .I2(angle[15]),
        .O(\sin[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \sin[7]_i_5 
       (.I0(p_1_in[0]),
        .I1(cos_frac[4]),
        .I2(angle[15]),
        .O(\sin[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \sin_frac[0]_i_1 
       (.I0(\sin_frac[3]_i_2_n_0 ),
        .I1(i__0[1]),
        .I2(\sin_frac[1]_i_2_n_0 ),
        .I3(i__0[0]),
        .I4(\sin_frac[2]_i_2_n_0 ),
        .I5(\sin_frac[0]_i_2_n_0 ),
        .O(\sin_frac[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_frac[0]_i_2 
       (.I0(p_1_in[8]),
        .I1(p_1_in[0]),
        .I2(i__0[2]),
        .I3(p_1_in[4]),
        .I4(i__0[3]),
        .I5(\sin_reg_n_0_[0] ),
        .O(\sin_frac[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sin_frac[10]_i_1 
       (.I0(\sin_frac[11]_i_2_n_0 ),
        .I1(i__0[0]),
        .I2(\sin_frac[10]_i_2_n_0 ),
        .O(\sin_frac[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \sin_frac[10]_i_2 
       (.I0(i__0[2]),
        .I1(p_1_in[11]),
        .I2(i__0[3]),
        .I3(p_1_in[8]),
        .I4(i__0[1]),
        .I5(\sin_frac[8]_i_2_n_0 ),
        .O(\sin_frac[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sin_frac[11]_i_1 
       (.I0(\sin_frac[12]_i_2_n_0 ),
        .I1(i__0[0]),
        .I2(\sin_frac[11]_i_2_n_0 ),
        .O(\sin_frac[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \sin_frac[11]_i_2 
       (.I0(p_1_in[9]),
        .I1(i__0[1]),
        .I2(i__0[2]),
        .I3(p_1_in[11]),
        .I4(i__0[3]),
        .I5(p_1_in[7]),
        .O(\sin_frac[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sin_frac[12]_i_1 
       (.I0(\sin_frac[13]_i_3_n_0 ),
        .I1(i__0[0]),
        .I2(\sin_frac[12]_i_2_n_0 ),
        .O(\sin_frac[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \sin_frac[12]_i_2 
       (.I0(p_1_in[10]),
        .I1(i__0[1]),
        .I2(i__0[2]),
        .I3(p_1_in[11]),
        .I4(i__0[3]),
        .I5(p_1_in[8]),
        .O(\sin_frac[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sin_frac[13]_i_1 
       (.I0(\sin_frac[13]_i_2_n_0 ),
        .I1(i__0[0]),
        .I2(\sin_frac[13]_i_3_n_0 ),
        .O(\sin_frac[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \sin_frac[13]_i_2 
       (.I0(i__0[1]),
        .I1(i__0[2]),
        .I2(p_1_in[11]),
        .I3(i__0[3]),
        .I4(p_1_in[10]),
        .O(\sin_frac[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \sin_frac[13]_i_3 
       (.I0(i__0[1]),
        .I1(i__0[2]),
        .I2(p_1_in[11]),
        .I3(i__0[3]),
        .I4(p_1_in[9]),
        .O(\sin_frac[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \sin_frac[14]_i_1 
       (.I0(i__0[0]),
        .I1(i__0[1]),
        .I2(i__0[2]),
        .I3(p_1_in[11]),
        .I4(i__0[3]),
        .I5(p_1_in[10]),
        .O(\sin_frac[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \sin_frac[1]_i_1 
       (.I0(\sin_frac[4]_i_2_n_0 ),
        .I1(i__0[1]),
        .I2(\sin_frac[2]_i_2_n_0 ),
        .I3(\sin_frac[3]_i_2_n_0 ),
        .I4(\sin_frac[1]_i_2_n_0 ),
        .I5(i__0[0]),
        .O(\sin_frac[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_frac[1]_i_2 
       (.I0(p_1_in[9]),
        .I1(p_1_in[1]),
        .I2(i__0[2]),
        .I3(p_1_in[5]),
        .I4(i__0[3]),
        .I5(\sin_reg_n_0_[1] ),
        .O(\sin_frac[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_frac[2]_i_1 
       (.I0(\sin_frac[5]_i_2_n_0 ),
        .I1(\sin_frac[3]_i_2_n_0 ),
        .I2(i__0[0]),
        .I3(\sin_frac[4]_i_2_n_0 ),
        .I4(i__0[1]),
        .I5(\sin_frac[2]_i_2_n_0 ),
        .O(\sin_frac[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_frac[2]_i_2 
       (.I0(p_1_in[10]),
        .I1(p_1_in[2]),
        .I2(i__0[2]),
        .I3(p_1_in[6]),
        .I4(i__0[3]),
        .I5(\sin_reg_n_0_[2] ),
        .O(\sin_frac[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_frac[3]_i_1 
       (.I0(\sin_frac[6]_i_2_n_0 ),
        .I1(\sin_frac[4]_i_2_n_0 ),
        .I2(i__0[0]),
        .I3(\sin_frac[5]_i_2_n_0 ),
        .I4(i__0[1]),
        .I5(\sin_frac[3]_i_2_n_0 ),
        .O(\sin_frac[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_frac[3]_i_2 
       (.I0(p_1_in[11]),
        .I1(p_1_in[3]),
        .I2(i__0[2]),
        .I3(p_1_in[7]),
        .I4(i__0[3]),
        .I5(p_0_in),
        .O(\sin_frac[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_frac[4]_i_1 
       (.I0(\sin_frac[7]_i_3_n_0 ),
        .I1(\sin_frac[5]_i_2_n_0 ),
        .I2(i__0[0]),
        .I3(\sin_frac[6]_i_2_n_0 ),
        .I4(i__0[1]),
        .I5(\sin_frac[4]_i_2_n_0 ),
        .O(\sin_frac[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_frac[4]_i_2 
       (.I0(p_1_in[11]),
        .I1(p_1_in[4]),
        .I2(i__0[2]),
        .I3(p_1_in[8]),
        .I4(i__0[3]),
        .I5(p_1_in[0]),
        .O(\sin_frac[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_frac[5]_i_1 
       (.I0(\sin_frac[8]_i_3_n_0 ),
        .I1(\sin_frac[6]_i_2_n_0 ),
        .I2(i__0[0]),
        .I3(\sin_frac[7]_i_3_n_0 ),
        .I4(i__0[1]),
        .I5(\sin_frac[5]_i_2_n_0 ),
        .O(\sin_frac[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_frac[5]_i_2 
       (.I0(p_1_in[11]),
        .I1(p_1_in[5]),
        .I2(i__0[2]),
        .I3(p_1_in[9]),
        .I4(i__0[3]),
        .I5(p_1_in[1]),
        .O(\sin_frac[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_frac[6]_i_1 
       (.I0(\sin_frac[7]_i_2_n_0 ),
        .I1(\sin_frac[7]_i_3_n_0 ),
        .I2(i__0[0]),
        .I3(\sin_frac[8]_i_3_n_0 ),
        .I4(i__0[1]),
        .I5(\sin_frac[6]_i_2_n_0 ),
        .O(\sin_frac[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_frac[6]_i_2 
       (.I0(p_1_in[11]),
        .I1(p_1_in[6]),
        .I2(i__0[2]),
        .I3(p_1_in[10]),
        .I4(i__0[3]),
        .I5(p_1_in[2]),
        .O(\sin_frac[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_frac[7]_i_1 
       (.I0(\sin_frac[8]_i_2_n_0 ),
        .I1(\sin_frac[8]_i_3_n_0 ),
        .I2(i__0[0]),
        .I3(\sin_frac[7]_i_2_n_0 ),
        .I4(i__0[1]),
        .I5(\sin_frac[7]_i_3_n_0 ),
        .O(\sin_frac[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \sin_frac[7]_i_2 
       (.I0(p_1_in[9]),
        .I1(i__0[2]),
        .I2(p_1_in[11]),
        .I3(i__0[3]),
        .I4(p_1_in[5]),
        .O(\sin_frac[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \sin_frac[7]_i_3 
       (.I0(p_1_in[7]),
        .I1(i__0[2]),
        .I2(p_1_in[11]),
        .I3(i__0[3]),
        .I4(p_1_in[3]),
        .O(\sin_frac[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \sin_frac[8]_i_1 
       (.I0(\sin_frac[8]_i_2_n_0 ),
        .I1(i__0[1]),
        .I2(\sin_frac[8]_i_3_n_0 ),
        .I3(\sin_frac[9]_i_2_n_0 ),
        .I4(i__0[0]),
        .O(\sin_frac[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \sin_frac[8]_i_2 
       (.I0(p_1_in[10]),
        .I1(i__0[2]),
        .I2(p_1_in[11]),
        .I3(i__0[3]),
        .I4(p_1_in[6]),
        .O(\sin_frac[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \sin_frac[8]_i_3 
       (.I0(p_1_in[8]),
        .I1(i__0[2]),
        .I2(p_1_in[11]),
        .I3(i__0[3]),
        .I4(p_1_in[4]),
        .O(\sin_frac[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sin_frac[9]_i_1 
       (.I0(\sin_frac[10]_i_2_n_0 ),
        .I1(i__0[0]),
        .I2(\sin_frac[9]_i_2_n_0 ),
        .O(\sin_frac[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \sin_frac[9]_i_2 
       (.I0(i__0[2]),
        .I1(p_1_in[11]),
        .I2(i__0[3]),
        .I3(p_1_in[7]),
        .I4(i__0[1]),
        .I5(\sin_frac[7]_i_2_n_0 ),
        .O(\sin_frac[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sin_frac_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\sin_frac[0]_i_1_n_0 ),
        .Q(\sin_frac_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_frac_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\sin_frac[10]_i_1_n_0 ),
        .Q(\sin_frac_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_frac_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\sin_frac[11]_i_1_n_0 ),
        .Q(\sin_frac_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_frac_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\sin_frac[12]_i_1_n_0 ),
        .Q(\sin_frac_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_frac_reg[13] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\sin_frac[13]_i_1_n_0 ),
        .Q(\sin_frac_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_frac_reg[14] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\sin_frac[14]_i_1_n_0 ),
        .Q(\sin_frac_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_frac_reg[15] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(\sin_frac_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_frac_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\sin_frac[1]_i_1_n_0 ),
        .Q(\sin_frac_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_frac_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\sin_frac[2]_i_1_n_0 ),
        .Q(\sin_frac_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_frac_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\sin_frac[3]_i_1_n_0 ),
        .Q(\sin_frac_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_frac_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\sin_frac[4]_i_1_n_0 ),
        .Q(\sin_frac_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_frac_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\sin_frac[5]_i_1_n_0 ),
        .Q(\sin_frac_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_frac_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\sin_frac[6]_i_1_n_0 ),
        .Q(\sin_frac_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_frac_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\sin_frac[7]_i_1_n_0 ),
        .Q(\sin_frac_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_frac_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\sin_frac[8]_i_1_n_0 ),
        .Q(\sin_frac_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_frac_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(\atan_val[6]_i_1_n_0 ),
        .D(\sin_frac[9]_i_1_n_0 ),
        .Q(\sin_frac_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \sin_out[11]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(reset_IBUF),
        .O(\sin_out[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sin_out[3]_i_2 
       (.I0(p_1_in[0]),
        .I1(p_0_in),
        .O(\sin_out[3]_i_2_n_0 ));
  OBUF \sin_out_OBUF[0]_inst 
       (.I(sin_out_OBUF[0]),
        .O(sin_out[0]));
  OBUF \sin_out_OBUF[10]_inst 
       (.I(sin_out_OBUF[10]),
        .O(sin_out[10]));
  OBUF \sin_out_OBUF[11]_inst 
       (.I(sin_out_OBUF[11]),
        .O(sin_out[11]));
  OBUF \sin_out_OBUF[1]_inst 
       (.I(sin_out_OBUF[1]),
        .O(sin_out[1]));
  OBUF \sin_out_OBUF[2]_inst 
       (.I(sin_out_OBUF[2]),
        .O(sin_out[2]));
  OBUF \sin_out_OBUF[3]_inst 
       (.I(sin_out_OBUF[3]),
        .O(sin_out[3]));
  OBUF \sin_out_OBUF[4]_inst 
       (.I(sin_out_OBUF[4]),
        .O(sin_out[4]));
  OBUF \sin_out_OBUF[5]_inst 
       (.I(sin_out_OBUF[5]),
        .O(sin_out[5]));
  OBUF \sin_out_OBUF[6]_inst 
       (.I(sin_out_OBUF[6]),
        .O(sin_out[6]));
  OBUF \sin_out_OBUF[7]_inst 
       (.I(sin_out_OBUF[7]),
        .O(sin_out[7]));
  OBUF \sin_out_OBUF[8]_inst 
       (.I(sin_out_OBUF[8]),
        .O(sin_out[8]));
  OBUF \sin_out_OBUF[9]_inst 
       (.I(sin_out_OBUF[9]),
        .O(sin_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sin_out_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\sin_out_reg[3]_i_1_n_7 ),
        .Q(sin_out_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_out_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\sin_out_reg[11]_i_2_n_5 ),
        .Q(sin_out_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_out_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\sin_out_reg[11]_i_2_n_4 ),
        .Q(sin_out_OBUF[11]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \sin_out_reg[11]_i_2 
       (.CI(\sin_out_reg[7]_i_1_n_0 ),
        .CO(\NLW_sin_out_reg[11]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sin_out_reg[11]_i_2_n_4 ,\sin_out_reg[11]_i_2_n_5 ,\sin_out_reg[11]_i_2_n_6 ,\sin_out_reg[11]_i_2_n_7 }),
        .S(p_1_in[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \sin_out_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\sin_out_reg[3]_i_1_n_6 ),
        .Q(sin_out_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_out_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\sin_out_reg[3]_i_1_n_5 ),
        .Q(sin_out_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_out_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\sin_out_reg[3]_i_1_n_4 ),
        .Q(sin_out_OBUF[3]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \sin_out_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sin_out_reg[3]_i_1_n_0 ,\NLW_sin_out_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[0]}),
        .O({\sin_out_reg[3]_i_1_n_4 ,\sin_out_reg[3]_i_1_n_5 ,\sin_out_reg[3]_i_1_n_6 ,\sin_out_reg[3]_i_1_n_7 }),
        .S({p_1_in[3:1],\sin_out[3]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sin_out_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\sin_out_reg[7]_i_1_n_7 ),
        .Q(sin_out_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_out_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\sin_out_reg[7]_i_1_n_6 ),
        .Q(sin_out_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_out_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\sin_out_reg[7]_i_1_n_5 ),
        .Q(sin_out_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_out_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\sin_out_reg[7]_i_1_n_4 ),
        .Q(sin_out_OBUF[7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \sin_out_reg[7]_i_1 
       (.CI(\sin_out_reg[3]_i_1_n_0 ),
        .CO({\sin_out_reg[7]_i_1_n_0 ,\NLW_sin_out_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sin_out_reg[7]_i_1_n_4 ,\sin_out_reg[7]_i_1_n_5 ,\sin_out_reg[7]_i_1_n_6 ,\sin_out_reg[7]_i_1_n_7 }),
        .S(p_1_in[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \sin_out_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\sin_out_reg[11]_i_2_n_7 ),
        .Q(sin_out_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_out_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(\sin_out[11]_i_1_n_0 ),
        .D(\sin_out_reg[11]_i_2_n_6 ),
        .Q(sin_out_OBUF[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\sin_reg[3]_i_1_n_7 ),
        .Q(\sin_reg_n_0_[0] ),
        .R(\angle[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sin_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\sin_reg[11]_i_1_n_5 ),
        .Q(p_1_in[6]),
        .R(\angle[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sin_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\sin_reg[11]_i_1_n_4 ),
        .Q(p_1_in[7]),
        .R(\angle[3]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \sin_reg[11]_i_1 
       (.CI(\sin_reg[7]_i_1_n_0 ),
        .CO({\sin_reg[11]_i_1_n_0 ,\NLW_sin_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(p_1_in[7:4]),
        .O({\sin_reg[11]_i_1_n_4 ,\sin_reg[11]_i_1_n_5 ,\sin_reg[11]_i_1_n_6 ,\sin_reg[11]_i_1_n_7 }),
        .S({\sin[11]_i_2_n_0 ,\sin[11]_i_3_n_0 ,\sin[11]_i_4_n_0 ,\sin[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sin_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\sin_reg[15]_i_1_n_7 ),
        .Q(p_1_in[8]),
        .R(\angle[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sin_reg[13] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\sin_reg[15]_i_1_n_6 ),
        .Q(p_1_in[9]),
        .R(\angle[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sin_reg[14] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\sin_reg[15]_i_1_n_5 ),
        .Q(p_1_in[10]),
        .R(\angle[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sin_reg[15] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\sin_reg[15]_i_1_n_4 ),
        .Q(p_1_in[11]),
        .R(\angle[3]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \sin_reg[15]_i_1 
       (.CI(\sin_reg[11]_i_1_n_0 ),
        .CO(\NLW_sin_reg[15]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,p_1_in[10:8]}),
        .O({\sin_reg[15]_i_1_n_4 ,\sin_reg[15]_i_1_n_5 ,\sin_reg[15]_i_1_n_6 ,\sin_reg[15]_i_1_n_7 }),
        .S({\sin[15]_i_2_n_0 ,\sin[15]_i_3_n_0 ,\sin[15]_i_4_n_0 ,\sin[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sin_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\sin_reg[3]_i_1_n_6 ),
        .Q(\sin_reg_n_0_[1] ),
        .R(\angle[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sin_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\sin_reg[3]_i_1_n_5 ),
        .Q(\sin_reg_n_0_[2] ),
        .R(\angle[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sin_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\sin_reg[3]_i_1_n_4 ),
        .Q(p_0_in),
        .R(\angle[3]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \sin_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sin_reg[3]_i_1_n_0 ,\NLW_sin_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\angle[3]_i_3_n_0 ),
        .DI({p_0_in,\sin_reg_n_0_[2] ,\sin_reg_n_0_[1] ,\sin_reg_n_0_[0] }),
        .O({\sin_reg[3]_i_1_n_4 ,\sin_reg[3]_i_1_n_5 ,\sin_reg[3]_i_1_n_6 ,\sin_reg[3]_i_1_n_7 }),
        .S({\sin[3]_i_2_n_0 ,\sin[3]_i_3_n_0 ,\sin[3]_i_4_n_0 ,\sin[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sin_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\sin_reg[7]_i_1_n_7 ),
        .Q(p_1_in[0]),
        .R(\angle[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sin_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\sin_reg[7]_i_1_n_6 ),
        .Q(p_1_in[1]),
        .R(\angle[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sin_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\sin_reg[7]_i_1_n_5 ),
        .Q(p_1_in[2]),
        .R(\angle[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sin_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\sin_reg[7]_i_1_n_4 ),
        .Q(p_1_in[3]),
        .R(\angle[3]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \sin_reg[7]_i_1 
       (.CI(\sin_reg[3]_i_1_n_0 ),
        .CO({\sin_reg[7]_i_1_n_0 ,\NLW_sin_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(p_1_in[3:0]),
        .O({\sin_reg[7]_i_1_n_4 ,\sin_reg[7]_i_1_n_5 ,\sin_reg[7]_i_1_n_6 ,\sin_reg[7]_i_1_n_7 }),
        .S({\sin[7]_i_2_n_0 ,\sin[7]_i_3_n_0 ,\sin[7]_i_4_n_0 ,\sin[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sin_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\sin_reg[11]_i_1_n_7 ),
        .Q(p_1_in[4]),
        .R(\angle[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sin_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(\angle[15]_i_1_n_0 ),
        .D(\sin_reg[11]_i_1_n_6 ),
        .Q(p_1_in[5]),
        .R(\angle[3]_i_1_n_0 ));
  IBUF start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
  LUT4 #(
    .INIT(16'h00D4)) 
    \state[0]_i_1 
       (.I0(state[0]),
        .I1(start_IBUF),
        .I2(state[1]),
        .I3(reset_IBUF),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF800F80)) 
    \state[1]_i_1 
       (.I0(i__0[2]),
        .I1(i__0[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(start_IBUF),
        .I5(reset_IBUF),
        .O(\state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clock_IBUF_BUFG),
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
