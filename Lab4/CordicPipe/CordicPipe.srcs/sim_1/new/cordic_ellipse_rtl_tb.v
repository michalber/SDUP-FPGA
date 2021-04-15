`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2021 17:52:45
// Design Name: 
// Module Name: cordic_ellipse_rtl_tb
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


module cordic_ellipse_rtl_tb;

reg clock, ce, reset, start;
wire [13:0] x;
wire [13:0] y;
wire [12:0] angle_out;
wire valid_out;
reg [11:0] a, b;
//Instantiation
cordic_ellipse_rtl ellipse ( clock, reset, ce, a, b, x, y, angle_out, valid_out );
//Reset stimuli
initial
begin
 a = 3;
 b = 7;
 reset <= 1'b1;
 #10 reset <= 1'b0;
end
//ce & clock generator stimuli
initial
begin
 ce <= 1'b1;
 clock <= 1'b1;
end
always
 #5 clock <= ~clock;
//Signals stimuli

endmodule


