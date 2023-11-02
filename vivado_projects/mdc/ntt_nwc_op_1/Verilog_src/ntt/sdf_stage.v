`timescale 1ns / 1ps

module ntt_mdc_stage 
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
    parameter   R_w      = 0,
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
    input               btf_gs,
    input  [LOGQ-1:0]   stage_in_0,
    input  [LOGQ-1:0]   stage_in_1,
    input  [LOGQ-1:0]   q,
    output              finish,
    output [LOGQ-1:0]   stage_out_0,
    output [LOGQ-1:0]   stage_out_1,
    output [LOGN-1:0]   tw_addr,
    input  [LOGQ-1:0]   tw_data
);

localparam STAGE_INPUT = 2**(LOGN-STAGE);
localparam N_HALF      = STAGE_INPUT>>1;
localparam N_QUARTER   = STAGE_INPUT>>2;
localparam DELAY_TOTAL = DELAY_ADD + DELAY_MUL + DELAY_RED; // includes all modmul units

// minimize fan out
(* dont_touch = "yes" *) reg intt_reg, btf_gs_reg;

always @(posedge clk) begin
    intt_reg <= intt;
    btf_gs_reg <= btf_gs;
end

reg start_reg;
reg [LOGQ-1:0] stage_in_0_reg, stage_in_1_reg;

always @(posedge clk) begin
    start_reg <= start;
    stage_in_0_reg <= stage_in_0;
    stage_in_1_reg <= stage_in_1;
end

// STAGE logic

reg [LOGN-1:0] counter;
reg [((LOGN==STAGE+1) ? 0 : LOGN-STAGE-2):0] counter_intt;

always @(posedge clk) begin
    if (rst) begin
        counter <= 0;
    end
    else begin
        if (start_reg) begin
            counter <= counter + 1;
        end
    end
end

wire counter_intt_enable;
shiftreg #(((N_HALF<=2) ? 0 : N_HALF-2), 1) DELAY_INTT_EN (clk, start_reg, counter_intt_enable);

always @(posedge clk) begin
    if (rst) begin
        counter_intt <= N_QUARTER - 2;
    end
    else begin
        if (start_reg) begin
            counter_intt <= counter_intt - 1;
        end
    end
end

reg [LOGN-1:0] counter_sw;

wire counter_sw_enable_fntt, counter_sw_enable_intt;

shiftreg #(DELAY_TOTAL, 1) DELAY_SW_ENABLE (clk, start_reg, counter_sw_enable_fntt);
assign counter_sw_enable_intt = (start_reg && intt_reg);

always @(posedge clk) begin
    if (rst) begin
        counter_sw <= 0;
    end
    else begin
        if (counter_sw_enable_fntt || counter_sw_enable_intt) begin
            counter_sw <= counter_sw + 1;
        end
    end
end

// fifo logic start

localparam FIFO_SIZE = STAGE_INPUT>>2;

wire delay_start;
wire fifo_wr, fifo_rd;

assign fifo_wr = start_reg;
assign fifo_rd = delay_start;

shiftreg #(FIFO_SIZE, 1) DELAY_START (clk, start_reg, delay_start);

// fifo logic end 

wire [LOGQ-1:0] STEP1 [0:1];
wire [LOGQ-1:0] STEP2 [0:1];
wire [LOGQ-1:0] STEP3 [0:1];
wire [LOGQ-1:0] STEP4 [0:1];
wire [LOGQ-1:0] STEP5 [0:1];
wire [LOGQ-1:0] STAGE_DIV2 [0:1];

// Step 1 - BTF computation

wire [LOGQ-1:0] BTF_IN [0:2];
wire [LOGQ-1:0] BTF_OUT [0:1];

assign BTF_IN[0] = (intt_reg) ? STEP4[0] : stage_in_0_reg;
assign BTF_IN[1] = (intt_reg) ? STEP4[1] : stage_in_1_reg;

wire [LOGN-1:0] raddr_ct, raddr_gs;
wire [LOGN-1:0] raddr_bitreverse_ct, raddr_bitreverse_gs;
wire [LOGN-1:0] raddr_bitreverse_pad_ct, raddr_bitreverse_pad_gs;
wire [LOGN-1:0] tw_addr_ct, tw_addr_gs;

wire [LOGQ-1:0] tw_data_ct, tw_data_gs;

// FNTT - CT

reg [LOGN-1:0] counter_ct;

generate
    if (LOGN==STAGE+1) begin
        assign raddr_ct =  (start&&~start_reg) ? 1 
                                               : ((start_reg) ? {{LOGN{1'b0}}, (counter+2 >> (LOGN-STAGE-1))} 
                                                              : 0 );
    end
    else begin
        assign raddr_ct = (start_reg) ? {{LOGN{1'b0}}, (counter+2 >> (LOGN-STAGE-1))} : 0 ;
    end
endgenerate

bitreverse #(STAGE) BITREVERSE_CT (raddr_ct, raddr_bitreverse_ct);
assign raddr_bitreverse_pad_ct = (STAGE) ? {{LOGN{1'b0}}, raddr_bitreverse_ct[STAGE-1:0]} : 0;
assign tw_addr_ct = (intt_reg) ? counter_intt : raddr_bitreverse_pad_ct;
assign tw_data_ct = tw_data;

// INTT - GS

//assign raddr_gs = (intt_reg) ? ( (LOGN==STAGE+1) ? counter : (counter-N_QUARTER) >> (LOGN-STAGE-1) ) 
//                             : counter;
//bitreverse #(STAGE) BITREVERSE_GS (raddr_gs, raddr_bitreverse_gs);
//assign raddr_bitreverse_pad_gs = (STAGE) ? {{LOGN{1'b0}}, raddr_bitreverse_gs[STAGE-1:0]} : 0;
//assign tw_addr_gs = (intt_reg) ? (2**STAGE) - raddr_bitreverse_pad_gs : raddr_gs;

assign tw_addr_gs = (LOGN==STAGE+1) ? counter : (counter-N_QUARTER) >> (LOGN-STAGE-1);
assign tw_data_gs = tw_data;

// TW
assign tw_addr = (btf_gs_reg) ? tw_addr_gs : tw_addr_ct;
assign BTF_IN[2] = (btf_gs_reg) ? tw_data_gs : tw_data_ct;

// BTF core

btf_unified #(
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
) BTF_UNIFIED (
    clk,
    rst,
    intt_reg,
    btf_gs_reg,
    BTF_IN[0],
    BTF_IN[1],
    BTF_IN[2],
    q,
    BTF_OUT[0],
    BTF_OUT[1]
);

assign STEP1[0] = (intt_reg) ? stage_in_0_reg : BTF_OUT[0];
assign STEP1[1] = (intt_reg) ? stage_in_1_reg : BTF_OUT[1];

// Step 2 - FIFO
wire [LOGQ-1:0] FIFO_IN_0;
wire [LOGQ-1:0] FIFO_OUT_0;

assign FIFO_IN_0 = (intt_reg) ? STEP1[1]: BTF_OUT[1];
assign STEP2[0] = STEP1[0];
assign STEP2[1] = FIFO_OUT_0;

generate
    
    if (FIFO_SIZE <= 128) begin // 64 bit
        shiftreg #(
            FIFO_SIZE,
            LOGQ
        ) FIFO_0 (
            clk,
            FIFO_IN_0,
            FIFO_OUT_0
        );
    end
    else begin

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
        wire [$clog2(N_QUARTER):0] rd_data_count;
        wire rd_rst_busy;
        wire sbiterr;
        wire underflow;
        wire wr_ack;
        wire [$clog2(N_QUARTER):0] wr_data_count;
        wire wr_rst_busy;
        
        assign FIFO_OUT_0 = dout;
        
        // fifo input

        wire [LOGQ-1:0] din;
        wire injectdbiterr;
        wire injectsbiterr;
        wire rd_en;
        wire sleep;
        wire wr_clk;
        wire wr_en;
        
        assign din           = FIFO_IN_0;
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
            .FIFO_WRITE_DEPTH(N_QUARTER),              // DECIMAL
            .FULL_RESET_VALUE(0),                   // DECIMAL
            .PROG_EMPTY_THRESH(5),                  // DECIMAL
            .PROG_FULL_THRESH(FIFO_SIZE-5),         // DECIMAL
            .RD_DATA_COUNT_WIDTH($clog2(N_QUARTER)+1), // DECIMAL
            .READ_DATA_WIDTH(LOGQ),                 // DECIMAL
            .READ_MODE("fwft"),                     // String    | Allowed values: std, fwft. Default value = std. 
            .SIM_ASSERT_CHK(0),                     // DECIMAL   | 0=disable simulation messages, 1=enable simulation messages
            .USE_ADV_FEATURES("0707"),              // String
            .WAKEUP_TIME(0),                        // DECIMAL
            .WRITE_DATA_WIDTH(LOGQ),                // DECIMAL
            .WR_DATA_COUNT_WIDTH($clog2(N_QUARTER)+1)  // DECIMAL
       ) xpm_fifo_sync_inst_0 (
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
    end
        
endgenerate

// STEP 3 - SWITCH

wire SEL_SW;

assign SEL_SW = (LOGN == STAGE+1) ? ~TYPE_RED : counter_sw[LOGN-STAGE-2];
assign STEP3[0] = (SEL_SW) ? STEP2[1] : STEP2[0];
assign STEP3[1] = (SEL_SW) ? STEP2[0] : STEP2[1];

// STEP 4 - FIFO 
wire [LOGQ-1:0] FIFO_IN_1;
wire [LOGQ-1:0] FIFO_OUT_1;

assign FIFO_IN_1 = STEP3[0];
assign STEP4[0] = FIFO_OUT_1;
assign STEP4[1] = STEP3[1];

generate

    if (FIFO_SIZE <= 128) begin // 64 bit
        shiftreg #(
            FIFO_SIZE,
            LOGQ
        ) FIFO_1 (
            clk,
            FIFO_IN_1,
            FIFO_OUT_1
        );
    end
    else begin
    
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
        wire [$clog2(N_QUARTER):0] rd_data_count;
        wire rd_rst_busy;
        wire sbiterr;
        wire underflow;
        wire wr_ack;
        wire [$clog2(N_QUARTER):0] wr_data_count;
        wire wr_rst_busy;
        
        assign FIFO_OUT_1 = dout;
        
        // fifo input

        wire [LOGQ-1:0] din;
        wire injectdbiterr;
        wire injectsbiterr;
        wire rd_en;
        wire sleep;
        wire wr_clk;
        wire wr_en;
        
        assign din           = FIFO_IN_1;
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
            .FIFO_WRITE_DEPTH(N_QUARTER),              // DECIMAL
            .FULL_RESET_VALUE(0),                   // DECIMAL
            .PROG_EMPTY_THRESH(5),                  // DECIMAL
            .PROG_FULL_THRESH(FIFO_SIZE-5),         // DECIMAL
            .RD_DATA_COUNT_WIDTH($clog2(N_QUARTER)+1), // DECIMAL
            .READ_DATA_WIDTH(LOGQ),                 // DECIMAL
            .READ_MODE("fwft"),                     // String    | Allowed values: std, fwft. Default value = std. 
            .SIM_ASSERT_CHK(0),                     // DECIMAL   | 0=disable simulation messages, 1=enable simulation messages
            .USE_ADV_FEATURES("0707"),              // String
            .WAKEUP_TIME(0),                        // DECIMAL
            .WRITE_DATA_WIDTH(LOGQ),                // DECIMAL
            .WR_DATA_COUNT_WIDTH($clog2(N_QUARTER)+1)  // DECIMAL
       ) xpm_fifo_sync_inst_1 (
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
    end
        
endgenerate

// STEP 5 - MODDIV (only in case of ntt)

assign STEP5[0] = (intt_reg) ? STAGE_DIV2[0] : STEP4[0];
assign STEP5[1] = (intt_reg) ? STAGE_DIV2[1] : STEP4[1];

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
) MODDIV_0 (
    clk,
    intt_reg,
    BTF_OUT[0],
    q,
    STAGE_DIV2[0]
);

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
) MODDIV_1 (
    clk,
    intt_reg,
    BTF_OUT[1],
    q,
    STAGE_DIV2[1]
);

// TODO test - buffer output due to timing issue


// I/O connections
reg finish_reg;
reg [LOGQ-1:0] stage_out_0_reg, stage_out_1_reg;
     
wire finish_fntt, finish_intt;

shiftreg #((N_QUARTER+DELAY_TOTAL), 1) DELAY_FINISH_FNTT (clk, start_reg, finish_fntt);
shiftreg #((N_QUARTER+DELAY_TOTAL+DELAY_DIV2), 1) DELAY_FINISH_INTT (clk, start_reg, finish_intt);

always @(posedge clk) begin
    finish_reg <= (intt_reg) ? finish_intt : finish_fntt;
    stage_out_0_reg <= STEP5[0];
    stage_out_1_reg <= STEP5[1];
end

assign finish = finish_reg;
assign stage_out_0 = stage_out_0_reg;
assign stage_out_1 = stage_out_1_reg;

endmodule