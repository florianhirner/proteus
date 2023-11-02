//////////////////////////////////////////////////////////////////////////////////
// Company:  Graz University of Technology
// Engineer: Ahmet Can Mert, Florian Hirner
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module moddiv_by_2
#(
    parameter LOGQ       = 64,
    parameter IS_Q_FIXED = 0,
    parameter Q          = 64'd18446744069414584321,
    parameter DELAY_DIV2 = 1
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

//shiftreg #(DELAY_DIV2, LOGQ) BUFFER_DIV2 (clk, x, y); // for testing only
shiftreg #(DELAY_DIV2, LOGQ) BUFFER_DIV2 (clk, (intt) ? div : x, y);

endmodule