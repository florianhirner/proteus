////////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Graz, IAIK
// Engineer: Florian Hirner
////////////////////////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module csa_12 #(N=64, B=12, CSA=6) (clk, csa_in, csa_out);

input           clk;
input   [N-1:0] csa_in [B-1:0];
output  [N-1:0] csa_out;

// 12 = 6*2 + 0 -> 3*2 + 0 -> 6
//  6 = 6*1 + 0 -> 3*1 + 0 -> 3
//  3 = 6*1 + 0 -> 3*1 + 0 -> 2

localparam CSA_STAGE_0_SIZE = B; // 12
localparam CSA_STAGE_1_SIZE = 6; // 6
localparam CSA_STAGE_2_SIZE = 6; // 3;
localparam CSA_STAGE_3_SIZE = 3; // 2;

wire [N-1:0] CSA_STAGE_0 [CSA_STAGE_0_SIZE-1:0];
wire [N-1:0] CSA_STAGE_1 [CSA_STAGE_1_SIZE-1:0];
wire [N-1:0] CSA_STAGE_2 [CSA_STAGE_2_SIZE-1:0];
wire [N-1:0] CSA_STAGE_3 [CSA_STAGE_3_SIZE-1:0];

assign CSA_STAGE_0 = csa_in;

assign CSA_STAGE_2[3] = 0;
assign CSA_STAGE_2[4] = 0;
assign CSA_STAGE_2[5] = 0;

csa_stage #(.N(N),.CSA(CSA), .IN(12)) CSA_0 (clk, CSA_STAGE_0, CSA_STAGE_1);
csa_stage #(.N(N),.CSA(CSA), .IN(6))  CSA_1 (clk, CSA_STAGE_1, CSA_STAGE_2[3-1:0]);
csa_stage #(.N(N),.CSA(CSA), .IN(6))  CSA_2 (clk, CSA_STAGE_2, CSA_STAGE_3);

reg [N-1:0] b [1:0];

always @(posedge clk) begin
    b[0] <= CSA_STAGE_3[0];
    b[1] <= CSA_STAGE_3[1];
end

assign csa_out = b[0] + b[1];

endmodule
