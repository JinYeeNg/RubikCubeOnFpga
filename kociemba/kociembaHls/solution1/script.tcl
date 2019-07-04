############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project kociembaHls
set_top solution
add_files coordcube.cpp
add_files cubiecube.cpp
add_files facecube.cpp
add_files prunetable_helpers.cpp
add_files search.cpp
add_files -tb solve.cpp
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./kociembaHls/solution1/directives.tcl"
csim_design -argv {DRLUUBFBRBLURRLRUBLRDDFDLFUFUFFDBRDUBRUFLLFDDBFLUBLRBD} -clean
csynth_design
cosim_design
export_design -flow impl -rtl verilog -format ip_catalog
