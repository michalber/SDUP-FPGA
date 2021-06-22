// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jun 17 09:50:02 2021
// Host        : DESKTOP-28EGR53 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               E:/elektronika-notatki/Rok_IV/SDUP/SDUP-FPGA/Adder/Adder.sim/sim_1/impl/timing/xsim/AdderTb_time_impl.v
// Design      : ModularCarryAdder
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "14dbcaf8" *) (* W = "16" *) 
(* NotValidForBitStream *)
module ModularCarryAdder
   (a,
    b,
    cin,
    sum,
    cout);
  input [15:0]a;
  input [15:0]b;
  input cin;
  output [15:0]sum;
  output cout;

  wire \Carry4BitsAdder_loop[0].csa_slice/c0 ;
  wire \Carry4BitsAdder_loop[0].csa_slice/c1 ;
  wire \Carry4BitsAdder_loop[0].csa_slice/rca1/c2 ;
  wire \Carry4BitsAdder_loop[0].csa_slice/rca1/c3 ;
  wire \Carry4BitsAdder_loop[0].csa_slice/rca2/c2 ;
  wire \Carry4BitsAdder_loop[0].csa_slice/rca2/c3 ;
  wire \Carry4BitsAdder_loop[1].csa_slice/c0 ;
  wire \Carry4BitsAdder_loop[1].csa_slice/c1 ;
  wire \Carry4BitsAdder_loop[1].csa_slice/rca1/c2 ;
  wire \Carry4BitsAdder_loop[1].csa_slice/rca1/c3 ;
  wire \Carry4BitsAdder_loop[1].csa_slice/rca2/c2 ;
  wire \Carry4BitsAdder_loop[1].csa_slice/rca2/c3 ;
  wire \Carry4BitsAdder_loop[2].csa_slice/rca1/c2 ;
  wire \Carry4BitsAdder_loop[2].csa_slice/rca1/c3 ;
  wire \Carry4BitsAdder_loop[2].csa_slice/rca2/c2 ;
  wire \Carry4BitsAdder_loop[2].csa_slice/rca2/c3 ;
  wire [15:0]a;
  wire [15:0]a_IBUF;
  wire [15:0]b;
  wire [15:0]b_IBUF;
  wire c_1;
  wire c_2;
  wire cin;
  wire cin_IBUF;
  wire cout;
  wire cout_OBUF;
  wire p_0_in;
  wire \rca1/c2 ;
  wire [15:0]sum;
  wire [15:0]sum_OBUF;

initial begin
 $sdf_annotate("AdderTb_time_impl.sdf",,,,"tool_control");
end
  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[10]_inst 
       (.I(a[10]),
        .O(a_IBUF[10]));
  IBUF \a_IBUF[11]_inst 
       (.I(a[11]),
        .O(a_IBUF[11]));
  IBUF \a_IBUF[12]_inst 
       (.I(a[12]),
        .O(a_IBUF[12]));
  IBUF \a_IBUF[13]_inst 
       (.I(a[13]),
        .O(a_IBUF[13]));
  IBUF \a_IBUF[14]_inst 
       (.I(a[14]),
        .O(a_IBUF[14]));
  IBUF \a_IBUF[15]_inst 
       (.I(a[15]),
        .O(a_IBUF[15]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF \a_IBUF[4]_inst 
       (.I(a[4]),
        .O(a_IBUF[4]));
  IBUF \a_IBUF[5]_inst 
       (.I(a[5]),
        .O(a_IBUF[5]));
  IBUF \a_IBUF[6]_inst 
       (.I(a[6]),
        .O(a_IBUF[6]));
  IBUF \a_IBUF[7]_inst 
       (.I(a[7]),
        .O(a_IBUF[7]));
  IBUF \a_IBUF[8]_inst 
       (.I(a[8]),
        .O(a_IBUF[8]));
  IBUF \a_IBUF[9]_inst 
       (.I(a[9]),
        .O(a_IBUF[9]));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[10]_inst 
       (.I(b[10]),
        .O(b_IBUF[10]));
  IBUF \b_IBUF[11]_inst 
       (.I(b[11]),
        .O(b_IBUF[11]));
  IBUF \b_IBUF[12]_inst 
       (.I(b[12]),
        .O(b_IBUF[12]));
  IBUF \b_IBUF[13]_inst 
       (.I(b[13]),
        .O(b_IBUF[13]));
  IBUF \b_IBUF[14]_inst 
       (.I(b[14]),
        .O(b_IBUF[14]));
  IBUF \b_IBUF[15]_inst 
       (.I(b[15]),
        .O(b_IBUF[15]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  IBUF \b_IBUF[4]_inst 
       (.I(b[4]),
        .O(b_IBUF[4]));
  IBUF \b_IBUF[5]_inst 
       (.I(b[5]),
        .O(b_IBUF[5]));
  IBUF \b_IBUF[6]_inst 
       (.I(b[6]),
        .O(b_IBUF[6]));
  IBUF \b_IBUF[7]_inst 
       (.I(b[7]),
        .O(b_IBUF[7]));
  IBUF \b_IBUF[8]_inst 
       (.I(b[8]),
        .O(b_IBUF[8]));
  IBUF \b_IBUF[9]_inst 
       (.I(b[9]),
        .O(b_IBUF[9]));
  IBUF cin_IBUF_inst
       (.I(cin),
        .O(cin_IBUF));
  OBUF cout_OBUF_inst
       (.I(cout_OBUF),
        .O(cout));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFB8B800)) 
    cout_OBUF_inst_i_1
       (.I0(\Carry4BitsAdder_loop[2].csa_slice/rca2/c3 ),
        .I1(c_2),
        .I2(\Carry4BitsAdder_loop[2].csa_slice/rca1/c3 ),
        .I3(b_IBUF[15]),
        .I4(a_IBUF[15]),
        .O(cout_OBUF));
  OBUF \sum_OBUF[0]_inst 
       (.I(sum_OBUF[0]),
        .O(sum[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_OBUF[0]_inst_i_1 
       (.I0(b_IBUF[0]),
        .I1(a_IBUF[0]),
        .I2(cin_IBUF),
        .O(sum_OBUF[0]));
  OBUF \sum_OBUF[10]_inst 
       (.I(sum_OBUF[10]),
        .O(sum[10]));
  LUT5 #(
    .INIT(32'hB44B8778)) 
    \sum_OBUF[10]_inst_i_1 
       (.I0(\Carry4BitsAdder_loop[1].csa_slice/rca2/c2 ),
        .I1(c_1),
        .I2(b_IBUF[10]),
        .I3(a_IBUF[10]),
        .I4(\Carry4BitsAdder_loop[1].csa_slice/rca1/c2 ),
        .O(sum_OBUF[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFEE0)) 
    \sum_OBUF[10]_inst_i_2 
       (.I0(a_IBUF[8]),
        .I1(b_IBUF[8]),
        .I2(b_IBUF[9]),
        .I3(a_IBUF[9]),
        .O(\Carry4BitsAdder_loop[1].csa_slice/rca2/c2 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \sum_OBUF[10]_inst_i_3 
       (.I0(b_IBUF[8]),
        .I1(a_IBUF[8]),
        .I2(b_IBUF[9]),
        .I3(a_IBUF[9]),
        .O(\Carry4BitsAdder_loop[1].csa_slice/rca1/c2 ));
  OBUF \sum_OBUF[11]_inst 
       (.I(sum_OBUF[11]),
        .O(sum[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hB44B8778)) 
    \sum_OBUF[11]_inst_i_1 
       (.I0(\Carry4BitsAdder_loop[1].csa_slice/rca2/c3 ),
        .I1(c_1),
        .I2(b_IBUF[11]),
        .I3(a_IBUF[11]),
        .I4(\Carry4BitsAdder_loop[1].csa_slice/rca1/c3 ),
        .O(sum_OBUF[11]));
  LUT6 #(
    .INIT(64'hFFFFEEE8EEE80000)) 
    \sum_OBUF[11]_inst_i_2 
       (.I0(a_IBUF[9]),
        .I1(b_IBUF[9]),
        .I2(b_IBUF[8]),
        .I3(a_IBUF[8]),
        .I4(b_IBUF[10]),
        .I5(a_IBUF[10]),
        .O(\Carry4BitsAdder_loop[1].csa_slice/rca2/c3 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFB8B800)) 
    \sum_OBUF[11]_inst_i_3 
       (.I0(\Carry4BitsAdder_loop[0].csa_slice/rca2/c3 ),
        .I1(p_0_in),
        .I2(\Carry4BitsAdder_loop[0].csa_slice/rca1/c3 ),
        .I3(b_IBUF[7]),
        .I4(a_IBUF[7]),
        .O(c_1));
  LUT6 #(
    .INIT(64'hFFFFE888E8880000)) 
    \sum_OBUF[11]_inst_i_4 
       (.I0(a_IBUF[9]),
        .I1(b_IBUF[9]),
        .I2(a_IBUF[8]),
        .I3(b_IBUF[8]),
        .I4(b_IBUF[10]),
        .I5(a_IBUF[10]),
        .O(\Carry4BitsAdder_loop[1].csa_slice/rca1/c3 ));
  OBUF \sum_OBUF[12]_inst 
       (.I(sum_OBUF[12]),
        .O(sum[12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \sum_OBUF[12]_inst_i_1 
       (.I0(c_2),
        .I1(a_IBUF[12]),
        .I2(b_IBUF[12]),
        .O(sum_OBUF[12]));
  OBUF \sum_OBUF[13]_inst 
       (.I(sum_OBUF[13]),
        .O(sum[13]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hC396963C)) 
    \sum_OBUF[13]_inst_i_1 
       (.I0(c_2),
        .I1(b_IBUF[13]),
        .I2(a_IBUF[13]),
        .I3(a_IBUF[12]),
        .I4(b_IBUF[12]),
        .O(sum_OBUF[13]));
  OBUF \sum_OBUF[14]_inst 
       (.I(sum_OBUF[14]),
        .O(sum[14]));
  LUT5 #(
    .INIT(32'hB44B8778)) 
    \sum_OBUF[14]_inst_i_1 
       (.I0(\Carry4BitsAdder_loop[2].csa_slice/rca2/c2 ),
        .I1(c_2),
        .I2(b_IBUF[14]),
        .I3(a_IBUF[14]),
        .I4(\Carry4BitsAdder_loop[2].csa_slice/rca1/c2 ),
        .O(sum_OBUF[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFEE0)) 
    \sum_OBUF[14]_inst_i_2 
       (.I0(a_IBUF[12]),
        .I1(b_IBUF[12]),
        .I2(b_IBUF[13]),
        .I3(a_IBUF[13]),
        .O(\Carry4BitsAdder_loop[2].csa_slice/rca2/c2 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \sum_OBUF[14]_inst_i_3 
       (.I0(b_IBUF[12]),
        .I1(a_IBUF[12]),
        .I2(b_IBUF[13]),
        .I3(a_IBUF[13]),
        .O(\Carry4BitsAdder_loop[2].csa_slice/rca1/c2 ));
  OBUF \sum_OBUF[15]_inst 
       (.I(sum_OBUF[15]),
        .O(sum[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB44B8778)) 
    \sum_OBUF[15]_inst_i_1 
       (.I0(\Carry4BitsAdder_loop[2].csa_slice/rca2/c3 ),
        .I1(c_2),
        .I2(b_IBUF[15]),
        .I3(a_IBUF[15]),
        .I4(\Carry4BitsAdder_loop[2].csa_slice/rca1/c3 ),
        .O(sum_OBUF[15]));
  LUT6 #(
    .INIT(64'hFFFFEEE8EEE80000)) 
    \sum_OBUF[15]_inst_i_2 
       (.I0(a_IBUF[13]),
        .I1(b_IBUF[13]),
        .I2(b_IBUF[12]),
        .I3(a_IBUF[12]),
        .I4(b_IBUF[14]),
        .I5(a_IBUF[14]),
        .O(\Carry4BitsAdder_loop[2].csa_slice/rca2/c3 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \sum_OBUF[15]_inst_i_3 
       (.I0(\Carry4BitsAdder_loop[1].csa_slice/c1 ),
        .I1(\Carry4BitsAdder_loop[0].csa_slice/c1 ),
        .I2(p_0_in),
        .I3(\Carry4BitsAdder_loop[0].csa_slice/c0 ),
        .I4(\Carry4BitsAdder_loop[1].csa_slice/c0 ),
        .O(c_2));
  LUT6 #(
    .INIT(64'hFFFFE888E8880000)) 
    \sum_OBUF[15]_inst_i_4 
       (.I0(a_IBUF[13]),
        .I1(b_IBUF[13]),
        .I2(a_IBUF[12]),
        .I3(b_IBUF[12]),
        .I4(b_IBUF[14]),
        .I5(a_IBUF[14]),
        .O(\Carry4BitsAdder_loop[2].csa_slice/rca1/c3 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_OBUF[15]_inst_i_5 
       (.I0(\Carry4BitsAdder_loop[1].csa_slice/rca2/c3 ),
        .I1(b_IBUF[11]),
        .I2(a_IBUF[11]),
        .O(\Carry4BitsAdder_loop[1].csa_slice/c1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_OBUF[15]_inst_i_6 
       (.I0(\Carry4BitsAdder_loop[0].csa_slice/rca2/c3 ),
        .I1(b_IBUF[7]),
        .I2(a_IBUF[7]),
        .O(\Carry4BitsAdder_loop[0].csa_slice/c1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_OBUF[15]_inst_i_7 
       (.I0(\Carry4BitsAdder_loop[0].csa_slice/rca1/c3 ),
        .I1(b_IBUF[7]),
        .I2(a_IBUF[7]),
        .O(\Carry4BitsAdder_loop[0].csa_slice/c0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_OBUF[15]_inst_i_8 
       (.I0(\Carry4BitsAdder_loop[1].csa_slice/rca1/c3 ),
        .I1(b_IBUF[11]),
        .I2(a_IBUF[11]),
        .O(\Carry4BitsAdder_loop[1].csa_slice/c0 ));
  OBUF \sum_OBUF[1]_inst 
       (.I(sum_OBUF[1]),
        .O(sum[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \sum_OBUF[1]_inst_i_1 
       (.I0(b_IBUF[1]),
        .I1(a_IBUF[1]),
        .I2(cin_IBUF),
        .I3(b_IBUF[0]),
        .I4(a_IBUF[0]),
        .O(sum_OBUF[1]));
  OBUF \sum_OBUF[2]_inst 
       (.I(sum_OBUF[2]),
        .O(sum[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_OBUF[2]_inst_i_1 
       (.I0(b_IBUF[2]),
        .I1(a_IBUF[2]),
        .I2(\rca1/c2 ),
        .O(sum_OBUF[2]));
  OBUF \sum_OBUF[3]_inst 
       (.I(sum_OBUF[3]),
        .O(sum[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \sum_OBUF[3]_inst_i_1 
       (.I0(b_IBUF[3]),
        .I1(a_IBUF[3]),
        .I2(\rca1/c2 ),
        .I3(b_IBUF[2]),
        .I4(a_IBUF[2]),
        .O(sum_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \sum_OBUF[3]_inst_i_2 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[0]),
        .I2(cin_IBUF),
        .I3(b_IBUF[1]),
        .I4(a_IBUF[1]),
        .O(\rca1/c2 ));
  OBUF \sum_OBUF[4]_inst 
       (.I(sum_OBUF[4]),
        .O(sum[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \sum_OBUF[4]_inst_i_1 
       (.I0(p_0_in),
        .I1(a_IBUF[4]),
        .I2(b_IBUF[4]),
        .O(sum_OBUF[4]));
  OBUF \sum_OBUF[5]_inst 
       (.I(sum_OBUF[5]),
        .O(sum[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hC396963C)) 
    \sum_OBUF[5]_inst_i_1 
       (.I0(p_0_in),
        .I1(b_IBUF[5]),
        .I2(a_IBUF[5]),
        .I3(a_IBUF[4]),
        .I4(b_IBUF[4]),
        .O(sum_OBUF[5]));
  OBUF \sum_OBUF[6]_inst 
       (.I(sum_OBUF[6]),
        .O(sum[6]));
  LUT5 #(
    .INIT(32'hB44B8778)) 
    \sum_OBUF[6]_inst_i_1 
       (.I0(\Carry4BitsAdder_loop[0].csa_slice/rca2/c2 ),
        .I1(p_0_in),
        .I2(b_IBUF[6]),
        .I3(a_IBUF[6]),
        .I4(\Carry4BitsAdder_loop[0].csa_slice/rca1/c2 ),
        .O(sum_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFEE0)) 
    \sum_OBUF[6]_inst_i_2 
       (.I0(a_IBUF[4]),
        .I1(b_IBUF[4]),
        .I2(b_IBUF[5]),
        .I3(a_IBUF[5]),
        .O(\Carry4BitsAdder_loop[0].csa_slice/rca2/c2 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \sum_OBUF[6]_inst_i_3 
       (.I0(b_IBUF[4]),
        .I1(a_IBUF[4]),
        .I2(b_IBUF[5]),
        .I3(a_IBUF[5]),
        .O(\Carry4BitsAdder_loop[0].csa_slice/rca1/c2 ));
  OBUF \sum_OBUF[7]_inst 
       (.I(sum_OBUF[7]),
        .O(sum[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hB44B8778)) 
    \sum_OBUF[7]_inst_i_1 
       (.I0(\Carry4BitsAdder_loop[0].csa_slice/rca2/c3 ),
        .I1(p_0_in),
        .I2(b_IBUF[7]),
        .I3(a_IBUF[7]),
        .I4(\Carry4BitsAdder_loop[0].csa_slice/rca1/c3 ),
        .O(sum_OBUF[7]));
  LUT6 #(
    .INIT(64'hFFFFEEE8EEE80000)) 
    \sum_OBUF[7]_inst_i_2 
       (.I0(a_IBUF[5]),
        .I1(b_IBUF[5]),
        .I2(b_IBUF[4]),
        .I3(a_IBUF[4]),
        .I4(b_IBUF[6]),
        .I5(a_IBUF[6]),
        .O(\Carry4BitsAdder_loop[0].csa_slice/rca2/c3 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \sum_OBUF[7]_inst_i_3 
       (.I0(a_IBUF[2]),
        .I1(b_IBUF[2]),
        .I2(\rca1/c2 ),
        .I3(b_IBUF[3]),
        .I4(a_IBUF[3]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFE888E8880000)) 
    \sum_OBUF[7]_inst_i_4 
       (.I0(a_IBUF[5]),
        .I1(b_IBUF[5]),
        .I2(a_IBUF[4]),
        .I3(b_IBUF[4]),
        .I4(b_IBUF[6]),
        .I5(a_IBUF[6]),
        .O(\Carry4BitsAdder_loop[0].csa_slice/rca1/c3 ));
  OBUF \sum_OBUF[8]_inst 
       (.I(sum_OBUF[8]),
        .O(sum[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \sum_OBUF[8]_inst_i_1 
       (.I0(c_1),
        .I1(a_IBUF[8]),
        .I2(b_IBUF[8]),
        .O(sum_OBUF[8]));
  OBUF \sum_OBUF[9]_inst 
       (.I(sum_OBUF[9]),
        .O(sum[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hC396963C)) 
    \sum_OBUF[9]_inst_i_1 
       (.I0(c_1),
        .I1(b_IBUF[9]),
        .I2(a_IBUF[9]),
        .I3(a_IBUF[8]),
        .I4(b_IBUF[8]),
        .O(sum_OBUF[9]));
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
