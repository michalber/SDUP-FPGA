// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jun 14 12:49:48 2021
// Host        : DESKTOP-28EGR53 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               E:/elektronika-notatki/Rok_IV/SDUP/SDUP-FPGA/Lab7/InvSqrRoot/InvSqrRoot.sim/sim_1/impl/timing/xsim/MSE_InvSqrRoot_TB_time_impl.v
// Design      : NRInvSqrRootSM
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "5bad367f" *) (* FRAC_BITS = "10" *) (* S1 = "4'b0001" *) 
(* S10 = "4'b0000" *) (* S11 = "4'b0001" *) (* S12 = "4'b0010" *) 
(* S13 = "4'b0011" *) (* S2 = "4'b0010" *) (* S3 = "4'b0011" *) 
(* S4 = "4'b0100" *) (* S5 = "4'b0101" *) (* S6 = "4'b0110" *) 
(* S7 = "4'b0111" *) (* S8 = "4'b1000" *) (* S9 = "4'b1001" *) 
(* TOTAL_BITS = "13" *) (* TOTAL_ITERATIONS = "6" *) 
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
  input [12:0]val_in;
  output ready_out;
  output [12:0]val_out;

  wire [11:0]A;
  wire PrevApproxVal;
  wire PrevApproxVal0_i_10_n_0;
  wire PrevApproxVal0_i_11_n_0;
  wire PrevApproxVal0_i_12_n_0;
  wire PrevApproxVal0_i_13_n_0;
  wire PrevApproxVal0_i_1_n_0;
  wire PrevApproxVal0_i_2_n_0;
  wire PrevApproxVal0_i_3_n_0;
  wire PrevApproxVal0_i_4_n_0;
  wire PrevApproxVal0_i_5_n_0;
  wire PrevApproxVal0_i_6_n_0;
  wire PrevApproxVal0_i_7_n_0;
  wire PrevApproxVal0_i_8_n_0;
  wire PrevApproxVal0_i_9_n_0;
  wire PrevApproxVal0_n_84;
  wire PrevApproxVal0_n_85;
  wire PrevApproxVal0_n_86;
  wire PrevApproxVal0_n_87;
  wire PrevApproxVal0_n_88;
  wire PrevApproxVal0_n_89;
  wire PrevApproxVal0_n_90;
  wire PrevApproxVal0_n_91;
  wire PrevApproxVal0_n_92;
  wire PrevApproxVal0_n_93;
  wire PrevApproxVal0_n_94;
  wire PrevApproxVal0_n_95;
  wire \PrevApproxVal[11]_i_1_n_0 ;
  wire \PrevApproxVal[8]_i_1_n_0 ;
  wire \PrevApproxVal[9]_i_1_n_0 ;
  wire \PrevApproxVal_reg_n_0_[0] ;
  wire \PrevApproxVal_reg_n_0_[10] ;
  wire \PrevApproxVal_reg_n_0_[11] ;
  wire \PrevApproxVal_reg_n_0_[1] ;
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
  wire [11:0]inter11;
  wire inter110_i_1_n_0;
  wire inter110_n_84;
  wire inter110_n_85;
  wire inter110_n_86;
  wire inter110_n_87;
  wire inter110_n_88;
  wire inter110_n_89;
  wire inter110_n_90;
  wire inter110_n_91;
  wire inter110_n_92;
  wire inter110_n_93;
  wire inter110_n_94;
  wire inter110_n_95;
  wire inter120_i_1_n_0;
  wire inter120_n_84;
  wire inter120_n_85;
  wire inter120_n_86;
  wire inter120_n_87;
  wire inter120_n_88;
  wire inter120_n_89;
  wire inter120_n_90;
  wire inter120_n_91;
  wire inter120_n_92;
  wire inter120_n_93;
  wire inter120_n_94;
  wire inter120_n_95;
  wire \inter12[0]_i_1_n_0 ;
  wire \inter12[10]_i_1_n_0 ;
  wire \inter12[11]_i_1_n_0 ;
  wire \inter12[12]_i_1_n_0 ;
  wire \inter12[1]_i_1_n_0 ;
  wire \inter12[2]_i_1_n_0 ;
  wire \inter12[3]_i_1_n_0 ;
  wire \inter12[4]_i_1_n_0 ;
  wire \inter12[5]_i_1_n_0 ;
  wire \inter12[6]_i_1_n_0 ;
  wire \inter12[7]_i_1_n_0 ;
  wire \inter12[8]_i_1_n_0 ;
  wire \inter12[9]_i_1_n_0 ;
  wire \inter12_reg_n_0_[0] ;
  wire \inter12_reg_n_0_[10] ;
  wire \inter12_reg_n_0_[11] ;
  wire \inter12_reg_n_0_[1] ;
  wire \inter12_reg_n_0_[2] ;
  wire \inter12_reg_n_0_[3] ;
  wire \inter12_reg_n_0_[4] ;
  wire \inter12_reg_n_0_[5] ;
  wire \inter12_reg_n_0_[6] ;
  wire \inter12_reg_n_0_[7] ;
  wire \inter12_reg_n_0_[8] ;
  wire [11:1]inter130;
  wire [11:9]inter1300_in;
  wire [11:9]inter1301_in;
  wire inter130_out;
  wire inter131;
  wire \inter13[0]_i_1_n_0 ;
  wire \inter13[10]_i_1_n_0 ;
  wire \inter13[11]_i_11_n_0 ;
  wire \inter13[11]_i_12_n_0 ;
  wire \inter13[11]_i_13_n_0 ;
  wire \inter13[11]_i_1_n_0 ;
  wire \inter13[11]_i_2_n_0 ;
  wire \inter13[11]_i_7_n_0 ;
  wire \inter13[11]_i_8_n_0 ;
  wire \inter13[11]_i_9_n_0 ;
  wire \inter13[12]_i_1_n_0 ;
  wire \inter13[12]_i_2_n_0 ;
  wire \inter13[12]_i_4_n_0 ;
  wire \inter13[12]_i_5_n_0 ;
  wire \inter13[1]_i_1_n_0 ;
  wire \inter13[2]_i_1_n_0 ;
  wire \inter13[3]_i_1_n_0 ;
  wire \inter13[4]_i_1_n_0 ;
  wire \inter13[5]_i_1_n_0 ;
  wire \inter13[6]_i_1_n_0 ;
  wire \inter13[7]_i_1_n_0 ;
  wire \inter13[8]_i_1_n_0 ;
  wire \inter13[9]_i_1_n_0 ;
  wire \inter13_reg[4]_i_2_n_0 ;
  wire \inter13_reg[8]_i_2_n_0 ;
  wire \inter13_reg_n_0_[0] ;
  wire \inter13_reg_n_0_[10] ;
  wire \inter13_reg_n_0_[11] ;
  wire \inter13_reg_n_0_[12] ;
  wire \inter13_reg_n_0_[1] ;
  wire \inter13_reg_n_0_[2] ;
  wire \inter13_reg_n_0_[3] ;
  wire \inter13_reg_n_0_[4] ;
  wire \inter13_reg_n_0_[5] ;
  wire \inter13_reg_n_0_[6] ;
  wire \inter13_reg_n_0_[7] ;
  wire \inter13_reg_n_0_[8] ;
  wire \inter13_reg_n_0_[9] ;
  wire [4:0]iteration_counter;
  wire \iteration_counter[0]_i_1_n_0 ;
  wire \iteration_counter[1]_i_1_n_0 ;
  wire \iteration_counter[2]_i_1_n_0 ;
  wire \iteration_counter[3]_i_1_n_0 ;
  wire \iteration_counter[4]_i_2_n_0 ;
  wire [9:0]p_0_in__0;
  wire p_2_in;
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
  wire [12:0]val_in;
  wire [11:0]val_in_IBUF;
  wire [12:0]val_out;
  wire \val_out[11]_i_1_n_0 ;
  wire [11:0]val_out_OBUF;
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
  wire [47:0]NLW_PrevApproxVal0_PCOUT_UNCONNECTED;
  wire NLW_inter110_CARRYCASCOUT_UNCONNECTED;
  wire NLW_inter110_MULTSIGNOUT_UNCONNECTED;
  wire NLW_inter110_OVERFLOW_UNCONNECTED;
  wire NLW_inter110_PATTERNBDETECT_UNCONNECTED;
  wire NLW_inter110_PATTERNDETECT_UNCONNECTED;
  wire NLW_inter110_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_inter110_ACOUT_UNCONNECTED;
  wire [17:0]NLW_inter110_BCOUT_UNCONNECTED;
  wire [3:0]NLW_inter110_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_inter110_P_UNCONNECTED;
  wire [47:0]NLW_inter110_PCOUT_UNCONNECTED;
  wire NLW_inter120_CARRYCASCOUT_UNCONNECTED;
  wire NLW_inter120_MULTSIGNOUT_UNCONNECTED;
  wire NLW_inter120_OVERFLOW_UNCONNECTED;
  wire NLW_inter120_PATTERNBDETECT_UNCONNECTED;
  wire NLW_inter120_PATTERNDETECT_UNCONNECTED;
  wire NLW_inter120_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_inter120_ACOUT_UNCONNECTED;
  wire [17:0]NLW_inter120_BCOUT_UNCONNECTED;
  wire [3:0]NLW_inter120_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_inter120_P_UNCONNECTED;
  wire [47:0]NLW_inter120_PCOUT_UNCONNECTED;
  wire [3:0]\NLW_inter13_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_inter13_reg[11]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_inter13_reg[11]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_inter13_reg[11]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_inter13_reg[11]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_inter13_reg[11]_i_6_O_UNCONNECTED ;
  wire [2:0]\NLW_inter13_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_inter13_reg[8]_i_2_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("MSE_InvSqrRoot_TB_time_impl.sdf",,,,"tool_control");
end
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
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
    PrevApproxVal0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,PrevApproxVal0_i_2_n_0,PrevApproxVal0_i_3_n_0,PrevApproxVal0_i_4_n_0,PrevApproxVal0_i_5_n_0,PrevApproxVal0_i_6_n_0,PrevApproxVal0_i_7_n_0,PrevApproxVal0_i_8_n_0,PrevApproxVal0_i_9_n_0,PrevApproxVal0_i_10_n_0,PrevApproxVal0_i_11_n_0,PrevApproxVal0_i_12_n_0,PrevApproxVal0_i_13_n_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_PrevApproxVal0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_PrevApproxVal0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_PrevApproxVal0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_PrevApproxVal0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(PrevApproxVal0_i_1_n_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(inter110_i_1_n_0),
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
        .P({NLW_PrevApproxVal0_P_UNCONNECTED[47:22],PrevApproxVal0_n_84,PrevApproxVal0_n_85,PrevApproxVal0_n_86,PrevApproxVal0_n_87,PrevApproxVal0_n_88,PrevApproxVal0_n_89,PrevApproxVal0_n_90,PrevApproxVal0_n_91,PrevApproxVal0_n_92,PrevApproxVal0_n_93,PrevApproxVal0_n_94,PrevApproxVal0_n_95,NLW_PrevApproxVal0_P_UNCONNECTED[9:0]}),
        .PATTERNBDETECT(NLW_PrevApproxVal0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_PrevApproxVal0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_PrevApproxVal0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(reset_IBUF),
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
  LUT3 #(
    .INIT(8'h02)) 
    PrevApproxVal0_i_1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .O(PrevApproxVal0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    PrevApproxVal0_i_10
       (.I0(\state_reg_n_0_[2] ),
        .I1(\inter13_reg_n_0_[4] ),
        .O(PrevApproxVal0_i_10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    PrevApproxVal0_i_11
       (.I0(\state_reg_n_0_[2] ),
        .I1(\inter13_reg_n_0_[3] ),
        .O(PrevApproxVal0_i_11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    PrevApproxVal0_i_12
       (.I0(\state_reg_n_0_[2] ),
        .I1(\inter13_reg_n_0_[2] ),
        .O(PrevApproxVal0_i_12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    PrevApproxVal0_i_13
       (.I0(\state_reg_n_0_[2] ),
        .I1(\inter13_reg_n_0_[1] ),
        .O(PrevApproxVal0_i_13_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    PrevApproxVal0_i_2
       (.I0(\state_reg_n_0_[2] ),
        .I1(\inter13_reg_n_0_[12] ),
        .O(PrevApproxVal0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    PrevApproxVal0_i_3
       (.I0(\state_reg_n_0_[2] ),
        .I1(\inter13_reg_n_0_[11] ),
        .O(PrevApproxVal0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    PrevApproxVal0_i_4
       (.I0(\state_reg_n_0_[2] ),
        .I1(\inter13_reg_n_0_[10] ),
        .O(PrevApproxVal0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    PrevApproxVal0_i_5
       (.I0(\state_reg_n_0_[2] ),
        .I1(\inter13_reg_n_0_[9] ),
        .O(PrevApproxVal0_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    PrevApproxVal0_i_6
       (.I0(\state_reg_n_0_[2] ),
        .I1(\inter13_reg_n_0_[8] ),
        .O(PrevApproxVal0_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    PrevApproxVal0_i_7
       (.I0(\state_reg_n_0_[2] ),
        .I1(\inter13_reg_n_0_[7] ),
        .O(PrevApproxVal0_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    PrevApproxVal0_i_8
       (.I0(\state_reg_n_0_[2] ),
        .I1(\inter13_reg_n_0_[6] ),
        .O(PrevApproxVal0_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    PrevApproxVal0_i_9
       (.I0(\state_reg_n_0_[2] ),
        .I1(\inter13_reg_n_0_[5] ),
        .O(PrevApproxVal0_i_9_n_0));
  LUT5 #(
    .INIT(32'h00000002)) 
    \PrevApproxVal[11]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(reset_IBUF),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\PrevApproxVal[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFACA)) 
    \PrevApproxVal[8]_i_1 
       (.I0(\PrevApproxVal_reg_n_0_[8] ),
        .I1(PrevApproxVal0_n_87),
        .I2(inter110_i_1_n_0),
        .I3(\state_reg_n_0_[1] ),
        .O(\PrevApproxVal[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFACA)) 
    \PrevApproxVal[9]_i_1 
       (.I0(\PrevApproxVal_reg_n_0_[9] ),
        .I1(PrevApproxVal0_n_86),
        .I2(inter110_i_1_n_0),
        .I3(\state_reg_n_0_[1] ),
        .O(\PrevApproxVal[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(inter110_i_1_n_0),
        .D(PrevApproxVal0_n_95),
        .Q(\PrevApproxVal_reg_n_0_[0] ),
        .R(\PrevApproxVal[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(inter110_i_1_n_0),
        .D(PrevApproxVal0_n_85),
        .Q(\PrevApproxVal_reg_n_0_[10] ),
        .R(\PrevApproxVal[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(inter110_i_1_n_0),
        .D(PrevApproxVal0_n_84),
        .Q(\PrevApproxVal_reg_n_0_[11] ),
        .R(\PrevApproxVal[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(inter110_i_1_n_0),
        .D(PrevApproxVal0_n_94),
        .Q(\PrevApproxVal_reg_n_0_[1] ),
        .R(\PrevApproxVal[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(inter110_i_1_n_0),
        .D(PrevApproxVal0_n_93),
        .Q(\PrevApproxVal_reg_n_0_[2] ),
        .R(\PrevApproxVal[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(inter110_i_1_n_0),
        .D(PrevApproxVal0_n_92),
        .Q(\PrevApproxVal_reg_n_0_[3] ),
        .R(\PrevApproxVal[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(inter110_i_1_n_0),
        .D(PrevApproxVal0_n_91),
        .Q(\PrevApproxVal_reg_n_0_[4] ),
        .R(\PrevApproxVal[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(inter110_i_1_n_0),
        .D(PrevApproxVal0_n_90),
        .Q(\PrevApproxVal_reg_n_0_[5] ),
        .R(\PrevApproxVal[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(inter110_i_1_n_0),
        .D(PrevApproxVal0_n_89),
        .Q(\PrevApproxVal_reg_n_0_[6] ),
        .R(\PrevApproxVal[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(inter110_i_1_n_0),
        .D(PrevApproxVal0_n_88),
        .Q(\PrevApproxVal_reg_n_0_[7] ),
        .R(\PrevApproxVal[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\PrevApproxVal[8]_i_1_n_0 ),
        .Q(\PrevApproxVal_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PrevApproxVal_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\PrevApproxVal[9]_i_1_n_0 ),
        .Q(\PrevApproxVal_reg_n_0_[9] ),
        .R(1'b0));
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
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
    inter110
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_inter110_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_inter110_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_inter110_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_inter110_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(inter110_i_1_n_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(inter110_i_1_n_0),
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
        .MULTSIGNOUT(NLW_inter110_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_inter110_OVERFLOW_UNCONNECTED),
        .P({NLW_inter110_P_UNCONNECTED[47:22],inter110_n_84,inter110_n_85,inter110_n_86,inter110_n_87,inter110_n_88,inter110_n_89,inter110_n_90,inter110_n_91,inter110_n_92,inter110_n_93,inter110_n_94,inter110_n_95,NLW_inter110_P_UNCONNECTED[9:0]}),
        .PATTERNBDETECT(NLW_inter110_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_inter110_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_inter110_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_inter110_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'h0001)) 
    inter110_i_1
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(reset_IBUF),
        .O(inter110_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    inter110_i_10
       (.I0(PrevApproxVal0_n_92),
        .I1(\state_reg_n_0_[1] ),
        .O(A[3]));
  LUT2 #(
    .INIT(4'h2)) 
    inter110_i_11
       (.I0(PrevApproxVal0_n_93),
        .I1(\state_reg_n_0_[1] ),
        .O(A[2]));
  LUT2 #(
    .INIT(4'h2)) 
    inter110_i_12
       (.I0(PrevApproxVal0_n_94),
        .I1(\state_reg_n_0_[1] ),
        .O(A[1]));
  LUT2 #(
    .INIT(4'h2)) 
    inter110_i_13
       (.I0(PrevApproxVal0_n_95),
        .I1(\state_reg_n_0_[1] ),
        .O(A[0]));
  LUT2 #(
    .INIT(4'h2)) 
    inter110_i_2
       (.I0(PrevApproxVal0_n_84),
        .I1(\state_reg_n_0_[1] ),
        .O(A[11]));
  LUT2 #(
    .INIT(4'h2)) 
    inter110_i_3
       (.I0(PrevApproxVal0_n_85),
        .I1(\state_reg_n_0_[1] ),
        .O(A[10]));
  LUT2 #(
    .INIT(4'hE)) 
    inter110_i_4
       (.I0(PrevApproxVal0_n_86),
        .I1(\state_reg_n_0_[1] ),
        .O(A[9]));
  LUT2 #(
    .INIT(4'hE)) 
    inter110_i_5
       (.I0(PrevApproxVal0_n_87),
        .I1(\state_reg_n_0_[1] ),
        .O(A[8]));
  LUT2 #(
    .INIT(4'h2)) 
    inter110_i_6
       (.I0(PrevApproxVal0_n_88),
        .I1(\state_reg_n_0_[1] ),
        .O(A[7]));
  LUT2 #(
    .INIT(4'h2)) 
    inter110_i_7
       (.I0(PrevApproxVal0_n_89),
        .I1(\state_reg_n_0_[1] ),
        .O(A[6]));
  LUT2 #(
    .INIT(4'h2)) 
    inter110_i_8
       (.I0(PrevApproxVal0_n_90),
        .I1(\state_reg_n_0_[1] ),
        .O(A[5]));
  LUT2 #(
    .INIT(4'h2)) 
    inter110_i_9
       (.I0(PrevApproxVal0_n_91),
        .I1(\state_reg_n_0_[1] ),
        .O(A[4]));
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
    inter120
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,inter11}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_inter120_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,val_in_IBUF}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_inter120_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_inter120_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_inter120_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(inter120_i_1_n_0),
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
        .MULTSIGNOUT(NLW_inter120_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_inter120_OVERFLOW_UNCONNECTED),
        .P({NLW_inter120_P_UNCONNECTED[47:22],inter120_n_84,inter120_n_85,inter120_n_86,inter120_n_87,inter120_n_88,inter120_n_89,inter120_n_90,inter120_n_91,inter120_n_92,inter120_n_93,inter120_n_94,inter120_n_95,NLW_inter120_P_UNCONNECTED[9:0]}),
        .PATTERNBDETECT(NLW_inter120_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_inter120_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_inter120_PCOUT_UNCONNECTED[47:0]),
        .RSTA(reset_IBUF),
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
  LUT3 #(
    .INIT(8'h04)) 
    inter120_i_1
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .O(inter120_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    inter120_i_10
       (.I0(\state_reg_n_0_[0] ),
        .I1(inter110_n_92),
        .O(inter11[3]));
  LUT2 #(
    .INIT(4'h8)) 
    inter120_i_11
       (.I0(\state_reg_n_0_[0] ),
        .I1(inter110_n_93),
        .O(inter11[2]));
  LUT2 #(
    .INIT(4'h8)) 
    inter120_i_12
       (.I0(\state_reg_n_0_[0] ),
        .I1(inter110_n_94),
        .O(inter11[1]));
  LUT2 #(
    .INIT(4'h8)) 
    inter120_i_13
       (.I0(\state_reg_n_0_[0] ),
        .I1(inter110_n_95),
        .O(inter11[0]));
  LUT2 #(
    .INIT(4'h8)) 
    inter120_i_2
       (.I0(\state_reg_n_0_[0] ),
        .I1(inter110_n_84),
        .O(inter11[11]));
  LUT2 #(
    .INIT(4'h8)) 
    inter120_i_3
       (.I0(\state_reg_n_0_[0] ),
        .I1(inter110_n_85),
        .O(inter11[10]));
  LUT2 #(
    .INIT(4'h8)) 
    inter120_i_4
       (.I0(\state_reg_n_0_[0] ),
        .I1(inter110_n_86),
        .O(inter11[9]));
  LUT2 #(
    .INIT(4'h8)) 
    inter120_i_5
       (.I0(\state_reg_n_0_[0] ),
        .I1(inter110_n_87),
        .O(inter11[8]));
  LUT2 #(
    .INIT(4'h8)) 
    inter120_i_6
       (.I0(\state_reg_n_0_[0] ),
        .I1(inter110_n_88),
        .O(inter11[7]));
  LUT2 #(
    .INIT(4'h8)) 
    inter120_i_7
       (.I0(\state_reg_n_0_[0] ),
        .I1(inter110_n_89),
        .O(inter11[6]));
  LUT2 #(
    .INIT(4'h8)) 
    inter120_i_8
       (.I0(\state_reg_n_0_[0] ),
        .I1(inter110_n_90),
        .O(inter11[5]));
  LUT2 #(
    .INIT(4'h8)) 
    inter120_i_9
       (.I0(\state_reg_n_0_[0] ),
        .I1(inter110_n_91),
        .O(inter11[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \inter12[0]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(inter120_n_95),
        .O(\inter12[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \inter12[10]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(inter120_n_85),
        .O(\inter12[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \inter12[11]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(inter120_n_84),
        .O(\inter12[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0006)) 
    \inter12[12]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\inter12[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \inter12[1]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(inter120_n_94),
        .O(\inter12[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \inter12[2]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(inter120_n_93),
        .O(\inter12[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \inter12[3]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(inter120_n_92),
        .O(\inter12[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \inter12[4]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(inter120_n_91),
        .O(\inter12[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \inter12[5]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(inter120_n_90),
        .O(\inter12[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \inter12[6]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(inter120_n_89),
        .O(\inter12[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \inter12[7]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(inter120_n_88),
        .O(\inter12[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \inter12[8]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(inter120_n_87),
        .O(\inter12[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \inter12[9]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(inter120_n_86),
        .O(\inter12[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[12]_i_1_n_0 ),
        .D(\inter12[0]_i_1_n_0 ),
        .Q(\inter12_reg_n_0_[0] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[12]_i_1_n_0 ),
        .D(\inter12[10]_i_1_n_0 ),
        .Q(\inter12_reg_n_0_[10] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[12]_i_1_n_0 ),
        .D(\inter12[11]_i_1_n_0 ),
        .Q(\inter12_reg_n_0_[11] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[12]_i_1_n_0 ),
        .D(\state_reg_n_0_[3] ),
        .Q(p_2_in),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[12]_i_1_n_0 ),
        .D(\inter12[1]_i_1_n_0 ),
        .Q(\inter12_reg_n_0_[1] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[12]_i_1_n_0 ),
        .D(\inter12[2]_i_1_n_0 ),
        .Q(\inter12_reg_n_0_[2] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[12]_i_1_n_0 ),
        .D(\inter12[3]_i_1_n_0 ),
        .Q(\inter12_reg_n_0_[3] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[12]_i_1_n_0 ),
        .D(\inter12[4]_i_1_n_0 ),
        .Q(\inter12_reg_n_0_[4] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[12]_i_1_n_0 ),
        .D(\inter12[5]_i_1_n_0 ),
        .Q(\inter12_reg_n_0_[5] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[12]_i_1_n_0 ),
        .D(\inter12[6]_i_1_n_0 ),
        .Q(\inter12_reg_n_0_[6] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[12]_i_1_n_0 ),
        .D(\inter12[7]_i_1_n_0 ),
        .Q(\inter12_reg_n_0_[7] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[12]_i_1_n_0 ),
        .D(\inter12[8]_i_1_n_0 ),
        .Q(\inter12_reg_n_0_[8] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \inter12_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter12[12]_i_1_n_0 ),
        .D(\inter12[9]_i_1_n_0 ),
        .Q(inter1301_in[9]),
        .R(reset_IBUF));
  LUT2 #(
    .INIT(4'h8)) 
    \inter13[0]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\inter12_reg_n_0_[0] ),
        .O(\inter13[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \inter13[10]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(inter1301_in[10]),
        .I2(p_2_in),
        .I3(inter130[10]),
        .I4(inter131),
        .I5(inter1300_in[10]),
        .O(\inter13[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0024)) 
    \inter13[11]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\inter13[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inter13[11]_i_10 
       (.I0(inter1301_in[9]),
        .O(p_0_in__0[9]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \inter13[11]_i_11 
       (.I0(\inter12_reg_n_0_[8] ),
        .I1(\inter12_reg_n_0_[7] ),
        .I2(\inter12_reg_n_0_[0] ),
        .I3(inter1301_in[9]),
        .O(\inter13[11]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \inter13[11]_i_12 
       (.I0(\inter12_reg_n_0_[4] ),
        .I1(\inter12_reg_n_0_[3] ),
        .I2(\inter12_reg_n_0_[6] ),
        .I3(\inter12_reg_n_0_[5] ),
        .O(\inter13[11]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inter13[11]_i_13 
       (.I0(\inter12_reg_n_0_[10] ),
        .O(\inter13[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \inter13[11]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(inter1301_in[11]),
        .I2(p_2_in),
        .I3(inter130[11]),
        .I4(inter131),
        .I5(inter1300_in[11]),
        .O(\inter13[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \inter13[11]_i_5 
       (.I0(\inter12_reg_n_0_[10] ),
        .I1(\inter12_reg_n_0_[2] ),
        .I2(\inter12_reg_n_0_[1] ),
        .I3(\inter13[11]_i_11_n_0 ),
        .I4(\inter13[11]_i_12_n_0 ),
        .I5(\inter12_reg_n_0_[11] ),
        .O(inter131));
  LUT1 #(
    .INIT(2'h1)) 
    \inter13[11]_i_7 
       (.I0(\inter12_reg_n_0_[11] ),
        .O(\inter13[11]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inter13[11]_i_8 
       (.I0(\inter12_reg_n_0_[10] ),
        .O(\inter13[11]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inter13[11]_i_9 
       (.I0(\inter12_reg_n_0_[10] ),
        .O(\inter13[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2222222)) 
    \inter13[12]_i_1 
       (.I0(\inter13_reg_n_0_[12] ),
        .I1(\inter13[12]_i_2_n_0 ),
        .I2(inter130_out),
        .I3(p_2_in),
        .I4(\state_reg_n_0_[2] ),
        .I5(reset_IBUF),
        .O(\inter13[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0024)) 
    \inter13[12]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .O(\inter13[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \inter13[12]_i_3 
       (.I0(inter131),
        .I1(\inter13[12]_i_4_n_0 ),
        .I2(\inter13_reg_n_0_[11] ),
        .I3(\inter13_reg_n_0_[10] ),
        .I4(\inter13_reg_n_0_[8] ),
        .I5(\inter13_reg_n_0_[9] ),
        .O(inter130_out));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \inter13[12]_i_4 
       (.I0(\inter13_reg_n_0_[5] ),
        .I1(\inter13_reg_n_0_[4] ),
        .I2(\inter13_reg_n_0_[7] ),
        .I3(\inter13_reg_n_0_[6] ),
        .I4(\inter13[12]_i_5_n_0 ),
        .O(\inter13[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \inter13[12]_i_5 
       (.I0(\inter13_reg_n_0_[2] ),
        .I1(\inter13_reg_n_0_[3] ),
        .I2(\inter13_reg_n_0_[0] ),
        .I3(\inter13_reg_n_0_[1] ),
        .O(\inter13[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8888A808)) 
    \inter13[1]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\inter12_reg_n_0_[1] ),
        .I2(p_2_in),
        .I3(inter130[1]),
        .I4(inter131),
        .O(\inter13[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8888A808)) 
    \inter13[2]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\inter12_reg_n_0_[2] ),
        .I2(p_2_in),
        .I3(inter130[2]),
        .I4(inter131),
        .O(\inter13[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8888A808)) 
    \inter13[3]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\inter12_reg_n_0_[3] ),
        .I2(p_2_in),
        .I3(inter130[3]),
        .I4(inter131),
        .O(\inter13[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8888A808)) 
    \inter13[4]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\inter12_reg_n_0_[4] ),
        .I2(p_2_in),
        .I3(inter130[4]),
        .I4(inter131),
        .O(\inter13[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inter13[4]_i_3 
       (.I0(\inter12_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \inter13[4]_i_4 
       (.I0(\inter12_reg_n_0_[4] ),
        .O(p_0_in__0[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \inter13[4]_i_5 
       (.I0(\inter12_reg_n_0_[3] ),
        .O(p_0_in__0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \inter13[4]_i_6 
       (.I0(\inter12_reg_n_0_[2] ),
        .O(p_0_in__0[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \inter13[4]_i_7 
       (.I0(\inter12_reg_n_0_[1] ),
        .O(p_0_in__0[1]));
  LUT5 #(
    .INIT(32'h8888A808)) 
    \inter13[5]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\inter12_reg_n_0_[5] ),
        .I2(p_2_in),
        .I3(inter130[5]),
        .I4(inter131),
        .O(\inter13[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8888A808)) 
    \inter13[6]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\inter12_reg_n_0_[6] ),
        .I2(p_2_in),
        .I3(inter130[6]),
        .I4(inter131),
        .O(\inter13[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8888A808)) 
    \inter13[7]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\inter12_reg_n_0_[7] ),
        .I2(p_2_in),
        .I3(inter130[7]),
        .I4(inter131),
        .O(\inter13[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8888A808)) 
    \inter13[8]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\inter12_reg_n_0_[8] ),
        .I2(p_2_in),
        .I3(inter130[8]),
        .I4(inter131),
        .O(\inter13[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inter13[8]_i_3 
       (.I0(\inter12_reg_n_0_[8] ),
        .O(p_0_in__0[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \inter13[8]_i_4 
       (.I0(\inter12_reg_n_0_[7] ),
        .O(p_0_in__0[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \inter13[8]_i_5 
       (.I0(\inter12_reg_n_0_[6] ),
        .O(p_0_in__0[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \inter13[8]_i_6 
       (.I0(\inter12_reg_n_0_[5] ),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \inter13[9]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(inter1301_in[9]),
        .I2(p_2_in),
        .I3(inter130[9]),
        .I4(inter131),
        .I5(inter1300_in[9]),
        .O(\inter13[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[11]_i_1_n_0 ),
        .D(\inter13[0]_i_1_n_0 ),
        .Q(\inter13_reg_n_0_[0] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[11]_i_1_n_0 ),
        .D(\inter13[10]_i_1_n_0 ),
        .Q(\inter13_reg_n_0_[10] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[11]_i_1_n_0 ),
        .D(\inter13[11]_i_2_n_0 ),
        .Q(\inter13_reg_n_0_[11] ),
        .R(reset_IBUF));
  (* OPT_MODIFIED = "PROPCONST SWEEP " *) 
  CARRY4 \inter13_reg[11]_i_3 
       (.CI(1'b0),
        .CO(\NLW_inter13_reg[11]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\inter12_reg_n_0_[10] ,1'b0}),
        .O({\NLW_inter13_reg[11]_i_3_O_UNCONNECTED [3],inter1301_in[11:10],\NLW_inter13_reg[11]_i_3_O_UNCONNECTED [0]}),
        .S({1'b0,\inter13[11]_i_7_n_0 ,\inter13[11]_i_8_n_0 ,inter1301_in[9]}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \inter13_reg[11]_i_4 
       (.CI(\inter13_reg[8]_i_2_n_0 ),
        .CO(\NLW_inter13_reg[11]_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\inter13[11]_i_9_n_0 ,1'b0}),
        .O({\NLW_inter13_reg[11]_i_4_O_UNCONNECTED [3],inter130[11:9]}),
        .S({1'b0,\inter12_reg_n_0_[11] ,\inter12_reg_n_0_[10] ,p_0_in__0[9]}));
  (* OPT_MODIFIED = "PROPCONST SWEEP " *) 
  CARRY4 \inter13_reg[11]_i_6 
       (.CI(1'b0),
        .CO(\NLW_inter13_reg[11]_i_6_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\inter12_reg_n_0_[10] ,1'b0}),
        .O({\NLW_inter13_reg[11]_i_6_O_UNCONNECTED [3],inter1300_in}),
        .S({1'b0,\inter12_reg_n_0_[11] ,\inter13[11]_i_13_n_0 ,inter1301_in[9]}));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\inter13[12]_i_1_n_0 ),
        .Q(\inter13_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[11]_i_1_n_0 ),
        .D(\inter13[1]_i_1_n_0 ),
        .Q(\inter13_reg_n_0_[1] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[11]_i_1_n_0 ),
        .D(\inter13[2]_i_1_n_0 ),
        .Q(\inter13_reg_n_0_[2] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[11]_i_1_n_0 ),
        .D(\inter13[3]_i_1_n_0 ),
        .Q(\inter13_reg_n_0_[3] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[11]_i_1_n_0 ),
        .D(\inter13[4]_i_1_n_0 ),
        .Q(\inter13_reg_n_0_[4] ),
        .R(reset_IBUF));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \inter13_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\inter13_reg[4]_i_2_n_0 ,\NLW_inter13_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(p_0_in__0[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(inter130[4:1]),
        .S(p_0_in__0[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[11]_i_1_n_0 ),
        .D(\inter13[5]_i_1_n_0 ),
        .Q(\inter13_reg_n_0_[5] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[11]_i_1_n_0 ),
        .D(\inter13[6]_i_1_n_0 ),
        .Q(\inter13_reg_n_0_[6] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[11]_i_1_n_0 ),
        .D(\inter13[7]_i_1_n_0 ),
        .Q(\inter13_reg_n_0_[7] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[11]_i_1_n_0 ),
        .D(\inter13[8]_i_1_n_0 ),
        .Q(\inter13_reg_n_0_[8] ),
        .R(reset_IBUF));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \inter13_reg[8]_i_2 
       (.CI(\inter13_reg[4]_i_2_n_0 ),
        .CO({\inter13_reg[8]_i_2_n_0 ,\NLW_inter13_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(inter130[8:5]),
        .S(p_0_in__0[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \inter13_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(\inter13[11]_i_1_n_0 ),
        .D(\inter13[9]_i_1_n_0 ),
        .Q(\inter13_reg_n_0_[9] ),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \iteration_counter[0]_i_1 
       (.I0(iteration_counter[0]),
        .I1(\state_reg_n_0_[1] ),
        .O(\iteration_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \iteration_counter[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(iteration_counter[1]),
        .I2(iteration_counter[0]),
        .O(\iteration_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEEEB)) 
    \iteration_counter[2]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(iteration_counter[2]),
        .I2(iteration_counter[0]),
        .I3(iteration_counter[1]),
        .O(\iteration_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000AAA9)) 
    \iteration_counter[3]_i_1 
       (.I0(iteration_counter[3]),
        .I1(iteration_counter[1]),
        .I2(iteration_counter[0]),
        .I3(iteration_counter[2]),
        .I4(\state_reg_n_0_[1] ),
        .O(\iteration_counter[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \iteration_counter[4]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .O(PrevApproxVal));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA9)) 
    \iteration_counter[4]_i_2 
       (.I0(iteration_counter[4]),
        .I1(iteration_counter[2]),
        .I2(iteration_counter[0]),
        .I3(iteration_counter[1]),
        .I4(iteration_counter[3]),
        .I5(\state_reg_n_0_[1] ),
        .O(\iteration_counter[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \iteration_counter_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(PrevApproxVal),
        .D(\iteration_counter[0]_i_1_n_0 ),
        .Q(iteration_counter[0]),
        .R(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \iteration_counter_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(PrevApproxVal),
        .D(\iteration_counter[1]_i_1_n_0 ),
        .Q(iteration_counter[1]),
        .S(reset_IBUF));
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
        .D(\iteration_counter[3]_i_1_n_0 ),
        .Q(iteration_counter[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \iteration_counter_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(PrevApproxVal),
        .D(\iteration_counter[4]_i_2_n_0 ),
        .Q(iteration_counter[4]),
        .R(reset_IBUF));
  OBUF ready_out_OBUF_inst
       (.I(ready_out_OBUF),
        .O(ready_out));
  LUT4 #(
    .INIT(16'h0094)) 
    ready_out_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .O(ready_out_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ready_out_i_2
       (.I0(\state_reg_n_0_[1] ),
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
    .INIT(64'hFFFFF003FFFF0FFA)) 
    \state[0]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(start_IBUF),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[0] ),
        .O(state[0]));
  LUT6 #(
    .INIT(64'h000000003F0C0FFA)) 
    \state[1]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(start_IBUF),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB0A0B0A0F5A0F5A5)) 
    \state[2]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(start_IBUF),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state[2]_i_2_n_0 ),
        .I5(\state_reg_n_0_[1] ),
        .O(state[2]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[2]_i_2 
       (.I0(iteration_counter[1]),
        .I1(iteration_counter[4]),
        .I2(iteration_counter[0]),
        .I3(iteration_counter[2]),
        .I4(iteration_counter[3]),
        .O(\state[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h57)) 
    \state[3]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .O(\state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h04AA)) 
    \state[3]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
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
  IBUF \val_in_IBUF[1]_inst 
       (.I(val_in[1]),
        .O(val_in_IBUF[1]));
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
    \val_out[11]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(reset_IBUF),
        .O(\val_out[11]_i_1_n_0 ));
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
       (.I(1'b0),
        .O(val_out[12]));
  OBUF \val_out_OBUF[1]_inst 
       (.I(val_out_OBUF[1]),
        .O(val_out[1]));
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
        .CE(\val_out[11]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[0] ),
        .Q(val_out_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[11]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[10] ),
        .Q(val_out_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[11]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[11] ),
        .Q(val_out_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[11]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[1] ),
        .Q(val_out_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[11]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[2] ),
        .Q(val_out_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[11]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[3] ),
        .Q(val_out_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[11]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[4] ),
        .Q(val_out_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[11]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[5] ),
        .Q(val_out_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[11]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[6] ),
        .Q(val_out_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[11]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[7] ),
        .Q(val_out_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[11]_i_1_n_0 ),
        .D(\PrevApproxVal_reg_n_0_[8] ),
        .Q(val_out_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_out_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(\val_out[11]_i_1_n_0 ),
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
