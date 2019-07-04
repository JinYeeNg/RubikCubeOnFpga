// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Thu Jul  4 09:32:29 2019
// Host        : jinyeeng-Inspiron-3421 running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/jinyeeng/Downloads/RubikCube-af660b02594911b39652037663f50280ce7ec755/kociemba/kociembaHlx/kociembaHlx.srcs/sources_1/bd/design_1/ip/design_1_solution_0_0/design_1_solution_0_0_stub.v
// Design      : design_1_solution_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "solution,Vivado 2018.2" *)
module design_1_solution_0_0(s_axi_CTRL_BUS_AWADDR, 
  s_axi_CTRL_BUS_AWVALID, s_axi_CTRL_BUS_AWREADY, s_axi_CTRL_BUS_WDATA, 
  s_axi_CTRL_BUS_WSTRB, s_axi_CTRL_BUS_WVALID, s_axi_CTRL_BUS_WREADY, 
  s_axi_CTRL_BUS_BRESP, s_axi_CTRL_BUS_BVALID, s_axi_CTRL_BUS_BREADY, 
  s_axi_CTRL_BUS_ARADDR, s_axi_CTRL_BUS_ARVALID, s_axi_CTRL_BUS_ARREADY, 
  s_axi_CTRL_BUS_RDATA, s_axi_CTRL_BUS_RRESP, s_axi_CTRL_BUS_RVALID, 
  s_axi_CTRL_BUS_RREADY, ap_clk, ap_rst_n, interrupt, m_axi_CTRL_BUS1_AWADDR, 
  m_axi_CTRL_BUS1_AWLEN, m_axi_CTRL_BUS1_AWSIZE, m_axi_CTRL_BUS1_AWBURST, 
  m_axi_CTRL_BUS1_AWLOCK, m_axi_CTRL_BUS1_AWREGION, m_axi_CTRL_BUS1_AWCACHE, 
  m_axi_CTRL_BUS1_AWPROT, m_axi_CTRL_BUS1_AWQOS, m_axi_CTRL_BUS1_AWVALID, 
  m_axi_CTRL_BUS1_AWREADY, m_axi_CTRL_BUS1_WDATA, m_axi_CTRL_BUS1_WSTRB, 
  m_axi_CTRL_BUS1_WLAST, m_axi_CTRL_BUS1_WVALID, m_axi_CTRL_BUS1_WREADY, 
  m_axi_CTRL_BUS1_BRESP, m_axi_CTRL_BUS1_BVALID, m_axi_CTRL_BUS1_BREADY, 
  m_axi_CTRL_BUS1_ARADDR, m_axi_CTRL_BUS1_ARLEN, m_axi_CTRL_BUS1_ARSIZE, 
  m_axi_CTRL_BUS1_ARBURST, m_axi_CTRL_BUS1_ARLOCK, m_axi_CTRL_BUS1_ARREGION, 
  m_axi_CTRL_BUS1_ARCACHE, m_axi_CTRL_BUS1_ARPROT, m_axi_CTRL_BUS1_ARQOS, 
  m_axi_CTRL_BUS1_ARVALID, m_axi_CTRL_BUS1_ARREADY, m_axi_CTRL_BUS1_RDATA, 
  m_axi_CTRL_BUS1_RRESP, m_axi_CTRL_BUS1_RLAST, m_axi_CTRL_BUS1_RVALID, 
  m_axi_CTRL_BUS1_RREADY, m_axi_CTRL_BUS2_AWADDR, m_axi_CTRL_BUS2_AWLEN, 
  m_axi_CTRL_BUS2_AWSIZE, m_axi_CTRL_BUS2_AWBURST, m_axi_CTRL_BUS2_AWLOCK, 
  m_axi_CTRL_BUS2_AWREGION, m_axi_CTRL_BUS2_AWCACHE, m_axi_CTRL_BUS2_AWPROT, 
  m_axi_CTRL_BUS2_AWQOS, m_axi_CTRL_BUS2_AWVALID, m_axi_CTRL_BUS2_AWREADY, 
  m_axi_CTRL_BUS2_WDATA, m_axi_CTRL_BUS2_WSTRB, m_axi_CTRL_BUS2_WLAST, 
  m_axi_CTRL_BUS2_WVALID, m_axi_CTRL_BUS2_WREADY, m_axi_CTRL_BUS2_BRESP, 
  m_axi_CTRL_BUS2_BVALID, m_axi_CTRL_BUS2_BREADY, m_axi_CTRL_BUS2_ARADDR, 
  m_axi_CTRL_BUS2_ARLEN, m_axi_CTRL_BUS2_ARSIZE, m_axi_CTRL_BUS2_ARBURST, 
  m_axi_CTRL_BUS2_ARLOCK, m_axi_CTRL_BUS2_ARREGION, m_axi_CTRL_BUS2_ARCACHE, 
  m_axi_CTRL_BUS2_ARPROT, m_axi_CTRL_BUS2_ARQOS, m_axi_CTRL_BUS2_ARVALID, 
  m_axi_CTRL_BUS2_ARREADY, m_axi_CTRL_BUS2_RDATA, m_axi_CTRL_BUS2_RRESP, 
  m_axi_CTRL_BUS2_RLAST, m_axi_CTRL_BUS2_RVALID, m_axi_CTRL_BUS2_RREADY, 
  m_axi_CTRL_BUS3_AWADDR, m_axi_CTRL_BUS3_AWLEN, m_axi_CTRL_BUS3_AWSIZE, 
  m_axi_CTRL_BUS3_AWBURST, m_axi_CTRL_BUS3_AWLOCK, m_axi_CTRL_BUS3_AWREGION, 
  m_axi_CTRL_BUS3_AWCACHE, m_axi_CTRL_BUS3_AWPROT, m_axi_CTRL_BUS3_AWQOS, 
  m_axi_CTRL_BUS3_AWVALID, m_axi_CTRL_BUS3_AWREADY, m_axi_CTRL_BUS3_WDATA, 
  m_axi_CTRL_BUS3_WSTRB, m_axi_CTRL_BUS3_WLAST, m_axi_CTRL_BUS3_WVALID, 
  m_axi_CTRL_BUS3_WREADY, m_axi_CTRL_BUS3_BRESP, m_axi_CTRL_BUS3_BVALID, 
  m_axi_CTRL_BUS3_BREADY, m_axi_CTRL_BUS3_ARADDR, m_axi_CTRL_BUS3_ARLEN, 
  m_axi_CTRL_BUS3_ARSIZE, m_axi_CTRL_BUS3_ARBURST, m_axi_CTRL_BUS3_ARLOCK, 
  m_axi_CTRL_BUS3_ARREGION, m_axi_CTRL_BUS3_ARCACHE, m_axi_CTRL_BUS3_ARPROT, 
  m_axi_CTRL_BUS3_ARQOS, m_axi_CTRL_BUS3_ARVALID, m_axi_CTRL_BUS3_ARREADY, 
  m_axi_CTRL_BUS3_RDATA, m_axi_CTRL_BUS3_RRESP, m_axi_CTRL_BUS3_RLAST, 
  m_axi_CTRL_BUS3_RVALID, m_axi_CTRL_BUS3_RREADY)
/* synthesis syn_black_box black_box_pad_pin="s_axi_CTRL_BUS_AWADDR[7:0],s_axi_CTRL_BUS_AWVALID,s_axi_CTRL_BUS_AWREADY,s_axi_CTRL_BUS_WDATA[31:0],s_axi_CTRL_BUS_WSTRB[3:0],s_axi_CTRL_BUS_WVALID,s_axi_CTRL_BUS_WREADY,s_axi_CTRL_BUS_BRESP[1:0],s_axi_CTRL_BUS_BVALID,s_axi_CTRL_BUS_BREADY,s_axi_CTRL_BUS_ARADDR[7:0],s_axi_CTRL_BUS_ARVALID,s_axi_CTRL_BUS_ARREADY,s_axi_CTRL_BUS_RDATA[31:0],s_axi_CTRL_BUS_RRESP[1:0],s_axi_CTRL_BUS_RVALID,s_axi_CTRL_BUS_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_CTRL_BUS1_AWADDR[31:0],m_axi_CTRL_BUS1_AWLEN[7:0],m_axi_CTRL_BUS1_AWSIZE[2:0],m_axi_CTRL_BUS1_AWBURST[1:0],m_axi_CTRL_BUS1_AWLOCK[1:0],m_axi_CTRL_BUS1_AWREGION[3:0],m_axi_CTRL_BUS1_AWCACHE[3:0],m_axi_CTRL_BUS1_AWPROT[2:0],m_axi_CTRL_BUS1_AWQOS[3:0],m_axi_CTRL_BUS1_AWVALID,m_axi_CTRL_BUS1_AWREADY,m_axi_CTRL_BUS1_WDATA[31:0],m_axi_CTRL_BUS1_WSTRB[3:0],m_axi_CTRL_BUS1_WLAST,m_axi_CTRL_BUS1_WVALID,m_axi_CTRL_BUS1_WREADY,m_axi_CTRL_BUS1_BRESP[1:0],m_axi_CTRL_BUS1_BVALID,m_axi_CTRL_BUS1_BREADY,m_axi_CTRL_BUS1_ARADDR[31:0],m_axi_CTRL_BUS1_ARLEN[7:0],m_axi_CTRL_BUS1_ARSIZE[2:0],m_axi_CTRL_BUS1_ARBURST[1:0],m_axi_CTRL_BUS1_ARLOCK[1:0],m_axi_CTRL_BUS1_ARREGION[3:0],m_axi_CTRL_BUS1_ARCACHE[3:0],m_axi_CTRL_BUS1_ARPROT[2:0],m_axi_CTRL_BUS1_ARQOS[3:0],m_axi_CTRL_BUS1_ARVALID,m_axi_CTRL_BUS1_ARREADY,m_axi_CTRL_BUS1_RDATA[31:0],m_axi_CTRL_BUS1_RRESP[1:0],m_axi_CTRL_BUS1_RLAST,m_axi_CTRL_BUS1_RVALID,m_axi_CTRL_BUS1_RREADY,m_axi_CTRL_BUS2_AWADDR[31:0],m_axi_CTRL_BUS2_AWLEN[7:0],m_axi_CTRL_BUS2_AWSIZE[2:0],m_axi_CTRL_BUS2_AWBURST[1:0],m_axi_CTRL_BUS2_AWLOCK[1:0],m_axi_CTRL_BUS2_AWREGION[3:0],m_axi_CTRL_BUS2_AWCACHE[3:0],m_axi_CTRL_BUS2_AWPROT[2:0],m_axi_CTRL_BUS2_AWQOS[3:0],m_axi_CTRL_BUS2_AWVALID,m_axi_CTRL_BUS2_AWREADY,m_axi_CTRL_BUS2_WDATA[31:0],m_axi_CTRL_BUS2_WSTRB[3:0],m_axi_CTRL_BUS2_WLAST,m_axi_CTRL_BUS2_WVALID,m_axi_CTRL_BUS2_WREADY,m_axi_CTRL_BUS2_BRESP[1:0],m_axi_CTRL_BUS2_BVALID,m_axi_CTRL_BUS2_BREADY,m_axi_CTRL_BUS2_ARADDR[31:0],m_axi_CTRL_BUS2_ARLEN[7:0],m_axi_CTRL_BUS2_ARSIZE[2:0],m_axi_CTRL_BUS2_ARBURST[1:0],m_axi_CTRL_BUS2_ARLOCK[1:0],m_axi_CTRL_BUS2_ARREGION[3:0],m_axi_CTRL_BUS2_ARCACHE[3:0],m_axi_CTRL_BUS2_ARPROT[2:0],m_axi_CTRL_BUS2_ARQOS[3:0],m_axi_CTRL_BUS2_ARVALID,m_axi_CTRL_BUS2_ARREADY,m_axi_CTRL_BUS2_RDATA[31:0],m_axi_CTRL_BUS2_RRESP[1:0],m_axi_CTRL_BUS2_RLAST,m_axi_CTRL_BUS2_RVALID,m_axi_CTRL_BUS2_RREADY,m_axi_CTRL_BUS3_AWADDR[31:0],m_axi_CTRL_BUS3_AWLEN[7:0],m_axi_CTRL_BUS3_AWSIZE[2:0],m_axi_CTRL_BUS3_AWBURST[1:0],m_axi_CTRL_BUS3_AWLOCK[1:0],m_axi_CTRL_BUS3_AWREGION[3:0],m_axi_CTRL_BUS3_AWCACHE[3:0],m_axi_CTRL_BUS3_AWPROT[2:0],m_axi_CTRL_BUS3_AWQOS[3:0],m_axi_CTRL_BUS3_AWVALID,m_axi_CTRL_BUS3_AWREADY,m_axi_CTRL_BUS3_WDATA[31:0],m_axi_CTRL_BUS3_WSTRB[3:0],m_axi_CTRL_BUS3_WLAST,m_axi_CTRL_BUS3_WVALID,m_axi_CTRL_BUS3_WREADY,m_axi_CTRL_BUS3_BRESP[1:0],m_axi_CTRL_BUS3_BVALID,m_axi_CTRL_BUS3_BREADY,m_axi_CTRL_BUS3_ARADDR[31:0],m_axi_CTRL_BUS3_ARLEN[7:0],m_axi_CTRL_BUS3_ARSIZE[2:0],m_axi_CTRL_BUS3_ARBURST[1:0],m_axi_CTRL_BUS3_ARLOCK[1:0],m_axi_CTRL_BUS3_ARREGION[3:0],m_axi_CTRL_BUS3_ARCACHE[3:0],m_axi_CTRL_BUS3_ARPROT[2:0],m_axi_CTRL_BUS3_ARQOS[3:0],m_axi_CTRL_BUS3_ARVALID,m_axi_CTRL_BUS3_ARREADY,m_axi_CTRL_BUS3_RDATA[31:0],m_axi_CTRL_BUS3_RRESP[1:0],m_axi_CTRL_BUS3_RLAST,m_axi_CTRL_BUS3_RVALID,m_axi_CTRL_BUS3_RREADY" */;
  input [7:0]s_axi_CTRL_BUS_AWADDR;
  input s_axi_CTRL_BUS_AWVALID;
  output s_axi_CTRL_BUS_AWREADY;
  input [31:0]s_axi_CTRL_BUS_WDATA;
  input [3:0]s_axi_CTRL_BUS_WSTRB;
  input s_axi_CTRL_BUS_WVALID;
  output s_axi_CTRL_BUS_WREADY;
  output [1:0]s_axi_CTRL_BUS_BRESP;
  output s_axi_CTRL_BUS_BVALID;
  input s_axi_CTRL_BUS_BREADY;
  input [7:0]s_axi_CTRL_BUS_ARADDR;
  input s_axi_CTRL_BUS_ARVALID;
  output s_axi_CTRL_BUS_ARREADY;
  output [31:0]s_axi_CTRL_BUS_RDATA;
  output [1:0]s_axi_CTRL_BUS_RRESP;
  output s_axi_CTRL_BUS_RVALID;
  input s_axi_CTRL_BUS_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [31:0]m_axi_CTRL_BUS1_AWADDR;
  output [7:0]m_axi_CTRL_BUS1_AWLEN;
  output [2:0]m_axi_CTRL_BUS1_AWSIZE;
  output [1:0]m_axi_CTRL_BUS1_AWBURST;
  output [1:0]m_axi_CTRL_BUS1_AWLOCK;
  output [3:0]m_axi_CTRL_BUS1_AWREGION;
  output [3:0]m_axi_CTRL_BUS1_AWCACHE;
  output [2:0]m_axi_CTRL_BUS1_AWPROT;
  output [3:0]m_axi_CTRL_BUS1_AWQOS;
  output m_axi_CTRL_BUS1_AWVALID;
  input m_axi_CTRL_BUS1_AWREADY;
  output [31:0]m_axi_CTRL_BUS1_WDATA;
  output [3:0]m_axi_CTRL_BUS1_WSTRB;
  output m_axi_CTRL_BUS1_WLAST;
  output m_axi_CTRL_BUS1_WVALID;
  input m_axi_CTRL_BUS1_WREADY;
  input [1:0]m_axi_CTRL_BUS1_BRESP;
  input m_axi_CTRL_BUS1_BVALID;
  output m_axi_CTRL_BUS1_BREADY;
  output [31:0]m_axi_CTRL_BUS1_ARADDR;
  output [7:0]m_axi_CTRL_BUS1_ARLEN;
  output [2:0]m_axi_CTRL_BUS1_ARSIZE;
  output [1:0]m_axi_CTRL_BUS1_ARBURST;
  output [1:0]m_axi_CTRL_BUS1_ARLOCK;
  output [3:0]m_axi_CTRL_BUS1_ARREGION;
  output [3:0]m_axi_CTRL_BUS1_ARCACHE;
  output [2:0]m_axi_CTRL_BUS1_ARPROT;
  output [3:0]m_axi_CTRL_BUS1_ARQOS;
  output m_axi_CTRL_BUS1_ARVALID;
  input m_axi_CTRL_BUS1_ARREADY;
  input [31:0]m_axi_CTRL_BUS1_RDATA;
  input [1:0]m_axi_CTRL_BUS1_RRESP;
  input m_axi_CTRL_BUS1_RLAST;
  input m_axi_CTRL_BUS1_RVALID;
  output m_axi_CTRL_BUS1_RREADY;
  output [31:0]m_axi_CTRL_BUS2_AWADDR;
  output [7:0]m_axi_CTRL_BUS2_AWLEN;
  output [2:0]m_axi_CTRL_BUS2_AWSIZE;
  output [1:0]m_axi_CTRL_BUS2_AWBURST;
  output [1:0]m_axi_CTRL_BUS2_AWLOCK;
  output [3:0]m_axi_CTRL_BUS2_AWREGION;
  output [3:0]m_axi_CTRL_BUS2_AWCACHE;
  output [2:0]m_axi_CTRL_BUS2_AWPROT;
  output [3:0]m_axi_CTRL_BUS2_AWQOS;
  output m_axi_CTRL_BUS2_AWVALID;
  input m_axi_CTRL_BUS2_AWREADY;
  output [31:0]m_axi_CTRL_BUS2_WDATA;
  output [3:0]m_axi_CTRL_BUS2_WSTRB;
  output m_axi_CTRL_BUS2_WLAST;
  output m_axi_CTRL_BUS2_WVALID;
  input m_axi_CTRL_BUS2_WREADY;
  input [1:0]m_axi_CTRL_BUS2_BRESP;
  input m_axi_CTRL_BUS2_BVALID;
  output m_axi_CTRL_BUS2_BREADY;
  output [31:0]m_axi_CTRL_BUS2_ARADDR;
  output [7:0]m_axi_CTRL_BUS2_ARLEN;
  output [2:0]m_axi_CTRL_BUS2_ARSIZE;
  output [1:0]m_axi_CTRL_BUS2_ARBURST;
  output [1:0]m_axi_CTRL_BUS2_ARLOCK;
  output [3:0]m_axi_CTRL_BUS2_ARREGION;
  output [3:0]m_axi_CTRL_BUS2_ARCACHE;
  output [2:0]m_axi_CTRL_BUS2_ARPROT;
  output [3:0]m_axi_CTRL_BUS2_ARQOS;
  output m_axi_CTRL_BUS2_ARVALID;
  input m_axi_CTRL_BUS2_ARREADY;
  input [31:0]m_axi_CTRL_BUS2_RDATA;
  input [1:0]m_axi_CTRL_BUS2_RRESP;
  input m_axi_CTRL_BUS2_RLAST;
  input m_axi_CTRL_BUS2_RVALID;
  output m_axi_CTRL_BUS2_RREADY;
  output [31:0]m_axi_CTRL_BUS3_AWADDR;
  output [7:0]m_axi_CTRL_BUS3_AWLEN;
  output [2:0]m_axi_CTRL_BUS3_AWSIZE;
  output [1:0]m_axi_CTRL_BUS3_AWBURST;
  output [1:0]m_axi_CTRL_BUS3_AWLOCK;
  output [3:0]m_axi_CTRL_BUS3_AWREGION;
  output [3:0]m_axi_CTRL_BUS3_AWCACHE;
  output [2:0]m_axi_CTRL_BUS3_AWPROT;
  output [3:0]m_axi_CTRL_BUS3_AWQOS;
  output m_axi_CTRL_BUS3_AWVALID;
  input m_axi_CTRL_BUS3_AWREADY;
  output [31:0]m_axi_CTRL_BUS3_WDATA;
  output [3:0]m_axi_CTRL_BUS3_WSTRB;
  output m_axi_CTRL_BUS3_WLAST;
  output m_axi_CTRL_BUS3_WVALID;
  input m_axi_CTRL_BUS3_WREADY;
  input [1:0]m_axi_CTRL_BUS3_BRESP;
  input m_axi_CTRL_BUS3_BVALID;
  output m_axi_CTRL_BUS3_BREADY;
  output [31:0]m_axi_CTRL_BUS3_ARADDR;
  output [7:0]m_axi_CTRL_BUS3_ARLEN;
  output [2:0]m_axi_CTRL_BUS3_ARSIZE;
  output [1:0]m_axi_CTRL_BUS3_ARBURST;
  output [1:0]m_axi_CTRL_BUS3_ARLOCK;
  output [3:0]m_axi_CTRL_BUS3_ARREGION;
  output [3:0]m_axi_CTRL_BUS3_ARCACHE;
  output [2:0]m_axi_CTRL_BUS3_ARPROT;
  output [3:0]m_axi_CTRL_BUS3_ARQOS;
  output m_axi_CTRL_BUS3_ARVALID;
  input m_axi_CTRL_BUS3_ARREADY;
  input [31:0]m_axi_CTRL_BUS3_RDATA;
  input [1:0]m_axi_CTRL_BUS3_RRESP;
  input m_axi_CTRL_BUS3_RLAST;
  input m_axi_CTRL_BUS3_RVALID;
  output m_axi_CTRL_BUS3_RREADY;
endmodule
