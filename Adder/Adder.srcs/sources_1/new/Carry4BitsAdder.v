`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2021 18:51:12
// Design Name: 
// Module Name: 4BitsAdder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Carry4BitsAdder(a, b, cin, sum, cout);
    input [3:0] a,b;
    input cin;
    output [3:0] sum;
    output cout;
 
    wire [3:0] s0,s1;
    wire c0,c1;
 
    ripple_carry_4_bit rca1(
    .a(a[3:0]),
    .b(b[3:0]),
    .cin(1'b0),
    .sum(s0[3:0]),
    .cout(c0));
 
    ripple_carry_4_bit rca2(
    .a(a[3:0]),
    .b(b[3:0]),
    .cin(1'b1),
    .sum(s1[3:0]),
    .cout(c1));
 
    mux2X1 #(4) ms0(
    .in0(s0[3:0]),
    .in1(s1[3:0]),
    .sel(cin),
    .out(sum[3:0]));
 
    mux2X1 #(1) mc0(
    .in0(c0),
    .in1(c1),
    .sel(cin),
    .out(cout));

endmodule

module ripple_carry_4_bit(a, b, cin, sum, cout);
    input [3:0] a,b;
    input cin;
    output [3:0] sum;
    output cout;
 
    wire c1,c2,c3;
 
    FullAdder fa0(
    .a(a[0]),
    .b(b[0]),
    .cin(cin),
    .sum(sum[0]),
    .carry(c1));
 
    FullAdder fa1(
    .a(a[1]),
    .b(b[1]),
    .cin(c1),
    .sum(sum[1]),
    .carry(c2));
 
    FullAdder fa2(
    .a(a[2]),
    .b(b[2]),
    .cin(c2),
    .sum(sum[2]),
    .carry(c3));
 
    FullAdder fa3(
    .a(a[3]),
    .b(b[3]),
    .cin(c3),
    .sum(sum[3]),
    .carry(cout));
endmodule
