`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2021 15:59:36
// Design Name: 
// Module Name: cordic_pipe_rtl_tb
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


module cordic_pipe_rtl_tb;
reg clock, ce, reset, start;
reg [11:0] angle_in;
real angle[0:15];
integer counter = 0;
                     
wire [11:0] sin_out, cos_out;
wire valid_out;
//For easy output value monitoring
real real_cos, real_sin;
//Instantiation
cordic_pipe_rtl cordic ( clock, reset, ce, angle_in, sin_out, cos_out, valid_out );
//Reset stimuli
initial
begin
 reset <= 1'b1;
  angle[0] = 0.1;
  angle[1] = 0.3;
  angle[2] = 0.5;
  angle[3] = 0.7;
  angle[4] = 0.9;
  angle[5] = 1.1;
  angle[6] = 1.3;
  angle[7] = 1.5;
  angle[8] = 1.7;
  angle[9] = 1.9;
  angle[10] = 2.1;
  angle[11] = 2.3;
  angle[12] = 2.5;
  angle[13] = 2.7;
  angle[14] = 2.9;
  angle[15] = 3.1;
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

always@(posedge clock)
begin
 if(counter < 15) angle_in <= angle[counter] * 1024; //Value in fixed-point (12:10)
 //Convert and display results
 real_cos = cos_out;
 real_sin = sin_out;
 real_cos = real_cos / 1024;
 real_sin = real_sin / 1024;
 counter = counter + 1;
 $display("Real values: sin=%f, cos=%f", real_sin, real_cos);
end
endmodule

