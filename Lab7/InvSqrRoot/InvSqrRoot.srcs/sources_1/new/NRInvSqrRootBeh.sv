`timescale 1ns / 1ps
module NRInvSqrRootBeh(input0, output0);
    
    parameter FRAC_BITS = 19;
    parameter TOTAL_BITS = 25;
    parameter TOTAL_ITERATIONS = 10;
    
	input reg [TOTAL_BITS-1:0] input0;
	output reg [TOTAL_BITS-1:0] output0;

	wire signed [TOTAL_BITS-1:0] three = (3<<FRAC_BITS);  //Num 3 FP representation
	wire signed [TOTAL_BITS-1:0] y0 = (1<<(FRAC_BITS-3)); //First approx

	logic [2*TOTAL_BITS-1:0] NewApproxVal;
	logic [TOTAL_BITS-1:0] PrevApproxVal;
	logic [2*TOTAL_BITS-1:0] r_result12;
	logic [2*TOTAL_BITS-1:0] r_result13;
	logic [TOTAL_BITS-1:0] inter11;
	logic [TOTAL_BITS-1:0] inter12;
	logic [TOTAL_BITS-1:0] inter13;
	logic [TOTAL_BITS-1:0] temp1;
	
    always_comb begin
        PrevApproxVal = y0;
        
        for(int i = 0; i < TOTAL_ITERATIONS; i++) begin
            // Newton-Raphson Equation
            // xn+1 = xn*( (3-xn^2*input)/2 )
            
            NewApproxVal = PrevApproxVal[TOTAL_BITS-2:0] * PrevApproxVal[TOTAL_BITS-2:0];
            inter11[TOTAL_BITS-1] = PrevApproxVal[TOTAL_BITS-1] ^ PrevApproxVal[TOTAL_BITS-1];
            inter11[TOTAL_BITS-2:0] = NewApproxVal[FRAC_BITS + TOTAL_BITS - 2:FRAC_BITS]; // >> ExpN
            
            r_result12 = inter11[TOTAL_BITS-2:0] * input0[TOTAL_BITS-2:0];
            inter12[TOTAL_BITS-1] = 1; // negative
            inter12[TOTAL_BITS-2:0] = r_result12[FRAC_BITS + TOTAL_BITS - 2:FRAC_BITS];
           
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

           
            // Divide by 2
            temp1 = inter13 >> 1;
            
            // Multiply by previous approximation
            r_result13 = temp1[TOTAL_BITS-2:0] * PrevApproxVal[TOTAL_BITS-2:0];
            PrevApproxVal[TOTAL_BITS-1] = temp1[TOTAL_BITS-1] ^ PrevApproxVal[TOTAL_BITS-1];
            PrevApproxVal[TOTAL_BITS-2:0] = r_result13[FRAC_BITS + TOTAL_BITS - 2:FRAC_BITS];
	    end
        output0 = PrevApproxVal;
    end
endmodule