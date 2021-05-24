// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri May 21 16:20:20 2021
// Host        : DESKTOP-28EGR53 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               E:/elektronika-notatki/Rok_IV/SDUP/SDUP-FPGA/Lab7/InvSqrRoot/InvSqrRoot.sim/sim_1/impl/timing/xsim/NRInvSqrRootSMTB_time_impl.v
// Design      : NRInvSqrRootSM
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "9c219e2c" *) (* FRAC_BITS = "19" *) (* S1 = "4'b0001" *) 
(* S10 = "4'b1010" *) (* S11 = "4'b1011" *) (* S12 = "4'b1100" *) 
(* S13 = "4'b1101" *) (* S2 = "4'b0010" *) (* S3 = "4'b0011" *) 
(* S4 = "4'b0100" *) (* S5 = "4'b0101" *) (* S6 = "4'b0110" *) 
(* S7 = "4'b0111" *) (* S8 = "4'b1000" *) (* S9 = "4'b1001" *) 
(* TOTAL_BITS = "25" *) (* TOTAL_ITERATIONS = "5" *) 
(* NotValidForBitStream *)
module NRInvSqrRootSM
   (clock,
    reset,
    start,
    val_in,
    ready_out,
    val_out);
  input clock;
  input reset;
  input start;
  input [24:0]val_in;
  output ready_out;
  output [24:0]val_out;

  wire [23:0]A;
  wire PrevApproxVal;
  wire PrevApproxVal0__0_i_10_n_0;
  wire PrevApproxVal0__0_i_11_n_0;
  wire PrevApproxVal0__0_i_12_n_0;
  wire PrevApproxVal0__0_i_2_n_0;
  wire PrevApproxVal0__0_i_4_n_0;
  wire PrevApproxVal0__0_i_5_n_0;
  wire PrevApproxVal0__0_i_6_n_0;
  wire PrevApproxVal0__0_i_7_n_0;
  wire PrevApproxVal0__0_i_8_n_0;
  wire PrevApproxVal0__0_i_9_n_0;
  wire PrevApproxVal0__0_n_100;
  wire PrevApproxVal0__0_n_101;
  wire PrevApproxVal0__0_n_102;
  wire PrevApproxVal0__0_n_103;
  wire PrevApproxVal0__0_n_80;
  wire PrevApproxVal0__0_n_81;
  wire PrevApproxVal0__0_n_82;
  wire PrevApproxVal0__0_n_83;
  wire PrevApproxVal0__0_n_84;
  wire PrevApproxVal0__0_n_85;
  wire PrevApproxVal0__0_n_86;
  wire PrevApproxVal0__0_n_87;
  wire PrevApproxVal0__0_n_88;
  wire PrevApproxVal0__0_n_89;
  wire PrevApproxVal0__0_n_90;
  wire PrevApproxVal0__0_n_91;
  wire PrevApproxVal0__0_n_92;
  wire PrevApproxVal0__0_n_93;
  wire PrevApproxVal0__0_n_94;
  wire PrevApproxVal0__0_n_95;
  wire PrevApproxVal0__0_n_96;
  wire PrevApproxVal0__0_n_97;
  wire PrevApproxVal0__0_n_98;
  wire PrevApproxVal0__0_n_99;
  wire PrevApproxVal0_n_106;
  wire PrevApproxVal0_n_107;
  wire PrevApproxVal0_n_108;
  wire PrevApproxVal0_n_109;
  wire PrevApproxVal0_n_110;
  wire PrevApproxVal0_n_111;
  wire PrevApproxVal0_n_112;
  wire PrevApproxVal0_n_113;
  wire PrevApproxVal0_n_114;
  wire PrevApproxVal0_n_115;
  wire PrevApproxVal0_n_116;
  wire PrevApproxVal0_n_117;
  wire PrevApproxVal0_n_118;
  wire PrevApproxVal0_n_119;
  wire PrevApproxVal0_n_120;
  wire PrevApproxVal0_n_121;
  wire PrevApproxVal0_n_122;
  wire PrevApproxVal0_n_123;
  wire PrevApproxVal0_n_124;
  wire PrevApproxVal0_n_125;
  wire PrevApproxVal0_n_126;
  wire PrevApproxVal0_n_127;
  wire PrevApproxVal0_n_128;
  wire PrevApproxVal0_n_129;
  wire PrevApproxVal0_n_130;
  wire PrevApproxVal0_n_131;
  wire PrevApproxVal0_n_132;
  wire PrevApproxVal0_n_133;
  wire PrevApproxVal0_n_134;
  wire PrevApproxVal0_n_135;
  wire PrevApproxVal0_n_136;
  wire PrevApproxVal0_n_137;
  wire PrevApproxVal0_n_138;
  wire PrevApproxVal0_n_139;
  wire PrevApproxVal0_n_140;
  wire PrevApproxVal0_n_141;
  wire PrevApproxVal0_n_142;
  wire PrevApproxVal0_n_143;
  wire PrevApproxVal0_n_144;
  wire PrevApproxVal0_n_145;
  wire PrevApproxVal0_n_146;
  wire PrevApproxVal0_n_147;
  wire PrevApproxVal0_n_148;
  wire PrevApproxVal0_n_149;
  wire PrevApproxVal0_n_150;
  wire PrevApproxVal0_n_151;
  wire PrevApproxVal0_n_152;
  wire PrevApproxVal0_n_153;
  wire \PrevApproxVal[16]_i_1_n_0 ;
  wire \PrevApproxVal[23]_i_1_n_0 ;
  wire \PrevApproxVal_reg_n_0_[0] ;
  wire \PrevApproxVal_reg_n_0_[10] ;
  wire \PrevApproxVal_reg_n_0_[11] ;
  wire \PrevApproxVal_reg_n_0_[12] ;
  wire \PrevApproxVal_reg_n_0_[13] ;
  wire \PrevApproxVal_reg_n_0_[14] ;
  wire \PrevApproxVal_reg_n_0_[15] ;
  wire \PrevApproxVal_reg_n_0_[16] ;
  wire \PrevApproxVal_reg_n_0_[17] ;
  wire \PrevApproxVal_reg_n_0_[18] ;
  wire \PrevApproxVal_reg_n_0_[19] ;
  wire \PrevApproxVal_reg_n_0_[1] ;
  wire \PrevApproxVal_reg_n_0_[20] ;
  wire \PrevApproxVal_reg_n_0_[21] ;
  wire \PrevApproxVal_reg_n_0_[22] ;
  wire \PrevApproxVal_reg_n_0_[23] ;
  wire \PrevApproxVal_reg_n_0_[2] ;
  wire \PrevApproxVal_reg_n_0_[3] ;
  wire \PrevApproxVal_reg_n_0_[4] ;
  wire \PrevApproxVal_reg_n_0_[5] ;
  wire \PrevApproxVal_reg_n_0_[6] ;
  wire \PrevApproxVal_reg_n_0_[7] ;
  wire \PrevApproxVal_reg_n_0_[8] ;
  wire \PrevApproxVal_reg_n_0_[9] ;
  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire inter120_n_106;
  wire inter120_n_107;
  wire inter120_n_108;
  wire inter120_n_109;
  wire inter120_n_110;
  wire inter120_n_111;
  wire inter120_n_112;
  wire inter120_n_113;
  wire inter120_n_114;
  wire inter120_n_115;
  wire inter120_n_116;
  wire inter120_n_117;
  wire inter120_n_118;
  wire inter120_n_119;
  wire inter120_n_120;
  wire inter120_n_121;
  wire inter120_n_122;
  wire inter120_n_123;
  wire inter120_n_124;
  wire inter120_n_125;
  wire inter120_n_126;
  wire inter120_n_127;
  wire inter120_n_128;
  wire inter120_n_129;
  wire inter120_n_130;
  wire inter120_n_131;
  wire inter120_n_132;
  wire inter120_n_133;
  wire inter120_n_134;
  wire inter120_n_135;
  wire inter120_n_136;
  wire inter120_n_137;
  wire inter120_n_138;
  wire inter120_n_139;
  wire inter120_n_140;
  wire inter120_n_141;
  wire inter120_n_142;
  wire inter120_n_143;
  wire inter120_n_144;
  wire inter120_n_145;
  wire inter120_n_146;
  wire inter120_n_147;
  wire inter120_n_148;
  wire inter120_n_149;
  wire inter120_n_150;
  wire inter120_n_151;
  wire inter120_n_152;
  wire inter120_n_153;
  wire inter120_n_24;
  wire inter120_n_25;
  wire inter120_n_26;
  wire inter120_n_27;
  wire inter120_n_28;
  wire inter120_n_29;
  wire inter120_n_30;
  wire inter120_n_31;
  wire inter120_n_32;
  wire inter120_n_33;
  wire inter120_n_34;
  wire inter120_n_35;
  wire inter120_n_36;
  wire inter120_n_37;
  wire inter120_n_38;
  wire inter120_n_39;
  wire inter120_n_40;
  wire inter120_n_41;
  wire inter120_n_42;
  wire inter120_n_43;
  wire inter120_n_44;
  wire inter120_n_45;
  wire inter120_n_46;
  wire inter120_n_47;
  wire inter120_n_48;
  wire inter120_n_49;
  wire inter120_n_50;
  wire inter120_n_51;
  wire inter120_n_52;
  wire inter120_n_53;
  wire inter121__0_n_100;
  wire inter121__0_n_101;
  wire inter121__0_n_102;
  wire inter121__0_n_103;
  wire inter121__0_n_80;
  wire inter121__0_n_81;
  wire inter121__0_n_82;
  wire inter121__0_n_83;
  wire inter121__0_n_84;
  wire inter121__0_n_85;
  wire inter121__0_n_86;
  wire inter121__0_n_87;
  wire inter121__0_n_88;
  wire inter121__0_n_89;
  wire inter121__0_n_90;
  wire inter121__0_n_91;
  wire inter121__0_n_92;
  wire inter121__0_n_93;
  wire inter121__0_n_94;
  wire inter121__0_n_95;
  wire inter121__0_n_96;
  wire inter121__0_n_97;
  wire inter121__0_n_98;
  wire inter121__0_n_99;
  wire inter121_i_1_n_0;
  wire inter121_n_106;
  wire inter121_n_107;
  wire inter121_n_108;
  wire inter121_n_109;
  wire inter121_n_110;
  wire inter121_n_111;
  wire inter121_n_112;
  wire inter121_n_113;
  wire inter121_n_114;
  wire inter121_n_115;
  wire inter121_n_116;
  wire inter121_n_117;
  wire inter121_n_118;
  wire inter121_n_119;
  wire inter121_n_120;
  wire inter121_n_121;
  wire inter121_n_122;
  wire inter121_n_123;
  wire inter121_n_124;
  wire inter121_n_125;
  wire inter121_n_126;
  wire inter121_n_127;
  wire inter121_n_128;
  wire inter121_n_129;
  wire inter121_n_130;
  wire inter121_n_131;
  wire inter121_n_132;
  wire inter121_n_133;
  wire inter121_n_134;
  wire inter121_n_135;
  wire inter121_n_136;
  wire inter121_n_137;
  wire inter121_n_138;
  wire inter121_n_139;
  wire inter121_n_140;
  wire inter121_n_141;
  wire inter121_n_142;
  wire inter121_n_143;
  wire inter121_n_144;
  wire inter121_n_145;
  wire inter121_n_146;
  wire inter121_n_147;
  wire inter121_n_148;
  wire inter121_n_149;
  wire inter121_n_150;
  wire inter121_n_151;
  wire inter121_n_152;
  wire inter121_n_153;
  wire \inter12[23]_i_1_n_0 ;
  wire \inter12_reg_n_0_[0] ;
  wire \inter12_reg_n_0_[10] ;
  wire \inter12_reg_n_0_[11] ;
  wire \inter12_reg_n_0_[12] ;
  wire \inter12_reg_n_0_[13] ;
  wire \inter12_reg_n_0_[14] ;
  wire \inter12_reg_n_0_[15] ;
  wire \inter12_reg_n_0_[16] ;
  wire \inter12_reg_n_0_[17] ;
  wire \inter12_reg_n_0_[18] ;
  wire \inter12_reg_n_0_[19] ;
  wire \inter12_reg_n_0_[1] ;
  wire \inter12_reg_n_0_[20] ;
  wire \inter12_reg_n_0_[21] ;
  wire \inter12_reg_n_0_[22] ;
  wire \inter12_reg_n_0_[23] ;
  wire \inter12_reg_n_0_[2] ;
  wire \inter12_reg_n_0_[3] ;
  wire \inter12_reg_n_0_[4] ;
  wire \inter12_reg_n_0_[5] ;
  wire \inter12_reg_n_0_[6] ;
  wire \inter12_reg_n_0_[7] ;
  wire \inter12_reg_n_0_[8] ;
  wire \inter12_reg_n_0_[9] ;
  wire inter13;
  wire [24:24]inter131_out;
  wire \inter13[11]_i_2_n_0 ;
  wire \inter13[11]_i_3_n_0 ;
  wire \inter13[11]_i_4_n_0 ;
  wire \inter13[11]_i_5_n_0 ;
  wire \inter13[11]_i_6_n_0 ;
  wire \inter13[11]_i_7_n_0 ;
  wire \inter13[11]_i_8_n_0 ;
  wire \inter13[11]_i_9_n_0 ;
  wire \inter13[15]_i_2_n_0 ;
  wire \inter13[15]_i_3_n_0 ;
  wire \inter13[15]_i_4_n_0 ;
  wire \inter13[15]_i_5_n_0 ;
  wire \inter13[15]_i_6_n_0 ;
  wire \inter13[15]_i_7_n_0 ;
  wire \inter13[15]_i_8_n_0 ;
  wire \inter13[15]_i_9_n_0 ;
  wire \inter13[19]_i_2_n_0 ;
  wire \inter13[19]_i_3_n_0 ;
  wire \inter13[19]_i_4_n_0 ;
  wire \inter13[19]_i_5_n_0 ;
  wire \inter13[19]_i_6_n_0 ;
  wire \inter13[19]_i_7_n_0 ;
  wire \inter13[19]_i_8_n_0 ;
  wire \inter13[19]_i_9_n_0 ;
  wire \inter13[23]_i_10_n_0 ;
  wire \inter13[23]_i_11_n_0 ;
  wire \inter13[23]_i_12_n_0 ;
  wire \inter13[23]_i_13_n_0 ;
  wire \inter13[23]_i_1_n_0 ;
  wire \inter13[23]_i_3_n_0 ;
  wire \inter13[23]_i_4_n_0 ;
  wire \inter13[23]_i_5_n_0 ;
  wire \inter13[23]_i_6_n_0 ;
  wire \inter13[23]_i_8_n_0 ;
  wire \inter13[23]_i_9_n_0 ;
  wire \inter13[3]_i_2_n_0 ;
  wire \inter13[3]_i_3_n_0 ;
  wire \inter13[3]_i_4_n_0 ;
  wire \inter13[3]_i_5_n_0 ;
  wire \inter13[3]_i_6_n_0 ;
  wire \inter13[3]_i_7_n_0 ;
  wire \inter13[3]_i_8_n_0 ;
  wire \inter13[7]_i_2_n_0 ;
  wire \inter13[7]_i_3_n_0 ;
  wire \inter13[7]_i_4_n_0 ;
  wire \inter13[7]_i_5_n_0 ;
  wire \inter13[7]_i_6_n_0 ;
  wire \inter13[7]_i_7_n_0 ;
  wire \inter13[7]_i_8_n_0 ;
  wire \inter13[7]_i_9_n_0 ;
  wire \inter13_reg[11]_i_1_n_0 ;
  wire \inter13_reg[11]_i_1_n_4 ;
  wire \inter13_reg[11]_i_1_n_5 ;
  wire \inter13_reg[11]_i_1_n_6 ;
  wire \inter13_reg[11]_i_1_n_7 ;
  wire \inter13_reg[15]_i_1_n_0 ;
  wire \inter13_reg[15]_i_1_n_4 ;
  wire \inter13_reg[15]_i_1_n_5 ;
  wire \inter13_reg[15]_i_1_n_6 ;
  wire \inter13_reg[15]_i_1_n_7 ;
  wire \inter13_reg[19]_i_1_n_0 ;
  wire \inter13_reg[19]_i_1_n_4 ;
  wire \inter13_reg[19]_i_1_n_5 ;
  wire \inter13_reg[19]_i_1_n_6 ;
  wire \inter13_reg[19]_i_1_n_7 ;
  wire \inter13_reg[23]_i_2_n_4 ;
  wire \inter13_reg[23]_i_2_n_5 ;
  wire \inter13_reg[23]_i_2_n_6 ;
  wire \inter13_reg[23]_i_2_n_7 ;
  wire \inter13_reg[3]_i_1_n_0 ;
  wire \inter13_reg[3]_i_1_n_4 ;
  wire \inter13_reg[3]_i_1_n_5 ;
  wire \inter13_reg[3]_i_1_n_6 ;
  wire \inter13_reg[3]_i_1_n_7 ;
  wire \inter13_reg[7]_i_1_n_0 ;
  wire \inter13_reg[7]_i_1_n_4 ;
  wire \inter13_reg[7]_i_1_n_5 ;
  wire \inter13_reg[7]_i_1_n_6 ;
  wire \inter13_reg[7]_i_1_n_7 ;
  wire \inter13_reg_n_0_[0] ;
  wire \inter13_reg_n_0_[10] ;
  wire \inter13_reg_n_0_[11] ;
  wire \inter13_reg_n_0_[12] ;
  wire \inter13_reg_n_0_[13] ;
  wire \inter13_reg_n_0_[14] ;
  wire \inter13_reg_n_0_[15] ;
  wire \inter13_reg_n_0_[16] ;
  wire \inter13_reg_n_0_[17] ;
  wire \inter13_reg_n_0_[18] ;
  wire \inter13_reg_n_0_[19] ;
  wire \inter13_reg_n_0_[1] ;
  wire \inter13_reg_n_0_[20] ;
  wire \inter13_reg_n_0_[21] ;
  wire \inter13_reg_n_0_[22] ;
  wire \inter13_reg_n_0_[23] ;
  wire \inter13_reg_n_0_[2] ;
  wire \inter13_reg_n_0_[3] ;
  wire \inter13_reg_n_0_[4] ;
  wire \inter13_reg_n_0_[5] ;
  wire \inter13_reg_n_0_[6] ;
  wire \inter13_reg_n_0_[7] ;
  wire \inter13_reg_n_0_[8] ;
  wire \inter13_reg_n_0_[9] ;
  wire [3:0]iteration_counter;
  wire \iteration_counter[0]_i_1_n_0 ;
  wire \iteration_counter[1]_i_1_n_0 ;
  wire \iteration_counter[2]_i_1_n_0 ;
  wire \iteration_counter[3]_i_2_n_0 ;
  wire [23:0]p_0_in;
  wire psdsp_n;
  wire psdsp_n_1;
  wire psdsp_n_10;
  wire psdsp_n_11;
  wire psdsp_n_12;
  wire psdsp_n_13;
  wire psdsp_n_14;
  wire psdsp_n_15;
  wire psdsp_n_16;
  wire psdsp_n_2;
  wire psdsp_n_3;
  wire psdsp_n_4;
  wire psdsp_n_5;
  wire psdsp_n_6;
  wire psdsp_n_7;
  wire psdsp_n_8;
  wire psdsp_n_9;
  wire ready_out;
  wire ready_out_OBUF;
  wire ready_out_i_1_n_0;
  wire ready_out_i_2_n_0;
  wire reset;
  wire reset_IBUF;
  wire start;
  wire start_IBUF;
  wire [3:0]state;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire [24:0]val_in;
  wire [23:0]val_in_IBUF;
  wire [24:0]val_out;
  wire \val_out[23]_i_1_n_0 ;
  wire [23:0]val_out_OBUF;
  wire NLW_PrevApproxVal0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_PrevApproxVal0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_PrevApproxVal0_OVERFLOW_UNCONNECTED;
  wire NLW_PrevApproxVal0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_PrevApproxVal0_PATTERNDETECT_UNCONNECTED;
  wire NLW_PrevApproxVal0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_PrevApproxVal0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_PrevApproxVal0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_PrevApproxVal0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_PrevApproxVal0_P_UNCONNECTED;
  wire NLW_PrevApproxVal0__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_PrevApproxVal0__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_PrevApproxVal0__0_OVERFLOW_UNCONNECTED;
  wire NLW_PrevApproxVal0__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_PrevApproxVal0__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_PrevApproxVal0__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_PrevApproxVal0__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_PrevApproxVal0__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_PrevApproxVal0__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_PrevApproxVal0__0_P_UNCONNECTED;
  wire [47:0]NLW_PrevApproxVal0__0_PCOUT_UNCONNECTED;
  wire NLW_inter120_CARRYCASCOUT_UNCONNECTED;
  wire NLW_inter120_MULTSIGNOUT_UNCONNECTED;
  wire NLW_inter120_OVERFLOW_UNCONNECTED;
  wire NLW_inter120_PATTERNBDETECT_UNCONNECTED;
  wire NLW_inter120_PATTERNDETECT_UNCONNECTED;
  wire NLW_inter120_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_inter120_BCOUT_UNCONNECTED;
  wire [3:0]NLW_inter120_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_inter120_P_UNCONNECTED;
  wire NLW_inter120__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_inter120__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_inter120__0_OVERFLOW_UNCONNECTED;
  wire NLW_inter120__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_inter120__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_inter120__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_inter120__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_inter120__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_inter120__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_inter120__0_P_UNCONNECTED;
  wire [47:0]NLW_inter120__0_PCOUT_UNCONNECTED;
  wire NLW_inter121_CARRYCASCOUT_UNCONNECTED;
  wire NLW_inter121_MULTSIGNOUT_UNCONNECTED;
  wire NLW_inter121_OVERFLOW_UNCONNECTED;
  wire NLW_inter121_PATTERNBDETECT_UNCONNECTED;
  wire NLW_inter121_PATTERNDETECT_UNCONNECTED;
  wire NLW_inter121_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_inter121_ACOUT_UNCONNECTED;
  wire [17:0]NLW_inter121_BCOUT_UNCONNECTED;
  wire [3:0]NLW_inter121_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_inter121_P_UNCONNECTED;
  wire NLW_inter121__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_inter121__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_inter121__0_OVERFLOW_UNCONNECTED;
  wire NLW_inter121__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_inter121__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_inter121__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_inter121__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_inter121__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_inter121__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_inter121__0_P_UNCONNECTED;
  wire [47:0]NLW_inter121__0_PCOUT_UNCONNECTED;
  wire [2:0]\NLW_inter13_reg[11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_inter13_reg[15]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_inter13_reg[19]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_inter13_reg[23]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_inter13_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_inter13_reg[7]_i_1_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("NRInvSqrRootSMTB_time_impl.sdf",,,,"tool_control");
end
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  (* PHYS_OPT_MODIFIED = "DSP_REGISTER_OPT" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
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
    PrevApproxVal0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_PrevApproxVal0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,psdsp_n,psdsp_n_1,psdsp_n_2,psdsp_n_3,psdsp_n_4,psdsp_n_5,psdsp_n_6,psdsp_n_7,psdsp_n_8,psdsp_n_9,psdsp_n_10,psdsp_n_11,psdsp_n_12,psdsp_n_13,psdsp_n_14,psdsp_n_15,psdsp_n_16}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_PrevApproxVal0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_PrevApproxVal0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_PrevApproxVal0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(inter121_i_1_n_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(\inter13[23]_i_1_n_0 ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clock_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_PrevApproxVal0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_PrevApproxVal0_OVERFLOW_UNCONNECTED),
        .P(NLW_PrevApproxVal0_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_PrevApproxVal0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_PrevApproxVal0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({PrevApproxVal0_n_106,PrevApproxVal0_n_107,PrevApproxVal0_n_108,PrevApproxVal0_n_109,PrevApproxVal0_n_110,PrevApproxVal0_n_111,PrevApproxVal0_n_112,PrevApproxVal0_n_113,PrevApproxVal0_n_114,PrevApproxVal0_n_115,PrevApproxVal0_n_116,PrevApproxVal0_n_117,PrevApproxVal0_n_118,PrevApproxVal0_n_119,PrevApproxVal0_n_120,PrevApproxVal0_n_121,PrevApproxVal0_n_122,PrevApproxVal0_n_123,PrevApproxVal0_n_124,PrevApproxVal0_n_125,PrevApproxVal0_n_126,PrevApproxVal0_n_127,PrevApproxVal0_n_128,PrevApproxVal0_n_129,PrevApproxVal0_n_130,PrevApproxVal0_n_131,PrevApproxVal0_n_132,PrevApproxVal0_n_133,PrevApproxVal0_n_134,PrevApproxVal0_n_135,PrevApproxVal0_n_136,PrevApproxVal0_n_137,PrevApproxVal0_n_138,PrevApproxVal0_n_139,PrevApproxVal0_n_140,PrevApproxVal0_n_141,PrevApproxVal0_n_142,PrevApproxVal0_n_143,PrevApproxVal0_n_144,PrevApproxVal0_n_145,PrevApproxVal0_n_146,PrevApproxVal0_n_147,PrevApproxVal0_n_148,PrevApproxVal0_n_149,PrevApproxVal0_n_150,PrevApproxVal0_n_151,PrevApproxVal0_n_152,PrevApproxVal0_n_153}),
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
        .UNDERFLOW(NLW_PrevApproxVal0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
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
    PrevApproxVal0__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_PrevApproxVal0__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,inter131_out,\inter13_reg_n_0_[23] ,\inter13_reg_n_0_[22] ,\inter13_reg_n_0_[21] ,\inter13_reg_n_0_[20] ,\inter13_reg_n_0_[19] ,\inter13_reg_n_0_[18] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_PrevApproxVal0__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_PrevApproxVal0__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_PrevApproxVal0__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(inter121_i_1_n_0),
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
        .CLK(clock_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_PrevApproxVal0__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_PrevApproxVal0__0_OVERFLOW_UNCONNECTED),
        .P({NLW_PrevApproxVal0__0_P_UNCONNECTED[47:26],PrevApproxVal0__0_n_80,PrevApproxVal0__0_n_81,PrevApproxVal0__0_n_82,PrevApproxVal0__0_n_83,PrevApproxVal0__0_n_84,PrevApproxVal0__0_n_85,PrevApproxVal0__0_n_86,PrevApproxVal0__0_n_87,PrevApproxVal0__0_n_88,PrevApproxVal0__0_n_89,PrevApproxVal0__0_n_90,PrevApproxVal0__0_n_91,PrevApproxVal0__0_n_92,PrevApproxVal0__0_n_93,PrevApproxVal0__0_n_94,PrevApproxVal0__0_n_95,PrevApproxVal0__0_n_96,PrevApproxVal0__0_n_97,PrevApproxVal0__0_n_98,PrevApproxVal0__0_n_99,PrevApproxVal0__0_n_100,PrevApproxVal0__0_n_101,PrevApproxVal0__0_n_102,PrevApproxVal0__0_n_103,NLW_PrevApproxVal0__0_P_UNCONNECTED[1:0]}),
        .PATTERNBDETECT(NLW_PrevApproxVal0__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_PrevApproxVal0__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({PrevApproxVal0_n_106,PrevApproxVal0_n_107,PrevApproxVal0_n_108,PrevApproxVal0_n_109,PrevApproxVal0_n_110,PrevApproxVal0_n_111,PrevApproxVal0_n_112,PrevApproxVal0_n_113,PrevApproxVal0_n_114,PrevApproxVal0_n_115,PrevApproxVal0_n_116,PrevApproxVal0_n_117,PrevApproxVal0_n_118,PrevApproxVal0_n_119,PrevApproxVal0_n_120,PrevApproxVal0_n_121,PrevApproxVal0_n_122,PrevApproxVal0_n_123,PrevApproxVal0_n_124,PrevApproxVal0_n_125,PrevApproxVal0_n_126,PrevApproxVal0_n_127,PrevApproxVal0_n_128,PrevApproxVal0_n_129,PrevApproxVal0_n_130,PrevApproxVal0_n_131,PrevApproxVal0_n_132,PrevApproxVal0_n_133,PrevApproxVal0_n_134,PrevApproxVal0_n_135,PrevApproxVal0_n_136,PrevApproxVal0_n_137,PrevApproxVal0_n_138,PrevApproxVal0_n_139,PrevApproxVal0_n_140,PrevApproxVal0_n_141,PrevApproxVal0_n_142,PrevApproxVal0_n_143,PrevApproxVal0_n_144,PrevApproxVal0_n_145,PrevApproxVal0_n_146,PrevApproxVal0_n_147,PrevApproxVal0_n_148,PrevApproxVal0_n_149,PrevApproxVal0_n_150,PrevApproxVal0_n_151,PrevApproxVal0_n_152,PrevApproxVal0_n_153}),
        .PCOUT(NLW_PrevApproxVal0__0_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_PrevApproxVal0__0_UNDERFLOW_UNCONNECTED));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    PrevApproxVal0__0_i_1
       (.I0(\inter12_reg_n_0_[23] ),
        .I1(PrevApproxVal0__0_i_2_n_0),
        .I2(\inter12_reg_n_0_[21] ),
        .I3(\inter12_reg_n_0_[22] ),
        .I4(inter13),
        .O(inter131_out));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    PrevApproxVal0__0_i_10
       (.I0(\inter13_reg_n_0_[5] ),
        .I1(\inter13_reg_n_0_[4] ),
        .I2(\inter13_reg_n_0_[7] ),
        .I3(\inter13_reg_n_0_[6] ),
        .I4(PrevApproxVal0__0_i_12_n_0),
        .O(PrevApproxVal0__0_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    PrevApproxVal0__0_i_11
       (.I0(\inter12_reg_n_0_[17] ),
        .I1(\inter12_reg_n_0_[16] ),
        .I2(\inter12_reg_n_0_[0] ),
        .I3(\inter12_reg_n_0_[18] ),
        .O(PrevApproxVal0__0_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    PrevApproxVal0__0_i_12
       (.I0(\inter13_reg_n_0_[2] ),
        .I1(\inter13_reg_n_0_[3] ),
        .I2(\inter13_reg_n_0_[0] ),
        .I3(\inter13_reg_n_0_[1] ),
        .O(PrevApproxVal0__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    PrevApproxVal0__0_i_2
       (.I0(\inter12_reg_n_0_[19] ),
        .I1(\inter12_reg_n_0_[2] ),
        .I2(\inter12_reg_n_0_[3] ),
        .I3(\inter12_reg_n_0_[1] ),
        .I4(PrevApproxVal0__0_i_4_n_0),
        .I5(\inter12_reg_n_0_[20] ),
        .O(PrevApproxVal0__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    PrevApproxVal0__0_i_3
       (.I0(PrevApproxVal0__0_i_5_n_0),
        .I1(\inter13_reg_n_0_[23] ),
        .I2(\inter13_reg_n_0_[22] ),
        .I3(\inter13_reg_n_0_[20] ),
        .I4(\inter13_reg_n_0_[21] ),
        .I5(PrevApproxVal0__0_i_6_n_0),
        .O(inter13));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    PrevApproxVal0__0_i_4
       (.I0(PrevApproxVal0__0_i_7_n_0),
        .I1(\inter12_reg_n_0_[5] ),
        .I2(\inter12_reg_n_0_[4] ),
        .I3(\inter12_reg_n_0_[7] ),
        .I4(\inter12_reg_n_0_[6] ),
        .I5(PrevApproxVal0__0_i_8_n_0),
        .O(PrevApproxVal0__0_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    PrevApproxVal0__0_i_5
       (.I0(\inter13_reg_n_0_[18] ),
        .I1(\inter13_reg_n_0_[19] ),
        .I2(\inter13_reg_n_0_[16] ),
        .I3(\inter13_reg_n_0_[17] ),
        .O(PrevApproxVal0__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    PrevApproxVal0__0_i_6
       (.I0(PrevApproxVal0__0_i_9_n_0),
        .I1(\inter13_reg_n_0_[14] ),
        .I2(\inter13_reg_n_0_[15] ),
        .I3(\inter13_reg_n_0_[12] ),
        .I4(\inter13_reg_n_0_[13] ),
        .I5(PrevApproxVal0__0_i_10_n_0),
        .O(PrevApproxVal0__0_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    PrevApproxVal0__0_i_7
       (.I0(\inter12_reg_n_0_[9] ),
        .I1(\inter12_reg_n_0_[8] ),
        .I2(\inter12_reg_n_0_[11] ),
        .I3(\inter12_reg_n_0_[10] ),
        .O(PrevApproxVal0__0_i_7_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    PrevApproxVal0__0_i_8
       (.I0(\inter12_reg_n_0_[14] ),
        .I1(\inter12_reg_n_0_[15] ),
        .I2(\inter12_reg_n_0_[12] ),
        .I3(\inter12_reg_n_0_[13] ),
        .I4(PrevApproxVal0__0_i_11_n_0),
        .O(PrevApproxVal0__0_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    PrevApproxVal0__0_i_9
       (.I0(\inter13_reg_n_0_[10] ),
        .I1(\inter13_reg_n_0_[11] ),
        .I2(\inter13_reg_n_0_[8] ),
        .I3(\inter13_reg_n_0_[9] ),
        .O(PrevApproxVal0__0_i_9_n_0));
  LUT4 #(
    .INIT(16'hBFB0)) 
    \PrevApproxVal[16]_i_1 
       (.I0(PrevApproxVal0__0_n_87),
        .I1(\state_reg_n_0_[0] ),
        .I2(inter121_i_1_n_0),
        .I3(\PrevApproxVal_reg_n_0_[16] ),
        .O(\PrevApproxVal[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \PrevApproxVal[23]_i_1 
       (.I0(reset_IBUF),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\PrevApproxVal[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(inter121_i_1_n_0),
        .D(PrevApproxVal0__0_n_103),
        .Q(\PrevApproxVal_reg_n_0_[0] ),
        .R(\PrevApproxVal[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(inter121_i_1_n_0),
        .D(PrevApproxVal0__0_n_93),
        .Q(\PrevApproxVal_reg_n_0_[10] ),
        .R(\PrevApproxVal[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(inter121_i_1_n_0),
        .D(PrevApproxVal0__0_n_92),
        .Q(\PrevApproxVal_reg_n_0_[11] ),
        .R(\PrevApproxVal[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(inter121_i_1_n_0),
        .D(PrevApproxVal0__0_n_91),
        .Q(\PrevApproxVal_reg_n_0_[12] ),
        .R(\PrevApproxVal[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[13] 
       (.C(clock_IBUF_BUFG),
        .CE(inter121_i_1_n_0),
        .D(PrevApproxVal0__0_n_90),
        .Q(\PrevApproxVal_reg_n_0_[13] ),
        .R(\PrevApproxVal[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[14] 
       (.C(clock_IBUF_BUFG),
        .CE(inter121_i_1_n_0),
        .D(PrevApproxVal0__0_n_89),
        .Q(\PrevApproxVal_reg_n_0_[14] ),
        .R(\PrevApproxVal[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[15] 
       (.C(clock_IBUF_BUFG),
        .CE(inter121_i_1_n_0),
        .D(PrevApproxVal0__0_n_88),
        .Q(\PrevApproxVal_reg_n_0_[15] ),
        .R(\PrevApproxVal[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[16] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\PrevApproxVal[16]_i_1_n_0 ),
        .Q(\PrevApproxVal_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[17] 
       (.C(clock_IBUF_BUFG),
        .CE(inter121_i_1_n_0),
        .D(PrevApproxVal0__0_n_86),
        .Q(\PrevApproxVal_reg_n_0_[17] ),
        .R(\PrevApproxVal[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[18] 
       (.C(clock_IBUF_BUFG),
        .CE(inter121_i_1_n_0),
        .D(PrevApproxVal0__0_n_85),
        .Q(\PrevApproxVal_reg_n_0_[18] ),
        .R(\PrevApproxVal[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[19] 
       (.C(clock_IBUF_BUFG),
        .CE(inter121_i_1_n_0),
        .D(PrevApproxVal0__0_n_84),
        .Q(\PrevApproxVal_reg_n_0_[19] ),
        .R(\PrevApproxVal[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(inter121_i_1_n_0),
        .D(PrevApproxVal0__0_n_102),
        .Q(\PrevApproxVal_reg_n_0_[1] ),
        .R(\PrevApproxVal[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[20] 
       (.C(clock_IBUF_BUFG),
        .CE(inter121_i_1_n_0),
        .D(PrevApproxVal0__0_n_83),
        .Q(\PrevApproxVal_reg_n_0_[20] ),
        .R(\PrevApproxVal[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[21] 
       (.C(clock_IBUF_BUFG),
        .CE(inter121_i_1_n_0),
        .D(PrevApproxVal0__0_n_82),
        .Q(\PrevApproxVal_reg_n_0_[21] ),
        .R(\PrevApproxVal[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[22] 
       (.C(clock_IBUF_BUFG),
        .CE(inter121_i_1_n_0),
        .D(PrevApproxVal0__0_n_81),
        .Q(\PrevApproxVal_reg_n_0_[22] ),
        .R(\PrevApproxVal[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[23] 
       (.C(clock_IBUF_BUFG),
        .CE(inter121_i_1_n_0),
        .D(PrevApproxVal0__0_n_80),
        .Q(\PrevApproxVal_reg_n_0_[23] ),
        .R(\PrevApproxVal[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(inter121_i_1_n_0),
        .D(PrevApproxVal0__0_n_101),
        .Q(\PrevApproxVal_reg_n_0_[2] ),
        .R(\PrevApproxVal[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(inter121_i_1_n_0),
        .D(PrevApproxVal0__0_n_100),
        .Q(\PrevApproxVal_reg_n_0_[3] ),
        .R(\PrevApproxVal[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(inter121_i_1_n_0),
        .D(PrevApproxVal0__0_n_99),
        .Q(\PrevApproxVal_reg_n_0_[4] ),
        .R(\PrevApproxVal[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(inter121_i_1_n_0),
        .D(PrevApproxVal0__0_n_98),
        .Q(\PrevApproxVal_reg_n_0_[5] ),
        .R(\PrevApproxVal[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(inter121_i_1_n_0),
        .D(PrevApproxVal0__0_n_97),
        .Q(\PrevApproxVal_reg_n_0_[6] ),
        .R(\PrevApproxVal[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(inter121_i_1_n_0),
        .D(PrevApproxVal0__0_n_96),
        .Q(\PrevApproxVal_reg_n_0_[7] ),
        .R(\PrevApproxVal[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(inter121_i_1_n_0),
        .D(PrevApproxVal0__0_n_95),
        .Q(\PrevApproxVal_reg_n_0_[8] ),
        .R(\PrevApproxVal[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(inter121_i_1_n_0),
        .D(PrevApproxVal0__0_n_94),
        .Q(\PrevApproxVal_reg_n_0_[9] ),
        .R(\PrevApproxVal[23]_i_1_n_0 ));
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
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
    inter120
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,val_in_IBUF}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({inter120_n_24,inter120_n_25,inter120_n_26,inter120_n_27,inter120_n_28,inter120_n_29,inter120_n_30,inter120_n_31,inter120_n_32,inter120_n_33,inter120_n_34,inter120_n_35,inter120_n_36,inter120_n_37,inter120_n_38,inter120_n_39,inter120_n_40,inter120_n_41,inter120_n_42,inter120_n_43,inter120_n_44,inter120_n_45,inter120_n_46,inter120_n_47,inter120_n_48,inter120_n_49,inter120_n_50,inter120_n_51,inter120_n_52,inter120_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,inter121__0_n_87,inter121__0_n_88,inter121__0_n_89,inter121__0_n_90,inter121__0_n_91,inter121__0_n_92,inter121__0_n_93,inter121__0_n_94,inter121__0_n_95,inter121__0_n_96,inter121__0_n_97,inter121__0_n_98,inter121__0_n_99,inter121__0_n_100,inter121__0_n_101,inter121__0_n_102,inter121__0_n_103}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_inter120_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_inter120_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_inter120_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_inter120_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_inter120_OVERFLOW_UNCONNECTED),
        .P(NLW_inter120_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_inter120_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_inter120_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({inter120_n_106,inter120_n_107,inter120_n_108,inter120_n_109,inter120_n_110,inter120_n_111,inter120_n_112,inter120_n_113,inter120_n_114,inter120_n_115,inter120_n_116,inter120_n_117,inter120_n_118,inter120_n_119,inter120_n_120,inter120_n_121,inter120_n_122,inter120_n_123,inter120_n_124,inter120_n_125,inter120_n_126,inter120_n_127,inter120_n_128,inter120_n_129,inter120_n_130,inter120_n_131,inter120_n_132,inter120_n_133,inter120_n_134,inter120_n_135,inter120_n_136,inter120_n_137,inter120_n_138,inter120_n_139,inter120_n_140,inter120_n_141,inter120_n_142,inter120_n_143,inter120_n_144,inter120_n_145,inter120_n_146,inter120_n_147,inter120_n_148,inter120_n_149,inter120_n_150,inter120_n_151,inter120_n_152,inter120_n_153}),
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
        .UNDERFLOW(NLW_inter120_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
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
    inter120__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({inter120_n_24,inter120_n_25,inter120_n_26,inter120_n_27,inter120_n_28,inter120_n_29,inter120_n_30,inter120_n_31,inter120_n_32,inter120_n_33,inter120_n_34,inter120_n_35,inter120_n_36,inter120_n_37,inter120_n_38,inter120_n_39,inter120_n_40,inter120_n_41,inter120_n_42,inter120_n_43,inter120_n_44,inter120_n_45,inter120_n_46,inter120_n_47,inter120_n_48,inter120_n_49,inter120_n_50,inter120_n_51,inter120_n_52,inter120_n_53}),
        .ACOUT(NLW_inter120__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,inter121__0_n_80,inter121__0_n_81,inter121__0_n_82,inter121__0_n_83,inter121__0_n_84,inter121__0_n_85,inter121__0_n_86}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_inter120__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_inter120__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_inter120__0_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_inter120__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_inter120__0_OVERFLOW_UNCONNECTED),
        .P({NLW_inter120__0_P_UNCONNECTED[47:26],p_0_in,NLW_inter120__0_P_UNCONNECTED[1:0]}),
        .PATTERNBDETECT(NLW_inter120__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_inter120__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({inter120_n_106,inter120_n_107,inter120_n_108,inter120_n_109,inter120_n_110,inter120_n_111,inter120_n_112,inter120_n_113,inter120_n_114,inter120_n_115,inter120_n_116,inter120_n_117,inter120_n_118,inter120_n_119,inter120_n_120,inter120_n_121,inter120_n_122,inter120_n_123,inter120_n_124,inter120_n_125,inter120_n_126,inter120_n_127,inter120_n_128,inter120_n_129,inter120_n_130,inter120_n_131,inter120_n_132,inter120_n_133,inter120_n_134,inter120_n_135,inter120_n_136,inter120_n_137,inter120_n_138,inter120_n_139,inter120_n_140,inter120_n_141,inter120_n_142,inter120_n_143,inter120_n_144,inter120_n_145,inter120_n_146,inter120_n_147,inter120_n_148,inter120_n_149,inter120_n_150,inter120_n_151,inter120_n_152,inter120_n_153}),
        .PCOUT(NLW_inter120__0_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_inter120__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
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
    inter121
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_inter121_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,A[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_inter121_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_inter121_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_inter121_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(inter121_i_1_n_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(inter121_i_1_n_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clock_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_inter121_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_inter121_OVERFLOW_UNCONNECTED),
        .P(NLW_inter121_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_inter121_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_inter121_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({inter121_n_106,inter121_n_107,inter121_n_108,inter121_n_109,inter121_n_110,inter121_n_111,inter121_n_112,inter121_n_113,inter121_n_114,inter121_n_115,inter121_n_116,inter121_n_117,inter121_n_118,inter121_n_119,inter121_n_120,inter121_n_121,inter121_n_122,inter121_n_123,inter121_n_124,inter121_n_125,inter121_n_126,inter121_n_127,inter121_n_128,inter121_n_129,inter121_n_130,inter121_n_131,inter121_n_132,inter121_n_133,inter121_n_134,inter121_n_135,inter121_n_136,inter121_n_137,inter121_n_138,inter121_n_139,inter121_n_140,inter121_n_141,inter121_n_142,inter121_n_143,inter121_n_144,inter121_n_145,inter121_n_146,inter121_n_147,inter121_n_148,inter121_n_149,inter121_n_150,inter121_n_151,inter121_n_152,inter121_n_153}),
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
        .UNDERFLOW(NLW_inter121_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
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
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    inter121__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_inter121__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A[23:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_inter121__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_inter121__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_inter121__0_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEM(inter121_i_1_n_0),
        .CEP(1'b0),
        .CLK(clock_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_inter121__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_inter121__0_OVERFLOW_UNCONNECTED),
        .P({NLW_inter121__0_P_UNCONNECTED[47:26],inter121__0_n_80,inter121__0_n_81,inter121__0_n_82,inter121__0_n_83,inter121__0_n_84,inter121__0_n_85,inter121__0_n_86,inter121__0_n_87,inter121__0_n_88,inter121__0_n_89,inter121__0_n_90,inter121__0_n_91,inter121__0_n_92,inter121__0_n_93,inter121__0_n_94,inter121__0_n_95,inter121__0_n_96,inter121__0_n_97,inter121__0_n_98,inter121__0_n_99,inter121__0_n_100,inter121__0_n_101,inter121__0_n_102,inter121__0_n_103,NLW_inter121__0_P_UNCONNECTED[1:0]}),
        .PATTERNBDETECT(NLW_inter121__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_inter121__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({inter121_n_106,inter121_n_107,inter121_n_108,inter121_n_109,inter121_n_110,inter121_n_111,inter121_n_112,inter121_n_113,inter121_n_114,inter121_n_115,inter121_n_116,inter121_n_117,inter121_n_118,inter121_n_119,inter121_n_120,inter121_n_121,inter121_n_122,inter121_n_123,inter121_n_124,inter121_n_125,inter121_n_126,inter121_n_127,inter121_n_128,inter121_n_129,inter121_n_130,inter121_n_131,inter121_n_132,inter121_n_133,inter121_n_134,inter121_n_135,inter121_n_136,inter121_n_137,inter121_n_138,inter121_n_139,inter121_n_140,inter121_n_141,inter121_n_142,inter121_n_143,inter121_n_144,inter121_n_145,inter121_n_146,inter121_n_147,inter121_n_148,inter121_n_149,inter121_n_150,inter121_n_151,inter121_n_152,inter121_n_153}),
        .PCOUT(NLW_inter121__0_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_inter121__0_UNDERFLOW_UNCONNECTED));
  LUT5 #(
    .INIT(32'h00000410)) 
    inter121_i_1
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(reset_IBUF),
        .O(inter121_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    inter121_i_10
       (.I0(\state_reg_n_0_[2] ),
        .I1(PrevApproxVal0__0_n_95),
        .O(A[8]));
  LUT2 #(
    .INIT(4'h8)) 
    inter121_i_11
       (.I0(\state_reg_n_0_[2] ),
        .I1(PrevApproxVal0__0_n_96),
        .O(A[7]));
  LUT2 #(
    .INIT(4'h8)) 
    inter121_i_12
       (.I0(\state_reg_n_0_[2] ),
        .I1(PrevApproxVal0__0_n_97),
        .O(A[6]));
  LUT2 #(
    .INIT(4'h8)) 
    inter121_i_13
       (.I0(\state_reg_n_0_[2] ),
        .I1(PrevApproxVal0__0_n_98),
        .O(A[5]));
  LUT2 #(
    .INIT(4'h8)) 
    inter121_i_14
       (.I0(\state_reg_n_0_[2] ),
        .I1(PrevApproxVal0__0_n_99),
        .O(A[4]));
  LUT2 #(
    .INIT(4'h8)) 
    inter121_i_15
       (.I0(\state_reg_n_0_[2] ),
        .I1(PrevApproxVal0__0_n_100),
        .O(A[3]));
  LUT2 #(
    .INIT(4'h8)) 
    inter121_i_16
       (.I0(\state_reg_n_0_[2] ),
        .I1(PrevApproxVal0__0_n_101),
        .O(A[2]));
  LUT2 #(
    .INIT(4'h8)) 
    inter121_i_17
       (.I0(\state_reg_n_0_[2] ),
        .I1(PrevApproxVal0__0_n_102),
        .O(A[1]));
  LUT2 #(
    .INIT(4'h8)) 
    inter121_i_18
       (.I0(\state_reg_n_0_[2] ),
        .I1(PrevApproxVal0__0_n_103),
        .O(A[0]));
  LUT2 #(
    .INIT(4'h8)) 
    inter121_i_19
       (.I0(\state_reg_n_0_[2] ),
        .I1(PrevApproxVal0__0_n_80),
        .O(A[23]));
  LUT2 #(
    .INIT(4'hB)) 
    inter121_i_2
       (.I0(PrevApproxVal0__0_n_87),
        .I1(\state_reg_n_0_[0] ),
        .O(A[16]));
  LUT2 #(
    .INIT(4'h8)) 
    inter121_i_20
       (.I0(\state_reg_n_0_[2] ),
        .I1(PrevApproxVal0__0_n_81),
        .O(A[22]));
  LUT2 #(
    .INIT(4'h8)) 
    inter121_i_21
       (.I0(\state_reg_n_0_[2] ),
        .I1(PrevApproxVal0__0_n_82),
        .O(A[21]));
  LUT2 #(
    .INIT(4'h8)) 
    inter121_i_22
       (.I0(\state_reg_n_0_[2] ),
        .I1(PrevApproxVal0__0_n_83),
        .O(A[20]));
  LUT2 #(
    .INIT(4'h8)) 
    inter121_i_23
       (.I0(\state_reg_n_0_[2] ),
        .I1(PrevApproxVal0__0_n_84),
        .O(A[19]));
  LUT2 #(
    .INIT(4'h8)) 
    inter121_i_24
       (.I0(\state_reg_n_0_[2] ),
        .I1(PrevApproxVal0__0_n_85),
        .O(A[18]));
  LUT2 #(
    .INIT(4'h8)) 
    inter121_i_25
       (.I0(\state_reg_n_0_[2] ),
        .I1(PrevApproxVal0__0_n_86),
        .O(A[17]));
  LUT2 #(
    .INIT(4'h8)) 
    inter121_i_3
       (.I0(\state_reg_n_0_[2] ),
        .I1(PrevApproxVal0__0_n_88),
        .O(A[15]));
  LUT2 #(
    .INIT(4'h8)) 
    inter121_i_4
       (.I0(\state_reg_n_0_[2] ),
        .I1(PrevApproxVal0__0_n_89),
        .O(A[14]));
  LUT2 #(
    .INIT(4'h8)) 
    inter121_i_5
       (.I0(\state_reg_n_0_[2] ),
        .I1(PrevApproxVal0__0_n_90),
        .O(A[13]));
  LUT2 #(
    .INIT(4'h8)) 
    inter121_i_6
       (.I0(\state_reg_n_0_[2] ),
        .I1(PrevApproxVal0__0_n_91),
        .O(A[12]));
  LUT2 #(
    .INIT(4'h8)) 
    inter121_i_7
       (.I0(\state_reg_n_0_[2] ),
        .I1(PrevApproxVal0__0_n_92),
        .O(A[11]));
  LUT2 #(
    .INIT(4'h8)) 
    inter121_i_8
       (.I0(\state_reg_n_0_[2] ),
        .I1(PrevApproxVal0__0_n_93),
        .O(A[10]));
  LUT2 #(
    .INIT(4'h8)) 
    inter121_i_9
       (.I0(\state_reg_n_0_[2] ),
        .I1(PrevApproxVal0__0_n_94),
        .O(A[9]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \inter12[23]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(reset_IBUF),
        .O(\inter12[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(\inter12_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[10]),
        .Q(\inter12_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[11]),
        .Q(\inter12_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[12]),
        .Q(\inter12_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[13] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[13]),
        .Q(\inter12_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[14] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[14]),
        .Q(\inter12_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[15] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[15]),
        .Q(\inter12_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[16] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[16]),
        .Q(\inter12_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[17] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[17]),
        .Q(\inter12_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[18] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[18]),
        .Q(\inter12_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[19] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[19]),
        .Q(\inter12_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(\inter12_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[20] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[20]),
        .Q(\inter12_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[21] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[21]),
        .Q(\inter12_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[22] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[22]),
        .Q(\inter12_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[23] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[23]),
        .Q(\inter12_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(\inter12_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(\inter12_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(\inter12_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(\inter12_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(\inter12_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(\inter12_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(\inter12_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[23]_i_1_n_0 ),
        .D(p_0_in[9]),
        .Q(\inter12_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \inter13[11]_i_2 
       (.I0(p_0_in[11]),
        .I1(p_0_in[23]),
        .I2(\inter13[23]_i_8_n_0 ),
        .I3(p_0_in[19]),
        .I4(p_0_in[21]),
        .I5(p_0_in[22]),
        .O(\inter13[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \inter13[11]_i_3 
       (.I0(p_0_in[10]),
        .I1(p_0_in[23]),
        .I2(\inter13[23]_i_8_n_0 ),
        .I3(p_0_in[19]),
        .I4(p_0_in[21]),
        .I5(p_0_in[22]),
        .O(\inter13[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \inter13[11]_i_4 
       (.I0(p_0_in[9]),
        .I1(p_0_in[23]),
        .I2(\inter13[23]_i_8_n_0 ),
        .I3(p_0_in[19]),
        .I4(p_0_in[21]),
        .I5(p_0_in[22]),
        .O(\inter13[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \inter13[11]_i_5 
       (.I0(p_0_in[8]),
        .I1(p_0_in[23]),
        .I2(\inter13[23]_i_8_n_0 ),
        .I3(p_0_in[19]),
        .I4(p_0_in[21]),
        .I5(p_0_in[22]),
        .O(\inter13[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA9A9A9)) 
    \inter13[11]_i_6 
       (.I0(p_0_in[11]),
        .I1(p_0_in[22]),
        .I2(p_0_in[21]),
        .I3(p_0_in[19]),
        .I4(\inter13[23]_i_8_n_0 ),
        .I5(p_0_in[23]),
        .O(\inter13[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA9A9A9)) 
    \inter13[11]_i_7 
       (.I0(p_0_in[10]),
        .I1(p_0_in[22]),
        .I2(p_0_in[21]),
        .I3(p_0_in[19]),
        .I4(\inter13[23]_i_8_n_0 ),
        .I5(p_0_in[23]),
        .O(\inter13[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA9A9A9)) 
    \inter13[11]_i_8 
       (.I0(p_0_in[9]),
        .I1(p_0_in[22]),
        .I2(p_0_in[21]),
        .I3(p_0_in[19]),
        .I4(\inter13[23]_i_8_n_0 ),
        .I5(p_0_in[23]),
        .O(\inter13[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA9A9A9)) 
    \inter13[11]_i_9 
       (.I0(p_0_in[8]),
        .I1(p_0_in[22]),
        .I2(p_0_in[21]),
        .I3(p_0_in[19]),
        .I4(\inter13[23]_i_8_n_0 ),
        .I5(p_0_in[23]),
        .O(\inter13[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \inter13[15]_i_2 
       (.I0(p_0_in[15]),
        .I1(p_0_in[23]),
        .I2(\inter13[23]_i_8_n_0 ),
        .I3(p_0_in[19]),
        .I4(p_0_in[21]),
        .I5(p_0_in[22]),
        .O(\inter13[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \inter13[15]_i_3 
       (.I0(p_0_in[14]),
        .I1(p_0_in[23]),
        .I2(\inter13[23]_i_8_n_0 ),
        .I3(p_0_in[19]),
        .I4(p_0_in[21]),
        .I5(p_0_in[22]),
        .O(\inter13[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \inter13[15]_i_4 
       (.I0(p_0_in[13]),
        .I1(p_0_in[23]),
        .I2(\inter13[23]_i_8_n_0 ),
        .I3(p_0_in[19]),
        .I4(p_0_in[21]),
        .I5(p_0_in[22]),
        .O(\inter13[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \inter13[15]_i_5 
       (.I0(p_0_in[12]),
        .I1(p_0_in[23]),
        .I2(\inter13[23]_i_8_n_0 ),
        .I3(p_0_in[19]),
        .I4(p_0_in[21]),
        .I5(p_0_in[22]),
        .O(\inter13[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA9A9A9)) 
    \inter13[15]_i_6 
       (.I0(p_0_in[15]),
        .I1(p_0_in[22]),
        .I2(p_0_in[21]),
        .I3(p_0_in[19]),
        .I4(\inter13[23]_i_8_n_0 ),
        .I5(p_0_in[23]),
        .O(\inter13[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA9A9A9)) 
    \inter13[15]_i_7 
       (.I0(p_0_in[14]),
        .I1(p_0_in[22]),
        .I2(p_0_in[21]),
        .I3(p_0_in[19]),
        .I4(\inter13[23]_i_8_n_0 ),
        .I5(p_0_in[23]),
        .O(\inter13[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA9A9A9)) 
    \inter13[15]_i_8 
       (.I0(p_0_in[13]),
        .I1(p_0_in[22]),
        .I2(p_0_in[21]),
        .I3(p_0_in[19]),
        .I4(\inter13[23]_i_8_n_0 ),
        .I5(p_0_in[23]),
        .O(\inter13[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA9A9A9)) 
    \inter13[15]_i_9 
       (.I0(p_0_in[12]),
        .I1(p_0_in[22]),
        .I2(p_0_in[21]),
        .I3(p_0_in[19]),
        .I4(\inter13[23]_i_8_n_0 ),
        .I5(p_0_in[23]),
        .O(\inter13[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \inter13[19]_i_2 
       (.I0(p_0_in[23]),
        .I1(\inter13[23]_i_8_n_0 ),
        .I2(p_0_in[21]),
        .I3(p_0_in[22]),
        .I4(p_0_in[19]),
        .O(\inter13[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \inter13[19]_i_3 
       (.I0(p_0_in[18]),
        .I1(p_0_in[23]),
        .I2(\inter13[23]_i_8_n_0 ),
        .I3(p_0_in[19]),
        .I4(p_0_in[21]),
        .I5(p_0_in[22]),
        .O(\inter13[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \inter13[19]_i_4 
       (.I0(p_0_in[17]),
        .I1(p_0_in[23]),
        .I2(\inter13[23]_i_8_n_0 ),
        .I3(p_0_in[19]),
        .I4(p_0_in[21]),
        .I5(p_0_in[22]),
        .O(\inter13[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \inter13[19]_i_5 
       (.I0(p_0_in[16]),
        .I1(p_0_in[23]),
        .I2(\inter13[23]_i_8_n_0 ),
        .I3(p_0_in[19]),
        .I4(p_0_in[21]),
        .I5(p_0_in[22]),
        .O(\inter13[19]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0F0F0E1E)) 
    \inter13[19]_i_6 
       (.I0(p_0_in[22]),
        .I1(p_0_in[21]),
        .I2(p_0_in[19]),
        .I3(\inter13[23]_i_8_n_0 ),
        .I4(p_0_in[23]),
        .O(\inter13[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA9A9A9)) 
    \inter13[19]_i_7 
       (.I0(p_0_in[18]),
        .I1(p_0_in[22]),
        .I2(p_0_in[21]),
        .I3(p_0_in[19]),
        .I4(\inter13[23]_i_8_n_0 ),
        .I5(p_0_in[23]),
        .O(\inter13[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA9A9A9)) 
    \inter13[19]_i_8 
       (.I0(p_0_in[17]),
        .I1(p_0_in[22]),
        .I2(p_0_in[21]),
        .I3(p_0_in[19]),
        .I4(\inter13[23]_i_8_n_0 ),
        .I5(p_0_in[23]),
        .O(\inter13[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA9A9A9)) 
    \inter13[19]_i_9 
       (.I0(p_0_in[16]),
        .I1(p_0_in[22]),
        .I2(p_0_in[21]),
        .I3(p_0_in[19]),
        .I4(\inter13[23]_i_8_n_0 ),
        .I5(p_0_in[23]),
        .O(\inter13[19]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \inter13[23]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(reset_IBUF),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\inter13[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \inter13[23]_i_10 
       (.I0(p_0_in[5]),
        .I1(p_0_in[4]),
        .I2(p_0_in[7]),
        .I3(p_0_in[6]),
        .O(\inter13[23]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \inter13[23]_i_11 
       (.I0(p_0_in[17]),
        .I1(p_0_in[16]),
        .I2(p_0_in[0]),
        .I3(p_0_in[18]),
        .O(\inter13[23]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \inter13[23]_i_12 
       (.I0(p_0_in[13]),
        .I1(p_0_in[12]),
        .I2(p_0_in[15]),
        .I3(p_0_in[14]),
        .O(\inter13[23]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \inter13[23]_i_13 
       (.I0(p_0_in[1]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .O(\inter13[23]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \inter13[23]_i_3 
       (.I0(p_0_in[20]),
        .I1(p_0_in[23]),
        .I2(\inter13[23]_i_8_n_0 ),
        .I3(p_0_in[19]),
        .I4(p_0_in[21]),
        .I5(p_0_in[22]),
        .O(\inter13[23]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inter13[23]_i_4 
       (.I0(p_0_in[23]),
        .O(\inter13[23]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inter13[23]_i_5 
       (.I0(p_0_in[22]),
        .O(\inter13[23]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inter13[23]_i_6 
       (.I0(p_0_in[21]),
        .O(\inter13[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \inter13[23]_i_8 
       (.I0(p_0_in[20]),
        .I1(\inter13[23]_i_9_n_0 ),
        .I2(\inter13[23]_i_10_n_0 ),
        .I3(\inter13[23]_i_11_n_0 ),
        .I4(\inter13[23]_i_12_n_0 ),
        .I5(\inter13[23]_i_13_n_0 ),
        .O(\inter13[23]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \inter13[23]_i_9 
       (.I0(p_0_in[9]),
        .I1(p_0_in[8]),
        .I2(p_0_in[11]),
        .I3(p_0_in[10]),
        .O(\inter13[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \inter13[3]_i_2 
       (.I0(p_0_in[3]),
        .I1(p_0_in[23]),
        .I2(\inter13[23]_i_8_n_0 ),
        .I3(p_0_in[19]),
        .I4(p_0_in[21]),
        .I5(p_0_in[22]),
        .O(\inter13[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \inter13[3]_i_3 
       (.I0(p_0_in[2]),
        .I1(p_0_in[23]),
        .I2(\inter13[23]_i_8_n_0 ),
        .I3(p_0_in[19]),
        .I4(p_0_in[21]),
        .I5(p_0_in[22]),
        .O(\inter13[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \inter13[3]_i_4 
       (.I0(p_0_in[1]),
        .I1(p_0_in[23]),
        .I2(\inter13[23]_i_8_n_0 ),
        .I3(p_0_in[19]),
        .I4(p_0_in[21]),
        .I5(p_0_in[22]),
        .O(\inter13[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \inter13[3]_i_5 
       (.I0(p_0_in[0]),
        .I1(p_0_in[23]),
        .I2(\inter13[23]_i_8_n_0 ),
        .I3(p_0_in[19]),
        .I4(p_0_in[21]),
        .I5(p_0_in[22]),
        .O(\inter13[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA9A9A9)) 
    \inter13[3]_i_6 
       (.I0(p_0_in[3]),
        .I1(p_0_in[22]),
        .I2(p_0_in[21]),
        .I3(p_0_in[19]),
        .I4(\inter13[23]_i_8_n_0 ),
        .I5(p_0_in[23]),
        .O(\inter13[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA9A9A9)) 
    \inter13[3]_i_7 
       (.I0(p_0_in[2]),
        .I1(p_0_in[22]),
        .I2(p_0_in[21]),
        .I3(p_0_in[19]),
        .I4(\inter13[23]_i_8_n_0 ),
        .I5(p_0_in[23]),
        .O(\inter13[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA9A9A9)) 
    \inter13[3]_i_8 
       (.I0(p_0_in[1]),
        .I1(p_0_in[22]),
        .I2(p_0_in[21]),
        .I3(p_0_in[19]),
        .I4(\inter13[23]_i_8_n_0 ),
        .I5(p_0_in[23]),
        .O(\inter13[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \inter13[7]_i_2 
       (.I0(p_0_in[7]),
        .I1(p_0_in[23]),
        .I2(\inter13[23]_i_8_n_0 ),
        .I3(p_0_in[19]),
        .I4(p_0_in[21]),
        .I5(p_0_in[22]),
        .O(\inter13[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \inter13[7]_i_3 
       (.I0(p_0_in[6]),
        .I1(p_0_in[23]),
        .I2(\inter13[23]_i_8_n_0 ),
        .I3(p_0_in[19]),
        .I4(p_0_in[21]),
        .I5(p_0_in[22]),
        .O(\inter13[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \inter13[7]_i_4 
       (.I0(p_0_in[5]),
        .I1(p_0_in[23]),
        .I2(\inter13[23]_i_8_n_0 ),
        .I3(p_0_in[19]),
        .I4(p_0_in[21]),
        .I5(p_0_in[22]),
        .O(\inter13[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \inter13[7]_i_5 
       (.I0(p_0_in[4]),
        .I1(p_0_in[23]),
        .I2(\inter13[23]_i_8_n_0 ),
        .I3(p_0_in[19]),
        .I4(p_0_in[21]),
        .I5(p_0_in[22]),
        .O(\inter13[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA9A9A9)) 
    \inter13[7]_i_6 
       (.I0(p_0_in[7]),
        .I1(p_0_in[22]),
        .I2(p_0_in[21]),
        .I3(p_0_in[19]),
        .I4(\inter13[23]_i_8_n_0 ),
        .I5(p_0_in[23]),
        .O(\inter13[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA9A9A9)) 
    \inter13[7]_i_7 
       (.I0(p_0_in[6]),
        .I1(p_0_in[22]),
        .I2(p_0_in[21]),
        .I3(p_0_in[19]),
        .I4(\inter13[23]_i_8_n_0 ),
        .I5(p_0_in[23]),
        .O(\inter13[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA9A9A9)) 
    \inter13[7]_i_8 
       (.I0(p_0_in[5]),
        .I1(p_0_in[22]),
        .I2(p_0_in[21]),
        .I3(p_0_in[19]),
        .I4(\inter13[23]_i_8_n_0 ),
        .I5(p_0_in[23]),
        .O(\inter13[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA9A9A9)) 
    \inter13[7]_i_9 
       (.I0(p_0_in[4]),
        .I1(p_0_in[22]),
        .I2(p_0_in[21]),
        .I3(p_0_in[19]),
        .I4(\inter13[23]_i_8_n_0 ),
        .I5(p_0_in[23]),
        .O(\inter13[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[3]_i_1_n_7 ),
        .Q(\inter13_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[11]_i_1_n_5 ),
        .Q(\inter13_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[11]_i_1_n_4 ),
        .Q(\inter13_reg_n_0_[11] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \inter13_reg[11]_i_1 
       (.CI(\inter13_reg[7]_i_1_n_0 ),
        .CO({\inter13_reg[11]_i_1_n_0 ,\NLW_inter13_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\inter13[11]_i_2_n_0 ,\inter13[11]_i_3_n_0 ,\inter13[11]_i_4_n_0 ,\inter13[11]_i_5_n_0 }),
        .O({\inter13_reg[11]_i_1_n_4 ,\inter13_reg[11]_i_1_n_5 ,\inter13_reg[11]_i_1_n_6 ,\inter13_reg[11]_i_1_n_7 }),
        .S({\inter13[11]_i_6_n_0 ,\inter13[11]_i_7_n_0 ,\inter13[11]_i_8_n_0 ,\inter13[11]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[15]_i_1_n_7 ),
        .Q(\inter13_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[13] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[15]_i_1_n_6 ),
        .Q(\inter13_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[14] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[15]_i_1_n_5 ),
        .Q(\inter13_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[15] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[15]_i_1_n_4 ),
        .Q(\inter13_reg_n_0_[15] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \inter13_reg[15]_i_1 
       (.CI(\inter13_reg[11]_i_1_n_0 ),
        .CO({\inter13_reg[15]_i_1_n_0 ,\NLW_inter13_reg[15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\inter13[15]_i_2_n_0 ,\inter13[15]_i_3_n_0 ,\inter13[15]_i_4_n_0 ,\inter13[15]_i_5_n_0 }),
        .O({\inter13_reg[15]_i_1_n_4 ,\inter13_reg[15]_i_1_n_5 ,\inter13_reg[15]_i_1_n_6 ,\inter13_reg[15]_i_1_n_7 }),
        .S({\inter13[15]_i_6_n_0 ,\inter13[15]_i_7_n_0 ,\inter13[15]_i_8_n_0 ,\inter13[15]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[16] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[19]_i_1_n_7 ),
        .Q(\inter13_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[17] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[19]_i_1_n_6 ),
        .Q(\inter13_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[18] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[19]_i_1_n_5 ),
        .Q(\inter13_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[19] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[19]_i_1_n_4 ),
        .Q(\inter13_reg_n_0_[19] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \inter13_reg[19]_i_1 
       (.CI(\inter13_reg[15]_i_1_n_0 ),
        .CO({\inter13_reg[19]_i_1_n_0 ,\NLW_inter13_reg[19]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\inter13[19]_i_2_n_0 ,\inter13[19]_i_3_n_0 ,\inter13[19]_i_4_n_0 ,\inter13[19]_i_5_n_0 }),
        .O({\inter13_reg[19]_i_1_n_4 ,\inter13_reg[19]_i_1_n_5 ,\inter13_reg[19]_i_1_n_6 ,\inter13_reg[19]_i_1_n_7 }),
        .S({\inter13[19]_i_6_n_0 ,\inter13[19]_i_7_n_0 ,\inter13[19]_i_8_n_0 ,\inter13[19]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[3]_i_1_n_6 ),
        .Q(\inter13_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[20] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[23]_i_2_n_7 ),
        .Q(\inter13_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[21] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[23]_i_2_n_6 ),
        .Q(\inter13_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[22] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[23]_i_2_n_5 ),
        .Q(\inter13_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[23] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[23]_i_2_n_4 ),
        .Q(\inter13_reg_n_0_[23] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET SWEEP " *) 
  CARRY4 \inter13_reg[23]_i_2 
       (.CI(\inter13_reg[19]_i_1_n_0 ),
        .CO(\NLW_inter13_reg[23]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,\inter13[23]_i_3_n_0 }),
        .O({\inter13_reg[23]_i_2_n_4 ,\inter13_reg[23]_i_2_n_5 ,\inter13_reg[23]_i_2_n_6 ,\inter13_reg[23]_i_2_n_7 }),
        .S({\inter13[23]_i_4_n_0 ,\inter13[23]_i_5_n_0 ,\inter13[23]_i_6_n_0 ,p_0_in[20]}));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[3]_i_1_n_5 ),
        .Q(\inter13_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[3]_i_1_n_4 ),
        .Q(\inter13_reg_n_0_[3] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET SWEEP " *) 
  CARRY4 \inter13_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\inter13_reg[3]_i_1_n_0 ,\NLW_inter13_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\inter13[3]_i_2_n_0 ,\inter13[3]_i_3_n_0 ,\inter13[3]_i_4_n_0 ,\inter13[3]_i_5_n_0 }),
        .O({\inter13_reg[3]_i_1_n_4 ,\inter13_reg[3]_i_1_n_5 ,\inter13_reg[3]_i_1_n_6 ,\inter13_reg[3]_i_1_n_7 }),
        .S({\inter13[3]_i_6_n_0 ,\inter13[3]_i_7_n_0 ,\inter13[3]_i_8_n_0 ,p_0_in[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[7]_i_1_n_7 ),
        .Q(\inter13_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[7]_i_1_n_6 ),
        .Q(\inter13_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[7]_i_1_n_5 ),
        .Q(\inter13_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[7]_i_1_n_4 ),
        .Q(\inter13_reg_n_0_[7] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \inter13_reg[7]_i_1 
       (.CI(\inter13_reg[3]_i_1_n_0 ),
        .CO({\inter13_reg[7]_i_1_n_0 ,\NLW_inter13_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\inter13[7]_i_2_n_0 ,\inter13[7]_i_3_n_0 ,\inter13[7]_i_4_n_0 ,\inter13[7]_i_5_n_0 }),
        .O({\inter13_reg[7]_i_1_n_4 ,\inter13_reg[7]_i_1_n_5 ,\inter13_reg[7]_i_1_n_6 ,\inter13_reg[7]_i_1_n_7 }),
        .S({\inter13[7]_i_6_n_0 ,\inter13[7]_i_7_n_0 ,\inter13[7]_i_8_n_0 ,\inter13[7]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[11]_i_1_n_7 ),
        .Q(\inter13_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[11]_i_1_n_6 ),
        .Q(\inter13_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \iteration_counter[0]_i_1 
       (.I0(iteration_counter[0]),
        .I1(\state_reg_n_0_[2] ),
        .O(\iteration_counter[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \iteration_counter[1]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(iteration_counter[1]),
        .I2(iteration_counter[0]),
        .O(\iteration_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA9FF)) 
    \iteration_counter[2]_i_1 
       (.I0(iteration_counter[2]),
        .I1(iteration_counter[0]),
        .I2(iteration_counter[1]),
        .I3(\state_reg_n_0_[2] ),
        .O(\iteration_counter[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0024)) 
    \iteration_counter[3]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .O(PrevApproxVal));
  LUT5 #(
    .INIT(32'h88888882)) 
    \iteration_counter[3]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(iteration_counter[3]),
        .I2(iteration_counter[1]),
        .I3(iteration_counter[0]),
        .I4(iteration_counter[2]),
        .O(\iteration_counter[3]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \iteration_counter_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(PrevApproxVal),
        .D(\iteration_counter[0]_i_1_n_0 ),
        .Q(iteration_counter[0]),
        .S(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \iteration_counter_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(PrevApproxVal),
        .D(\iteration_counter[1]_i_1_n_0 ),
        .Q(iteration_counter[1]),
        .R(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \iteration_counter_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(PrevApproxVal),
        .D(\iteration_counter[2]_i_1_n_0 ),
        .Q(iteration_counter[2]),
        .S(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \iteration_counter_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(PrevApproxVal),
        .D(\iteration_counter[3]_i_2_n_0 ),
        .Q(iteration_counter[3]),
        .R(reset_IBUF));
  (* PHYS_OPT_MODIFIED = "DSP_REGISTER_OPT" *) 
  FDRE #(
    .INIT(1'b0)) 
    psdsp
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[19]_i_1_n_6 ),
        .Q(psdsp_n),
        .R(1'b0));
  (* PHYS_OPT_MODIFIED = "DSP_REGISTER_OPT" *) 
  FDRE #(
    .INIT(1'b0)) 
    psdsp_1
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[19]_i_1_n_7 ),
        .Q(psdsp_n_1),
        .R(1'b0));
  (* PHYS_OPT_MODIFIED = "DSP_REGISTER_OPT" *) 
  FDRE #(
    .INIT(1'b0)) 
    psdsp_10
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[7]_i_1_n_4 ),
        .Q(psdsp_n_10),
        .R(1'b0));
  (* PHYS_OPT_MODIFIED = "DSP_REGISTER_OPT" *) 
  FDRE #(
    .INIT(1'b0)) 
    psdsp_11
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[7]_i_1_n_5 ),
        .Q(psdsp_n_11),
        .R(1'b0));
  (* PHYS_OPT_MODIFIED = "DSP_REGISTER_OPT" *) 
  FDRE #(
    .INIT(1'b0)) 
    psdsp_12
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[7]_i_1_n_6 ),
        .Q(psdsp_n_12),
        .R(1'b0));
  (* PHYS_OPT_MODIFIED = "DSP_REGISTER_OPT" *) 
  FDRE #(
    .INIT(1'b0)) 
    psdsp_13
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[7]_i_1_n_7 ),
        .Q(psdsp_n_13),
        .R(1'b0));
  (* PHYS_OPT_MODIFIED = "DSP_REGISTER_OPT" *) 
  FDRE #(
    .INIT(1'b0)) 
    psdsp_14
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[3]_i_1_n_4 ),
        .Q(psdsp_n_14),
        .R(1'b0));
  (* PHYS_OPT_MODIFIED = "DSP_REGISTER_OPT" *) 
  FDRE #(
    .INIT(1'b0)) 
    psdsp_15
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[3]_i_1_n_5 ),
        .Q(psdsp_n_15),
        .R(1'b0));
  (* PHYS_OPT_MODIFIED = "DSP_REGISTER_OPT" *) 
  FDRE #(
    .INIT(1'b0)) 
    psdsp_16
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[3]_i_1_n_6 ),
        .Q(psdsp_n_16),
        .R(1'b0));
  (* PHYS_OPT_MODIFIED = "DSP_REGISTER_OPT" *) 
  FDRE #(
    .INIT(1'b0)) 
    psdsp_2
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[15]_i_1_n_4 ),
        .Q(psdsp_n_2),
        .R(1'b0));
  (* PHYS_OPT_MODIFIED = "DSP_REGISTER_OPT" *) 
  FDRE #(
    .INIT(1'b0)) 
    psdsp_3
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[15]_i_1_n_5 ),
        .Q(psdsp_n_3),
        .R(1'b0));
  (* PHYS_OPT_MODIFIED = "DSP_REGISTER_OPT" *) 
  FDRE #(
    .INIT(1'b0)) 
    psdsp_4
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[15]_i_1_n_6 ),
        .Q(psdsp_n_4),
        .R(1'b0));
  (* PHYS_OPT_MODIFIED = "DSP_REGISTER_OPT" *) 
  FDRE #(
    .INIT(1'b0)) 
    psdsp_5
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[15]_i_1_n_7 ),
        .Q(psdsp_n_5),
        .R(1'b0));
  (* PHYS_OPT_MODIFIED = "DSP_REGISTER_OPT" *) 
  FDRE #(
    .INIT(1'b0)) 
    psdsp_6
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[11]_i_1_n_4 ),
        .Q(psdsp_n_6),
        .R(1'b0));
  (* PHYS_OPT_MODIFIED = "DSP_REGISTER_OPT" *) 
  FDRE #(
    .INIT(1'b0)) 
    psdsp_7
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[11]_i_1_n_5 ),
        .Q(psdsp_n_7),
        .R(1'b0));
  (* PHYS_OPT_MODIFIED = "DSP_REGISTER_OPT" *) 
  FDRE #(
    .INIT(1'b0)) 
    psdsp_8
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[11]_i_1_n_6 ),
        .Q(psdsp_n_8),
        .R(1'b0));
  (* PHYS_OPT_MODIFIED = "DSP_REGISTER_OPT" *) 
  FDRE #(
    .INIT(1'b0)) 
    psdsp_9
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[23]_i_1_n_0 ),
        .D(\inter13_reg[11]_i_1_n_7 ),
        .Q(psdsp_n_9),
        .R(1'b0));
  OBUF ready_out_OBUF_inst
       (.I(ready_out_OBUF),
        .O(ready_out));
  LUT4 #(
    .INIT(16'h0014)) 
    ready_out_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .O(ready_out_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    ready_out_i_2
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .O(ready_out_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ready_out_reg
       (.C(clock_IBUF_BUFG),
        .CE(ready_out_i_1_n_0),
        .D(ready_out_i_2_n_0),
        .Q(ready_out_OBUF),
        .R(reset_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBABFFFF)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(start_IBUF),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state[2]_i_2_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(state[0]));
  LUT6 #(
    .INIT(64'h0000000000FFB800)) 
    \state[1]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(start_IBUF),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8B88B8B8B8B)) 
    \state[2]_i_1 
       (.I0(start_IBUF),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state[2]_i_2_n_0 ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[0] ),
        .O(state[2]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_2 
       (.I0(iteration_counter[2]),
        .I1(iteration_counter[1]),
        .I2(iteration_counter[0]),
        .I3(iteration_counter[3]),
        .O(\state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4706)) 
    \state[3]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h888B)) 
    \state[3]_i_2 
       (.I0(start_IBUF),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(state[3]));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\state[3]_i_1_n_0 ),
        .D(state[0]),
        .Q(\state_reg_n_0_[0] ),
        .S(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\state[3]_i_1_n_0 ),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\state[3]_i_1_n_0 ),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\state[3]_i_1_n_0 ),
        .D(state[3]),
        .Q(\state_reg_n_0_[3] ),
        .R(reset_IBUF));
  IBUF \val_in_IBUF[0]_inst 
       (.I(val_in[0]),
        .O(val_in_IBUF[0]));
  IBUF \val_in_IBUF[10]_inst 
       (.I(val_in[10]),
        .O(val_in_IBUF[10]));
  IBUF \val_in_IBUF[11]_inst 
       (.I(val_in[11]),
        .O(val_in_IBUF[11]));
  IBUF \val_in_IBUF[12]_inst 
       (.I(val_in[12]),
        .O(val_in_IBUF[12]));
  IBUF \val_in_IBUF[13]_inst 
       (.I(val_in[13]),
        .O(val_in_IBUF[13]));
  IBUF \val_in_IBUF[14]_inst 
       (.I(val_in[14]),
        .O(val_in_IBUF[14]));
  IBUF \val_in_IBUF[15]_inst 
       (.I(val_in[15]),
        .O(val_in_IBUF[15]));
  IBUF \val_in_IBUF[16]_inst 
       (.I(val_in[16]),
        .O(val_in_IBUF[16]));
  IBUF \val_in_IBUF[17]_inst 
       (.I(val_in[17]),
        .O(val_in_IBUF[17]));
  IBUF \val_in_IBUF[18]_inst 
       (.I(val_in[18]),
        .O(val_in_IBUF[18]));
  IBUF \val_in_IBUF[19]_inst 
       (.I(val_in[19]),
        .O(val_in_IBUF[19]));
  IBUF \val_in_IBUF[1]_inst 
       (.I(val_in[1]),
        .O(val_in_IBUF[1]));
  IBUF \val_in_IBUF[20]_inst 
       (.I(val_in[20]),
        .O(val_in_IBUF[20]));
  IBUF \val_in_IBUF[21]_inst 
       (.I(val_in[21]),
        .O(val_in_IBUF[21]));
  IBUF \val_in_IBUF[22]_inst 
       (.I(val_in[22]),
        .O(val_in_IBUF[22]));
  IBUF \val_in_IBUF[23]_inst 
       (.I(val_in[23]),
        .O(val_in_IBUF[23]));
  IBUF \val_in_IBUF[2]_inst 
       (.I(val_in[2]),
        .O(val_in_IBUF[2]));
  IBUF \val_in_IBUF[3]_inst 
       (.I(val_in[3]),
        .O(val_in_IBUF[3]));
  IBUF \val_in_IBUF[4]_inst 
       (.I(val_in[4]),
        .O(val_in_IBUF[4]));
  IBUF \val_in_IBUF[5]_inst 
       (.I(val_in[5]),
        .O(val_in_IBUF[5]));
  IBUF \val_in_IBUF[6]_inst 
       (.I(val_in[6]),
        .O(val_in_IBUF[6]));
  IBUF \val_in_IBUF[7]_inst 
       (.I(val_in[7]),
        .O(val_in_IBUF[7]));
  IBUF \val_in_IBUF[8]_inst 
       (.I(val_in[8]),
        .O(val_in_IBUF[8]));
  IBUF \val_in_IBUF[9]_inst 
       (.I(val_in[9]),
        .O(val_in_IBUF[9]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \val_out[23]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(reset_IBUF),
        .O(\val_out[23]_i_1_n_0 ));
  OBUF \val_out_OBUF[0]_inst 
       (.I(val_out_OBUF[0]),
        .O(val_out[0]));
  OBUF \val_out_OBUF[10]_inst 
       (.I(val_out_OBUF[10]),
        .O(val_out[10]));
  OBUF \val_out_OBUF[11]_inst 
       (.I(val_out_OBUF[11]),
        .O(val_out[11]));
  OBUF \val_out_OBUF[12]_inst 
       (.I(val_out_OBUF[12]),
        .O(val_out[12]));
  OBUF \val_out_OBUF[13]_inst 
       (.I(val_out_OBUF[13]),
        .O(val_out[13]));
  OBUF \val_out_OBUF[14]_inst 
       (.I(val_out_OBUF[14]),
        .O(val_out[14]));
  OBUF \val_out_OBUF[15]_inst 
       (.I(val_out_OBUF[15]),
        .O(val_out[15]));
  OBUF \val_out_OBUF[16]_inst 
       (.I(val_out_OBUF[16]),
        .O(val_out[16]));
  OBUF \val_out_OBUF[17]_inst 
       (.I(val_out_OBUF[17]),
        .O(val_out[17]));
  OBUF \val_out_OBUF[18]_inst 
       (.I(val_out_OBUF[18]),
        .O(val_out[18]));
  OBUF \val_out_OBUF[19]_inst 
       (.I(val_out_OBUF[19]),
        .O(val_out[19]));
  OBUF \val_out_OBUF[1]_inst 
       (.I(val_out_OBUF[1]),
        .O(val_out[1]));
  OBUF \val_out_OBUF[20]_inst 
       (.I(val_out_OBUF[20]),
        .O(val_out[20]));
  OBUF \val_out_OBUF[21]_inst 
       (.I(val_out_OBUF[21]),
        .O(val_out[21]));
  OBUF \val_out_OBUF[22]_inst 
       (.I(val_out_OBUF[22]),
        .O(val_out[22]));
  OBUF \val_out_OBUF[23]_inst 
       (.I(val_out_OBUF[23]),
        .O(val_out[23]));
  OBUF \val_out_OBUF[24]_inst 
       (.I(1'b0),
        .O(val_out[24]));
  OBUF \val_out_OBUF[2]_inst 
       (.I(val_out_OBUF[2]),
        .O(val_out[2]));
  OBUF \val_out_OBUF[3]_inst 
       (.I(val_out_OBUF[3]),
        .O(val_out[3]));
  OBUF \val_out_OBUF[4]_inst 
       (.I(val_out_OBUF[4]),
        .O(val_out[4]));
  OBUF \val_out_OBUF[5]_inst 
       (.I(val_out_OBUF[5]),
        .O(val_out[5]));
  OBUF \val_out_OBUF[6]_inst 
       (.I(val_out_OBUF[6]),
        .O(val_out[6]));
  OBUF \val_out_OBUF[7]_inst 
       (.I(val_out_OBUF[7]),
        .O(val_out[7]));
  OBUF \val_out_OBUF[8]_inst 
       (.I(val_out_OBUF[8]),
        .O(val_out[8]));
  OBUF \val_out_OBUF[9]_inst 
       (.I(val_out_OBUF[9]),
        .O(val_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[0] ),
        .Q(val_out_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[10] ),
        .Q(val_out_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[11] ),
        .Q(val_out_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[12] ),
        .Q(val_out_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[13] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[13] ),
        .Q(val_out_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[14] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[14] ),
        .Q(val_out_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[15] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[15] ),
        .Q(val_out_OBUF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[16] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[16] ),
        .Q(val_out_OBUF[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[17] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[17] ),
        .Q(val_out_OBUF[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[18] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[18] ),
        .Q(val_out_OBUF[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[19] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[19] ),
        .Q(val_out_OBUF[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[1] ),
        .Q(val_out_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[20] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[20] ),
        .Q(val_out_OBUF[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[21] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[21] ),
        .Q(val_out_OBUF[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[22] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[22] ),
        .Q(val_out_OBUF[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[23] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[23] ),
        .Q(val_out_OBUF[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[2] ),
        .Q(val_out_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[3] ),
        .Q(val_out_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[4] ),
        .Q(val_out_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[5] ),
        .Q(val_out_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[6] ),
        .Q(val_out_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[7] ),
        .Q(val_out_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[8] ),
        .Q(val_out_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[23]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[9] ),
        .Q(val_out_OBUF[9]),
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
