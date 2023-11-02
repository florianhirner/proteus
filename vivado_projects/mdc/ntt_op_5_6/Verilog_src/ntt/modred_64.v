//////////////////////////////////////////////////////////////////////////////////
// modular reduction for 128-bit input
// prime is 2^64 - 2^32 + 1
// latency is 3 cycles
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module modred_64 #(
    parameter PRIME = 64'hFFFF_FFFF_0000_0001
)(
    input           CLK,
    input   [127:0] DATA_IN,
    output  [63:0]  DATA_OUT
);

wire        [127:0] b     = DATA_IN;
wire        [63:0]  b_l   = b[63:0];
wire        [31:0]  b_h_1 = b[95:64];
wire        [31:0]  b_h_2 = b[127:96];

reg         [31:0]  b_l_reg;
reg         [32:0]  t1,t2;
reg signed  [65:0]  t3;
reg         [63:0]  c;

always @(posedge CLK) begin
    b_l_reg <= b[31:0];
    t1 <= b_h_1 + b_l[63:32];
    t2 <= b_h_1 + b_h_2;
end

always @(posedge CLK) begin
    t3 <= {t1,b_l_reg[31:0]} - t2;
end

// ---- Final correction

wire [65:0] t3_mq = t3 - PRIME;
wire [65:0] t3_pq = t3 + PRIME;

always @(posedge CLK) begin
    c <= (t3_mq[65] == 0) ? t3_mq[63:0] :
         (t3[65]    == 0) ? t3[63:0]    : t3_pq[63:0];
end

assign DATA_OUT = c;

endmodule
