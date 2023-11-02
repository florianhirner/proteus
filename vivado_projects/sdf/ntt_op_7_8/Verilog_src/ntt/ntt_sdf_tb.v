`timescale 1ns / 1ps

module ntt_sdf_tb();

parameter LOGQ       = 64;
parameter LOGN       = 4;
parameter IS_Q_FIXED = 0;
parameter Q          = (IS_Q_FIXED) ? 64'd18446744069414584321 : 0;
parameter DELAY_ADD  = 1; // 2;  // 1 or 2
parameter DELAY_SUB  = 1; // 2;  // 1 or 2
parameter DELAY_MUL  = 0; // 2; 
parameter DELAY_RED  = 0; // 3;

// parameter DELAY_BRAM = 1;  // 1 or 2
// parameter DELAY_BROM = 1;  // 1 or 2
// parameter DELAY_FIFO = 1;  // 1 or 2 

// NTT SDF Unit
reg             clk, rst;
reg             start;
reg [LOGQ-1:0]  ntt_in;
reg [LOGQ-1:0]  q;
wire            finish;
wire [LOGQ-1:0] ntt_out;

//assign q = 64'd18446744069414584321;
//assign a = ntt_din[raddr];

reg start_0;

always @(posedge clk) begin
    start_0 <= start;
    q <= 64'd18446744069414584321;
    ntt_in <= ntt_din[raddr];
end

ntt_sdf_wrapper #(
    LOGQ,       
    LOGN,       
    IS_Q_FIXED, 
    Q,          
    DELAY_ADD,    
    DELAY_SUB,    
    DELAY_MUL,   
    DELAY_RED
) DUT_NTT (
    clk,
    rst,
    // start,
    start_0,
    ntt_in,
    q,
    finish,
    ntt_out
);


// I/O test BRAM unit
reg [LOGN-1:0] raddr;
reg [LOGN-1:0] waddr;

// clock
always #5 clk = ~clk;

// TEST for SINGLE NTT UNIT
reg [LOGQ-1:0] ntt_din     [0:(1<<(LOGN))-1];
reg [LOGQ-1:0] ntt_dout    [0:(1<<(LOGN))-1];
reg [LOGQ-1:0] ntt_dout_hw [0:(1<<(LOGN))-1];

initial begin

// ntt
$readmemh("NTT_DIN.mem", ntt_din);
$readmemh("NTT_DOUT.mem", ntt_dout);

end

// initilization and reset
initial begin
    clk=0;
    rst=0;
    start=0;
    raddr=0; 
    waddr=0;
    
    #10;
    rst=1;
    
    #10;
    rst=0;
    start=1;
    
    #10
    @(posedge finish);
    
    #160
    start=0;
    
end

// reading data
always @(posedge clk) begin
    raddr <= (start) ? raddr + 1 : raddr;
end

/*
// data will arrive two cc after start becoming HIGH
shiftreg #(2,NTT_NUM*LOGQ) sr(clk,ar,a);

// output data and verification
integer k;
initial begin
    #500;
    // NTT delay
    #(10*(1<<LOGN_i));

    // pipeline delay
    #(10*((LOGN_i-1)*(DELAY_ADD+DELAY_MUL+DELAY_RED) + 1*(DELAY_ADD) + 1));

    // save output 
    for(k=0; k<(1<<LOGN_i); k=k+1) begin
        ntt_dout_hw[k] = b;
        #10;
    end

    // compare output
    for(k=0; k<(1<<LOGN_i); k=k+1) begin
        if(ntt_dout[k] != ntt_dout_hw[k]) begin
            $display("Error at index %d: expected=%d, calculated=%d\n",k,ntt_dout[k],ntt_dout_hw[k]);
            $stop();
        end
    end

    $display("SUCCESS!");
    $finish();
end
*/

endmodule