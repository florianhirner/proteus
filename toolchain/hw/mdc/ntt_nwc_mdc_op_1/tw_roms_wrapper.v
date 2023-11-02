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

    wire [LOGQ-1:0] data_tw, data_itw;

    reg [LOGQ-1:0] data_out;
    
    generate
        if (STAGE==11) begin
            tw_rom_11_ntt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) tw11 (clk, raddr, data_tw);
        end
        if (STAGE==10) begin
            tw_rom_10_ntt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) tw10 (clk, raddr, data_tw);
        end
        if (STAGE==9) begin
            tw_rom_9_ntt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) tw9  (clk, raddr, data_tw);
        end
        if (STAGE==8) begin
            tw_rom_8_ntt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) tw8  (clk, raddr, data_tw);
        end
        if (STAGE==7) begin
            tw_rom_7_ntt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) tw7  (clk, raddr, data_tw);
        end
        if (STAGE==6) begin
            tw_rom_6_ntt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) tw6  (clk, raddr, data_tw);
        end
        if (STAGE==5) begin
            tw_rom_5_ntt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) tw5  (clk, raddr, data_tw);
        end
        if (STAGE==4) begin
            tw_rom_4_ntt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) tw4  (clk, raddr, data_tw);
        end
        if (STAGE==3) begin
            tw_rom_3_ntt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) tw3  (clk, raddr, data_tw);
        end
        if (STAGE==2) begin
            tw_rom_2_ntt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) tw2  (clk, raddr, data_tw);
        end
        if (STAGE==1) begin
            tw_rom_1_ntt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) tw1  (clk, raddr, data_tw);
        end
        if (STAGE==0) begin
            tw_rom_0_ntt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) tw0  (clk, raddr, data_tw);
            // assign data_tw = 1;
        end
    endgenerate
    
    generate
        if (STAGE==11) begin
            tw_rom_11_intt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) itw11 (clk, raddr, data_itw);
        end
        if (STAGE==10) begin
            tw_rom_10_intt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) itw10 (clk, raddr, data_itw);
        end
        if (STAGE==9) begin
            tw_rom_9_intt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) itw9  (clk, raddr, data_itw);
        end
        if (STAGE==8) begin
            tw_rom_8_intt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) itw8  (clk, raddr, data_itw);
        end
        if (STAGE==7) begin
            tw_rom_7_intt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) itw7  (clk, raddr, data_itw);
        end
        if (STAGE==6) begin
            tw_rom_6_intt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) itw6  (clk, raddr, data_itw);
        end
        if (STAGE==5) begin
            tw_rom_5_intt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) itw5  (clk, raddr, data_itw);
        end
        if (STAGE==4) begin
            tw_rom_4_intt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) itw4  (clk, raddr, data_itw);
        end
        if (STAGE==3) begin
            tw_rom_3_intt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) itw3  (clk, raddr, data_itw);
        end
        if (STAGE==2) begin
            tw_rom_2_intt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) itw2  (clk, raddr, data_itw);
        end
        if (STAGE==1) begin
            tw_rom_1_intt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) itw1  (clk, raddr, data_itw);
        end
        if (STAGE==0) begin
            tw_rom_0_intt_nwc #(LOGN, LOGQ, DELAY_BROM, STAGE) itw0  (clk, raddr, data_itw);
            // assign data_tw = 1;
        end
    endgenerate
    
    // inverse NTT tiddle factor optimization to reduce twiddle rom usage
    always @(posedge clk) begin
        data_out = (intt) ? data_itw : data_tw;
    end
    
    assign dout = data_out; 
    
endmodule