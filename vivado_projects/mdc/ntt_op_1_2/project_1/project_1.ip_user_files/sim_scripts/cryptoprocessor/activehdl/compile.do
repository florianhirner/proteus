vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_5
vlib activehdl/processing_system7_vip_v1_0_7
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/fifo_generator_v13_2_4
vlib activehdl/axi_data_fifo_v2_1_18
vlib activehdl/axi_register_slice_v2_1_19
vlib activehdl/axi_protocol_converter_v2_1_19

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 activehdl/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 activehdl/processing_system7_vip_v1_0_7
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_4 activehdl/fifo_generator_v13_2_4
vmap axi_data_fifo_v2_1_18 activehdl/axi_data_fifo_v2_1_18
vmap axi_register_slice_v2_1_19 activehdl/axi_register_slice_v2_1_19
vmap axi_protocol_converter_v2_1_19 activehdl/axi_protocol_converter_v2_1_19

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/8c62/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ip/cryptoprocessor_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/8c62/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ip/cryptoprocessor_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5  -sv2k12 "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/8c62/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ip/cryptoprocessor_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7  -sv2k12 "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/8c62/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ip/cryptoprocessor_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/8c62/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ip/cryptoprocessor_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/cryptoprocessor/ip/cryptoprocessor_processing_system7_0_0/sim/cryptoprocessor_processing_system7_0_0.v" \
"../../../bd/cryptoprocessor/ipshared/b70b/hdl/AXI_Slave8Ports_new_v1_0_S00_AXI.v" \
"../../../bd/cryptoprocessor/ipshared/b70b/hdl/AXI_Slave8Ports_new_v1_0.v" \
"../../../bd/cryptoprocessor/ip/cryptoprocessor_AXI_Slave8Ports_new_0_0/sim/cryptoprocessor_AXI_Slave8Ports_new_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/cryptoprocessor/ip/cryptoprocessor_rst_ps7_0_100M_0/sim/cryptoprocessor_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/8c62/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ip/cryptoprocessor_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/cryptoprocessor/ip/cryptoprocessor_ComputeCoreWrapper_0_0/sim/cryptoprocessor_ComputeCoreWrapper_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/8c62/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ip/cryptoprocessor_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/8c62/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ip/cryptoprocessor_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -93 \
"../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/8c62/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ip/cryptoprocessor_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_18  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/8c62/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ip/cryptoprocessor_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/8c62/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ip/cryptoprocessor_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_19  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/8c62/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ip/cryptoprocessor_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ipshared/8c62/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/cryptoprocessor/ip/cryptoprocessor_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/cryptoprocessor/ip/cryptoprocessor_auto_pc_0/sim/cryptoprocessor_auto_pc_0.v" \
"../../../bd/cryptoprocessor/sim/cryptoprocessor.v" \

vlog -work xil_defaultlib \
"glbl.v"

