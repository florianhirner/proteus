`timescale 1ns / 1ps

module ntt_sdf_wrapper
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
    input               btf_gs,
    input  [LOGQ-1:0]   ntt_in,
    input  [LOGQ-1:0]   q,
    output              finish,
    output [LOGQ-1:0]   ntt_out
);

wire            stage_start   [0:LOGN-1];
wire [LOGQ-1:0] stage_din     [0:LOGN-1];

wire            stage_finish  [0:LOGN-1];
wire [LOGQ-1:0] stage_dout    [0:LOGN-1];

wire [LOGN-1:0] stage_tw_addr [0:LOGN-1];
wire [LOGQ-1:0] stage_tw_data [0:LOGN-1];

// stage composition

generate
    for(genvar g=0; g<LOGN; g=g+1) begin
        if (g==0) begin
            assign stage_start[g] = (intt) ? stage_finish[g+1] : start;
            assign stage_din[g]   = (intt) ? stage_dout[g+1]   : ntt_in;
        end
        else if (g==LOGN-1) begin
            assign stage_start[g] = (intt) ? start  : stage_finish[g-1];
            assign stage_din[g]   = (intt) ? ntt_in : stage_dout[g-1];
        end
        else begin
            assign stage_start[g] = (intt) ? stage_finish[g+1] : stage_finish[g-1];
            assign stage_din[g]   = (intt) ? stage_dout[g+1]   : stage_dout[g-1];
        end
    end
endgenerate

generate
    for(genvar STAGE=0; STAGE<LOGN; STAGE=STAGE+1) begin
        // (* keep_hierarchy = "yes" *) 
        tw_roms_wrapper
        #(
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
            // (intt) ? stage_tw_addr[LOGN-STAGE-1] : stage_tw_addr[STAGE],
            (btf_gs) ? ( (intt) ? stage_tw_addr[STAGE] : stage_tw_addr[LOGN-STAGE-1] )
                     : ( (intt) ? stage_tw_addr[LOGN-STAGE-1] : stage_tw_addr[STAGE] ),
            stage_tw_data[STAGE]
        );
    end
endgenerate

generate
    for(genvar STAGE=0; STAGE<LOGN; STAGE=STAGE+1) begin
        // (* keep_hierarchy = "yes" *) 
        ntt_sdf_stage #(
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
            .BTF_GS(BTF_GS),
            // specific
            .STAGE(STAGE)
        ) NTT_SDF_STAGE (
            clk,
            rst,
            stage_start[STAGE],
            intt,
            btf_gs,
            stage_din[STAGE],
            q,
            stage_finish[STAGE],
            stage_dout[STAGE],
            stage_tw_addr[STAGE],
            // (intt) ? stage_tw_data[LOGN-STAGE-1] : stage_tw_data[STAGE]
            (btf_gs) ? ( (intt) ? stage_tw_data[STAGE] : stage_tw_data[LOGN-STAGE-1] )
                     : ( (intt) ? stage_tw_data[LOGN-STAGE-1] : stage_tw_data[STAGE] )
        );
    end
endgenerate

// output 
assign finish  = (intt) ? stage_finish[0] : stage_finish[LOGN-1];
assign ntt_out = (intt) ? stage_dout[0]   : stage_dout[LOGN-1];

endmodule