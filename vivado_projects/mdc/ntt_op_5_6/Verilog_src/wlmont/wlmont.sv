
// /////////////////////////////////////////////////
// Description: Parametric NTT-friendly WL Montgomery reduction unit
// Author     : Ahmet Can Mert, TU Graz
////////////////////////////////////////////////////

// Total latency: L*MULLAT     --> due to multiplication steps during loop 
//              + L*(ADDPIP+1) --> due to addition step during loop (it is 0 if LOGQ-W<=24)
//              + (ADDPIP+1)   --> due to final subtraction step

module wlmont
# (
    parameter LOGQ  = 60, // bit-size of prime
    parameter W     = 15, // word size
    parameter L     = 4,  // montgomery loop count (calculated as $ceil(LOGQ/W))
    parameter MULLAT= 1,  // latency of multiply and add units
    parameter ADDPIP= 0   // 0: adders are pipelined into 64-bit chunks, 1: adders are not pipelined
)
(
    input                  clk,
    input     [2*LOGQ-1:0] A,
    input     [  LOGQ-1:0] q,
    output reg[  LOGQ-1:0] B
);

wire [2*LOGQ-1:0] loop_i [L-1:0];
wire [2*LOGQ-1:0] loop_o [L-1:0];

generate
    for (genvar i=0; i<L; i=i+1) begin
        wlmont_sub #(LOGQ, 
                     W, 
                     2*LOGQ-i*(W-1), 
                     ((LOGQ>=(2*LOGQ-(i+1)*(W-1))) ? (LOGQ+1) : (2*LOGQ-(i+1)*(W-1))), 
                     MULLAT, 
                     ADDPIP) wsu (clk,
                                                                                       q[LOGQ-1:W],
                                                                                       loop_i[i][2*LOGQ-i*(W-1)-1:0],
                                                                                       loop_o[i][((LOGQ>=(2*LOGQ-(i+1)*(W-1))) ? (LOGQ+1) : (2*LOGQ-(i+1)*(W-1)))-1:0]);
    end
endgenerate

assign loop_i[0] = A;
generate
    for (genvar k=0; k<L-1; k=k+1) begin
        assign loop_i[k+1][2*LOGQ-(k+1)*(W-1)-1:0] = loop_o[k][2*LOGQ-(k+1)*(W-1)-1:0];
    end
endgenerate

// final correction
(* use_dsp = "no" *) wire [LOGQ:0] B_q;
assign B_q = loop_o[L-1][LOGQ:0] - q;

always @(posedge clk) begin
    if (B_q[LOGQ] == 1)
        B <= loop_o[L-1];
    else
        B <= B_q;
end

// Total latency (just for debugging)
localparam TOTAL_LATENCY = L*MULLAT + ((LOGQ-W <= 24) ? (((2*LOGQ-47)/W)*(ADDPIP+1)) : (L*(ADDPIP+1))) + (ADDPIP+1);

endmodule
