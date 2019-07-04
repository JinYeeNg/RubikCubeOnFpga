############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Rubik_Cube_Layer_All
set_top solveCube
add_files Rubik_Cube_Layer_All/layerAll.h
add_files Rubik_Cube_Layer_All/layerAll.cpp
add_files -tb Rubik_Cube_Layer_All/layerAll_tb.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 12 -name default
source "./Rubik_Cube_Layer_All/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -flow impl -rtl verilog -format ip_catalog
