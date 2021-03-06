`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2021 20:53:31
// Design Name: 
// Module Name: CarrySelectAdder
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


module CarrySelectAdder
        (   A,B,
            cin,
            S,
            cout
            );
            
parameter integer W = 256; //Width of the data        

input [W-1:0] A,B;
input cin;
output [W-1:0] S;
output cout;
            
wire [W-1:0] temp0,temp1,carry0,carry1;

genvar j;
//for carry 0
FullAdder fa00(A[0],B[0],1'b0,temp0[0],carry0[0]);
generate
for (j=1; j<W; j=j+1)
begin: fulladder_loop_0
    FullAdder fa0N (A[j], B[j], carry0[j-1], temp0[j], carry0[j]);
end //end of the for loop inside the generate block
endgenerate //end of the generate block

//for carry 1
FullAdder fa10(A[0],B[0],1'b1,temp1[0],carry1[0]);
generate
for (j=1; j<W; j=j+1)
begin: fulladder_loop_1
    FullAdder fa11 (A[j], B[j], carry1[j-1], temp1[j], carry1[j]);
end //end of the for loop inside the generate block
endgenerate //end of the generate block

//mux's for sum
generate
for (j=0; j<W; j=j+1)
begin: mux_loop
    Mux2 mux_sum0(temp0[j],temp1[j],cin,S[j]);
end //end of the for loop inside the generate block
endgenerate //end of the generate block

//mux for carry
Mux2 mux_carry(carry0[W-1],carry1[W-1],cin,cout);

endmodule 


module ripple_adder(X, Y, S, Co);
 parameter integer W = 256; //Width of the data    
 parameter integer BW = 64; //Width of the data    
 input [W-1:0] X, Y;// Two 4-bit inputs
 output [W-1:0] S;
 output Co;
 wire [W/BW-1:0] w;
 // instantiating 4 1-bit full adders in Verilog
 
// genvar j;
// FullAdder fa0(X[0], Y[0], 1'b0, S[0], w[0]);
//generate
//for (j=1; j<W; j=j+1)
//begin: fulladder_loop_0
//    FullAdder faN(X[j], Y[j], w[j-1], S[j], w[j]);
//end //end of the for loop inside the generate block
//endgenerate //end of the generate block

//assign Co = w[W-1];

        ripple_carry_64_bit rca1(
        .a(X[BW-1:0]),
        .b(Y[BW-1:0]),
        .cin(1'b0),
        .sum(S[BW-1:0]),
        .cout(w[0]));
        
    genvar j;
    generate
    for (j=1; j<W/BW; j=j+1)
    begin: ripplecarry_loop
        ripple_carry_64_bit rca1(
        .a(X[BW-1+BW*j:j*BW]),
        .b(Y[BW-1+BW*j:j*BW]),
        .cin(w[j-1]),
        .sum(S[BW-1+BW*j:j*BW]),
        .cout(w[j]));
    end //end of the for loop inside the generate block
    endgenerate //end of the generate block
    
    assign Co = w[3];
    
endmodule
