`timescale 1ns / 1ps

module intmul 
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
    parameter DELAY_FIFO = 1  // 1 or 2 
)(
    input                 clk,
    input                 rst,
    input  [LOGQ-1:0]     in_a,
    input  [LOGQ-1:0]     in_b,
    input  [LOGQ-1:0]     q,
    output [(LOGQ*2)-1:0] out_c
);

localparam DSP_W = 24;
localparam DSP_H = 17;

localparam NUM_W = (LOGQ %  DSP_W) ? (LOGQ / DSP_W) + 1 : 
                                     (LOGQ / DSP_W);
                                     
localparam NUM_H = (LOGQ %  DSP_H) ? (LOGQ / DSP_H) + 1 : 
                                     (LOGQ / DSP_H);

localparam NUM_T = NUM_W * NUM_H;      // 12

// standard tiling (24x17)

wire [DSP_W-1:0] A [NUM_W-1:0];
wire [DSP_H-1:0] B [NUM_H-1:0];

(* use_dsp = "yes" *) reg [DSP_W+DSP_H-1:0] MUL [NUM_T-1:0];

//assign A[0] = in_a[(DSP_W*1)-1:(DSP_W*0)];
//assign A[1] = in_a[(DSP_W*2)-1:(DSP_W*1)];
//assign A[2] = in_a[LOGQ-1:(DSP_W*2)];
//
//assign B[0] = in_b[(DSP_H*1)-1:(DSP_H*0)];
//assign B[1] = in_b[(DSP_H*2)-1:(DSP_H*1)];
//assign B[2] = in_b[(DSP_H*3)-1:(DSP_H*2)];
//assign B[3] = in_b[LOGQ-1:(DSP_H*3)];

generate 
    for (genvar w=0; w<NUM_W-1; w=w+1) begin
        assign A[w] = in_a[(DSP_W*(w+1))-1:(DSP_W*w)];
    end
    assign A[NUM_W-1] = in_a[LOGQ-1:(DSP_W*(NUM_W-1))];
    
    for (genvar h=0; h<NUM_H-1; h=h+1) begin
        assign B[h] = in_b[(DSP_H*(h+1))-1:(DSP_H*h)];
    end
    assign B[NUM_H-1] = in_b[LOGQ-1:(DSP_H*(NUM_H-1))];
endgenerate

generate
    for (genvar h=0; h<NUM_H; h=h+1) begin
        for (genvar w=0; w<NUM_W; w=w+1) begin
            always @(posedge clk) begin
                MUL[h*NUM_W + w] <= (A[w] * B[h]);
            end
        end
    end
endgenerate

// CSA: reduce T blocks

localparam SIZE_I    = LOGQ*2;
localparam DEPTH     = NUM_T;
localparam SIZE_O    = (SIZE_I + $rtoi($ceil($clog2(DEPTH))));

wire [SIZE_I-1:0] CSA_IN  [0:NUM_T-1];
wire [SIZE_O-1:0] CSA_OUT [0:1];

generate
    for (genvar h=0; h<NUM_H; h=h+1) begin
        for (genvar w=0; w<NUM_W; w=w+1) begin
            assign CSA_IN[h*NUM_W + w] = MUL[h*NUM_W + w] << ( DSP_W*w + DSP_H*h );
        end
    end
endgenerate

csa_tree #(
    SIZE_I,
    NUM_T,
    SIZE_O
) CSA_TREE (
    CSA_IN,
    CSA_OUT
);

reg [(LOGQ*2)-1:0] res;

generate
    if (NUM_T == 1) begin
        always @(posedge clk) begin
            res <= CSA_OUT[0];
        end
    end
    else begin
        always @(posedge clk) begin
            res <= CSA_OUT[0] + CSA_OUT[1];
        end
    end
endgenerate

// final addition

assign out_c = res;

// only if CSA is possible in 1 cycle
//assign out_c = CSA_OUT[0] + CSA_OUT[1];

endmodule  