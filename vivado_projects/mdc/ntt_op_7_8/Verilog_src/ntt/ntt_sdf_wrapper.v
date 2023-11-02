`timescale 1ns / 1ps

module ntt_mdc_wrapper
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
    input               clk,
    input               rst,
    input               start,
    input               intt,
    input  [LOGQ-1:0]   ntt_in_0,
    input  [LOGQ-1:0]   ntt_in_1,
    input  [LOGQ-1:0]   q,
    output              finish,
    output [LOGQ-1:0]   ntt_out_0,
    output [LOGQ-1:0]   ntt_out_1
);

wire            stage_start   [0:LOGN-1];
wire [LOGQ-1:0] stage_din_0   [0:LOGN-1];
wire [LOGQ-1:0] stage_din_1   [0:LOGN-1];

wire            stage_finish  [0:LOGN-1];
wire [LOGQ-1:0] stage_dout_0  [0:LOGN-1];
wire [LOGQ-1:0] stage_dout_1  [0:LOGN-1];

wire [LOGN-1:0] stage_tw_addr [0:LOGN-1];
wire [LOGQ-1:0] stage_tw_data [0:LOGN-1];

// stage composition

generate
    for(genvar g=0; g<LOGN; g=g+1) begin
        if (g==0) begin
            assign stage_start[g] = start;
            assign stage_din_0[g]   = ntt_in_0;
            assign stage_din_1[g]   = ntt_in_1;
        end
        else begin
            assign stage_start[g] = stage_finish[g-1];
            assign stage_din_0[g]   = stage_dout_0[g-1];
            assign stage_din_1[g]   = stage_dout_1[g-1];
        end
    end
endgenerate

generate
    for(genvar STAGE=0; STAGE<LOGN; STAGE=STAGE+1) begin
        // (* keep_hierarchy = "yes" *) 
        tw_roms_wrapper #(
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
            .BTF_GS(BTF_GS),
            // specific
            .STAGE(STAGE)
        ) TW_ROM (
            clk,
            intt,
            q,
            // stage_tw_addr[STAGE],
            (BTF_GS) ? ( (intt) ? stage_tw_addr[LOGN-STAGE-1] : stage_tw_addr[STAGE] )
                     : stage_tw_addr[STAGE],
            stage_tw_data[STAGE]
        );
    end
endgenerate

generate
    for(genvar STAGE=0; STAGE<LOGN; STAGE=STAGE+1) begin
        (* keep_hierarchy = "yes" *) 
        ntt_mdc_stage #(
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
            .BTF_GS(BTF_GS),
            // specific
            .STAGE(STAGE)
        ) NTT_MDC_STAGE (
            clk,
            rst,
            stage_start[STAGE],
            intt,
            stage_din_0[STAGE],
            stage_din_1[STAGE],
            q,
            stage_finish[STAGE],
            stage_dout_0[STAGE],
            stage_dout_1[STAGE],
            stage_tw_addr[STAGE],
            // stage_tw_data[STAGE]
            (BTF_GS) ? ( (intt) ? stage_tw_data[LOGN-STAGE-1] : stage_tw_data[STAGE] )
                     : stage_tw_data[STAGE]
        );
    end
endgenerate

// output 
assign finish    = stage_finish[LOGN-1];
assign ntt_out_0 = stage_dout_0[LOGN-1];
assign ntt_out_1 = stage_dout_1[LOGN-1];

endmodule