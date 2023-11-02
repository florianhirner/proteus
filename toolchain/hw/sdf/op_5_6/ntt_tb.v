`timescale 1ns / 1ps

module ntt_tb();

`include "parameters.vh"

localparam N = 2**LOGN;

// NTT SDF Unit

reg                              clk;
reg                              rst;
reg                              start;

reg                              fntt_start, intt_start;
wire                             fntt_intt, intt_intt;
wire [((LOGN<9) ? 9 : LOGN-1):0] fntt_read_address, intt_read_address;
wire [((LOGN<9) ? 9 : LOGN-1):0] fntt_write_address, intt_write_address;
wire                             fntt_wea, intt_wea;
reg  [LOGQ-1:0]                  fntt_data64_in, intt_data64_in;
reg  [LOGQ-1:0]                  q;
wire                             fntt_finish, intt_finish;
wire [LOGQ-1:0]                  fntt_data64_out, intt_data64_out; 

assign fntt_intt = 0;
assign intt_intt = 1;

ntt_memory_wrapper DUT_FNTT_MEM_WRAPPER (
    clk,
    rst,
    fntt_start,
    fntt_intt,
    fntt_read_address,
    fntt_write_address,
    fntt_wea,
    fntt_data64_in,
    q,
    fntt_finish,
    fntt_data64_out
);

ntt_memory_wrapper DUT_INTT_MEM_WRAPPER (
    clk,
    rst,
    intt_start,
    intt_intt,
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

////////////////////////////////////////////////////////////////////////////////////////////////

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

////////////////////////////////////////////////////////////////////////////////////////////////

integer i;

initial begin
    $readmemh("NTT_DIN.mem", ntt_din);
    $readmemh("NTT_DOUT.mem", ntt_dout);
    $readmemh("INTT_DIN.mem", intt_din);
    $readmemh("INTT_DOUT.mem", intt_dout);
end

////////////////////////////////////////////////////////////////////////////////////////////////

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

end

////////////////////////////////////////////////////////////////////////////////////////////////
// Forward NTT
////////////////////////////////////////////////////////////////////////////////////////////////

reg [63:0] fntt_cycle_counter;

always @(posedge clk) begin
    if (rst) begin
        fntt_cycle_counter <= 0;
    end
    else if (fntt_start && ~fntt_finish) begin
        fntt_cycle_counter <= fntt_cycle_counter + 1;
    end
end

initial begin
    
    wait(start);
    
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
    
    $display("[FNTT] test took %d cycles", fntt_cycle_counter);
    
    if (valid_ntt)
        $display("[FNTT] test passed");
    else
        $display("[FNTT] test failed");
end

////////////////////////////////////////////////////////////////////////////////////////////////
// Inverse NTT
////////////////////////////////////////////////////////////////////////////////////////////////

reg [63:0] intt_cycle_counter;

always @(posedge clk) begin
    if (rst) begin
        intt_cycle_counter <= 0;
    end
    else if (intt_start && ~intt_finish) begin
        intt_cycle_counter <= intt_cycle_counter + 1;
    end
end

initial begin

    wait(start);
    
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
    
    $display("[INTT] test took %d cycles", intt_cycle_counter);
    
    if (valid_intt)
        $display("[INTT] test passed");
    else
        $display("[INTT] test failed");
        
    #1000;
    $finish;
end

endmodule
