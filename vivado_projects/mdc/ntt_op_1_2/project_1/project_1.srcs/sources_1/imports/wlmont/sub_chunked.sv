
// /////////////////////////////////////////////////
// Description: Parametric sub unit chunked into K-pieces 
// Author     : Ahmet Can Mert, TU Graz
////////////////////////////////////////////////////

module sub_chunked
# (
    parameter LOG_I  = 32, // bit-size of input
    parameter LOG_O  = 32, // bit-size of output
    parameter ADDPIP = 0   // add pipeline stages
)
(
    input clk,
    input [LOG_I-1:0] A,
    input [LOG_I-1:0] B,
    output[LOG_O-1:0] C
);

// TODO

endmodule