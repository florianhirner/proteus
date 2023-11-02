// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Jan 26 17:17:02 2022
// Host        : t14a running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/aikata/CryptEng_class/CE_Assignment3/CryptoProcessor_2021_22/CryptoProcessor_2021_22/project_1/project_1.srcs/sources_1/ip/BRAM64_1024_1/BRAM64_1024_stub.v
// Design      : BRAM64_1024
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_3,Vivado 2019.1" *)
module BRAM64_1024(clka, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[9:0],dina[63:0],clkb,addrb[9:0],doutb[63:0]" */;
  input clka;
  input [0:0]wea;
  input [9:0]addra;
  input [63:0]dina;
  input clkb;
  input [9:0]addrb;
  output [63:0]doutb;
endmodule
