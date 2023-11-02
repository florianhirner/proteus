`timescale 1ns / 1ps

module ntt_sdf_stage 
#(
    parameter LOGQ       = 0,
    parameter LOGN       = 0,
    parameter IS_Q_FIXED = 0,
    parameter Q          = 0,
    parameter DELAY_ADD  = 0,
    parameter DELAY_SUB  = 0,
    parameter DELAY_MUL  = 0,
    parameter   DSP_W    = 0,
    parameter   DSP_H    = 0,
    parameter DELAY_RED  = 0,
    parameter   TYPE_RED = 0,
    parameter   W        = 0,
    parameter   L        = 0,
    parameter   MULLAT   = 0,
    parameter   ADDPIP   = 0,
    parameter DELAY_DIV2 = 0,
    parameter DELAY_BRAM = 0,
    parameter DELAY_BROM = 0,
    parameter DELAY_FIFO = 0,
    parameter BTF_GS     = 0,
    // specific
    parameter STAGE      = 0
)(
    input               clk,
    input               rst,
    input               start,
    input               intt,
    input  [LOGQ-1:0]   stage_in,
    input  [LOGQ-1:0]   q,
    output              finish,
    output [LOGQ-1:0]   stage_out,
    output [LOGN-1:0]   tw_addr,
    input  [LOGQ-1:0]   tw_data
);

localparam STAGE_INPUT = 2**(LOGN-STAGE);
localparam DELAY_TOTAL = DELAY_ADD + DELAY_MUL + DELAY_RED;
localparam N_HALF      = STAGE_INPUT>>1;
localparam CASE        = DELAY_TOTAL <= N_HALF;

reg [LOGN-1:0] counter;
reg [LOGN-1:0] counter_inv_ntt;

reg [LOGN-1:0] counter_ntt_ct;
reg [LOGN-1:0] counter_intt_ct;

reg [LOGN-1:0] counter_ntt_gs;
reg [LOGN-1:0] counter_intt_gs;

wire SEL_IN, SEL_BTF, SEL_OUT;
wire [LOGQ-1:0] BTF_IN [0:2];
wire [LOGQ-1:0] BTF_OUT [0:1];
wire [LOGQ-1:0] FIFO_IN, FIFO_OUT;
wire [LOGQ-1:0] SHIFT_IN, SHIFT_OUT;
wire [LOGQ-1:0] STAGE_OUT, STAGE_OUT_DIV2;

// I/O connection

assign stage_out = STAGE_OUT_DIV2;

shiftreg #((N_HALF+DELAY_TOTAL+DELAY_DIV2), 1) DELAY_FINISH (clk, start, finish);
                        
// STAGE logic

always @(posedge clk) begin
    if (rst) begin
        counter <= 0;
    end
    else begin
        if (start) begin
            counter <= counter + 1;
        end
    end
end

// BTF with twiddle factor address logic
generate 
    if (BTF_GS) begin
    
        always @(posedge clk) begin
            if (rst) begin
                counter_ntt_gs <= 0;
                counter_intt_gs <= 0;
            end
            else begin
                if (start) begin
                    counter_ntt_gs <= counter_ntt_gs + 1;
                    counter_intt_gs <= counter_intt_gs + 1;
                end
            end
        end
        
        wire [LOGN-1:0] addr_gs;
        wire [LOGN-1:0] raddr_bitreverse_gs;
        wire [LOGN-1:0] raddr_bitreverse_pad_gs;
        wire [LOGN-1:0] raddr_index_sub_gs;
        wire [LOGN-1:0] raddr_index_split_gs;
        wire [LOGN-1:0] raddr_tw_gs;
        
        assign addr_gs = (intt) ? {{LOGN{1'b0}}, (STAGE==0)      ? 0 : (counter_intt_gs >> (LOGN-STAGE))}
                                : {{LOGN{1'b0}}, (STAGE+1==LOGN) ? 0 : counter_ntt_gs[(LOGN-STAGE-2):0]};
        
        bitreverse #(STAGE) BITREVERSE_GS (addr_gs, raddr_bitreverse_gs);
        
        assign raddr_bitreverse_pad_gs = (STAGE) ? {{LOGN{1'b0}}, raddr_bitreverse_gs[STAGE-1:0]} : 0;
        assign raddr_index_sub_gs      = (1 << STAGE) - raddr_bitreverse_pad_gs;
        assign raddr_index_split_gs    = {{LOGN{1'b0}}, addr_gs[LOGN-STAGE-1:0]};
        assign raddr_tw_gs             = (intt) ? raddr_index_sub_gs : raddr_index_split_gs;
        assign tw_addr                 = raddr_tw_gs;
        
//        (* keep_hierarchy = "yes" *) 
        btf_dif_gs #(
            .LOGQ(LOGQ),      
            .LOGN(LOGN),
            .IS_Q_FIXED(IS_Q_FIXED),
            .Q(Q),
            .DELAY_ADD(DELAY_ADD),   
            .DELAY_SUB(DELAY_SUB),   
            .DELAY_MUL(DELAY_MUL),  
            .DELAY_RED(DELAY_RED),
            .TYPE_RED(TYPE_RED),
            .W(W),
            .L(L),
            .MULLAT(MULLAT),
            .ADDPIP(ADDPIP),
            .DELAY_DIV2(DELAY_DIV2),
            .DELAY_BRAM(DELAY_BRAM),
            .DELAY_BROM(DELAY_BROM),
            .DELAY_FIFO(DELAY_FIFO),
            .BTF_GS(BTF_GS),
            // specific
            .STAGE(STAGE)
        ) BTF_DIF_GS(
            clk,
            rst,
            intt,
            BTF_IN[0],
            BTF_IN[1],
            BTF_IN[2],
            q,
            BTF_OUT[0],
            BTF_OUT[1]
        );
    end 
    else begin
    
        always @(posedge clk) begin
            if (rst) begin
                counter_ntt_ct <= 1;
                counter_intt_ct <= 2; // DELAY_BROM = 1 + 1 cycle for twiddle factor optimization
            end
            else begin
                if (start) begin
                    counter_ntt_ct <= counter_ntt_ct + 1;
                    counter_intt_ct <= counter_intt_ct + 1;
                end
            end
        end
        
        wire [LOGN-1:0] addr_ct;
        wire [LOGN-1:0] raddr_bitreverse_ct;
        wire [LOGN-1:0] raddr_bitreverse_pad_ct;
        wire [LOGN-1:0] raddr_index_sub_ct;
        wire [LOGN-1:0] raddr_index_split_ct;
        wire [LOGN-1:0] raddr_tw_ct;
        
        assign addr_ct = (intt) ? {{LOGN{1'b0}}, (STAGE+1==LOGN) ? 0 : counter_intt_ct[(LOGN-STAGE-2):0]}
                                : {{LOGN{1'b0}}, (counter_ntt_ct >> (LOGN-STAGE))};
        
        bitreverse #(STAGE) BITREVERSE_CT (addr_ct, raddr_bitreverse_ct);
        
        assign raddr_index_sub_ct      = (1 << (LOGN-STAGE-1)) - addr_ct;
        assign raddr_index_split_ct    = {{LOGN{1'b0}}, raddr_index_sub_ct[LOGN-STAGE-1:0]};
        assign raddr_bitreverse_pad_ct = (STAGE) ? {{LOGN{1'b0}}, raddr_bitreverse_ct[STAGE-1:0]} : 0;
        assign raddr_tw_ct             = (intt) ? raddr_index_split_ct : raddr_bitreverse_pad_ct;
        assign tw_addr                 = raddr_tw_ct;

//        (* keep_hierarchy = "yes" *) 
        btf_dit_ct #(
            .LOGQ(LOGQ),      
            .LOGN(LOGN),
            .IS_Q_FIXED(IS_Q_FIXED),
            .Q(Q),
            .DELAY_ADD(DELAY_ADD),   
            .DELAY_SUB(DELAY_SUB),   
            .DELAY_MUL(DELAY_MUL),  
            .DELAY_RED(DELAY_RED),
            .TYPE_RED(TYPE_RED),
            .W(W),
            .L(L),
            .MULLAT(MULLAT),
            .ADDPIP(ADDPIP),
            .DELAY_DIV2(DELAY_DIV2),
            .DELAY_BRAM(DELAY_BRAM),
            .DELAY_BROM(DELAY_BROM),
            .DELAY_FIFO(DELAY_FIFO),
            .BTF_GS(BTF_GS),
            // specific
            .STAGE(STAGE)
        ) BTF_DIT_CT(
            clk,
            rst,
            intt,
            BTF_IN[0],
            BTF_IN[1],
            BTF_IN[2],
            q,
            BTF_OUT[0],
            BTF_OUT[1]
        );
    end
endgenerate

// MOD DIV2

//(* keep_hierarchy = "yes" *) 
moddiv_by_2
#(
    .LOGQ(LOGQ),      
    .LOGN(LOGN),
    .IS_Q_FIXED(IS_Q_FIXED),
    .Q(Q),
    .DELAY_ADD(DELAY_ADD),   
    .DELAY_SUB(DELAY_SUB),   
    .DELAY_MUL(DELAY_MUL),  
    .DELAY_RED(DELAY_RED),
    .TYPE_RED(TYPE_RED),
    .W(W),
    .L(L),
    .MULLAT(MULLAT),
    .ADDPIP(ADDPIP),
    .DELAY_DIV2(DELAY_DIV2),
    .DELAY_BRAM(DELAY_BRAM),
    .DELAY_BROM(DELAY_BROM),
    .DELAY_FIFO(DELAY_FIFO),
    .BTF_GS(BTF_GS)
) MODDIV_BY_2 (
    clk,
    intt,
    STAGE_OUT,
    q,
    STAGE_OUT_DIV2
);


// STAGE connections (depends on latency of BTF operations)

generate

    assign STAGE_OUT = (SEL_OUT) ? SHIFT_OUT : BTF_OUT[0];
    
    shiftreg #(0, 1)           SHIFT_SEL_IN  (clk, (counter[LOGN-STAGE-1]), SEL_IN);
    shiftreg #(DELAY_TOTAL, 1) SHIFT_SEL_BTF (clk, (counter[LOGN-STAGE-1]), SEL_BTF);
    shiftreg #(DELAY_TOTAL, 1) SHIFT_SEL_OUT (clk, (~counter[LOGN-STAGE-1]), SEL_OUT);
    
    if (DELAY_TOTAL <= N_HALF) begin
//        (* keep_hierarchy = "yes" *) 
        shiftreg #(DELAY_TOTAL, LOGQ) SHIFT (clk, SHIFT_IN, SHIFT_OUT);

        assign BTF_IN[0] = (SEL_IN) ? FIFO_OUT : stage_in;
        assign BTF_IN[1] = (SEL_IN) ? stage_in : 0;
        assign BTF_IN[2] = tw_data;
        
        assign FIFO_IN   = (SEL_BTF) ? BTF_OUT[1] : BTF_OUT[0];
        assign SHIFT_IN  = FIFO_OUT;
    end
    else begin
//        (* keep_hierarchy = "yes" *) 
        shiftreg #(N_HALF, LOGQ) SHIFT (clk, SHIFT_IN, SHIFT_OUT);
    
        assign BTF_IN[0] = (SEL_IN) ? FIFO_OUT : 0;
        assign BTF_IN[1] = (SEL_IN) ? stage_in : 0;
        assign BTF_IN[2] = tw_data;
        
        assign FIFO_IN   = (SEL_IN) ? 0 : stage_in;
        assign SHIFT_IN  = BTF_OUT[1];
    end
endgenerate

// FIFO logic

wire delay_start;

wire            fifo_wr;
wire            fifo_rd;

assign fifo_wr = start;
assign fifo_rd = delay_start;

generate

    localparam FIFO_SIZE = (DELAY_TOTAL <= N_HALF) ? (N_HALF-DELAY_TOTAL) : (N_HALF);
    
    shiftreg #(FIFO_SIZE, 1) DELAY_START (clk, start, delay_start);
    
    if (FIFO_SIZE <= 128) begin // 64 bit
        shiftreg #(
            FIFO_SIZE,
            LOGQ
        ) FIFO (
            clk,
            FIFO_IN, 
            FIFO_OUT
        );
    end
    else begin
    
        // xpm_fifo_sync: Synchronous FIFO
        // Xilinx Parameterized Macro, version 2019.1
        
        // fifo ouput

        wire almost_empty;
        wire almost_full;
        wire data_valid;
        wire dbiterr;
        wire [LOGQ-1:0] dout;
        wire empty;
        wire full;
        wire overflow;
        wire prog_empty;
        wire prog_full;
        wire [$clog2(N_HALF):0] rd_data_count;
        wire rd_rst_busy;
        wire sbiterr;
        wire underflow;
        wire wr_ack;
        wire [$clog2(N_HALF):0] wr_data_count;
        wire wr_rst_busy;
        
        assign FIFO_OUT = dout;
        
        // fifo input

        wire [LOGQ-1:0] din;
        wire injectdbiterr;
        wire injectsbiterr;
        wire rd_en;
        wire sleep;
        wire wr_clk;
        wire wr_en;
        
        assign din           = FIFO_IN;
        assign injectdbiterr = 0;
        assign injectsbiterr = 0;
        assign rd_en         = fifo_rd;
        assign sleep         = 0;
        assign wr_clk        = clk;
        assign wr_en         = fifo_wr;
    
        xpm_fifo_sync #(
            .DOUT_RESET_VALUE("0"),                 // String
            .ECC_MODE("no_ecc"),                    // String
            .FIFO_MEMORY_TYPE("auto"),              // String // default: auto, block
            .FIFO_READ_LATENCY(1),                  // DECIMAL
            .FIFO_WRITE_DEPTH(N_HALF),              // DECIMAL
            .FULL_RESET_VALUE(0),                   // DECIMAL
            .PROG_EMPTY_THRESH(5),                  // DECIMAL
            .PROG_FULL_THRESH(FIFO_SIZE-5),         // DECIMAL
            .RD_DATA_COUNT_WIDTH($clog2(N_HALF)+1), // DECIMAL
            .READ_DATA_WIDTH(LOGQ),                 // DECIMAL
            .READ_MODE("fwft"),                     // String    | Allowed values: std, fwft. Default value = std. 
            .SIM_ASSERT_CHK(0),                     // DECIMAL   | 0=disable simulation messages, 1=enable simulation messages
            .USE_ADV_FEATURES("0707"),              // String
            .WAKEUP_TIME(0),                        // DECIMAL
            .WRITE_DATA_WIDTH(LOGQ),                // DECIMAL
            .WR_DATA_COUNT_WIDTH($clog2(N_HALF)+1)  // DECIMAL
       ) xpm_fifo_sync_inst (
            .almost_empty(almost_empty),
            .almost_full(almost_full),
            .data_valid(data_valid),
            .dbiterr(dbiterr),      
            .dout(dout),              
            .empty(empty),              
            .full(full),                  
            .overflow(overflow),           
            .prog_empty(prog_empty),       
            .prog_full(prog_full),       
            .rd_data_count(rd_data_count),
            .rd_rst_busy(rd_rst_busy),   
            .sbiterr(sbiterr),          
            .underflow(underflow),      
            .wr_ack(wr_ack),               
            .wr_data_count(wr_data_count), 
            .wr_rst_busy(wr_rst_busy),    
            .din(din),                     
            .injectdbiterr(injectdbiterr), 
            .injectsbiterr(injectsbiterr), 
            .rd_en(rd_en),
            .rst(rst),
            .sleep(sleep),
            .wr_clk(wr_clk),
            .wr_en(wr_en)
       );
    
       // End of xpm_fifo_sync_inst instantiation
        
    end
        
endgenerate

endmodule