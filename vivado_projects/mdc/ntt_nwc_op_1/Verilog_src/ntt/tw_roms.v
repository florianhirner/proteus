`timescale 1ns / 1ps

//-------------------------------------------------------------------------------------------------

module tw_rom_0_ntt_nwc
#(
    parameter LOGN  = 0,
    parameter LOGQ  = 64,
    parameter DELAY = 1,
    parameter STAGE = 0
)(
    input            clk,
    input [LOGN-1:0] raddr,
    output[LOGQ-1:0] b
);

(* rom_style = "distributed" *)
reg [LOGQ-1:0] brom_out, brom_out2;

always @(posedge clk) begin
    case(raddr[0:0])
    1'd0: brom_out <= 64'd2672356941328551034;
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

module tw_rom_1_ntt_nwc
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
    2'd0: brom_out <= 64'd3392617565049336557;
    2'd1: brom_out <= 64'd5976068779477487504;
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

module tw_rom_2_ntt_nwc
#(
    parameter LOGN  = 2,
    parameter LOGQ  = 64,
    parameter DELAY = 1,
    parameter STAGE = 2
)(
    input            clk,
    input [LOGN-1:0] raddr,
    output[LOGQ-1:0] b
);

(* rom_style = "distributed" *)
reg [LOGQ-1:0] brom_out, brom_out2;

always @(posedge clk) begin
    case(raddr[STAGE-1:0])
    3'd0: brom_out <= 64'd3430392906661205799;
    3'd2: brom_out <= 64'd699101306064864663;
    3'd1: brom_out <= 64'd2881966912403406253;
    3'd3: brom_out <= 64'd6231927651766270000;
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

module tw_rom_3_ntt_nwc
#(
    parameter LOGN  = 3,
    parameter LOGQ  = 64,
    parameter DELAY = 1,
    parameter STAGE = 3
)(
    input            clk,
    input [LOGN-1:0] raddr,
    output[LOGQ-1:0] b
);

(* rom_style = "distributed" *)
reg [LOGQ-1:0] brom_out, brom_out2;

always @(posedge clk) begin
    case(raddr[STAGE-1:0])
    4'd0: brom_out <= 64'd7646914504675205489;
    4'd4: brom_out <= 64'd7147821265559899415;
    4'd2: brom_out <= 64'd6420104328456603057;
    4'd6: brom_out <= 64'd1670791095363685175;
    4'd1: brom_out <= 64'd5917339183240377480;
    4'd5: brom_out <= 64'd3315193656759027728;
    4'd3: brom_out <= 64'd1002059954001900696;
    4'd7: brom_out <= 64'd4066724171054462909;
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

module tw_rom_0_intt_nwc
#(
    parameter LOGN  = 0,
    parameter LOGQ  = 64,
    parameter DELAY = 1,
    parameter STAGE = 0
)(
    input            clk,
    input [LOGN-1:0] raddr,
    output[LOGQ-1:0] b
);

(* rom_style = "distributed" *)
reg [LOGQ-1:0] brom_out, brom_out2;

always @(posedge clk) begin
    case(raddr[0:0])
    1'd0: brom_out <= 64'd6551015095526749063;
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

module tw_rom_1_intt_nwc
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
    2'd0: brom_out <= 64'd3247303257377812593;
    2'd1: brom_out <= 64'd5830754471805963540;
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

module tw_rom_2_intt_nwc
#(
    parameter LOGN  = 2,
    parameter LOGQ  = 64,
    parameter DELAY = 1,
    parameter STAGE = 2
)(
    input            clk,
    input [LOGN-1:0] raddr,
    output[LOGQ-1:0] b
);

(* rom_style = "distributed" *)
reg [LOGQ-1:0] brom_out, brom_out2;

always @(posedge clk) begin
    case(raddr[STAGE-1:0])
    3'd0: brom_out <= 64'd2991444385089030097;
    3'd1: brom_out <= 64'd6341405124451893844;
    3'd2: brom_out <= 64'd8524270730790435434;
    3'd3: brom_out <= 64'd5792979130194094298;
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

module tw_rom_3_intt_nwc
#(
    parameter LOGN  = 3,
    parameter LOGQ  = 64,
    parameter DELAY = 1,
    parameter STAGE = 3
)(
    input            clk,
    input [LOGN-1:0] raddr,
    output[LOGQ-1:0] b
);

(* rom_style = "distributed" *)
reg [LOGQ-1:0] brom_out, brom_out2;

always @(posedge clk) begin
    case(raddr[STAGE-1:0])
    4'd0: brom_out <= 64'd5156647865800837188;
    4'd1: brom_out <= 64'd8221312082853399401;
    4'd2: brom_out <= 64'd5908178380096272369;
    4'd3: brom_out <= 64'd3306032853614922617;
    4'd4: brom_out <= 64'd7552580941491614922;
    4'd5: brom_out <= 64'd2803267708398697040;
    4'd6: brom_out <= 64'd2075550771295400682;
    4'd7: brom_out <= 64'd1576457532180094608;
    default: brom_out <= 64'h1;
    endcase
end

generate
    if(DELAY == 1) begin
        assign b = brom_out;
    end
endgenerate

endmodule

