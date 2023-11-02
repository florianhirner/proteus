////////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Graz, IAIK
// Engineer: Florian Hirner
////////////////////////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module csa_stage #(N=64, CSA=6, IN=6, OUT=(IN/CSA)*$clog2(CSA)+(IN%CSA)) (clk, csa_in, csa_out);

input           clk;
input   [N-1:0] csa_in [IN-1:0];
output  [N-1:0] csa_out [OUT-1:0];

localparam NUM_CSA = (IN>CSA) ? (IN/CSA) : 1;
localparam OFFSET  = (IN>CSA) ? (IN%CSA) : 0;

// stage 
generate
    // skip 
    for (genvar i=0; i<OFFSET; i=i+1) begin
        assign csa_out[i] = csa_in[i];
    end
    // csa
    for (genvar i=0; i<NUM_CSA; i=i+1) begin
        wire [N-1:0] CSA_IN [CSA-1:0];
        wire [N-1:0] CSA_OUT [$clog2(CSA)-1:0];
        
        for (genvar j=0; j<CSA; j=j+1) begin
            assign CSA_IN[j] = csa_in[(i*CSA)+j+OFFSET];
        end
        
        for (genvar j=0; j<3; j=j+1) begin
            assign csa_out[(i*$clog2(CSA))+j+OFFSET] = CSA_OUT[j];
        end
        
        csa #(.N(N), .CSA(CSA)) CSA_REDUCTION (CSA_IN, CSA_OUT);
    end
endgenerate

endmodule
