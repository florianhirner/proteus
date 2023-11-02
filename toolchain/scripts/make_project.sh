#! /bin/bash

## source xilinx vivado
source scripts/source.sh

## 
rm -rf hw/top
mkdir hw/top

## link top module files
#ln -r -s hw/sdf/op_1_2/* hw/top/
#ln -r -s hw/sdf/op_3_4/* hw/top/
#ln -r -s hw/sdf/op_5_6/* hw/top/
#ln -r -s hw/sdf/op_7_8/* hw/top/
#ln -r -s hw/sdf/nwc_op_1/* hw/top/
#ln -r -s hw/sdf/nwc_op_2_3/* hw/top/

## build directory 
# rm -rf build
# mkdir build
cd build 

## vivado 
# vivado -source ../scripts/proteus.tcl
vivado -source ../scripts/proteus.tcl

