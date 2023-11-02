`timescale 1ns / 1ps

//-------------------------------------------------------------------------------------------------

module tw_rom_1
#(
    parameter LOGN  = 1,
    parameter LOGQ  = 64,
    parameter DELAY = 1,
    parameter STAGE = 1
)(
    input            clk,
    input [LOGN-1:0] raddr,
    output[LOGQ-1:0] b
);

(* rom_style = "distributed" *)
reg [LOGQ-1:0] brom_out, brom_out2;

always @(posedge clk) begin
    case(raddr[STAGE-1:0])
    2'd0: brom_out <= 64'd9223372036854251519;
    2'd1: brom_out <= 64'd2672356941328551034;
    default: brom_out <= 64'h1;
    endcase
end

generate
    if(DELAY == 1) begin
        assign b = brom_out;
    end
endgenerate

endmodule

//-------------------------------------------------------------------------------------------------

module tw_rom_2
#(
    parameter LOGN  = 2,
    parameter LOGQ  = 64,
    parameter DELAY = 1,
    parameter STAGE = 1
)(
    input            clk,
    input [LOGN-1:0] raddr,
    output[LOGQ-1:0] b
);

(* rom_style = "distributed" *)
reg [LOGQ-1:0] brom_out, brom_out2;

always @(posedge clk) begin
    case(raddr[STAGE-1:0])
    3'd0: brom_out <= 64'd9223372036854251519;
    3'd1: brom_out <= 64'd3392617565049336557;
    3'd2: brom_out <= 64'd2672356941328551034;
    3'd3: brom_out <= 64'd5976068779477487504;
    default: brom_out <= 64'h1;
    endcase
end

generate
    if(DELAY == 1) begin
        assign b = brom_out;
    end
endgenerate

endmodule

//-------------------------------------------------------------------------------------------------

module tw_rom_3
#(
    parameter LOGN  = 3,
    parameter LOGQ  = 64,
    parameter DELAY = 1,
    parameter STAGE = 1
)(
    input            clk,
    input [LOGN-1:0] raddr,
    output[LOGQ-1:0] b
);

(* rom_style = "distributed" *)
reg [LOGQ-1:0] brom_out, brom_out2;

always @(posedge clk) begin
    case(raddr[STAGE-1:0])
    4'd0: brom_out <= 64'd9223372036854251519;
    4'd1: brom_out <= 64'd3430392906661205799;
    4'd2: brom_out <= 64'd3392617565049336557;
    4'd3: brom_out <= 64'd2881966912403406253;
    4'd4: brom_out <= 64'd2672356941328551034;
    4'd5: brom_out <= 64'd699101306064864663;
    4'd6: brom_out <= 64'd5976068779477487504;
    4'd7: brom_out <= 64'd6231927651766270000;
    default: brom_out <= 64'h1;
    endcase
end

generate
    if(DELAY == 1) begin
        assign b = brom_out;
    end
endgenerate

endmodule

