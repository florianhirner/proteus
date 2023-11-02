
// /////////////////////////////////////////////////
// Description: Parametric multiply-and-add unit for NTT-friendly WL Montgomery
// Author     : Ahmet Can Mert, TU Graz
////////////////////////////////////////////////////

// P = (A * B + C + D) << SHIFT
// (I/O sizes are bounded by DSP properties)

// OP_TYPE:
// 0: A * B + C + D
// 1: A * B +     D
// 2: A * B

module int_mult_add
# (
    parameter LOGA    = 24,
    parameter LOGB    = 17,
    parameter LOGC    = 47,
    parameter LOGD    = 1,
    parameter LOGP    = 48,
    parameter SHIFT   = 0,
    parameter LATENCY = 1,
    parameter OP_TYPE = 0
)
(
    input clk,
    input [LOGA-1:0] A,
    input [LOGB-1:0] B,
    input [LOGC-1:0] C,
    input [LOGD-1:0] D,
    output[LOGP-1:0] P
);

localparam LOG_OUT = ((LOGA+LOGB)>LOGC) ? (LOGA+LOGB+1) : (LOGC+1);

(* use_dsp = "yes" *) wire [LOG_OUT-1:0] m;  
generate
    if (OP_TYPE == 0)
        assign m = A*B + C + D;
    else if (OP_TYPE == 1)
        assign m = A*B + D;    
    else if (OP_TYPE == 2)
        assign m = A*B;    
    else
        assign m = 0;
endgenerate

reg [LOGP-1:0] m_delay [LATENCY-1:0];

always @(posedge clk) begin
    m_delay[0] <= m;
    for (int i = 0; i < LATENCY-1; i = i+1) begin
        m_delay[i+1] <= m_delay[i];
    end
end

// output assignment
generate
    if (LOGP > (LOG_OUT+SHIFT)) begin
        assign P[LOGP-1:LOG_OUT+SHIFT] = 0;
    end
endgenerate
assign P[LOG_OUT+SHIFT-1:SHIFT] = m_delay[LATENCY-1];
generate
    if (SHIFT !=  0) begin
        assign P[SHIFT-1:0] = 0;
    end
endgenerate

endmodule

