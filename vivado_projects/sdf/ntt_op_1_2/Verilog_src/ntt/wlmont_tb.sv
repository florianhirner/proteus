
// /////////////////////////////////////////////////
// Description: Testbench for parametric NTT-friendly WL Montgomery reduction unit 
// Author     : Ahmet Can Mert, TU Graz
////////////////////////////////////////////////////

module wlmont_tb();

localparam            LOGQ  = 60; // bit-size of prime
localparam            W     = 15; // word size
localparam            L     = 4;  // montgomery loop count (calculated as $ceil(LOGQ/W))
localparam            MULLAT= 1;  // latency of multiply and add units
localparam            ADDPIP= 0;  // 0: adders are pipelined into 64-bit chunks, 1: adders are not pipelined
localparam [LOGQ-1:0] Q = 60'd576460752308273153;
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

reg              clk;
reg [2*LOGQ-1:0] A;
reg [  LOGQ-1:0] q;
wire[  LOGQ-1:0] B;

// Calculating expected result
wire[2*LOGQ-1:0] q_t = q;
wire[2*LOGQ-1:0] B_t = (A % q_t);
reg [LOGQ-1:0] B_e [TOTAL_LATENCY-1:0];
always @(posedge clk) begin
    B_e[0] <= B_t[LOGQ-1:0];
    for (int i = 0; i < TOTAL_LATENCY-1; i = i+1) begin
        B_e[i+1] <= B_e[i];
    end
end

wire[LOGQ+(W*L)-1:0] q_c = q;
wire[LOGQ+(W*L)-1:0] B_c;
assign B_c = (B << (W*L)) % q_c;

wire[2*LOGQ-1:0] q_2 = (q-1)*(q-1);

wlmont #(LOGQ,W,L,MULLAT,ADDPIP)
DUT
(
    clk,
    A,
    q,
    B
);

always #5 clk = ~clk;

// random input
initial begin
    clk = 0;
    #100;
    /*
    q = 31'd1073872897; // 31-bit prime
    // T1: 36589206288169920
    // T2:33856, T2H:558306980715, qH:16386, carry:1, T1:558861745132
    // T1: 558861745132
    // T2:33812, T2H:8527553, qH:16386, carry:1, T1:562570986
    A = 62'd36589206288169920; // B = 562570986
    */
    /*
    q = 60'd576460752308273153; // 60-bit prime
    // T1: 19139817743084120672118418096401964
    // T2:20948, T2H:584100883272830831058301333508, qH:17592186044564, carry:1, T1:584100883273199352171562860181
    // T1: 584100883273199352171562860181
    // T2:363, T2H:17825344338171366948595057, qH:17592186044564, carry:1, T1:17825344344557330482771790
    // T1: 17825344344557330482771790
    // T2:18610, T2H:543986338640055251549, qH:17592186044564, carry:1, T1:544313729222344587590
    // T1: 544313729222344587590
    // T2:18106, T2H:16611136756052996, qH:17592186044564, carry:1, T1:335135257278928781
    A = 120'd19139817743084120672118418096401964; // B = 335135257278928781
    */
    
    q = Q; // 60-bit prime
    for (int j=0; j<TEST_NUM; j=j+1) begin
        for (int k=0; k<(2*LOGQ); k=k+1) begin
            A[k] = $random();
        end
        if (A >= q_2) begin
            A = A - q_2;
        end
        #10;
    end
    #10;
end

// checking
initial begin
    #100;
    #(TOTAL_LATENCY*10);
    for (int n=0; n<TEST_NUM; n=n+1) begin
        if (B_e[TOTAL_LATENCY-1] !== B_c[LOGQ-1:0]) begin
            $display("WRONG!");
            $stop();
        end
        #10;
    end
    #10;
    $display("SUCCESS!");
    $finish();
end

endmodule