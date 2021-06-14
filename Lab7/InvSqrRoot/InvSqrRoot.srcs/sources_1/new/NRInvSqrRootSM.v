`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2021 15:27:09
// Design Name: 
// Module Name: NRInvSqrRootSM
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

module NRInvSqrRootSM( clock, reset, start, val_in, ready_out, val_out);

parameter FRAC_BITS = 10;
parameter TOTAL_BITS = 13;
parameter TOTAL_ITERATIONS = 6;
    
input clock, reset;
input start; //start processing
input [TOTAL_BITS-1:0] val_in;
output reg ready_out; //result is ready
output reg [TOTAL_BITS-1:0] val_out;

wire signed [TOTAL_BITS-1:0] three = (3<<FRAC_BITS);  //Num 3 FP representation
wire signed [TOTAL_BITS-1:0] y0 = (1<<(FRAC_BITS-1)) + (1<<(FRAC_BITS-2)); //First approx - 0.75

//State machine
parameter S1 = 4'h01, S2 = 4'h02, S3 = 4'h03, S4 = 4'h04, S5 = 4'h05, 
          S6 = 4'h06, S7 = 4'h07, S8 = 4'h08, S9 = 4'h09, S10 = 4'hA0,
          S11 = 4'hA1, S12 = 4'hA2, S13 = 4'hA3
          ;
reg [3:0] state;
reg [4:0] iteration_counter;

logic [2*TOTAL_BITS-1:0] NewApproxVal;
logic [TOTAL_BITS-1:0] PrevApproxVal;
logic [2*TOTAL_BITS-1:0] r_result12;
logic [2*TOTAL_BITS-1:0] r_result13;
logic [TOTAL_BITS-1:0] inter11;
logic [TOTAL_BITS-1:0] inter12;
logic [TOTAL_BITS-1:0] inter13;
logic [TOTAL_BITS-1:0] temp1;

always @ (posedge clock)
begin
    if(reset==1'b1)
    begin
        ready_out <= 1'b0;
        iteration_counter <= TOTAL_ITERATIONS;
        NewApproxVal = 0;
        r_result12 = 0;
        r_result13 = 0;
        inter11 = 0;
        inter12 = 0;
        inter13 = 0;
        temp1 = 0;
        state <= S1;
    end
    else
    begin
        case(state)
            S1: begin
                    ready_out = 0;
                    if(start == 1'b1) state <= S2; else state <= S1;
                end
            S2: begin
                    PrevApproxVal = y0;
                    ready_out <= 0;
                    NewApproxVal = 0;
                    r_result12 = 0;
                    r_result13 = 0;
                    inter11 = 0;
                    inter12 = 0;
                    inter13 = 0;
                    temp1 = 0;
                    iteration_counter <= TOTAL_ITERATIONS;
                    state <= S3;
                end
            S3: begin
                    NewApproxVal = PrevApproxVal[TOTAL_BITS-2:0] * PrevApproxVal[TOTAL_BITS-2:0];
                    inter11[TOTAL_BITS-1] = PrevApproxVal[TOTAL_BITS-1] ^ PrevApproxVal[TOTAL_BITS-1];
                    inter11[TOTAL_BITS-2:0] = NewApproxVal[FRAC_BITS + TOTAL_BITS - 2:FRAC_BITS]; // >> ExpN
                    
                    state <= S4;
                end
            S4: begin        
                    r_result12 = inter11[TOTAL_BITS-2:0] * val_in[TOTAL_BITS-2:0];
                    inter12[TOTAL_BITS-1] = 1; // negative
                    inter12[TOTAL_BITS-2:0] = r_result12[FRAC_BITS + TOTAL_BITS - 2:FRAC_BITS];
                    
                    state <= S5;
                    
                end
            S5: begin
                   // Add or divide values
                   if(inter12[TOTAL_BITS-1] == three[TOTAL_BITS-1])
                   begin
                        inter13[TOTAL_BITS-2:0] = inter12[TOTAL_BITS-2:0] + three[TOTAL_BITS-2:0];
                   end
                   else if(inter12[TOTAL_BITS-2:0] > three[TOTAL_BITS-2:0])
                   begin
                        inter13[TOTAL_BITS-2:0] = inter12[TOTAL_BITS-2:0]-three[TOTAL_BITS-2:0];
                   end
                   else
                   begin
                        inter13[TOTAL_BITS-2:0] = three[TOTAL_BITS-2:0] - inter12[TOTAL_BITS-2:0];
                   end
                  
                    state <= S6;
                end
            S6:begin
                   // Change equation sign
                   if(inter12[TOTAL_BITS-1] == three[TOTAL_BITS-1])
                   begin
                        inter13[TOTAL_BITS-1] = inter12[TOTAL_BITS-1];
                   end
                   else if(inter12[TOTAL_BITS-1] == 0 && three[TOTAL_BITS-1] == 1)
                   begin
                        if(inter12[TOTAL_BITS-2:0] > three[TOTAL_BITS-2:0])
                        begin
                            inter13[TOTAL_BITS-1] = 0;
                        end
                        else if(inter13[TOTAL_BITS-2:0] == 0)
                        begin
                            inter13[TOTAL_BITS-1] = 0;
                        end
                        else
                        begin
                            inter13[TOTAL_BITS-1] = 1;
                        end
                   end
                   else if(inter12[TOTAL_BITS-2:0] > three[TOTAL_BITS-2:0])
                   begin
                        if(inter13[TOTAL_BITS-2:0] == 0)
                        begin
                            inter13[TOTAL_BITS-1] = 0;
                        end
                        else
                        begin
                            inter13[TOTAL_BITS-1] = 1;
                        end
                   end
                   else
                   begin
                    inter13[TOTAL_BITS-1] = 0;
                   end
                   state <= S7;
            end
            S7:begin
                    // Divide by 2
                    temp1 = inter13 >> 1;
                    
                    state <= S8;
            end
            S8:begin
                // Multiply by previous approximation
                    r_result13 = temp1[TOTAL_BITS-2:0] * PrevApproxVal[TOTAL_BITS-2:0];
                    PrevApproxVal[TOTAL_BITS-1] = temp1[TOTAL_BITS-1] ^ PrevApproxVal[TOTAL_BITS-1];
                    PrevApproxVal[TOTAL_BITS-2:0] = r_result13[FRAC_BITS + TOTAL_BITS - 2:FRAC_BITS];
                    iteration_counter <= iteration_counter - 1;
                    
                    if(iteration_counter > 0) state <= S3; else state <= S9;
                end
            S9:begin
                    val_out = PrevApproxVal;
                    ready_out = 1;
                    state <= S1;
                end
        endcase
    end
end

endmodule
