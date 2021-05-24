`timescale 100ns / 1ps
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
    inv_sqr_root = 1.0 / $sqrt(x);
endfunction

reg clock, reset, start=1'b1;
reg [24:0] val_in= 52428;
wire ready_out;
reg ready_out_q;
wire signed [24:0] val_out;
int N= 0; // number of test iterations 
real real_x, real_out, real_out_correct, error_out_LSB;
real error_max_LSB= 0.0,  abs; // maximum error of sine and cosine
real sum_error2_out_LSB= 0.0; // sum of square errors for sin and cos (in LSB)
real sum_error_out_LSB= 0.0; // sum of errrors
real MSE_out_LSB; // Mean Square Error: MSE= SUM(error^2) / N (N- number of sum elements)
real ME_out_LSB; // Mean Error for sin and cos
const real FIX_1 = 1 / 2**19; // fix point representation of the LSBit.

NRInvSqrRootSM UnitUnderTest( clock, reset, start, val_in, ready_out, val_out);

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
    N += 1;
    real_x= $bitstoreal(val_in) / 2**19;
    real_out= $bitstoreal(val_out) / 2**19;
    // compare results with the real value and calculate the error and maximum error
    real_out_correct= inv_sqr_root(real_x);
    error_out_LSB= (real_out_correct - real_out) / 2**19;
    sum_error2_out_LSB+= error_out_LSB * error_out_LSB;
    sum_error_out_LSB+= error_out_LSB;
    MSE_out_LSB = sum_error2_out_LSB / N;
    ME_out_LSB= sum_error_out_LSB / N;
    abs= error_out_LSB;
    if (abs < 0) abs= -abs;
    if ( abs > error_max_LSB) error_max_LSB= abs;
    
    val_in<= val_in + 52428;
    if (val_in <= 3670016 )
      start <= 1;
    else
      $stop;
    end
  else if ($realtime > 1000ns)
    start<= 0;
end

endmodule
