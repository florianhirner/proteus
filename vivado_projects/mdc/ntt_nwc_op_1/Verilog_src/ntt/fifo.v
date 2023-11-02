// /////////////////////////////////////////////////
// Description: Parametric simple FIFO model
//              ("first-word-fall through")
//              (Without empty,full flags)
// Author     : Ahmet Can Mert, TU Graz
////////////////////////////////////////////////////

`timescale 1ns / 1ps

module fifo
#(
    parameter LOGQ  = 32,
    parameter LOGN  = 8,
    parameter DELAY = 1 // 1 or 2 (read latency)
)(
    input            clk,
    input            rst,
    input            fifo_wr,
    input [LOGQ-1:0] fifo_din,
    input            fifo_rd,
    output[LOGQ-1:0] fifo_dout
);

(* ram_style = "block" *) reg [LOGQ-1:0] fifo [0:(1<<LOGN)-1];

reg [LOGN-1:0] ptr_wr,ptr_rd;
reg [LOGQ-1:0] fifo_dout_r,fifo_dout_r2;

// write pointer
always @(posedge clk) begin
    if(rst)
        ptr_wr <= 0;
    else if(fifo_wr)
        ptr_wr <= ptr_wr + 1;
    else
        ptr_wr <= ptr_wr;
end

// read pointer
always @(posedge clk) begin
    if(rst)
        ptr_rd <= 0;
    else if(fifo_rd)
        ptr_rd <= ptr_rd + 1;
    else
        ptr_rd <= ptr_rd;
end

// write operation
always @(posedge clk) begin
    fifo[ptr_wr] <= (fifo_wr == 1'b1) ? fifo_din : fifo[ptr_wr];
end

// read operation
always @(posedge clk) begin
    fifo_dout_r <= (fifo_rd == 1'b1) ? fifo[ptr_rd] : fifo_dout_r;
end

// optional output register
generate
    if(DELAY == 1) begin
        assign fifo_dout = fifo_dout_r;
        // always @(*) begin
        //     fifo_dout_r2 = fifo_dout_r;
        // end
    end else begin
        assign fifo_dout = fifo_dout_r2;
        always @(posedge clk) begin
            fifo_dout_r2 <= fifo_dout_r;
        end
    end
endgenerate

// assign fifo_dout = fifo_dout_r2;

endmodule