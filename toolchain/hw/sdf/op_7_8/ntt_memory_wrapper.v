// /////////////////////////////////////////////////
// Description: Parametric shift register
// Author     : Florian Hirner, TU Graz
////////////////////////////////////////////////////

`timescale 1ns / 1ps

module ntt_memory_wrapper
(
    clk,
    rst,
    start,
    intt,
    btf_gs,
    read_address,
    write_address,
    wea,
    data64_in,
    q,
    finish,
    data64_out
);

`include "parameters.vh"

input                              clk;
input                              rst;
input                              start;
input                              intt;
input                              btf_gs;
output [((LOGN<9) ? 9 : LOGN-1):0] read_address;
output [((LOGN<9) ? 9 : LOGN-1):0] write_address;
output                             wea;
input  [LOGQ-1:0]                  data64_in;
input  [LOGQ-1:0]                  q;
output                             finish;
output [LOGQ-1:0]                  data64_out;

// -------------------------------------------------------------------------------------------------

reg [((LOGN<9) ? 9 : LOGN):0] read_address_reg;
reg [((LOGN<9) ? 9 : LOGN):0] write_address_reg;

// -------------------------------------------------------------------------------------------------

// NTT SDF Unit

reg             ntt_start;
wire [LOGQ-1:0] ntt_in;
wire            ntt_finish;
wire [LOGQ-1:0] ntt_out;

assign ntt_in = data64_in;

// (* keep_hierarchy = "yes" *) 
ntt_sdf_wrapper #(
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
) DUT_NTT (
    clk,
    rst,
    ntt_start,
    intt,
    ntt_in,
    q,
    ntt_finish,
    ntt_out
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
        if (delay_start && read_address_reg != (2**LOGN)) begin
            read_address_reg <= read_address_reg + 1;
        end
    end
end

always @(posedge clk) begin
    if (rst) begin
        write_address_reg <= 0;
    end
    else begin
        if (ntt_finish && write_address_reg != (2**LOGN)) begin
            write_address_reg <= write_address_reg + 1;
        end
    end
end

// -------------------------------------------------------------------------------------------------

wire [LOGN-1:0] write_address_bitreverse;
(* keep_hierarchy = "yes" *) bitreverse #(LOGN) BITREVERSE (write_address_reg, write_address_bitreverse);

assign read_address = read_address_reg;
assign write_address = (intt) ? {{LOGN{1'b0}}, write_address_bitreverse}
                              : (write_address_bitreverse) ? (1 << LOGN) - {{LOGN{1'b0}}, write_address_bitreverse} : 0;
assign wea = (ntt_finish && write_address_reg != (2**LOGN));

assign finish = (write_address_reg == (2**LOGN));
assign data64_out = ntt_out;

endmodule