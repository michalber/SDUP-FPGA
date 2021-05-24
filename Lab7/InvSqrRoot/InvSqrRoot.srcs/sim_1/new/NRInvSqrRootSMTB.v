`timescale 100ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2021 15:42:04
// Design Name: 
// Module Name: NRInvSqrRootSMTB
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


module NRInvSqrRootSMTB();

reg clock, reset, start;
reg [24:0] val_in;
wire ready_out;
wire [24:0] val_out;

NRInvSqrRootSM inv_sqr( clock, reset, start, val_in, ready_out, val_out);

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
//Stimuli signals
initial
begin
 val_in <= 8*2**19; //Modify value in fixed-point [2:10]
 start <= 1'b0;
 #20 start <= 1'b1;
 #30 start <= 1'b0;
end

//Catch output
always @ (posedge ready_out)
begin
end



endmodule
