`timescale 1ns / 1ps
//-------------------------------------------------------------------------------------------------

module tw_rom_1
#(
    parameter LOGN  = 1,
    parameter LOGQ  = 28,
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
    2'd0: brom_out <= 28'd1;
    2'd1: brom_out <= 28'd75074761;
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
    parameter LOGQ  = 28,
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
    3'd0: brom_out <= 28'd1;
    3'd1: brom_out <= 28'd185593570;
    3'd2: brom_out <= 28'd75074761;
    3'd3: brom_out <= 28'd183496802;
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
    parameter LOGQ  = 28,
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
    4'd0: brom_out <= 28'd1;
    4'd1: brom_out <= 28'd250183461;
    4'd2: brom_out <= 28'd185593570;
    4'd3: brom_out <= 28'd69574326;
    4'd4: brom_out <= 28'd75074761;
    4'd5: brom_out <= 28'd180167806;
    4'd6: brom_out <= 28'd183496802;
    4'd7: brom_out <= 28'd174860716;
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

module tw_rom_4
#(
    parameter LOGN  = 4,
    parameter LOGQ  = 28,
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
    5'd0: brom_out <= 28'd1;
    5'd1: brom_out <= 28'd180609988;
    5'd2: brom_out <= 28'd250183461;
    5'd3: brom_out <= 28'd162923847;
    5'd4: brom_out <= 28'd185593570;
    5'd5: brom_out <= 28'd130838261;
    5'd6: brom_out <= 28'd69574326;
    5'd7: brom_out <= 28'd197095417;
    5'd8: brom_out <= 28'd75074761;
    5'd9: brom_out <= 28'd172037025;
    5'd10: brom_out <= 28'd180167806;
    5'd11: brom_out <= 28'd90670588;
    5'd12: brom_out <= 28'd183496802;
    5'd13: brom_out <= 28'd219782419;
    5'd14: brom_out <= 28'd174860716;
    5'd15: brom_out <= 28'd128108241;
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

module tw_rom_5
#(
    parameter LOGN  = 5,
    parameter LOGQ  = 28,
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
    6'd0: brom_out <= 28'd1;
    6'd1: brom_out <= 28'd42982065;
    6'd2: brom_out <= 28'd180609988;
    6'd3: brom_out <= 28'd69075086;
    6'd4: brom_out <= 28'd250183461;
    6'd5: brom_out <= 28'd197853640;
    6'd6: brom_out <= 28'd162923847;
    6'd7: brom_out <= 28'd260567810;
    6'd8: brom_out <= 28'd185593570;
    6'd9: brom_out <= 28'd163057267;
    6'd10: brom_out <= 28'd130838261;
    6'd11: brom_out <= 28'd234985940;
    6'd12: brom_out <= 28'd69574326;
    6'd13: brom_out <= 28'd25800822;
    6'd14: brom_out <= 28'd197095417;
    6'd15: brom_out <= 28'd210749829;
    6'd16: brom_out <= 28'd75074761;
    6'd17: brom_out <= 28'd135333989;
    6'd18: brom_out <= 28'd172037025;
    6'd19: brom_out <= 28'd125976015;
    6'd20: brom_out <= 28'd180167806;
    6'd21: brom_out <= 28'd131414476;
    6'd22: brom_out <= 28'd90670588;
    6'd23: brom_out <= 28'd155624840;
    6'd24: brom_out <= 28'd183496802;
    6'd25: brom_out <= 28'd194721725;
    6'd26: brom_out <= 28'd219782419;
    6'd27: brom_out <= 28'd220769014;
    6'd28: brom_out <= 28'd174860716;
    6'd29: brom_out <= 28'd46265048;
    6'd30: brom_out <= 28'd128108241;
    6'd31: brom_out <= 28'd133782759;
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

module tw_rom_6
#(
    parameter LOGN  = 6,
    parameter LOGQ  = 28,
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
    7'd0: brom_out <= 28'd1;
    7'd1: brom_out <= 28'd94135184;
    7'd2: brom_out <= 28'd42982065;
    7'd3: brom_out <= 28'd129001811;
    7'd4: brom_out <= 28'd180609988;
    7'd5: brom_out <= 28'd124730815;
    7'd6: brom_out <= 28'd69075086;
    7'd7: brom_out <= 28'd194544757;
    7'd8: brom_out <= 28'd250183461;
    7'd9: brom_out <= 28'd178374402;
    7'd10: brom_out <= 28'd197853640;
    7'd11: brom_out <= 28'd84893967;
    7'd12: brom_out <= 28'd162923847;
    7'd13: brom_out <= 28'd76573097;
    7'd14: brom_out <= 28'd260567810;
    7'd15: brom_out <= 28'd175625696;
    7'd16: brom_out <= 28'd185593570;
    7'd17: brom_out <= 28'd51997749;
    7'd18: brom_out <= 28'd163057267;
    7'd19: brom_out <= 28'd148889498;
    7'd20: brom_out <= 28'd130838261;
    7'd21: brom_out <= 28'd229105823;
    7'd22: brom_out <= 28'd234985940;
    7'd23: brom_out <= 28'd18533839;
    7'd24: brom_out <= 28'd69574326;
    7'd25: brom_out <= 28'd108349160;
    7'd26: brom_out <= 28'd25800822;
    7'd27: brom_out <= 28'd165596304;
    7'd28: brom_out <= 28'd197095417;
    7'd29: brom_out <= 28'd19095174;
    7'd30: brom_out <= 28'd210749829;
    7'd31: brom_out <= 28'd184798272;
    7'd32: brom_out <= 28'd75074761;
    7'd33: brom_out <= 28'd231414272;
    7'd34: brom_out <= 28'd135333989;
    7'd35: brom_out <= 28'd196308904;
    7'd36: brom_out <= 28'd172037025;
    7'd37: brom_out <= 28'd11699091;
    7'd38: brom_out <= 28'd125976015;
    7'd39: brom_out <= 28'd196317032;
    7'd40: brom_out <= 28'd180167806;
    7'd41: brom_out <= 28'd220656190;
    7'd42: brom_out <= 28'd131414476;
    7'd43: brom_out <= 28'd210831626;
    7'd44: brom_out <= 28'd90670588;
    7'd45: brom_out <= 28'd233080466;
    7'd46: brom_out <= 28'd155624840;
    7'd47: brom_out <= 28'd263111217;
    7'd48: brom_out <= 28'd183496802;
    7'd49: brom_out <= 28'd46529833;
    7'd50: brom_out <= 28'd194721725;
    7'd51: brom_out <= 28'd102579498;
    7'd52: brom_out <= 28'd219782419;
    7'd53: brom_out <= 28'd234642902;
    7'd54: brom_out <= 28'd220769014;
    7'd55: brom_out <= 28'd99790517;
    7'd56: brom_out <= 28'd174860716;
    7'd57: brom_out <= 28'd85069259;
    7'd58: brom_out <= 28'd46265048;
    7'd59: brom_out <= 28'd3179002;
    7'd60: brom_out <= 28'd128108241;
    7'd61: brom_out <= 28'd62061822;
    7'd62: brom_out <= 28'd133782759;
    7'd63: brom_out <= 28'd47877183;
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

module tw_rom_7
#(
    parameter LOGN  = 7,
    parameter LOGQ  = 28,
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
    8'd0: brom_out <= 28'd1;
    8'd1: brom_out <= 28'd147699054;
    8'd2: brom_out <= 28'd94135184;
    8'd3: brom_out <= 28'd157028693;
    8'd4: brom_out <= 28'd42982065;
    8'd5: brom_out <= 28'd165226744;
    8'd6: brom_out <= 28'd129001811;
    8'd7: brom_out <= 28'd122985686;
    8'd8: brom_out <= 28'd180609988;
    8'd9: brom_out <= 28'd114407843;
    8'd10: brom_out <= 28'd124730815;
    8'd11: brom_out <= 28'd70982951;
    8'd12: brom_out <= 28'd69075086;
    8'd13: brom_out <= 28'd240684902;
    8'd14: brom_out <= 28'd194544757;
    8'd15: brom_out <= 28'd41084242;
    8'd16: brom_out <= 28'd250183461;
    8'd17: brom_out <= 28'd189517632;
    8'd18: brom_out <= 28'd178374402;
    8'd19: brom_out <= 28'd208403048;
    8'd20: brom_out <= 28'd197853640;
    8'd21: brom_out <= 28'd128164980;
    8'd22: brom_out <= 28'd84893967;
    8'd23: brom_out <= 28'd100099056;
    8'd24: brom_out <= 28'd162923847;
    8'd25: brom_out <= 28'd215696667;
    8'd26: brom_out <= 28'd76573097;
    8'd27: brom_out <= 28'd228776079;
    8'd28: brom_out <= 28'd260567810;
    8'd29: brom_out <= 28'd193045667;
    8'd30: brom_out <= 28'd175625696;
    8'd31: brom_out <= 28'd92760331;
    8'd32: brom_out <= 28'd185593570;
    8'd33: brom_out <= 28'd202366126;
    8'd34: brom_out <= 28'd51997749;
    8'd35: brom_out <= 28'd91114882;
    8'd36: brom_out <= 28'd163057267;
    8'd37: brom_out <= 28'd88552238;
    8'd38: brom_out <= 28'd148889498;
    8'd39: brom_out <= 28'd162373432;
    8'd40: brom_out <= 28'd130838261;
    8'd41: brom_out <= 28'd34809444;
    8'd42: brom_out <= 28'd229105823;
    8'd43: brom_out <= 28'd169276669;
    8'd44: brom_out <= 28'd234985940;
    8'd45: brom_out <= 28'd152412548;
    8'd46: brom_out <= 28'd18533839;
    8'd47: brom_out <= 28'd130295133;
    8'd48: brom_out <= 28'd69574326;
    8'd49: brom_out <= 28'd196909902;
    8'd50: brom_out <= 28'd108349160;
    8'd51: brom_out <= 28'd166304647;
    8'd52: brom_out <= 28'd25800822;
    8'd53: brom_out <= 28'd200054106;
    8'd54: brom_out <= 28'd165596304;
    8'd55: brom_out <= 28'd33165861;
    8'd56: brom_out <= 28'd197095417;
    8'd57: brom_out <= 28'd197787791;
    8'd58: brom_out <= 28'd19095174;
    8'd59: brom_out <= 28'd185598009;
    8'd60: brom_out <= 28'd210749829;
    8'd61: brom_out <= 28'd66112528;
    8'd62: brom_out <= 28'd184798272;
    8'd63: brom_out <= 28'd149429971;
    8'd64: brom_out <= 28'd75074761;
    8'd65: brom_out <= 28'd86517113;
    8'd66: brom_out <= 28'd231414272;
    8'd67: brom_out <= 28'd237620966;
    8'd68: brom_out <= 28'd135333989;
    8'd69: brom_out <= 28'd262046585;
    8'd70: brom_out <= 28'd196308904;
    8'd71: brom_out <= 28'd112472991;
    8'd72: brom_out <= 28'd172037025;
    8'd73: brom_out <= 28'd256674305;
    8'd74: brom_out <= 28'd11699091;
    8'd75: brom_out <= 28'd119224607;
    8'd76: brom_out <= 28'd125976015;
    8'd77: brom_out <= 28'd221052688;
    8'd78: brom_out <= 28'd196317032;
    8'd79: brom_out <= 28'd191727270;
    8'd80: brom_out <= 28'd180167806;
    8'd81: brom_out <= 28'd218546733;
    8'd82: brom_out <= 28'd220656190;
    8'd83: brom_out <= 28'd159115155;
    8'd84: brom_out <= 28'd131414476;
    8'd85: brom_out <= 28'd170752771;
    8'd86: brom_out <= 28'd210831626;
    8'd87: brom_out <= 28'd196898909;
    8'd88: brom_out <= 28'd90670588;
    8'd89: brom_out <= 28'd172642311;
    8'd90: brom_out <= 28'd233080466;
    8'd91: brom_out <= 28'd29274521;
    8'd92: brom_out <= 28'd155624840;
    8'd93: brom_out <= 28'd251290023;
    8'd94: brom_out <= 28'd263111217;
    8'd95: brom_out <= 28'd152865265;
    8'd96: brom_out <= 28'd183496802;
    8'd97: brom_out <= 28'd121675103;
    8'd98: brom_out <= 28'd46529833;
    8'd99: brom_out <= 28'd210568560;
    8'd100: brom_out <= 28'd194721725;
    8'd101: brom_out <= 28'd158816719;
    8'd102: brom_out <= 28'd102579498;
    8'd103: brom_out <= 28'd74680748;
    8'd104: brom_out <= 28'd219782419;
    8'd105: brom_out <= 28'd78462606;
    8'd106: brom_out <= 28'd234642902;
    8'd107: brom_out <= 28'd126821849;
    8'd108: brom_out <= 28'd220769014;
    8'd109: brom_out <= 28'd263678998;
    8'd110: brom_out <= 28'd99790517;
    8'd111: brom_out <= 28'd67307067;
    8'd112: brom_out <= 28'd174860716;
    8'd113: brom_out <= 28'd227611463;
    8'd114: brom_out <= 28'd85069259;
    8'd115: brom_out <= 28'd111284191;
    8'd116: brom_out <= 28'd46265048;
    8'd117: brom_out <= 28'd191662816;
    8'd118: brom_out <= 28'd3179002;
    8'd119: brom_out <= 28'd136571165;
    8'd120: brom_out <= 28'd128108241;
    8'd121: brom_out <= 28'd175792128;
    8'd122: brom_out <= 28'd62061822;
    8'd123: brom_out <= 28'd124918999;
    8'd124: brom_out <= 28'd133782759;
    8'd125: brom_out <= 28'd242795574;
    8'd126: brom_out <= 28'd47877183;
    8'd127: brom_out <= 28'd62045777;
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

module tw_rom_8
#(
    parameter LOGN  = 8,
    parameter LOGQ  = 28,
    parameter DELAY = 1,
    parameter STAGE = 1
)(
    input            clk,
    input [LOGN-1:0] raddr,
    output[LOGQ-1:0] b
);

(* ram_style = "block" *)
reg [LOGQ-1:0] brom_out, brom_out2;

always @(posedge clk) begin
    case(raddr[STAGE-1:0])
    9'd0: brom_out <= 28'd1;
    9'd1: brom_out <= 28'd108810259;
    9'd2: brom_out <= 28'd147699054;
    9'd3: brom_out <= 28'd85922744;
    9'd4: brom_out <= 28'd94135184;
    9'd5: brom_out <= 28'd50725340;
    9'd6: brom_out <= 28'd157028693;
    9'd7: brom_out <= 28'd37051834;
    9'd8: brom_out <= 28'd42982065;
    9'd9: brom_out <= 28'd34119889;
    9'd10: brom_out <= 28'd165226744;
    9'd11: brom_out <= 28'd261314274;
    9'd12: brom_out <= 28'd129001811;
    9'd13: brom_out <= 28'd220375582;
    9'd14: brom_out <= 28'd122985686;
    9'd15: brom_out <= 28'd63350037;
    9'd16: brom_out <= 28'd180609988;
    9'd17: brom_out <= 28'd160286792;
    9'd18: brom_out <= 28'd114407843;
    9'd19: brom_out <= 28'd52226496;
    9'd20: brom_out <= 28'd124730815;
    9'd21: brom_out <= 28'd180525688;
    9'd22: brom_out <= 28'd70982951;
    9'd23: brom_out <= 28'd106640438;
    9'd24: brom_out <= 28'd69075086;
    9'd25: brom_out <= 28'd227283585;
    9'd26: brom_out <= 28'd240684902;
    9'd27: brom_out <= 28'd166886297;
    9'd28: brom_out <= 28'd194544757;
    9'd29: brom_out <= 28'd211668928;
    9'd30: brom_out <= 28'd41084242;
    9'd31: brom_out <= 28'd25065602;
    9'd32: brom_out <= 28'd250183461;
    9'd33: brom_out <= 28'd227816219;
    9'd34: brom_out <= 28'd189517632;
    9'd35: brom_out <= 28'd14542514;
    9'd36: brom_out <= 28'd178374402;
    9'd37: brom_out <= 28'd258923154;
    9'd38: brom_out <= 28'd208403048;
    9'd39: brom_out <= 28'd18203709;
    9'd40: brom_out <= 28'd197853640;
    9'd41: brom_out <= 28'd104174682;
    9'd42: brom_out <= 28'd128164980;
    9'd43: brom_out <= 28'd189762285;
    9'd44: brom_out <= 28'd84893967;
    9'd45: brom_out <= 28'd258649698;
    9'd46: brom_out <= 28'd100099056;
    9'd47: brom_out <= 28'd230433664;
    9'd48: brom_out <= 28'd162923847;
    9'd49: brom_out <= 28'd47751177;
    9'd50: brom_out <= 28'd215696667;
    9'd51: brom_out <= 28'd12328961;
    9'd52: brom_out <= 28'd76573097;
    9'd53: brom_out <= 28'd84143174;
    9'd54: brom_out <= 28'd228776079;
    9'd55: brom_out <= 28'd209086118;
    9'd56: brom_out <= 28'd260567810;
    9'd57: brom_out <= 28'd149528048;
    9'd58: brom_out <= 28'd193045667;
    9'd59: brom_out <= 28'd151968102;
    9'd60: brom_out <= 28'd175625696;
    9'd61: brom_out <= 28'd120936039;
    9'd62: brom_out <= 28'd92760331;
    9'd63: brom_out <= 28'd189881206;
    9'd64: brom_out <= 28'd185593570;
    9'd65: brom_out <= 28'd234890903;
    9'd66: brom_out <= 28'd202366126;
    9'd67: brom_out <= 28'd97765534;
    9'd68: brom_out <= 28'd51997749;
    9'd69: brom_out <= 28'd72738487;
    9'd70: brom_out <= 28'd91114882;
    9'd71: brom_out <= 28'd108965460;
    9'd72: brom_out <= 28'd163057267;
    9'd73: brom_out <= 28'd41630462;
    9'd74: brom_out <= 28'd88552238;
    9'd75: brom_out <= 28'd135288005;
    9'd76: brom_out <= 28'd148889498;
    9'd77: brom_out <= 28'd106338196;
    9'd78: brom_out <= 28'd162373432;
    9'd79: brom_out <= 28'd22463657;
    9'd80: brom_out <= 28'd130838261;
    9'd81: brom_out <= 28'd66148505;
    9'd82: brom_out <= 28'd34809444;
    9'd83: brom_out <= 28'd229228230;
    9'd84: brom_out <= 28'd229105823;
    9'd85: brom_out <= 28'd22541719;
    9'd86: brom_out <= 28'd169276669;
    9'd87: brom_out <= 28'd41155851;
    9'd88: brom_out <= 28'd234985940;
    9'd89: brom_out <= 28'd104784816;
    9'd90: brom_out <= 28'd152412548;
    9'd91: brom_out <= 28'd200233010;
    9'd92: brom_out <= 28'd18533839;
    9'd93: brom_out <= 28'd146361539;
    9'd94: brom_out <= 28'd130295133;
    9'd95: brom_out <= 28'd176471684;
    9'd96: brom_out <= 28'd69574326;
    9'd97: brom_out <= 28'd26687688;
    9'd98: brom_out <= 28'd196909902;
    9'd99: brom_out <= 28'd257798138;
    9'd100: brom_out <= 28'd108349160;
    9'd101: brom_out <= 28'd139555205;
    9'd102: brom_out <= 28'd166304647;
    9'd103: brom_out <= 28'd117496916;
    9'd104: brom_out <= 28'd25800822;
    9'd105: brom_out <= 28'd265574867;
    9'd106: brom_out <= 28'd200054106;
    9'd107: brom_out <= 28'd176917280;
    9'd108: brom_out <= 28'd165596304;
    9'd109: brom_out <= 28'd168407516;
    9'd110: brom_out <= 28'd33165861;
    9'd111: brom_out <= 28'd32225581;
    9'd112: brom_out <= 28'd197095417;
    9'd113: brom_out <= 28'd212648666;
    9'd114: brom_out <= 28'd197787791;
    9'd115: brom_out <= 28'd265950570;
    9'd116: brom_out <= 28'd19095174;
    9'd117: brom_out <= 28'd37667151;
    9'd118: brom_out <= 28'd185598009;
    9'd119: brom_out <= 28'd177772804;
    9'd120: brom_out <= 28'd210749829;
    9'd121: brom_out <= 28'd155168409;
    9'd122: brom_out <= 28'd66112528;
    9'd123: brom_out <= 28'd80159028;
    9'd124: brom_out <= 28'd184798272;
    9'd125: brom_out <= 28'd71295013;
    9'd126: brom_out <= 28'd149429971;
    9'd127: brom_out <= 28'd139182289;
    9'd128: brom_out <= 28'd75074761;
    9'd129: brom_out <= 28'd214551729;
    9'd130: brom_out <= 28'd86517113;
    9'd131: brom_out <= 28'd145184649;
    9'd132: brom_out <= 28'd231414272;
    9'd133: brom_out <= 28'd249970613;
    9'd134: brom_out <= 28'd237620966;
    9'd135: brom_out <= 28'd130557622;
    9'd136: brom_out <= 28'd135333989;
    9'd137: brom_out <= 28'd191032230;
    9'd138: brom_out <= 28'd262046585;
    9'd139: brom_out <= 28'd23486645;
    9'd140: brom_out <= 28'd196308904;
    9'd141: brom_out <= 28'd13519489;
    9'd142: brom_out <= 28'd112472991;
    9'd143: brom_out <= 28'd214085592;
    9'd144: brom_out <= 28'd172037025;
    9'd145: brom_out <= 28'd39153512;
    9'd146: brom_out <= 28'd256674305;
    9'd147: brom_out <= 28'd181639510;
    9'd148: brom_out <= 28'd11699091;
    9'd149: brom_out <= 28'd69161747;
    9'd150: brom_out <= 28'd119224607;
    9'd151: brom_out <= 28'd85021501;
    9'd152: brom_out <= 28'd125976015;
    9'd153: brom_out <= 28'd134866823;
    9'd154: brom_out <= 28'd221052688;
    9'd155: brom_out <= 28'd71064168;
    9'd156: brom_out <= 28'd196317032;
    9'd157: brom_out <= 28'd144414946;
    9'd158: brom_out <= 28'd191727270;
    9'd159: brom_out <= 28'd27244461;
    9'd160: brom_out <= 28'd180167806;
    9'd161: brom_out <= 28'd118518376;
    9'd162: brom_out <= 28'd218546733;
    9'd163: brom_out <= 28'd227894900;
    9'd164: brom_out <= 28'd220656190;
    9'd165: brom_out <= 28'd169491146;
    9'd166: brom_out <= 28'd159115155;
    9'd167: brom_out <= 28'd167885779;
    9'd168: brom_out <= 28'd131414476;
    9'd169: brom_out <= 28'd246744565;
    9'd170: brom_out <= 28'd170752771;
    9'd171: brom_out <= 28'd246656426;
    9'd172: brom_out <= 28'd210831626;
    9'd173: brom_out <= 28'd19493867;
    9'd174: brom_out <= 28'd196898909;
    9'd175: brom_out <= 28'd231358848;
    9'd176: brom_out <= 28'd90670588;
    9'd177: brom_out <= 28'd252952333;
    9'd178: brom_out <= 28'd172642311;
    9'd179: brom_out <= 28'd166530134;
    9'd180: brom_out <= 28'd233080466;
    9'd181: brom_out <= 28'd71933862;
    9'd182: brom_out <= 28'd29274521;
    9'd183: brom_out <= 28'd9757140;
    9'd184: brom_out <= 28'd155624840;
    9'd185: brom_out <= 28'd172227818;
    9'd186: brom_out <= 28'd251290023;
    9'd187: brom_out <= 28'd18729522;
    9'd188: brom_out <= 28'd263111217;
    9'd189: brom_out <= 28'd225636920;
    9'd190: brom_out <= 28'd152865265;
    9'd191: brom_out <= 28'd81777479;
    9'd192: brom_out <= 28'd183496802;
    9'd193: brom_out <= 28'd223427563;
    9'd194: brom_out <= 28'd121675103;
    9'd195: brom_out <= 28'd254450415;
    9'd196: brom_out <= 28'd46529833;
    9'd197: brom_out <= 28'd96648403;
    9'd198: brom_out <= 28'd210568560;
    9'd199: brom_out <= 28'd75673633;
    9'd200: brom_out <= 28'd194721725;
    9'd201: brom_out <= 28'd67012048;
    9'd202: brom_out <= 28'd158816719;
    9'd203: brom_out <= 28'd29871855;
    9'd204: brom_out <= 28'd102579498;
    9'd205: brom_out <= 28'd15927889;
    9'd206: brom_out <= 28'd74680748;
    9'd207: brom_out <= 28'd189591954;
    9'd208: brom_out <= 28'd219782419;
    9'd209: brom_out <= 28'd64217206;
    9'd210: brom_out <= 28'd78462606;
    9'd211: brom_out <= 28'd119707826;
    9'd212: brom_out <= 28'd234642902;
    9'd213: brom_out <= 28'd13250338;
    9'd214: brom_out <= 28'd126821849;
    9'd215: brom_out <= 28'd234030247;
    9'd216: brom_out <= 28'd220769014;
    9'd217: brom_out <= 28'd264486338;
    9'd218: brom_out <= 28'd263678998;
    9'd219: brom_out <= 28'd257268473;
    9'd220: brom_out <= 28'd99790517;
    9'd221: brom_out <= 28'd25569479;
    9'd222: brom_out <= 28'd67307067;
    9'd223: brom_out <= 28'd184516225;
    9'd224: brom_out <= 28'd174860716;
    9'd225: brom_out <= 28'd63703579;
    9'd226: brom_out <= 28'd227611463;
    9'd227: brom_out <= 28'd170227406;
    9'd228: brom_out <= 28'd85069259;
    9'd229: brom_out <= 28'd239545014;
    9'd230: brom_out <= 28'd111284191;
    9'd231: brom_out <= 28'd74998629;
    9'd232: brom_out <= 28'd46265048;
    9'd233: brom_out <= 28'd161827885;
    9'd234: brom_out <= 28'd191662816;
    9'd235: brom_out <= 28'd81956368;
    9'd236: brom_out <= 28'd3179002;
    9'd237: brom_out <= 28'd135666356;
    9'd238: brom_out <= 28'd136571165;
    9'd239: brom_out <= 28'd59208162;
    9'd240: brom_out <= 28'd128108241;
    9'd241: brom_out <= 28'd254509489;
    9'd242: brom_out <= 28'd175792128;
    9'd243: brom_out <= 28'd27692847;
    9'd244: brom_out <= 28'd62061822;
    9'd245: brom_out <= 28'd124400208;
    9'd246: brom_out <= 28'd124918999;
    9'd247: brom_out <= 28'd173702965;
    9'd248: brom_out <= 28'd133782759;
    9'd249: brom_out <= 28'd104557084;
    9'd250: brom_out <= 28'd242795574;
    9'd251: brom_out <= 28'd6576175;
    9'd252: brom_out <= 28'd47877183;
    9'd253: brom_out <= 28'd210298252;
    9'd254: brom_out <= 28'd62045777;
    9'd255: brom_out <= 28'd10130658;
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

module tw_rom_9
#(
    parameter LOGN  = 9,
    parameter LOGQ  = 28,
    parameter DELAY = 1,
    parameter STAGE = 1
)(
    input            clk,
    input [LOGN-1:0] raddr,
    output[LOGQ-1:0] b
);

(* ram_style = "block" *)
reg [LOGQ-1:0] brom_out, brom_out2;

always @(posedge clk) begin
    case(raddr[STAGE-1:0])
    10'd0: brom_out <= 28'd1;
    10'd1: brom_out <= 28'd223822620;
    10'd2: brom_out <= 28'd108810259;
    10'd3: brom_out <= 28'd224068691;
    10'd4: brom_out <= 28'd147699054;
    10'd5: brom_out <= 28'd6292910;
    10'd6: brom_out <= 28'd85922744;
    10'd7: brom_out <= 28'd195288398;
    10'd8: brom_out <= 28'd94135184;
    10'd9: brom_out <= 28'd34971158;
    10'd10: brom_out <= 28'd50725340;
    10'd11: brom_out <= 28'd160841949;
    10'd12: brom_out <= 28'd157028693;
    10'd13: brom_out <= 28'd42585458;
    10'd14: brom_out <= 28'd37051834;
    10'd15: brom_out <= 28'd80505160;
    10'd16: brom_out <= 28'd42982065;
    10'd17: brom_out <= 28'd131023241;
    10'd18: brom_out <= 28'd34119889;
    10'd19: brom_out <= 28'd43783325;
    10'd20: brom_out <= 28'd165226744;
    10'd21: brom_out <= 28'd6010959;
    10'd22: brom_out <= 28'd261314274;
    10'd23: brom_out <= 28'd9842125;
    10'd24: brom_out <= 28'd129001811;
    10'd25: brom_out <= 28'd173118058;
    10'd26: brom_out <= 28'd220375582;
    10'd27: brom_out <= 28'd178386996;
    10'd28: brom_out <= 28'd122985686;
    10'd29: brom_out <= 28'd50138453;
    10'd30: brom_out <= 28'd63350037;
    10'd31: brom_out <= 28'd258366673;
    10'd32: brom_out <= 28'd180609988;
    10'd33: brom_out <= 28'd61720173;
    10'd34: brom_out <= 28'd160286792;
    10'd35: brom_out <= 28'd78049958;
    10'd36: brom_out <= 28'd114407843;
    10'd37: brom_out <= 28'd218694662;
    10'd38: brom_out <= 28'd52226496;
    10'd39: brom_out <= 28'd129576773;
    10'd40: brom_out <= 28'd124730815;
    10'd41: brom_out <= 28'd125267062;
    10'd42: brom_out <= 28'd180525688;
    10'd43: brom_out <= 28'd98889920;
    10'd44: brom_out <= 28'd70982951;
    10'd45: brom_out <= 28'd35918322;
    10'd46: brom_out <= 28'd106640438;
    10'd47: brom_out <= 28'd25345558;
    10'd48: brom_out <= 28'd69075086;
    10'd49: brom_out <= 28'd202059197;
    10'd50: brom_out <= 28'd227283585;
    10'd51: brom_out <= 28'd100229847;
    10'd52: brom_out <= 28'd240684902;
    10'd53: brom_out <= 28'd244477824;
    10'd54: brom_out <= 28'd166886297;
    10'd55: brom_out <= 28'd66242139;
    10'd56: brom_out <= 28'd194544757;
    10'd57: brom_out <= 28'd247289727;
    10'd58: brom_out <= 28'd211668928;
    10'd59: brom_out <= 28'd243681494;
    10'd60: brom_out <= 28'd41084242;
    10'd61: brom_out <= 28'd57455860;
    10'd62: brom_out <= 28'd25065602;
    10'd63: brom_out <= 28'd203044972;
    10'd64: brom_out <= 28'd250183461;
    10'd65: brom_out <= 28'd174900371;
    10'd66: brom_out <= 28'd227816219;
    10'd67: brom_out <= 28'd82934386;
    10'd68: brom_out <= 28'd189517632;
    10'd69: brom_out <= 28'd60072008;
    10'd70: brom_out <= 28'd14542514;
    10'd71: brom_out <= 28'd212123710;
    10'd72: brom_out <= 28'd178374402;
    10'd73: brom_out <= 28'd258559590;
    10'd74: brom_out <= 28'd258923154;
    10'd75: brom_out <= 28'd51974898;
    10'd76: brom_out <= 28'd208403048;
    10'd77: brom_out <= 28'd96828143;
    10'd78: brom_out <= 28'd18203709;
    10'd79: brom_out <= 28'd40158424;
    10'd80: brom_out <= 28'd197853640;
    10'd81: brom_out <= 28'd82684352;
    10'd82: brom_out <= 28'd104174682;
    10'd83: brom_out <= 28'd64884498;
    10'd84: brom_out <= 28'd128164980;
    10'd85: brom_out <= 28'd6574921;
    10'd86: brom_out <= 28'd189762285;
    10'd87: brom_out <= 28'd200102186;
    10'd88: brom_out <= 28'd84893967;
    10'd89: brom_out <= 28'd170930026;
    10'd90: brom_out <= 28'd258649698;
    10'd91: brom_out <= 28'd199633043;
    10'd92: brom_out <= 28'd100099056;
    10'd93: brom_out <= 28'd47375162;
    10'd94: brom_out <= 28'd230433664;
    10'd95: brom_out <= 28'd262464837;
    10'd96: brom_out <= 28'd162923847;
    10'd97: brom_out <= 28'd229100654;
    10'd98: brom_out <= 28'd47751177;
    10'd99: brom_out <= 28'd85667364;
    10'd100: brom_out <= 28'd215696667;
    10'd101: brom_out <= 28'd225291788;
    10'd102: brom_out <= 28'd12328961;
    10'd103: brom_out <= 28'd58711370;
    10'd104: brom_out <= 28'd76573097;
    10'd105: brom_out <= 28'd204886617;
    10'd106: brom_out <= 28'd84143174;
    10'd107: brom_out <= 28'd102915173;
    10'd108: brom_out <= 28'd228776079;
    10'd109: brom_out <= 28'd21739535;
    10'd110: brom_out <= 28'd209086118;
    10'd111: brom_out <= 28'd27056737;
    10'd112: brom_out <= 28'd260567810;
    10'd113: brom_out <= 28'd54534442;
    10'd114: brom_out <= 28'd149528048;
    10'd115: brom_out <= 28'd99693395;
    10'd116: brom_out <= 28'd193045667;
    10'd117: brom_out <= 28'd26344019;
    10'd118: brom_out <= 28'd151968102;
    10'd119: brom_out <= 28'd148801771;
    10'd120: brom_out <= 28'd175625696;
    10'd121: brom_out <= 28'd158466952;
    10'd122: brom_out <= 28'd120936039;
    10'd123: brom_out <= 28'd135618975;
    10'd124: brom_out <= 28'd92760331;
    10'd125: brom_out <= 28'd252241817;
    10'd126: brom_out <= 28'd189881206;
    10'd127: brom_out <= 28'd212760505;
    10'd128: brom_out <= 28'd185593570;
    10'd129: brom_out <= 28'd194276347;
    10'd130: brom_out <= 28'd234890903;
    10'd131: brom_out <= 28'd75073484;
    10'd132: brom_out <= 28'd202366126;
    10'd133: brom_out <= 28'd11100143;
    10'd134: brom_out <= 28'd97765534;
    10'd135: brom_out <= 28'd138879618;
    10'd136: brom_out <= 28'd51997749;
    10'd137: brom_out <= 28'd185138250;
    10'd138: brom_out <= 28'd72738487;
    10'd139: brom_out <= 28'd250508912;
    10'd140: brom_out <= 28'd91114882;
    10'd141: brom_out <= 28'd150862394;
    10'd142: brom_out <= 28'd108965460;
    10'd143: brom_out <= 28'd184310992;
    10'd144: brom_out <= 28'd163057267;
    10'd145: brom_out <= 28'd48471700;
    10'd146: brom_out <= 28'd41630462;
    10'd147: brom_out <= 28'd263070789;
    10'd148: brom_out <= 28'd88552238;
    10'd149: brom_out <= 28'd95861179;
    10'd150: brom_out <= 28'd135288005;
    10'd151: brom_out <= 28'd206252403;
    10'd152: brom_out <= 28'd148889498;
    10'd153: brom_out <= 28'd177340471;
    10'd154: brom_out <= 28'd106338196;
    10'd155: brom_out <= 28'd240127751;
    10'd156: brom_out <= 28'd162373432;
    10'd157: brom_out <= 28'd113948404;
    10'd158: brom_out <= 28'd22463657;
    10'd159: brom_out <= 28'd56155754;
    10'd160: brom_out <= 28'd130838261;
    10'd161: brom_out <= 28'd95434564;
    10'd162: brom_out <= 28'd66148505;
    10'd163: brom_out <= 28'd62844488;
    10'd164: brom_out <= 28'd34809444;
    10'd165: brom_out <= 28'd119169851;
    10'd166: brom_out <= 28'd229228230;
    10'd167: brom_out <= 28'd151095818;
    10'd168: brom_out <= 28'd229105823;
    10'd169: brom_out <= 28'd44144526;
    10'd170: brom_out <= 28'd22541719;
    10'd171: brom_out <= 28'd142181410;
    10'd172: brom_out <= 28'd169276669;
    10'd173: brom_out <= 28'd67620310;
    10'd174: brom_out <= 28'd41155851;
    10'd175: brom_out <= 28'd183029478;
    10'd176: brom_out <= 28'd234985940;
    10'd177: brom_out <= 28'd237102043;
    10'd178: brom_out <= 28'd104784816;
    10'd179: brom_out <= 28'd210795202;
    10'd180: brom_out <= 28'd152412548;
    10'd181: brom_out <= 28'd1613379;
    10'd182: brom_out <= 28'd200233010;
    10'd183: brom_out <= 28'd149992379;
    10'd184: brom_out <= 28'd18533839;
    10'd185: brom_out <= 28'd42980173;
    10'd186: brom_out <= 28'd146361539;
    10'd187: brom_out <= 28'd4839268;
    10'd188: brom_out <= 28'd130295133;
    10'd189: brom_out <= 28'd91704337;
    10'd190: brom_out <= 28'd176471684;
    10'd191: brom_out <= 28'd59284831;
    10'd192: brom_out <= 28'd69574326;
    10'd193: brom_out <= 28'd222861227;
    10'd194: brom_out <= 28'd26687688;
    10'd195: brom_out <= 28'd56094099;
    10'd196: brom_out <= 28'd196909902;
    10'd197: brom_out <= 28'd110201077;
    10'd198: brom_out <= 28'd257798138;
    10'd199: brom_out <= 28'd5829490;
    10'd200: brom_out <= 28'd108349160;
    10'd201: brom_out <= 28'd174629071;
    10'd202: brom_out <= 28'd139555205;
    10'd203: brom_out <= 28'd14237844;
    10'd204: brom_out <= 28'd166304647;
    10'd205: brom_out <= 28'd156366160;
    10'd206: brom_out <= 28'd117496916;
    10'd207: brom_out <= 28'd251384491;
    10'd208: brom_out <= 28'd25800822;
    10'd209: brom_out <= 28'd1562592;
    10'd210: brom_out <= 28'd265574867;
    10'd211: brom_out <= 28'd8411857;
    10'd212: brom_out <= 28'd200054106;
    10'd213: brom_out <= 28'd58786546;
    10'd214: brom_out <= 28'd176917280;
    10'd215: brom_out <= 28'd209725121;
    10'd216: brom_out <= 28'd165596304;
    10'd217: brom_out <= 28'd258257144;
    10'd218: brom_out <= 28'd168407516;
    10'd219: brom_out <= 28'd222683851;
    10'd220: brom_out <= 28'd33165861;
    10'd221: brom_out <= 28'd87202272;
    10'd222: brom_out <= 28'd32225581;
    10'd223: brom_out <= 28'd114486793;
    10'd224: brom_out <= 28'd197095417;
    10'd225: brom_out <= 28'd101003336;
    10'd226: brom_out <= 28'd212648666;
    10'd227: brom_out <= 28'd23606744;
    10'd228: brom_out <= 28'd197787791;
    10'd229: brom_out <= 28'd194671371;
    10'd230: brom_out <= 28'd265950570;
    10'd231: brom_out <= 28'd75537498;
    10'd232: brom_out <= 28'd19095174;
    10'd233: brom_out <= 28'd256272276;
    10'd234: brom_out <= 28'd37667151;
    10'd235: brom_out <= 28'd135886841;
    10'd236: brom_out <= 28'd185598009;
    10'd237: brom_out <= 28'd237438985;
    10'd238: brom_out <= 28'd177772804;
    10'd239: brom_out <= 28'd137065607;
    10'd240: brom_out <= 28'd210749829;
    10'd241: brom_out <= 28'd34855849;
    10'd242: brom_out <= 28'd155168409;
    10'd243: brom_out <= 28'd189233510;
    10'd244: brom_out <= 28'd66112528;
    10'd245: brom_out <= 28'd35924353;
    10'd246: brom_out <= 28'd80159028;
    10'd247: brom_out <= 28'd95560742;
    10'd248: brom_out <= 28'd184798272;
    10'd249: brom_out <= 28'd255286072;
    10'd250: brom_out <= 28'd71295013;
    10'd251: brom_out <= 28'd77981460;
    10'd252: brom_out <= 28'd149429971;
    10'd253: brom_out <= 28'd103019692;
    10'd254: brom_out <= 28'd139182289;
    10'd255: brom_out <= 28'd49057739;
    10'd256: brom_out <= 28'd75074761;
    10'd257: brom_out <= 28'd209886001;
    10'd258: brom_out <= 28'd214551729;
    10'd259: brom_out <= 28'd151148155;
    10'd260: brom_out <= 28'd86517113;
    10'd261: brom_out <= 28'd36946189;
    10'd262: brom_out <= 28'd145184649;
    10'd263: brom_out <= 28'd140366124;
    10'd264: brom_out <= 28'd231414272;
    10'd265: brom_out <= 28'd199876762;
    10'd266: brom_out <= 28'd249970613;
    10'd267: brom_out <= 28'd201144768;
    10'd268: brom_out <= 28'd237620966;
    10'd269: brom_out <= 28'd65593170;
    10'd270: brom_out <= 28'd130557622;
    10'd271: brom_out <= 28'd61040039;
    10'd272: brom_out <= 28'd135333989;
    10'd273: brom_out <= 28'd210770212;
    10'd274: brom_out <= 28'd191032230;
    10'd275: brom_out <= 28'd225650462;
    10'd276: brom_out <= 28'd262046585;
    10'd277: brom_out <= 28'd42156432;
    10'd278: brom_out <= 28'd23486645;
    10'd279: brom_out <= 28'd61345534;
    10'd280: brom_out <= 28'd196308904;
    10'd281: brom_out <= 28'd97318594;
    10'd282: brom_out <= 28'd13519489;
    10'd283: brom_out <= 28'd244964541;
    10'd284: brom_out <= 28'd112472991;
    10'd285: brom_out <= 28'd17231623;
    10'd286: brom_out <= 28'd214085592;
    10'd287: brom_out <= 28'd173757017;
    10'd288: brom_out <= 28'd172037025;
    10'd289: brom_out <= 28'd219083512;
    10'd290: brom_out <= 28'd39153512;
    10'd291: brom_out <= 28'd65413984;
    10'd292: brom_out <= 28'd256674305;
    10'd293: brom_out <= 28'd129101436;
    10'd294: brom_out <= 28'd181639510;
    10'd295: brom_out <= 28'd176209504;
    10'd296: brom_out <= 28'd11699091;
    10'd297: brom_out <= 28'd186841927;
    10'd298: brom_out <= 28'd69161747;
    10'd299: brom_out <= 28'd189720821;
    10'd300: brom_out <= 28'd119224607;
    10'd301: brom_out <= 28'd211426643;
    10'd302: brom_out <= 28'd85021501;
    10'd303: brom_out <= 28'd266671862;
    10'd304: brom_out <= 28'd125976015;
    10'd305: brom_out <= 28'd10143115;
    10'd306: brom_out <= 28'd134866823;
    10'd307: brom_out <= 28'd181295312;
    10'd308: brom_out <= 28'd221052688;
    10'd309: brom_out <= 28'd102496964;
    10'd310: brom_out <= 28'd71064168;
    10'd311: brom_out <= 28'd201047927;
    10'd312: brom_out <= 28'd196317032;
    10'd313: brom_out <= 28'd47879495;
    10'd314: brom_out <= 28'd144414946;
    10'd315: brom_out <= 28'd48631162;
    10'd316: brom_out <= 28'd191727270;
    10'd317: brom_out <= 28'd175719113;
    10'd318: brom_out <= 28'd27244461;
    10'd319: brom_out <= 28'd69773246;
    10'd320: brom_out <= 28'd180167806;
    10'd321: brom_out <= 28'd260909397;
    10'd322: brom_out <= 28'd118518376;
    10'd323: brom_out <= 28'd158890265;
    10'd324: brom_out <= 28'd218546733;
    10'd325: brom_out <= 28'd66505970;
    10'd326: brom_out <= 28'd227894900;
    10'd327: brom_out <= 28'd236282586;
    10'd328: brom_out <= 28'd220656190;
    10'd329: brom_out <= 28'd251898247;
    10'd330: brom_out <= 28'd169491146;
    10'd331: brom_out <= 28'd202071175;
    10'd332: brom_out <= 28'd159115155;
    10'd333: brom_out <= 28'd225175773;
    10'd334: brom_out <= 28'd167885779;
    10'd335: brom_out <= 28'd20857483;
    10'd336: brom_out <= 28'd131414476;
    10'd337: brom_out <= 28'd50222736;
    10'd338: brom_out <= 28'd246744565;
    10'd339: brom_out <= 28'd108115637;
    10'd340: brom_out <= 28'd170752771;
    10'd341: brom_out <= 28'd242302870;
    10'd342: brom_out <= 28'd246656426;
    10'd343: brom_out <= 28'd210734246;
    10'd344: brom_out <= 28'd210831626;
    10'd345: brom_out <= 28'd126063290;
    10'd346: brom_out <= 28'd19493867;
    10'd347: brom_out <= 28'd12196542;
    10'd348: brom_out <= 28'd196898909;
    10'd349: brom_out <= 28'd43575145;
    10'd350: brom_out <= 28'd231358848;
    10'd351: brom_out <= 28'd186214186;
    10'd352: brom_out <= 28'd90670588;
    10'd353: brom_out <= 28'd236109059;
    10'd354: brom_out <= 28'd252952333;
    10'd355: brom_out <= 28'd168246630;
    10'd356: brom_out <= 28'd172642311;
    10'd357: brom_out <= 28'd24153138;
    10'd358: brom_out <= 28'd166530134;
    10'd359: brom_out <= 28'd136878682;
    10'd360: brom_out <= 28'd233080466;
    10'd361: brom_out <= 28'd165134943;
    10'd362: brom_out <= 28'd71933862;
    10'd363: brom_out <= 28'd99187435;
    10'd364: brom_out <= 28'd29274521;
    10'd365: brom_out <= 28'd61664240;
    10'd366: brom_out <= 28'd9757140;
    10'd367: brom_out <= 28'd86901749;
    10'd368: brom_out <= 28'd155624840;
    10'd369: brom_out <= 28'd198785423;
    10'd370: brom_out <= 28'd172227818;
    10'd371: brom_out <= 28'd181281889;
    10'd372: brom_out <= 28'd251290023;
    10'd373: brom_out <= 28'd11500489;
    10'd374: brom_out <= 28'd18729522;
    10'd375: brom_out <= 28'd85252512;
    10'd376: brom_out <= 28'd263111217;
    10'd377: brom_out <= 28'd160807241;
    10'd378: brom_out <= 28'd225636920;
    10'd379: brom_out <= 28'd226014319;
    10'd380: brom_out <= 28'd152865265;
    10'd381: brom_out <= 28'd143969870;
    10'd382: brom_out <= 28'd81777479;
    10'd383: brom_out <= 28'd50986641;
    10'd384: brom_out <= 28'd183496802;
    10'd385: brom_out <= 28'd203605228;
    10'd386: brom_out <= 28'd223427563;
    10'd387: brom_out <= 28'd205961920;
    10'd388: brom_out <= 28'd121675103;
    10'd389: brom_out <= 28'd182691070;
    10'd390: brom_out <= 28'd254450415;
    10'd391: brom_out <= 28'd206725018;
    10'd392: brom_out <= 28'd46529833;
    10'd393: brom_out <= 28'd225265815;
    10'd394: brom_out <= 28'd96648403;
    10'd395: brom_out <= 28'd133492414;
    10'd396: brom_out <= 28'd210568560;
    10'd397: brom_out <= 28'd97007849;
    10'd398: brom_out <= 28'd75673633;
    10'd399: brom_out <= 28'd195748297;
    10'd400: brom_out <= 28'd194721725;
    10'd401: brom_out <= 28'd166955734;
    10'd402: brom_out <= 28'd67012048;
    10'd403: brom_out <= 28'd234113027;
    10'd404: brom_out <= 28'd158816719;
    10'd405: brom_out <= 28'd234350511;
    10'd406: brom_out <= 28'd29871855;
    10'd407: brom_out <= 28'd126945619;
    10'd408: brom_out <= 28'd102579498;
    10'd409: brom_out <= 28'd72041134;
    10'd410: brom_out <= 28'd15927889;
    10'd411: brom_out <= 28'd110403916;
    10'd412: brom_out <= 28'd74680748;
    10'd413: brom_out <= 28'd227651751;
    10'd414: brom_out <= 28'd189591954;
    10'd415: brom_out <= 28'd95282463;
    10'd416: brom_out <= 28'd219782419;
    10'd417: brom_out <= 28'd18298478;
    10'd418: brom_out <= 28'd64217206;
    10'd419: brom_out <= 28'd191444307;
    10'd420: brom_out <= 28'd78462606;
    10'd421: brom_out <= 28'd25853611;
    10'd422: brom_out <= 28'd119707826;
    10'd423: brom_out <= 28'd60548134;
    10'd424: brom_out <= 28'd234642902;
    10'd425: brom_out <= 28'd134100899;
    10'd426: brom_out <= 28'd13250338;
    10'd427: brom_out <= 28'd232615475;
    10'd428: brom_out <= 28'd126821849;
    10'd429: brom_out <= 28'd61997323;
    10'd430: brom_out <= 28'd234030247;
    10'd431: brom_out <= 28'd113309038;
    10'd432: brom_out <= 28'd220769014;
    10'd433: brom_out <= 28'd10720790;
    10'd434: brom_out <= 28'd264486338;
    10'd435: brom_out <= 28'd81506359;
    10'd436: brom_out <= 28'd263678998;
    10'd437: brom_out <= 28'd109642647;
    10'd438: brom_out <= 28'd257268473;
    10'd439: brom_out <= 28'd68559335;
    10'd440: brom_out <= 28'd99790517;
    10'd441: brom_out <= 28'd61574386;
    10'd442: brom_out <= 28'd25569479;
    10'd443: brom_out <= 28'd34481514;
    10'd444: brom_out <= 28'd67307067;
    10'd445: brom_out <= 28'd8950678;
    10'd446: brom_out <= 28'd184516225;
    10'd447: brom_out <= 28'd144929841;
    10'd448: brom_out <= 28'd174860716;
    10'd449: brom_out <= 28'd71847431;
    10'd450: brom_out <= 28'd63703579;
    10'd451: brom_out <= 28'd205290416;
    10'd452: brom_out <= 28'd227611463;
    10'd453: brom_out <= 28'd53222994;
    10'd454: brom_out <= 28'd170227406;
    10'd455: brom_out <= 28'd99392088;
    10'd456: brom_out <= 28'd85069259;
    10'd457: brom_out <= 28'd145034471;
    10'd458: brom_out <= 28'd239545014;
    10'd459: brom_out <= 28'd100457939;
    10'd460: brom_out <= 28'd111284191;
    10'd461: brom_out <= 28'd143779572;
    10'd462: brom_out <= 28'd74998629;
    10'd463: brom_out <= 28'd25944135;
    10'd464: brom_out <= 28'd46265048;
    10'd465: brom_out <= 28'd19223387;
    10'd466: brom_out <= 28'd161827885;
    10'd467: brom_out <= 28'd253800975;
    10'd468: brom_out <= 28'd191662816;
    10'd469: brom_out <= 28'd137672988;
    10'd470: brom_out <= 28'd81956368;
    10'd471: brom_out <= 28'd5292226;
    10'd472: brom_out <= 28'd3179002;
    10'd473: brom_out <= 28'd164638888;
    10'd474: brom_out <= 28'd135666356;
    10'd475: brom_out <= 28'd126520315;
    10'd476: brom_out <= 28'd136571165;
    10'd477: brom_out <= 28'd74454717;
    10'd478: brom_out <= 28'd59208162;
    10'd479: brom_out <= 28'd190980049;
    10'd480: brom_out <= 28'd128108241;
    10'd481: brom_out <= 28'd67970382;
    10'd482: brom_out <= 28'd254509489;
    10'd483: brom_out <= 28'd254911070;
    10'd484: brom_out <= 28'd175792128;
    10'd485: brom_out <= 28'd49504466;
    10'd486: brom_out <= 28'd27692847;
    10'd487: brom_out <= 28'd188517169;
    10'd488: brom_out <= 28'd62061822;
    10'd489: brom_out <= 28'd146037274;
    10'd490: brom_out <= 28'd124400208;
    10'd491: brom_out <= 28'd170284131;
    10'd492: brom_out <= 28'd124918999;
    10'd493: brom_out <= 28'd107197955;
    10'd494: brom_out <= 28'd173702965;
    10'd495: brom_out <= 28'd227819465;
    10'd496: brom_out <= 28'd133782759;
    10'd497: brom_out <= 28'd212802310;
    10'd498: brom_out <= 28'd104557084;
    10'd499: brom_out <= 28'd136992892;
    10'd500: brom_out <= 28'd242795574;
    10'd501: brom_out <= 28'd247253507;
    10'd502: brom_out <= 28'd6576175;
    10'd503: brom_out <= 28'd148390399;
    10'd504: brom_out <= 28'd47877183;
    10'd505: brom_out <= 28'd83725194;
    10'd506: brom_out <= 28'd210298252;
    10'd507: brom_out <= 28'd98861208;
    10'd508: brom_out <= 28'd62045777;
    10'd509: brom_out <= 28'd238382196;
    10'd510: brom_out <= 28'd10130658;
    10'd511: brom_out <= 28'd71598752;
    default: brom_out <= 64'h1;
    endcase
end

generate
    if(DELAY == 1) begin
        assign b = brom_out;
    end
endgenerate

endmodule

