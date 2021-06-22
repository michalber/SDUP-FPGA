module ModularCarryAdder(a, b, cin, sum, cout);
    parameter W=256;
    
    input [W-1:0] a,b;
    input cin;
    output [W-1:0] sum;
    output cout;
 
    wire [W/4-1:0] c;
 
    ripple_carry_4_bit rca1(
    .a(a[3:0]),
    .b(b[3:0]),
    .cin(cin),
    .sum(sum[3:0]),
    .cout(c[0]));

    genvar j;
    generate
    for (j=0; j<W/4-1; j=j+1)
    begin: Carry4BitsAdder_loop
         Carry4BitsAdder csa_slice(
        .a(a[7+4*j:4+4*j]),
        .b(b[7+4*j:4+4*j]),
        .cin(c[j]),
        .sum(sum[7+4*j:4+4*j]),
        .cout(c[j+1]));
    end //end of the for loop inside the generate block
    endgenerate //end of the generate block
    
    assign cout = c[W/4-1];
    
endmodule