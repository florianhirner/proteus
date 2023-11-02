`timescale 1ns / 1ps

module bitreverse
#(
    parameter LOGN  = 12
)(
    input  [LOGN-1:0] a, 
    output [LOGN-1:0] a_rev
);
    generate
        for (genvar i=0; i<LOGN; i=i+1) begin
            assign a_rev[i] = a[LOGN-i-1];
        end
    endgenerate

endmodule