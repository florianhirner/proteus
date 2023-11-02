// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Nov  7 13:49:32 2022
// Host        : ipn018 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/CryptoProcessor_2022_23/project_1/project_1.srcs/sources_1/bd/cryptoprocessor/ip/cryptoprocessor_ComputeCoreWrapper_0_0/cryptoprocessor_ComputeCoreWrapper_0_0_sim_netlist.v
// Design      : cryptoprocessor_ComputeCoreWrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cryptoprocessor_ComputeCoreWrapper_0_0,ComputeCoreWrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ComputeCoreWrapper,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module cryptoprocessor_ComputeCoreWrapper_0_0
   (clk,
    control_low_word,
    control_high_word,
    dina_ext_low_word,
    dina_ext_high_word,
    dout_ext_low_word,
    dout_ext_high_word,
    status);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN cryptoprocessor_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input [31:0]control_low_word;
  input [31:0]control_high_word;
  input [31:0]dina_ext_low_word;
  input [31:0]dina_ext_high_word;
  output [31:0]dout_ext_low_word;
  output [31:0]dout_ext_high_word;
  output [31:0]status;

  wire clk;
  wire [31:0]control_high_word;
  wire [31:0]control_low_word;
  wire [31:0]dina_ext_high_word;
  wire [31:0]dina_ext_low_word;
  wire [31:0]dout_ext_high_word;
  wire [31:0]dout_ext_low_word;
  wire [31:0]status;

  cryptoprocessor_ComputeCoreWrapper_0_0_ComputeCoreWrapper inst
       (.clk(clk),
        .control_high_word(control_high_word),
        .control_low_word(control_low_word),
        .dina_ext_high_word(dina_ext_high_word),
        .dina_ext_low_word(dina_ext_low_word),
        .dout_ext_high_word(dout_ext_high_word),
        .dout_ext_low_word(dout_ext_low_word),
        .status(status));
endmodule

(* CHECK_LICENSE_TYPE = "BRAM64_1024,blk_mem_gen_v8_4_3,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "BRAM64_1024" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_3,Vivado 2019.1" *) 
module cryptoprocessor_ComputeCoreWrapper_0_0_BRAM64_1024
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [63:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [63:0]dina;
  wire [63:0]doutb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [63:0]NLW_U0_douta_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.882749 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "BRAM64_1024.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "64" *) 
  (* C_READ_WIDTH_B = "64" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "64" *) 
  (* C_WRITE_WIDTH_B = "64" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[63:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "ComputeCore" *) 
module cryptoprocessor_ComputeCoreWrapper_0_0_ComputeCore
   (doutb,
    Q,
    clk,
    d,
    dina_ext_high_word,
    control_low_word,
    control_high_word,
    qdpo);
  output [63:0]doutb;
  output [0:0]Q;
  input clk;
  input [36:0]d;
  input [26:0]dina_ext_high_word;
  input [11:0]control_low_word;
  input [0:0]control_high_word;
  input [35:0]qdpo;

  wire BR_i_66_n_0;
  wire BR_i_67_n_0;
  wire [8:0]OP1_or_OP2;
  wire [9:0]OP3;
  wire [0:0]Q;
  wire [9:0]addra;
  wire addra_carry__0_n_0;
  wire addra_carry__0_n_1;
  wire addra_carry__0_n_2;
  wire addra_carry__0_n_3;
  wire addra_carry__1_n_3;
  wire addra_carry_i_5_n_0;
  wire addra_carry_n_0;
  wire addra_carry_n_1;
  wire addra_carry_n_2;
  wire addra_carry_n_3;
  wire [9:0]addrb;
  wire addrb_carry__0_n_0;
  wire addrb_carry__0_n_1;
  wire addrb_carry__0_n_2;
  wire addrb_carry__0_n_3;
  wire addrb_carry__1_n_3;
  wire addrb_carry_n_0;
  wire addrb_carry_n_1;
  wire addrb_carry_n_2;
  wire addrb_carry_n_3;
  wire clk;
  wire \command_reg0_reg_n_0_[0] ;
  wire \command_reg0_reg_n_0_[10] ;
  wire \command_reg0_reg_n_0_[11] ;
  wire \command_reg0_reg_n_0_[12] ;
  wire \command_reg0_reg_n_0_[13] ;
  wire \command_reg0_reg_n_0_[14] ;
  wire \command_reg0_reg_n_0_[15] ;
  wire \command_reg0_reg_n_0_[16] ;
  wire \command_reg0_reg_n_0_[17] ;
  wire \command_reg0_reg_n_0_[18] ;
  wire \command_reg0_reg_n_0_[19] ;
  wire \command_reg0_reg_n_0_[1] ;
  wire \command_reg0_reg_n_0_[20] ;
  wire \command_reg0_reg_n_0_[21] ;
  wire \command_reg0_reg_n_0_[22] ;
  wire \command_reg0_reg_n_0_[23] ;
  wire \command_reg0_reg_n_0_[24] ;
  wire \command_reg0_reg_n_0_[2] ;
  wire \command_reg0_reg_n_0_[3] ;
  wire \command_reg0_reg_n_0_[4] ;
  wire \command_reg0_reg_n_0_[5] ;
  wire \command_reg0_reg_n_0_[6] ;
  wire \command_reg0_reg_n_0_[7] ;
  wire \command_reg0_reg_n_0_[8] ;
  wire \command_reg0_reg_n_0_[9] ;
  wire [0:0]control_high_word;
  wire [11:0]control_low_word;
  wire [36:0]d;
  wire [63:0]dina;
  wire [26:0]dina_ext_high_word;
  wire [63:0]doutb;
  wire polymult_n_66;
  wire polymult_n_67;
  wire polymult_n_68;
  wire polymult_n_69;
  wire polymult_n_79;
  wire polymult_n_80;
  wire polymult_n_81;
  wire polymult_n_82;
  wire polymult_n_83;
  wire polymult_n_84;
  wire polymult_n_85;
  wire polymult_n_86;
  wire polymult_n_87;
  wire polymult_n_88;
  wire polymult_n_89;
  wire polymult_n_90;
  wire polymult_n_91;
  wire polymult_n_92;
  wire polymult_n_93;
  wire polymult_n_94;
  wire [35:0]qdpo;
  wire trng_rst__3;
  wire wea;
  wire [3:1]NLW_addra_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_addra_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_addrb_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_addrb_carry__1_O_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "BRAM64_1024,blk_mem_gen_v8_4_3,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_3,Vivado 2019.1" *) 
  cryptoprocessor_ComputeCoreWrapper_0_0_BRAM64_1024 BR
       (.addra(addra),
        .addrb(addrb),
        .clka(clk),
        .clkb(clk),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFB33BF)) 
    BR_i_66
       (.I0(\command_reg0_reg_n_0_[0] ),
        .I1(\command_reg0_reg_n_0_[4] ),
        .I2(\command_reg0_reg_n_0_[2] ),
        .I3(\command_reg0_reg_n_0_[1] ),
        .I4(\command_reg0_reg_n_0_[3] ),
        .O(BR_i_66_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    BR_i_67
       (.I0(\command_reg0_reg_n_0_[0] ),
        .I1(\command_reg0_reg_n_0_[4] ),
        .I2(\command_reg0_reg_n_0_[2] ),
        .I3(\command_reg0_reg_n_0_[1] ),
        .I4(\command_reg0_reg_n_0_[3] ),
        .O(BR_i_67_n_0));
  CARRY4 addra_carry
       (.CI(1'b0),
        .CO({addra_carry_n_0,addra_carry_n_1,addra_carry_n_2,addra_carry_n_3}),
        .CYINIT(1'b0),
        .DI(OP3[3:0]),
        .O(addra[3:0]),
        .S({polymult_n_79,polymult_n_80,polymult_n_81,polymult_n_82}));
  CARRY4 addra_carry__0
       (.CI(addra_carry_n_0),
        .CO({addra_carry__0_n_0,addra_carry__0_n_1,addra_carry__0_n_2,addra_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(OP3[7:4]),
        .O(addra[7:4]),
        .S({polymult_n_83,polymult_n_84,polymult_n_85,polymult_n_86}));
  CARRY4 addra_carry__1
       (.CI(addra_carry__0_n_0),
        .CO({NLW_addra_carry__1_CO_UNCONNECTED[3:1],addra_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,OP3[8]}),
        .O({NLW_addra_carry__1_O_UNCONNECTED[3:2],addra[9:8]}),
        .S({1'b0,1'b0,polymult_n_68,polymult_n_69}));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFB37BF)) 
    addra_carry_i_5
       (.I0(\command_reg0_reg_n_0_[0] ),
        .I1(\command_reg0_reg_n_0_[4] ),
        .I2(\command_reg0_reg_n_0_[2] ),
        .I3(\command_reg0_reg_n_0_[1] ),
        .I4(\command_reg0_reg_n_0_[3] ),
        .O(addra_carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    addra_carry_i_6
       (.I0(\command_reg0_reg_n_0_[1] ),
        .I1(\command_reg0_reg_n_0_[0] ),
        .I2(\command_reg0_reg_n_0_[2] ),
        .I3(\command_reg0_reg_n_0_[4] ),
        .I4(\command_reg0_reg_n_0_[3] ),
        .O(trng_rst__3));
  CARRY4 addrb_carry
       (.CI(1'b0),
        .CO({addrb_carry_n_0,addrb_carry_n_1,addrb_carry_n_2,addrb_carry_n_3}),
        .CYINIT(1'b0),
        .DI(OP1_or_OP2[3:0]),
        .O(addrb[3:0]),
        .S({polymult_n_87,polymult_n_88,polymult_n_89,polymult_n_90}));
  CARRY4 addrb_carry__0
       (.CI(addrb_carry_n_0),
        .CO({addrb_carry__0_n_0,addrb_carry__0_n_1,addrb_carry__0_n_2,addrb_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(OP1_or_OP2[7:4]),
        .O(addrb[7:4]),
        .S({polymult_n_91,polymult_n_92,polymult_n_93,polymult_n_94}));
  CARRY4 addrb_carry__1
       (.CI(addrb_carry__0_n_0),
        .CO({NLW_addrb_carry__1_CO_UNCONNECTED[3:1],addrb_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,OP1_or_OP2[8]}),
        .O({NLW_addrb_carry__1_O_UNCONNECTED[3:2],addrb[9:8]}),
        .S({1'b0,1'b0,polymult_n_66,polymult_n_67}));
  FDRE \command_reg0_reg[0] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[0]),
        .Q(\command_reg0_reg_n_0_[0] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[10] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[10]),
        .Q(\command_reg0_reg_n_0_[10] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[11] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[11]),
        .Q(\command_reg0_reg_n_0_[11] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[12] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[12]),
        .Q(\command_reg0_reg_n_0_[12] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[13] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[13]),
        .Q(\command_reg0_reg_n_0_[13] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[14] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[14]),
        .Q(\command_reg0_reg_n_0_[14] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[15] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[15]),
        .Q(\command_reg0_reg_n_0_[15] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[16] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[16]),
        .Q(\command_reg0_reg_n_0_[16] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[17] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[17]),
        .Q(\command_reg0_reg_n_0_[17] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[18] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[18]),
        .Q(\command_reg0_reg_n_0_[18] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[19] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[19]),
        .Q(\command_reg0_reg_n_0_[19] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[1] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[1]),
        .Q(\command_reg0_reg_n_0_[1] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[20] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[20]),
        .Q(\command_reg0_reg_n_0_[20] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[21] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[21]),
        .Q(\command_reg0_reg_n_0_[21] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[22] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[22]),
        .Q(\command_reg0_reg_n_0_[22] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[23] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[23]),
        .Q(\command_reg0_reg_n_0_[23] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[24] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[24]),
        .Q(\command_reg0_reg_n_0_[24] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[25] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[25]),
        .Q(OP3[0]),
        .R(control_high_word));
  FDRE \command_reg0_reg[26] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[26]),
        .Q(OP3[1]),
        .R(control_high_word));
  FDRE \command_reg0_reg[27] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[27]),
        .Q(OP3[2]),
        .R(control_high_word));
  FDRE \command_reg0_reg[28] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[28]),
        .Q(OP3[3]),
        .R(control_high_word));
  FDRE \command_reg0_reg[29] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[29]),
        .Q(OP3[4]),
        .R(control_high_word));
  FDRE \command_reg0_reg[2] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[2]),
        .Q(\command_reg0_reg_n_0_[2] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[30] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[30]),
        .Q(OP3[5]),
        .R(control_high_word));
  FDRE \command_reg0_reg[31] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[31]),
        .Q(OP3[6]),
        .R(control_high_word));
  FDRE \command_reg0_reg[32] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[32]),
        .Q(OP3[7]),
        .R(control_high_word));
  FDRE \command_reg0_reg[33] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[33]),
        .Q(OP3[8]),
        .R(control_high_word));
  FDRE \command_reg0_reg[34] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[34]),
        .Q(OP3[9]),
        .R(control_high_word));
  FDRE \command_reg0_reg[3] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[3]),
        .Q(\command_reg0_reg_n_0_[3] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[4] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[4]),
        .Q(\command_reg0_reg_n_0_[4] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[5] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[5]),
        .Q(\command_reg0_reg_n_0_[5] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[6] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[6]),
        .Q(\command_reg0_reg_n_0_[6] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[7] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[7]),
        .Q(\command_reg0_reg_n_0_[7] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[8] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[8]),
        .Q(\command_reg0_reg_n_0_[8] ),
        .R(control_high_word));
  FDRE \command_reg0_reg[9] 
       (.C(clk),
        .CE(qdpo[35]),
        .D(qdpo[9]),
        .Q(\command_reg0_reg_n_0_[9] ),
        .R(control_high_word));
  cryptoprocessor_ComputeCoreWrapper_0_0_polynomial_multiplication polymult
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram (BR_i_66_n_0),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (BR_i_67_n_0),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ({OP3,\command_reg0_reg_n_0_[24] ,\command_reg0_reg_n_0_[23] ,\command_reg0_reg_n_0_[22] ,\command_reg0_reg_n_0_[21] ,\command_reg0_reg_n_0_[20] ,\command_reg0_reg_n_0_[19] ,\command_reg0_reg_n_0_[18] ,\command_reg0_reg_n_0_[17] ,\command_reg0_reg_n_0_[16] ,\command_reg0_reg_n_0_[15] ,\command_reg0_reg_n_0_[14] ,\command_reg0_reg_n_0_[13] ,\command_reg0_reg_n_0_[12] ,\command_reg0_reg_n_0_[11] ,\command_reg0_reg_n_0_[10] ,\command_reg0_reg_n_0_[9] ,\command_reg0_reg_n_0_[8] ,\command_reg0_reg_n_0_[7] ,\command_reg0_reg_n_0_[6] ,\command_reg0_reg_n_0_[5] ,\command_reg0_reg_n_0_[4] ,\command_reg0_reg_n_0_[3] ,\command_reg0_reg_n_0_[2] ,\command_reg0_reg_n_0_[1] ,\command_reg0_reg_n_0_[0] }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 (addra_carry_i_5_n_0),
        .OP1_or_OP2(OP1_or_OP2),
        .Q(Q),
        .S({polymult_n_66,polymult_n_67}),
        .clk(clk),
        .\command_reg0_reg[12] ({polymult_n_91,polymult_n_92,polymult_n_93,polymult_n_94}),
        .\command_reg0_reg[28] ({polymult_n_79,polymult_n_80,polymult_n_81,polymult_n_82}),
        .\command_reg0_reg[32] ({polymult_n_83,polymult_n_84,polymult_n_85,polymult_n_86}),
        .\command_reg0_reg[34] ({polymult_n_68,polymult_n_69}),
        .\command_reg0_reg[8] ({polymult_n_87,polymult_n_88,polymult_n_89,polymult_n_90}),
        .control_low_word(control_low_word),
        .d(d),
        .dina(dina),
        .dina_ext_high_word(dina_ext_high_word),
        .doutb(doutb),
        .trng_rst__3(trng_rst__3),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "ComputeCoreWrapper" *) 
module cryptoprocessor_ComputeCoreWrapper_0_0_ComputeCoreWrapper
   (clk,
    control_low_word,
    control_high_word,
    dina_ext_low_word,
    dina_ext_high_word,
    dout_ext_low_word,
    dout_ext_high_word,
    status);
  input clk;
  input [31:0]control_low_word;
  input [31:0]control_high_word;
  input [31:0]dina_ext_low_word;
  input [31:0]dina_ext_high_word;
  output [31:0]dout_ext_low_word;
  output [31:0]dout_ext_high_word;
  output [31:0]status;

  wire \<const0> ;
  wire clk;
  wire [34:0]command_in;
  wire command_we0;
  wire [31:0]control_high_word;
  wire [31:0]control_low_word;
  wire [29:0]cycle_count_reg;
  wire [31:0]dina_ext_high_word;
  wire [31:0]dina_ext_low_word;
  wire done_all_computation;
  wire done_polymult;
  wire [31:0]dout_ext_high_word;
  wire [31:0]dout_ext_low_word;
  wire [31:0]\^status ;

  assign status[31:2] = \^status [31:2];
  assign status[1] = \<const0> ;
  assign status[0] = \^status [0];
  cryptoprocessor_ComputeCoreWrapper_0_0_ComputeCore CORE
       (.Q(done_polymult),
        .clk(clk),
        .control_high_word(control_high_word[0]),
        .control_low_word(control_low_word[11:0]),
        .d({dina_ext_high_word[4:0],dina_ext_low_word}),
        .dina_ext_high_word(dina_ext_high_word[31:5]),
        .doutb({dout_ext_high_word,dout_ext_low_word}),
        .qdpo({command_we0,command_in}));
  GND GND
       (.G(\<const0> ));
  cryptoprocessor_ComputeCoreWrapper_0_0_ISA_control ISA_CTRL
       (.D({cycle_count_reg,done_all_computation}),
        .Q(done_polymult),
        .clk(clk),
        .control_high_word(control_high_word[1:0]),
        .control_low_word({control_low_word[11:10],control_low_word[5:0]}),
        .d({dina_ext_high_word[4:0],dina_ext_low_word}),
        .qdpo({command_we0,command_in}));
  FDRE \status_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(done_all_computation),
        .Q(\^status [0]),
        .R(1'b0));
  FDRE \status_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[8]),
        .Q(\^status [10]),
        .R(1'b0));
  FDRE \status_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[9]),
        .Q(\^status [11]),
        .R(1'b0));
  FDRE \status_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[10]),
        .Q(\^status [12]),
        .R(1'b0));
  FDRE \status_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[11]),
        .Q(\^status [13]),
        .R(1'b0));
  FDRE \status_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[12]),
        .Q(\^status [14]),
        .R(1'b0));
  FDRE \status_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[13]),
        .Q(\^status [15]),
        .R(1'b0));
  FDRE \status_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[14]),
        .Q(\^status [16]),
        .R(1'b0));
  FDRE \status_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[15]),
        .Q(\^status [17]),
        .R(1'b0));
  FDRE \status_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[16]),
        .Q(\^status [18]),
        .R(1'b0));
  FDRE \status_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[17]),
        .Q(\^status [19]),
        .R(1'b0));
  FDRE \status_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[18]),
        .Q(\^status [20]),
        .R(1'b0));
  FDRE \status_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[19]),
        .Q(\^status [21]),
        .R(1'b0));
  FDRE \status_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[20]),
        .Q(\^status [22]),
        .R(1'b0));
  FDRE \status_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[21]),
        .Q(\^status [23]),
        .R(1'b0));
  FDRE \status_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[22]),
        .Q(\^status [24]),
        .R(1'b0));
  FDRE \status_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[23]),
        .Q(\^status [25]),
        .R(1'b0));
  FDRE \status_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[24]),
        .Q(\^status [26]),
        .R(1'b0));
  FDRE \status_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[25]),
        .Q(\^status [27]),
        .R(1'b0));
  FDRE \status_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[26]),
        .Q(\^status [28]),
        .R(1'b0));
  FDRE \status_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[27]),
        .Q(\^status [29]),
        .R(1'b0));
  FDRE \status_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[0]),
        .Q(\^status [2]),
        .R(1'b0));
  FDRE \status_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[28]),
        .Q(\^status [30]),
        .R(1'b0));
  FDRE \status_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[29]),
        .Q(\^status [31]),
        .R(1'b0));
  FDRE \status_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[1]),
        .Q(\^status [3]),
        .R(1'b0));
  FDRE \status_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[2]),
        .Q(\^status [4]),
        .R(1'b0));
  FDRE \status_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[3]),
        .Q(\^status [5]),
        .R(1'b0));
  FDRE \status_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[4]),
        .Q(\^status [6]),
        .R(1'b0));
  FDRE \status_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[5]),
        .Q(\^status [7]),
        .R(1'b0));
  FDRE \status_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[6]),
        .Q(\^status [8]),
        .R(1'b0));
  FDRE \status_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(cycle_count_reg[7]),
        .Q(\^status [9]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "INS_RAM,dist_mem_gen_v8_0_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "INS_RAM" *) 
(* X_CORE_INFO = "dist_mem_gen_v8_0_13,Vivado 2019.1" *) 
module cryptoprocessor_ComputeCoreWrapper_0_0_INS_RAM
   (a,
    d,
    dpra,
    clk,
    we,
    qdpo_clk,
    qdpo);
  input [5:0]a;
  input [36:0]d;
  input [5:0]dpra;
  input clk;
  input we;
  input qdpo_clk;
  output [36:0]qdpo;

  wire [5:0]a;
  wire clk;
  wire [36:0]d;
  wire [5:0]dpra;
  wire [36:0]qdpo;
  wire qdpo_clk;
  wire we;
  wire [36:0]NLW_U0_dpo_UNCONNECTED;
  wire [36:0]NLW_U0_qspo_UNCONNECTED;
  wire [36:0]NLW_U0_spo_UNCONNECTED;

  (* C_DEFAULT_DATA = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "1" *) 
  (* C_HAS_QDPO = "1" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "1" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_QSPO = "0" *) 
  (* C_HAS_QSPO_RST = "0" *) 
  (* C_HAS_QSPO_SRST = "0" *) 
  (* C_HAS_SPO = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "4" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "6" *) 
  (* c_depth = "64" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qce_joined = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "37" *) 
  cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[36:0]),
        .dpra(dpra),
        .i_ce(1'b1),
        .qdpo(qdpo),
        .qdpo_ce(1'b1),
        .qdpo_clk(qdpo_clk),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[36:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(NLW_U0_spo_UNCONNECTED[36:0]),
        .we(we));
endmodule

(* ORIG_REF_NAME = "ISA_control" *) 
module cryptoprocessor_ComputeCoreWrapper_0_0_ISA_control
   (qdpo,
    D,
    control_low_word,
    d,
    clk,
    control_high_word,
    Q);
  output [35:0]qdpo;
  output [30:0]D;
  input [7:0]control_low_word;
  input [36:0]d;
  input clk;
  input [1:0]control_high_word;
  input [0:0]Q;

  wire [30:0]D;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire IR_address0;
  wire [5:0]IR_address_reg;
  wire [0:0]Q;
  wire clk;
  wire command_we1;
  wire [1:0]control_high_word;
  wire [7:0]control_low_word;
  wire \cycle_count[0]_i_2_n_0 ;
  wire \cycle_count_reg[0]_i_1_n_0 ;
  wire \cycle_count_reg[0]_i_1_n_1 ;
  wire \cycle_count_reg[0]_i_1_n_2 ;
  wire \cycle_count_reg[0]_i_1_n_3 ;
  wire \cycle_count_reg[0]_i_1_n_4 ;
  wire \cycle_count_reg[0]_i_1_n_5 ;
  wire \cycle_count_reg[0]_i_1_n_6 ;
  wire \cycle_count_reg[0]_i_1_n_7 ;
  wire \cycle_count_reg[12]_i_1_n_0 ;
  wire \cycle_count_reg[12]_i_1_n_1 ;
  wire \cycle_count_reg[12]_i_1_n_2 ;
  wire \cycle_count_reg[12]_i_1_n_3 ;
  wire \cycle_count_reg[12]_i_1_n_4 ;
  wire \cycle_count_reg[12]_i_1_n_5 ;
  wire \cycle_count_reg[12]_i_1_n_6 ;
  wire \cycle_count_reg[12]_i_1_n_7 ;
  wire \cycle_count_reg[16]_i_1_n_0 ;
  wire \cycle_count_reg[16]_i_1_n_1 ;
  wire \cycle_count_reg[16]_i_1_n_2 ;
  wire \cycle_count_reg[16]_i_1_n_3 ;
  wire \cycle_count_reg[16]_i_1_n_4 ;
  wire \cycle_count_reg[16]_i_1_n_5 ;
  wire \cycle_count_reg[16]_i_1_n_6 ;
  wire \cycle_count_reg[16]_i_1_n_7 ;
  wire \cycle_count_reg[20]_i_1_n_0 ;
  wire \cycle_count_reg[20]_i_1_n_1 ;
  wire \cycle_count_reg[20]_i_1_n_2 ;
  wire \cycle_count_reg[20]_i_1_n_3 ;
  wire \cycle_count_reg[20]_i_1_n_4 ;
  wire \cycle_count_reg[20]_i_1_n_5 ;
  wire \cycle_count_reg[20]_i_1_n_6 ;
  wire \cycle_count_reg[20]_i_1_n_7 ;
  wire \cycle_count_reg[24]_i_1_n_0 ;
  wire \cycle_count_reg[24]_i_1_n_1 ;
  wire \cycle_count_reg[24]_i_1_n_2 ;
  wire \cycle_count_reg[24]_i_1_n_3 ;
  wire \cycle_count_reg[24]_i_1_n_4 ;
  wire \cycle_count_reg[24]_i_1_n_5 ;
  wire \cycle_count_reg[24]_i_1_n_6 ;
  wire \cycle_count_reg[24]_i_1_n_7 ;
  wire \cycle_count_reg[28]_i_1_n_3 ;
  wire \cycle_count_reg[28]_i_1_n_6 ;
  wire \cycle_count_reg[28]_i_1_n_7 ;
  wire \cycle_count_reg[4]_i_1_n_0 ;
  wire \cycle_count_reg[4]_i_1_n_1 ;
  wire \cycle_count_reg[4]_i_1_n_2 ;
  wire \cycle_count_reg[4]_i_1_n_3 ;
  wire \cycle_count_reg[4]_i_1_n_4 ;
  wire \cycle_count_reg[4]_i_1_n_5 ;
  wire \cycle_count_reg[4]_i_1_n_6 ;
  wire \cycle_count_reg[4]_i_1_n_7 ;
  wire \cycle_count_reg[8]_i_1_n_0 ;
  wire \cycle_count_reg[8]_i_1_n_1 ;
  wire \cycle_count_reg[8]_i_1_n_2 ;
  wire \cycle_count_reg[8]_i_1_n_3 ;
  wire \cycle_count_reg[8]_i_1_n_4 ;
  wire \cycle_count_reg[8]_i_1_n_5 ;
  wire \cycle_count_reg[8]_i_1_n_6 ;
  wire \cycle_count_reg[8]_i_1_n_7 ;
  wire [36:0]d;
  wire inc_IR_address;
  wire last_instruction__3;
  wire nextstate1__6;
  wire [5:0]p_0_in;
  wire [35:0]qdpo;
  wire [2:0]state;
  wire wea_ext_ISA;
  wire [3:1]\NLW_cycle_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_cycle_count_reg[28]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h0000A2FF)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[2]),
        .I1(nextstate1__6),
        .I2(state[1]),
        .I3(state[0]),
        .I4(control_high_word[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB99C4C4)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(nextstate1__6),
        .I3(last_instruction__3),
        .I4(state[1]),
        .I5(control_high_word[0]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\FSM_sequential_state[1]_i_3_n_0 ),
        .I1(last_instruction__3),
        .I2(Q),
        .O(nextstate1__6));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(qdpo[3]),
        .I1(qdpo[4]),
        .I2(qdpo[2]),
        .I3(qdpo[1]),
        .I4(qdpo[0]),
        .I5(command_we1),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000FD88)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(last_instruction__3),
        .I3(state[2]),
        .I4(control_high_word[0]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(qdpo[0]),
        .I1(qdpo[1]),
        .I2(qdpo[2]),
        .I3(qdpo[4]),
        .I4(qdpo[3]),
        .O(last_instruction__3));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:110,iSTATE5:001,iSTATE6:111" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:110,iSTATE5:001,iSTATE6:111" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:110,iSTATE5:001,iSTATE6:111" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "INS_RAM,dist_mem_gen_v8_0_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.1" *) 
  cryptoprocessor_ComputeCoreWrapper_0_0_INS_RAM IR
       (.a(control_low_word[5:0]),
        .clk(clk),
        .d(d),
        .dpra(IR_address_reg),
        .qdpo({command_we1,qdpo}),
        .qdpo_clk(clk),
        .we(wea_ext_ISA));
  LUT1 #(
    .INIT(2'h1)) 
    \IR_address[0]_i_1 
       (.I0(IR_address_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \IR_address[1]_i_1 
       (.I0(IR_address_reg[0]),
        .I1(IR_address_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \IR_address[2]_i_1 
       (.I0(IR_address_reg[0]),
        .I1(IR_address_reg[1]),
        .I2(IR_address_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \IR_address[3]_i_1 
       (.I0(IR_address_reg[1]),
        .I1(IR_address_reg[0]),
        .I2(IR_address_reg[2]),
        .I3(IR_address_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \IR_address[4]_i_1 
       (.I0(IR_address_reg[2]),
        .I1(IR_address_reg[0]),
        .I2(IR_address_reg[1]),
        .I3(IR_address_reg[3]),
        .I4(IR_address_reg[4]),
        .O(p_0_in[4]));
  LUT2 #(
    .INIT(4'hB)) 
    \IR_address[5]_i_1 
       (.I0(control_high_word[0]),
        .I1(control_high_word[1]),
        .O(IR_address0));
  LUT3 #(
    .INIT(8'h41)) 
    \IR_address[5]_i_2 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(inc_IR_address));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \IR_address[5]_i_3 
       (.I0(IR_address_reg[3]),
        .I1(IR_address_reg[1]),
        .I2(IR_address_reg[0]),
        .I3(IR_address_reg[2]),
        .I4(IR_address_reg[4]),
        .I5(IR_address_reg[5]),
        .O(p_0_in[5]));
  FDRE \IR_address_reg[0] 
       (.C(clk),
        .CE(inc_IR_address),
        .D(p_0_in[0]),
        .Q(IR_address_reg[0]),
        .R(IR_address0));
  FDRE \IR_address_reg[1] 
       (.C(clk),
        .CE(inc_IR_address),
        .D(p_0_in[1]),
        .Q(IR_address_reg[1]),
        .R(IR_address0));
  FDRE \IR_address_reg[2] 
       (.C(clk),
        .CE(inc_IR_address),
        .D(p_0_in[2]),
        .Q(IR_address_reg[2]),
        .R(IR_address0));
  FDRE \IR_address_reg[3] 
       (.C(clk),
        .CE(inc_IR_address),
        .D(p_0_in[3]),
        .Q(IR_address_reg[3]),
        .R(IR_address0));
  FDRE \IR_address_reg[4] 
       (.C(clk),
        .CE(inc_IR_address),
        .D(p_0_in[4]),
        .Q(IR_address_reg[4]),
        .R(IR_address0));
  FDRE \IR_address_reg[5] 
       (.C(clk),
        .CE(inc_IR_address),
        .D(p_0_in[5]),
        .Q(IR_address_reg[5]),
        .R(IR_address0));
  LUT2 #(
    .INIT(4'h8)) 
    IR_i_1
       (.I0(control_low_word[6]),
        .I1(control_low_word[7]),
        .O(wea_ext_ISA));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[0]_i_2 
       (.I0(D[1]),
        .O(\cycle_count[0]_i_2_n_0 ));
  FDRE \cycle_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[0]_i_1_n_7 ),
        .Q(D[1]),
        .R(control_high_word[0]));
  CARRY4 \cycle_count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cycle_count_reg[0]_i_1_n_0 ,\cycle_count_reg[0]_i_1_n_1 ,\cycle_count_reg[0]_i_1_n_2 ,\cycle_count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cycle_count_reg[0]_i_1_n_4 ,\cycle_count_reg[0]_i_1_n_5 ,\cycle_count_reg[0]_i_1_n_6 ,\cycle_count_reg[0]_i_1_n_7 }),
        .S({D[4:2],\cycle_count[0]_i_2_n_0 }));
  FDRE \cycle_count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[8]_i_1_n_5 ),
        .Q(D[11]),
        .R(control_high_word[0]));
  FDRE \cycle_count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[8]_i_1_n_4 ),
        .Q(D[12]),
        .R(control_high_word[0]));
  FDRE \cycle_count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[12]_i_1_n_7 ),
        .Q(D[13]),
        .R(control_high_word[0]));
  CARRY4 \cycle_count_reg[12]_i_1 
       (.CI(\cycle_count_reg[8]_i_1_n_0 ),
        .CO({\cycle_count_reg[12]_i_1_n_0 ,\cycle_count_reg[12]_i_1_n_1 ,\cycle_count_reg[12]_i_1_n_2 ,\cycle_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycle_count_reg[12]_i_1_n_4 ,\cycle_count_reg[12]_i_1_n_5 ,\cycle_count_reg[12]_i_1_n_6 ,\cycle_count_reg[12]_i_1_n_7 }),
        .S(D[16:13]));
  FDRE \cycle_count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[12]_i_1_n_6 ),
        .Q(D[14]),
        .R(control_high_word[0]));
  FDRE \cycle_count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[12]_i_1_n_5 ),
        .Q(D[15]),
        .R(control_high_word[0]));
  FDRE \cycle_count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[12]_i_1_n_4 ),
        .Q(D[16]),
        .R(control_high_word[0]));
  FDRE \cycle_count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[16]_i_1_n_7 ),
        .Q(D[17]),
        .R(control_high_word[0]));
  CARRY4 \cycle_count_reg[16]_i_1 
       (.CI(\cycle_count_reg[12]_i_1_n_0 ),
        .CO({\cycle_count_reg[16]_i_1_n_0 ,\cycle_count_reg[16]_i_1_n_1 ,\cycle_count_reg[16]_i_1_n_2 ,\cycle_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycle_count_reg[16]_i_1_n_4 ,\cycle_count_reg[16]_i_1_n_5 ,\cycle_count_reg[16]_i_1_n_6 ,\cycle_count_reg[16]_i_1_n_7 }),
        .S(D[20:17]));
  FDRE \cycle_count_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[16]_i_1_n_6 ),
        .Q(D[18]),
        .R(control_high_word[0]));
  FDRE \cycle_count_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[16]_i_1_n_5 ),
        .Q(D[19]),
        .R(control_high_word[0]));
  FDRE \cycle_count_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[16]_i_1_n_4 ),
        .Q(D[20]),
        .R(control_high_word[0]));
  FDRE \cycle_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[0]_i_1_n_6 ),
        .Q(D[2]),
        .R(control_high_word[0]));
  FDRE \cycle_count_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[20]_i_1_n_7 ),
        .Q(D[21]),
        .R(control_high_word[0]));
  CARRY4 \cycle_count_reg[20]_i_1 
       (.CI(\cycle_count_reg[16]_i_1_n_0 ),
        .CO({\cycle_count_reg[20]_i_1_n_0 ,\cycle_count_reg[20]_i_1_n_1 ,\cycle_count_reg[20]_i_1_n_2 ,\cycle_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycle_count_reg[20]_i_1_n_4 ,\cycle_count_reg[20]_i_1_n_5 ,\cycle_count_reg[20]_i_1_n_6 ,\cycle_count_reg[20]_i_1_n_7 }),
        .S(D[24:21]));
  FDRE \cycle_count_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[20]_i_1_n_6 ),
        .Q(D[22]),
        .R(control_high_word[0]));
  FDRE \cycle_count_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[20]_i_1_n_5 ),
        .Q(D[23]),
        .R(control_high_word[0]));
  FDRE \cycle_count_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[20]_i_1_n_4 ),
        .Q(D[24]),
        .R(control_high_word[0]));
  FDRE \cycle_count_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[24]_i_1_n_7 ),
        .Q(D[25]),
        .R(control_high_word[0]));
  CARRY4 \cycle_count_reg[24]_i_1 
       (.CI(\cycle_count_reg[20]_i_1_n_0 ),
        .CO({\cycle_count_reg[24]_i_1_n_0 ,\cycle_count_reg[24]_i_1_n_1 ,\cycle_count_reg[24]_i_1_n_2 ,\cycle_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycle_count_reg[24]_i_1_n_4 ,\cycle_count_reg[24]_i_1_n_5 ,\cycle_count_reg[24]_i_1_n_6 ,\cycle_count_reg[24]_i_1_n_7 }),
        .S(D[28:25]));
  FDRE \cycle_count_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[24]_i_1_n_6 ),
        .Q(D[26]),
        .R(control_high_word[0]));
  FDRE \cycle_count_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[24]_i_1_n_5 ),
        .Q(D[27]),
        .R(control_high_word[0]));
  FDRE \cycle_count_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[24]_i_1_n_4 ),
        .Q(D[28]),
        .R(control_high_word[0]));
  FDRE \cycle_count_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[28]_i_1_n_7 ),
        .Q(D[29]),
        .R(control_high_word[0]));
  CARRY4 \cycle_count_reg[28]_i_1 
       (.CI(\cycle_count_reg[24]_i_1_n_0 ),
        .CO({\NLW_cycle_count_reg[28]_i_1_CO_UNCONNECTED [3:1],\cycle_count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cycle_count_reg[28]_i_1_O_UNCONNECTED [3:2],\cycle_count_reg[28]_i_1_n_6 ,\cycle_count_reg[28]_i_1_n_7 }),
        .S({1'b0,1'b0,D[30:29]}));
  FDRE \cycle_count_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[28]_i_1_n_6 ),
        .Q(D[30]),
        .R(control_high_word[0]));
  FDRE \cycle_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[0]_i_1_n_5 ),
        .Q(D[3]),
        .R(control_high_word[0]));
  FDRE \cycle_count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[0]_i_1_n_4 ),
        .Q(D[4]),
        .R(control_high_word[0]));
  FDRE \cycle_count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[4]_i_1_n_7 ),
        .Q(D[5]),
        .R(control_high_word[0]));
  CARRY4 \cycle_count_reg[4]_i_1 
       (.CI(\cycle_count_reg[0]_i_1_n_0 ),
        .CO({\cycle_count_reg[4]_i_1_n_0 ,\cycle_count_reg[4]_i_1_n_1 ,\cycle_count_reg[4]_i_1_n_2 ,\cycle_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycle_count_reg[4]_i_1_n_4 ,\cycle_count_reg[4]_i_1_n_5 ,\cycle_count_reg[4]_i_1_n_6 ,\cycle_count_reg[4]_i_1_n_7 }),
        .S(D[8:5]));
  FDRE \cycle_count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[4]_i_1_n_6 ),
        .Q(D[6]),
        .R(control_high_word[0]));
  FDRE \cycle_count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[4]_i_1_n_5 ),
        .Q(D[7]),
        .R(control_high_word[0]));
  FDRE \cycle_count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[4]_i_1_n_4 ),
        .Q(D[8]),
        .R(control_high_word[0]));
  FDRE \cycle_count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[8]_i_1_n_7 ),
        .Q(D[9]),
        .R(control_high_word[0]));
  CARRY4 \cycle_count_reg[8]_i_1 
       (.CI(\cycle_count_reg[4]_i_1_n_0 ),
        .CO({\cycle_count_reg[8]_i_1_n_0 ,\cycle_count_reg[8]_i_1_n_1 ,\cycle_count_reg[8]_i_1_n_2 ,\cycle_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycle_count_reg[8]_i_1_n_4 ,\cycle_count_reg[8]_i_1_n_5 ,\cycle_count_reg[8]_i_1_n_6 ,\cycle_count_reg[8]_i_1_n_7 }),
        .S(D[12:9]));
  FDRE \cycle_count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[8]_i_1_n_6 ),
        .Q(D[10]),
        .R(control_high_word[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \status[0]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(D[0]));
endmodule

(* ORIG_REF_NAME = "modular_multiplier" *) 
module cryptoprocessor_ComputeCoreWrapper_0_0_modular_multiplier
   (dina,
    D,
    clk,
    Q,
    doutb,
    d,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    dina_ext_high_word);
  output [63:0]dina;
  output [1:0]D;
  input clk;
  input [3:0]Q;
  input [63:0]doutb;
  input [36:0]d;
  input \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input [26:0]dina_ext_high_word;

  wire [1:0]D;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire [3:0]Q;
  wire clk;
  wire [36:0]d;
  wire [63:0]dina;
  wire [26:0]dina_ext_high_word;
  wire done_r1;
  wire done_r2;
  wire [63:0]doutb;
  wire int_mul_result__0_n_100;
  wire int_mul_result__0_n_101;
  wire int_mul_result__0_n_102;
  wire int_mul_result__0_n_103;
  wire int_mul_result__0_n_104;
  wire int_mul_result__0_n_105;
  wire int_mul_result__0_n_106;
  wire int_mul_result__0_n_107;
  wire int_mul_result__0_n_108;
  wire int_mul_result__0_n_109;
  wire int_mul_result__0_n_110;
  wire int_mul_result__0_n_111;
  wire int_mul_result__0_n_112;
  wire int_mul_result__0_n_113;
  wire int_mul_result__0_n_114;
  wire int_mul_result__0_n_115;
  wire int_mul_result__0_n_116;
  wire int_mul_result__0_n_117;
  wire int_mul_result__0_n_118;
  wire int_mul_result__0_n_119;
  wire int_mul_result__0_n_120;
  wire int_mul_result__0_n_121;
  wire int_mul_result__0_n_122;
  wire int_mul_result__0_n_123;
  wire int_mul_result__0_n_124;
  wire int_mul_result__0_n_125;
  wire int_mul_result__0_n_126;
  wire int_mul_result__0_n_127;
  wire int_mul_result__0_n_128;
  wire int_mul_result__0_n_129;
  wire int_mul_result__0_n_130;
  wire int_mul_result__0_n_131;
  wire int_mul_result__0_n_132;
  wire int_mul_result__0_n_133;
  wire int_mul_result__0_n_134;
  wire int_mul_result__0_n_135;
  wire int_mul_result__0_n_136;
  wire int_mul_result__0_n_137;
  wire int_mul_result__0_n_138;
  wire int_mul_result__0_n_139;
  wire int_mul_result__0_n_140;
  wire int_mul_result__0_n_141;
  wire int_mul_result__0_n_142;
  wire int_mul_result__0_n_143;
  wire int_mul_result__0_n_144;
  wire int_mul_result__0_n_145;
  wire int_mul_result__0_n_146;
  wire int_mul_result__0_n_147;
  wire int_mul_result__0_n_148;
  wire int_mul_result__0_n_149;
  wire int_mul_result__0_n_150;
  wire int_mul_result__0_n_151;
  wire int_mul_result__0_n_152;
  wire int_mul_result__0_n_153;
  wire int_mul_result__0_n_58;
  wire int_mul_result__0_n_59;
  wire int_mul_result__0_n_60;
  wire int_mul_result__0_n_61;
  wire int_mul_result__0_n_62;
  wire int_mul_result__0_n_63;
  wire int_mul_result__0_n_64;
  wire int_mul_result__0_n_65;
  wire int_mul_result__0_n_66;
  wire int_mul_result__0_n_67;
  wire int_mul_result__0_n_68;
  wire int_mul_result__0_n_69;
  wire int_mul_result__0_n_70;
  wire int_mul_result__0_n_71;
  wire int_mul_result__0_n_72;
  wire int_mul_result__0_n_73;
  wire int_mul_result__0_n_74;
  wire int_mul_result__0_n_75;
  wire int_mul_result__0_n_76;
  wire int_mul_result__0_n_77;
  wire int_mul_result__0_n_78;
  wire int_mul_result__0_n_79;
  wire int_mul_result__0_n_80;
  wire int_mul_result__0_n_81;
  wire int_mul_result__0_n_82;
  wire int_mul_result__0_n_83;
  wire int_mul_result__0_n_84;
  wire int_mul_result__0_n_85;
  wire int_mul_result__0_n_86;
  wire int_mul_result__0_n_87;
  wire int_mul_result__0_n_88;
  wire int_mul_result__0_n_89;
  wire int_mul_result__0_n_90;
  wire int_mul_result__0_n_91;
  wire int_mul_result__0_n_92;
  wire int_mul_result__0_n_93;
  wire int_mul_result__0_n_94;
  wire int_mul_result__0_n_95;
  wire int_mul_result__0_n_96;
  wire int_mul_result__0_n_97;
  wire int_mul_result__0_n_98;
  wire int_mul_result__0_n_99;
  wire int_mul_result__1_n_106;
  wire int_mul_result__1_n_107;
  wire int_mul_result__1_n_108;
  wire int_mul_result__1_n_109;
  wire int_mul_result__1_n_110;
  wire int_mul_result__1_n_111;
  wire int_mul_result__1_n_112;
  wire int_mul_result__1_n_113;
  wire int_mul_result__1_n_114;
  wire int_mul_result__1_n_115;
  wire int_mul_result__1_n_116;
  wire int_mul_result__1_n_117;
  wire int_mul_result__1_n_118;
  wire int_mul_result__1_n_119;
  wire int_mul_result__1_n_120;
  wire int_mul_result__1_n_121;
  wire int_mul_result__1_n_122;
  wire int_mul_result__1_n_123;
  wire int_mul_result__1_n_124;
  wire int_mul_result__1_n_125;
  wire int_mul_result__1_n_126;
  wire int_mul_result__1_n_127;
  wire int_mul_result__1_n_128;
  wire int_mul_result__1_n_129;
  wire int_mul_result__1_n_130;
  wire int_mul_result__1_n_131;
  wire int_mul_result__1_n_132;
  wire int_mul_result__1_n_133;
  wire int_mul_result__1_n_134;
  wire int_mul_result__1_n_135;
  wire int_mul_result__1_n_136;
  wire int_mul_result__1_n_137;
  wire int_mul_result__1_n_138;
  wire int_mul_result__1_n_139;
  wire int_mul_result__1_n_140;
  wire int_mul_result__1_n_141;
  wire int_mul_result__1_n_142;
  wire int_mul_result__1_n_143;
  wire int_mul_result__1_n_144;
  wire int_mul_result__1_n_145;
  wire int_mul_result__1_n_146;
  wire int_mul_result__1_n_147;
  wire int_mul_result__1_n_148;
  wire int_mul_result__1_n_149;
  wire int_mul_result__1_n_150;
  wire int_mul_result__1_n_151;
  wire int_mul_result__1_n_152;
  wire int_mul_result__1_n_153;
  wire int_mul_result__2_n_100;
  wire int_mul_result__2_n_101;
  wire int_mul_result__2_n_102;
  wire int_mul_result__2_n_103;
  wire int_mul_result__2_n_104;
  wire int_mul_result__2_n_105;
  wire int_mul_result__2_n_106;
  wire int_mul_result__2_n_107;
  wire int_mul_result__2_n_108;
  wire int_mul_result__2_n_109;
  wire int_mul_result__2_n_110;
  wire int_mul_result__2_n_111;
  wire int_mul_result__2_n_112;
  wire int_mul_result__2_n_113;
  wire int_mul_result__2_n_114;
  wire int_mul_result__2_n_115;
  wire int_mul_result__2_n_116;
  wire int_mul_result__2_n_117;
  wire int_mul_result__2_n_118;
  wire int_mul_result__2_n_119;
  wire int_mul_result__2_n_120;
  wire int_mul_result__2_n_121;
  wire int_mul_result__2_n_122;
  wire int_mul_result__2_n_123;
  wire int_mul_result__2_n_124;
  wire int_mul_result__2_n_125;
  wire int_mul_result__2_n_126;
  wire int_mul_result__2_n_127;
  wire int_mul_result__2_n_128;
  wire int_mul_result__2_n_129;
  wire int_mul_result__2_n_130;
  wire int_mul_result__2_n_131;
  wire int_mul_result__2_n_132;
  wire int_mul_result__2_n_133;
  wire int_mul_result__2_n_134;
  wire int_mul_result__2_n_135;
  wire int_mul_result__2_n_136;
  wire int_mul_result__2_n_137;
  wire int_mul_result__2_n_138;
  wire int_mul_result__2_n_139;
  wire int_mul_result__2_n_140;
  wire int_mul_result__2_n_141;
  wire int_mul_result__2_n_142;
  wire int_mul_result__2_n_143;
  wire int_mul_result__2_n_144;
  wire int_mul_result__2_n_145;
  wire int_mul_result__2_n_146;
  wire int_mul_result__2_n_147;
  wire int_mul_result__2_n_148;
  wire int_mul_result__2_n_149;
  wire int_mul_result__2_n_150;
  wire int_mul_result__2_n_151;
  wire int_mul_result__2_n_152;
  wire int_mul_result__2_n_153;
  wire int_mul_result__2_n_58;
  wire int_mul_result__2_n_59;
  wire int_mul_result__2_n_60;
  wire int_mul_result__2_n_61;
  wire int_mul_result__2_n_62;
  wire int_mul_result__2_n_63;
  wire int_mul_result__2_n_64;
  wire int_mul_result__2_n_65;
  wire int_mul_result__2_n_66;
  wire int_mul_result__2_n_67;
  wire int_mul_result__2_n_68;
  wire int_mul_result__2_n_69;
  wire int_mul_result__2_n_70;
  wire int_mul_result__2_n_71;
  wire int_mul_result__2_n_72;
  wire int_mul_result__2_n_73;
  wire int_mul_result__2_n_74;
  wire int_mul_result__2_n_75;
  wire int_mul_result__2_n_76;
  wire int_mul_result__2_n_77;
  wire int_mul_result__2_n_78;
  wire int_mul_result__2_n_79;
  wire int_mul_result__2_n_80;
  wire int_mul_result__2_n_81;
  wire int_mul_result__2_n_82;
  wire int_mul_result__2_n_83;
  wire int_mul_result__2_n_84;
  wire int_mul_result__2_n_85;
  wire int_mul_result__2_n_86;
  wire int_mul_result__2_n_87;
  wire int_mul_result__2_n_88;
  wire int_mul_result__2_n_89;
  wire int_mul_result__2_n_90;
  wire int_mul_result__2_n_91;
  wire int_mul_result__2_n_92;
  wire int_mul_result__2_n_93;
  wire int_mul_result__2_n_94;
  wire int_mul_result__2_n_95;
  wire int_mul_result__2_n_96;
  wire int_mul_result__2_n_97;
  wire int_mul_result__2_n_98;
  wire int_mul_result__2_n_99;
  wire int_mul_result__3_n_106;
  wire int_mul_result__3_n_107;
  wire int_mul_result__3_n_108;
  wire int_mul_result__3_n_109;
  wire int_mul_result__3_n_110;
  wire int_mul_result__3_n_111;
  wire int_mul_result__3_n_112;
  wire int_mul_result__3_n_113;
  wire int_mul_result__3_n_114;
  wire int_mul_result__3_n_115;
  wire int_mul_result__3_n_116;
  wire int_mul_result__3_n_117;
  wire int_mul_result__3_n_118;
  wire int_mul_result__3_n_119;
  wire int_mul_result__3_n_120;
  wire int_mul_result__3_n_121;
  wire int_mul_result__3_n_122;
  wire int_mul_result__3_n_123;
  wire int_mul_result__3_n_124;
  wire int_mul_result__3_n_125;
  wire int_mul_result__3_n_126;
  wire int_mul_result__3_n_127;
  wire int_mul_result__3_n_128;
  wire int_mul_result__3_n_129;
  wire int_mul_result__3_n_130;
  wire int_mul_result__3_n_131;
  wire int_mul_result__3_n_132;
  wire int_mul_result__3_n_133;
  wire int_mul_result__3_n_134;
  wire int_mul_result__3_n_135;
  wire int_mul_result__3_n_136;
  wire int_mul_result__3_n_137;
  wire int_mul_result__3_n_138;
  wire int_mul_result__3_n_139;
  wire int_mul_result__3_n_140;
  wire int_mul_result__3_n_141;
  wire int_mul_result__3_n_142;
  wire int_mul_result__3_n_143;
  wire int_mul_result__3_n_144;
  wire int_mul_result__3_n_145;
  wire int_mul_result__3_n_146;
  wire int_mul_result__3_n_147;
  wire int_mul_result__3_n_148;
  wire int_mul_result__3_n_149;
  wire int_mul_result__3_n_150;
  wire int_mul_result__3_n_151;
  wire int_mul_result__3_n_152;
  wire int_mul_result__3_n_153;
  wire int_mul_result__4_n_100;
  wire int_mul_result__4_n_101;
  wire int_mul_result__4_n_102;
  wire int_mul_result__4_n_103;
  wire int_mul_result__4_n_104;
  wire int_mul_result__4_n_105;
  wire int_mul_result__4_n_106;
  wire int_mul_result__4_n_107;
  wire int_mul_result__4_n_108;
  wire int_mul_result__4_n_109;
  wire int_mul_result__4_n_110;
  wire int_mul_result__4_n_111;
  wire int_mul_result__4_n_112;
  wire int_mul_result__4_n_113;
  wire int_mul_result__4_n_114;
  wire int_mul_result__4_n_115;
  wire int_mul_result__4_n_116;
  wire int_mul_result__4_n_117;
  wire int_mul_result__4_n_118;
  wire int_mul_result__4_n_119;
  wire int_mul_result__4_n_120;
  wire int_mul_result__4_n_121;
  wire int_mul_result__4_n_122;
  wire int_mul_result__4_n_123;
  wire int_mul_result__4_n_124;
  wire int_mul_result__4_n_125;
  wire int_mul_result__4_n_126;
  wire int_mul_result__4_n_127;
  wire int_mul_result__4_n_128;
  wire int_mul_result__4_n_129;
  wire int_mul_result__4_n_130;
  wire int_mul_result__4_n_131;
  wire int_mul_result__4_n_132;
  wire int_mul_result__4_n_133;
  wire int_mul_result__4_n_134;
  wire int_mul_result__4_n_135;
  wire int_mul_result__4_n_136;
  wire int_mul_result__4_n_137;
  wire int_mul_result__4_n_138;
  wire int_mul_result__4_n_139;
  wire int_mul_result__4_n_140;
  wire int_mul_result__4_n_141;
  wire int_mul_result__4_n_142;
  wire int_mul_result__4_n_143;
  wire int_mul_result__4_n_144;
  wire int_mul_result__4_n_145;
  wire int_mul_result__4_n_146;
  wire int_mul_result__4_n_147;
  wire int_mul_result__4_n_148;
  wire int_mul_result__4_n_149;
  wire int_mul_result__4_n_150;
  wire int_mul_result__4_n_151;
  wire int_mul_result__4_n_152;
  wire int_mul_result__4_n_153;
  wire int_mul_result__4_n_58;
  wire int_mul_result__4_n_59;
  wire int_mul_result__4_n_60;
  wire int_mul_result__4_n_61;
  wire int_mul_result__4_n_62;
  wire int_mul_result__4_n_63;
  wire int_mul_result__4_n_64;
  wire int_mul_result__4_n_65;
  wire int_mul_result__4_n_66;
  wire int_mul_result__4_n_67;
  wire int_mul_result__4_n_68;
  wire int_mul_result__4_n_69;
  wire int_mul_result__4_n_70;
  wire int_mul_result__4_n_71;
  wire int_mul_result__4_n_72;
  wire int_mul_result__4_n_73;
  wire int_mul_result__4_n_74;
  wire int_mul_result__4_n_75;
  wire int_mul_result__4_n_76;
  wire int_mul_result__4_n_77;
  wire int_mul_result__4_n_78;
  wire int_mul_result__4_n_79;
  wire int_mul_result__4_n_80;
  wire int_mul_result__4_n_81;
  wire int_mul_result__4_n_82;
  wire int_mul_result__4_n_83;
  wire int_mul_result__4_n_84;
  wire int_mul_result__4_n_85;
  wire int_mul_result__4_n_86;
  wire int_mul_result__4_n_87;
  wire int_mul_result__4_n_88;
  wire int_mul_result__4_n_89;
  wire int_mul_result__4_n_90;
  wire int_mul_result__4_n_91;
  wire int_mul_result__4_n_92;
  wire int_mul_result__4_n_93;
  wire int_mul_result__4_n_94;
  wire int_mul_result__4_n_95;
  wire int_mul_result__4_n_96;
  wire int_mul_result__4_n_97;
  wire int_mul_result__4_n_98;
  wire int_mul_result__4_n_99;
  wire int_mul_result__5_n_106;
  wire int_mul_result__5_n_107;
  wire int_mul_result__5_n_108;
  wire int_mul_result__5_n_109;
  wire int_mul_result__5_n_110;
  wire int_mul_result__5_n_111;
  wire int_mul_result__5_n_112;
  wire int_mul_result__5_n_113;
  wire int_mul_result__5_n_114;
  wire int_mul_result__5_n_115;
  wire int_mul_result__5_n_116;
  wire int_mul_result__5_n_117;
  wire int_mul_result__5_n_118;
  wire int_mul_result__5_n_119;
  wire int_mul_result__5_n_120;
  wire int_mul_result__5_n_121;
  wire int_mul_result__5_n_122;
  wire int_mul_result__5_n_123;
  wire int_mul_result__5_n_124;
  wire int_mul_result__5_n_125;
  wire int_mul_result__5_n_126;
  wire int_mul_result__5_n_127;
  wire int_mul_result__5_n_128;
  wire int_mul_result__5_n_129;
  wire int_mul_result__5_n_130;
  wire int_mul_result__5_n_131;
  wire int_mul_result__5_n_132;
  wire int_mul_result__5_n_133;
  wire int_mul_result__5_n_134;
  wire int_mul_result__5_n_135;
  wire int_mul_result__5_n_136;
  wire int_mul_result__5_n_137;
  wire int_mul_result__5_n_138;
  wire int_mul_result__5_n_139;
  wire int_mul_result__5_n_140;
  wire int_mul_result__5_n_141;
  wire int_mul_result__5_n_142;
  wire int_mul_result__5_n_143;
  wire int_mul_result__5_n_144;
  wire int_mul_result__5_n_145;
  wire int_mul_result__5_n_146;
  wire int_mul_result__5_n_147;
  wire int_mul_result__5_n_148;
  wire int_mul_result__5_n_149;
  wire int_mul_result__5_n_150;
  wire int_mul_result__5_n_151;
  wire int_mul_result__5_n_152;
  wire int_mul_result__5_n_153;
  wire int_mul_result__6_n_100;
  wire int_mul_result__6_n_101;
  wire int_mul_result__6_n_102;
  wire int_mul_result__6_n_103;
  wire int_mul_result__6_n_104;
  wire int_mul_result__6_n_105;
  wire int_mul_result__6_n_106;
  wire int_mul_result__6_n_107;
  wire int_mul_result__6_n_108;
  wire int_mul_result__6_n_109;
  wire int_mul_result__6_n_110;
  wire int_mul_result__6_n_111;
  wire int_mul_result__6_n_112;
  wire int_mul_result__6_n_113;
  wire int_mul_result__6_n_114;
  wire int_mul_result__6_n_115;
  wire int_mul_result__6_n_116;
  wire int_mul_result__6_n_117;
  wire int_mul_result__6_n_118;
  wire int_mul_result__6_n_119;
  wire int_mul_result__6_n_120;
  wire int_mul_result__6_n_121;
  wire int_mul_result__6_n_122;
  wire int_mul_result__6_n_123;
  wire int_mul_result__6_n_124;
  wire int_mul_result__6_n_125;
  wire int_mul_result__6_n_126;
  wire int_mul_result__6_n_127;
  wire int_mul_result__6_n_128;
  wire int_mul_result__6_n_129;
  wire int_mul_result__6_n_130;
  wire int_mul_result__6_n_131;
  wire int_mul_result__6_n_132;
  wire int_mul_result__6_n_133;
  wire int_mul_result__6_n_134;
  wire int_mul_result__6_n_135;
  wire int_mul_result__6_n_136;
  wire int_mul_result__6_n_137;
  wire int_mul_result__6_n_138;
  wire int_mul_result__6_n_139;
  wire int_mul_result__6_n_140;
  wire int_mul_result__6_n_141;
  wire int_mul_result__6_n_142;
  wire int_mul_result__6_n_143;
  wire int_mul_result__6_n_144;
  wire int_mul_result__6_n_145;
  wire int_mul_result__6_n_146;
  wire int_mul_result__6_n_147;
  wire int_mul_result__6_n_148;
  wire int_mul_result__6_n_149;
  wire int_mul_result__6_n_150;
  wire int_mul_result__6_n_151;
  wire int_mul_result__6_n_152;
  wire int_mul_result__6_n_153;
  wire int_mul_result__6_n_58;
  wire int_mul_result__6_n_59;
  wire int_mul_result__6_n_60;
  wire int_mul_result__6_n_61;
  wire int_mul_result__6_n_62;
  wire int_mul_result__6_n_63;
  wire int_mul_result__6_n_64;
  wire int_mul_result__6_n_65;
  wire int_mul_result__6_n_66;
  wire int_mul_result__6_n_67;
  wire int_mul_result__6_n_68;
  wire int_mul_result__6_n_69;
  wire int_mul_result__6_n_70;
  wire int_mul_result__6_n_71;
  wire int_mul_result__6_n_72;
  wire int_mul_result__6_n_73;
  wire int_mul_result__6_n_74;
  wire int_mul_result__6_n_75;
  wire int_mul_result__6_n_76;
  wire int_mul_result__6_n_77;
  wire int_mul_result__6_n_78;
  wire int_mul_result__6_n_79;
  wire int_mul_result__6_n_80;
  wire int_mul_result__6_n_81;
  wire int_mul_result__6_n_82;
  wire int_mul_result__6_n_83;
  wire int_mul_result__6_n_84;
  wire int_mul_result__6_n_85;
  wire int_mul_result__6_n_86;
  wire int_mul_result__6_n_87;
  wire int_mul_result__6_n_88;
  wire int_mul_result__6_n_89;
  wire int_mul_result__6_n_90;
  wire int_mul_result__6_n_91;
  wire int_mul_result__6_n_92;
  wire int_mul_result__6_n_93;
  wire int_mul_result__6_n_94;
  wire int_mul_result__6_n_95;
  wire int_mul_result__6_n_96;
  wire int_mul_result__6_n_97;
  wire int_mul_result__6_n_98;
  wire int_mul_result__6_n_99;
  wire int_mul_result_n_106;
  wire int_mul_result_n_107;
  wire int_mul_result_n_108;
  wire int_mul_result_n_109;
  wire int_mul_result_n_110;
  wire int_mul_result_n_111;
  wire int_mul_result_n_112;
  wire int_mul_result_n_113;
  wire int_mul_result_n_114;
  wire int_mul_result_n_115;
  wire int_mul_result_n_116;
  wire int_mul_result_n_117;
  wire int_mul_result_n_118;
  wire int_mul_result_n_119;
  wire int_mul_result_n_120;
  wire int_mul_result_n_121;
  wire int_mul_result_n_122;
  wire int_mul_result_n_123;
  wire int_mul_result_n_124;
  wire int_mul_result_n_125;
  wire int_mul_result_n_126;
  wire int_mul_result_n_127;
  wire int_mul_result_n_128;
  wire int_mul_result_n_129;
  wire int_mul_result_n_130;
  wire int_mul_result_n_131;
  wire int_mul_result_n_132;
  wire int_mul_result_n_133;
  wire int_mul_result_n_134;
  wire int_mul_result_n_135;
  wire int_mul_result_n_136;
  wire int_mul_result_n_137;
  wire int_mul_result_n_138;
  wire int_mul_result_n_139;
  wire int_mul_result_n_140;
  wire int_mul_result_n_141;
  wire int_mul_result_n_142;
  wire int_mul_result_n_143;
  wire int_mul_result_n_144;
  wire int_mul_result_n_145;
  wire int_mul_result_n_146;
  wire int_mul_result_n_147;
  wire int_mul_result_n_148;
  wire int_mul_result_n_149;
  wire int_mul_result_n_150;
  wire int_mul_result_n_151;
  wire int_mul_result_n_152;
  wire int_mul_result_n_153;
  wire mul_start;
  wire \r1_reg[0]__2_n_0 ;
  wire \r1_reg[0]__3_n_0 ;
  wire \r1_reg[0]__4_n_0 ;
  wire \r1_reg[10]__2_n_0 ;
  wire \r1_reg[10]__3_n_0 ;
  wire \r1_reg[10]__4_n_0 ;
  wire \r1_reg[11]__2_n_0 ;
  wire \r1_reg[11]__3_n_0 ;
  wire \r1_reg[11]__4_n_0 ;
  wire \r1_reg[12]__2_n_0 ;
  wire \r1_reg[12]__3_n_0 ;
  wire \r1_reg[12]__4_n_0 ;
  wire \r1_reg[13]__2_n_0 ;
  wire \r1_reg[13]__3_n_0 ;
  wire \r1_reg[13]__4_n_0 ;
  wire \r1_reg[14]__2_n_0 ;
  wire \r1_reg[14]__3_n_0 ;
  wire \r1_reg[14]__4_n_0 ;
  wire \r1_reg[15]__2_n_0 ;
  wire \r1_reg[15]__3_n_0 ;
  wire \r1_reg[15]__4_n_0 ;
  wire \r1_reg[16]__2_n_0 ;
  wire \r1_reg[16]__3_n_0 ;
  wire \r1_reg[16]__4_n_0 ;
  wire \r1_reg[1]__2_n_0 ;
  wire \r1_reg[1]__3_n_0 ;
  wire \r1_reg[1]__4_n_0 ;
  wire \r1_reg[2]__2_n_0 ;
  wire \r1_reg[2]__3_n_0 ;
  wire \r1_reg[2]__4_n_0 ;
  wire \r1_reg[3]__2_n_0 ;
  wire \r1_reg[3]__3_n_0 ;
  wire \r1_reg[3]__4_n_0 ;
  wire \r1_reg[4]__2_n_0 ;
  wire \r1_reg[4]__3_n_0 ;
  wire \r1_reg[4]__4_n_0 ;
  wire \r1_reg[5]__2_n_0 ;
  wire \r1_reg[5]__3_n_0 ;
  wire \r1_reg[5]__4_n_0 ;
  wire \r1_reg[6]__2_n_0 ;
  wire \r1_reg[6]__3_n_0 ;
  wire \r1_reg[6]__4_n_0 ;
  wire \r1_reg[7]__2_n_0 ;
  wire \r1_reg[7]__3_n_0 ;
  wire \r1_reg[7]__4_n_0 ;
  wire \r1_reg[8]__2_n_0 ;
  wire \r1_reg[8]__3_n_0 ;
  wire \r1_reg[8]__4_n_0 ;
  wire \r1_reg[9]__2_n_0 ;
  wire \r1_reg[9]__3_n_0 ;
  wire \r1_reg[9]__4_n_0 ;
  wire r1_reg__0_n_100;
  wire r1_reg__0_n_101;
  wire r1_reg__0_n_102;
  wire r1_reg__0_n_103;
  wire r1_reg__0_n_104;
  wire r1_reg__0_n_105;
  wire r1_reg__0_n_58;
  wire r1_reg__0_n_59;
  wire r1_reg__0_n_60;
  wire r1_reg__0_n_61;
  wire r1_reg__0_n_62;
  wire r1_reg__0_n_63;
  wire r1_reg__0_n_64;
  wire r1_reg__0_n_65;
  wire r1_reg__0_n_66;
  wire r1_reg__0_n_67;
  wire r1_reg__0_n_68;
  wire r1_reg__0_n_69;
  wire r1_reg__0_n_70;
  wire r1_reg__0_n_71;
  wire r1_reg__0_n_72;
  wire r1_reg__0_n_73;
  wire r1_reg__0_n_74;
  wire r1_reg__0_n_75;
  wire r1_reg__0_n_76;
  wire r1_reg__0_n_77;
  wire r1_reg__0_n_78;
  wire r1_reg__0_n_79;
  wire r1_reg__0_n_80;
  wire r1_reg__0_n_81;
  wire r1_reg__0_n_82;
  wire r1_reg__0_n_83;
  wire r1_reg__0_n_84;
  wire r1_reg__0_n_85;
  wire r1_reg__0_n_86;
  wire r1_reg__0_n_87;
  wire r1_reg__0_n_88;
  wire r1_reg__0_n_89;
  wire r1_reg__0_n_90;
  wire r1_reg__0_n_91;
  wire r1_reg__0_n_92;
  wire r1_reg__0_n_93;
  wire r1_reg__0_n_94;
  wire r1_reg__0_n_95;
  wire r1_reg__0_n_96;
  wire r1_reg__0_n_97;
  wire r1_reg__0_n_98;
  wire r1_reg__0_n_99;
  wire [63:33]r1_reg__3;
  wire r1_reg_n_100;
  wire r1_reg_n_101;
  wire r1_reg_n_102;
  wire r1_reg_n_103;
  wire r1_reg_n_104;
  wire r1_reg_n_105;
  wire r1_reg_n_58;
  wire r1_reg_n_59;
  wire r1_reg_n_60;
  wire r1_reg_n_61;
  wire r1_reg_n_62;
  wire r1_reg_n_63;
  wire r1_reg_n_64;
  wire r1_reg_n_65;
  wire r1_reg_n_66;
  wire r1_reg_n_67;
  wire r1_reg_n_68;
  wire r1_reg_n_69;
  wire r1_reg_n_70;
  wire r1_reg_n_71;
  wire r1_reg_n_72;
  wire r1_reg_n_73;
  wire r1_reg_n_74;
  wire r1_reg_n_75;
  wire r1_reg_n_76;
  wire r1_reg_n_77;
  wire r1_reg_n_78;
  wire r1_reg_n_79;
  wire r1_reg_n_80;
  wire r1_reg_n_81;
  wire r1_reg_n_82;
  wire r1_reg_n_83;
  wire r1_reg_n_84;
  wire r1_reg_n_85;
  wire r1_reg_n_86;
  wire r1_reg_n_87;
  wire r1_reg_n_88;
  wire r1_reg_n_89;
  wire r1_reg_n_90;
  wire r1_reg_n_91;
  wire r1_reg_n_92;
  wire r1_reg_n_93;
  wire r1_reg_n_94;
  wire r1_reg_n_95;
  wire r1_reg_n_96;
  wire r1_reg_n_97;
  wire r1_reg_n_98;
  wire r1_reg_n_99;
  wire [63:0]r2;
  wire \r2[36]_i_2_n_0 ;
  wire \r2[36]_i_3_n_0 ;
  wire \r2[36]_i_4_n_0 ;
  wire \r2[40]_i_2_n_0 ;
  wire \r2[40]_i_3_n_0 ;
  wire \r2[40]_i_4_n_0 ;
  wire \r2[40]_i_5_n_0 ;
  wire \r2[44]_i_2_n_0 ;
  wire \r2[44]_i_3_n_0 ;
  wire \r2[44]_i_4_n_0 ;
  wire \r2[44]_i_5_n_0 ;
  wire \r2[48]_i_2_n_0 ;
  wire \r2[48]_i_3_n_0 ;
  wire \r2[48]_i_4_n_0 ;
  wire \r2[48]_i_5_n_0 ;
  wire \r2[52]_i_2_n_0 ;
  wire \r2[52]_i_3_n_0 ;
  wire \r2[52]_i_4_n_0 ;
  wire \r2[52]_i_5_n_0 ;
  wire \r2[52]_i_6_n_0 ;
  wire \r2[56]_i_2_n_0 ;
  wire \r2[56]_i_3_n_0 ;
  wire \r2[56]_i_4_n_0 ;
  wire \r2[56]_i_5_n_0 ;
  wire \r2[56]_i_6_n_0 ;
  wire \r2[56]_i_7_n_0 ;
  wire \r2[56]_i_8_n_0 ;
  wire \r2[56]_i_9_n_0 ;
  wire \r2[60]_i_2_n_0 ;
  wire \r2[60]_i_3_n_0 ;
  wire \r2[60]_i_4_n_0 ;
  wire \r2[60]_i_5_n_0 ;
  wire \r2[60]_i_6_n_0 ;
  wire \r2[60]_i_7_n_0 ;
  wire \r2[60]_i_8_n_0 ;
  wire \r2[60]_i_9_n_0 ;
  wire \r2[63]_i_2_n_0 ;
  wire \r2[63]_i_3_n_0 ;
  wire \r2[63]_i_4_n_0 ;
  wire \r2[63]_i_5_n_0 ;
  wire \r2[63]_i_6_n_0 ;
  wire \r2_reg[36]_i_1_n_0 ;
  wire \r2_reg[36]_i_1_n_1 ;
  wire \r2_reg[36]_i_1_n_2 ;
  wire \r2_reg[36]_i_1_n_3 ;
  wire \r2_reg[40]_i_1_n_0 ;
  wire \r2_reg[40]_i_1_n_1 ;
  wire \r2_reg[40]_i_1_n_2 ;
  wire \r2_reg[40]_i_1_n_3 ;
  wire \r2_reg[44]_i_1_n_0 ;
  wire \r2_reg[44]_i_1_n_1 ;
  wire \r2_reg[44]_i_1_n_2 ;
  wire \r2_reg[44]_i_1_n_3 ;
  wire \r2_reg[48]_i_1_n_0 ;
  wire \r2_reg[48]_i_1_n_1 ;
  wire \r2_reg[48]_i_1_n_2 ;
  wire \r2_reg[48]_i_1_n_3 ;
  wire \r2_reg[52]_i_1_n_0 ;
  wire \r2_reg[52]_i_1_n_1 ;
  wire \r2_reg[52]_i_1_n_2 ;
  wire \r2_reg[52]_i_1_n_3 ;
  wire \r2_reg[56]_i_1_n_0 ;
  wire \r2_reg[56]_i_1_n_1 ;
  wire \r2_reg[56]_i_1_n_2 ;
  wire \r2_reg[56]_i_1_n_3 ;
  wire \r2_reg[60]_i_1_n_0 ;
  wire \r2_reg[60]_i_1_n_1 ;
  wire \r2_reg[60]_i_1_n_2 ;
  wire \r2_reg[60]_i_1_n_3 ;
  wire \r2_reg[63]_i_1_n_2 ;
  wire \r2_reg[63]_i_1_n_3 ;
  wire NLW_int_mul_result_CARRYCASCOUT_UNCONNECTED;
  wire NLW_int_mul_result_MULTSIGNOUT_UNCONNECTED;
  wire NLW_int_mul_result_OVERFLOW_UNCONNECTED;
  wire NLW_int_mul_result_PATTERNBDETECT_UNCONNECTED;
  wire NLW_int_mul_result_PATTERNDETECT_UNCONNECTED;
  wire NLW_int_mul_result_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_int_mul_result_ACOUT_UNCONNECTED;
  wire [17:0]NLW_int_mul_result_BCOUT_UNCONNECTED;
  wire [3:0]NLW_int_mul_result_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_int_mul_result_P_UNCONNECTED;
  wire NLW_int_mul_result__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_int_mul_result__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_int_mul_result__0_OVERFLOW_UNCONNECTED;
  wire NLW_int_mul_result__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_int_mul_result__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_int_mul_result__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_int_mul_result__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_int_mul_result__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_int_mul_result__0_CARRYOUT_UNCONNECTED;
  wire NLW_int_mul_result__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_int_mul_result__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_int_mul_result__1_OVERFLOW_UNCONNECTED;
  wire NLW_int_mul_result__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_int_mul_result__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_int_mul_result__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_int_mul_result__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_int_mul_result__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_int_mul_result__1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_int_mul_result__1_P_UNCONNECTED;
  wire NLW_int_mul_result__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_int_mul_result__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_int_mul_result__2_OVERFLOW_UNCONNECTED;
  wire NLW_int_mul_result__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_int_mul_result__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_int_mul_result__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_int_mul_result__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_int_mul_result__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_int_mul_result__2_CARRYOUT_UNCONNECTED;
  wire NLW_int_mul_result__3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_int_mul_result__3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_int_mul_result__3_OVERFLOW_UNCONNECTED;
  wire NLW_int_mul_result__3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_int_mul_result__3_PATTERNDETECT_UNCONNECTED;
  wire NLW_int_mul_result__3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_int_mul_result__3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_int_mul_result__3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_int_mul_result__3_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_int_mul_result__3_P_UNCONNECTED;
  wire NLW_int_mul_result__4_CARRYCASCOUT_UNCONNECTED;
  wire NLW_int_mul_result__4_MULTSIGNOUT_UNCONNECTED;
  wire NLW_int_mul_result__4_OVERFLOW_UNCONNECTED;
  wire NLW_int_mul_result__4_PATTERNBDETECT_UNCONNECTED;
  wire NLW_int_mul_result__4_PATTERNDETECT_UNCONNECTED;
  wire NLW_int_mul_result__4_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_int_mul_result__4_ACOUT_UNCONNECTED;
  wire [17:0]NLW_int_mul_result__4_BCOUT_UNCONNECTED;
  wire [3:0]NLW_int_mul_result__4_CARRYOUT_UNCONNECTED;
  wire NLW_int_mul_result__5_CARRYCASCOUT_UNCONNECTED;
  wire NLW_int_mul_result__5_MULTSIGNOUT_UNCONNECTED;
  wire NLW_int_mul_result__5_OVERFLOW_UNCONNECTED;
  wire NLW_int_mul_result__5_PATTERNBDETECT_UNCONNECTED;
  wire NLW_int_mul_result__5_PATTERNDETECT_UNCONNECTED;
  wire NLW_int_mul_result__5_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_int_mul_result__5_ACOUT_UNCONNECTED;
  wire [17:0]NLW_int_mul_result__5_BCOUT_UNCONNECTED;
  wire [3:0]NLW_int_mul_result__5_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_int_mul_result__5_P_UNCONNECTED;
  wire NLW_int_mul_result__6_CARRYCASCOUT_UNCONNECTED;
  wire NLW_int_mul_result__6_MULTSIGNOUT_UNCONNECTED;
  wire NLW_int_mul_result__6_OVERFLOW_UNCONNECTED;
  wire NLW_int_mul_result__6_PATTERNBDETECT_UNCONNECTED;
  wire NLW_int_mul_result__6_PATTERNDETECT_UNCONNECTED;
  wire NLW_int_mul_result__6_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_int_mul_result__6_ACOUT_UNCONNECTED;
  wire [17:0]NLW_int_mul_result__6_BCOUT_UNCONNECTED;
  wire [3:0]NLW_int_mul_result__6_CARRYOUT_UNCONNECTED;
  wire NLW_r1_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_r1_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_r1_reg_OVERFLOW_UNCONNECTED;
  wire NLW_r1_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_r1_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_r1_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_r1_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_r1_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_r1_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_r1_reg_PCOUT_UNCONNECTED;
  wire NLW_r1_reg__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_r1_reg__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_r1_reg__0_OVERFLOW_UNCONNECTED;
  wire NLW_r1_reg__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_r1_reg__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_r1_reg__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_r1_reg__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_r1_reg__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_r1_reg__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_r1_reg__0_PCOUT_UNCONNECTED;
  wire [3:2]\NLW_r2_reg[63]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_r2_reg[63]_i_1_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_10
       (.I0(dina_ext_high_word[18]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[55]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[55]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_11
       (.I0(dina_ext_high_word[17]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[54]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[54]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_12
       (.I0(dina_ext_high_word[16]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[53]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[53]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_13
       (.I0(dina_ext_high_word[15]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[52]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[52]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_14
       (.I0(dina_ext_high_word[14]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[51]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[51]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_15
       (.I0(dina_ext_high_word[13]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[50]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[50]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_16
       (.I0(dina_ext_high_word[12]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[49]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[49]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_17
       (.I0(dina_ext_high_word[11]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[48]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[48]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_18
       (.I0(dina_ext_high_word[10]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[47]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[47]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_19
       (.I0(dina_ext_high_word[9]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[46]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[46]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_2
       (.I0(dina_ext_high_word[26]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[63]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[63]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_20
       (.I0(dina_ext_high_word[8]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[45]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[45]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_21
       (.I0(dina_ext_high_word[7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[44]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[44]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_22
       (.I0(dina_ext_high_word[6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[43]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[43]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_23
       (.I0(dina_ext_high_word[5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[42]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[42]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_24
       (.I0(dina_ext_high_word[4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[41]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[41]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_25
       (.I0(dina_ext_high_word[3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[40]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[40]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_26
       (.I0(dina_ext_high_word[2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[39]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[39]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_27
       (.I0(dina_ext_high_word[1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[38]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[38]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_28
       (.I0(dina_ext_high_word[0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[37]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[37]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_29
       (.I0(d[36]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[36]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[36]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_3
       (.I0(dina_ext_high_word[25]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[62]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[62]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_30
       (.I0(d[35]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[35]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[35]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_31
       (.I0(d[34]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[34]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[34]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_32
       (.I0(d[33]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[33]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[33]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_33
       (.I0(d[32]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[32]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[32]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_34
       (.I0(d[31]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[31]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[31]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_35
       (.I0(d[30]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[30]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[30]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_36
       (.I0(d[29]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[29]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[29]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_37
       (.I0(d[28]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[28]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[28]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_38
       (.I0(d[27]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[27]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[27]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_39
       (.I0(d[26]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[26]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[26]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_4
       (.I0(dina_ext_high_word[24]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[61]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[61]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_40
       (.I0(d[25]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[25]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[25]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_41
       (.I0(d[24]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[24]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[24]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_42
       (.I0(d[23]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[23]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[23]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_43
       (.I0(d[22]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[22]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[22]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_44
       (.I0(d[21]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[21]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[21]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_45
       (.I0(d[20]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[20]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[20]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_46
       (.I0(d[19]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[19]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[19]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_47
       (.I0(d[18]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[18]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[18]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_48
       (.I0(d[17]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[17]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[17]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_49
       (.I0(d[16]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[16]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[16]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_5
       (.I0(dina_ext_high_word[23]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[60]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[60]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_50
       (.I0(d[15]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[15]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[15]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_51
       (.I0(d[14]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[14]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[14]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_52
       (.I0(d[13]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[13]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_53
       (.I0(d[12]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[12]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_54
       (.I0(d[11]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[11]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[11]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_55
       (.I0(d[10]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[10]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_56
       (.I0(d[9]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[9]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[9]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_57
       (.I0(d[8]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[8]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_58
       (.I0(d[7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[7]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_59
       (.I0(d[6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[6]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_6
       (.I0(dina_ext_high_word[22]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[59]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[59]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_60
       (.I0(d[5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[5]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_61
       (.I0(d[4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[4]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_62
       (.I0(d[3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_63
       (.I0(d[2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_64
       (.I0(d[1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_65
       (.I0(d[0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[0]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_7
       (.I0(dina_ext_high_word[21]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[58]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[58]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_8
       (.I0(dina_ext_high_word[20]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[57]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[57]));
  LUT4 #(
    .INIT(16'hF888)) 
    BR_i_9
       (.I0(dina_ext_high_word[19]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(r2[56]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(dina[56]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(done_r2),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(Q[3]),
        .I1(done_r2),
        .O(D[1]));
  LUT2 #(
    .INIT(4'hE)) 
    done_r1_i_1
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(mul_start));
  FDRE done_r1_reg
       (.C(clk),
        .CE(1'b1),
        .D(mul_start),
        .Q(done_r1),
        .R(1'b0));
  FDRE done_r2_reg
       (.C(clk),
        .CE(1'b1),
        .D(done_r1),
        .Q(done_r2),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    int_mul_result
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,doutb[50:34]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_int_mul_result_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,doutb[33:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_int_mul_result_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_int_mul_result_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_int_mul_result_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q[0]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[1]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_int_mul_result_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_int_mul_result_OVERFLOW_UNCONNECTED),
        .P(NLW_int_mul_result_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_int_mul_result_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_int_mul_result_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({int_mul_result_n_106,int_mul_result_n_107,int_mul_result_n_108,int_mul_result_n_109,int_mul_result_n_110,int_mul_result_n_111,int_mul_result_n_112,int_mul_result_n_113,int_mul_result_n_114,int_mul_result_n_115,int_mul_result_n_116,int_mul_result_n_117,int_mul_result_n_118,int_mul_result_n_119,int_mul_result_n_120,int_mul_result_n_121,int_mul_result_n_122,int_mul_result_n_123,int_mul_result_n_124,int_mul_result_n_125,int_mul_result_n_126,int_mul_result_n_127,int_mul_result_n_128,int_mul_result_n_129,int_mul_result_n_130,int_mul_result_n_131,int_mul_result_n_132,int_mul_result_n_133,int_mul_result_n_134,int_mul_result_n_135,int_mul_result_n_136,int_mul_result_n_137,int_mul_result_n_138,int_mul_result_n_139,int_mul_result_n_140,int_mul_result_n_141,int_mul_result_n_142,int_mul_result_n_143,int_mul_result_n_144,int_mul_result_n_145,int_mul_result_n_146,int_mul_result_n_147,int_mul_result_n_148,int_mul_result_n_149,int_mul_result_n_150,int_mul_result_n_151,int_mul_result_n_152,int_mul_result_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_int_mul_result_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 14x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    int_mul_result__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,doutb[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_int_mul_result__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,doutb[63:51]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_int_mul_result__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_int_mul_result__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_int_mul_result__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q[1]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[0]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_int_mul_result__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_int_mul_result__0_OVERFLOW_UNCONNECTED),
        .P({int_mul_result__0_n_58,int_mul_result__0_n_59,int_mul_result__0_n_60,int_mul_result__0_n_61,int_mul_result__0_n_62,int_mul_result__0_n_63,int_mul_result__0_n_64,int_mul_result__0_n_65,int_mul_result__0_n_66,int_mul_result__0_n_67,int_mul_result__0_n_68,int_mul_result__0_n_69,int_mul_result__0_n_70,int_mul_result__0_n_71,int_mul_result__0_n_72,int_mul_result__0_n_73,int_mul_result__0_n_74,int_mul_result__0_n_75,int_mul_result__0_n_76,int_mul_result__0_n_77,int_mul_result__0_n_78,int_mul_result__0_n_79,int_mul_result__0_n_80,int_mul_result__0_n_81,int_mul_result__0_n_82,int_mul_result__0_n_83,int_mul_result__0_n_84,int_mul_result__0_n_85,int_mul_result__0_n_86,int_mul_result__0_n_87,int_mul_result__0_n_88,int_mul_result__0_n_89,int_mul_result__0_n_90,int_mul_result__0_n_91,int_mul_result__0_n_92,int_mul_result__0_n_93,int_mul_result__0_n_94,int_mul_result__0_n_95,int_mul_result__0_n_96,int_mul_result__0_n_97,int_mul_result__0_n_98,int_mul_result__0_n_99,int_mul_result__0_n_100,int_mul_result__0_n_101,int_mul_result__0_n_102,int_mul_result__0_n_103,int_mul_result__0_n_104,int_mul_result__0_n_105}),
        .PATTERNBDETECT(NLW_int_mul_result__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_int_mul_result__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({int_mul_result_n_106,int_mul_result_n_107,int_mul_result_n_108,int_mul_result_n_109,int_mul_result_n_110,int_mul_result_n_111,int_mul_result_n_112,int_mul_result_n_113,int_mul_result_n_114,int_mul_result_n_115,int_mul_result_n_116,int_mul_result_n_117,int_mul_result_n_118,int_mul_result_n_119,int_mul_result_n_120,int_mul_result_n_121,int_mul_result_n_122,int_mul_result_n_123,int_mul_result_n_124,int_mul_result_n_125,int_mul_result_n_126,int_mul_result_n_127,int_mul_result_n_128,int_mul_result_n_129,int_mul_result_n_130,int_mul_result_n_131,int_mul_result_n_132,int_mul_result_n_133,int_mul_result_n_134,int_mul_result_n_135,int_mul_result_n_136,int_mul_result_n_137,int_mul_result_n_138,int_mul_result_n_139,int_mul_result_n_140,int_mul_result_n_141,int_mul_result_n_142,int_mul_result_n_143,int_mul_result_n_144,int_mul_result_n_145,int_mul_result_n_146,int_mul_result_n_147,int_mul_result_n_148,int_mul_result_n_149,int_mul_result_n_150,int_mul_result_n_151,int_mul_result_n_152,int_mul_result_n_153}),
        .PCOUT({int_mul_result__0_n_106,int_mul_result__0_n_107,int_mul_result__0_n_108,int_mul_result__0_n_109,int_mul_result__0_n_110,int_mul_result__0_n_111,int_mul_result__0_n_112,int_mul_result__0_n_113,int_mul_result__0_n_114,int_mul_result__0_n_115,int_mul_result__0_n_116,int_mul_result__0_n_117,int_mul_result__0_n_118,int_mul_result__0_n_119,int_mul_result__0_n_120,int_mul_result__0_n_121,int_mul_result__0_n_122,int_mul_result__0_n_123,int_mul_result__0_n_124,int_mul_result__0_n_125,int_mul_result__0_n_126,int_mul_result__0_n_127,int_mul_result__0_n_128,int_mul_result__0_n_129,int_mul_result__0_n_130,int_mul_result__0_n_131,int_mul_result__0_n_132,int_mul_result__0_n_133,int_mul_result__0_n_134,int_mul_result__0_n_135,int_mul_result__0_n_136,int_mul_result__0_n_137,int_mul_result__0_n_138,int_mul_result__0_n_139,int_mul_result__0_n_140,int_mul_result__0_n_141,int_mul_result__0_n_142,int_mul_result__0_n_143,int_mul_result__0_n_144,int_mul_result__0_n_145,int_mul_result__0_n_146,int_mul_result__0_n_147,int_mul_result__0_n_148,int_mul_result__0_n_149,int_mul_result__0_n_150,int_mul_result__0_n_151,int_mul_result__0_n_152,int_mul_result__0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_int_mul_result__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    int_mul_result__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,doutb[33:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_int_mul_result__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,doutb[33:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_int_mul_result__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_int_mul_result__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_int_mul_result__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q[0]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[1]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_int_mul_result__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_int_mul_result__1_OVERFLOW_UNCONNECTED),
        .P(NLW_int_mul_result__1_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_int_mul_result__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_int_mul_result__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({int_mul_result__1_n_106,int_mul_result__1_n_107,int_mul_result__1_n_108,int_mul_result__1_n_109,int_mul_result__1_n_110,int_mul_result__1_n_111,int_mul_result__1_n_112,int_mul_result__1_n_113,int_mul_result__1_n_114,int_mul_result__1_n_115,int_mul_result__1_n_116,int_mul_result__1_n_117,int_mul_result__1_n_118,int_mul_result__1_n_119,int_mul_result__1_n_120,int_mul_result__1_n_121,int_mul_result__1_n_122,int_mul_result__1_n_123,int_mul_result__1_n_124,int_mul_result__1_n_125,int_mul_result__1_n_126,int_mul_result__1_n_127,int_mul_result__1_n_128,int_mul_result__1_n_129,int_mul_result__1_n_130,int_mul_result__1_n_131,int_mul_result__1_n_132,int_mul_result__1_n_133,int_mul_result__1_n_134,int_mul_result__1_n_135,int_mul_result__1_n_136,int_mul_result__1_n_137,int_mul_result__1_n_138,int_mul_result__1_n_139,int_mul_result__1_n_140,int_mul_result__1_n_141,int_mul_result__1_n_142,int_mul_result__1_n_143,int_mul_result__1_n_144,int_mul_result__1_n_145,int_mul_result__1_n_146,int_mul_result__1_n_147,int_mul_result__1_n_148,int_mul_result__1_n_149,int_mul_result__1_n_150,int_mul_result__1_n_151,int_mul_result__1_n_152,int_mul_result__1_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_int_mul_result__1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    int_mul_result__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,doutb[50:34]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_int_mul_result__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,doutb[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_int_mul_result__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_int_mul_result__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_int_mul_result__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q[0]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[1]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_int_mul_result__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_int_mul_result__2_OVERFLOW_UNCONNECTED),
        .P({int_mul_result__2_n_58,int_mul_result__2_n_59,int_mul_result__2_n_60,int_mul_result__2_n_61,int_mul_result__2_n_62,int_mul_result__2_n_63,int_mul_result__2_n_64,int_mul_result__2_n_65,int_mul_result__2_n_66,int_mul_result__2_n_67,int_mul_result__2_n_68,int_mul_result__2_n_69,int_mul_result__2_n_70,int_mul_result__2_n_71,int_mul_result__2_n_72,int_mul_result__2_n_73,int_mul_result__2_n_74,int_mul_result__2_n_75,int_mul_result__2_n_76,int_mul_result__2_n_77,int_mul_result__2_n_78,int_mul_result__2_n_79,int_mul_result__2_n_80,int_mul_result__2_n_81,int_mul_result__2_n_82,int_mul_result__2_n_83,int_mul_result__2_n_84,int_mul_result__2_n_85,int_mul_result__2_n_86,int_mul_result__2_n_87,int_mul_result__2_n_88,int_mul_result__2_n_89,int_mul_result__2_n_90,int_mul_result__2_n_91,int_mul_result__2_n_92,int_mul_result__2_n_93,int_mul_result__2_n_94,int_mul_result__2_n_95,int_mul_result__2_n_96,int_mul_result__2_n_97,int_mul_result__2_n_98,int_mul_result__2_n_99,int_mul_result__2_n_100,int_mul_result__2_n_101,int_mul_result__2_n_102,int_mul_result__2_n_103,int_mul_result__2_n_104,int_mul_result__2_n_105}),
        .PATTERNBDETECT(NLW_int_mul_result__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_int_mul_result__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({int_mul_result__1_n_106,int_mul_result__1_n_107,int_mul_result__1_n_108,int_mul_result__1_n_109,int_mul_result__1_n_110,int_mul_result__1_n_111,int_mul_result__1_n_112,int_mul_result__1_n_113,int_mul_result__1_n_114,int_mul_result__1_n_115,int_mul_result__1_n_116,int_mul_result__1_n_117,int_mul_result__1_n_118,int_mul_result__1_n_119,int_mul_result__1_n_120,int_mul_result__1_n_121,int_mul_result__1_n_122,int_mul_result__1_n_123,int_mul_result__1_n_124,int_mul_result__1_n_125,int_mul_result__1_n_126,int_mul_result__1_n_127,int_mul_result__1_n_128,int_mul_result__1_n_129,int_mul_result__1_n_130,int_mul_result__1_n_131,int_mul_result__1_n_132,int_mul_result__1_n_133,int_mul_result__1_n_134,int_mul_result__1_n_135,int_mul_result__1_n_136,int_mul_result__1_n_137,int_mul_result__1_n_138,int_mul_result__1_n_139,int_mul_result__1_n_140,int_mul_result__1_n_141,int_mul_result__1_n_142,int_mul_result__1_n_143,int_mul_result__1_n_144,int_mul_result__1_n_145,int_mul_result__1_n_146,int_mul_result__1_n_147,int_mul_result__1_n_148,int_mul_result__1_n_149,int_mul_result__1_n_150,int_mul_result__1_n_151,int_mul_result__1_n_152,int_mul_result__1_n_153}),
        .PCOUT({int_mul_result__2_n_106,int_mul_result__2_n_107,int_mul_result__2_n_108,int_mul_result__2_n_109,int_mul_result__2_n_110,int_mul_result__2_n_111,int_mul_result__2_n_112,int_mul_result__2_n_113,int_mul_result__2_n_114,int_mul_result__2_n_115,int_mul_result__2_n_116,int_mul_result__2_n_117,int_mul_result__2_n_118,int_mul_result__2_n_119,int_mul_result__2_n_120,int_mul_result__2_n_121,int_mul_result__2_n_122,int_mul_result__2_n_123,int_mul_result__2_n_124,int_mul_result__2_n_125,int_mul_result__2_n_126,int_mul_result__2_n_127,int_mul_result__2_n_128,int_mul_result__2_n_129,int_mul_result__2_n_130,int_mul_result__2_n_131,int_mul_result__2_n_132,int_mul_result__2_n_133,int_mul_result__2_n_134,int_mul_result__2_n_135,int_mul_result__2_n_136,int_mul_result__2_n_137,int_mul_result__2_n_138,int_mul_result__2_n_139,int_mul_result__2_n_140,int_mul_result__2_n_141,int_mul_result__2_n_142,int_mul_result__2_n_143,int_mul_result__2_n_144,int_mul_result__2_n_145,int_mul_result__2_n_146,int_mul_result__2_n_147,int_mul_result__2_n_148,int_mul_result__2_n_149,int_mul_result__2_n_150,int_mul_result__2_n_151,int_mul_result__2_n_152,int_mul_result__2_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_int_mul_result__2_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x14 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    int_mul_result__3
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,doutb[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_int_mul_result__3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,doutb[63:51]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_int_mul_result__3_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_int_mul_result__3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_int_mul_result__3_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q[0]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[1]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_int_mul_result__3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_int_mul_result__3_OVERFLOW_UNCONNECTED),
        .P(NLW_int_mul_result__3_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_int_mul_result__3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_int_mul_result__3_PATTERNDETECT_UNCONNECTED),
        .PCIN({int_mul_result__2_n_106,int_mul_result__2_n_107,int_mul_result__2_n_108,int_mul_result__2_n_109,int_mul_result__2_n_110,int_mul_result__2_n_111,int_mul_result__2_n_112,int_mul_result__2_n_113,int_mul_result__2_n_114,int_mul_result__2_n_115,int_mul_result__2_n_116,int_mul_result__2_n_117,int_mul_result__2_n_118,int_mul_result__2_n_119,int_mul_result__2_n_120,int_mul_result__2_n_121,int_mul_result__2_n_122,int_mul_result__2_n_123,int_mul_result__2_n_124,int_mul_result__2_n_125,int_mul_result__2_n_126,int_mul_result__2_n_127,int_mul_result__2_n_128,int_mul_result__2_n_129,int_mul_result__2_n_130,int_mul_result__2_n_131,int_mul_result__2_n_132,int_mul_result__2_n_133,int_mul_result__2_n_134,int_mul_result__2_n_135,int_mul_result__2_n_136,int_mul_result__2_n_137,int_mul_result__2_n_138,int_mul_result__2_n_139,int_mul_result__2_n_140,int_mul_result__2_n_141,int_mul_result__2_n_142,int_mul_result__2_n_143,int_mul_result__2_n_144,int_mul_result__2_n_145,int_mul_result__2_n_146,int_mul_result__2_n_147,int_mul_result__2_n_148,int_mul_result__2_n_149,int_mul_result__2_n_150,int_mul_result__2_n_151,int_mul_result__2_n_152,int_mul_result__2_n_153}),
        .PCOUT({int_mul_result__3_n_106,int_mul_result__3_n_107,int_mul_result__3_n_108,int_mul_result__3_n_109,int_mul_result__3_n_110,int_mul_result__3_n_111,int_mul_result__3_n_112,int_mul_result__3_n_113,int_mul_result__3_n_114,int_mul_result__3_n_115,int_mul_result__3_n_116,int_mul_result__3_n_117,int_mul_result__3_n_118,int_mul_result__3_n_119,int_mul_result__3_n_120,int_mul_result__3_n_121,int_mul_result__3_n_122,int_mul_result__3_n_123,int_mul_result__3_n_124,int_mul_result__3_n_125,int_mul_result__3_n_126,int_mul_result__3_n_127,int_mul_result__3_n_128,int_mul_result__3_n_129,int_mul_result__3_n_130,int_mul_result__3_n_131,int_mul_result__3_n_132,int_mul_result__3_n_133,int_mul_result__3_n_134,int_mul_result__3_n_135,int_mul_result__3_n_136,int_mul_result__3_n_137,int_mul_result__3_n_138,int_mul_result__3_n_139,int_mul_result__3_n_140,int_mul_result__3_n_141,int_mul_result__3_n_142,int_mul_result__3_n_143,int_mul_result__3_n_144,int_mul_result__3_n_145,int_mul_result__3_n_146,int_mul_result__3_n_147,int_mul_result__3_n_148,int_mul_result__3_n_149,int_mul_result__3_n_150,int_mul_result__3_n_151,int_mul_result__3_n_152,int_mul_result__3_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_int_mul_result__3_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    int_mul_result__4
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,doutb[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_int_mul_result__4_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,doutb[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_int_mul_result__4_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_int_mul_result__4_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_int_mul_result__4_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q[0]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[1]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_int_mul_result__4_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_int_mul_result__4_OVERFLOW_UNCONNECTED),
        .P({int_mul_result__4_n_58,int_mul_result__4_n_59,int_mul_result__4_n_60,int_mul_result__4_n_61,int_mul_result__4_n_62,int_mul_result__4_n_63,int_mul_result__4_n_64,int_mul_result__4_n_65,int_mul_result__4_n_66,int_mul_result__4_n_67,int_mul_result__4_n_68,int_mul_result__4_n_69,int_mul_result__4_n_70,int_mul_result__4_n_71,int_mul_result__4_n_72,int_mul_result__4_n_73,int_mul_result__4_n_74,int_mul_result__4_n_75,int_mul_result__4_n_76,int_mul_result__4_n_77,int_mul_result__4_n_78,int_mul_result__4_n_79,int_mul_result__4_n_80,int_mul_result__4_n_81,int_mul_result__4_n_82,int_mul_result__4_n_83,int_mul_result__4_n_84,int_mul_result__4_n_85,int_mul_result__4_n_86,int_mul_result__4_n_87,int_mul_result__4_n_88,int_mul_result__4_n_89,int_mul_result__4_n_90,int_mul_result__4_n_91,int_mul_result__4_n_92,int_mul_result__4_n_93,int_mul_result__4_n_94,int_mul_result__4_n_95,int_mul_result__4_n_96,int_mul_result__4_n_97,int_mul_result__4_n_98,int_mul_result__4_n_99,int_mul_result__4_n_100,int_mul_result__4_n_101,int_mul_result__4_n_102,int_mul_result__4_n_103,int_mul_result__4_n_104,int_mul_result__4_n_105}),
        .PATTERNBDETECT(NLW_int_mul_result__4_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_int_mul_result__4_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({int_mul_result__4_n_106,int_mul_result__4_n_107,int_mul_result__4_n_108,int_mul_result__4_n_109,int_mul_result__4_n_110,int_mul_result__4_n_111,int_mul_result__4_n_112,int_mul_result__4_n_113,int_mul_result__4_n_114,int_mul_result__4_n_115,int_mul_result__4_n_116,int_mul_result__4_n_117,int_mul_result__4_n_118,int_mul_result__4_n_119,int_mul_result__4_n_120,int_mul_result__4_n_121,int_mul_result__4_n_122,int_mul_result__4_n_123,int_mul_result__4_n_124,int_mul_result__4_n_125,int_mul_result__4_n_126,int_mul_result__4_n_127,int_mul_result__4_n_128,int_mul_result__4_n_129,int_mul_result__4_n_130,int_mul_result__4_n_131,int_mul_result__4_n_132,int_mul_result__4_n_133,int_mul_result__4_n_134,int_mul_result__4_n_135,int_mul_result__4_n_136,int_mul_result__4_n_137,int_mul_result__4_n_138,int_mul_result__4_n_139,int_mul_result__4_n_140,int_mul_result__4_n_141,int_mul_result__4_n_142,int_mul_result__4_n_143,int_mul_result__4_n_144,int_mul_result__4_n_145,int_mul_result__4_n_146,int_mul_result__4_n_147,int_mul_result__4_n_148,int_mul_result__4_n_149,int_mul_result__4_n_150,int_mul_result__4_n_151,int_mul_result__4_n_152,int_mul_result__4_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_int_mul_result__4_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    int_mul_result__5
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,doutb[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_int_mul_result__5_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,doutb[33:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_int_mul_result__5_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_int_mul_result__5_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_int_mul_result__5_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q[0]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[1]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_int_mul_result__5_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_int_mul_result__5_OVERFLOW_UNCONNECTED),
        .P(NLW_int_mul_result__5_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_int_mul_result__5_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_int_mul_result__5_PATTERNDETECT_UNCONNECTED),
        .PCIN({int_mul_result__4_n_106,int_mul_result__4_n_107,int_mul_result__4_n_108,int_mul_result__4_n_109,int_mul_result__4_n_110,int_mul_result__4_n_111,int_mul_result__4_n_112,int_mul_result__4_n_113,int_mul_result__4_n_114,int_mul_result__4_n_115,int_mul_result__4_n_116,int_mul_result__4_n_117,int_mul_result__4_n_118,int_mul_result__4_n_119,int_mul_result__4_n_120,int_mul_result__4_n_121,int_mul_result__4_n_122,int_mul_result__4_n_123,int_mul_result__4_n_124,int_mul_result__4_n_125,int_mul_result__4_n_126,int_mul_result__4_n_127,int_mul_result__4_n_128,int_mul_result__4_n_129,int_mul_result__4_n_130,int_mul_result__4_n_131,int_mul_result__4_n_132,int_mul_result__4_n_133,int_mul_result__4_n_134,int_mul_result__4_n_135,int_mul_result__4_n_136,int_mul_result__4_n_137,int_mul_result__4_n_138,int_mul_result__4_n_139,int_mul_result__4_n_140,int_mul_result__4_n_141,int_mul_result__4_n_142,int_mul_result__4_n_143,int_mul_result__4_n_144,int_mul_result__4_n_145,int_mul_result__4_n_146,int_mul_result__4_n_147,int_mul_result__4_n_148,int_mul_result__4_n_149,int_mul_result__4_n_150,int_mul_result__4_n_151,int_mul_result__4_n_152,int_mul_result__4_n_153}),
        .PCOUT({int_mul_result__5_n_106,int_mul_result__5_n_107,int_mul_result__5_n_108,int_mul_result__5_n_109,int_mul_result__5_n_110,int_mul_result__5_n_111,int_mul_result__5_n_112,int_mul_result__5_n_113,int_mul_result__5_n_114,int_mul_result__5_n_115,int_mul_result__5_n_116,int_mul_result__5_n_117,int_mul_result__5_n_118,int_mul_result__5_n_119,int_mul_result__5_n_120,int_mul_result__5_n_121,int_mul_result__5_n_122,int_mul_result__5_n_123,int_mul_result__5_n_124,int_mul_result__5_n_125,int_mul_result__5_n_126,int_mul_result__5_n_127,int_mul_result__5_n_128,int_mul_result__5_n_129,int_mul_result__5_n_130,int_mul_result__5_n_131,int_mul_result__5_n_132,int_mul_result__5_n_133,int_mul_result__5_n_134,int_mul_result__5_n_135,int_mul_result__5_n_136,int_mul_result__5_n_137,int_mul_result__5_n_138,int_mul_result__5_n_139,int_mul_result__5_n_140,int_mul_result__5_n_141,int_mul_result__5_n_142,int_mul_result__5_n_143,int_mul_result__5_n_144,int_mul_result__5_n_145,int_mul_result__5_n_146,int_mul_result__5_n_147,int_mul_result__5_n_148,int_mul_result__5_n_149,int_mul_result__5_n_150,int_mul_result__5_n_151,int_mul_result__5_n_152,int_mul_result__5_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_int_mul_result__5_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    int_mul_result__6
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,doutb[33:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_int_mul_result__6_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,doutb[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_int_mul_result__6_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_int_mul_result__6_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_int_mul_result__6_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q[0]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[1]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_int_mul_result__6_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_int_mul_result__6_OVERFLOW_UNCONNECTED),
        .P({int_mul_result__6_n_58,int_mul_result__6_n_59,int_mul_result__6_n_60,int_mul_result__6_n_61,int_mul_result__6_n_62,int_mul_result__6_n_63,int_mul_result__6_n_64,int_mul_result__6_n_65,int_mul_result__6_n_66,int_mul_result__6_n_67,int_mul_result__6_n_68,int_mul_result__6_n_69,int_mul_result__6_n_70,int_mul_result__6_n_71,int_mul_result__6_n_72,int_mul_result__6_n_73,int_mul_result__6_n_74,int_mul_result__6_n_75,int_mul_result__6_n_76,int_mul_result__6_n_77,int_mul_result__6_n_78,int_mul_result__6_n_79,int_mul_result__6_n_80,int_mul_result__6_n_81,int_mul_result__6_n_82,int_mul_result__6_n_83,int_mul_result__6_n_84,int_mul_result__6_n_85,int_mul_result__6_n_86,int_mul_result__6_n_87,int_mul_result__6_n_88,int_mul_result__6_n_89,int_mul_result__6_n_90,int_mul_result__6_n_91,int_mul_result__6_n_92,int_mul_result__6_n_93,int_mul_result__6_n_94,int_mul_result__6_n_95,int_mul_result__6_n_96,int_mul_result__6_n_97,int_mul_result__6_n_98,int_mul_result__6_n_99,int_mul_result__6_n_100,int_mul_result__6_n_101,int_mul_result__6_n_102,int_mul_result__6_n_103,int_mul_result__6_n_104,int_mul_result__6_n_105}),
        .PATTERNBDETECT(NLW_int_mul_result__6_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_int_mul_result__6_PATTERNDETECT_UNCONNECTED),
        .PCIN({int_mul_result__5_n_106,int_mul_result__5_n_107,int_mul_result__5_n_108,int_mul_result__5_n_109,int_mul_result__5_n_110,int_mul_result__5_n_111,int_mul_result__5_n_112,int_mul_result__5_n_113,int_mul_result__5_n_114,int_mul_result__5_n_115,int_mul_result__5_n_116,int_mul_result__5_n_117,int_mul_result__5_n_118,int_mul_result__5_n_119,int_mul_result__5_n_120,int_mul_result__5_n_121,int_mul_result__5_n_122,int_mul_result__5_n_123,int_mul_result__5_n_124,int_mul_result__5_n_125,int_mul_result__5_n_126,int_mul_result__5_n_127,int_mul_result__5_n_128,int_mul_result__5_n_129,int_mul_result__5_n_130,int_mul_result__5_n_131,int_mul_result__5_n_132,int_mul_result__5_n_133,int_mul_result__5_n_134,int_mul_result__5_n_135,int_mul_result__5_n_136,int_mul_result__5_n_137,int_mul_result__5_n_138,int_mul_result__5_n_139,int_mul_result__5_n_140,int_mul_result__5_n_141,int_mul_result__5_n_142,int_mul_result__5_n_143,int_mul_result__5_n_144,int_mul_result__5_n_145,int_mul_result__5_n_146,int_mul_result__5_n_147,int_mul_result__5_n_148,int_mul_result__5_n_149,int_mul_result__5_n_150,int_mul_result__5_n_151,int_mul_result__5_n_152,int_mul_result__5_n_153}),
        .PCOUT({int_mul_result__6_n_106,int_mul_result__6_n_107,int_mul_result__6_n_108,int_mul_result__6_n_109,int_mul_result__6_n_110,int_mul_result__6_n_111,int_mul_result__6_n_112,int_mul_result__6_n_113,int_mul_result__6_n_114,int_mul_result__6_n_115,int_mul_result__6_n_116,int_mul_result__6_n_117,int_mul_result__6_n_118,int_mul_result__6_n_119,int_mul_result__6_n_120,int_mul_result__6_n_121,int_mul_result__6_n_122,int_mul_result__6_n_123,int_mul_result__6_n_124,int_mul_result__6_n_125,int_mul_result__6_n_126,int_mul_result__6_n_127,int_mul_result__6_n_128,int_mul_result__6_n_129,int_mul_result__6_n_130,int_mul_result__6_n_131,int_mul_result__6_n_132,int_mul_result__6_n_133,int_mul_result__6_n_134,int_mul_result__6_n_135,int_mul_result__6_n_136,int_mul_result__6_n_137,int_mul_result__6_n_138,int_mul_result__6_n_139,int_mul_result__6_n_140,int_mul_result__6_n_141,int_mul_result__6_n_142,int_mul_result__6_n_143,int_mul_result__6_n_144,int_mul_result__6_n_145,int_mul_result__6_n_146,int_mul_result__6_n_147,int_mul_result__6_n_148,int_mul_result__6_n_149,int_mul_result__6_n_150,int_mul_result__6_n_151,int_mul_result__6_n_152,int_mul_result__6_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_int_mul_result__6_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    r1_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,doutb[33:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_r1_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,doutb[50:34]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_r1_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_r1_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_r1_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q[0]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[1]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_r1_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_r1_reg_OVERFLOW_UNCONNECTED),
        .P({r1_reg_n_58,r1_reg_n_59,r1_reg_n_60,r1_reg_n_61,r1_reg_n_62,r1_reg_n_63,r1_reg_n_64,r1_reg_n_65,r1_reg_n_66,r1_reg_n_67,r1_reg_n_68,r1_reg_n_69,r1_reg_n_70,r1_reg_n_71,r1_reg_n_72,r1_reg_n_73,r1_reg_n_74,r1_reg_n_75,r1_reg_n_76,r1_reg_n_77,r1_reg_n_78,r1_reg_n_79,r1_reg_n_80,r1_reg_n_81,r1_reg_n_82,r1_reg_n_83,r1_reg_n_84,r1_reg_n_85,r1_reg_n_86,r1_reg_n_87,r1_reg_n_88,r1_reg_n_89,r1_reg_n_90,r1_reg_n_91,r1_reg_n_92,r1_reg_n_93,r1_reg_n_94,r1_reg_n_95,r1_reg_n_96,r1_reg_n_97,r1_reg_n_98,r1_reg_n_99,r1_reg_n_100,r1_reg_n_101,r1_reg_n_102,r1_reg_n_103,r1_reg_n_104,r1_reg_n_105}),
        .PATTERNBDETECT(NLW_r1_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_r1_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({int_mul_result__3_n_106,int_mul_result__3_n_107,int_mul_result__3_n_108,int_mul_result__3_n_109,int_mul_result__3_n_110,int_mul_result__3_n_111,int_mul_result__3_n_112,int_mul_result__3_n_113,int_mul_result__3_n_114,int_mul_result__3_n_115,int_mul_result__3_n_116,int_mul_result__3_n_117,int_mul_result__3_n_118,int_mul_result__3_n_119,int_mul_result__3_n_120,int_mul_result__3_n_121,int_mul_result__3_n_122,int_mul_result__3_n_123,int_mul_result__3_n_124,int_mul_result__3_n_125,int_mul_result__3_n_126,int_mul_result__3_n_127,int_mul_result__3_n_128,int_mul_result__3_n_129,int_mul_result__3_n_130,int_mul_result__3_n_131,int_mul_result__3_n_132,int_mul_result__3_n_133,int_mul_result__3_n_134,int_mul_result__3_n_135,int_mul_result__3_n_136,int_mul_result__3_n_137,int_mul_result__3_n_138,int_mul_result__3_n_139,int_mul_result__3_n_140,int_mul_result__3_n_141,int_mul_result__3_n_142,int_mul_result__3_n_143,int_mul_result__3_n_144,int_mul_result__3_n_145,int_mul_result__3_n_146,int_mul_result__3_n_147,int_mul_result__3_n_148,int_mul_result__3_n_149,int_mul_result__3_n_150,int_mul_result__3_n_151,int_mul_result__3_n_152,int_mul_result__3_n_153}),
        .PCOUT(NLW_r1_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_r1_reg_UNDERFLOW_UNCONNECTED));
  FDRE \r1_reg[0]__2 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__2_n_105),
        .Q(\r1_reg[0]__2_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[0]__3 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__4_n_105),
        .Q(\r1_reg[0]__3_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[0]__4 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__6_n_105),
        .Q(\r1_reg[0]__4_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[10]__2 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__2_n_95),
        .Q(\r1_reg[10]__2_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[10]__3 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__4_n_95),
        .Q(\r1_reg[10]__3_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[10]__4 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__6_n_95),
        .Q(\r1_reg[10]__4_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[11]__2 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__2_n_94),
        .Q(\r1_reg[11]__2_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[11]__3 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__4_n_94),
        .Q(\r1_reg[11]__3_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[11]__4 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__6_n_94),
        .Q(\r1_reg[11]__4_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[12]__2 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__2_n_93),
        .Q(\r1_reg[12]__2_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[12]__3 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__4_n_93),
        .Q(\r1_reg[12]__3_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[12]__4 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__6_n_93),
        .Q(\r1_reg[12]__4_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[13]__2 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__2_n_92),
        .Q(\r1_reg[13]__2_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[13]__3 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__4_n_92),
        .Q(\r1_reg[13]__3_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[13]__4 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__6_n_92),
        .Q(\r1_reg[13]__4_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[14]__2 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__2_n_91),
        .Q(\r1_reg[14]__2_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[14]__3 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__4_n_91),
        .Q(\r1_reg[14]__3_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[14]__4 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__6_n_91),
        .Q(\r1_reg[14]__4_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[15]__2 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__2_n_90),
        .Q(\r1_reg[15]__2_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[15]__3 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__4_n_90),
        .Q(\r1_reg[15]__3_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[15]__4 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__6_n_90),
        .Q(\r1_reg[15]__4_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[16]__2 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__2_n_89),
        .Q(\r1_reg[16]__2_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[16]__3 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__4_n_89),
        .Q(\r1_reg[16]__3_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[16]__4 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__6_n_89),
        .Q(\r1_reg[16]__4_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[1]__2 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__2_n_104),
        .Q(\r1_reg[1]__2_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[1]__3 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__4_n_104),
        .Q(\r1_reg[1]__3_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[1]__4 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__6_n_104),
        .Q(\r1_reg[1]__4_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[2]__2 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__2_n_103),
        .Q(\r1_reg[2]__2_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[2]__3 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__4_n_103),
        .Q(\r1_reg[2]__3_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[2]__4 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__6_n_103),
        .Q(\r1_reg[2]__4_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[3]__2 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__2_n_102),
        .Q(\r1_reg[3]__2_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[3]__3 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__4_n_102),
        .Q(\r1_reg[3]__3_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[3]__4 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__6_n_102),
        .Q(\r1_reg[3]__4_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[4]__2 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__2_n_101),
        .Q(\r1_reg[4]__2_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[4]__3 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__4_n_101),
        .Q(\r1_reg[4]__3_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[4]__4 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__6_n_101),
        .Q(\r1_reg[4]__4_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[5]__2 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__2_n_100),
        .Q(\r1_reg[5]__2_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[5]__3 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__4_n_100),
        .Q(\r1_reg[5]__3_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[5]__4 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__6_n_100),
        .Q(\r1_reg[5]__4_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[6]__2 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__2_n_99),
        .Q(\r1_reg[6]__2_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[6]__3 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__4_n_99),
        .Q(\r1_reg[6]__3_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[6]__4 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__6_n_99),
        .Q(\r1_reg[6]__4_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[7]__2 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__2_n_98),
        .Q(\r1_reg[7]__2_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[7]__3 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__4_n_98),
        .Q(\r1_reg[7]__3_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[7]__4 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__6_n_98),
        .Q(\r1_reg[7]__4_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[8]__2 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__2_n_97),
        .Q(\r1_reg[8]__2_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[8]__3 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__4_n_97),
        .Q(\r1_reg[8]__3_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[8]__4 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__6_n_97),
        .Q(\r1_reg[8]__4_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[9]__2 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__2_n_96),
        .Q(\r1_reg[9]__2_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[9]__3 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__4_n_96),
        .Q(\r1_reg[9]__3_n_0 ),
        .R(1'b0));
  FDRE \r1_reg[9]__4 
       (.C(clk),
        .CE(1'b1),
        .D(int_mul_result__6_n_96),
        .Q(\r1_reg[9]__4_n_0 ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    r1_reg__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,doutb[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_r1_reg__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,doutb[50:34]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_r1_reg__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_r1_reg__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_r1_reg__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q[0]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[1]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_r1_reg__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_r1_reg__0_OVERFLOW_UNCONNECTED),
        .P({r1_reg__0_n_58,r1_reg__0_n_59,r1_reg__0_n_60,r1_reg__0_n_61,r1_reg__0_n_62,r1_reg__0_n_63,r1_reg__0_n_64,r1_reg__0_n_65,r1_reg__0_n_66,r1_reg__0_n_67,r1_reg__0_n_68,r1_reg__0_n_69,r1_reg__0_n_70,r1_reg__0_n_71,r1_reg__0_n_72,r1_reg__0_n_73,r1_reg__0_n_74,r1_reg__0_n_75,r1_reg__0_n_76,r1_reg__0_n_77,r1_reg__0_n_78,r1_reg__0_n_79,r1_reg__0_n_80,r1_reg__0_n_81,r1_reg__0_n_82,r1_reg__0_n_83,r1_reg__0_n_84,r1_reg__0_n_85,r1_reg__0_n_86,r1_reg__0_n_87,r1_reg__0_n_88,r1_reg__0_n_89,r1_reg__0_n_90,r1_reg__0_n_91,r1_reg__0_n_92,r1_reg__0_n_93,r1_reg__0_n_94,r1_reg__0_n_95,r1_reg__0_n_96,r1_reg__0_n_97,r1_reg__0_n_98,r1_reg__0_n_99,r1_reg__0_n_100,r1_reg__0_n_101,r1_reg__0_n_102,r1_reg__0_n_103,r1_reg__0_n_104,r1_reg__0_n_105}),
        .PATTERNBDETECT(NLW_r1_reg__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_r1_reg__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({int_mul_result__6_n_106,int_mul_result__6_n_107,int_mul_result__6_n_108,int_mul_result__6_n_109,int_mul_result__6_n_110,int_mul_result__6_n_111,int_mul_result__6_n_112,int_mul_result__6_n_113,int_mul_result__6_n_114,int_mul_result__6_n_115,int_mul_result__6_n_116,int_mul_result__6_n_117,int_mul_result__6_n_118,int_mul_result__6_n_119,int_mul_result__6_n_120,int_mul_result__6_n_121,int_mul_result__6_n_122,int_mul_result__6_n_123,int_mul_result__6_n_124,int_mul_result__6_n_125,int_mul_result__6_n_126,int_mul_result__6_n_127,int_mul_result__6_n_128,int_mul_result__6_n_129,int_mul_result__6_n_130,int_mul_result__6_n_131,int_mul_result__6_n_132,int_mul_result__6_n_133,int_mul_result__6_n_134,int_mul_result__6_n_135,int_mul_result__6_n_136,int_mul_result__6_n_137,int_mul_result__6_n_138,int_mul_result__6_n_139,int_mul_result__6_n_140,int_mul_result__6_n_141,int_mul_result__6_n_142,int_mul_result__6_n_143,int_mul_result__6_n_144,int_mul_result__6_n_145,int_mul_result__6_n_146,int_mul_result__6_n_147,int_mul_result__6_n_148,int_mul_result__6_n_149,int_mul_result__6_n_150,int_mul_result__6_n_151,int_mul_result__6_n_152,int_mul_result__6_n_153}),
        .PCOUT(NLW_r1_reg__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_r1_reg__0_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[36]_i_2 
       (.I0(r1_reg__0_n_103),
        .I1(\r1_reg[2]__2_n_0 ),
        .O(\r2[36]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[36]_i_3 
       (.I0(r1_reg__0_n_104),
        .I1(\r1_reg[1]__2_n_0 ),
        .O(\r2[36]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[36]_i_4 
       (.I0(r1_reg__0_n_105),
        .I1(\r1_reg[0]__2_n_0 ),
        .O(\r2[36]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[40]_i_2 
       (.I0(r1_reg__0_n_99),
        .I1(\r1_reg[6]__2_n_0 ),
        .O(\r2[40]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[40]_i_3 
       (.I0(r1_reg__0_n_100),
        .I1(\r1_reg[5]__2_n_0 ),
        .O(\r2[40]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[40]_i_4 
       (.I0(r1_reg__0_n_101),
        .I1(\r1_reg[4]__2_n_0 ),
        .O(\r2[40]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[40]_i_5 
       (.I0(r1_reg__0_n_102),
        .I1(\r1_reg[3]__2_n_0 ),
        .O(\r2[40]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[44]_i_2 
       (.I0(r1_reg__0_n_95),
        .I1(\r1_reg[10]__2_n_0 ),
        .O(\r2[44]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[44]_i_3 
       (.I0(r1_reg__0_n_96),
        .I1(\r1_reg[9]__2_n_0 ),
        .O(\r2[44]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[44]_i_4 
       (.I0(r1_reg__0_n_97),
        .I1(\r1_reg[8]__2_n_0 ),
        .O(\r2[44]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[44]_i_5 
       (.I0(r1_reg__0_n_98),
        .I1(\r1_reg[7]__2_n_0 ),
        .O(\r2[44]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[48]_i_2 
       (.I0(r1_reg__0_n_91),
        .I1(\r1_reg[14]__2_n_0 ),
        .O(\r2[48]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[48]_i_3 
       (.I0(r1_reg__0_n_92),
        .I1(\r1_reg[13]__2_n_0 ),
        .O(\r2[48]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[48]_i_4 
       (.I0(r1_reg__0_n_93),
        .I1(\r1_reg[12]__2_n_0 ),
        .O(\r2[48]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[48]_i_5 
       (.I0(r1_reg__0_n_94),
        .I1(\r1_reg[11]__2_n_0 ),
        .O(\r2[48]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \r2[52]_i_2 
       (.I0(r1_reg__0_n_87),
        .I1(int_mul_result__0_n_104),
        .I2(r1_reg_n_104),
        .O(\r2[52]_i_2_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \r2[52]_i_3 
       (.I0(int_mul_result__0_n_104),
        .I1(r1_reg_n_104),
        .I2(r1_reg__0_n_87),
        .I3(r1_reg_n_105),
        .I4(int_mul_result__0_n_105),
        .O(\r2[52]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \r2[52]_i_4 
       (.I0(int_mul_result__0_n_105),
        .I1(r1_reg_n_105),
        .I2(r1_reg__0_n_88),
        .O(\r2[52]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[52]_i_5 
       (.I0(r1_reg__0_n_89),
        .I1(\r1_reg[16]__2_n_0 ),
        .O(\r2[52]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[52]_i_6 
       (.I0(r1_reg__0_n_90),
        .I1(\r1_reg[15]__2_n_0 ),
        .O(\r2[52]_i_6_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \r2[56]_i_2 
       (.I0(int_mul_result__0_n_101),
        .I1(r1_reg_n_101),
        .I2(r1_reg__0_n_84),
        .O(\r2[56]_i_2_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \r2[56]_i_3 
       (.I0(int_mul_result__0_n_102),
        .I1(r1_reg_n_102),
        .I2(r1_reg__0_n_85),
        .O(\r2[56]_i_3_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \r2[56]_i_4 
       (.I0(int_mul_result__0_n_103),
        .I1(r1_reg_n_103),
        .I2(r1_reg__0_n_86),
        .O(\r2[56]_i_4_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \r2[56]_i_5 
       (.I0(int_mul_result__0_n_104),
        .I1(r1_reg_n_104),
        .I2(r1_reg__0_n_87),
        .O(\r2[56]_i_5_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \r2[56]_i_6 
       (.I0(int_mul_result__0_n_100),
        .I1(r1_reg_n_100),
        .I2(r1_reg__0_n_83),
        .I3(\r2[56]_i_2_n_0 ),
        .O(\r2[56]_i_6_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \r2[56]_i_7 
       (.I0(int_mul_result__0_n_101),
        .I1(r1_reg_n_101),
        .I2(r1_reg__0_n_84),
        .I3(\r2[56]_i_3_n_0 ),
        .O(\r2[56]_i_7_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \r2[56]_i_8 
       (.I0(int_mul_result__0_n_102),
        .I1(r1_reg_n_102),
        .I2(r1_reg__0_n_85),
        .I3(\r2[56]_i_4_n_0 ),
        .O(\r2[56]_i_8_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \r2[56]_i_9 
       (.I0(int_mul_result__0_n_103),
        .I1(r1_reg_n_103),
        .I2(r1_reg__0_n_86),
        .I3(\r2[56]_i_5_n_0 ),
        .O(\r2[56]_i_9_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \r2[60]_i_2 
       (.I0(int_mul_result__0_n_97),
        .I1(r1_reg_n_97),
        .I2(r1_reg__0_n_80),
        .O(\r2[60]_i_2_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \r2[60]_i_3 
       (.I0(int_mul_result__0_n_98),
        .I1(r1_reg_n_98),
        .I2(r1_reg__0_n_81),
        .O(\r2[60]_i_3_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \r2[60]_i_4 
       (.I0(int_mul_result__0_n_99),
        .I1(r1_reg_n_99),
        .I2(r1_reg__0_n_82),
        .O(\r2[60]_i_4_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \r2[60]_i_5 
       (.I0(int_mul_result__0_n_100),
        .I1(r1_reg_n_100),
        .I2(r1_reg__0_n_83),
        .O(\r2[60]_i_5_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \r2[60]_i_6 
       (.I0(int_mul_result__0_n_96),
        .I1(r1_reg_n_96),
        .I2(r1_reg__0_n_79),
        .I3(\r2[60]_i_2_n_0 ),
        .O(\r2[60]_i_6_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \r2[60]_i_7 
       (.I0(int_mul_result__0_n_97),
        .I1(r1_reg_n_97),
        .I2(r1_reg__0_n_80),
        .I3(\r2[60]_i_3_n_0 ),
        .O(\r2[60]_i_7_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \r2[60]_i_8 
       (.I0(int_mul_result__0_n_98),
        .I1(r1_reg_n_98),
        .I2(r1_reg__0_n_81),
        .I3(\r2[60]_i_4_n_0 ),
        .O(\r2[60]_i_8_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \r2[60]_i_9 
       (.I0(int_mul_result__0_n_99),
        .I1(r1_reg_n_99),
        .I2(r1_reg__0_n_82),
        .I3(\r2[60]_i_5_n_0 ),
        .O(\r2[60]_i_9_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \r2[63]_i_2 
       (.I0(int_mul_result__0_n_95),
        .I1(r1_reg_n_95),
        .I2(r1_reg__0_n_78),
        .O(\r2[63]_i_2_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \r2[63]_i_3 
       (.I0(int_mul_result__0_n_96),
        .I1(r1_reg_n_96),
        .I2(r1_reg__0_n_79),
        .O(\r2[63]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \r2[63]_i_4 
       (.I0(r1_reg__0_n_77),
        .I1(r1_reg_n_94),
        .I2(int_mul_result__0_n_94),
        .I3(r1_reg_n_93),
        .I4(int_mul_result__0_n_93),
        .I5(r1_reg__0_n_76),
        .O(\r2[63]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \r2[63]_i_5 
       (.I0(\r2[63]_i_2_n_0 ),
        .I1(r1_reg_n_94),
        .I2(int_mul_result__0_n_94),
        .I3(r1_reg__0_n_77),
        .O(\r2[63]_i_5_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \r2[63]_i_6 
       (.I0(int_mul_result__0_n_95),
        .I1(r1_reg_n_95),
        .I2(r1_reg__0_n_78),
        .I3(\r2[63]_i_3_n_0 ),
        .O(\r2[63]_i_6_n_0 ));
  FDRE \r2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[0]__3_n_0 ),
        .Q(r2[0]),
        .R(1'b0));
  FDRE \r2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[10]__3_n_0 ),
        .Q(r2[10]),
        .R(1'b0));
  FDRE \r2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[11]__3_n_0 ),
        .Q(r2[11]),
        .R(1'b0));
  FDRE \r2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[12]__3_n_0 ),
        .Q(r2[12]),
        .R(1'b0));
  FDRE \r2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[13]__3_n_0 ),
        .Q(r2[13]),
        .R(1'b0));
  FDRE \r2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[14]__3_n_0 ),
        .Q(r2[14]),
        .R(1'b0));
  FDRE \r2_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[15]__3_n_0 ),
        .Q(r2[15]),
        .R(1'b0));
  FDRE \r2_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[16]__3_n_0 ),
        .Q(r2[16]),
        .R(1'b0));
  FDRE \r2_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[0]__4_n_0 ),
        .Q(r2[17]),
        .R(1'b0));
  FDRE \r2_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[1]__4_n_0 ),
        .Q(r2[18]),
        .R(1'b0));
  FDRE \r2_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[2]__4_n_0 ),
        .Q(r2[19]),
        .R(1'b0));
  FDRE \r2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[1]__3_n_0 ),
        .Q(r2[1]),
        .R(1'b0));
  FDRE \r2_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[3]__4_n_0 ),
        .Q(r2[20]),
        .R(1'b0));
  FDRE \r2_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[4]__4_n_0 ),
        .Q(r2[21]),
        .R(1'b0));
  FDRE \r2_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[5]__4_n_0 ),
        .Q(r2[22]),
        .R(1'b0));
  FDRE \r2_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[6]__4_n_0 ),
        .Q(r2[23]),
        .R(1'b0));
  FDRE \r2_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[7]__4_n_0 ),
        .Q(r2[24]),
        .R(1'b0));
  FDRE \r2_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[8]__4_n_0 ),
        .Q(r2[25]),
        .R(1'b0));
  FDRE \r2_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[9]__4_n_0 ),
        .Q(r2[26]),
        .R(1'b0));
  FDRE \r2_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[10]__4_n_0 ),
        .Q(r2[27]),
        .R(1'b0));
  FDRE \r2_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[11]__4_n_0 ),
        .Q(r2[28]),
        .R(1'b0));
  FDRE \r2_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[12]__4_n_0 ),
        .Q(r2[29]),
        .R(1'b0));
  FDRE \r2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[2]__3_n_0 ),
        .Q(r2[2]),
        .R(1'b0));
  FDRE \r2_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[13]__4_n_0 ),
        .Q(r2[30]),
        .R(1'b0));
  FDRE \r2_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[14]__4_n_0 ),
        .Q(r2[31]),
        .R(1'b0));
  FDRE \r2_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[15]__4_n_0 ),
        .Q(r2[32]),
        .R(1'b0));
  FDRE \r2_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[33]),
        .Q(r2[33]),
        .R(1'b0));
  FDRE \r2_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[34]),
        .Q(r2[34]),
        .R(1'b0));
  FDRE \r2_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[35]),
        .Q(r2[35]),
        .R(1'b0));
  FDRE \r2_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[36]),
        .Q(r2[36]),
        .R(1'b0));
  CARRY4 \r2_reg[36]_i_1 
       (.CI(1'b0),
        .CO({\r2_reg[36]_i_1_n_0 ,\r2_reg[36]_i_1_n_1 ,\r2_reg[36]_i_1_n_2 ,\r2_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({r1_reg__0_n_103,r1_reg__0_n_104,r1_reg__0_n_105,1'b0}),
        .O(r1_reg__3[36:33]),
        .S({\r2[36]_i_2_n_0 ,\r2[36]_i_3_n_0 ,\r2[36]_i_4_n_0 ,\r1_reg[16]__4_n_0 }));
  FDRE \r2_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[37]),
        .Q(r2[37]),
        .R(1'b0));
  FDRE \r2_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[38]),
        .Q(r2[38]),
        .R(1'b0));
  FDRE \r2_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[39]),
        .Q(r2[39]),
        .R(1'b0));
  FDRE \r2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[3]__3_n_0 ),
        .Q(r2[3]),
        .R(1'b0));
  FDRE \r2_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[40]),
        .Q(r2[40]),
        .R(1'b0));
  CARRY4 \r2_reg[40]_i_1 
       (.CI(\r2_reg[36]_i_1_n_0 ),
        .CO({\r2_reg[40]_i_1_n_0 ,\r2_reg[40]_i_1_n_1 ,\r2_reg[40]_i_1_n_2 ,\r2_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({r1_reg__0_n_99,r1_reg__0_n_100,r1_reg__0_n_101,r1_reg__0_n_102}),
        .O(r1_reg__3[40:37]),
        .S({\r2[40]_i_2_n_0 ,\r2[40]_i_3_n_0 ,\r2[40]_i_4_n_0 ,\r2[40]_i_5_n_0 }));
  FDRE \r2_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[41]),
        .Q(r2[41]),
        .R(1'b0));
  FDRE \r2_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[42]),
        .Q(r2[42]),
        .R(1'b0));
  FDRE \r2_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[43]),
        .Q(r2[43]),
        .R(1'b0));
  FDRE \r2_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[44]),
        .Q(r2[44]),
        .R(1'b0));
  CARRY4 \r2_reg[44]_i_1 
       (.CI(\r2_reg[40]_i_1_n_0 ),
        .CO({\r2_reg[44]_i_1_n_0 ,\r2_reg[44]_i_1_n_1 ,\r2_reg[44]_i_1_n_2 ,\r2_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({r1_reg__0_n_95,r1_reg__0_n_96,r1_reg__0_n_97,r1_reg__0_n_98}),
        .O(r1_reg__3[44:41]),
        .S({\r2[44]_i_2_n_0 ,\r2[44]_i_3_n_0 ,\r2[44]_i_4_n_0 ,\r2[44]_i_5_n_0 }));
  FDRE \r2_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[45]),
        .Q(r2[45]),
        .R(1'b0));
  FDRE \r2_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[46]),
        .Q(r2[46]),
        .R(1'b0));
  FDRE \r2_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[47]),
        .Q(r2[47]),
        .R(1'b0));
  FDRE \r2_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[48]),
        .Q(r2[48]),
        .R(1'b0));
  CARRY4 \r2_reg[48]_i_1 
       (.CI(\r2_reg[44]_i_1_n_0 ),
        .CO({\r2_reg[48]_i_1_n_0 ,\r2_reg[48]_i_1_n_1 ,\r2_reg[48]_i_1_n_2 ,\r2_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({r1_reg__0_n_91,r1_reg__0_n_92,r1_reg__0_n_93,r1_reg__0_n_94}),
        .O(r1_reg__3[48:45]),
        .S({\r2[48]_i_2_n_0 ,\r2[48]_i_3_n_0 ,\r2[48]_i_4_n_0 ,\r2[48]_i_5_n_0 }));
  FDRE \r2_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[49]),
        .Q(r2[49]),
        .R(1'b0));
  FDRE \r2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[4]__3_n_0 ),
        .Q(r2[4]),
        .R(1'b0));
  FDRE \r2_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[50]),
        .Q(r2[50]),
        .R(1'b0));
  FDRE \r2_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[51]),
        .Q(r2[51]),
        .R(1'b0));
  FDRE \r2_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[52]),
        .Q(r2[52]),
        .R(1'b0));
  CARRY4 \r2_reg[52]_i_1 
       (.CI(\r2_reg[48]_i_1_n_0 ),
        .CO({\r2_reg[52]_i_1_n_0 ,\r2_reg[52]_i_1_n_1 ,\r2_reg[52]_i_1_n_2 ,\r2_reg[52]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\r2[52]_i_2_n_0 ,r1_reg__0_n_88,r1_reg__0_n_89,r1_reg__0_n_90}),
        .O(r1_reg__3[52:49]),
        .S({\r2[52]_i_3_n_0 ,\r2[52]_i_4_n_0 ,\r2[52]_i_5_n_0 ,\r2[52]_i_6_n_0 }));
  FDRE \r2_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[53]),
        .Q(r2[53]),
        .R(1'b0));
  FDRE \r2_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[54]),
        .Q(r2[54]),
        .R(1'b0));
  FDRE \r2_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[55]),
        .Q(r2[55]),
        .R(1'b0));
  FDRE \r2_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[56]),
        .Q(r2[56]),
        .R(1'b0));
  CARRY4 \r2_reg[56]_i_1 
       (.CI(\r2_reg[52]_i_1_n_0 ),
        .CO({\r2_reg[56]_i_1_n_0 ,\r2_reg[56]_i_1_n_1 ,\r2_reg[56]_i_1_n_2 ,\r2_reg[56]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\r2[56]_i_2_n_0 ,\r2[56]_i_3_n_0 ,\r2[56]_i_4_n_0 ,\r2[56]_i_5_n_0 }),
        .O(r1_reg__3[56:53]),
        .S({\r2[56]_i_6_n_0 ,\r2[56]_i_7_n_0 ,\r2[56]_i_8_n_0 ,\r2[56]_i_9_n_0 }));
  FDRE \r2_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[57]),
        .Q(r2[57]),
        .R(1'b0));
  FDRE \r2_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[58]),
        .Q(r2[58]),
        .R(1'b0));
  FDRE \r2_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[59]),
        .Q(r2[59]),
        .R(1'b0));
  FDRE \r2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[5]__3_n_0 ),
        .Q(r2[5]),
        .R(1'b0));
  FDRE \r2_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[60]),
        .Q(r2[60]),
        .R(1'b0));
  CARRY4 \r2_reg[60]_i_1 
       (.CI(\r2_reg[56]_i_1_n_0 ),
        .CO({\r2_reg[60]_i_1_n_0 ,\r2_reg[60]_i_1_n_1 ,\r2_reg[60]_i_1_n_2 ,\r2_reg[60]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\r2[60]_i_2_n_0 ,\r2[60]_i_3_n_0 ,\r2[60]_i_4_n_0 ,\r2[60]_i_5_n_0 }),
        .O(r1_reg__3[60:57]),
        .S({\r2[60]_i_6_n_0 ,\r2[60]_i_7_n_0 ,\r2[60]_i_8_n_0 ,\r2[60]_i_9_n_0 }));
  FDRE \r2_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[61]),
        .Q(r2[61]),
        .R(1'b0));
  FDRE \r2_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[62]),
        .Q(r2[62]),
        .R(1'b0));
  FDRE \r2_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(r1_reg__3[63]),
        .Q(r2[63]),
        .R(1'b0));
  CARRY4 \r2_reg[63]_i_1 
       (.CI(\r2_reg[60]_i_1_n_0 ),
        .CO({\NLW_r2_reg[63]_i_1_CO_UNCONNECTED [3:2],\r2_reg[63]_i_1_n_2 ,\r2_reg[63]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\r2[63]_i_2_n_0 ,\r2[63]_i_3_n_0 }),
        .O({\NLW_r2_reg[63]_i_1_O_UNCONNECTED [3],r1_reg__3[63:61]}),
        .S({1'b0,\r2[63]_i_4_n_0 ,\r2[63]_i_5_n_0 ,\r2[63]_i_6_n_0 }));
  FDRE \r2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[6]__3_n_0 ),
        .Q(r2[6]),
        .R(1'b0));
  FDRE \r2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[7]__3_n_0 ),
        .Q(r2[7]),
        .R(1'b0));
  FDRE \r2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[8]__3_n_0 ),
        .Q(r2[8]),
        .R(1'b0));
  FDRE \r2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\r1_reg[9]__3_n_0 ),
        .Q(r2[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "polynomial_multiplication" *) 
module cryptoprocessor_ComputeCoreWrapper_0_0_polynomial_multiplication
   (Q,
    dina,
    wea,
    S,
    \command_reg0_reg[34] ,
    OP1_or_OP2,
    \command_reg0_reg[28] ,
    \command_reg0_reg[32] ,
    \command_reg0_reg[8] ,
    \command_reg0_reg[12] ,
    clk,
    doutb,
    d,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    dina_ext_high_word,
    control_low_word,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ,
    trng_rst__3,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 );
  output [0:0]Q;
  output [63:0]dina;
  output [0:0]wea;
  output [1:0]S;
  output [1:0]\command_reg0_reg[34] ;
  output [8:0]OP1_or_OP2;
  output [3:0]\command_reg0_reg[28] ;
  output [3:0]\command_reg0_reg[32] ;
  output [3:0]\command_reg0_reg[8] ;
  output [3:0]\command_reg0_reg[12] ;
  input clk;
  input [63:0]doutb;
  input [36:0]d;
  input \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input [26:0]dina_ext_high_word;
  input [11:0]control_low_word;
  input [34:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ;
  input trng_rst__3;
  input \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire [34:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_2_n_0 ;
  wire \FSM_onehot_state[7]_i_3_n_0 ;
  wire \FSM_onehot_state[7]_i_4_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire Mult_n_64;
  wire Mult_n_65;
  wire [8:0]OP1_or_OP2;
  wire [0:0]Q;
  wire [1:0]S;
  wire addrb_carry__0_i_10_n_0;
  wire addrb_carry__0_i_11_n_0;
  wire addrb_carry__0_i_12_n_0;
  wire addrb_carry__0_i_9_n_0;
  wire addrb_carry__1_i_4_n_0;
  wire addrb_carry__1_i_5_n_0;
  wire addrb_carry_i_10_n_0;
  wire addrb_carry_i_11_n_0;
  wire addrb_carry_i_12_n_0;
  wire addrb_carry_i_13_n_0;
  wire clk;
  wire [3:0]\command_reg0_reg[12] ;
  wire [3:0]\command_reg0_reg[28] ;
  wire [3:0]\command_reg0_reg[32] ;
  wire [1:0]\command_reg0_reg[34] ;
  wire [3:0]\command_reg0_reg[8] ;
  wire [11:0]control_low_word;
  wire [36:0]d;
  wire [63:0]dina;
  wire [26:0]dina_ext_high_word;
  wire [63:0]doutb;
  wire en_reg_b;
  wire mult_rst;
  wire op2_sel;
  wire [9:0]p_0_in;
  wire polymult_op2_sel;
  wire polymult_wea;
  wire rst_read_address_reg;
  wire trng_rst__3;
  wire [0:0]wea;
  wire \write_address_reg[6]_i_2_n_0 ;
  wire \write_address_reg[9]_i_3_n_0 ;
  wire [9:0]write_address_reg_reg;

  LUT5 #(
    .INIT(32'hFF080808)) 
    BR_i_1
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I1(control_low_word[10]),
        .I2(control_low_word[11]),
        .I3(polymult_wea),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(wea));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state[7]_i_3_n_0 ),
        .I1(polymult_wea),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [4]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [0]),
        .O(mult_rst));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_state[7]_i_2 
       (.I0(\FSM_onehot_state[7]_i_3_n_0 ),
        .I1(polymult_wea),
        .I2(Q),
        .O(\FSM_onehot_state[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_state[7]_i_3 
       (.I0(\FSM_onehot_state[7]_i_4_n_0 ),
        .I1(write_address_reg_reg[4]),
        .I2(write_address_reg_reg[5]),
        .I3(write_address_reg_reg[2]),
        .I4(write_address_reg_reg[3]),
        .O(\FSM_onehot_state[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \FSM_onehot_state[7]_i_4 
       (.I0(write_address_reg_reg[6]),
        .I1(write_address_reg_reg[7]),
        .I2(write_address_reg_reg[8]),
        .I3(write_address_reg_reg[9]),
        .I4(write_address_reg_reg[0]),
        .I5(write_address_reg_reg[1]),
        .O(\FSM_onehot_state[7]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00010000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000010,iSTATE6:10000000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(mult_rst));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00010000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000010,iSTATE6:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(mult_rst));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00010000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000010,iSTATE6:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(polymult_op2_sel),
        .R(mult_rst));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00010000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000010,iSTATE6:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(polymult_op2_sel),
        .Q(en_reg_b),
        .R(mult_rst));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00010000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000010,iSTATE6:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(en_reg_b),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(mult_rst));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00010000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000010,iSTATE6:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(Mult_n_65),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(mult_rst));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00010000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000010,iSTATE6:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(Mult_n_64),
        .Q(polymult_wea),
        .R(mult_rst));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00010000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000010,iSTATE6:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[7]_i_2_n_0 ),
        .Q(Q),
        .R(mult_rst));
  cryptoprocessor_ComputeCoreWrapper_0_0_modular_multiplier Mult
       (.D({Mult_n_64,Mult_n_65}),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .Q({\FSM_onehot_state_reg_n_0_[5] ,\FSM_onehot_state_reg_n_0_[4] ,en_reg_b,polymult_op2_sel}),
        .clk(clk),
        .d(d),
        .dina(dina),
        .dina_ext_high_word(dina_ext_high_word),
        .doutb(doutb));
  LUT6 #(
    .INIT(64'h556A6A6AAAAAAAAA)) 
    addra_carry__0_i_1
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [32]),
        .I1(control_low_word[7]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .I3(write_address_reg_reg[7]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .I5(trng_rst__3),
        .O(\command_reg0_reg[32] [3]));
  LUT6 #(
    .INIT(64'h556A6A6AAAAAAAAA)) 
    addra_carry__0_i_2
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [31]),
        .I1(control_low_word[6]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .I3(write_address_reg_reg[6]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .I5(trng_rst__3),
        .O(\command_reg0_reg[32] [2]));
  LUT6 #(
    .INIT(64'h556A6A6AAAAAAAAA)) 
    addra_carry__0_i_3
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [30]),
        .I1(control_low_word[5]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .I3(write_address_reg_reg[5]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .I5(trng_rst__3),
        .O(\command_reg0_reg[32] [1]));
  LUT6 #(
    .INIT(64'h556A6A6AAAAAAAAA)) 
    addra_carry__0_i_4
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [29]),
        .I1(control_low_word[4]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .I3(write_address_reg_reg[4]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .I5(trng_rst__3),
        .O(\command_reg0_reg[32] [0]));
  LUT6 #(
    .INIT(64'h556A6A6AAAAAAAAA)) 
    addra_carry__1_i_1
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [34]),
        .I1(control_low_word[9]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .I3(write_address_reg_reg[9]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .I5(trng_rst__3),
        .O(\command_reg0_reg[34] [1]));
  LUT6 #(
    .INIT(64'h556A6A6AAAAAAAAA)) 
    addra_carry__1_i_2
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [33]),
        .I1(control_low_word[8]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .I3(write_address_reg_reg[8]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .I5(trng_rst__3),
        .O(\command_reg0_reg[34] [0]));
  LUT6 #(
    .INIT(64'h556A6A6AAAAAAAAA)) 
    addra_carry_i_1
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [28]),
        .I1(control_low_word[3]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .I3(write_address_reg_reg[3]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .I5(trng_rst__3),
        .O(\command_reg0_reg[28] [3]));
  LUT6 #(
    .INIT(64'h556A6A6AAAAAAAAA)) 
    addra_carry_i_2
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [27]),
        .I1(control_low_word[2]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .I3(write_address_reg_reg[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .I5(trng_rst__3),
        .O(\command_reg0_reg[28] [2]));
  LUT6 #(
    .INIT(64'h556A6A6AAAAAAAAA)) 
    addra_carry_i_3
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [26]),
        .I1(control_low_word[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .I3(write_address_reg_reg[1]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .I5(trng_rst__3),
        .O(\command_reg0_reg[28] [1]));
  LUT6 #(
    .INIT(64'h556A6A6AAAAAAAAA)) 
    addra_carry_i_4
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [25]),
        .I1(control_low_word[0]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .I3(write_address_reg_reg[0]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .I5(trng_rst__3),
        .O(\command_reg0_reg[28] [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    addrb_carry__0_i_1
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [22]),
        .I1(op2_sel),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [12]),
        .O(OP1_or_OP2[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    addrb_carry__0_i_10
       (.I0(control_low_word[6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .I2(write_address_reg_reg[6]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(addrb_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    addrb_carry__0_i_11
       (.I0(control_low_word[5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .I2(write_address_reg_reg[5]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(addrb_carry__0_i_11_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    addrb_carry__0_i_12
       (.I0(control_low_word[4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .I2(write_address_reg_reg[4]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(addrb_carry__0_i_12_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    addrb_carry__0_i_2
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [21]),
        .I1(op2_sel),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [11]),
        .O(OP1_or_OP2[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    addrb_carry__0_i_3
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [20]),
        .I1(op2_sel),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [10]),
        .O(OP1_or_OP2[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    addrb_carry__0_i_4
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [19]),
        .I1(op2_sel),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [9]),
        .O(OP1_or_OP2[4]));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    addrb_carry__0_i_5
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [12]),
        .I1(op2_sel),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [22]),
        .I3(trng_rst__3),
        .I4(addrb_carry__0_i_9_n_0),
        .O(\command_reg0_reg[12] [3]));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    addrb_carry__0_i_6
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [11]),
        .I1(op2_sel),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [21]),
        .I3(trng_rst__3),
        .I4(addrb_carry__0_i_10_n_0),
        .O(\command_reg0_reg[12] [2]));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    addrb_carry__0_i_7
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [10]),
        .I1(op2_sel),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [20]),
        .I3(trng_rst__3),
        .I4(addrb_carry__0_i_11_n_0),
        .O(\command_reg0_reg[12] [1]));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    addrb_carry__0_i_8
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [9]),
        .I1(op2_sel),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [19]),
        .I3(trng_rst__3),
        .I4(addrb_carry__0_i_12_n_0),
        .O(\command_reg0_reg[12] [0]));
  LUT4 #(
    .INIT(16'hF888)) 
    addrb_carry__0_i_9
       (.I0(control_low_word[7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .I2(write_address_reg_reg[7]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(addrb_carry__0_i_9_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    addrb_carry__1_i_1
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [23]),
        .I1(op2_sel),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [13]),
        .O(OP1_or_OP2[8]));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    addrb_carry__1_i_2
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [14]),
        .I1(op2_sel),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [24]),
        .I3(trng_rst__3),
        .I4(addrb_carry__1_i_4_n_0),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    addrb_carry__1_i_3
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [13]),
        .I1(op2_sel),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [23]),
        .I3(trng_rst__3),
        .I4(addrb_carry__1_i_5_n_0),
        .O(S[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    addrb_carry__1_i_4
       (.I0(control_low_word[9]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .I2(write_address_reg_reg[9]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(addrb_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    addrb_carry__1_i_5
       (.I0(control_low_word[8]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .I2(write_address_reg_reg[8]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(addrb_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    addrb_carry_i_1
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [18]),
        .I1(op2_sel),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [8]),
        .O(OP1_or_OP2[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    addrb_carry_i_10
       (.I0(control_low_word[3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .I2(write_address_reg_reg[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(addrb_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    addrb_carry_i_11
       (.I0(control_low_word[2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .I2(write_address_reg_reg[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(addrb_carry_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    addrb_carry_i_12
       (.I0(control_low_word[1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .I2(write_address_reg_reg[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(addrb_carry_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    addrb_carry_i_13
       (.I0(control_low_word[0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .I2(write_address_reg_reg[0]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(addrb_carry_i_13_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    addrb_carry_i_2
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [17]),
        .I1(op2_sel),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [7]),
        .O(OP1_or_OP2[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    addrb_carry_i_3
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [16]),
        .I1(op2_sel),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [6]),
        .O(OP1_or_OP2[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    addrb_carry_i_4
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [15]),
        .I1(op2_sel),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [5]),
        .O(OP1_or_OP2[0]));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    addrb_carry_i_5
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [8]),
        .I1(op2_sel),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [18]),
        .I3(trng_rst__3),
        .I4(addrb_carry_i_10_n_0),
        .O(\command_reg0_reg[8] [3]));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    addrb_carry_i_6
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [7]),
        .I1(op2_sel),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [17]),
        .I3(trng_rst__3),
        .I4(addrb_carry_i_11_n_0),
        .O(\command_reg0_reg[8] [2]));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    addrb_carry_i_7
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [6]),
        .I1(op2_sel),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [16]),
        .I3(trng_rst__3),
        .I4(addrb_carry_i_12_n_0),
        .O(\command_reg0_reg[8] [1]));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    addrb_carry_i_8
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [5]),
        .I1(op2_sel),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [15]),
        .I3(trng_rst__3),
        .I4(addrb_carry_i_13_n_0),
        .O(\command_reg0_reg[8] [0]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    addrb_carry_i_9
       (.I0(polymult_op2_sel),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [0]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [4]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [3]),
        .O(op2_sel));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \write_address_reg[0]_i_1 
       (.I0(write_address_reg_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_address_reg[1]_i_1 
       (.I0(write_address_reg_reg[0]),
        .I1(write_address_reg_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_address_reg[2]_i_1 
       (.I0(write_address_reg_reg[0]),
        .I1(write_address_reg_reg[1]),
        .I2(write_address_reg_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_address_reg[3]_i_1 
       (.I0(write_address_reg_reg[1]),
        .I1(write_address_reg_reg[0]),
        .I2(write_address_reg_reg[2]),
        .I3(write_address_reg_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \write_address_reg[4]_i_1 
       (.I0(write_address_reg_reg[2]),
        .I1(write_address_reg_reg[0]),
        .I2(write_address_reg_reg[1]),
        .I3(write_address_reg_reg[3]),
        .I4(write_address_reg_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \write_address_reg[5]_i_1 
       (.I0(write_address_reg_reg[3]),
        .I1(write_address_reg_reg[1]),
        .I2(write_address_reg_reg[0]),
        .I3(write_address_reg_reg[2]),
        .I4(write_address_reg_reg[4]),
        .I5(write_address_reg_reg[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \write_address_reg[6]_i_1 
       (.I0(write_address_reg_reg[4]),
        .I1(write_address_reg_reg[2]),
        .I2(\write_address_reg[6]_i_2_n_0 ),
        .I3(write_address_reg_reg[3]),
        .I4(write_address_reg_reg[5]),
        .I5(write_address_reg_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_address_reg[6]_i_2 
       (.I0(write_address_reg_reg[1]),
        .I1(write_address_reg_reg[0]),
        .O(\write_address_reg[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \write_address_reg[7]_i_1 
       (.I0(\write_address_reg[9]_i_3_n_0 ),
        .I1(write_address_reg_reg[6]),
        .I2(write_address_reg_reg[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_address_reg[8]_i_1 
       (.I0(write_address_reg_reg[6]),
        .I1(\write_address_reg[9]_i_3_n_0 ),
        .I2(write_address_reg_reg[7]),
        .I3(write_address_reg_reg[8]),
        .O(p_0_in[8]));
  LUT2 #(
    .INIT(4'hE)) 
    \write_address_reg[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(Q),
        .O(rst_read_address_reg));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \write_address_reg[9]_i_2 
       (.I0(write_address_reg_reg[7]),
        .I1(\write_address_reg[9]_i_3_n_0 ),
        .I2(write_address_reg_reg[6]),
        .I3(write_address_reg_reg[8]),
        .I4(write_address_reg_reg[9]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \write_address_reg[9]_i_3 
       (.I0(write_address_reg_reg[5]),
        .I1(write_address_reg_reg[3]),
        .I2(write_address_reg_reg[1]),
        .I3(write_address_reg_reg[0]),
        .I4(write_address_reg_reg[2]),
        .I5(write_address_reg_reg[4]),
        .O(\write_address_reg[9]_i_3_n_0 ));
  FDRE \write_address_reg_reg[0] 
       (.C(clk),
        .CE(polymult_wea),
        .D(p_0_in[0]),
        .Q(write_address_reg_reg[0]),
        .R(rst_read_address_reg));
  FDRE \write_address_reg_reg[1] 
       (.C(clk),
        .CE(polymult_wea),
        .D(p_0_in[1]),
        .Q(write_address_reg_reg[1]),
        .R(rst_read_address_reg));
  FDRE \write_address_reg_reg[2] 
       (.C(clk),
        .CE(polymult_wea),
        .D(p_0_in[2]),
        .Q(write_address_reg_reg[2]),
        .R(rst_read_address_reg));
  FDRE \write_address_reg_reg[3] 
       (.C(clk),
        .CE(polymult_wea),
        .D(p_0_in[3]),
        .Q(write_address_reg_reg[3]),
        .R(rst_read_address_reg));
  FDRE \write_address_reg_reg[4] 
       (.C(clk),
        .CE(polymult_wea),
        .D(p_0_in[4]),
        .Q(write_address_reg_reg[4]),
        .R(rst_read_address_reg));
  FDRE \write_address_reg_reg[5] 
       (.C(clk),
        .CE(polymult_wea),
        .D(p_0_in[5]),
        .Q(write_address_reg_reg[5]),
        .R(rst_read_address_reg));
  FDRE \write_address_reg_reg[6] 
       (.C(clk),
        .CE(polymult_wea),
        .D(p_0_in[6]),
        .Q(write_address_reg_reg[6]),
        .R(rst_read_address_reg));
  FDRE \write_address_reg_reg[7] 
       (.C(clk),
        .CE(polymult_wea),
        .D(p_0_in[7]),
        .Q(write_address_reg_reg[7]),
        .R(rst_read_address_reg));
  FDRE \write_address_reg_reg[8] 
       (.C(clk),
        .CE(polymult_wea),
        .D(p_0_in[8]),
        .Q(write_address_reg_reg[8]),
        .R(rst_read_address_reg));
  FDRE \write_address_reg_reg[9] 
       (.C(clk),
        .CE(polymult_wea),
        .D(p_0_in[9]),
        .Q(write_address_reg_reg[9]),
        .R(rst_read_address_reg));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_generic_cstr
   (doutb,
    clka,
    wea,
    addra,
    addrb,
    dina);
  output [63:0]doutb;
  input clka;
  input [0:0]wea;
  input [9:0]addra;
  input [9:0]addrb;
  input [63:0]dina;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [63:0]dina;
  wire [63:0]doutb;
  wire [0:0]wea;

  cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina[35:0]),
        .doutb(doutb[35:0]),
        .wea(wea));
  cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina[63:36]),
        .doutb(doutb[63:36]),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_width
   (doutb,
    clka,
    wea,
    addra,
    addrb,
    dina);
  output [35:0]doutb;
  input clka;
  input [0:0]wea;
  input [9:0]addra;
  input [9:0]addrb;
  input [35:0]dina;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [35:0]dina;
  wire [35:0]doutb;
  wire [0:0]wea;

  cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_width__parameterized0
   (doutb,
    clka,
    wea,
    addra,
    addrb,
    dina);
  output [27:0]doutb;
  input clka;
  input [0:0]wea;
  input [9:0]addra;
  input [9:0]addrb;
  input [27:0]dina;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [27:0]dina;
  wire [27:0]doutb;
  wire [0:0]wea;

  cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_wrapper__parameterized0 \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_wrapper
   (doutb,
    clka,
    wea,
    addra,
    addrb,
    dina);
  output [35:0]doutb;
  input clka;
  input [0:0]wea;
  input [9:0]addra;
  input [9:0]addrb;
  input [35:0]dina;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [35:0]dina;
  wire [35:0]doutb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({dina[34:27],dina[25:18],dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({dina[35],dina[26],dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({doutb[34:27],doutb[25:18],doutb[16:9],doutb[7:0]}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({doutb[35],doutb[26],doutb[17],doutb[8]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(wea),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b1,1'b1,1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_wrapper__parameterized0
   (doutb,
    clka,
    wea,
    addra,
    addrb,
    dina);
  output [27:0]doutb;
  input clka;
  input [0:0]wea;
  input [9:0]addra;
  input [9:0]addrb;
  input [27:0]dina;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_36 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_44 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_52 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_60 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_72 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_73 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_74 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [27:0]dina;
  wire [27:0]doutb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,dina[27:21],1'b0,dina[20:14],1'b0,dina[13:7],1'b0,dina[6:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_36 ,doutb[27:21],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_44 ,doutb[20:14],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_52 ,doutb[13:7],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_60 ,doutb[6:0]}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_72 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_73 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_74 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(wea),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b1,1'b1,1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_top
   (doutb,
    clka,
    wea,
    addra,
    addrb,
    dina);
  output [63:0]doutb;
  input clka;
  input [0:0]wea;
  input [9:0]addra;
  input [9:0]addrb;
  input [63:0]dina;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [63:0]dina;
  wire [63:0]doutb;
  wire [0:0]wea;

  cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "10" *) (* C_ADDRB_WIDTH = "10" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "1" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "2" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.882749 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "BRAM64_1024.mem" *) 
(* C_INIT_FILE_NAME = "no_coe_file_loaded" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "0" *) 
(* C_MEM_TYPE = "1" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "1024" *) (* C_READ_DEPTH_B = "1024" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "64" *) (* C_READ_WIDTH_B = "64" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "1024" *) 
(* C_WRITE_DEPTH_B = "1024" *) (* C_WRITE_MODE_A = "NO_CHANGE" *) (* C_WRITE_MODE_B = "READ_FIRST" *) 
(* C_WRITE_WIDTH_A = "64" *) (* C_WRITE_WIDTH_B = "64" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_3" *) 
module cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [9:0]addra;
  input [63:0]dina;
  output [63:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [63:0]dinb;
  output [63:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [9:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [63:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [9:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [63:0]dina;
  wire [63:0]doutb;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign douta[63] = \<const0> ;
  assign douta[62] = \<const0> ;
  assign douta[61] = \<const0> ;
  assign douta[60] = \<const0> ;
  assign douta[59] = \<const0> ;
  assign douta[58] = \<const0> ;
  assign douta[57] = \<const0> ;
  assign douta[56] = \<const0> ;
  assign douta[55] = \<const0> ;
  assign douta[54] = \<const0> ;
  assign douta[53] = \<const0> ;
  assign douta[52] = \<const0> ;
  assign douta[51] = \<const0> ;
  assign douta[50] = \<const0> ;
  assign douta[49] = \<const0> ;
  assign douta[48] = \<const0> ;
  assign douta[47] = \<const0> ;
  assign douta[46] = \<const0> ;
  assign douta[45] = \<const0> ;
  assign douta[44] = \<const0> ;
  assign douta[43] = \<const0> ;
  assign douta[42] = \<const0> ;
  assign douta[41] = \<const0> ;
  assign douta[40] = \<const0> ;
  assign douta[39] = \<const0> ;
  assign douta[38] = \<const0> ;
  assign douta[37] = \<const0> ;
  assign douta[36] = \<const0> ;
  assign douta[35] = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3_synth inst_blk_mem_gen
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_3_synth" *) 
module cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3_synth
   (doutb,
    clka,
    wea,
    addra,
    addrb,
    dina);
  output [63:0]doutb;
  input clka;
  input [0:0]wea;
  input [9:0]addra;
  input [9:0]addrb;
  input [63:0]dina;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [63:0]dina;
  wire [63:0]doutb;
  wire [0:0]wea;

  cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
endmodule

(* C_ADDR_WIDTH = "6" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "64" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "zynq" *) (* C_HAS_CLK = "1" *) 
(* C_HAS_D = "1" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "1" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "1" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "1" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "0" *) (* C_HAS_WE = "1" *) 
(* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_MEM_TYPE = "4" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "0" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "37" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_13" *) 
module cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [5:0]a;
  input [36:0]d;
  input [5:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [36:0]spo;
  output [36:0]dpo;
  output [36:0]qspo;
  output [36:0]qdpo;

  wire \<const0> ;
  wire [5:0]a;
  wire clk;
  wire [36:0]d;
  wire [5:0]dpra;
  wire [36:0]qdpo;
  wire qdpo_clk;
  wire we;

  assign dpo[36] = \<const0> ;
  assign dpo[35] = \<const0> ;
  assign dpo[34] = \<const0> ;
  assign dpo[33] = \<const0> ;
  assign dpo[32] = \<const0> ;
  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qspo[36] = \<const0> ;
  assign qspo[35] = \<const0> ;
  assign qspo[34] = \<const0> ;
  assign qspo[33] = \<const0> ;
  assign qspo[32] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  assign spo[36] = \<const0> ;
  assign spo[35] = \<const0> ;
  assign spo[34] = \<const0> ;
  assign spo[33] = \<const0> ;
  assign spo[32] = \<const0> ;
  assign spo[31] = \<const0> ;
  assign spo[30] = \<const0> ;
  assign spo[29] = \<const0> ;
  assign spo[28] = \<const0> ;
  assign spo[27] = \<const0> ;
  assign spo[26] = \<const0> ;
  assign spo[25] = \<const0> ;
  assign spo[24] = \<const0> ;
  assign spo[23] = \<const0> ;
  assign spo[22] = \<const0> ;
  assign spo[21] = \<const0> ;
  assign spo[20] = \<const0> ;
  assign spo[19] = \<const0> ;
  assign spo[18] = \<const0> ;
  assign spo[17] = \<const0> ;
  assign spo[16] = \<const0> ;
  assign spo[15] = \<const0> ;
  assign spo[14] = \<const0> ;
  assign spo[13] = \<const0> ;
  assign spo[12] = \<const0> ;
  assign spo[11] = \<const0> ;
  assign spo[10] = \<const0> ;
  assign spo[9] = \<const0> ;
  assign spo[8] = \<const0> ;
  assign spo[7] = \<const0> ;
  assign spo[6] = \<const0> ;
  assign spo[5] = \<const0> ;
  assign spo[4] = \<const0> ;
  assign spo[3] = \<const0> ;
  assign spo[2] = \<const0> ;
  assign spo[1] = \<const0> ;
  assign spo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13_synth \synth_options.dist_mem_inst 
       (.a(a),
        .clk(clk),
        .d(d),
        .dpra(dpra),
        .qdpo(qdpo),
        .qdpo_clk(qdpo_clk),
        .we(we));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_13_synth" *) 
module cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13_synth
   (qdpo,
    clk,
    d,
    we,
    dpra,
    a,
    qdpo_clk);
  output [36:0]qdpo;
  input clk;
  input [36:0]d;
  input we;
  input [5:0]dpra;
  input [5:0]a;
  input qdpo_clk;

  wire [5:0]a;
  wire clk;
  wire [36:0]d;
  wire [5:0]dpra;
  wire [36:0]qdpo;
  wire qdpo_clk;
  wire we;

  cryptoprocessor_ComputeCoreWrapper_0_0_sdpram \gen_sdp_ram.sdpram_inst 
       (.a(a),
        .clk(clk),
        .d(d),
        .dpra(dpra),
        .qdpo(qdpo),
        .qdpo_clk(qdpo_clk),
        .we(we));
endmodule

(* ORIG_REF_NAME = "sdpram" *) 
module cryptoprocessor_ComputeCoreWrapper_0_0_sdpram
   (qdpo,
    clk,
    d,
    we,
    dpra,
    a,
    qdpo_clk);
  output [36:0]qdpo;
  input clk;
  input [36:0]d;
  input we;
  input [5:0]dpra;
  input [5:0]a;
  input qdpo_clk;

  wire [5:0]a;
  wire clk;
  wire [36:0]d;
  wire [5:0]dpra;
  wire qdpo_clk;
  (* RTL_KEEP = "true" *) wire [36:0]qsdpo_int;
  wire [36:0]sdpo_int;
  wire we;
  wire NLW_ram_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_15_17_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_18_20_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_21_23_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_24_26_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_27_29_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_30_32_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_33_35_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_36_36_DOB_UNCONNECTED;
  wire NLW_ram_reg_0_63_36_36_DOC_UNCONNECTED;
  wire NLW_ram_reg_0_63_36_36_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_9_11_DOD_UNCONNECTED;

  assign qdpo[36:0] = qsdpo_int;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[0] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[0]),
        .Q(qsdpo_int[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[10] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[10]),
        .Q(qsdpo_int[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[11] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[11]),
        .Q(qsdpo_int[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[12] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[12]),
        .Q(qsdpo_int[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[13] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[13]),
        .Q(qsdpo_int[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[14] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[14]),
        .Q(qsdpo_int[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[15] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[15]),
        .Q(qsdpo_int[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[16] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[16]),
        .Q(qsdpo_int[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[17] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[17]),
        .Q(qsdpo_int[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[18] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[18]),
        .Q(qsdpo_int[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[19] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[19]),
        .Q(qsdpo_int[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[1] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[1]),
        .Q(qsdpo_int[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[20] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[20]),
        .Q(qsdpo_int[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[21] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[21]),
        .Q(qsdpo_int[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[22] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[22]),
        .Q(qsdpo_int[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[23] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[23]),
        .Q(qsdpo_int[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[24] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[24]),
        .Q(qsdpo_int[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[25] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[25]),
        .Q(qsdpo_int[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[26] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[26]),
        .Q(qsdpo_int[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[27] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[27]),
        .Q(qsdpo_int[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[28] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[28]),
        .Q(qsdpo_int[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[29] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[29]),
        .Q(qsdpo_int[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[2] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[2]),
        .Q(qsdpo_int[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[30] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[30]),
        .Q(qsdpo_int[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[31] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[31]),
        .Q(qsdpo_int[31]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[32] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[32]),
        .Q(qsdpo_int[32]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[33] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[33]),
        .Q(qsdpo_int[33]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[34] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[34]),
        .Q(qsdpo_int[34]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[35] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[35]),
        .Q(qsdpo_int[35]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[36] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[36]),
        .Q(qsdpo_int[36]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[3] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[3]),
        .Q(qsdpo_int[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[4] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[4]),
        .Q(qsdpo_int[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[5] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[5]),
        .Q(qsdpo_int[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[6] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[6]),
        .Q(qsdpo_int[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[7] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[7]),
        .Q(qsdpo_int[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[8] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[8]),
        .Q(qsdpo_int[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[9] 
       (.C(qdpo_clk),
        .CE(1'b1),
        .D(sdpo_int[9]),
        .Q(qsdpo_int[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2368" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_0_2
       (.ADDRA(dpra),
        .ADDRB(dpra),
        .ADDRC(dpra),
        .ADDRD(a),
        .DIA(d[0]),
        .DIB(d[1]),
        .DIC(d[2]),
        .DID(1'b0),
        .DOA(sdpo_int[0]),
        .DOB(sdpo_int[1]),
        .DOC(sdpo_int[2]),
        .DOD(NLW_ram_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2368" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_12_14
       (.ADDRA(dpra),
        .ADDRB(dpra),
        .ADDRC(dpra),
        .ADDRD(a),
        .DIA(d[12]),
        .DIB(d[13]),
        .DIC(d[14]),
        .DID(1'b0),
        .DOA(sdpo_int[12]),
        .DOB(sdpo_int[13]),
        .DOC(sdpo_int[14]),
        .DOD(NLW_ram_reg_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2368" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_15_17
       (.ADDRA(dpra),
        .ADDRB(dpra),
        .ADDRC(dpra),
        .ADDRD(a),
        .DIA(d[15]),
        .DIB(d[16]),
        .DIC(d[17]),
        .DID(1'b0),
        .DOA(sdpo_int[15]),
        .DOB(sdpo_int[16]),
        .DOC(sdpo_int[17]),
        .DOD(NLW_ram_reg_0_63_15_17_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2368" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_18_20
       (.ADDRA(dpra),
        .ADDRB(dpra),
        .ADDRC(dpra),
        .ADDRD(a),
        .DIA(d[18]),
        .DIB(d[19]),
        .DIC(d[20]),
        .DID(1'b0),
        .DOA(sdpo_int[18]),
        .DOB(sdpo_int[19]),
        .DOC(sdpo_int[20]),
        .DOD(NLW_ram_reg_0_63_18_20_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2368" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_21_23
       (.ADDRA(dpra),
        .ADDRB(dpra),
        .ADDRC(dpra),
        .ADDRD(a),
        .DIA(d[21]),
        .DIB(d[22]),
        .DIC(d[23]),
        .DID(1'b0),
        .DOA(sdpo_int[21]),
        .DOB(sdpo_int[22]),
        .DOC(sdpo_int[23]),
        .DOD(NLW_ram_reg_0_63_21_23_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2368" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_24_26
       (.ADDRA(dpra),
        .ADDRB(dpra),
        .ADDRC(dpra),
        .ADDRD(a),
        .DIA(d[24]),
        .DIB(d[25]),
        .DIC(d[26]),
        .DID(1'b0),
        .DOA(sdpo_int[24]),
        .DOB(sdpo_int[25]),
        .DOC(sdpo_int[26]),
        .DOD(NLW_ram_reg_0_63_24_26_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2368" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_27_29
       (.ADDRA(dpra),
        .ADDRB(dpra),
        .ADDRC(dpra),
        .ADDRD(a),
        .DIA(d[27]),
        .DIB(d[28]),
        .DIC(d[29]),
        .DID(1'b0),
        .DOA(sdpo_int[27]),
        .DOB(sdpo_int[28]),
        .DOC(sdpo_int[29]),
        .DOD(NLW_ram_reg_0_63_27_29_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2368" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "32" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_30_32
       (.ADDRA(dpra),
        .ADDRB(dpra),
        .ADDRC(dpra),
        .ADDRD(a),
        .DIA(d[30]),
        .DIB(d[31]),
        .DIC(d[32]),
        .DID(1'b0),
        .DOA(sdpo_int[30]),
        .DOB(sdpo_int[31]),
        .DOC(sdpo_int[32]),
        .DOD(NLW_ram_reg_0_63_30_32_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2368" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "35" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_33_35
       (.ADDRA(dpra),
        .ADDRB(dpra),
        .ADDRC(dpra),
        .ADDRD(a),
        .DIA(d[33]),
        .DIB(d[34]),
        .DIC(d[35]),
        .DID(1'b0),
        .DOA(sdpo_int[33]),
        .DOB(sdpo_int[34]),
        .DOC(sdpo_int[35]),
        .DOD(NLW_ram_reg_0_63_33_35_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2368" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "36" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_36_36
       (.ADDRA(dpra),
        .ADDRB(dpra),
        .ADDRC(dpra),
        .ADDRD(a),
        .DIA(d[36]),
        .DIB(1'b0),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(sdpo_int[36]),
        .DOB(NLW_ram_reg_0_63_36_36_DOB_UNCONNECTED),
        .DOC(NLW_ram_reg_0_63_36_36_DOC_UNCONNECTED),
        .DOD(NLW_ram_reg_0_63_36_36_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2368" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_3_5
       (.ADDRA(dpra),
        .ADDRB(dpra),
        .ADDRC(dpra),
        .ADDRD(a),
        .DIA(d[3]),
        .DIB(d[4]),
        .DIC(d[5]),
        .DID(1'b0),
        .DOA(sdpo_int[3]),
        .DOB(sdpo_int[4]),
        .DOC(sdpo_int[5]),
        .DOD(NLW_ram_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2368" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_6_8
       (.ADDRA(dpra),
        .ADDRB(dpra),
        .ADDRC(dpra),
        .ADDRD(a),
        .DIA(d[6]),
        .DIB(d[7]),
        .DIC(d[8]),
        .DID(1'b0),
        .DOA(sdpo_int[6]),
        .DOB(sdpo_int[7]),
        .DOC(sdpo_int[8]),
        .DOD(NLW_ram_reg_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2368" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_9_11
       (.ADDRA(dpra),
        .ADDRB(dpra),
        .ADDRC(dpra),
        .ADDRD(a),
        .DIA(d[9]),
        .DIB(d[10]),
        .DIC(d[11]),
        .DID(1'b0),
        .DOA(sdpo_int[9]),
        .DOB(sdpo_int[10]),
        .DOC(sdpo_int[11]),
        .DOD(NLW_ram_reg_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(we));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
