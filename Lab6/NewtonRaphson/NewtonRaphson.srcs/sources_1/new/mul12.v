`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2021 15:11:24
// Design Name: 
// Module Name: mul12
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


module mul12(
 input logic[11:0] input0,
 input logic[11:0] input1,
 output logic[23:0] output0
);
always_comb begin
 output0 <= input0 * input1;
end

endmodule
