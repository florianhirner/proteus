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
    2'd0: brom_out <= 64'd1;
    2'd1: brom_out <= 64'd281474976710656;
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
    3'd0: brom_out <= 64'd1;
    3'd1: brom_out <= 64'd16777216;
    3'd2: brom_out <= 64'd281474976710656;
    3'd3: brom_out <= 64'd1099511627520;
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
    4'd0: brom_out <= 64'd1;
    4'd1: brom_out <= 64'd18446744069414580225;
    4'd2: brom_out <= 64'd16777216;
    4'd3: brom_out <= 64'd18446744000695107585;
    4'd4: brom_out <= 64'd281474976710656;
    4'd5: brom_out <= 64'd17293822564807737345;
    4'd6: brom_out <= 64'd1099511627520;
    4'd7: brom_out <= 64'd18442240469788262401;
    default: brom_out <= 64'h1;
    endcase
end

generate
    if(DELAY == 1) begin
        assign b = brom_out;
    end
endgenerate

endmodule

