// /////////////////////////////////////////////////
// Description: Parametric shift register
// Author     : Ahmet Can Mert, TU Graz
////////////////////////////////////////////////////

`timescale 1ns / 1ps

module modsub
#(
    parameter LOGQ       = 0,
    parameter LOGN       = 0,
    parameter IS_Q_FIXED = 0,
    parameter Q          = 0,
    parameter DELAY_ADD  = 0,
    parameter DELAY_SUB  = 0,
    parameter DELAY_MUL  = 0,
    parameter   DSP_W    = 0,
    parameter   DSP_H    = 0,
    parameter DELAY_RED  = 0,
    parameter   TYPE_RED = 0,
    parameter   W        = 0,
    parameter   L        = 0,
    parameter   MULLAT   = 0,
    parameter   ADDPIP   = 0,
    parameter DELAY_DIV2 = 0,
    parameter DELAY_BRAM = 0,
    parameter DELAY_BROM = 0,
    parameter DELAY_FIFO = 0,
    parameter BTF_GS     = 0
)(
    input                clk,
    input     [LOGQ-1:0] a,b,q,
    output reg[LOGQ-1:0] c
);

wire        [LOGQ-1:0] q_in = (IS_Q_FIXED == 1) ? Q : q;

reg  signed [LOGQ:0] ab;
wire        [LOGQ:0] ab_pq;

generate
    if (DELAY_SUB == 1) begin
        always@(*) begin
            ab = a-b;
        end 
    end
    else begin
        always@(posedge clk) begin
            ab <= a-b;
        end 
    end
endgenerate

assign ab_pq = ab + q_in;

always @(posedge clk) begin
    c <= (ab[LOGQ] == 1) ? ab_pq[LOGQ-1:0] : ab[LOGQ-1:0];
end

endmodule