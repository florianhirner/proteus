#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Mon Feb 06 20:00:47 CET 2023
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 37b0fe42c6c547ceaaac991d375c6a73 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot ntt_tb_behav xil_defaultlib.ntt_tb xil_defaultlib.glbl -log elaborate.log"
xelab -wto 37b0fe42c6c547ceaaac991d375c6a73 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot ntt_tb_behav xil_defaultlib.ntt_tb xil_defaultlib.glbl -log elaborate.log

