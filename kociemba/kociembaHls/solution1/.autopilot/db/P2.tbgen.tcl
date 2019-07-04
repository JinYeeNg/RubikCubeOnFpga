set moduleName P2
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {P2}
set C_modelType { int 64 }
set C_modelArgList {
	{ P3Buffer_0_parity int 1 regular {array 1000 { 2 3 } 1 1 }  }
	{ P3Buffer_0_URFtoDLF int 16 regular {array 1000 { 2 3 } 1 1 }  }
	{ P3Buffer_0_FRtoBR int 16 regular {array 1000 { 2 3 } 1 1 }  }
	{ P3Buffer_0_URtoDF int 16 regular {array 1000 { 2 3 } 1 1 }  }
	{ P3Buffer_0_n int 8 regular {array 1000 { 2 3 } 1 1 }  }
	{ P3Buffer_0_i int 8 regular {array 31000 { 2 2 } 1 1 }  }
	{ P3Start_read int 32 regular  }
	{ P3End_read int 32 regular  }
	{ depthPhase1 int 8 regular  }
	{ depthPhase2 int 8 regular  }
	{ FRtoBR_Move2 int 16 regular {axi_master 0}  }
	{ FRtoBR_Move2_offset int 31 regular  }
	{ URFtoDLF_Move2 int 16 regular {axi_master 0}  }
	{ URFtoDLF_Move2_offset int 31 regular  }
	{ URtoDF_Move2 int 16 regular {axi_master 0}  }
	{ URtoDF_Move2_offset int 31 regular  }
	{ Slice_URFtoDLF_Parity_Prun2_offset int 31 regular  }
	{ Slice_URtoDF_Parity_Prun2_offset int 31 regular  }
	{ search_sol_depthPhas int 8 regular {pointer 1} {global 1}  }
	{ search_sol_i int 8 regular {array 31 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "P3Buffer_0_parity", "interface" : "memory", "bitwidth" : 1, "direction" : "READWRITE"} , 
 	{ "Name" : "P3Buffer_0_URFtoDLF", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "P3Buffer_0_FRtoBR", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "P3Buffer_0_URtoDF", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "P3Buffer_0_n", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "P3Buffer_0_i", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "P3Start_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P3End_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "depthPhase1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "depthPhase2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "FRtoBR_Move2", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FRtoBR_Move2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "URFtoDLF_Move2", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "URFtoDLF_Move2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "URtoDF_Move2", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "URtoDF_Move2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "Slice_URFtoDLF_Parity_Prun2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "Slice_URtoDF_Parity_Prun2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "search_sol_depthPhas", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "search_sol.depthPhase1","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "search_sol_i", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "search_sol.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 0,"up" : 30,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 193
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ P3Buffer_0_parity_address0 sc_out sc_lv 10 signal 0 } 
	{ P3Buffer_0_parity_ce0 sc_out sc_logic 1 signal 0 } 
	{ P3Buffer_0_parity_we0 sc_out sc_logic 1 signal 0 } 
	{ P3Buffer_0_parity_d0 sc_out sc_lv 1 signal 0 } 
	{ P3Buffer_0_parity_q0 sc_in sc_lv 1 signal 0 } 
	{ P3Buffer_0_URFtoDLF_address0 sc_out sc_lv 10 signal 1 } 
	{ P3Buffer_0_URFtoDLF_ce0 sc_out sc_logic 1 signal 1 } 
	{ P3Buffer_0_URFtoDLF_we0 sc_out sc_logic 1 signal 1 } 
	{ P3Buffer_0_URFtoDLF_d0 sc_out sc_lv 16 signal 1 } 
	{ P3Buffer_0_URFtoDLF_q0 sc_in sc_lv 16 signal 1 } 
	{ P3Buffer_0_FRtoBR_address0 sc_out sc_lv 10 signal 2 } 
	{ P3Buffer_0_FRtoBR_ce0 sc_out sc_logic 1 signal 2 } 
	{ P3Buffer_0_FRtoBR_we0 sc_out sc_logic 1 signal 2 } 
	{ P3Buffer_0_FRtoBR_d0 sc_out sc_lv 16 signal 2 } 
	{ P3Buffer_0_FRtoBR_q0 sc_in sc_lv 16 signal 2 } 
	{ P3Buffer_0_URtoDF_address0 sc_out sc_lv 10 signal 3 } 
	{ P3Buffer_0_URtoDF_ce0 sc_out sc_logic 1 signal 3 } 
	{ P3Buffer_0_URtoDF_we0 sc_out sc_logic 1 signal 3 } 
	{ P3Buffer_0_URtoDF_d0 sc_out sc_lv 16 signal 3 } 
	{ P3Buffer_0_URtoDF_q0 sc_in sc_lv 16 signal 3 } 
	{ P3Buffer_0_n_address0 sc_out sc_lv 10 signal 4 } 
	{ P3Buffer_0_n_ce0 sc_out sc_logic 1 signal 4 } 
	{ P3Buffer_0_n_we0 sc_out sc_logic 1 signal 4 } 
	{ P3Buffer_0_n_d0 sc_out sc_lv 8 signal 4 } 
	{ P3Buffer_0_n_q0 sc_in sc_lv 8 signal 4 } 
	{ P3Buffer_0_i_address0 sc_out sc_lv 15 signal 5 } 
	{ P3Buffer_0_i_ce0 sc_out sc_logic 1 signal 5 } 
	{ P3Buffer_0_i_we0 sc_out sc_logic 1 signal 5 } 
	{ P3Buffer_0_i_d0 sc_out sc_lv 8 signal 5 } 
	{ P3Buffer_0_i_q0 sc_in sc_lv 8 signal 5 } 
	{ P3Buffer_0_i_address1 sc_out sc_lv 15 signal 5 } 
	{ P3Buffer_0_i_ce1 sc_out sc_logic 1 signal 5 } 
	{ P3Buffer_0_i_we1 sc_out sc_logic 1 signal 5 } 
	{ P3Buffer_0_i_d1 sc_out sc_lv 8 signal 5 } 
	{ P3Buffer_0_i_q1 sc_in sc_lv 8 signal 5 } 
	{ P3Start_read sc_in sc_lv 32 signal 6 } 
	{ P3End_read sc_in sc_lv 32 signal 7 } 
	{ depthPhase1 sc_in sc_lv 8 signal 8 } 
	{ depthPhase2 sc_in sc_lv 8 signal 9 } 
	{ m_axi_FRtoBR_Move2_AWVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_FRtoBR_Move2_AWREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_FRtoBR_Move2_AWADDR sc_out sc_lv 32 signal 10 } 
	{ m_axi_FRtoBR_Move2_AWID sc_out sc_lv 1 signal 10 } 
	{ m_axi_FRtoBR_Move2_AWLEN sc_out sc_lv 32 signal 10 } 
	{ m_axi_FRtoBR_Move2_AWSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_FRtoBR_Move2_AWBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_FRtoBR_Move2_AWLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_FRtoBR_Move2_AWCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_FRtoBR_Move2_AWPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_FRtoBR_Move2_AWQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_FRtoBR_Move2_AWREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_FRtoBR_Move2_AWUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_FRtoBR_Move2_WVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_FRtoBR_Move2_WREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_FRtoBR_Move2_WDATA sc_out sc_lv 16 signal 10 } 
	{ m_axi_FRtoBR_Move2_WSTRB sc_out sc_lv 2 signal 10 } 
	{ m_axi_FRtoBR_Move2_WLAST sc_out sc_logic 1 signal 10 } 
	{ m_axi_FRtoBR_Move2_WID sc_out sc_lv 1 signal 10 } 
	{ m_axi_FRtoBR_Move2_WUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_FRtoBR_Move2_ARVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_FRtoBR_Move2_ARREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_FRtoBR_Move2_ARADDR sc_out sc_lv 32 signal 10 } 
	{ m_axi_FRtoBR_Move2_ARID sc_out sc_lv 1 signal 10 } 
	{ m_axi_FRtoBR_Move2_ARLEN sc_out sc_lv 32 signal 10 } 
	{ m_axi_FRtoBR_Move2_ARSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_FRtoBR_Move2_ARBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_FRtoBR_Move2_ARLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_FRtoBR_Move2_ARCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_FRtoBR_Move2_ARPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_FRtoBR_Move2_ARQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_FRtoBR_Move2_ARREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_FRtoBR_Move2_ARUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_FRtoBR_Move2_RVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_FRtoBR_Move2_RREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_FRtoBR_Move2_RDATA sc_in sc_lv 16 signal 10 } 
	{ m_axi_FRtoBR_Move2_RLAST sc_in sc_logic 1 signal 10 } 
	{ m_axi_FRtoBR_Move2_RID sc_in sc_lv 1 signal 10 } 
	{ m_axi_FRtoBR_Move2_RUSER sc_in sc_lv 1 signal 10 } 
	{ m_axi_FRtoBR_Move2_RRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_FRtoBR_Move2_BVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_FRtoBR_Move2_BREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_FRtoBR_Move2_BRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_FRtoBR_Move2_BID sc_in sc_lv 1 signal 10 } 
	{ m_axi_FRtoBR_Move2_BUSER sc_in sc_lv 1 signal 10 } 
	{ FRtoBR_Move2_offset sc_in sc_lv 31 signal 11 } 
	{ m_axi_URFtoDLF_Move2_AWVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_URFtoDLF_Move2_AWREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_URFtoDLF_Move2_AWADDR sc_out sc_lv 32 signal 12 } 
	{ m_axi_URFtoDLF_Move2_AWID sc_out sc_lv 1 signal 12 } 
	{ m_axi_URFtoDLF_Move2_AWLEN sc_out sc_lv 32 signal 12 } 
	{ m_axi_URFtoDLF_Move2_AWSIZE sc_out sc_lv 3 signal 12 } 
	{ m_axi_URFtoDLF_Move2_AWBURST sc_out sc_lv 2 signal 12 } 
	{ m_axi_URFtoDLF_Move2_AWLOCK sc_out sc_lv 2 signal 12 } 
	{ m_axi_URFtoDLF_Move2_AWCACHE sc_out sc_lv 4 signal 12 } 
	{ m_axi_URFtoDLF_Move2_AWPROT sc_out sc_lv 3 signal 12 } 
	{ m_axi_URFtoDLF_Move2_AWQOS sc_out sc_lv 4 signal 12 } 
	{ m_axi_URFtoDLF_Move2_AWREGION sc_out sc_lv 4 signal 12 } 
	{ m_axi_URFtoDLF_Move2_AWUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_URFtoDLF_Move2_WVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_URFtoDLF_Move2_WREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_URFtoDLF_Move2_WDATA sc_out sc_lv 16 signal 12 } 
	{ m_axi_URFtoDLF_Move2_WSTRB sc_out sc_lv 2 signal 12 } 
	{ m_axi_URFtoDLF_Move2_WLAST sc_out sc_logic 1 signal 12 } 
	{ m_axi_URFtoDLF_Move2_WID sc_out sc_lv 1 signal 12 } 
	{ m_axi_URFtoDLF_Move2_WUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_URFtoDLF_Move2_ARVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_URFtoDLF_Move2_ARREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_URFtoDLF_Move2_ARADDR sc_out sc_lv 32 signal 12 } 
	{ m_axi_URFtoDLF_Move2_ARID sc_out sc_lv 1 signal 12 } 
	{ m_axi_URFtoDLF_Move2_ARLEN sc_out sc_lv 32 signal 12 } 
	{ m_axi_URFtoDLF_Move2_ARSIZE sc_out sc_lv 3 signal 12 } 
	{ m_axi_URFtoDLF_Move2_ARBURST sc_out sc_lv 2 signal 12 } 
	{ m_axi_URFtoDLF_Move2_ARLOCK sc_out sc_lv 2 signal 12 } 
	{ m_axi_URFtoDLF_Move2_ARCACHE sc_out sc_lv 4 signal 12 } 
	{ m_axi_URFtoDLF_Move2_ARPROT sc_out sc_lv 3 signal 12 } 
	{ m_axi_URFtoDLF_Move2_ARQOS sc_out sc_lv 4 signal 12 } 
	{ m_axi_URFtoDLF_Move2_ARREGION sc_out sc_lv 4 signal 12 } 
	{ m_axi_URFtoDLF_Move2_ARUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_URFtoDLF_Move2_RVALID sc_in sc_logic 1 signal 12 } 
	{ m_axi_URFtoDLF_Move2_RREADY sc_out sc_logic 1 signal 12 } 
	{ m_axi_URFtoDLF_Move2_RDATA sc_in sc_lv 16 signal 12 } 
	{ m_axi_URFtoDLF_Move2_RLAST sc_in sc_logic 1 signal 12 } 
	{ m_axi_URFtoDLF_Move2_RID sc_in sc_lv 1 signal 12 } 
	{ m_axi_URFtoDLF_Move2_RUSER sc_in sc_lv 1 signal 12 } 
	{ m_axi_URFtoDLF_Move2_RRESP sc_in sc_lv 2 signal 12 } 
	{ m_axi_URFtoDLF_Move2_BVALID sc_in sc_logic 1 signal 12 } 
	{ m_axi_URFtoDLF_Move2_BREADY sc_out sc_logic 1 signal 12 } 
	{ m_axi_URFtoDLF_Move2_BRESP sc_in sc_lv 2 signal 12 } 
	{ m_axi_URFtoDLF_Move2_BID sc_in sc_lv 1 signal 12 } 
	{ m_axi_URFtoDLF_Move2_BUSER sc_in sc_lv 1 signal 12 } 
	{ URFtoDLF_Move2_offset sc_in sc_lv 31 signal 13 } 
	{ m_axi_URtoDF_Move2_AWVALID sc_out sc_logic 1 signal 14 } 
	{ m_axi_URtoDF_Move2_AWREADY sc_in sc_logic 1 signal 14 } 
	{ m_axi_URtoDF_Move2_AWADDR sc_out sc_lv 32 signal 14 } 
	{ m_axi_URtoDF_Move2_AWID sc_out sc_lv 1 signal 14 } 
	{ m_axi_URtoDF_Move2_AWLEN sc_out sc_lv 32 signal 14 } 
	{ m_axi_URtoDF_Move2_AWSIZE sc_out sc_lv 3 signal 14 } 
	{ m_axi_URtoDF_Move2_AWBURST sc_out sc_lv 2 signal 14 } 
	{ m_axi_URtoDF_Move2_AWLOCK sc_out sc_lv 2 signal 14 } 
	{ m_axi_URtoDF_Move2_AWCACHE sc_out sc_lv 4 signal 14 } 
	{ m_axi_URtoDF_Move2_AWPROT sc_out sc_lv 3 signal 14 } 
	{ m_axi_URtoDF_Move2_AWQOS sc_out sc_lv 4 signal 14 } 
	{ m_axi_URtoDF_Move2_AWREGION sc_out sc_lv 4 signal 14 } 
	{ m_axi_URtoDF_Move2_AWUSER sc_out sc_lv 1 signal 14 } 
	{ m_axi_URtoDF_Move2_WVALID sc_out sc_logic 1 signal 14 } 
	{ m_axi_URtoDF_Move2_WREADY sc_in sc_logic 1 signal 14 } 
	{ m_axi_URtoDF_Move2_WDATA sc_out sc_lv 16 signal 14 } 
	{ m_axi_URtoDF_Move2_WSTRB sc_out sc_lv 2 signal 14 } 
	{ m_axi_URtoDF_Move2_WLAST sc_out sc_logic 1 signal 14 } 
	{ m_axi_URtoDF_Move2_WID sc_out sc_lv 1 signal 14 } 
	{ m_axi_URtoDF_Move2_WUSER sc_out sc_lv 1 signal 14 } 
	{ m_axi_URtoDF_Move2_ARVALID sc_out sc_logic 1 signal 14 } 
	{ m_axi_URtoDF_Move2_ARREADY sc_in sc_logic 1 signal 14 } 
	{ m_axi_URtoDF_Move2_ARADDR sc_out sc_lv 32 signal 14 } 
	{ m_axi_URtoDF_Move2_ARID sc_out sc_lv 1 signal 14 } 
	{ m_axi_URtoDF_Move2_ARLEN sc_out sc_lv 32 signal 14 } 
	{ m_axi_URtoDF_Move2_ARSIZE sc_out sc_lv 3 signal 14 } 
	{ m_axi_URtoDF_Move2_ARBURST sc_out sc_lv 2 signal 14 } 
	{ m_axi_URtoDF_Move2_ARLOCK sc_out sc_lv 2 signal 14 } 
	{ m_axi_URtoDF_Move2_ARCACHE sc_out sc_lv 4 signal 14 } 
	{ m_axi_URtoDF_Move2_ARPROT sc_out sc_lv 3 signal 14 } 
	{ m_axi_URtoDF_Move2_ARQOS sc_out sc_lv 4 signal 14 } 
	{ m_axi_URtoDF_Move2_ARREGION sc_out sc_lv 4 signal 14 } 
	{ m_axi_URtoDF_Move2_ARUSER sc_out sc_lv 1 signal 14 } 
	{ m_axi_URtoDF_Move2_RVALID sc_in sc_logic 1 signal 14 } 
	{ m_axi_URtoDF_Move2_RREADY sc_out sc_logic 1 signal 14 } 
	{ m_axi_URtoDF_Move2_RDATA sc_in sc_lv 16 signal 14 } 
	{ m_axi_URtoDF_Move2_RLAST sc_in sc_logic 1 signal 14 } 
	{ m_axi_URtoDF_Move2_RID sc_in sc_lv 1 signal 14 } 
	{ m_axi_URtoDF_Move2_RUSER sc_in sc_lv 1 signal 14 } 
	{ m_axi_URtoDF_Move2_RRESP sc_in sc_lv 2 signal 14 } 
	{ m_axi_URtoDF_Move2_BVALID sc_in sc_logic 1 signal 14 } 
	{ m_axi_URtoDF_Move2_BREADY sc_out sc_logic 1 signal 14 } 
	{ m_axi_URtoDF_Move2_BRESP sc_in sc_lv 2 signal 14 } 
	{ m_axi_URtoDF_Move2_BID sc_in sc_lv 1 signal 14 } 
	{ m_axi_URtoDF_Move2_BUSER sc_in sc_lv 1 signal 14 } 
	{ URtoDF_Move2_offset sc_in sc_lv 31 signal 15 } 
	{ Slice_URFtoDLF_Parity_Prun2_offset sc_in sc_lv 31 signal 16 } 
	{ Slice_URtoDF_Parity_Prun2_offset sc_in sc_lv 31 signal 17 } 
	{ search_sol_depthPhas sc_out sc_lv 8 signal 18 } 
	{ search_sol_depthPhas_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ search_sol_i_address0 sc_out sc_lv 5 signal 19 } 
	{ search_sol_i_ce0 sc_out sc_logic 1 signal 19 } 
	{ search_sol_i_we0 sc_out sc_logic 1 signal 19 } 
	{ search_sol_i_d0 sc_out sc_lv 8 signal 19 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "P3Buffer_0_parity_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "P3Buffer_0_parity", "role": "address0" }} , 
 	{ "name": "P3Buffer_0_parity_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_parity", "role": "ce0" }} , 
 	{ "name": "P3Buffer_0_parity_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_parity", "role": "we0" }} , 
 	{ "name": "P3Buffer_0_parity_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_parity", "role": "d0" }} , 
 	{ "name": "P3Buffer_0_parity_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_parity", "role": "q0" }} , 
 	{ "name": "P3Buffer_0_URFtoDLF_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "P3Buffer_0_URFtoDLF", "role": "address0" }} , 
 	{ "name": "P3Buffer_0_URFtoDLF_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_URFtoDLF", "role": "ce0" }} , 
 	{ "name": "P3Buffer_0_URFtoDLF_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_URFtoDLF", "role": "we0" }} , 
 	{ "name": "P3Buffer_0_URFtoDLF_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P3Buffer_0_URFtoDLF", "role": "d0" }} , 
 	{ "name": "P3Buffer_0_URFtoDLF_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P3Buffer_0_URFtoDLF", "role": "q0" }} , 
 	{ "name": "P3Buffer_0_FRtoBR_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "P3Buffer_0_FRtoBR", "role": "address0" }} , 
 	{ "name": "P3Buffer_0_FRtoBR_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_FRtoBR", "role": "ce0" }} , 
 	{ "name": "P3Buffer_0_FRtoBR_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_FRtoBR", "role": "we0" }} , 
 	{ "name": "P3Buffer_0_FRtoBR_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P3Buffer_0_FRtoBR", "role": "d0" }} , 
 	{ "name": "P3Buffer_0_FRtoBR_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P3Buffer_0_FRtoBR", "role": "q0" }} , 
 	{ "name": "P3Buffer_0_URtoDF_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "P3Buffer_0_URtoDF", "role": "address0" }} , 
 	{ "name": "P3Buffer_0_URtoDF_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_URtoDF", "role": "ce0" }} , 
 	{ "name": "P3Buffer_0_URtoDF_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_URtoDF", "role": "we0" }} , 
 	{ "name": "P3Buffer_0_URtoDF_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P3Buffer_0_URtoDF", "role": "d0" }} , 
 	{ "name": "P3Buffer_0_URtoDF_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P3Buffer_0_URtoDF", "role": "q0" }} , 
 	{ "name": "P3Buffer_0_n_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "P3Buffer_0_n", "role": "address0" }} , 
 	{ "name": "P3Buffer_0_n_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_n", "role": "ce0" }} , 
 	{ "name": "P3Buffer_0_n_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_n", "role": "we0" }} , 
 	{ "name": "P3Buffer_0_n_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P3Buffer_0_n", "role": "d0" }} , 
 	{ "name": "P3Buffer_0_n_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P3Buffer_0_n", "role": "q0" }} , 
 	{ "name": "P3Buffer_0_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "P3Buffer_0_i", "role": "address0" }} , 
 	{ "name": "P3Buffer_0_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_i", "role": "ce0" }} , 
 	{ "name": "P3Buffer_0_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_i", "role": "we0" }} , 
 	{ "name": "P3Buffer_0_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P3Buffer_0_i", "role": "d0" }} , 
 	{ "name": "P3Buffer_0_i_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P3Buffer_0_i", "role": "q0" }} , 
 	{ "name": "P3Buffer_0_i_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "P3Buffer_0_i", "role": "address1" }} , 
 	{ "name": "P3Buffer_0_i_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_i", "role": "ce1" }} , 
 	{ "name": "P3Buffer_0_i_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_i", "role": "we1" }} , 
 	{ "name": "P3Buffer_0_i_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P3Buffer_0_i", "role": "d1" }} , 
 	{ "name": "P3Buffer_0_i_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P3Buffer_0_i", "role": "q1" }} , 
 	{ "name": "P3Start_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P3Start_read", "role": "default" }} , 
 	{ "name": "P3End_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P3End_read", "role": "default" }} , 
 	{ "name": "depthPhase1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "depthPhase1", "role": "default" }} , 
 	{ "name": "depthPhase2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "depthPhase2", "role": "default" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWID" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "WVALID" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "WREADY" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "WDATA" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "WLAST" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "WID" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "WUSER" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARID" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "RVALID" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "RREADY" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "RDATA" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "RLAST" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "RID" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "RUSER" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "RRESP" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "BVALID" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "BREADY" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "BRESP" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "BID" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "BUSER" }} , 
 	{ "name": "FRtoBR_Move2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "FRtoBR_Move2_offset", "role": "default" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWID" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "WVALID" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "WREADY" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "WDATA" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "WLAST" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "WID" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "WUSER" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARID" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "RVALID" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "RREADY" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "RDATA" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "RLAST" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "RID" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "RUSER" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "RRESP" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "BVALID" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "BREADY" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "BRESP" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "BID" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "BUSER" }} , 
 	{ "name": "URFtoDLF_Move2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "URFtoDLF_Move2_offset", "role": "default" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWID" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_URtoDF_Move2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "WVALID" }} , 
 	{ "name": "m_axi_URtoDF_Move2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "WREADY" }} , 
 	{ "name": "m_axi_URtoDF_Move2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "WDATA" }} , 
 	{ "name": "m_axi_URtoDF_Move2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_URtoDF_Move2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "WLAST" }} , 
 	{ "name": "m_axi_URtoDF_Move2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "WID" }} , 
 	{ "name": "m_axi_URtoDF_Move2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "WUSER" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARID" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_URtoDF_Move2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "RVALID" }} , 
 	{ "name": "m_axi_URtoDF_Move2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "RREADY" }} , 
 	{ "name": "m_axi_URtoDF_Move2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "RDATA" }} , 
 	{ "name": "m_axi_URtoDF_Move2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "RLAST" }} , 
 	{ "name": "m_axi_URtoDF_Move2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "RID" }} , 
 	{ "name": "m_axi_URtoDF_Move2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "RUSER" }} , 
 	{ "name": "m_axi_URtoDF_Move2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "RRESP" }} , 
 	{ "name": "m_axi_URtoDF_Move2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "BVALID" }} , 
 	{ "name": "m_axi_URtoDF_Move2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "BREADY" }} , 
 	{ "name": "m_axi_URtoDF_Move2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "BRESP" }} , 
 	{ "name": "m_axi_URtoDF_Move2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "BID" }} , 
 	{ "name": "m_axi_URtoDF_Move2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "BUSER" }} , 
 	{ "name": "URtoDF_Move2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "URtoDF_Move2_offset", "role": "default" }} , 
 	{ "name": "Slice_URFtoDLF_Parity_Prun2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "Slice_URFtoDLF_Parity_Prun2_offset", "role": "default" }} , 
 	{ "name": "Slice_URtoDF_Parity_Prun2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "Slice_URtoDF_Parity_Prun2_offset", "role": "default" }} , 
 	{ "name": "search_sol_depthPhas", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "search_sol_depthPhas", "role": "default" }} , 
 	{ "name": "search_sol_depthPhas_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "search_sol_depthPhas", "role": "ap_vld" }} , 
 	{ "name": "search_sol_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "search_sol_i", "role": "address0" }} , 
 	{ "name": "search_sol_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "search_sol_i", "role": "ce0" }} , 
 	{ "name": "search_sol_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "search_sol_i", "role": "we0" }} , 
 	{ "name": "search_sol_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "search_sol_i", "role": "d0" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "P2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "151", "EstimateLatencyMax" : "209",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "P3Buffer_0_parity", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "P3Buffer_0_URFtoDLF", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "P3Buffer_0_FRtoBR", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "P3Buffer_0_URtoDF", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "P3Buffer_0_n", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "P3Buffer_0_i", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "P3Start_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P3End_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "depthPhase1", "Type" : "None", "Direction" : "I"},
			{"Name" : "depthPhase2", "Type" : "None", "Direction" : "I"},
			{"Name" : "FRtoBR_Move2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "FRtoBR_Move2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "FRtoBR_Move2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "FRtoBR_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URFtoDLF_Move2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "URFtoDLF_Move2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "URFtoDLF_Move2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "URFtoDLF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoDF_Move2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "URtoDF_Move2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "URtoDF_Move2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "URtoDF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_URFtoDLF_Parity_Prun2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_URtoDF_Parity_Prun2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nOld", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "URFtoDLF_Move3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "FRtoBR_Move3_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "URtoDF_Move3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "label3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "label3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "parityMove", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "search_sol_depthPhas", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "search_sol_i", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.URFtoDLF_Move3_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FRtoBR_Move3_2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.URtoDF_Move3_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.label3_0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.label3_1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.parityMove_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.search_0_i_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	P2 {
		P3Buffer_0_parity {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_URFtoDLF {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_FRtoBR {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_URtoDF {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_n {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_i {Type IO LastRead 3 FirstWrite 32}
		P3Start_read {Type I LastRead 1 FirstWrite -1}
		P3End_read {Type I LastRead 0 FirstWrite -1}
		depthPhase1 {Type I LastRead 1 FirstWrite -1}
		depthPhase2 {Type I LastRead 1 FirstWrite -1}
		FRtoBR_Move2 {Type I LastRead 10 FirstWrite -1}
		FRtoBR_Move2_offset {Type I LastRead 1 FirstWrite -1}
		URFtoDLF_Move2 {Type I LastRead 29 FirstWrite -1}
		URFtoDLF_Move2_offset {Type I LastRead 1 FirstWrite -1}
		URtoDF_Move2 {Type I LastRead 29 FirstWrite -1}
		URtoDF_Move2_offset {Type I LastRead 1 FirstWrite -1}
		Slice_URFtoDLF_Parity_Prun2_offset {Type I LastRead 1 FirstWrite -1}
		Slice_URtoDF_Parity_Prun2_offset {Type I LastRead 1 FirstWrite -1}
		nOld {Type IO LastRead -1 FirstWrite -1}
		URFtoDLF_Move3 {Type IO LastRead -1 FirstWrite -1}
		FRtoBR_Move3_2 {Type IO LastRead -1 FirstWrite -1}
		URtoDF_Move3 {Type IO LastRead -1 FirstWrite -1}
		label3_0 {Type I LastRead -1 FirstWrite -1}
		label3_1 {Type I LastRead -1 FirstWrite -1}
		parityMove {Type I LastRead -1 FirstWrite -1}
		search_sol_depthPhas {Type O LastRead -1 FirstWrite 31}
		search_sol_i {Type O LastRead -1 FirstWrite 19}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "151", "Max" : "209"}
	, {"Name" : "Interval", "Min" : "151", "Max" : "209"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	P3Buffer_0_parity { ap_memory {  { P3Buffer_0_parity_address0 mem_address 1 10 }  { P3Buffer_0_parity_ce0 mem_ce 1 1 }  { P3Buffer_0_parity_we0 mem_we 1 1 }  { P3Buffer_0_parity_d0 mem_din 1 1 }  { P3Buffer_0_parity_q0 mem_dout 0 1 } } }
	P3Buffer_0_URFtoDLF { ap_memory {  { P3Buffer_0_URFtoDLF_address0 mem_address 1 10 }  { P3Buffer_0_URFtoDLF_ce0 mem_ce 1 1 }  { P3Buffer_0_URFtoDLF_we0 mem_we 1 1 }  { P3Buffer_0_URFtoDLF_d0 mem_din 1 16 }  { P3Buffer_0_URFtoDLF_q0 mem_dout 0 16 } } }
	P3Buffer_0_FRtoBR { ap_memory {  { P3Buffer_0_FRtoBR_address0 mem_address 1 10 }  { P3Buffer_0_FRtoBR_ce0 mem_ce 1 1 }  { P3Buffer_0_FRtoBR_we0 mem_we 1 1 }  { P3Buffer_0_FRtoBR_d0 mem_din 1 16 }  { P3Buffer_0_FRtoBR_q0 mem_dout 0 16 } } }
	P3Buffer_0_URtoDF { ap_memory {  { P3Buffer_0_URtoDF_address0 mem_address 1 10 }  { P3Buffer_0_URtoDF_ce0 mem_ce 1 1 }  { P3Buffer_0_URtoDF_we0 mem_we 1 1 }  { P3Buffer_0_URtoDF_d0 mem_din 1 16 }  { P3Buffer_0_URtoDF_q0 mem_dout 0 16 } } }
	P3Buffer_0_n { ap_memory {  { P3Buffer_0_n_address0 mem_address 1 10 }  { P3Buffer_0_n_ce0 mem_ce 1 1 }  { P3Buffer_0_n_we0 mem_we 1 1 }  { P3Buffer_0_n_d0 mem_din 1 8 }  { P3Buffer_0_n_q0 mem_dout 0 8 } } }
	P3Buffer_0_i { ap_memory {  { P3Buffer_0_i_address0 mem_address 1 15 }  { P3Buffer_0_i_ce0 mem_ce 1 1 }  { P3Buffer_0_i_we0 mem_we 1 1 }  { P3Buffer_0_i_d0 mem_din 1 8 }  { P3Buffer_0_i_q0 mem_dout 0 8 }  { P3Buffer_0_i_address1 mem_address 1 15 }  { P3Buffer_0_i_ce1 mem_ce 1 1 }  { P3Buffer_0_i_we1 mem_we 1 1 }  { P3Buffer_0_i_d1 mem_din 1 8 }  { P3Buffer_0_i_q1 mem_dout 0 8 } } }
	P3Start_read { ap_none {  { P3Start_read in_data 0 32 } } }
	P3End_read { ap_none {  { P3End_read in_data 0 32 } } }
	depthPhase1 { ap_none {  { depthPhase1 in_data 0 8 } } }
	depthPhase2 { ap_none {  { depthPhase2 in_data 0 8 } } }
	FRtoBR_Move2 { m_axi {  { m_axi_FRtoBR_Move2_AWVALID VALID 1 1 }  { m_axi_FRtoBR_Move2_AWREADY READY 0 1 }  { m_axi_FRtoBR_Move2_AWADDR ADDR 1 32 }  { m_axi_FRtoBR_Move2_AWID ID 1 1 }  { m_axi_FRtoBR_Move2_AWLEN LEN 1 32 }  { m_axi_FRtoBR_Move2_AWSIZE SIZE 1 3 }  { m_axi_FRtoBR_Move2_AWBURST BURST 1 2 }  { m_axi_FRtoBR_Move2_AWLOCK LOCK 1 2 }  { m_axi_FRtoBR_Move2_AWCACHE CACHE 1 4 }  { m_axi_FRtoBR_Move2_AWPROT PROT 1 3 }  { m_axi_FRtoBR_Move2_AWQOS QOS 1 4 }  { m_axi_FRtoBR_Move2_AWREGION REGION 1 4 }  { m_axi_FRtoBR_Move2_AWUSER USER 1 1 }  { m_axi_FRtoBR_Move2_WVALID VALID 1 1 }  { m_axi_FRtoBR_Move2_WREADY READY 0 1 }  { m_axi_FRtoBR_Move2_WDATA DATA 1 16 }  { m_axi_FRtoBR_Move2_WSTRB STRB 1 2 }  { m_axi_FRtoBR_Move2_WLAST LAST 1 1 }  { m_axi_FRtoBR_Move2_WID ID 1 1 }  { m_axi_FRtoBR_Move2_WUSER USER 1 1 }  { m_axi_FRtoBR_Move2_ARVALID VALID 1 1 }  { m_axi_FRtoBR_Move2_ARREADY READY 0 1 }  { m_axi_FRtoBR_Move2_ARADDR ADDR 1 32 }  { m_axi_FRtoBR_Move2_ARID ID 1 1 }  { m_axi_FRtoBR_Move2_ARLEN LEN 1 32 }  { m_axi_FRtoBR_Move2_ARSIZE SIZE 1 3 }  { m_axi_FRtoBR_Move2_ARBURST BURST 1 2 }  { m_axi_FRtoBR_Move2_ARLOCK LOCK 1 2 }  { m_axi_FRtoBR_Move2_ARCACHE CACHE 1 4 }  { m_axi_FRtoBR_Move2_ARPROT PROT 1 3 }  { m_axi_FRtoBR_Move2_ARQOS QOS 1 4 }  { m_axi_FRtoBR_Move2_ARREGION REGION 1 4 }  { m_axi_FRtoBR_Move2_ARUSER USER 1 1 }  { m_axi_FRtoBR_Move2_RVALID VALID 0 1 }  { m_axi_FRtoBR_Move2_RREADY READY 1 1 }  { m_axi_FRtoBR_Move2_RDATA DATA 0 16 }  { m_axi_FRtoBR_Move2_RLAST LAST 0 1 }  { m_axi_FRtoBR_Move2_RID ID 0 1 }  { m_axi_FRtoBR_Move2_RUSER USER 0 1 }  { m_axi_FRtoBR_Move2_RRESP RESP 0 2 }  { m_axi_FRtoBR_Move2_BVALID VALID 0 1 }  { m_axi_FRtoBR_Move2_BREADY READY 1 1 }  { m_axi_FRtoBR_Move2_BRESP RESP 0 2 }  { m_axi_FRtoBR_Move2_BID ID 0 1 }  { m_axi_FRtoBR_Move2_BUSER USER 0 1 } } }
	FRtoBR_Move2_offset { ap_none {  { FRtoBR_Move2_offset in_data 0 31 } } }
	URFtoDLF_Move2 { m_axi {  { m_axi_URFtoDLF_Move2_AWVALID VALID 1 1 }  { m_axi_URFtoDLF_Move2_AWREADY READY 0 1 }  { m_axi_URFtoDLF_Move2_AWADDR ADDR 1 32 }  { m_axi_URFtoDLF_Move2_AWID ID 1 1 }  { m_axi_URFtoDLF_Move2_AWLEN LEN 1 32 }  { m_axi_URFtoDLF_Move2_AWSIZE SIZE 1 3 }  { m_axi_URFtoDLF_Move2_AWBURST BURST 1 2 }  { m_axi_URFtoDLF_Move2_AWLOCK LOCK 1 2 }  { m_axi_URFtoDLF_Move2_AWCACHE CACHE 1 4 }  { m_axi_URFtoDLF_Move2_AWPROT PROT 1 3 }  { m_axi_URFtoDLF_Move2_AWQOS QOS 1 4 }  { m_axi_URFtoDLF_Move2_AWREGION REGION 1 4 }  { m_axi_URFtoDLF_Move2_AWUSER USER 1 1 }  { m_axi_URFtoDLF_Move2_WVALID VALID 1 1 }  { m_axi_URFtoDLF_Move2_WREADY READY 0 1 }  { m_axi_URFtoDLF_Move2_WDATA DATA 1 16 }  { m_axi_URFtoDLF_Move2_WSTRB STRB 1 2 }  { m_axi_URFtoDLF_Move2_WLAST LAST 1 1 }  { m_axi_URFtoDLF_Move2_WID ID 1 1 }  { m_axi_URFtoDLF_Move2_WUSER USER 1 1 }  { m_axi_URFtoDLF_Move2_ARVALID VALID 1 1 }  { m_axi_URFtoDLF_Move2_ARREADY READY 0 1 }  { m_axi_URFtoDLF_Move2_ARADDR ADDR 1 32 }  { m_axi_URFtoDLF_Move2_ARID ID 1 1 }  { m_axi_URFtoDLF_Move2_ARLEN LEN 1 32 }  { m_axi_URFtoDLF_Move2_ARSIZE SIZE 1 3 }  { m_axi_URFtoDLF_Move2_ARBURST BURST 1 2 }  { m_axi_URFtoDLF_Move2_ARLOCK LOCK 1 2 }  { m_axi_URFtoDLF_Move2_ARCACHE CACHE 1 4 }  { m_axi_URFtoDLF_Move2_ARPROT PROT 1 3 }  { m_axi_URFtoDLF_Move2_ARQOS QOS 1 4 }  { m_axi_URFtoDLF_Move2_ARREGION REGION 1 4 }  { m_axi_URFtoDLF_Move2_ARUSER USER 1 1 }  { m_axi_URFtoDLF_Move2_RVALID VALID 0 1 }  { m_axi_URFtoDLF_Move2_RREADY READY 1 1 }  { m_axi_URFtoDLF_Move2_RDATA DATA 0 16 }  { m_axi_URFtoDLF_Move2_RLAST LAST 0 1 }  { m_axi_URFtoDLF_Move2_RID ID 0 1 }  { m_axi_URFtoDLF_Move2_RUSER USER 0 1 }  { m_axi_URFtoDLF_Move2_RRESP RESP 0 2 }  { m_axi_URFtoDLF_Move2_BVALID VALID 0 1 }  { m_axi_URFtoDLF_Move2_BREADY READY 1 1 }  { m_axi_URFtoDLF_Move2_BRESP RESP 0 2 }  { m_axi_URFtoDLF_Move2_BID ID 0 1 }  { m_axi_URFtoDLF_Move2_BUSER USER 0 1 } } }
	URFtoDLF_Move2_offset { ap_none {  { URFtoDLF_Move2_offset in_data 0 31 } } }
	URtoDF_Move2 { m_axi {  { m_axi_URtoDF_Move2_AWVALID VALID 1 1 }  { m_axi_URtoDF_Move2_AWREADY READY 0 1 }  { m_axi_URtoDF_Move2_AWADDR ADDR 1 32 }  { m_axi_URtoDF_Move2_AWID ID 1 1 }  { m_axi_URtoDF_Move2_AWLEN LEN 1 32 }  { m_axi_URtoDF_Move2_AWSIZE SIZE 1 3 }  { m_axi_URtoDF_Move2_AWBURST BURST 1 2 }  { m_axi_URtoDF_Move2_AWLOCK LOCK 1 2 }  { m_axi_URtoDF_Move2_AWCACHE CACHE 1 4 }  { m_axi_URtoDF_Move2_AWPROT PROT 1 3 }  { m_axi_URtoDF_Move2_AWQOS QOS 1 4 }  { m_axi_URtoDF_Move2_AWREGION REGION 1 4 }  { m_axi_URtoDF_Move2_AWUSER USER 1 1 }  { m_axi_URtoDF_Move2_WVALID VALID 1 1 }  { m_axi_URtoDF_Move2_WREADY READY 0 1 }  { m_axi_URtoDF_Move2_WDATA DATA 1 16 }  { m_axi_URtoDF_Move2_WSTRB STRB 1 2 }  { m_axi_URtoDF_Move2_WLAST LAST 1 1 }  { m_axi_URtoDF_Move2_WID ID 1 1 }  { m_axi_URtoDF_Move2_WUSER USER 1 1 }  { m_axi_URtoDF_Move2_ARVALID VALID 1 1 }  { m_axi_URtoDF_Move2_ARREADY READY 0 1 }  { m_axi_URtoDF_Move2_ARADDR ADDR 1 32 }  { m_axi_URtoDF_Move2_ARID ID 1 1 }  { m_axi_URtoDF_Move2_ARLEN LEN 1 32 }  { m_axi_URtoDF_Move2_ARSIZE SIZE 1 3 }  { m_axi_URtoDF_Move2_ARBURST BURST 1 2 }  { m_axi_URtoDF_Move2_ARLOCK LOCK 1 2 }  { m_axi_URtoDF_Move2_ARCACHE CACHE 1 4 }  { m_axi_URtoDF_Move2_ARPROT PROT 1 3 }  { m_axi_URtoDF_Move2_ARQOS QOS 1 4 }  { m_axi_URtoDF_Move2_ARREGION REGION 1 4 }  { m_axi_URtoDF_Move2_ARUSER USER 1 1 }  { m_axi_URtoDF_Move2_RVALID VALID 0 1 }  { m_axi_URtoDF_Move2_RREADY READY 1 1 }  { m_axi_URtoDF_Move2_RDATA DATA 0 16 }  { m_axi_URtoDF_Move2_RLAST LAST 0 1 }  { m_axi_URtoDF_Move2_RID ID 0 1 }  { m_axi_URtoDF_Move2_RUSER USER 0 1 }  { m_axi_URtoDF_Move2_RRESP RESP 0 2 }  { m_axi_URtoDF_Move2_BVALID VALID 0 1 }  { m_axi_URtoDF_Move2_BREADY READY 1 1 }  { m_axi_URtoDF_Move2_BRESP RESP 0 2 }  { m_axi_URtoDF_Move2_BID ID 0 1 }  { m_axi_URtoDF_Move2_BUSER USER 0 1 } } }
	URtoDF_Move2_offset { ap_none {  { URtoDF_Move2_offset in_data 0 31 } } }
	Slice_URFtoDLF_Parity_Prun2_offset { ap_none {  { Slice_URFtoDLF_Parity_Prun2_offset in_data 0 31 } } }
	Slice_URtoDF_Parity_Prun2_offset { ap_none {  { Slice_URtoDF_Parity_Prun2_offset in_data 0 31 } } }
	search_sol_depthPhas { ap_vld {  { search_sol_depthPhas out_data 1 8 }  { search_sol_depthPhas_ap_vld out_vld 1 1 } } }
	search_sol_i { ap_memory {  { search_sol_i_address0 mem_address 1 5 }  { search_sol_i_ce0 mem_ce 1 1 }  { search_sol_i_we0 mem_we 1 1 }  { search_sol_i_d0 mem_din 1 8 } } }
}
