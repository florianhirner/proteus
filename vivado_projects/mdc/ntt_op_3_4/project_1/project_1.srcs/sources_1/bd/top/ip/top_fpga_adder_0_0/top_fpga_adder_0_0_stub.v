// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Mar 16 15:23:40 2020
// Host        : DESKTOP-CKUVL5A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/SABER_FPGA/project_1/project_1.srcs/sources_1/bd/top/ip/top_fpga_adder_0_0/top_fpga_adder_0_0_stub.v
// Design      : top_fpga_adder_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fpga_adder,Vivado 2018.1" *)
module top_fpga_adder_0_0(clk, control_low_word, control_high_word, 
  dina_ext_low_word, dina_ext_high_word, dout_ext_low_word, dout_ext_high_word, status)
/* synthesis syn_black_box black_box_pad_pin="clk,control_low_word[31:0],control_high_word[31:0],dina_ext_low_word[31:0],dina_ext_high_word[31:0],dout_ext_low_word[31:0],dout_ext_high_word[31:0],status[31:0]" */;
  input clk;
  input [31:0]control_low_word;
  input [31:0]control_high_word;
  input [31:0]dina_ext_low_word;
  input [31:0]dina_ext_high_word;
  output [31:0]dout_ext_low_word;
  output [31:0]dout_ext_high_word;
  output [31:0]status;
endmodule
