`timescale 1ns / 1ps

module btf_dit_ct 
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
    input  [LOGQ-1:0]   btf_in_a,
    input  [LOGQ-1:0]   btf_in_b,
    input  [LOGQ-1:0]   btf_in_w,
    input  [LOGQ-1:0]   q,
    output [LOGQ-1:0]   btf_out_a,
    output [LOGQ-1:0]   btf_out_b
);

localparam DELAY_TOTAL = DELAY_ADD + DELAY_MUL + DELAY_RED;

wire [LOGQ-1:0] SA;
wire [LOGQ-1:0] BW;
wire [(LOGQ*2)-1:0] mul_bw;
wire [LOGQ-1:0] mod_bw;

// modulo multiplication

shiftreg #(
    (DELAY_MUL+DELAY_RED),
    LOGQ
) SHIFT_A (
    clk,
    btf_in_a,
    SA
);

//intmul #(
//    LOGQ,
//    IS_Q_FIXED,
//    Q,
//    DELAY_ADD,
//    DELAY_SUB,
//    DELAY_MUL, 
//    DELAY_RED,
//    DELAY_BRAM,
//    DELAY_BROM,
//    DELAY_FIFO
//) INTMUL (
//    clk,
//    rst,
//    btf_in_b,
//    btf_in_w,
//    q,
//    mul_bw
//);
//
//modred_64 MODRED_64 (
//    clk,
//    mul_bw,
//    mod_bw
//);
//
//assign BW = mod_bw;

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
    btf_in_b,
    btf_in_w,
    q,
    BW
);

// butterfly operation   

wire [LOGQ-1:0] MOD_ADD_OUT;
wire [LOGQ-1:0] MOD_SUB_OUT;

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
    SA,
    BW,
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
    SA,
    BW,
    q,
    MOD_SUB_OUT
);

// output

assign btf_out_a = MOD_ADD_OUT;
assign btf_out_b = MOD_SUB_OUT;

endmodule