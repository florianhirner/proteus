// /////////////////////////////////////////////////
// Description: Parametric shift register
// Author     : Florian Hirner, TU Graz
////////////////////////////////////////////////////

`timescale 1ns / 1ps

module btf_unified 
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
    parameter BTF_GS     = 0,
    // specific
    parameter STAGE      = 0
)(
    input               clk,
    input               rst,
    input               intt,
    input               btf_gs,
    input  [LOGQ-1:0]   btf_in_a,
    input  [LOGQ-1:0]   btf_in_b,
    input  [LOGQ-1:0]   btf_in_w,
    input  [LOGQ-1:0]   q,
    output [LOGQ-1:0]   btf_out_a,
    output [LOGQ-1:0]   btf_out_b
);

localparam DELAY_TOTAL = DELAY_ADD + DELAY_MUL + DELAY_RED;

// I/O connections

wire [LOGQ-1:0] MOD_ADD_IN_0, MOD_ADD_IN_1;
wire [LOGQ-1:0] MOD_SUB_IN_0, MOD_SUB_IN_1;

wire [LOGQ-1:0] MOD_ADD_OUT;
wire [LOGQ-1:0] MOD_SUB_OUT;

wire [LOGQ-1:0] BUF_IN;
wire [LOGQ-1:0] BUF_OUT;

wire [LOGQ-1:0] MUL_IN;
wire [(LOGQ*2)-1:0] MUL_OUT;

wire [(LOGQ*2)-1:0] MOD_IN;
wire [LOGQ-1:0] MOD_OUT;

assign MOD_ADD_IN_0 = (btf_gs) ? btf_in_a : BUF_OUT;
assign MOD_ADD_IN_1 = (btf_gs) ? btf_in_b : MOD_OUT;

assign MOD_SUB_IN_0 = (btf_gs) ? btf_in_a : BUF_OUT;
assign MOD_SUB_IN_1 = (btf_gs) ? btf_in_b : MOD_OUT;

assign BUF_IN = (btf_gs) ? MOD_ADD_OUT : btf_in_a;
assign MUL_IN = (btf_gs) ? MOD_SUB_OUT : btf_in_b;
assign MOD_IN = MUL_OUT;

// butterfly operation   

modadd #(
    .LOGQ(LOGQ),      
    .LOGN(LOGN),
    .IS_Q_FIXED(IS_Q_FIXED),
    .Q(Q),
    .DELAY_ADD(DELAY_ADD),   
    .DELAY_SUB(DELAY_SUB),   
    .DELAY_MUL(DELAY_MUL),  
    .DSP_W(DSP_W),
    .DSP_H(DSP_H),
    .DELAY_RED(DELAY_RED),
    .TYPE_RED(TYPE_RED),
    .W(W),
    .L(L),
    .MULLAT(MULLAT),
    .ADDPIP(ADDPIP),
    .DELAY_DIV2(DELAY_DIV2),
    .DELAY_BRAM(DELAY_BRAM),
    .DELAY_BROM(DELAY_BROM),
    .DELAY_FIFO(DELAY_FIFO),
    .BTF_GS(BTF_GS)
) MOD_ADD (
    clk,
    MOD_ADD_IN_0,
    MOD_ADD_IN_1,
    q,
    MOD_ADD_OUT
);

modsub #(
    .LOGQ(LOGQ),      
    .LOGN(LOGN),
    .IS_Q_FIXED(IS_Q_FIXED),
    .Q(Q),
    .DELAY_ADD(DELAY_ADD),   
    .DELAY_SUB(DELAY_SUB),   
    .DELAY_MUL(DELAY_MUL),  
    .DSP_W(DSP_W),
    .DSP_H(DSP_H),
    .DELAY_RED(DELAY_RED),
    .TYPE_RED(TYPE_RED),
    .W(W),
    .L(L),
    .MULLAT(MULLAT),
    .ADDPIP(ADDPIP),
    .DELAY_DIV2(DELAY_DIV2),
    .DELAY_BRAM(DELAY_BRAM),
    .DELAY_BROM(DELAY_BROM),
    .DELAY_FIFO(DELAY_FIFO),
    .BTF_GS(BTF_GS)
) MOD_SUB (
    clk,
    MOD_SUB_IN_0,
    MOD_SUB_IN_1,
    q,
    MOD_SUB_OUT
);

// modulo multiplication

shiftreg #(
    (DELAY_MUL+DELAY_RED),
    LOGQ
) SHIFT_A (
    clk,
    BUF_IN,
    BUF_OUT
);

modmul #(
    .LOGQ(LOGQ),      
    .LOGN(LOGN),
    .IS_Q_FIXED(IS_Q_FIXED),
    .Q(Q),
    .DELAY_ADD(DELAY_ADD),   
    .DELAY_SUB(DELAY_SUB),   
    .DELAY_MUL(DELAY_MUL),  
    .DSP_W(DSP_W),
    .DSP_H(DSP_H),
    .DELAY_RED(DELAY_RED),
    .TYPE_RED(TYPE_RED),
    .W(W),
    .L(L),
    .MULLAT(MULLAT),
    .ADDPIP(ADDPIP),
    .DELAY_DIV2(DELAY_DIV2),
    .DELAY_BRAM(DELAY_BRAM),
    .DELAY_BROM(DELAY_BROM),
    .DELAY_FIFO(DELAY_FIFO),
    .BTF_GS(BTF_GS)
) MODMUL (
    clk,
    rst,
    MUL_IN,
    btf_in_w,
    q,
    MOD_OUT
);

// output

assign btf_out_a = (btf_gs) ? BUF_OUT : MOD_ADD_OUT;
assign btf_out_b = (btf_gs) ? MOD_OUT : MOD_SUB_OUT;

endmodule