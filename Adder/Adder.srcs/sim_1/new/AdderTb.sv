`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2021 20:57:51
// Design Name: 
// Module Name: AdderTb
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


module AdderTb;

    parameter integer W = 4; //Width of the data

    // Inputs
    reg [W-1:0] A;
    reg [W-1:0] B;
    reg cin;
    // Outputs
    wire [W-1:0] S, S_modular;
    wire cout, cout_modular;  
    integer i,j,error;

    // Instantiate the Unit Under Test (UUT)
    CarrySelectAdder #(W) uut (
        .A(A), 
        .B(B), 
        .cin(cin), 
        .S(S), 
        .cout(cout)
    );
    
    ModularCarryAdder #(W) uut2 (
        .a(A), 
        .b(B), 
        .cin(cin), 
        .sum(S_modular), 
        .cout(cout_modular)
    );
    
//Stimulus block - all the input combinations are tested here.
//the number of errors are recorded in the signal named "error".
    initial begin
        // Initialize Inputs
        A = 0;
        B = 0;
        error = 0;
        //for carry in =0
        cin = 0;
      for(i=0;i<(1<<W);i=i+1) begin
            for(j=0;j<(1<<W);j=j+1) begin
                 A = i;
                 B = j;
                 #10;
                 if({cout,S} != (i+j)) 
                      error <= error + 1;
            end  
      end
        //for carry in =1
      cin = 1; 
      for(i=0;i<(1<<W);i=i+1) begin
            for(j=0;j<(1<<W);j=j+1) begin
                 A = i;
                 B = j;
                 #10;
                 if({cout,S} != (i+j+1)) 
                      error <= error + 1;
            end  
      end 
   end
    
endmodule
