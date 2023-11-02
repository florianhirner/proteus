// /////////////////////////////////////////////////
// Description: Parametric carry-save-adder tree
// Author     : Ahmet Can Mert, TU Graz
////////////////////////////////////////////////////

// This module requires some parameters (that need to be calculated by its user)
// Parameters:
// - SIZE_I: bit-size of input
// - SIZE_O: bit-size of output (should be specificed by the user as ~ SIZE_I + log_2(DEPTH))
// - DEPTH: depth of adder tree

`timescale 1ns / 1ps

module csa_tree
#
(
	parameter SIZE_I    = 32,
	parameter DEPTH     = 10,
	parameter SIZE_O    = (SIZE_I + $rtoi($ceil($clog2(DEPTH))))
)
(
	input [SIZE_I-1:0] A [0:DEPTH-1],
	output[SIZE_O-1:0] B [0:1]
);

localparam CSA_NUM   = (DEPTH/3);
localparam NEW_DEPTH = (CSA_NUM*2) + (DEPTH % 3);

localparam NEW_SIZE_I= (SIZE_I == SIZE_O) ? SIZE_O : (SIZE_I+1);
localparam NEW_SIZE_O= SIZE_O;

wire [SIZE_O-1:0] tree_1 [0:DEPTH-1];
wire [NEW_SIZE_O-1:0] tree_2 [0:NEW_DEPTH-1];
wire [NEW_SIZE_I-1:0] tree_3 [0:NEW_DEPTH-1];

// first, assign inputs to tree
generate
	for(genvar n=0; n<DEPTH; n=n+1) begin: I_ASSIGN
        assign tree_1[n][SIZE_I-1:0] = A[n];
        if (SIZE_O > SIZE_I) begin
		    assign tree_1[n][SIZE_O-1:SIZE_I] = 0;
	    end
    end
endgenerate

// reduction
generate
	// reduce
	for(genvar k=0; k<CSA_NUM; k=k+1) begin: LAYER_LOOP
		csa_2 #(SIZE_O,3) csau(tree_1[3*k+0],tree_1[3*k+1],tree_1[3*k+2],
			                   tree_2[2*k+0],tree_2[2*k+1]);
	end
	// move rest to next layer
	for(genvar m=3*CSA_NUM; m<DEPTH; m=m+1) begin: ASSIGN_LOOP
		assign tree_2[m-CSA_NUM] = tree_1[m];
	end
endgenerate

// generate next tree
generate
	for(genvar i=0; i<NEW_DEPTH; i=i+1) begin: TREE_LOOP
		assign tree_3[i] = tree_2[i][NEW_SIZE_I-1:0];
	end
endgenerate

// start reducing next layer
generate
	if (NEW_DEPTH == 2) begin
		assign B[0] = tree_3[0];
		assign B[1] = tree_3[1];
	end
	else begin
		csa_tree #(NEW_SIZE_I,NEW_DEPTH,NEW_SIZE_O) csatu(tree_3,B);
	end
endgenerate

endmodule
