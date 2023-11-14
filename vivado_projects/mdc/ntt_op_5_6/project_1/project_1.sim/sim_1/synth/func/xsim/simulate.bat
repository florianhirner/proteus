@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Tue Aug 24 22:50:28 +0200 2021
REM SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim tb_lfsr_func_synth -key {Post-Synthesis:sim_1:Functional:tb_lfsr} -tclbatch tb_lfsr.tcl -protoinst "protoinst_files/Top.protoinst" -view C:/Vivado_Projects/SABER_HW/Verilog_src/test_bench/tb_compute_wrapper_new_behav.wcfg -view C:/Vivado_Projects/SABER_HW/Verilog_src/test_bench/tb_kem_dec_cca_behav.wcfg -log simulate.log"
call xsim  tb_lfsr_func_synth -key {Post-Synthesis:sim_1:Functional:tb_lfsr} -tclbatch tb_lfsr.tcl -protoinst "protoinst_files/Top.protoinst" -view C:/Vivado_Projects/SABER_HW/Verilog_src/test_bench/tb_compute_wrapper_new_behav.wcfg -view C:/Vivado_Projects/SABER_HW/Verilog_src/test_bench/tb_kem_dec_cca_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0