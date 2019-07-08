// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Mar 10 00:43:29 2019
// Host        : NGJINYEE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/jinyee/FYP/RubikCube/190309Kociemba/kociemba/kociemba_hlx/kociemba_hlx.srcs/sources_1/bd/kociemba/ip/kociemba_xlconstant_1_0/kociemba_xlconstant_1_0_stub.v
// Design      : kociemba_xlconstant_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlconstant_v1_1_5_xlconstant,Vivado 2018.2" *)
module kociemba_xlconstant_1_0(dout)
/* synthesis syn_black_box black_box_pad_pin="dout[3:0]" */;
  output [3:0]dout;
endmodule
