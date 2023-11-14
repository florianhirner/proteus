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
create_project -in_memory -part xc7vx485tffg1157-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/florian/Desktop/proteus/toolchain/build/proteus_sdf_op_7_8/proteus_sdf_op_1_2.cache/wt [current_project]
set_property parent.project_path /home/florian/Desktop/proteus/toolchain/build/proteus_sdf_op_7_8/proteus_sdf_op_1_2.xpr [current_project]
set_property XPM_LIBRARIES XPM_FIFO [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo /home/florian/Desktop/proteus/toolchain/build/proteus_sdf_op_1_2/proteus_sdf_op_1_2.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog /home/florian/Desktop/proteus/toolchain/hw/parameters.vh
read_verilog -library xil_defaultlib -sv {
  /home/florian/Desktop/proteus/toolchain/hw/common/wlmont/csa_2.sv
  /home/florian/Desktop/proteus/toolchain/hw/common/wlmont/csa_tree.sv
  /home/florian/Desktop/proteus/toolchain/hw/common/wlmont/int_mult_add.sv
  /home/florian/Desktop/proteus/toolchain/hw/common/intmul/intmul.sv
  /home/florian/Desktop/proteus/toolchain/hw/common/wlmont/wlmont.sv
  /home/florian/Desktop/proteus/toolchain/hw/common/wlmont/wlmont_sub.sv
}
read_verilog -library xil_defaultlib {
  /home/florian/Desktop/proteus/toolchain/hw/common/bitreverse/bitreverse.v
  /home/florian/Desktop/proteus/toolchain/hw/common/btf/btf_dif_gs.v
  /home/florian/Desktop/proteus/toolchain/hw/common/btf/btf_dit_ct.v
  /home/florian/Desktop/proteus/toolchain/hw/common/mod/modadd.v
  /home/florian/Desktop/proteus/toolchain/hw/common/mod/moddiv_by_2.v
  /home/florian/Desktop/proteus/toolchain/hw/common/mod/modmul.v
  /home/florian/Desktop/proteus/toolchain/hw/common/mod/modred_64.v
  /home/florian/Desktop/proteus/toolchain/hw/common/mod/modsub.v
  /home/florian/Desktop/proteus/toolchain/hw/sdf/op_7_8/ntt_sdf_wrapper.v
  /home/florian/Desktop/proteus/toolchain/hw/sdf/op_7_8/sdf_stage.v
  /home/florian/Desktop/proteus/toolchain/hw/common/shift/shiftreg.v
  /home/florian/Desktop/proteus/toolchain/hw/constant/tw_roms.v
  /home/florian/Desktop/proteus/toolchain/hw/sdf/op_7_8/tw_roms_wrapper.v
  /home/florian/Desktop/proteus/toolchain/hw/sdf/op_7_8/ntt_memory_wrapper.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/florian/Desktop/proteus/toolchain/hw/const.xdc
set_property used_in_implementation false [get_files /home/florian/Desktop/proteus/toolchain/hw/const.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top ntt_memory_wrapper -part xc7vx485tffg1157-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef ntt_memory_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file ntt_memory_wrapper_utilization_synth.rpt -pb ntt_memory_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]