//////////////////////////////////////////////////////////////////////////////////

// Cryptographic Engineering Project: Graz University of Technology
// Based on initial design by Sujoy Sinha Roy and Ahmet Can Mert. 
// The codes are for academic research use only and does not come with any support or any responsibility.

//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module ComputeCore(clk, rst, address_ext, dina_ext, wea_ext,
					command_in, command_we0, command_we1, 
					doutb_ext,
					done_ins_computation,
					error_trng
					);

input clk, rst; 
input [9:0] address_ext;
input [63:0] dina_ext;
input wea_ext;

input [34:0] command_in;
input command_we0, command_we1;
output [63:0] doutb_ext;
output done_ins_computation; // This becomes 1 when the instruction has finished. 
output error_trng;

reg [34:0] command_reg0, command_reg1;
wire [4:0] INS;
wire [9:0] OP1, OP2, OP3;
wire op2_sel;
wire [9:0] OP1_or_OP2;

always @(posedge clk)
begin
    if(rst)
        command_reg0 <= 35'd0;
	else if(command_we0)
		command_reg0 <= command_in;
	else
	   command_reg0 <= command_reg0;	
end
always @(posedge clk)
begin
    if(rst)
        command_reg1 <= 35'd0;
	else if(command_we1)
		command_reg1 <= command_in;
	else
	   command_reg1 <= command_reg1;	
end


// Parsing of INS-code, operand1, operand2, operand3 from command_reg0
// INS is 5 bit and all operands are 10 bits. 
assign INS = command_reg0[4:0];
assign OP1 = command_reg0[14:5];
assign OP2 = command_reg0[24:15];
assign OP3 = command_reg0[34:25];	

// Declaration of BRAM signal. The BRAM is Simple-Dual-Port, and uses Port-A for writing and Port-B for reading. 
// The BRAM has 64-bit words an there are 1024 words. Hence the address range is 0-1023 and address selection is 10 bit.                           
wire [9:0] rd_address, wt_address;
wire [9:0] addra, addrb;
wire wea;
wire [63:0] dina_0, dina_1;
wire [63:0] doutb_0, doutb_1;

// Declaration of TRNG related signals.
wire trng_rst, trng_enable; 
wire [63:0] trng_out;
wire [9:0] num_rng_words;   // Number of random words to be generated. Max value 512. User specifies it in OP1 of the TRNG instruction.
wire [9:0] trng_write_address; 
wire trng_wea, done_trng;
wire error_trng;

// Declaration of AES related signals
wire aes_rst, aes_enc_or_dec;
wire [9:0] aes_read_address, aes_write_address;
wire aes_wea;
wire done_aes;
wire [63:0] aes_out;

//Declaration of Poly Add/Sub related signals
wire addsub_rst,add_or_sub,polyas_wea,polyas_op2_sel;
wire [9:0]  polyas_read_address, polyas_write_address;
wire [63:0] polyas_out;
wire done_polyas;

//Declaration of Poly mult related signals
wire mult_rst,mult_start,polymult_wea,polymult_op2_sel;
wire [9:0]  polymult_read_address, polymult_write_address;
wire [63:0] polymult_out_0, polymult_out_1;
wire done_polymult;

// When the cryptoprocessor finds that the decoded instruction is TRNG/AES, 
// it makes the reset signal for the TRNG/AES low so that TRNG/AES starts functioning. 
// INS:18 --> TRNG
// INS:19 --> AES Enc
// INS:20 --> Aes Dec
// INS:22 --> PolyAdd
// INS:23 --> PolySub
// INS:24 --> PolyMul
assign trng_rst = (INS==5'd18) ? 1'b0 : 1'b1;
assign trng_enable = ~trng_rst;
assign aes_rst     = (INS==5'd19 || INS==5'd20) ? 1'b0 : 1'b1;
assign aes_enc_or_dec = (INS==5'd20);
assign addsub_rst = (INS==5'd22 || INS==5'd23) ? 1'b0 : 1'b1;
assign mult_rst = (INS==5'd24) ? 1'b0 : 1'b1;
assign add_or_sub = (INS==5'd22) ? 1'b1 : 1'b0;// 1 if add otherise 0 for sub

// BRAM read/write relative-address and control signals are generated based on different instructions and their enable signals. 
assign rd_address = (trng_enable) ? 10'd0              : (~aes_rst) ? aes_read_address  : (~addsub_rst) ? polyas_read_address : (~mult_rst) ? polymult_read_address : address_ext;
assign wt_address = (trng_enable) ? trng_write_address : (~aes_rst) ? aes_write_address : (~addsub_rst) ? polyas_write_address: (~mult_rst) ? polymult_write_address : address_ext;
assign wea        = (trng_enable) ? trng_wea           : (~aes_rst) ? aes_wea           : (~addsub_rst) ? polyas_wea : (~mult_rst) ? polymult_wea : wea_ext;
assign dina_0     = (trng_enable) ? trng_out           : (~aes_rst) ? aes_out           : (~addsub_rst) ? polyas_out : (~mult_rst) ? polymult_out_0 : dina_ext;
assign dina_1     = (trng_enable) ? trng_out           : (~aes_rst) ? aes_out           : (~addsub_rst) ? polyas_out : (~mult_rst) ? polymult_out_0 : dina_ext;

// BRAM read/write physical-address generation
assign op2_sel = (~addsub_rst) ? polyas_op2_sel : (~mult_rst) ? polymult_op2_sel : 1'b0;    // Currently OP2 is disabled. 
assign OP1_or_OP2 = (op2_sel) ? OP2 : OP1;
assign addra = OP3 + wt_address;
assign addrb = OP1_or_OP2 + rd_address;
assign doutb_ext = doutb_0;

// Currently there is only one instruction.
assign done_ins_computation = (done_trng || done_aes || done_polyas || done_polymult);



/////////////////////////////////////////////////////////////////////////
////////////////// Start: Instantiation of poly multiplication unit ///////////////////////

parameter LOGQ       = 64; // bit-size of prime
parameter LOGN       = 4;
parameter IS_Q_FIXED = 0;
parameter Q          = (TYPE_RED) ? 64'd9223372036855300097 : 64'd18446744069414584321;
parameter DELAY_ADD  = 2; 
parameter DELAY_SUB  = 2;
parameter DELAY_MUL  = 2;
parameter   DSP_W    = 24;
parameter   DSP_H    = 17;
parameter DELAY_RED  = (TYPE_RED) ? TOTAL_LATENCY : 3;
parameter   TYPE_RED = 0; // 0=SPARSE; 1=WORD-LEVEL MONTGOMERY
parameter   W        = 16; // word size
parameter   L        = 4; // montgomery loop count (calculated as $ceil(LOGQ/W))
parameter   MULLAT   = 1;  // latency of multiply and add units
parameter   ADDPIP   = 0;  // 0: adders are pipelined into 64-bit chunks, 1: adders are not pipelined
parameter   R_w      = 64'd9223372036854251519;
parameter DELAY_DIV2 = 1;
parameter DELAY_BRAM = 1;  // 1 or 2
parameter DELAY_BROM = 1;  // 1 or 2
parameter DELAY_FIFO = 1;  // 1 or 2
parameter BTF_GS     = 0;

localparam TEST_NUM = 10_000;
localparam TOTAL_LATENCY = L*MULLAT + ((LOGQ-W <= 24) ? (((2*LOGQ-47)/W)*(ADDPIP+1)) : (L*(ADDPIP+1))) + (ADDPIP+1);

////////////////////////////////////////////////////////////////////////////////
wire intt, btf_gs;
wire [LOGQ-1:0] q;

assign mult_start = ~mult_rst;
assign intt = OP2[0];
assign btf_gs = OP2[1];
assign q = Q;
assign polymult_op2_sel = 0;

wire [19:0] ntt_read_address, ntt_write_address;

assign polymult_read_address = ntt_read_address[9:0];
assign polymult_write_address = ntt_write_address[9:0];

// (* keep_hierarchy = "yes" *) 
ntt_memory_wrapper #(
    .LOGQ(LOGQ),      
    .LOGN(LOGN),
    .IS_Q_FIXED(IS_Q_FIXED),
    .Q(Q),
    .DELAY_ADD(DELAY_ADD),   
    .DELAY_SUB(DELAY_SUB),   
    .DELAY_MUL(DELAY_MUL),  
    .DSP_W(DSP_W),
    .DSP_H(DSP_H),
    .DELAY_RED(DELAY_RED),
    .TYPE_RED(TYPE_RED),
    .W(W),
    .L(L),
    .MULLAT(MULLAT),
    .ADDPIP(ADDPIP),
    .R_w(R_w),
    .DELAY_DIV2(DELAY_DIV2),
    .DELAY_BRAM(DELAY_BRAM),
    .DELAY_BROM(DELAY_BROM),
    .DELAY_FIFO(DELAY_FIFO),
    .BTF_GS(BTF_GS)
) DUT_NTT_MEM_WRAPPER (
    clk,
    mult_rst,
    mult_start,
    intt,
    btf_gs,
    ntt_read_address,
    ntt_write_address,
    polymult_wea,
    doutb_0,
    doutb_1,
    q,
    done_polymult,
    polymult_out_0,
    polymult_out_1
);

////////////////// End: Instantiation of poly multiplication unit /////////////////////////
/////////////////////////////////////////////////////////////////////////



////////////////// Start: Instantiation of BRAM /////////////////////////
/////////////////////////////////////////////////////////////////////////

// The BRAM memory of the cryptoprocessor. Different instructions read their operands from it and write results to it.
// The BRAM is in simple-dual-port configuration, i.e., port-A is used for writing and port-B is used for reading.           									
BRAM64_1024 BR_0 (
  .clka(clk), // input clka --> Clock signal to port-A 
  .wea(wea), // input [0 : 0] wea --> Write enable signal to port-A
  .addra(addra), // input [9 : 0] addra --> Address to port-A
  .dina(dina_0), // input [63 : 0] dina --> Input data to port-A
  .clkb(clk), // input clkb --> Clock for port-B
  .addrb(addrb), // input [9 : 0] addrb --> Address to port-B
  .doutb(doutb_0) // output [63 : 0] doutb --> Data output from port-B
);

BRAM64_1024 BR_1 (
  .clka(clk), // input clka --> Clock signal to port-A 
  .wea(wea), // input [0 : 0] wea --> Write enable signal to port-A
  .addra(addra), // input [9 : 0] addra --> Address to port-A
  .dina(dina_1), // input [63 : 0] dina --> Input data to port-A
  .clkb(clk), // input clkb --> Clock for port-B
  .addrb(addrb), // input [9 : 0] addrb --> Address to port-B
  .doutb(doutb_1) // output [63 : 0] doutb --> Data output from port-B
);

//////////////////// End: Instantiation of BRAM /////////////////////////
/////////////////////////////////////////////////////////////////////////


endmodule
