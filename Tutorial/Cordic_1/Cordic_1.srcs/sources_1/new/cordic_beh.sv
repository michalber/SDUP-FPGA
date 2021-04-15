`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2021 11:29:41
// Design Name: 
// Module Name: cordic_beh
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

//////////////////////////////////////////////////////////////////////////////////
// CORDIC ALGO FLOAT PRESISION
//////////////////////////////////////////////////////////////////////////////////

//module cordic_beh();
///*
//* Cordic algorithm behavioral module
//*/
//real t_angle = 1.0; //Input angle param.

////Table of arctan (1/2^i)
//real arctan[0:10] = {0.785398163, 0.463647609, 0.244978663, 0.124354995, 0.06241881,
//                     0.031239833, 0.015623729, 0.007812341, 0.00390623, 0.001953123,
//                     0.000976562};
                     
//real arctan20[0:20] = {0.785398163, 0.463647609, 0.244978663, 0.124354995, 0.06241881,
//                     0.031239833, 0.015623729, 0.007812341, 0.00390623, 0.001953123,
//                     0.000976562, 0.000488281, 0.00024414, 0.000122070, 0.000061035,
//                     0.000030517, 0.000001525, 0.000000762,0.000000381, 0.000000190,
//                     0.000000095};
                     
                     
//// C++ program to calculate Kn
////    double ret = std::cos(std::atan(1/(pow(2, 0))));
    
////    for(int i = 1; i < 19; i++)
////    {
////        ret *= std::cos(std::atan(1/(pow(2, i))));
////    }
    
////    std::cout.precision(17);
////    std::cout  << ret;
    
//real Kn = 0.607253; // Cordic scaling factor for 10 iterations
//real Kn20 = 0.607252935; // Cordic scaling factor for 20 iterations

//integer i, j;

//initial
//begin
//    for(j = 1; j < 21; j = j + 1)
//    begin
//        // Vars
//        automatic real cos = 1.0;     // Initial vector x coordinate
//        automatic real sin = 0.0;     // Y coordinate
//        automatic real angle = 0.0;   // Running angle
//        real tmp;
//        for (i = 0; i < j; i = i + 1)
//        begin
//            if( t_angle > angle)
//            begin
//                angle = angle + arctan20[i];
//                tmp = cos - (sin / 2**i);
//                sin = (cos / 2**i) + sin;
//                cos = tmp;
//            end
//            else
//            begin
//                angle = angle - arctan20[i];
//                tmp = cos + (sin / 2**i);
//                sin = -(cos / 2**i) + sin;
//                cos = tmp;
//            end
//        end
//        sin = Kn20 * sin;
//        cos = Kn20 * cos;
//        $display("Iter=%d, sin=%f, cos=%f", j, sin, cos);
//    end
//end

//endmodule
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// CORDIC ALGO FIXED PRECISION
//////////////////////////////////////////////////////////////////////////////////
//module fixedpoint_cordic_beh();
///*
//* Cordic algorithm behavioral module
//*/
//parameter integer FXP_SCALE = 1024;

////Table of arctan (1/2^i)

//reg signed [11:0] arctan[0:10] = {0.785398163 * FXP_SCALE, 0.463647609 * FXP_SCALE, 0.244978663 * FXP_SCALE,
//                                0.124354995 * FXP_SCALE, 0.06241881 * FXP_SCALE, 0.031239833 * FXP_SCALE,
//                                0.015623729 * FXP_SCALE, 0.007812341 * FXP_SCALE, 0.00390623 * FXP_SCALE,
//                                0.001953123 * FXP_SCALE, 0.000976562 * FXP_SCALE};
                                
//reg signed [11:0] Kn = 0.607253 * FXP_SCALE;

//reg signed [11:0] t_angle = 1.0 * FXP_SCALE; //Input angle
////reg signed [11:0] t_angle = 0.8 * FXP_SCALE; //Input angle

                     
//integer i, j;

//initial
//begin
//    for(j = 1; j < 11; j = j + 1)
//    begin
//        // Vars
//        automatic reg signed [11:0] cos = 1.0 * FXP_SCALE; //Initial condition
//        automatic reg signed [11:0] sin = 0;
        
//        automatic reg signed [23:0] cos_m = 1.0 * FXP_SCALE; //Initial condition
//        automatic reg signed [23:0] sin_m = 0;
        
//        automatic reg signed [11:0] angle = 0; //Running angle
//        automatic reg signed [11:0] tmp = 0;
        
//        automatic real s = 0.0;
//        automatic real c = 0.0;
        
//        for (i = 0; i < j; i = i + 1)
//        begin
//            if( t_angle > angle)
//            begin
//                angle = angle + arctan[i];
//                tmp = cos - (sin >>> i);
//                sin = (cos >>> i) + sin;
//                cos = tmp;
//            end
//            else
//            begin
//                angle = angle - arctan[i];
//                tmp = cos + (sin >>> i);
//                sin = -(cos >>> i) + sin;
//                cos = tmp;
//            end
//        end
//        sin_m = Kn * sin;
//        cos_m = Kn * cos;
        
//        sin = sin_m >>> 10;
//        cos = cos_m >>> 10;
        
//        s = $itor(sin) / FXP_SCALE;
//        c = $itor(cos) / FXP_SCALE;
//        $display("Iter=%d, sin=%f, cos=%f", j, s, c);
//    end
//end

//endmodule
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// CORDIC FIXED POINT FSMD
//////////////////////////////////////////////////////////////////////////////////
module cordic_rtl( clock, reset, start, angle_in, ready_out, sin_out, cos_out);
parameter integer W = 12; //Fixed-point representation precision fixpoint(2:10)
parameter FXP_MUL = 1024;
parameter FXP_SHIFT = 10;

input clock, reset;
input start; //start processing
input [W-1:0] angle_in;

output reg ready_out = 0; //result is ready
output reg [W-1:0] sin_out, cos_out;

//Cordic look-up table
reg signed [W-1:0] atan[0:10] = { 12'b001100100100, 12'b000111011011, 12'b000011111011,
                                    12'b000001111111, 12'b000001000000, 12'b000000100000,
                                    12'b000000010000, 12'b000000001000, 12'b000000000100,
                                    12'b000000000010, 12'b000000000001 };
//FSMD states
parameter S1 = 4'h01, S2 = 4'h02, S3 = 4'h03, S4 = 4'h04, S5 = 4'h05,
                S6 = 4'h06, S7 = 4'h07, S8 = 4'h08, S9 = 4'h09, S10 = 4'h0a,
                S11 = 4'h0b, S12 = 4'h0c, S13 = 4'h0d;
reg [3:0] state;
//Algorithm Variables
reg signed [W-1:0] angle, t_angle, sin, cos, sin_frac, cos_frac;
reg signed [W-1:0] atan_val;
reg signed [2*W-1:0] sin_0, cos_0, sin_2, cos_2, sin_4, cos_4,
                    sin_5, cos_5, sin_7, cos_7, sin_9, cos_9;
//Iterators
reg [3:0] i, d;
always @ (posedge clock)
begin
    if(reset==1'b1)
    begin
        ready_out <= 1'b0;
        state <= S1;
        sin_out <= 12'bz;
        cos_out <= 12'bz;
        t_angle <= 0;
    end
    else
    begin
        case(state)
            S1: begin
                if(start == 1'b1) state <= S2; else state <= S1;
            end
            S2: begin
                t_angle <= angle_in;
                cos <= 1 * FXP_MUL;
                sin <= 0;
                angle <= 0;
                i <= 0;
                ready_out <= 0;
                state <= S3;
                sin_out <= 12'bz;
                cos_out <= 12'bz;
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
                d <= d + 1;
                state <= S4;
            end
            S6:begin
                angle <= angle + atan_val;
                cos <= cos - sin_frac;
                sin <= cos_frac + sin;
                i = i + 1;
                if(i < 10) state <= S3; else state <= S8;
            end
            S7:begin
                angle <= angle - atan_val;
                cos <= cos + sin_frac;
                sin <= sin - cos_frac;
                i <= i + 1;
                if(i < 10) state <= S3; else state <= S8;
            end
            S8: begin
                sin_0 <= sin;
                cos_0 <= cos;
                sin_2 <= sin << 2;
                cos_2 <= cos << 2;
                sin_4 <= sin << 4;
                cos_4 <= cos << 4;
                sin_5 <= sin << 5;
                cos_5 <= cos << 5;
                sin_7 <= sin << 7;
                cos_7 <= cos << 7;
                sin_9 <= sin << 9;
                cos_9 <= cos << 9;
                state <= S9;
            end
            S9: begin
                sin_0 <= sin_0 - sin_2;
                cos_0 <= cos_0 - cos_2;
                sin_4 <= sin_4 - sin_5;
                cos_4 <= cos_4 - cos_5;
                state <= S10;
            end
            S10: begin
                sin_0 <= sin_0 + sin_4;
                cos_0 <= cos_0 + cos_4;
                sin_7 <= sin_7 + sin_9;
                cos_7 <= cos_7 + cos_9;
                state <= S11;
            end
            S11: begin
                sin_0 <= sin_0 + sin_7;
                cos_0 <= cos_0 + cos_7;
                state <= S12;
            end
            S12: begin
                sin_out <= sin_0 >>> FXP_SHIFT;
                cos_out <= cos_0 >>> FXP_SHIFT;
                ready_out = 1;
                state <= S13;
            end
            S13: begin
                if(start == 1'b0) state <= S1; else state <= S13;
            end
        endcase
    end
end
endmodule