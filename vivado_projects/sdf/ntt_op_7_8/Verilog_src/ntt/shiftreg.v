// /////////////////////////////////////////////////
// Description: Parametric shift register
// Author     : Ahmet Can Mert, TU Graz
////////////////////////////////////////////////////

`timescale 1ns / 1ps

module shiftreg #(
    parameter SHIFT = 1, 
    parameter DATA  = 32
)(
    input                 clk,
    input      [DATA-1:0] data_in,
    output reg [DATA-1:0] data_out
);

// (* ram_style = "block" *) 

reg [DATA-1:0] shift_array [SHIFT-1:0];

/*
integer i;
initial begin
    for (i=0; i<SHIFT; i=i+1) begin
        shift_array[i] = 0;
    end
end
*/

always @(posedge clk) begin
    shift_array[0] <= data_in;
end

genvar shft;

generate
    for(shft=0; shft < SHIFT-1; shft=shft+1) begin: DELAY_BLOCK
        always @(posedge clk) begin
            shift_array[shft+1] <= shift_array[shft];
        end
    end
endgenerate

always @(*) begin
    data_out = (SHIFT == 0) ? data_in : shift_array[SHIFT-1];
end

endmodule