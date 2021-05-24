`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2021 11:59:43
// Design Name: 
// Module Name: MSE_InvSqrRoot_TB
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


module MSE_InvSqrRoot_TB();

function real inv_sqr_root (input real x);
  if (x > 0.25) // cos is easier to calculate
     sin= cos( 1.570796327 - x); // sin(x) = cos(90 - x)
  else begin // Taylor
    real x2= x*x; 
    sin= x * (1.0 + x2 * ( -1.0 / 6.0 + x2 * ( 1.0 / 120.0 - x2 / 5040.0) ) ); // Taylor series skiped x^9 / 9!
    end 
endfunction

reg clock, reset, start=1'b1;
reg [11:0] val_in= 0;
wire ready_out;
reg ready_out_q;
wire signed [11:0] sin_out;
int N= 0; // number of test iterations 
real real_angle, real_sin, real_sin_correct, error_sin_LSB;
real error_max_LSB= 0.0,  abs; // maximum error of sine and cosine
real sum_error2_sin_LSB= 0.0; // sum of square errors for sin and cos (in LSB)
real sum_error_sin_LSB= 0.0; // sum of errrors
real MSE_sin_LSB; // Mean Square Error: MSE= SUM(error^2) / N (N- number of sum elements)
real ME_sin_LSB; // Mean Error for sin and cos
const real FIX_1 = 1 / 1024.0; // fix point representation of the LSBit.

NRInvSqrRootSM UnitUnderTest( clock, reset, start, val_in, ready_out, sin_out);

//Clock generator
initial
  clock <= 1'b1;
always
  #5 clock <= ~clock;
//Reset signal
initial
begin
reset <= 1'b1;
#10 reset <= 1'b0;
end
//detect change of ready_out signal
always_ff @ (posedge clock) 
begin
  ready_out_q<= ready_out;
end

always_ff @ (posedge clock) begin
  if (ready_out_q == 0 && ready_out == 1) begin // ready_out is active - rising
    N+= 1;
    real_angle= val_in * FIX_1;
    real_sin= sin_out * FIX_1;
    // compare results with the real value and calculate the error and maximum error
    real_sin_correct= sin(real_angle);
    error_sin_LSB= (real_sin_correct - real_sin) / FIX_1;
    sum_error2_sin_LSB+= error_sin_LSB * error_sin_LSB;
    sum_error_sin_LSB+= error_sin_LSB;
    MSE_sin_LSB= sum_error2_sin_LSB / N;
    ME_sin_LSB= sum_error_sin_LSB / N;
    abs= error_sin_LSB;
    if (abs < 0) abs= -abs;
    if ( abs > error_max_LSB) error_max_LSB= abs;
    
    val_in<= val_in + 1;
    if (val_in <= 1609 ) // angle Pi /2
      start <= 1;
    else
      $stop; // stop simulation as Pi/2 has been reached - every angle was simulated
    end
  else if ($realtime > 100ns)
    start<= 0;
end

endmodule
