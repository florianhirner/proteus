`timescale 1ns / 1ps

// latency: 4

module modred_256bit (clk, a, b);
input clk;
input [511: 0] a;
output reg [255:0] b;

// ----------------- step1

wire [255:0] a_h;
wire [255:0] a_l;

assign a_h = a[511:256];
assign a_l = a[255:0];

wire [424:0] s1_1,s1_2;
reg  [424:0] s1_3;

CSA #(425) add0_0({1'd0,a_h,168'd1},{169'd0,a_l},{169'h1ffffffffffffffffffffffffffffffffffffffffff,~a_h},
                   s1_1,s1_2);

always @(posedge clk) begin
    s1_3 <= s1_1+s1_2;
end

// ----------------- step2

wire [168:0] a2_h;
wire [255:0] a2_l;

assign a2_h = s1_3[424:256];
assign a2_l = s1_3[255:0];

wire [337:0] s2_1,s2_2;
reg  [337:0] s2_3;

CSA #(338) add0_1({1'd0,a2_h,168'd1},{82'd0,a2_l},{169'h1ffffffffffffffffffffffffffffffffffffffffff,~a2_h},
                   s2_1,s2_2);

always @(posedge clk) begin
    s2_3 <= s2_1+s2_2;
end

// ----------------- step3

wire [81:0]  a3_h;
wire [255:0] a3_l;

assign a3_h = s2_3[337:256];
assign a3_l = s2_3[255:0];

wire [256:0] s3_1,s3_2;
reg  [256:0] s3_3;

CSA #(257) add0_2({7'd0,a3_h,168'd1},{1'd0,a3_l},{175'h7fffffffffffffffffffffffffffffffffffffffffff,~a3_h},
                   s3_1,s3_2);

always @(posedge clk) begin
    s3_3 <= s3_1+s3_2;
end

// ----------------- step4

reg signed [256:0] s4_1;

always @(*) begin
    s4_1 = s3_3 - 256'hffffffffffffffffffffff000000000000000000000000000000000000000001;
end

always @(posedge clk) begin
    b <= (s4_1[256] == 1'b0) ? s4_1[255:0] : s3_3[255:0];
end

endmodule

