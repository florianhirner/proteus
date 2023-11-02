//////////////////////////////////////////////////////////////////////////////////
// Company:  Graz University of Technology
// Engineer: Ahmet Can Mert, Florian Hirner
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module moddiv_by_2
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
    input             clk,
    input             intt,
    input  [LOGQ-1:0] x,
    input  [LOGQ-1:0] q,
    output [LOGQ-1:0] y
);

wire [LOGQ-2:0] x0and;
wire [LOGQ-2:0] x_n, q_n;
wire [LOGQ-1:0] div;

assign x_n = {LOGQ-1{x[0]}};
assign q_n = {q[LOGQ-1:2],1'b1};

assign x0and = x_n & q_n;
assign div  = x[LOGQ-1:1] + x0and;

shiftreg #(DELAY_DIV2, LOGQ) BUFFER_DIV2 (clk, (intt) ? div : x, y);
// shiftreg #(DELAY_DIV2, LOGQ) BUFFER_DIV2 (clk, x, y);

endmodule
