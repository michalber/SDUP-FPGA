`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2021 16:46:46
// Design Name: 
// Module Name: NRInvSqrRootTB
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


module NRInvSqrRootTB();

real inputFP, outputFP;
reg [24:0] input0, output0;

NRInvSqrRootBeh UUT(.input0, .output0);

initial begin
    input0 = 8*2**19;
end

endmodule
