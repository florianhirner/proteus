`timescale 1ns / 1ps

module tw_roms_wrapper
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
    parameter BTF_GS     = 0,
    // specific
    parameter STAGE      = 0
)(
    input               clk,
    input               intt,
    input  [LOGQ-1:0]   q,
    input  [LOGN-1:0]   raddr, 
    output [LOGQ-1:0]   dout
);
    wire [LOGQ-1:0] data_tw;
    
    generate
        if (STAGE==11) begin
            tw_rom_11 #(LOGN, LOGQ, DELAY_BROM, STAGE) tw11 (clk, raddr, data_tw);
        end
        if (STAGE==10) begin
            tw_rom_10 #(LOGN, LOGQ, DELAY_BROM, STAGE) tw10 (clk, raddr, data_tw);
        end
        if (STAGE==9) begin
            tw_rom_9  #(LOGN, LOGQ, DELAY_BROM, STAGE) tw9  (clk, raddr, data_tw);
        end
        if (STAGE==8) begin
            tw_rom_8  #(LOGN, LOGQ, DELAY_BROM, STAGE) tw8  (clk, raddr, data_tw);
        end
        if (STAGE==7) begin
            tw_rom_7  #(LOGN, LOGQ, DELAY_BROM, STAGE) tw7  (clk, raddr, data_tw);
        end
        if (STAGE==6) begin
            tw_rom_6  #(LOGN, LOGQ, DELAY_BROM, STAGE) tw6  (clk, raddr, data_tw);
        end
        if (STAGE==5) begin
            tw_rom_5  #(LOGN, LOGQ, DELAY_BROM, STAGE) tw5  (clk, raddr, data_tw);
        end
        if (STAGE==4) begin
            tw_rom_4  #(LOGN, LOGQ, DELAY_BROM, STAGE) tw4  (clk, raddr, data_tw);
        end
        if (STAGE==3) begin
            tw_rom_3  #(LOGN, LOGQ, DELAY_BROM, STAGE) tw3  (clk, raddr, data_tw);
        end
        if (STAGE==2) begin
            tw_rom_2  #(LOGN, LOGQ, DELAY_BROM, STAGE) tw2  (clk, raddr, data_tw);
        end
        if (STAGE==1) begin
            tw_rom_1  #(LOGN, LOGQ, DELAY_BROM, STAGE) tw1  (clk, raddr, data_tw);
        end
        if (STAGE==0) begin
            assign data_tw = (TYPE_RED) ? R_w: 1;
        end
    endgenerate
    
    assign dout = data_tw;
endmodule
