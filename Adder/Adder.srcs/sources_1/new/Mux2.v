module Mux2
        (   input i0,i1,sel,
            output reg bitout
            );

always@(i0,i1,sel)
begin
if(sel == 0)
    bitout = i0;
else
    bitout = i1; 
end

endmodule

module mux2X1( in0,in1,sel,out);
    parameter W=16; 
    input [W-1:0] in0,in1;
    input sel;
    output [W-1:0] out;
    
    assign out=(sel)?in1:in0;
endmodule