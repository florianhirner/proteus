#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Fri Nov 03 11:21:24 CET 2023
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xsim ntt_tb_behav -key {Behavioral:sim_1:Functional:ntt_tb} -tclbatch ntt_tb.tcl -view /home/fhirner/Desktop/proteus/vivado_projects/sdf/ntt_op_5_6/project_1/tb_behav.wcfg -log simulate.log"
xsim ntt_tb_behav -key {Behavioral:sim_1:Functional:ntt_tb} -tclbatch ntt_tb.tcl -view /home/fhirner/Desktop/proteus/vivado_projects/sdf/ntt_op_5_6/project_1/tb_behav.wcfg -log simulate.log

