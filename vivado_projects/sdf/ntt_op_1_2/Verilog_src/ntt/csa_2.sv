
// /////////////////////////////////////////////////
// Description: Parametric carry-save-adder
// Author     : Ahmet Can Mert, TU Graz
////////////////////////////////////////////////////

// Inputs (x,y,z): K-bit integers
// Outputs (c,s) : K-bit integers
//
//  Example:  x:  * * * * * * * * *
//            y:  * * * * * * * * *
//            z:  * * * * * * * * *
//           -----------------------
//            s:  * * * * * * * * *
//            c:  * * * * * * * * 0  

module csa_2
#(
    parameter K = 33, // bit-size
	parameter N = 3   // number of inputs (0, 1, 2, 3)
)
(
    input  [K-1:0] x,y,z,
    output [K-1:0] c,s
);

generate
	if (N == 3) begin
		assign c[0] = 0;
		for(genvar i=0; i<K-1; i=i+1) begin: FA_LOOP
			assign {c[i+1],s[i]} = x[i] + y[i] + z[i];
		end
		assign s[K-1] = (x[K-1] + y[K-1] + z[K-1]);
	end
	else if (N == 2) begin
		assign s = x;
		assign c = y;		
	end
	else if (N == 1) begin
		assign s = x;
		assign c = 0;
	end
	else begin
		assign s = 0;
		assign c = 0;
	end
endgenerate

endmodule
