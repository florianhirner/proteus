// /////////////////////////////////////////////////
// Description: Parametric shift register
// Author     : Florian Hirner, TU Graz
////////////////////////////////////////////////////

parameter LOGQ              = 28; // 28, 64, 256
parameter LOGN              = 10;
parameter TYPE_RED          = 0; // 0=SPARSE; 1=WORD-LEVEL MONTGOMERY
parameter IS_Q_FIXED        = 0;

parameter Q                 = (TYPE_RED) ? 28'd0 : 28'd268369921;
// parameter Q                 = (TYPE_RED) ? 64'd9223372036855300097 : 64'd18446744069414584321;
// parameter Q                 = (TYPE_RED) ? 28'd0 : 256'd115792089237316195423570984634543488696558837605497246864089130975994398638081;

parameter DELAY_ADD         = 1;
parameter DELAY_SUB         = 1;

parameter   DSP_W           = 24;
parameter   DSP_H           = 17;
parameter DELAY_MUL         = 2;

parameter   W               = 16; // word size
parameter   L               = 4;  // montgomery loop count (calculated as $ceil(LOGQ/W))
parameter   MULLAT          = 1;  // latency of multiply and add units
parameter   ADDPIP          = 0;  // 0: adders are pipelined into 64-bit chunks, 1: adders are not pipelined
parameter   R_w             = (TYPE_RED) ? 64'd9223372036854251519 : 0; // must be multiplied with output of montgomery reduction unit
parameter   TOTAL_LATENCY   = L*MULLAT + ((LOGQ-W <= 24) ? (((2*LOGQ-47)/W)*(ADDPIP+1)) : (L*(ADDPIP+1))) + (ADDPIP+1);

parameter DELAY_RED         = (TYPE_RED) ? TOTAL_LATENCY : 2; // 28
// parameter DELAY_RED         = (TYPE_RED) ? TOTAL_LATENCY : 3; // 64
// parameter DELAY_RED         = (TYPE_RED) ? TOTAL_LATENCY : 4; // 256

parameter DELAY_DIV2        = 1;
parameter DELAY_BRAM        = 1;
parameter DELAY_BROM        = 1;
parameter DELAY_FIFO        = 1;

parameter BTF_GS            = 0;

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
