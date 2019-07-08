set moduleName totalDepth
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
set C_modelName {totalDepth}
set C_modelType { int 32 }
set C_modelArgList {
	{ search_0_ax int 32 regular {array 31 { 2 3 } 1 1 }  }
	{ search_0_po int 32 regular {array 31 { 2 3 } 1 1 }  }
	{ search_0_parity int 32 regular {array 31 { 2 3 } 1 1 }  }
	{ search_0_URFtoDLF int 32 regular {array 31 { 2 3 } 1 1 }  }
	{ search_0_FRtoBR int 32 regular {array 31 { 2 3 } 1 1 }  }
	{ search_0_URtoUL int 32 regular {array 31 { 2 3 } 1 1 }  }
	{ search_0_UBtoDF int 32 regular {array 31 { 2 3 } 1 1 }  }
	{ depthPhase1 int 32 regular  }
	{ maxDepth int 8 regular  }
	{ FRtoBR_Move2 int 16 regular {axi_master 0}  }
	{ FRtoBR_Move2_offset int 31 regular  }
	{ URFtoDLF_Move2_offset int 31 regular  }
	{ URtoDF_Move2_offset int 31 regular  }
	{ URtoUL_Move2_offset int 31 regular  }
	{ UBtoDF_Move2_offset int 31 regular  }
	{ MergeURtoULandUBtoDF2_offset int 31 regular  }
	{ Slice_URFtoDLF_Parity_Prun2_offset int 31 regular  }
	{ Slice_URtoDF_Parity_Prun2_offset int 31 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "search_0_ax", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "search_0_po", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "search_0_parity", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "search_0_URFtoDLF", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "search_0_FRtoBR", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "search_0_URtoUL", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "search_0_UBtoDF", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "depthPhase1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "maxDepth", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "FRtoBR_Move2", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FRtoBR_Move2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "URFtoDLF_Move2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "URtoDF_Move2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "URtoUL_Move2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "UBtoDF_Move2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "MergeURtoULandUBtoDF2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "Slice_URFtoDLF_Parity_Prun2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "Slice_URtoDF_Parity_Prun2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 97
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ search_0_ax_address0 sc_out sc_lv 5 signal 0 } 
	{ search_0_ax_ce0 sc_out sc_logic 1 signal 0 } 
	{ search_0_ax_we0 sc_out sc_logic 1 signal 0 } 
	{ search_0_ax_d0 sc_out sc_lv 32 signal 0 } 
	{ search_0_ax_q0 sc_in sc_lv 32 signal 0 } 
	{ search_0_po_address0 sc_out sc_lv 5 signal 1 } 
	{ search_0_po_ce0 sc_out sc_logic 1 signal 1 } 
	{ search_0_po_we0 sc_out sc_logic 1 signal 1 } 
	{ search_0_po_d0 sc_out sc_lv 32 signal 1 } 
	{ search_0_po_q0 sc_in sc_lv 32 signal 1 } 
	{ search_0_parity_address0 sc_out sc_lv 5 signal 2 } 
	{ search_0_parity_ce0 sc_out sc_logic 1 signal 2 } 
	{ search_0_parity_we0 sc_out sc_logic 1 signal 2 } 
	{ search_0_parity_d0 sc_out sc_lv 32 signal 2 } 
	{ search_0_parity_q0 sc_in sc_lv 32 signal 2 } 
	{ search_0_URFtoDLF_address0 sc_out sc_lv 5 signal 3 } 
	{ search_0_URFtoDLF_ce0 sc_out sc_logic 1 signal 3 } 
	{ search_0_URFtoDLF_we0 sc_out sc_logic 1 signal 3 } 
	{ search_0_URFtoDLF_d0 sc_out sc_lv 32 signal 3 } 
	{ search_0_URFtoDLF_q0 sc_in sc_lv 32 signal 3 } 
	{ search_0_FRtoBR_address0 sc_out sc_lv 5 signal 4 } 
	{ search_0_FRtoBR_ce0 sc_out sc_logic 1 signal 4 } 
	{ search_0_FRtoBR_we0 sc_out sc_logic 1 signal 4 } 
	{ search_0_FRtoBR_d0 sc_out sc_lv 32 signal 4 } 
	{ search_0_FRtoBR_q0 sc_in sc_lv 32 signal 4 } 
	{ search_0_URtoUL_address0 sc_out sc_lv 5 signal 5 } 
	{ search_0_URtoUL_ce0 sc_out sc_logic 1 signal 5 } 
	{ search_0_URtoUL_we0 sc_out sc_logic 1 signal 5 } 
	{ search_0_URtoUL_d0 sc_out sc_lv 32 signal 5 } 
	{ search_0_URtoUL_q0 sc_in sc_lv 32 signal 5 } 
	{ search_0_UBtoDF_address0 sc_out sc_lv 5 signal 6 } 
	{ search_0_UBtoDF_ce0 sc_out sc_logic 1 signal 6 } 
	{ search_0_UBtoDF_we0 sc_out sc_logic 1 signal 6 } 
	{ search_0_UBtoDF_d0 sc_out sc_lv 32 signal 6 } 
	{ search_0_UBtoDF_q0 sc_in sc_lv 32 signal 6 } 
	{ depthPhase1 sc_in sc_lv 32 signal 7 } 
	{ maxDepth sc_in sc_lv 8 signal 8 } 
	{ m_axi_FRtoBR_Move2_AWVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_FRtoBR_Move2_AWREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_FRtoBR_Move2_AWADDR sc_out sc_lv 32 signal 9 } 
	{ m_axi_FRtoBR_Move2_AWID sc_out sc_lv 1 signal 9 } 
	{ m_axi_FRtoBR_Move2_AWLEN sc_out sc_lv 32 signal 9 } 
	{ m_axi_FRtoBR_Move2_AWSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_FRtoBR_Move2_AWBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_FRtoBR_Move2_AWLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_FRtoBR_Move2_AWCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_FRtoBR_Move2_AWPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_FRtoBR_Move2_AWQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_FRtoBR_Move2_AWREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_FRtoBR_Move2_AWUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_FRtoBR_Move2_WVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_FRtoBR_Move2_WREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_FRtoBR_Move2_WDATA sc_out sc_lv 16 signal 9 } 
	{ m_axi_FRtoBR_Move2_WSTRB sc_out sc_lv 2 signal 9 } 
	{ m_axi_FRtoBR_Move2_WLAST sc_out sc_logic 1 signal 9 } 
	{ m_axi_FRtoBR_Move2_WID sc_out sc_lv 1 signal 9 } 
	{ m_axi_FRtoBR_Move2_WUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_FRtoBR_Move2_ARVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_FRtoBR_Move2_ARREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_FRtoBR_Move2_ARADDR sc_out sc_lv 32 signal 9 } 
	{ m_axi_FRtoBR_Move2_ARID sc_out sc_lv 1 signal 9 } 
	{ m_axi_FRtoBR_Move2_ARLEN sc_out sc_lv 32 signal 9 } 
	{ m_axi_FRtoBR_Move2_ARSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_FRtoBR_Move2_ARBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_FRtoBR_Move2_ARLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_FRtoBR_Move2_ARCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_FRtoBR_Move2_ARPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_FRtoBR_Move2_ARQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_FRtoBR_Move2_ARREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_FRtoBR_Move2_ARUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_FRtoBR_Move2_RVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_FRtoBR_Move2_RREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_FRtoBR_Move2_RDATA sc_in sc_lv 16 signal 9 } 
	{ m_axi_FRtoBR_Move2_RLAST sc_in sc_logic 1 signal 9 } 
	{ m_axi_FRtoBR_Move2_RID sc_in sc_lv 1 signal 9 } 
	{ m_axi_FRtoBR_Move2_RUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_FRtoBR_Move2_RRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_FRtoBR_Move2_BVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_FRtoBR_Move2_BREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_FRtoBR_Move2_BRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_FRtoBR_Move2_BID sc_in sc_lv 1 signal 9 } 
	{ m_axi_FRtoBR_Move2_BUSER sc_in sc_lv 1 signal 9 } 
	{ FRtoBR_Move2_offset sc_in sc_lv 31 signal 10 } 
	{ URFtoDLF_Move2_offset sc_in sc_lv 31 signal 11 } 
	{ URtoDF_Move2_offset sc_in sc_lv 31 signal 12 } 
	{ URtoUL_Move2_offset sc_in sc_lv 31 signal 13 } 
	{ UBtoDF_Move2_offset sc_in sc_lv 31 signal 14 } 
	{ MergeURtoULandUBtoDF2_offset sc_in sc_lv 31 signal 15 } 
	{ Slice_URFtoDLF_Parity_Prun2_offset sc_in sc_lv 31 signal 16 } 
	{ Slice_URtoDF_Parity_Prun2_offset sc_in sc_lv 31 signal 17 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "search_0_ax_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "search_0_ax", "role": "address0" }} , 
 	{ "name": "search_0_ax_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "search_0_ax", "role": "ce0" }} , 
 	{ "name": "search_0_ax_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "search_0_ax", "role": "we0" }} , 
 	{ "name": "search_0_ax_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "search_0_ax", "role": "d0" }} , 
 	{ "name": "search_0_ax_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "search_0_ax", "role": "q0" }} , 
 	{ "name": "search_0_po_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "search_0_po", "role": "address0" }} , 
 	{ "name": "search_0_po_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "search_0_po", "role": "ce0" }} , 
 	{ "name": "search_0_po_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "search_0_po", "role": "we0" }} , 
 	{ "name": "search_0_po_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "search_0_po", "role": "d0" }} , 
 	{ "name": "search_0_po_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "search_0_po", "role": "q0" }} , 
 	{ "name": "search_0_parity_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "search_0_parity", "role": "address0" }} , 
 	{ "name": "search_0_parity_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "search_0_parity", "role": "ce0" }} , 
 	{ "name": "search_0_parity_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "search_0_parity", "role": "we0" }} , 
 	{ "name": "search_0_parity_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "search_0_parity", "role": "d0" }} , 
 	{ "name": "search_0_parity_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "search_0_parity", "role": "q0" }} , 
 	{ "name": "search_0_URFtoDLF_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "search_0_URFtoDLF", "role": "address0" }} , 
 	{ "name": "search_0_URFtoDLF_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "search_0_URFtoDLF", "role": "ce0" }} , 
 	{ "name": "search_0_URFtoDLF_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "search_0_URFtoDLF", "role": "we0" }} , 
 	{ "name": "search_0_URFtoDLF_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "search_0_URFtoDLF", "role": "d0" }} , 
 	{ "name": "search_0_URFtoDLF_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "search_0_URFtoDLF", "role": "q0" }} , 
 	{ "name": "search_0_FRtoBR_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "search_0_FRtoBR", "role": "address0" }} , 
 	{ "name": "search_0_FRtoBR_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "search_0_FRtoBR", "role": "ce0" }} , 
 	{ "name": "search_0_FRtoBR_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "search_0_FRtoBR", "role": "we0" }} , 
 	{ "name": "search_0_FRtoBR_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "search_0_FRtoBR", "role": "d0" }} , 
 	{ "name": "search_0_FRtoBR_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "search_0_FRtoBR", "role": "q0" }} , 
 	{ "name": "search_0_URtoUL_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "search_0_URtoUL", "role": "address0" }} , 
 	{ "name": "search_0_URtoUL_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "search_0_URtoUL", "role": "ce0" }} , 
 	{ "name": "search_0_URtoUL_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "search_0_URtoUL", "role": "we0" }} , 
 	{ "name": "search_0_URtoUL_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "search_0_URtoUL", "role": "d0" }} , 
 	{ "name": "search_0_URtoUL_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "search_0_URtoUL", "role": "q0" }} , 
 	{ "name": "search_0_UBtoDF_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "search_0_UBtoDF", "role": "address0" }} , 
 	{ "name": "search_0_UBtoDF_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "search_0_UBtoDF", "role": "ce0" }} , 
 	{ "name": "search_0_UBtoDF_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "search_0_UBtoDF", "role": "we0" }} , 
 	{ "name": "search_0_UBtoDF_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "search_0_UBtoDF", "role": "d0" }} , 
 	{ "name": "search_0_UBtoDF_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "search_0_UBtoDF", "role": "q0" }} , 
 	{ "name": "depthPhase1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "depthPhase1", "role": "default" }} , 
 	{ "name": "maxDepth", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "maxDepth", "role": "default" }} , 
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
 	{ "name": "URFtoDLF_Move2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "URFtoDLF_Move2_offset", "role": "default" }} , 
 	{ "name": "URtoDF_Move2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "URtoDF_Move2_offset", "role": "default" }} , 
 	{ "name": "URtoUL_Move2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "URtoUL_Move2_offset", "role": "default" }} , 
 	{ "name": "UBtoDF_Move2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "UBtoDF_Move2_offset", "role": "default" }} , 
 	{ "name": "MergeURtoULandUBtoDF2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "MergeURtoULandUBtoDF2_offset", "role": "default" }} , 
 	{ "name": "Slice_URFtoDLF_Parity_Prun2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "Slice_URFtoDLF_Parity_Prun2_offset", "role": "default" }} , 
 	{ "name": "Slice_URtoDF_Parity_Prun2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "Slice_URtoDF_Parity_Prun2_offset", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "totalDepth",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getPruning_fu_813"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getPruning131416_fu_821"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getPruning1314_fu_829"},
			{"State" : "ap_ST_fsm_state68", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getPruning13_fu_837"}],
		"Port" : [
			{"Name" : "search_0_ax", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "search_0_po", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "search_0_parity", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "search_0_URFtoDLF", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "search_0_FRtoBR", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "search_0_URtoUL", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "search_0_UBtoDF", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "depthPhase1", "Type" : "None", "Direction" : "I"},
			{"Name" : "maxDepth", "Type" : "None", "Direction" : "I"},
			{"Name" : "FRtoBR_Move2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "FRtoBR_Move2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "FRtoBR_Move2_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_getPruning1314_fu_829", "Port" : "table_r"},
					{"ID" : "5", "SubInstance" : "grp_getPruning131416_fu_821", "Port" : "table_r"},
					{"ID" : "4", "SubInstance" : "grp_getPruning_fu_813", "Port" : "table_r"},
					{"ID" : "7", "SubInstance" : "grp_getPruning13_fu_837", "Port" : "table_r"}]},
			{"Name" : "FRtoBR_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URFtoDLF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoDF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoUL_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "UBtoDF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "MergeURtoULandUBtoDF2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_URFtoDLF_Parity_Prun2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_URtoDF_Parity_Prun2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "parityMove1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "search_URtoDF_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "search_minDistPhase2", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.parityMove1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.search_URtoDF_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.search_minDistPhase2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_getPruning_fu_813", "Parent" : "0",
		"CDFG" : "getPruning",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "table_r", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "table_r_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "table_r_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "table_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "index", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_getPruning131416_fu_821", "Parent" : "0",
		"CDFG" : "getPruning131416",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "table_r", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "table_r_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "table_r_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "table_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "index", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_getPruning1314_fu_829", "Parent" : "0",
		"CDFG" : "getPruning1314",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "table_r", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "table_r_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "table_r_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "table_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "index", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_getPruning13_fu_837", "Parent" : "0",
		"CDFG" : "getPruning13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "table_r", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "table_r_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "table_r_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "table_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "index", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	totalDepth {
		search_0_ax {Type IO LastRead 26 FirstWrite 19}
		search_0_po {Type IO LastRead 26 FirstWrite 19}
		search_0_parity {Type IO LastRead 27 FirstWrite 13}
		search_0_URFtoDLF {Type IO LastRead 27 FirstWrite 13}
		search_0_FRtoBR {Type IO LastRead 27 FirstWrite 13}
		search_0_URtoUL {Type IO LastRead 6 FirstWrite 17}
		search_0_UBtoDF {Type IO LastRead 7 FirstWrite 17}
		depthPhase1 {Type I LastRead 0 FirstWrite -1}
		maxDepth {Type I LastRead 0 FirstWrite -1}
		FRtoBR_Move2 {Type I LastRead 38 FirstWrite -1}
		FRtoBR_Move2_offset {Type I LastRead 0 FirstWrite -1}
		URFtoDLF_Move2_offset {Type I LastRead 0 FirstWrite -1}
		URtoDF_Move2_offset {Type I LastRead 0 FirstWrite -1}
		URtoUL_Move2_offset {Type I LastRead 0 FirstWrite -1}
		UBtoDF_Move2_offset {Type I LastRead 0 FirstWrite -1}
		MergeURtoULandUBtoDF2_offset {Type I LastRead 0 FirstWrite -1}
		Slice_URFtoDLF_Parity_Prun2_offset {Type I LastRead 0 FirstWrite -1}
		Slice_URtoDF_Parity_Prun2_offset {Type I LastRead 0 FirstWrite -1}
		parityMove1 {Type I LastRead -1 FirstWrite -1}
		search_URtoDF_0 {Type IO LastRead -1 FirstWrite -1}
		search_minDistPhase2 {Type IO LastRead -1 FirstWrite -1}}
	getPruning {
		table_r {Type I LastRead 8 FirstWrite -1}
		table_offset {Type I LastRead 0 FirstWrite -1}
		index {Type I LastRead 0 FirstWrite -1}}
	getPruning131416 {
		table_r {Type I LastRead 8 FirstWrite -1}
		table_offset {Type I LastRead 0 FirstWrite -1}
		index {Type I LastRead 0 FirstWrite -1}}
	getPruning1314 {
		table_r {Type I LastRead 8 FirstWrite -1}
		table_offset {Type I LastRead 0 FirstWrite -1}
		index {Type I LastRead 0 FirstWrite -1}}
	getPruning13 {
		table_r {Type I LastRead 8 FirstWrite -1}
		table_offset {Type I LastRead 0 FirstWrite -1}
		index {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	search_0_ax { ap_memory {  { search_0_ax_address0 mem_address 1 5 }  { search_0_ax_ce0 mem_ce 1 1 }  { search_0_ax_we0 mem_we 1 1 }  { search_0_ax_d0 mem_din 1 32 }  { search_0_ax_q0 mem_dout 0 32 } } }
	search_0_po { ap_memory {  { search_0_po_address0 mem_address 1 5 }  { search_0_po_ce0 mem_ce 1 1 }  { search_0_po_we0 mem_we 1 1 }  { search_0_po_d0 mem_din 1 32 }  { search_0_po_q0 mem_dout 0 32 } } }
	search_0_parity { ap_memory {  { search_0_parity_address0 mem_address 1 5 }  { search_0_parity_ce0 mem_ce 1 1 }  { search_0_parity_we0 mem_we 1 1 }  { search_0_parity_d0 mem_din 1 32 }  { search_0_parity_q0 mem_dout 0 32 } } }
	search_0_URFtoDLF { ap_memory {  { search_0_URFtoDLF_address0 mem_address 1 5 }  { search_0_URFtoDLF_ce0 mem_ce 1 1 }  { search_0_URFtoDLF_we0 mem_we 1 1 }  { search_0_URFtoDLF_d0 mem_din 1 32 }  { search_0_URFtoDLF_q0 mem_dout 0 32 } } }
	search_0_FRtoBR { ap_memory {  { search_0_FRtoBR_address0 mem_address 1 5 }  { search_0_FRtoBR_ce0 mem_ce 1 1 }  { search_0_FRtoBR_we0 mem_we 1 1 }  { search_0_FRtoBR_d0 mem_din 1 32 }  { search_0_FRtoBR_q0 mem_dout 0 32 } } }
	search_0_URtoUL { ap_memory {  { search_0_URtoUL_address0 mem_address 1 5 }  { search_0_URtoUL_ce0 mem_ce 1 1 }  { search_0_URtoUL_we0 mem_we 1 1 }  { search_0_URtoUL_d0 mem_din 1 32 }  { search_0_URtoUL_q0 mem_dout 0 32 } } }
	search_0_UBtoDF { ap_memory {  { search_0_UBtoDF_address0 mem_address 1 5 }  { search_0_UBtoDF_ce0 mem_ce 1 1 }  { search_0_UBtoDF_we0 mem_we 1 1 }  { search_0_UBtoDF_d0 mem_din 1 32 }  { search_0_UBtoDF_q0 mem_dout 0 32 } } }
	depthPhase1 { ap_none {  { depthPhase1 in_data 0 32 } } }
	maxDepth { ap_none {  { maxDepth in_data 0 8 } } }
	FRtoBR_Move2 { m_axi {  { m_axi_FRtoBR_Move2_AWVALID VALID 1 1 }  { m_axi_FRtoBR_Move2_AWREADY READY 0 1 }  { m_axi_FRtoBR_Move2_AWADDR ADDR 1 32 }  { m_axi_FRtoBR_Move2_AWID ID 1 1 }  { m_axi_FRtoBR_Move2_AWLEN LEN 1 32 }  { m_axi_FRtoBR_Move2_AWSIZE SIZE 1 3 }  { m_axi_FRtoBR_Move2_AWBURST BURST 1 2 }  { m_axi_FRtoBR_Move2_AWLOCK LOCK 1 2 }  { m_axi_FRtoBR_Move2_AWCACHE CACHE 1 4 }  { m_axi_FRtoBR_Move2_AWPROT PROT 1 3 }  { m_axi_FRtoBR_Move2_AWQOS QOS 1 4 }  { m_axi_FRtoBR_Move2_AWREGION REGION 1 4 }  { m_axi_FRtoBR_Move2_AWUSER USER 1 1 }  { m_axi_FRtoBR_Move2_WVALID VALID 1 1 }  { m_axi_FRtoBR_Move2_WREADY READY 0 1 }  { m_axi_FRtoBR_Move2_WDATA DATA 1 16 }  { m_axi_FRtoBR_Move2_WSTRB STRB 1 2 }  { m_axi_FRtoBR_Move2_WLAST LAST 1 1 }  { m_axi_FRtoBR_Move2_WID ID 1 1 }  { m_axi_FRtoBR_Move2_WUSER USER 1 1 }  { m_axi_FRtoBR_Move2_ARVALID VALID 1 1 }  { m_axi_FRtoBR_Move2_ARREADY READY 0 1 }  { m_axi_FRtoBR_Move2_ARADDR ADDR 1 32 }  { m_axi_FRtoBR_Move2_ARID ID 1 1 }  { m_axi_FRtoBR_Move2_ARLEN LEN 1 32 }  { m_axi_FRtoBR_Move2_ARSIZE SIZE 1 3 }  { m_axi_FRtoBR_Move2_ARBURST BURST 1 2 }  { m_axi_FRtoBR_Move2_ARLOCK LOCK 1 2 }  { m_axi_FRtoBR_Move2_ARCACHE CACHE 1 4 }  { m_axi_FRtoBR_Move2_ARPROT PROT 1 3 }  { m_axi_FRtoBR_Move2_ARQOS QOS 1 4 }  { m_axi_FRtoBR_Move2_ARREGION REGION 1 4 }  { m_axi_FRtoBR_Move2_ARUSER USER 1 1 }  { m_axi_FRtoBR_Move2_RVALID VALID 0 1 }  { m_axi_FRtoBR_Move2_RREADY READY 1 1 }  { m_axi_FRtoBR_Move2_RDATA DATA 0 16 }  { m_axi_FRtoBR_Move2_RLAST LAST 0 1 }  { m_axi_FRtoBR_Move2_RID ID 0 1 }  { m_axi_FRtoBR_Move2_RUSER USER 0 1 }  { m_axi_FRtoBR_Move2_RRESP RESP 0 2 }  { m_axi_FRtoBR_Move2_BVALID VALID 0 1 }  { m_axi_FRtoBR_Move2_BREADY READY 1 1 }  { m_axi_FRtoBR_Move2_BRESP RESP 0 2 }  { m_axi_FRtoBR_Move2_BID ID 0 1 }  { m_axi_FRtoBR_Move2_BUSER USER 0 1 } } }
	FRtoBR_Move2_offset { ap_none {  { FRtoBR_Move2_offset in_data 0 31 } } }
	URFtoDLF_Move2_offset { ap_none {  { URFtoDLF_Move2_offset in_data 0 31 } } }
	URtoDF_Move2_offset { ap_none {  { URtoDF_Move2_offset in_data 0 31 } } }
	URtoUL_Move2_offset { ap_none {  { URtoUL_Move2_offset in_data 0 31 } } }
	UBtoDF_Move2_offset { ap_none {  { UBtoDF_Move2_offset in_data 0 31 } } }
	MergeURtoULandUBtoDF2_offset { ap_none {  { MergeURtoULandUBtoDF2_offset in_data 0 31 } } }
	Slice_URFtoDLF_Parity_Prun2_offset { ap_none {  { Slice_URFtoDLF_Parity_Prun2_offset in_data 0 31 } } }
	Slice_URtoDF_Parity_Prun2_offset { ap_none {  { Slice_URtoDF_Parity_Prun2_offset in_data 0 31 } } }
}
