module cordic_rtl3( clock, reset, start, angle_in, ready_out, sin_out, cos_out);
parameter integer W = 12; //Fixed-point representation precision fixpoint(12 | 10)
parameter int i_max= 14; // number of CORDIC iterations, must be <= 14 !!!
parameter int guard_bits= 4; // number of guard bits (additional bitwidth of the internal arithmetic
input clock, reset;
input start; //start processing
input [W-1:0] angle_in;
output reg ready_out; //result is ready
output reg [W-1:0] sin_out, cos_out;


localparam integer W1= W + guard_bits; // internal arithmetic bitwidth

localparam real real_FIX1= 2 ** (W1 - 2); // FIX value for 1.0;
//Cordic angle look-up table
reg signed [W1-1 : 0] atan [0: 16]= { 0.785398163397448 * real_FIX1, 0.463647609000806 * real_FIX1,
  0.244978663126864 * real_FIX1, 0.124354994546761 * real_FIX1,
  0.062418809995957 * real_FIX1, 0.031239833430268 * real_FIX1,
  0.015623728620477 * real_FIX1, 0.007812341060101 * real_FIX1,
  0.003906230131967 * real_FIX1, 0.001953122516479 * real_FIX1,
  0.000976562189559 * real_FIX1, 0.000488281211195 * real_FIX1,
  0.000244140620149 * real_FIX1, 0.000122070311894 * real_FIX1,
  6.10351561742088E-05 * real_FIX1, 3.05175781155261E-05  * real_FIX1,
  1.52587890613158E-05  * real_FIX1 };
// Kn (aggregated cos) for different number of iteration i_max
reg signed [W1-1 : 0] Kn [2: 17]= { 0.632455532033676 * real_FIX1, 0.613571991077896  * real_FIX1,
  0.608833912517752 * real_FIX1, 0.607648256256168 * real_FIX1,
  0.607351770141296 * real_FIX1, 0.607277644093526 * real_FIX1,
  0.607259112298893 * real_FIX1, 0.607254479332562 * real_FIX1,
  0.607253321089875 * real_FIX1, 0.607253031529134 * real_FIX1,
  0.607252959138945 * real_FIX1, 0.607252941041397 * real_FIX1,
  0.60725293651701 * real_FIX1, 0.607252935385914 * real_FIX1,
  0.607252935103139 * real_FIX1, 0.607252935032446 * real_FIX1};

//FSMD states
enum { S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13 } state;
//Algorithm Variables
reg signed [W1-1 : 0] angle, t_angle=0, sin, cos, sin_frac, cos_frac;
reg signed [W1-1 : 0] atan_val;
//Iterators
reg [3:0] i, d;
always_ff @ (posedge clock)
begin
if(reset==1'b1)
begin
ready_out <= 1'b0;
state <= S1;
end
else
begin
case(state)
S1: begin
    if(start == 1'b1) state <= S2; else state <= S1;
  end
S2: begin
  t_angle[W1-1 : guard_bits] <= angle_in;
  cos <= Kn[i_max]; // initial value 
  sin <= 0;
  angle <= 0;
  i <= 0;
  ready_out <= 0;
  state <= S3;
  end
S3: begin
  sin_frac <= sin;
  cos_frac <= cos;
  d <= 0;
  atan_val <= atan[i];
  state <= S4;
  end
S4:begin
  if( d < i )
    state <= S5;
  else
    if(angle < t_angle) state <= S6; else state <= S7;
  end
S5:begin
  sin_frac <= sin_frac >>> 1;
  cos_frac <= cos_frac >>> 1;
  d <= d+1;
  state <= S4;
  end
S6:begin
  angle <= angle + atan_val;
  cos <= cos - sin_frac;
  sin <= sin + cos_frac;
  i = i + 1;
  if(i < i_max) state <= S3; else state <= S12;
  end
S7:begin
  angle <= angle - atan_val;
  cos <= cos + sin_frac;
  sin <= sin - cos_frac;
  i <= i + 1;
  if(i < 10) state <= S3; else state <= S12;
end
S12: begin
  sin_out <= sin[W1-1 : guard_bits]; // + sin[guard_bits-1];
  cos_out <= cos[W1-1 : guard_bits]; // + cos[guard_bits-1];
  ready_out <= 1;
  state <= S13;
  end
S13: begin
  if(start == 1'b0) state <= S1; else state <= S13;
  end
endcase
end
end
endmodule
