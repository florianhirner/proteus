//////////////////////////////////////////////////////////////////////////////////
// modular reduction for 128-bit input
// prime is 2^64 - 2^32 + 1
// latency is 3 cycles
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module modred_28 #(
    parameter LOGQ          = 28,
    parameter PRIME         = 2**28 - 2**16 + 1
)(
    input          CLK,
    input   [55:0] DATA_IN,
    output  [27:0] DATA_OUT
);

/*
def q0_step_red(a,q0):
    a_h = (a >> 28)                 # a_h = a[55:28]
    a_l = a & (2**28 - 1)           # a_l = a[27:0]
    b   = a_l + (a_h << 16) - a_h
    return b
*/

wire [55:0] b0 = DATA_IN;
wire [27:0] a0_l = b0[27:0];
wire [27:0] a0_h = b0[55:28];

wire [55:0] b1 = a0_l + (a0_h << 16) - a0_h;

wire [27:0] a1_l = b1[27:0];
wire [27:0] a1_h = b1[55:28];

reg [55:0] b2;

always @(posedge CLK) begin
    b2 = a1_l + (a1_h << 16) - a1_h;
end


wire [27:0] a2_l = b2[27:0];
wire [27:0] a2_h = b2[55:28];

wire [55:0] b3 = a2_l + (a2_h << 16) - a2_h;

reg [27:0] b4;
wire [29:0] b3_mq = b3 - PRIME;

always @(posedge CLK) begin
    b4 <= (b3_mq[29]==0) ? b3_mq : b3;
end

assign DATA_OUT = b4;

wire [27:0] DATA_OUT_CHK = DATA_IN % PRIME;
wire [27:0] DELAY_DATA_OUT_CHK;

shiftreg #(2, 28) DELAY_CHECK (CLK, DATA_OUT_CHK, DELAY_DATA_OUT_CHK);

wire VALID = (DATA_OUT == DELAY_DATA_OUT_CHK);


endmodule


