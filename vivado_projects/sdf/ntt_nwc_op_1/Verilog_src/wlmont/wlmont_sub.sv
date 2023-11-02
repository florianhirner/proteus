
// /////////////////////////////////////////////////
// Description: Parametric subroutine of NTT-friendly WL Montgomery reduction unit
// Author     : Ahmet Can Mert, TU Graz
////////////////////////////////////////////////////

// Assume: W <= 17 (otherwise, it might create inefficiency during integer multiplication)

// To = qH*T2 + T2H + carry where T2H = Ti >> W
//                                T2  = (-T2) mod 2^w

// if W <= 17:                         
//     if log(T2H) <= 47:
//         qHT2_1 = qH_1 * T2 + T2H + carry
//         qHT2_2 = qH_2 * T2
//         qHT2_3 = qH_3 * T2
//         ...
//         CSA(...) + CPA(* with pipeline *)
//     else:
//         qHT2_1 = qH_1 * T2 + carry
//         qHT2_2 = qH_2 * T2
//         qHT2_3 = qH_3 * T2
//         T2H
//         ...
//         CSA(...) + CPA(* with pipeline *)
// else:
//     Not defined 

module wlmont_sub
# (
    parameter LOGQ  = 31, // bit-size of prime
    parameter W     = 16, // word size
    parameter LOGTi = 31, // bit-size of current reduction input
    parameter LOGTo = 16, // bit-size of current reduction output
    parameter MULLAT= 1,  // latency of multiply and add unit
    parameter ADDPIP= 0   // 0: last adder is pipelined into 64-bit chunks, 1: last adder is not pipelined
)
(
    input                  clk,
    input     [LOGQ-W-1:0] qH,
    input     [LOGTi -1:0] Ti,
    output reg[LOGTo -1:0] To
);

localparam DSP_SIZE_A = 24;

// parameters
localparam LOGqH = LOGQ-W;
localparam LOGqH_NUM = $rtoi($ceil(LOGqH/(DSP_SIZE_A*1.0)));
localparam LOGT2H= LOGTi-W;

localparam TREE_DEPTH = (LOGT2H <= 47) ? LOGqH_NUM : (LOGqH_NUM+1);
localparam TREE_WIDTH_I = (LOGT2H > (DSP_SIZE_A+W)) ? (LOGT2H + 1) : (W+DSP_SIZE_A + 1);
localparam TREE_WIDTH_O = (LOGT2H > (DSP_SIZE_A+W)) ? (LOGT2H + 1) : (W+DSP_SIZE_A + 1);

// signals
wire [TREE_WIDTH_I-1:0] tree_i [TREE_DEPTH-1:0];
wire [TREE_WIDTH_O-1:0] tree_o [1:0];

// 
wire [LOGT2H-1:0] T2H;
reg  [LOGT2H-1:0] T2H_reg [MULLAT-1:0];
wire [W-1:0]      T2L;
wire [W-1:0]      T2;
wire              carry;

// pre-comps
assign T2H   = Ti[LOGTi -1:W];
assign T2L   = Ti[W-1:0];
assign T2    = -T2L;
assign carry = T2[W-1] | T2L[W-1];

// computation
always @(posedge clk) begin
    T2H_reg[0] <= T2H;
    for (int j = 0; j < MULLAT-1; j = j+1) begin
        T2H_reg[j+1] <= T2H_reg[j];
    end
end

generate
    if (LOGT2H <= 47) begin
        for (genvar i=0; i<LOGqH_NUM; i=i+1) begin
            if (i == 0) begin
                if ((i+1)*DSP_SIZE_A < LOGqH) int_mult_add #(DSP_SIZE_A        ,W,LOGT2H,1,TREE_WIDTH_I,i*DSP_SIZE_A,MULLAT,0) imuu(.clk(clk),.A(qH[i*DSP_SIZE_A+:DSP_SIZE_A]),.B(T2),.C(T2H),.D(carry),.P(tree_i[i]));
                else                          int_mult_add #(LOGqH-i*DSP_SIZE_A,W,LOGT2H,1,TREE_WIDTH_I,i*DSP_SIZE_A,MULLAT,0) imuu(.clk(clk),.A(qH[LOGqH-1:i*DSP_SIZE_A]    ),.B(T2),.C(T2H),.D(carry),.P(tree_i[i]));
            end
            else begin
                if ((i+1)*DSP_SIZE_A < LOGqH) int_mult_add #(DSP_SIZE_A        ,W,1,1,TREE_WIDTH_I,i*DSP_SIZE_A,MULLAT,2) imuu(.clk(clk),.A(qH[i*DSP_SIZE_A+:DSP_SIZE_A]),.B(T2),.C(1'b0),.D(1'b0),.P(tree_i[i]));
                else                          int_mult_add #(LOGqH-i*DSP_SIZE_A,W,1,1,TREE_WIDTH_I,i*DSP_SIZE_A,MULLAT,2) imuu(.clk(clk),.A(qH[LOGqH-1:i*DSP_SIZE_A]    ),.B(T2),.C(1'b0),.D(1'b0),.P(tree_i[i]));
            end
        end
    end
    else begin
        for (genvar i=0; i<(LOGqH_NUM+1); i=i+1) begin
            if (i == 0) begin
                if ((i+1)*DSP_SIZE_A < LOGqH) int_mult_add #(DSP_SIZE_A        ,W,1,1,TREE_WIDTH_I,i*DSP_SIZE_A,MULLAT,1) imuu(.clk(clk),.A(qH[i*DSP_SIZE_A+:DSP_SIZE_A]),.B(T2),.C(1'b0),.D(carry),.P(tree_i[i]));
                else                          int_mult_add #(LOGqH-i*DSP_SIZE_A,W,1,1,TREE_WIDTH_I,i*DSP_SIZE_A,MULLAT,1) imuu(.clk(clk),.A(qH[LOGqH-1:i*DSP_SIZE_A]    ),.B(T2),.C(1'b0),.D(carry),.P(tree_i[i]));
            end
            else if (i == LOGqH_NUM) begin
                assign tree_i[i] = T2H_reg[MULLAT-1];
            end
            else begin
                if ((i+1)*DSP_SIZE_A < LOGqH) int_mult_add #(DSP_SIZE_A        ,W,1,1,TREE_WIDTH_I,i*DSP_SIZE_A,MULLAT,2) imuu(.clk(clk),.A(qH[i*DSP_SIZE_A+:DSP_SIZE_A]),.B(T2),.C(1'b0),.D(1'b0),.P(tree_i[i]));
                else                          int_mult_add #(LOGqH-i*DSP_SIZE_A,W,1,1,TREE_WIDTH_I,i*DSP_SIZE_A,MULLAT,2) imuu(.clk(clk),.A(qH[LOGqH-1:i*DSP_SIZE_A]    ),.B(T2),.C(1'b0),.D(1'b0),.P(tree_i[i]));
            end
        end
    end
endgenerate

// reduction
csa_tree #(TREE_WIDTH_I,TREE_DEPTH,TREE_WIDTH_O) ctu (tree_i,tree_o);

// final addition
generate
    if (TREE_DEPTH < 2) begin
        always @(*) begin
            To = tree_o[0];
        end
    end
    else begin
        always @(posedge clk) begin
            To <= tree_o[0] + tree_o[1];
        end
    end
endgenerate

endmodule