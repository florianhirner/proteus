`timescale 1ns / 1ps

module btf_dit_ct 
#(
    parameter LOGQ       = 64,
    parameter IS_Q_FIXED = 0,
    parameter Q          = 64'd18446744069414584321,
    parameter DELAY_ADD  = 2,  // 1 or 2
    parameter DELAY_SUB  = 2,  // 1 or 2
    parameter DELAY_MUL  = 2, 
    parameter DELAY_RED  = 3,
    parameter DELAY_BRAM = 1, // 1 or 2
    parameter DELAY_BROM = 1, // 1 or 2
    parameter DELAY_FIFO = 1, // 1 or 2
    parameter BTF_GS     = 0,
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

intmul #(
    LOGQ,
    IS_Q_FIXED,
    Q,
    DELAY_ADD,
    DELAY_SUB,
    DELAY_MUL, 
    DELAY_RED,
    DELAY_BRAM,
    DELAY_BROM,
    DELAY_FIFO
) INTMUL (
    clk,
    rst,
    btf_in_b,
    btf_in_w,
    q,
    mul_bw
);

modred_64 MODRED_64 (
    clk,
    mul_bw,
    mod_bw
);

assign BW = mod_bw;

// butterfly operation   

wire [LOGQ-1:0] MOD_ADD_OUT;
wire [LOGQ-1:0] MOD_SUB_OUT;

modadd #(
    LOGQ,
    IS_Q_FIXED,
    Q,
    DELAY_ADD
) MOD_ADD (
    clk,
    SA,
    BW,
    q,
    MOD_ADD_OUT
);


modsub #(
    LOGQ,
    IS_Q_FIXED,
    Q,
    DELAY_SUB
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