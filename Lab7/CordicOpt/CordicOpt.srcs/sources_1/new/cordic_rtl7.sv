module cordic_rtl7( clock, reset, 
  in_valid, in_ready, in_angle, 
  out_valid, out_ready, out_sin, out_cos);
parameter integer W = 12; //Fixed-point representation precision fixpoint(12 | 10)
parameter int i_max= 14; // number of CORDIC iterations, must be <= 14!!!
parameter int guard_bits= 8; // number of guard bits (additional bitwidth of the internal arithmetic
input clock, reset; // synthronous reset
// input interface (similar to AXI Stream!!! 
input in_valid; 
output in_ready; // 
input [W-1:0] in_angle;
// output interface
output reg out_valid; //result is ready
input out_ready; 
output reg [W-1:0] out_sin, out_cos;


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
reg S1_valid, S3_valid, S4_valid, S4_ready; // valid data in state S3, S4
//Algorithm Variables
reg signed [W-1 : 0] S1_angle; // input angle
reg signed [W1-1 : 0] S3_angle, S3_sin, S3_cos, S3_sin_frac, S3_cos_frac, S4_angle, S4_sin, S4_cos;
reg signed [W1-1 : 0] S3_atan;
reg [3:0] S3_i, S4_i; //Iterators
reg S3_i_last, S4_i_last; // the last iteration

// S1 FSM
//in_ready
assign in_ready= ~S1_valid | ~S4_valid;
assign S1toS3= S1_valid & ( ~S4_valid | (S4_i_last & (~out_valid | ~S3_valid)) ); // transfer data form S1 to S3
always_ff @ (posedge clock) begin
if(reset==1) S1_valid<= 0;
else if (in_ready==1 && in_valid==1) begin
  S1_valid<= 1;
  S1_angle<= in_angle;
  end
else if (S1toS3 == 1)
  S1_valid<= 0;
end

// S3 FSM
assign S3toS4= S3_valid & (~S4_valid | ~S4_i_last | ~out_valid); // transfer data form S3 to S4
assign S4toS3= S4_valid & ~S4_i_last; 
always_ff @ (posedge clock) begin
S3_atan <= atan[S4_i];
if(S4_i == i_max-1) S3_i_last<= 1; else S3_i_last<= 0;
if(reset==1) S3_valid<= 0;
else if (S4toS3 == 1) begin // transfer data from S4 to S3
  S3_valid<= 1;
  S3_i<= S4_i;
  S3_sin_frac <= S4_sin >>> S4_i;
  S3_cos_frac <= S4_cos >>> S4_i;
  S3_sin<= S4_sin;
  S3_cos<= S4_cos;
  S3_angle<= S4_angle; 
  end
else if (S1toS3 == 1) begin // can accept input angle from S1
    S3_valid<= 1;
    S3_angle[W1-1 : guard_bits] <= -S1_angle;
    if(guard_bits > 0) S3_angle[guard_bits-1 : 0]<= 0;
    S3_cos <= Kn[i_max]; // initial value
    S3_cos_frac <= Kn[i_max]; //S3_cos >>>0;
    S3_sin <= 0;
    S3_sin_frac <= 0; // S3_sin >>>0
    S3_i <= 0;
    end 
 else if (S3toS4 == 1) // can transfer out but not in
    S3_valid<= 0;
end   
    
// S4 FSM
assign S4toS12= S4_valid & S4_i_last & (out_valid | out_ready); 
always_ff @ (posedge clock)
begin
if(reset==1) begin 
  S4_valid<= 0; S4_i<= 0;
  end
else if (S3toS4 == 1) begin // transfer data from S3 to S4 - standard computing
  S4_valid<= 1;
  if (S3_i_last==0) S4_i <= S3_i + 1; else S4_i <= 0;
  S4_i_last<= S3_i_last;
  if(S3_angle < 0) begin // old state S6
    S4_angle <= S3_angle + S3_atan;
    S4_cos <= S3_cos - S3_sin_frac;
    S4_sin <= S3_sin + S3_cos_frac;
    end
  else begin // old state S7
    S4_angle <= S3_angle - S3_atan;
    S4_cos <= S3_cos + S3_sin_frac;
    S4_sin <= S3_sin - S3_cos_frac;
    end
  end
else if (S4_i_last==0 || S4toS12 == 1) // transfer data from S4 to S3 (S3 is always ready for S4) or S12
  S4_valid<= 0;
end

// S12
always_ff @ (posedge clock)
begin
  if(reset==1) out_valid<= 0;
  else if (S4toS12 == 1) begin // new data in
    out_valid<= 1;
    out_sin <= S4_sin[W1-1 : guard_bits] + S4_sin[guard_bits-1]; // rounding
    out_cos <= S4_cos[W1-1 : guard_bits] + S4_cos[guard_bits-1];
   end
  else if (out_valid==1 && out_ready==1) // transfer data out
    out_valid<= 0;
 end 

endmodule
