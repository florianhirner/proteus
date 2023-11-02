`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2022 21:47:33
// Design Name: 
// Module Name: dummy_memory_module
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
/*

module dummy_memory_module(clk, rst, memory_preload_completed, 
                                     read_address, read_out64, 
                                     write_address, write_in64);


input clk, rst; 
output memory_preload_completed; // This becomes 1 when the memory is loaded with operand data 
                                     read_address, read_out64, 
                                     write_address, write_in64

    BRAM64_1024 BR (
      .clka(clk), // input clka --> Clock signal to port-A 
      .wea(bram_wea), // input [0 : 0] wea --> Write enable signal to port-A
      .addra(bram_addra), // input [9 : 0] addra --> Address to port-A
      .dina(bram_dina), // input [63 : 0] dina --> Input data to port-A
      .clkb(clk), // input clkb --> Clock for port-B
      .addrb(bram_addrb), // input [9 : 0] addrb --> Address to port-B
      .doutb(bram_doutb) // output [63 : 0] doutb --> Data output from port-B
    );



endmodule
*/