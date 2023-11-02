////////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Graz, IAIK
// Engineer: Florian Hirner
////////////////////////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

`timescale 1ns / 1ps

module csa #(N=64, CSA=6) (csa_in, csa_out);

input [N-1:0] csa_in [CSA-1:0];
output [N-1:0] csa_out [$clog2(CSA)-1:0];

wire [N-1:0] FA [$clog2(CSA)-1:0];

generate
    for (genvar i=0; i<N; i=i+1) begin
        wire [$clog2(CSA)-1:0] b;
        assign b = csa_in[0][i] + csa_in[1][i] + csa_in[2][i] + csa_in[3][i] + csa_in[4][i] + csa_in[5][i];
        for (genvar j=0; j<$clog2(CSA); j=j+1) begin
            assign FA[j][i] = b[j];
        end
    end
endgenerate

assign csa_out[0] = FA[0] << 0;
assign csa_out[1] = FA[1] << 1;
assign csa_out[2] = FA[2] << 2;

endmodule