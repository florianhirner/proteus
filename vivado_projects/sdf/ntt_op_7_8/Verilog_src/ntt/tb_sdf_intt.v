`timescale 1ns / 1ps

module tb_sdf_intt();

parameter LOGQ       = 64;
parameter LOGN       = 4;
parameter IS_Q_FIXED = 0;
parameter Q          = (IS_Q_FIXED) ? 64'd18446744069414584321 : 0;
parameter DELAY_ADD  = 2; // 1 or 2
parameter DELAY_SUB  = 2; // 1 or 2
parameter DELAY_MUL  = 2; // 2 or 3; 2=without input buffer; 3=with input buffer 
parameter DELAY_RED  = 3;
parameter DELAY_DIV2 = 1;
parameter DELAY_BRAM = 1;  // 1 or 2
parameter DELAY_BROM = 1;  // 1 or 2
parameter DELAY_FIFO = 1;  // 1 or 2
parameter BTF_GS     = 1;

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
    LOGQ,       
    LOGN,       
    IS_Q_FIXED, 
    Q,          
    DELAY_ADD,    
    DELAY_SUB,    
    DELAY_MUL,   
    DELAY_RED,
    DELAY_DIV2,
    DELAY_BRAM,
    DELAY_BROM,
    DELAY_FIFO,
    BTF_GS
) DUT_INTT (
    clk,
    rst,
    intt_start,
    1'b1, // intt,
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

// TEST Unit for Inverse NTT
reg [LOGQ-1:0] intt_din     [0:(1<<(LOGN))-1];
reg [LOGQ-1:0] intt_dout    [0:(1<<(LOGN))-1];
reg [LOGQ-1:0] intt_dout_hw [0:(1<<(LOGN))-1];

reg valid_ntt, valid_intt;
reg [LOGN:0] valid_counter_ntt, valid_counter_intt;

integer i;

initial begin
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
    q <= 64'd18446744069414584321;
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