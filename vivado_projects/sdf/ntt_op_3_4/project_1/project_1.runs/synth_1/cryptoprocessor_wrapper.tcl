# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 2
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/florian/Desktop/proteus/ntt_op_3_4/project_1/project_1.cache/wt [current_project]
set_property parent.project_path /home/florian/Desktop/proteus/ntt_op_3_4/project_1/project_1.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part tul.com.tw:pynq-z2:part0:1.0 [current_project]
set_property ip_repo_paths {
  /home/florian/Desktop/proteus/ntt_op_3_4/ip_repo/AXI_Slave8Ports_new_1.0
  /home/florian/Desktop/proteus/ntt_op_3_4/ip_repo/AXI_Slave8Ports_1.0
  /home/florian/Desktop/proteus/ntt_op_3_4/ip_repo/AXIslave_1.0
} [current_project]
update_ip_catalog
set_property ip_output_repo /home/florian/Desktop/proteus/ntt_op_3_4/project_1/project_1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_mem {
  /home/florian/Desktop/proteus/ntt_op_3_4/Verilog_src/ntt/NTT_DOUT.mem
  /home/florian/Desktop/proteus/ntt_op_3_4/Verilog_src/ntt/NTT_DIN.mem
}
read_verilog -library xil_defaultlib /home/florian/Desktop/proteus/ntt_op_3_4/project_1/project_1.srcs/sources_1/bd/cryptoprocessor/hdl/cryptoprocessor_wrapper.v
add_files /home/florian/Desktop/proteus/ntt_op_3_4/project_1/project_1.srcs/sources_1/bd/cryptoprocessor/cryptoprocessor.bd
set_property used_in_implementation false [get_files -all /home/florian/Desktop/proteus/ntt_op_3_4/project_1/project_1.srcs/sources_1/bd/cryptoprocessor/ip/cryptoprocessor_processing_system7_0_0/cryptoprocessor_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/florian/Desktop/proteus/ntt_op_3_4/project_1/project_1.srcs/sources_1/bd/cryptoprocessor/ip/cryptoprocessor_rst_ps7_0_100M_0/cryptoprocessor_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/florian/Desktop/proteus/ntt_op_3_4/project_1/project_1.srcs/sources_1/bd/cryptoprocessor/ip/cryptoprocessor_rst_ps7_0_100M_0/cryptoprocessor_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all /home/florian/Desktop/proteus/ntt_op_3_4/project_1/project_1.srcs/sources_1/bd/cryptoprocessor/ip/cryptoprocessor_rst_ps7_0_100M_0/cryptoprocessor_rst_ps7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/florian/Desktop/proteus/ntt_op_3_4/project_1/project_1.srcs/sources_1/bd/cryptoprocessor/ip/cryptoprocessor_ComputeCoreWrapper_0_0/cryptoprocessor_ComputeCoreWrapper_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/florian/Desktop/proteus/ntt_op_3_4/project_1/project_1.srcs/sources_1/bd/cryptoprocessor/ip/cryptoprocessor_auto_pc_0/cryptoprocessor_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/florian/Desktop/proteus/ntt_op_3_4/project_1/project_1.srcs/sources_1/bd/cryptoprocessor/cryptoprocessor_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/florian/Desktop/proteus/ntt_op_3_4/project_1/project_1.srcs/constrs_1/new/constraints.xdc
set_property used_in_implementation false [get_files /home/florian/Desktop/proteus/ntt_op_3_4/project_1/project_1.srcs/constrs_1/new/constraints.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top cryptoprocessor_wrapper -part xc7z020clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef cryptoprocessor_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file cryptoprocessor_wrapper_utilization_synth.rpt -pb cryptoprocessor_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
