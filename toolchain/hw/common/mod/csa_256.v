// ------------------------------------------

// ------------------------------------------ FA

// ------------------------------------------

module FA(input  x,y,z,

          output c,s);



assign {c,s} = x+y+z;



endmodule



// ------------------------------------------

// ------------------------------------------ CSA

// ------------------------------------------

module CSA #(DATA_SIZE=32)

            (input      [DATA_SIZE-1:0] x,y,z,

             output reg [DATA_SIZE-1:0] c,s);



wire [DATA_SIZE-1:0] c_t,s_t;



generate

	genvar csa_idx;



	for(csa_idx=0; csa_idx<DATA_SIZE; csa_idx=csa_idx+1) begin: FA_LOOP

		FA fau(x[csa_idx],y[csa_idx],z[csa_idx],c_t[csa_idx],s_t[csa_idx]);

	end

endgenerate



always @(*) begin: SHIFT_LOOP

	integer i;



	for(i=0; i<DATA_SIZE-1; i=i+1) begin

		c[i+1] = c_t[i];

		s[i]   = s_t[i];

	end



	c[0]           = 1'b0;

	s[DATA_SIZE-1] = s_t[DATA_SIZE-1];

end



endmodule
