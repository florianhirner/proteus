//////////////////////////////////////////////////////////////////////////////////
// Company: University of Graz
// Engineer: Florian Hirner, Michael Streibl
//
// Behavior:
// 1. buffer input
// 2. mul 
// 3. accumulate, shift, and sum up
//
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module karatsuba_multiplier #(N=64) (clk, mul_ina, mul_inb, mul_out);

input clk;
input [N-1:0] mul_ina;
input [N-1:0] mul_inb;
output [(N*2)-1:0] mul_out;

wire [(N/2)-1:0] a_low, a_high;
wire [(N/2):0] a_mid, b_mid;
wire [(N/2)-1:0] b_low, b_high;

assign {a_high, a_low} = mul_ina;
assign {b_high, b_low} = mul_inb;

assign a_mid = a_low + a_high;
assign b_mid = b_low + b_high;

reg [(N/2):0] a_low_ff, a_high_ff;
reg [(N/2):0] a_mid_ff, b_mid_ff;
reg [(N/2):0] b_low_ff, b_high_ff;

always @(posedge clk) begin
    a_low_ff <= a_low;
    b_low_ff <= b_low;
    
    a_mid_ff <= a_mid;
    b_mid_ff <= b_mid;
    
    a_high_ff <= a_high;
    b_high_ff <= b_high;
end

wire [N+1:0] mul_low, mul_mid, mul_high;

MUL33 MUL_32_low  (.CLK(clk), .A(a_low_ff),  .B(b_low_ff),  .P(mul_low));
MUL33 MUL_33_mid  (.CLK(clk), .A(a_mid_ff),  .B(b_mid_ff),  .P(mul_mid));
MUL33 MUL_32_high (.CLK(clk), .A(a_high_ff), .B(b_high_ff), .P(mul_high));

reg [N+1:0] mul_low_ff;
reg [N+1:0] mul_mid_ff;
reg [N+1:0] mul_high_ff;

always @(posedge clk) begin
    mul_low_ff <= mul_low;
    mul_mid_ff <= mul_mid;
    mul_high_ff <= mul_high;
end

wire [(N*2):0] tmp [5:0];

assign tmp[0] = mul_high_ff << (     N );
assign tmp[1] = mul_mid_ff  << ( (N/2) );
assign tmp[2] = mul_high_ff << ( (N/2) );
assign tmp[3] = mul_low_ff  << ( (N/2) );
assign tmp[4] = mul_low_ff;

reg [(N*2):0] acc;

always @(posedge clk) begin
    // acc <= tmp[0] + tmp[1] + tmp[2];
    acc <= tmp[0] + tmp[1] - tmp[2] - tmp[3] + tmp[4];
end

assign mul_out = acc;

endmodule