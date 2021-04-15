`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2021 17:07:40
// Design Name: 
// Module Name: cordic_ellipse_rtl
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


module cordic_ellipse_rtl(clock, reset, ce, a, b, x, y, angle, valid_out);

parameter integer STEPS_PER_QUART = 4;
parameter integer W = 14; //Width of the fixed-point (12:10) representation

input clock, reset, ce;
input reg signed [11:0] a, b; //Angle in radians
output reg [W-1:0] x, y;
output wire valid_out; //Valid data output flag
output reg [W:0] angle;
integer counter = 0;
integer read_counter = 0;
integer write_counter = 0;

reg [11:0] angle_in;
real ellipse_angle;
real angle_lut[0:7];

wire [11:0] sin_out, cos_out;
wire cordic_valid_out;
real mul_x = 0, mul_y = 0;
cordic_pipe_rtl cordic ( clock, reset, ce, angle_in, sin_out, cos_out, cordic_valid_out );

real x_reg[0:7], y_reg[0:7];

reg [W-2:0] temp;
initial
begin
  angle_lut[0] = 0.1;
  angle_lut[1] = 0.3;
  angle_lut[2] = 0.5;
  angle_lut[3] = 0.7;
  angle_lut[4] = 0.9;
  angle_lut[5] = 1.1;
  angle_lut[6] = 1.3;
  angle_lut[7] = 1.5;
end

always@(posedge clock)
begin
 if(reset == 1'b1)
 begin
 counter <= 0;
 read_counter <= 0;
 x <= 0;
 y <= 0;
 end
 else
 begin
 if (counter < 8)
 begin
  angle_in <= angle_lut[counter] * 1024; //Value in fixed-point (12:10)
  counter = counter + 1;
 end
 end
end

always@(posedge clock)
begin
if(cordic_valid_out == 1'b1)
begin
mul_x <= cos_out * a * 1024;
mul_y <= sin_out * b * 1024;


if(read_counter > 0 && read_counter < 9)
begin
x_reg[read_counter - 1] <= mul_x / 1024;
y_reg[read_counter - 1] <= mul_y / 1024;
end

read_counter = read_counter + 1;

end
end

always@(posedge clock)
begin
if(read_counter >= 8)
begin
    if(write_counter >= 0 && write_counter < 8)
    begin
        x[W-1] = 0;
        x[W-2:0] = x_reg[write_counter % 8];
        y[W-1] = 0;
        y[W-2:0] = y_reg[write_counter % 8];
        angle = angle_lut[write_counter % 8] * 1024;
        $display("First quart. A %f, X %f, Y %f", angle_lut[write_counter % 8], x_reg[write_counter % 8] / 1024.0, y_reg[write_counter % 8] / 1024.0);
    end
    else if(write_counter > 7 && write_counter < 16)
    begin
        x[W-1] = 1;
        x[W-2:0] = -x_reg[7-write_counter % 8];
        y[W-1] = 0;
        y[W-2:0] = y_reg[7-write_counter % 8];
        angle = (3.1428-angle_lut[7-write_counter % 8]) * 1024;
        $display("Sec quart. A %f, X %f, Y %f", 3.1428 - angle_lut[7 - write_counter % 8], -x_reg[7 - write_counter % 8] / 1024.0, y_reg[7 - write_counter % 8] / 1024.0);    
    end
    else if(write_counter > 15 && write_counter < 24)
    begin
        x[W-1] = 1;
        x[W-2:0] = -x_reg[write_counter % 8];
        y[W-1] = 1;
        y[W-2:0] = -y_reg[write_counter % 8];
        angle = (1.5*3.1428-angle_lut[7-write_counter % 8]) * 1024;
        $display("Thrd quart. A %f, X %f, Y %f", 1.5 * 3.1428 - angle_lut[7-write_counter % 8], -x_reg[write_counter % 8] / 1024.0, -y_reg[write_counter % 8] / 1024.0);
    end
    else if(write_counter > 23 && write_counter < 32)
    begin
        x[W-1] = 0;
        x[W-2:0] = x_reg[7-write_counter % 8];
        y[W-1] = 1;
        y[W-2:0] = -y_reg[7-write_counter % 8];
        angle = (6.2856-angle_lut[7-write_counter % 8]) * 1024;
        $display("Fourth quart. A %f, X %f, Y %f", 6.2856 - angle_lut[7-write_counter % 8], x_reg[7-write_counter % 8] / 1024.0, -y_reg[7-write_counter % 8] / 1024.0);
    end
    write_counter = write_counter + 1;
end
end

assign valid_out = (cordic_valid_out == 1'b1)? 1'b1 : 1'b0;

endmodule
