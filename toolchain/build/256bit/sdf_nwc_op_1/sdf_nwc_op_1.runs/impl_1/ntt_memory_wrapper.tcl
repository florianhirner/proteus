# 
# Report generation script generated by Vivado
# 

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
proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {Common 17-41} -limit 10000000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param chipscope.maxJobs 2
  create_project -in_memory -part xc7vx485tffg1157-1
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir /home/florian/Desktop/proteus/toolchain/build/256bit/sdf_nwc_op_1/sdf_nwc_op_1.cache/wt [current_project]
  set_property parent.project_path /home/florian/Desktop/proteus/toolchain/build/256bit/sdf_nwc_op_1/sdf_nwc_op_1.xpr [current_project]
  set_property ip_output_repo /home/florian/Desktop/proteus/toolchain/build/256bit/sdf_nwc_op_1/sdf_nwc_op_1.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES XPM_FIFO [current_project]
  add_files -quiet /home/florian/Desktop/proteus/toolchain/build/256bit/sdf_nwc_op_1/sdf_nwc_op_1.runs/synth_1/ntt_memory_wrapper.dcp
  read_xdc /home/florian/Desktop/proteus/toolchain/hw/const.xdc
  link_design -top ntt_memory_wrapper -part xc7vx485tffg1157-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force ntt_memory_wrapper_opt.dcp
  create_report "impl_1_opt_report_drc_0" "report_drc -file ntt_memory_wrapper_drc_opted.rpt -pb ntt_memory_wrapper_drc_opted.pb -rpx ntt_memory_wrapper_drc_opted.rpx"
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  if { [llength [get_debug_cores -quiet] ] > 0 }  { 
    implement_debug_core 
  } 
  place_design 
  write_checkpoint -force ntt_memory_wrapper_placed.dcp
  create_report "impl_1_place_report_io_0" "report_io -file ntt_memory_wrapper_io_placed.rpt"
  create_report "impl_1_place_report_utilization_0" "report_utilization -file ntt_memory_wrapper_utilization_placed.rpt -pb ntt_memory_wrapper_utilization_placed.pb"
  create_report "impl_1_place_report_control_sets_0" "report_control_sets -verbose -file ntt_memory_wrapper_control_sets_placed.rpt"
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force ntt_memory_wrapper_routed.dcp
  create_report "impl_1_route_report_drc_0" "report_drc -file ntt_memory_wrapper_drc_routed.rpt -pb ntt_memory_wrapper_drc_routed.pb -rpx ntt_memory_wrapper_drc_routed.rpx"
  create_report "impl_1_route_report_methodology_0" "report_methodology -file ntt_memory_wrapper_methodology_drc_routed.rpt -pb ntt_memory_wrapper_methodology_drc_routed.pb -rpx ntt_memory_wrapper_methodology_drc_routed.rpx"
  create_report "impl_1_route_report_power_0" "report_power -file ntt_memory_wrapper_power_routed.rpt -pb ntt_memory_wrapper_power_summary_routed.pb -rpx ntt_memory_wrapper_power_routed.rpx"
  create_report "impl_1_route_report_route_status_0" "report_route_status -file ntt_memory_wrapper_route_status.rpt -pb ntt_memory_wrapper_route_status.pb"
  create_report "impl_1_route_report_timing_summary_0" "report_timing_summary -max_paths 10 -file ntt_memory_wrapper_timing_summary_routed.rpt -pb ntt_memory_wrapper_timing_summary_routed.pb -rpx ntt_memory_wrapper_timing_summary_routed.rpx -warn_on_violation "
  create_report "impl_1_route_report_incremental_reuse_0" "report_incremental_reuse -file ntt_memory_wrapper_incremental_reuse_routed.rpt"
  create_report "impl_1_route_report_clock_utilization_0" "report_clock_utilization -file ntt_memory_wrapper_clock_utilization_routed.rpt"
  create_report "impl_1_route_report_bus_skew_0" "report_bus_skew -warn_on_violation -file ntt_memory_wrapper_bus_skew_routed.rpt -pb ntt_memory_wrapper_bus_skew_routed.pb -rpx ntt_memory_wrapper_bus_skew_routed.rpx"
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force ntt_memory_wrapper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

