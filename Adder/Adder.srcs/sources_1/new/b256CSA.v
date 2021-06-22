`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2021 18:25:23
// Design Name: 
// Module Name: b256CSA
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


module b256CSA(a, b, cin, sum, cout);
    parameter W=256;
    parameter BW=64;
    
    input [W-1:0] a,b;
    input cin;
    output [W-1:0] sum;
    output cout;
 
    wire [W/4-1:0] c;
 
    ripple_carry_64_bit rca1(
    .a(a[BW-1:0]),
    .b(b[BW-1:0]),
    .cin(cin),
    .sum(sum[BW-1:0]),
    .cout(c[0]));

    genvar j;
    generate
    for (j=0; j<W/BW-1; j=j+1)
    begin: Carry64BitsAdder_loop
         Carry64BitsAdder csa_slice(
        .a(a[127+BW*j:BW+BW*j]),
        .b(b[127+BW*j:BW+BW*j]),
        .cin(c[j]),
        .sum(sum[127+BW*j:BW+BW*j]),
        .cout(c[j+1]));
    end //end of the for loop inside the generate block
    endgenerate //end of the generate block
    
    assign cout = c[W/BW-1];
endmodule


module Carry64BitsAdder(a, b, cin, sum, cout);
    input [63:0] a,b;
    input cin;
    output [63:0] sum;
    output cout;
 
    wire [63:0] s0,s1;
    wire c0,c1;
 
    ripple_carry_64_bit rca1(
    .a(a[63:0]),
    .b(b[63:0]),
    .cin(1'b0),
    .sum(s0[63:0]),
    .cout(c0));
 
    ripple_carry_64_bit rca2(
    .a(a[63:0]),
    .b(b[63:0]),
    .cin(1'b1),
    .sum(s1[63:0]),
    .cout(c1));
 
    mux2X1 #(64) ms0(
    .in0(s0[63:0]),
    .in1(s1[63:0]),
    .sel(cin),
    .out(sum[63:0]));
 
    mux2X1 #(1) mc0(
    .in0(c0),
    .in1(c1),
    .sel(cin),
    .out(cout));

endmodule

module ripple_carry_64_bit(a, b, cin, sum, cout);
    input [63:0] a,b;
    input cin;
    output [63:0] sum;
    output cout;
 
    wire c1,c2,c3;
    wire carry[62:0];
    
     FullAdder fa0(
    .a(a[0]),
    .b(b[0]),
    .cin(cin),
    .sum(sum[0]),
    .carry(carry[1]));
    
    genvar i;
    generate
    for (i=1; i<63; i=i+1)
    begin: fulladder_loop
         FullAdder faN(
        .a(a[i]),
        .b(b[i]),
        .cin(carry[i]),
        .sum(sum[i]),
        .carry(carry[i+1]));
    end
    endgenerate
    
    FullAdder fa63(
    .a(a[63]),
    .b(b[63]),
    .cin(carry[62]),
    .sum(sum[63]),
    .carry(cout));
endmodule
