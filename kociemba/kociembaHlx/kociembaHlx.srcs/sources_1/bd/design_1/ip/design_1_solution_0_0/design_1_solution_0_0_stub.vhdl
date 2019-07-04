-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Thu Jul  4 09:32:30 2019
-- Host        : jinyeeng-Inspiron-3421 running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/jinyeeng/Downloads/RubikCube-af660b02594911b39652037663f50280ce7ec755/kociemba/kociembaHlx/kociembaHlx.srcs/sources_1/bd/design_1/ip/design_1_solution_0_0/design_1_solution_0_0_stub.vhdl
-- Design      : design_1_solution_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_solution_0_0 is
  Port ( 
    s_axi_CTRL_BUS_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_CTRL_BUS_AWVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_AWREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_WVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_WREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BUS_BVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_BREADY : in STD_LOGIC;
    s_axi_CTRL_BUS_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_CTRL_BUS_ARVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_ARREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BUS_RVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_CTRL_BUS1_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_CTRL_BUS1_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_CTRL_BUS1_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_CTRL_BUS1_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_CTRL_BUS1_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_CTRL_BUS1_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_CTRL_BUS1_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_CTRL_BUS1_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_CTRL_BUS1_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_CTRL_BUS1_AWVALID : out STD_LOGIC;
    m_axi_CTRL_BUS1_AWREADY : in STD_LOGIC;
    m_axi_CTRL_BUS1_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_CTRL_BUS1_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_CTRL_BUS1_WLAST : out STD_LOGIC;
    m_axi_CTRL_BUS1_WVALID : out STD_LOGIC;
    m_axi_CTRL_BUS1_WREADY : in STD_LOGIC;
    m_axi_CTRL_BUS1_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_CTRL_BUS1_BVALID : in STD_LOGIC;
    m_axi_CTRL_BUS1_BREADY : out STD_LOGIC;
    m_axi_CTRL_BUS1_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_CTRL_BUS1_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_CTRL_BUS1_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_CTRL_BUS1_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_CTRL_BUS1_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_CTRL_BUS1_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_CTRL_BUS1_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_CTRL_BUS1_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_CTRL_BUS1_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_CTRL_BUS1_ARVALID : out STD_LOGIC;
    m_axi_CTRL_BUS1_ARREADY : in STD_LOGIC;
    m_axi_CTRL_BUS1_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_CTRL_BUS1_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_CTRL_BUS1_RLAST : in STD_LOGIC;
    m_axi_CTRL_BUS1_RVALID : in STD_LOGIC;
    m_axi_CTRL_BUS1_RREADY : out STD_LOGIC;
    m_axi_CTRL_BUS2_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_CTRL_BUS2_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_CTRL_BUS2_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_CTRL_BUS2_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_CTRL_BUS2_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_CTRL_BUS2_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_CTRL_BUS2_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_CTRL_BUS2_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_CTRL_BUS2_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_CTRL_BUS2_AWVALID : out STD_LOGIC;
    m_axi_CTRL_BUS2_AWREADY : in STD_LOGIC;
    m_axi_CTRL_BUS2_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_CTRL_BUS2_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_CTRL_BUS2_WLAST : out STD_LOGIC;
    m_axi_CTRL_BUS2_WVALID : out STD_LOGIC;
    m_axi_CTRL_BUS2_WREADY : in STD_LOGIC;
    m_axi_CTRL_BUS2_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_CTRL_BUS2_BVALID : in STD_LOGIC;
    m_axi_CTRL_BUS2_BREADY : out STD_LOGIC;
    m_axi_CTRL_BUS2_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_CTRL_BUS2_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_CTRL_BUS2_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_CTRL_BUS2_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_CTRL_BUS2_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_CTRL_BUS2_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_CTRL_BUS2_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_CTRL_BUS2_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_CTRL_BUS2_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_CTRL_BUS2_ARVALID : out STD_LOGIC;
    m_axi_CTRL_BUS2_ARREADY : in STD_LOGIC;
    m_axi_CTRL_BUS2_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_CTRL_BUS2_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_CTRL_BUS2_RLAST : in STD_LOGIC;
    m_axi_CTRL_BUS2_RVALID : in STD_LOGIC;
    m_axi_CTRL_BUS2_RREADY : out STD_LOGIC;
    m_axi_CTRL_BUS3_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_CTRL_BUS3_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_CTRL_BUS3_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_CTRL_BUS3_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_CTRL_BUS3_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_CTRL_BUS3_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_CTRL_BUS3_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_CTRL_BUS3_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_CTRL_BUS3_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_CTRL_BUS3_AWVALID : out STD_LOGIC;
    m_axi_CTRL_BUS3_AWREADY : in STD_LOGIC;
    m_axi_CTRL_BUS3_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_CTRL_BUS3_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_CTRL_BUS3_WLAST : out STD_LOGIC;
    m_axi_CTRL_BUS3_WVALID : out STD_LOGIC;
    m_axi_CTRL_BUS3_WREADY : in STD_LOGIC;
    m_axi_CTRL_BUS3_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_CTRL_BUS3_BVALID : in STD_LOGIC;
    m_axi_CTRL_BUS3_BREADY : out STD_LOGIC;
    m_axi_CTRL_BUS3_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_CTRL_BUS3_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_CTRL_BUS3_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_CTRL_BUS3_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_CTRL_BUS3_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_CTRL_BUS3_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_CTRL_BUS3_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_CTRL_BUS3_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_CTRL_BUS3_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_CTRL_BUS3_ARVALID : out STD_LOGIC;
    m_axi_CTRL_BUS3_ARREADY : in STD_LOGIC;
    m_axi_CTRL_BUS3_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_CTRL_BUS3_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_CTRL_BUS3_RLAST : in STD_LOGIC;
    m_axi_CTRL_BUS3_RVALID : in STD_LOGIC;
    m_axi_CTRL_BUS3_RREADY : out STD_LOGIC
  );

end design_1_solution_0_0;

architecture stub of design_1_solution_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_CTRL_BUS_AWADDR[7:0],s_axi_CTRL_BUS_AWVALID,s_axi_CTRL_BUS_AWREADY,s_axi_CTRL_BUS_WDATA[31:0],s_axi_CTRL_BUS_WSTRB[3:0],s_axi_CTRL_BUS_WVALID,s_axi_CTRL_BUS_WREADY,s_axi_CTRL_BUS_BRESP[1:0],s_axi_CTRL_BUS_BVALID,s_axi_CTRL_BUS_BREADY,s_axi_CTRL_BUS_ARADDR[7:0],s_axi_CTRL_BUS_ARVALID,s_axi_CTRL_BUS_ARREADY,s_axi_CTRL_BUS_RDATA[31:0],s_axi_CTRL_BUS_RRESP[1:0],s_axi_CTRL_BUS_RVALID,s_axi_CTRL_BUS_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_CTRL_BUS1_AWADDR[31:0],m_axi_CTRL_BUS1_AWLEN[7:0],m_axi_CTRL_BUS1_AWSIZE[2:0],m_axi_CTRL_BUS1_AWBURST[1:0],m_axi_CTRL_BUS1_AWLOCK[1:0],m_axi_CTRL_BUS1_AWREGION[3:0],m_axi_CTRL_BUS1_AWCACHE[3:0],m_axi_CTRL_BUS1_AWPROT[2:0],m_axi_CTRL_BUS1_AWQOS[3:0],m_axi_CTRL_BUS1_AWVALID,m_axi_CTRL_BUS1_AWREADY,m_axi_CTRL_BUS1_WDATA[31:0],m_axi_CTRL_BUS1_WSTRB[3:0],m_axi_CTRL_BUS1_WLAST,m_axi_CTRL_BUS1_WVALID,m_axi_CTRL_BUS1_WREADY,m_axi_CTRL_BUS1_BRESP[1:0],m_axi_CTRL_BUS1_BVALID,m_axi_CTRL_BUS1_BREADY,m_axi_CTRL_BUS1_ARADDR[31:0],m_axi_CTRL_BUS1_ARLEN[7:0],m_axi_CTRL_BUS1_ARSIZE[2:0],m_axi_CTRL_BUS1_ARBURST[1:0],m_axi_CTRL_BUS1_ARLOCK[1:0],m_axi_CTRL_BUS1_ARREGION[3:0],m_axi_CTRL_BUS1_ARCACHE[3:0],m_axi_CTRL_BUS1_ARPROT[2:0],m_axi_CTRL_BUS1_ARQOS[3:0],m_axi_CTRL_BUS1_ARVALID,m_axi_CTRL_BUS1_ARREADY,m_axi_CTRL_BUS1_RDATA[31:0],m_axi_CTRL_BUS1_RRESP[1:0],m_axi_CTRL_BUS1_RLAST,m_axi_CTRL_BUS1_RVALID,m_axi_CTRL_BUS1_RREADY,m_axi_CTRL_BUS2_AWADDR[31:0],m_axi_CTRL_BUS2_AWLEN[7:0],m_axi_CTRL_BUS2_AWSIZE[2:0],m_axi_CTRL_BUS2_AWBURST[1:0],m_axi_CTRL_BUS2_AWLOCK[1:0],m_axi_CTRL_BUS2_AWREGION[3:0],m_axi_CTRL_BUS2_AWCACHE[3:0],m_axi_CTRL_BUS2_AWPROT[2:0],m_axi_CTRL_BUS2_AWQOS[3:0],m_axi_CTRL_BUS2_AWVALID,m_axi_CTRL_BUS2_AWREADY,m_axi_CTRL_BUS2_WDATA[31:0],m_axi_CTRL_BUS2_WSTRB[3:0],m_axi_CTRL_BUS2_WLAST,m_axi_CTRL_BUS2_WVALID,m_axi_CTRL_BUS2_WREADY,m_axi_CTRL_BUS2_BRESP[1:0],m_axi_CTRL_BUS2_BVALID,m_axi_CTRL_BUS2_BREADY,m_axi_CTRL_BUS2_ARADDR[31:0],m_axi_CTRL_BUS2_ARLEN[7:0],m_axi_CTRL_BUS2_ARSIZE[2:0],m_axi_CTRL_BUS2_ARBURST[1:0],m_axi_CTRL_BUS2_ARLOCK[1:0],m_axi_CTRL_BUS2_ARREGION[3:0],m_axi_CTRL_BUS2_ARCACHE[3:0],m_axi_CTRL_BUS2_ARPROT[2:0],m_axi_CTRL_BUS2_ARQOS[3:0],m_axi_CTRL_BUS2_ARVALID,m_axi_CTRL_BUS2_ARREADY,m_axi_CTRL_BUS2_RDATA[31:0],m_axi_CTRL_BUS2_RRESP[1:0],m_axi_CTRL_BUS2_RLAST,m_axi_CTRL_BUS2_RVALID,m_axi_CTRL_BUS2_RREADY,m_axi_CTRL_BUS3_AWADDR[31:0],m_axi_CTRL_BUS3_AWLEN[7:0],m_axi_CTRL_BUS3_AWSIZE[2:0],m_axi_CTRL_BUS3_AWBURST[1:0],m_axi_CTRL_BUS3_AWLOCK[1:0],m_axi_CTRL_BUS3_AWREGION[3:0],m_axi_CTRL_BUS3_AWCACHE[3:0],m_axi_CTRL_BUS3_AWPROT[2:0],m_axi_CTRL_BUS3_AWQOS[3:0],m_axi_CTRL_BUS3_AWVALID,m_axi_CTRL_BUS3_AWREADY,m_axi_CTRL_BUS3_WDATA[31:0],m_axi_CTRL_BUS3_WSTRB[3:0],m_axi_CTRL_BUS3_WLAST,m_axi_CTRL_BUS3_WVALID,m_axi_CTRL_BUS3_WREADY,m_axi_CTRL_BUS3_BRESP[1:0],m_axi_CTRL_BUS3_BVALID,m_axi_CTRL_BUS3_BREADY,m_axi_CTRL_BUS3_ARADDR[31:0],m_axi_CTRL_BUS3_ARLEN[7:0],m_axi_CTRL_BUS3_ARSIZE[2:0],m_axi_CTRL_BUS3_ARBURST[1:0],m_axi_CTRL_BUS3_ARLOCK[1:0],m_axi_CTRL_BUS3_ARREGION[3:0],m_axi_CTRL_BUS3_ARCACHE[3:0],m_axi_CTRL_BUS3_ARPROT[2:0],m_axi_CTRL_BUS3_ARQOS[3:0],m_axi_CTRL_BUS3_ARVALID,m_axi_CTRL_BUS3_ARREADY,m_axi_CTRL_BUS3_RDATA[31:0],m_axi_CTRL_BUS3_RRESP[1:0],m_axi_CTRL_BUS3_RLAST,m_axi_CTRL_BUS3_RVALID,m_axi_CTRL_BUS3_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "solution,Vivado 2018.2";
begin
end;
