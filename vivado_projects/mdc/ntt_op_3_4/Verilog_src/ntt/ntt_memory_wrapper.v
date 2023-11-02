`timescale 1ns / 1ps

module ntt_memory_wrapper
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
    parameter   R_w      = 0,
    parameter DELAY_DIV2 = 0,
    parameter DELAY_BRAM = 0,
    parameter DELAY_BROM = 0,
    parameter DELAY_FIFO = 0,
    parameter BTF_GS     = 0
)(
    input                            clk,
    input                            rst,
    input                            start,
    input                            intt,
    
    output [((LOGN<9) ? 9 : LOGN):0] read_address,
    output [((LOGN<9) ? 9 : LOGN):0] write_address,
    output                           wea,
    
    input  [LOGQ-1:0]                data64_in_0,
    input  [LOGQ-1:0]                data64_in_1,
    input  [LOGQ-1:0]                q,

    output                           finish,
    output [LOGQ-1:0]                data64_out_0,
    output [LOGQ-1:0]                data64_out_1
);

reg [((LOGN<9) ? 9 : LOGN):0] read_address_reg;
reg [((LOGN<9) ? 9 : LOGN):0] write_address_reg;

// -------------------------------------------------------------------------------------------------

// NTT SDF Unit

reg             ntt_start;
wire [LOGQ-1:0] ntt_in_0, ntt_in_1;
wire            ntt_finish;
wire [LOGQ-1:0] ntt_out_0, ntt_out_1;

assign ntt_in_0 = data64_in_0;
assign ntt_in_1 = data64_in_1;

//(* keep_hierarchy = "yes" *) 
ntt_mdc_wrapper #(
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
    .R_w(R_w),
    .DELAY_DIV2(DELAY_DIV2),
    .DELAY_BRAM(DELAY_BRAM),
    .DELAY_BROM(DELAY_BROM),
    .DELAY_FIFO(DELAY_FIFO),
    .BTF_GS(BTF_GS)
) NTT_MDC_WRAPPER (
    clk,
    rst,
    ntt_start,
    intt,
    ntt_in_0,
    ntt_in_1,
    q,
    ntt_finish,
    ntt_out_0,
    ntt_out_1
);

wire delay_start;

shiftreg #(10, 1) DELAY_START (clk, start, delay_start);

always @(posedge clk) begin
    if (rst) begin
        ntt_start <= 0;
    end
    else if (delay_start) begin
        ntt_start <= 1;
    end
end

// -------------------------------------------------------------------------------------------------

always @(posedge clk) begin
    if (rst) begin
        read_address_reg <= 0;
    end
    else begin
        if (delay_start && read_address_reg != 2**(LOGN-1)) begin
            read_address_reg <= read_address_reg + 1;
        end
    end
end

always @(posedge clk) begin
    if (rst) begin
        write_address_reg <= 0;
    end
    else begin
        if (ntt_finish && write_address_reg != 2**(LOGN-1)) begin
            write_address_reg <= write_address_reg + 1;
        end
    end
end

// -------------------------------------------------------------------------------------------------
/*
wire [LOGN-2:0] write_address_bitreverse;
(* keep_hierarchy = "yes" *) bitreverse #(LOGN-1) BITREVERSE (write_address_reg, write_address_bitreverse);

assign read_address = read_address_reg;
assign write_address = {{LOGN{1'b0}}, write_address_bitreverse};
*/

assign read_address = read_address_reg;
assign write_address = {{LOGN{1'b0}}, write_address_reg[LOGN-2:0]};
assign wea = (ntt_finish && write_address_reg != 2**(LOGN-1));

assign finish = (write_address_reg == 2**(LOGN-1));
assign data64_out_0 = ntt_out_0;
assign data64_out_1 = ntt_out_1;

endmodule