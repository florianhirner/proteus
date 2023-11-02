// /////////////////////////////////////////////////
// Description: Parametric shift register
// Author     : Florian Hirner, TU Graz
////////////////////////////////////////////////////

`timescale 1ns / 1ps

module modmul 
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
    input                 clk,
    input                 rst,
    input  [LOGQ-1:0]     in_a,
    input  [LOGQ-1:0]     in_b,
    input  [LOGQ-1:0]     q,
    output [LOGQ-1:0]     out_c
);

wire [(LOGQ*2)-1:0] MUL_OUT;

intmul #(
    .LOGQ(LOGQ),
    .DELAY_MUL(DELAY_MUL)
) INTMUL (
    clk,
    rst,
    in_a,
    in_b,
    q,
    MUL_OUT
);

generate 
    if (TYPE_RED) begin 
        wlmont #(
            .LOGQ(LOGQ),
            .W(W),
            .L(L),
            .MULLAT(MULLAT),
            .ADDPIP(ADDPIP)
        ) WL_MT (
            clk,
            MUL_OUT,
            q,
            out_c
        );
    end
    else begin
        modred_64 MODRED_64 (
            clk,
            MUL_OUT,
            out_c
        );
    end
endgenerate

endmodule
