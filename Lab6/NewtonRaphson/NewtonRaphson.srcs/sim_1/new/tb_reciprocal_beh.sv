`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2021 15:57:22
// Design Name: 
// Module Name: tb_reciprocal_beh
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


module tb_reciprocal_beh();
real inputFP, outputFP;
logic [15:0] input0, output0;
en_reciprocal_beh UUT ( .input0, .output0 );
initial begin
 input0 = 16'd4;
end
endmodule
