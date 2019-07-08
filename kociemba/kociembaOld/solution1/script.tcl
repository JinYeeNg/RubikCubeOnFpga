############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project kociemba
set_top solution
add_files kociemba/search.h
add_files kociemba/search.c
add_files kociemba/facelet.h
add_files kociemba/facecube.h
add_files kociemba/facecube.c
add_files kociemba/edge.h
add_files kociemba/cubiecube.h
add_files kociemba/cubiecube.c
add_files kociemba/corner.h
add_files kociemba/coordcube.h
add_files kociemba/color.h
add_files -tb kociemba/solve.c -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 12 -name default
#source "./kociemba/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -flow impl -rtl verilog -format ip_catalog
