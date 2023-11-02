`timescale 1ns / 1ps

module ntt_tb();

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
parameter   R_w      = (TYPE_RED) ? 64'd9223372036854251519 : 0; // must be multiplied with output of montgomery reduction unit
parameter DELAY_DIV2 = 1;
parameter DELAY_BRAM = 1;  // 1 or 2
parameter DELAY_BROM = 1;  // 1 or 2
parameter DELAY_FIFO = 1;  // 1 or 2
parameter BTF_GS     = 0;

////////////////////////////////////////////////////////////////////////////////
//localparam            LOGQ  = 60; // bit-size of prime
//localparam            W     = 15; // word size
//localparam            L     = 4;  // montgomery loop count (calculated as $ceil(LOGQ/W))
//localparam            MULLAT= 1;  // latency of multiply and add units
//localparam            ADDPIP= 0;  // 0: adders are pipelined into 64-bit chunks, 1: adders are not pipelined
//localparam [LOGQ-1:0] Q = 60'd576460752308273153;
/*
localparam            LOGQ  = 54; // bit-size of prime
localparam            W     = 14; // word size
localparam            L     = 4; // montgomery loop count (calculated as $ceil(LOGQ/W))
localparam            MULLAT= 1; // latency of multiply and add units
localparam            ADDPIP= 0; // 0: adders are pipelined into 64-bit chunks, 1: adders are not pipelined
localparam [LOGQ-1:0] Q = 54'd9007199255560193; // 54-bit prime

localparam            LOGQ  = 40; // bit-size of prime
localparam            W     = 16; // word size
localparam            L     = 3; // montgomery loop count (calculated as $ceil(LOGQ/W))
localparam            MULLAT= 1; // latency of multiply and add units
localparam            ADDPIP= 0; // 0: adders are pipelined into 64-bit chunks, 1: adders are not pipelined
localparam [LOGQ-1:0] Q = 40'd549760663553; // 40-bit prime

localparam            LOGQ  = 31; // bit-size of prime
localparam            W     = 16; // word size
localparam            L     = 2; // montgomery loop count (calculated as $ceil(LOGQ/W))
localparam            MULLAT= 1; // latency of multiply and add units
localparam            ADDPIP= 0; // 0: adders are pipelined into 64-bit chunks, 1: adders are not pipelined
localparam [LOGQ-1:0] Q = 31'd1073872897; // 31-bit prime

localparam            LOGQ  = 28; // bit-size of prime
localparam            W     = 14; // word size
localparam            L     = 2; // montgomery loop count (calculated as $ceil(LOGQ/W))
localparam            MULLAT= 1; // latency of multiply and add units
localparam            ADDPIP= 0; // 0: adders are pipelined into 64-bit chunks, 1: adders are not pipelined
localparam [LOGQ-1:0] Q = 28'd134250497; // 28-bit prime
*/

localparam TEST_NUM = 10_000;
localparam TOTAL_LATENCY = L*MULLAT + ((LOGQ-W <= 24) ? (((2*LOGQ-47)/W)*(ADDPIP+1)) : (L*(ADDPIP+1))) + (ADDPIP+1);

////////////////////////////////////////////////////////////////////////////////

parameter N          = 2**LOGN;

// NTT SDF Unit

reg                             clk;
reg                             rst;
reg                             start;

reg                             fntt_start, intt_start;
wire [((LOGN<9) ? 9 : LOGN):0]  fntt_read_address, intt_read_address;
wire [((LOGN<9) ? 9 : LOGN):0]  fntt_write_address, intt_write_address;
wire                            fntt_wea, intt_wea;
reg  [LOGQ-1:0]                 fntt_data64_in, intt_data64_in;
reg  [LOGQ-1:0]                 q;
wire                            fntt_finish, intt_finish;
wire [LOGQ-1:0]                 fntt_data64_out, intt_data64_out; 

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
) DUT_FNTT_MEM_WRAPPER (
    clk,
    rst,
    fntt_start,
    1'b0, // intt,
    fntt_read_address,
    fntt_write_address,
    fntt_wea,
    fntt_data64_in,
    q,
    fntt_finish,
    fntt_data64_out
);

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
) DUT_INTT_MEM_WRAPPER (
    clk,
    rst,
    intt_start,
    1'b01, // intt,
    intt_read_address,
    intt_write_address,
    intt_wea,
    intt_data64_in,
    q,
    intt_finish,
    intt_data64_out
);

// clock
always #5 clk = ~clk;

// TEST Unit for Forward NTT
reg [LOGQ-1:0] ntt_din     [0:(1<<(LOGN))-1];
reg [LOGQ-1:0] ntt_dout    [0:(1<<(LOGN))-1];
reg [LOGQ-1:0] ntt_dout_hw [0:(1<<(LOGN))-1];

// TEST Unit for Inverse NTT
reg [LOGQ-1:0] intt_din     [0:(1<<(LOGN))-1];
reg [LOGQ-1:0] intt_dout    [0:(1<<(LOGN))-1];
reg [LOGQ-1:0] intt_dout_hw [0:(1<<(LOGN))-1];


reg valid_ntt, valid_intt;
reg [LOGN:0] valid_counter_ntt, valid_counter_intt;

integer i;

initial begin
    $readmemh("NTT_DIN.mem", ntt_din);
    $readmemh("NTT_DOUT.mem", ntt_dout);
    $readmemh("INTT_DIN.mem", intt_din);
    $readmemh("INTT_DOUT.mem", intt_dout);
end

// initilization and reset
initial begin
    clk=0;
    rst=0;
    start=0;
    
    fntt_start=0;
    intt_start=0;

    valid_ntt=0;
    valid_counter_ntt=0;
    
    valid_intt=0;
    valid_counter_intt=0;
    
    #10;
    rst=1;
    
    #10;
    rst=0;
    start=1;
    
    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Forward NTT
    ////////////////////////////////////////////////////////////////////////////////////////////////

    #10
    fntt_start=1;
    @(posedge fntt_finish);
    fntt_start=0;
    
    #10;
    fntt_start=0;
    
    for (i=0; i<N; i=i+1) begin
        valid_counter_ntt = (ntt_dout_hw[i] == ntt_dout[i]) ? valid_counter_ntt + 1 : valid_counter_ntt;

    end
    valid_ntt = (valid_counter_ntt==N);
    
    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Inverse NTT
    ////////////////////////////////////////////////////////////////////////////////////////////////

    #10
    intt_start=1;
    @(posedge intt_finish);
    intt_start=0;
    
    #10;
    intt_start=0;
    
    for (i=0; i<N; i=i+1) begin
        valid_counter_intt = (intt_dout_hw[i] == intt_dout[i]) ? valid_counter_intt + 1 : valid_counter_intt;

    end
    valid_intt = (valid_counter_intt==N);
end

always @(posedge clk) begin
    q <= Q;
end

always @(posedge clk) begin
    fntt_data64_in <= ntt_din[fntt_read_address];
end

always @(posedge clk) begin
    if (fntt_wea) begin
        ntt_dout_hw[fntt_write_address] <= fntt_data64_out;
    end
end

always @(posedge clk) begin
    intt_data64_in <= intt_din[intt_read_address];
end

always @(posedge clk) begin
    if (intt_wea) begin
        intt_dout_hw[intt_write_address] <= intt_data64_out;
    end
end

endmodule