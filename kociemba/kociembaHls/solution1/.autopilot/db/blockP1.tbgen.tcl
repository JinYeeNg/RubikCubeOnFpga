set moduleName blockP1
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
set C_modelName {blockP1}
set C_modelType { void 0 }
set C_modelArgList {
	{ flip int 16 regular  }
	{ twist int 16 regular  }
	{ slice int 16 regular  }
	{ P1Buffer_0_flip int 16 regular {array 8000 { 2 3 } 1 1 }  }
	{ P1Buffer_0_twist int 16 regular {array 8000 { 2 3 } 1 1 }  }
	{ P1Buffer_0_slice int 16 regular {array 8000 { 2 3 } 1 1 }  }
	{ P1Buffer_0_depthPha int 8 regular {array 8000 { 2 3 } 1 1 }  }
	{ P1Buffer_0_n int 8 regular {array 8000 { 2 3 } 1 1 }  }
	{ P1Buffer_0_i int 8 regular {array 248000 { 2 3 } 1 1 }  }
	{ depthPhase1 int 5 regular  }
	{ maxDepth int 8 regular  }
	{ URFtoDLF int 16 regular  }
	{ FRtoBR int 16 regular  }
	{ parity int 1 regular  }
	{ URtoUL int 16 regular  }
	{ UBtoDF int 16 regular  }
	{ P3Buffer_0_parity int 1 regular {array 1000 { 2 3 } 1 1 }  }
	{ P3Buffer_0_URFtoDLF int 16 regular {array 1000 { 2 3 } 1 1 }  }
	{ P3Buffer_0_FRtoBR int 16 regular {array 1000 { 2 3 } 1 1 }  }
	{ P3Buffer_0_URtoDF int 16 regular {array 1000 { 2 3 } 1 1 }  }
	{ P3Buffer_0_n int 8 regular {array 1000 { 2 3 } 1 1 }  }
	{ P3Buffer_0_i int 8 regular {array 31000 { 2 2 } 1 1 }  }
	{ encode_length int 8 regular {pointer 1}  }
	{ encode_array int 8 regular {array 30 { 0 } 0 1 }  }
	{ twistMove2 int 16 regular {axi_master 0}  }
	{ twistMove2_offset int 31 regular  }
	{ flipMove2 int 16 regular {axi_master 0}  }
	{ flipMove2_offset int 31 regular  }
	{ FRtoBR_Move2 int 16 regular {axi_master 0}  }
	{ FRtoBR_Move2_offset int 31 regular  }
	{ Slice_Twist_Prun2_offset int 31 regular  }
	{ Slice_Flip_Prun2_offset int 31 regular  }
	{ URFtoDLF_Move2_offset int 31 regular  }
	{ URtoDF_Move2_offset int 31 regular  }
	{ URtoUL_Move2_offset int 31 regular  }
	{ UBtoDF_Move2_offset int 31 regular  }
	{ MergeURtoULandUBtoDF2_offset int 31 regular  }
	{ Slice_URFtoDLF_Parity_Prun2_offset int 31 regular  }
	{ Slice_URtoDF_Parity_Prun2_offset int 31 regular  }
	{ a int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "flip", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "twist", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "slice", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "P1Buffer_0_flip", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "P1Buffer_0_twist", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "P1Buffer_0_slice", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "P1Buffer_0_depthPha", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "P1Buffer_0_n", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "P1Buffer_0_i", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "depthPhase1", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "maxDepth", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "URFtoDLF", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FRtoBR", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "parity", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "URtoUL", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "UBtoDF", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "P3Buffer_0_parity", "interface" : "memory", "bitwidth" : 1, "direction" : "READWRITE"} , 
 	{ "Name" : "P3Buffer_0_URFtoDLF", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "P3Buffer_0_FRtoBR", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "P3Buffer_0_URtoDF", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "P3Buffer_0_n", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "P3Buffer_0_i", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "encode_length", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "encode_array", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "twistMove2", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "twistMove2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "flipMove2", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "flipMove2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "FRtoBR_Move2", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FRtoBR_Move2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "Slice_Twist_Prun2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "Slice_Flip_Prun2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "URFtoDLF_Move2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "URtoDF_Move2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "URtoUL_Move2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "UBtoDF_Move2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "MergeURtoULandUBtoDF2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "Slice_URFtoDLF_Parity_Prun2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "Slice_URtoDF_Parity_Prun2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "a", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 237
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ flip sc_in sc_lv 16 signal 0 } 
	{ twist sc_in sc_lv 16 signal 1 } 
	{ slice sc_in sc_lv 16 signal 2 } 
	{ P1Buffer_0_flip_address0 sc_out sc_lv 13 signal 3 } 
	{ P1Buffer_0_flip_ce0 sc_out sc_logic 1 signal 3 } 
	{ P1Buffer_0_flip_we0 sc_out sc_logic 1 signal 3 } 
	{ P1Buffer_0_flip_d0 sc_out sc_lv 16 signal 3 } 
	{ P1Buffer_0_flip_q0 sc_in sc_lv 16 signal 3 } 
	{ P1Buffer_0_twist_address0 sc_out sc_lv 13 signal 4 } 
	{ P1Buffer_0_twist_ce0 sc_out sc_logic 1 signal 4 } 
	{ P1Buffer_0_twist_we0 sc_out sc_logic 1 signal 4 } 
	{ P1Buffer_0_twist_d0 sc_out sc_lv 16 signal 4 } 
	{ P1Buffer_0_twist_q0 sc_in sc_lv 16 signal 4 } 
	{ P1Buffer_0_slice_address0 sc_out sc_lv 13 signal 5 } 
	{ P1Buffer_0_slice_ce0 sc_out sc_logic 1 signal 5 } 
	{ P1Buffer_0_slice_we0 sc_out sc_logic 1 signal 5 } 
	{ P1Buffer_0_slice_d0 sc_out sc_lv 16 signal 5 } 
	{ P1Buffer_0_slice_q0 sc_in sc_lv 16 signal 5 } 
	{ P1Buffer_0_depthPha_address0 sc_out sc_lv 13 signal 6 } 
	{ P1Buffer_0_depthPha_ce0 sc_out sc_logic 1 signal 6 } 
	{ P1Buffer_0_depthPha_we0 sc_out sc_logic 1 signal 6 } 
	{ P1Buffer_0_depthPha_d0 sc_out sc_lv 8 signal 6 } 
	{ P1Buffer_0_depthPha_q0 sc_in sc_lv 8 signal 6 } 
	{ P1Buffer_0_n_address0 sc_out sc_lv 13 signal 7 } 
	{ P1Buffer_0_n_ce0 sc_out sc_logic 1 signal 7 } 
	{ P1Buffer_0_n_we0 sc_out sc_logic 1 signal 7 } 
	{ P1Buffer_0_n_d0 sc_out sc_lv 8 signal 7 } 
	{ P1Buffer_0_n_q0 sc_in sc_lv 8 signal 7 } 
	{ P1Buffer_0_i_address0 sc_out sc_lv 18 signal 8 } 
	{ P1Buffer_0_i_ce0 sc_out sc_logic 1 signal 8 } 
	{ P1Buffer_0_i_we0 sc_out sc_logic 1 signal 8 } 
	{ P1Buffer_0_i_d0 sc_out sc_lv 8 signal 8 } 
	{ P1Buffer_0_i_q0 sc_in sc_lv 8 signal 8 } 
	{ depthPhase1 sc_in sc_lv 5 signal 9 } 
	{ maxDepth sc_in sc_lv 8 signal 10 } 
	{ URFtoDLF sc_in sc_lv 16 signal 11 } 
	{ FRtoBR sc_in sc_lv 16 signal 12 } 
	{ parity sc_in sc_logic 1 signal 13 } 
	{ URtoUL sc_in sc_lv 16 signal 14 } 
	{ UBtoDF sc_in sc_lv 16 signal 15 } 
	{ P3Buffer_0_parity_address0 sc_out sc_lv 10 signal 16 } 
	{ P3Buffer_0_parity_ce0 sc_out sc_logic 1 signal 16 } 
	{ P3Buffer_0_parity_we0 sc_out sc_logic 1 signal 16 } 
	{ P3Buffer_0_parity_d0 sc_out sc_lv 1 signal 16 } 
	{ P3Buffer_0_parity_q0 sc_in sc_lv 1 signal 16 } 
	{ P3Buffer_0_URFtoDLF_address0 sc_out sc_lv 10 signal 17 } 
	{ P3Buffer_0_URFtoDLF_ce0 sc_out sc_logic 1 signal 17 } 
	{ P3Buffer_0_URFtoDLF_we0 sc_out sc_logic 1 signal 17 } 
	{ P3Buffer_0_URFtoDLF_d0 sc_out sc_lv 16 signal 17 } 
	{ P3Buffer_0_URFtoDLF_q0 sc_in sc_lv 16 signal 17 } 
	{ P3Buffer_0_FRtoBR_address0 sc_out sc_lv 10 signal 18 } 
	{ P3Buffer_0_FRtoBR_ce0 sc_out sc_logic 1 signal 18 } 
	{ P3Buffer_0_FRtoBR_we0 sc_out sc_logic 1 signal 18 } 
	{ P3Buffer_0_FRtoBR_d0 sc_out sc_lv 16 signal 18 } 
	{ P3Buffer_0_FRtoBR_q0 sc_in sc_lv 16 signal 18 } 
	{ P3Buffer_0_URtoDF_address0 sc_out sc_lv 10 signal 19 } 
	{ P3Buffer_0_URtoDF_ce0 sc_out sc_logic 1 signal 19 } 
	{ P3Buffer_0_URtoDF_we0 sc_out sc_logic 1 signal 19 } 
	{ P3Buffer_0_URtoDF_d0 sc_out sc_lv 16 signal 19 } 
	{ P3Buffer_0_URtoDF_q0 sc_in sc_lv 16 signal 19 } 
	{ P3Buffer_0_n_address0 sc_out sc_lv 10 signal 20 } 
	{ P3Buffer_0_n_ce0 sc_out sc_logic 1 signal 20 } 
	{ P3Buffer_0_n_we0 sc_out sc_logic 1 signal 20 } 
	{ P3Buffer_0_n_d0 sc_out sc_lv 8 signal 20 } 
	{ P3Buffer_0_n_q0 sc_in sc_lv 8 signal 20 } 
	{ P3Buffer_0_i_address0 sc_out sc_lv 15 signal 21 } 
	{ P3Buffer_0_i_ce0 sc_out sc_logic 1 signal 21 } 
	{ P3Buffer_0_i_we0 sc_out sc_logic 1 signal 21 } 
	{ P3Buffer_0_i_d0 sc_out sc_lv 8 signal 21 } 
	{ P3Buffer_0_i_q0 sc_in sc_lv 8 signal 21 } 
	{ P3Buffer_0_i_address1 sc_out sc_lv 15 signal 21 } 
	{ P3Buffer_0_i_ce1 sc_out sc_logic 1 signal 21 } 
	{ P3Buffer_0_i_we1 sc_out sc_logic 1 signal 21 } 
	{ P3Buffer_0_i_d1 sc_out sc_lv 8 signal 21 } 
	{ P3Buffer_0_i_q1 sc_in sc_lv 8 signal 21 } 
	{ encode_length sc_out sc_lv 8 signal 22 } 
	{ encode_length_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ encode_array_address0 sc_out sc_lv 5 signal 23 } 
	{ encode_array_ce0 sc_out sc_logic 1 signal 23 } 
	{ encode_array_we0 sc_out sc_logic 1 signal 23 } 
	{ encode_array_d0 sc_out sc_lv 8 signal 23 } 
	{ m_axi_twistMove2_AWVALID sc_out sc_logic 1 signal 24 } 
	{ m_axi_twistMove2_AWREADY sc_in sc_logic 1 signal 24 } 
	{ m_axi_twistMove2_AWADDR sc_out sc_lv 32 signal 24 } 
	{ m_axi_twistMove2_AWID sc_out sc_lv 1 signal 24 } 
	{ m_axi_twistMove2_AWLEN sc_out sc_lv 32 signal 24 } 
	{ m_axi_twistMove2_AWSIZE sc_out sc_lv 3 signal 24 } 
	{ m_axi_twistMove2_AWBURST sc_out sc_lv 2 signal 24 } 
	{ m_axi_twistMove2_AWLOCK sc_out sc_lv 2 signal 24 } 
	{ m_axi_twistMove2_AWCACHE sc_out sc_lv 4 signal 24 } 
	{ m_axi_twistMove2_AWPROT sc_out sc_lv 3 signal 24 } 
	{ m_axi_twistMove2_AWQOS sc_out sc_lv 4 signal 24 } 
	{ m_axi_twistMove2_AWREGION sc_out sc_lv 4 signal 24 } 
	{ m_axi_twistMove2_AWUSER sc_out sc_lv 1 signal 24 } 
	{ m_axi_twistMove2_WVALID sc_out sc_logic 1 signal 24 } 
	{ m_axi_twistMove2_WREADY sc_in sc_logic 1 signal 24 } 
	{ m_axi_twistMove2_WDATA sc_out sc_lv 16 signal 24 } 
	{ m_axi_twistMove2_WSTRB sc_out sc_lv 2 signal 24 } 
	{ m_axi_twistMove2_WLAST sc_out sc_logic 1 signal 24 } 
	{ m_axi_twistMove2_WID sc_out sc_lv 1 signal 24 } 
	{ m_axi_twistMove2_WUSER sc_out sc_lv 1 signal 24 } 
	{ m_axi_twistMove2_ARVALID sc_out sc_logic 1 signal 24 } 
	{ m_axi_twistMove2_ARREADY sc_in sc_logic 1 signal 24 } 
	{ m_axi_twistMove2_ARADDR sc_out sc_lv 32 signal 24 } 
	{ m_axi_twistMove2_ARID sc_out sc_lv 1 signal 24 } 
	{ m_axi_twistMove2_ARLEN sc_out sc_lv 32 signal 24 } 
	{ m_axi_twistMove2_ARSIZE sc_out sc_lv 3 signal 24 } 
	{ m_axi_twistMove2_ARBURST sc_out sc_lv 2 signal 24 } 
	{ m_axi_twistMove2_ARLOCK sc_out sc_lv 2 signal 24 } 
	{ m_axi_twistMove2_ARCACHE sc_out sc_lv 4 signal 24 } 
	{ m_axi_twistMove2_ARPROT sc_out sc_lv 3 signal 24 } 
	{ m_axi_twistMove2_ARQOS sc_out sc_lv 4 signal 24 } 
	{ m_axi_twistMove2_ARREGION sc_out sc_lv 4 signal 24 } 
	{ m_axi_twistMove2_ARUSER sc_out sc_lv 1 signal 24 } 
	{ m_axi_twistMove2_RVALID sc_in sc_logic 1 signal 24 } 
	{ m_axi_twistMove2_RREADY sc_out sc_logic 1 signal 24 } 
	{ m_axi_twistMove2_RDATA sc_in sc_lv 16 signal 24 } 
	{ m_axi_twistMove2_RLAST sc_in sc_logic 1 signal 24 } 
	{ m_axi_twistMove2_RID sc_in sc_lv 1 signal 24 } 
	{ m_axi_twistMove2_RUSER sc_in sc_lv 1 signal 24 } 
	{ m_axi_twistMove2_RRESP sc_in sc_lv 2 signal 24 } 
	{ m_axi_twistMove2_BVALID sc_in sc_logic 1 signal 24 } 
	{ m_axi_twistMove2_BREADY sc_out sc_logic 1 signal 24 } 
	{ m_axi_twistMove2_BRESP sc_in sc_lv 2 signal 24 } 
	{ m_axi_twistMove2_BID sc_in sc_lv 1 signal 24 } 
	{ m_axi_twistMove2_BUSER sc_in sc_lv 1 signal 24 } 
	{ twistMove2_offset sc_in sc_lv 31 signal 25 } 
	{ m_axi_flipMove2_AWVALID sc_out sc_logic 1 signal 26 } 
	{ m_axi_flipMove2_AWREADY sc_in sc_logic 1 signal 26 } 
	{ m_axi_flipMove2_AWADDR sc_out sc_lv 32 signal 26 } 
	{ m_axi_flipMove2_AWID sc_out sc_lv 1 signal 26 } 
	{ m_axi_flipMove2_AWLEN sc_out sc_lv 32 signal 26 } 
	{ m_axi_flipMove2_AWSIZE sc_out sc_lv 3 signal 26 } 
	{ m_axi_flipMove2_AWBURST sc_out sc_lv 2 signal 26 } 
	{ m_axi_flipMove2_AWLOCK sc_out sc_lv 2 signal 26 } 
	{ m_axi_flipMove2_AWCACHE sc_out sc_lv 4 signal 26 } 
	{ m_axi_flipMove2_AWPROT sc_out sc_lv 3 signal 26 } 
	{ m_axi_flipMove2_AWQOS sc_out sc_lv 4 signal 26 } 
	{ m_axi_flipMove2_AWREGION sc_out sc_lv 4 signal 26 } 
	{ m_axi_flipMove2_AWUSER sc_out sc_lv 1 signal 26 } 
	{ m_axi_flipMove2_WVALID sc_out sc_logic 1 signal 26 } 
	{ m_axi_flipMove2_WREADY sc_in sc_logic 1 signal 26 } 
	{ m_axi_flipMove2_WDATA sc_out sc_lv 16 signal 26 } 
	{ m_axi_flipMove2_WSTRB sc_out sc_lv 2 signal 26 } 
	{ m_axi_flipMove2_WLAST sc_out sc_logic 1 signal 26 } 
	{ m_axi_flipMove2_WID sc_out sc_lv 1 signal 26 } 
	{ m_axi_flipMove2_WUSER sc_out sc_lv 1 signal 26 } 
	{ m_axi_flipMove2_ARVALID sc_out sc_logic 1 signal 26 } 
	{ m_axi_flipMove2_ARREADY sc_in sc_logic 1 signal 26 } 
	{ m_axi_flipMove2_ARADDR sc_out sc_lv 32 signal 26 } 
	{ m_axi_flipMove2_ARID sc_out sc_lv 1 signal 26 } 
	{ m_axi_flipMove2_ARLEN sc_out sc_lv 32 signal 26 } 
	{ m_axi_flipMove2_ARSIZE sc_out sc_lv 3 signal 26 } 
	{ m_axi_flipMove2_ARBURST sc_out sc_lv 2 signal 26 } 
	{ m_axi_flipMove2_ARLOCK sc_out sc_lv 2 signal 26 } 
	{ m_axi_flipMove2_ARCACHE sc_out sc_lv 4 signal 26 } 
	{ m_axi_flipMove2_ARPROT sc_out sc_lv 3 signal 26 } 
	{ m_axi_flipMove2_ARQOS sc_out sc_lv 4 signal 26 } 
	{ m_axi_flipMove2_ARREGION sc_out sc_lv 4 signal 26 } 
	{ m_axi_flipMove2_ARUSER sc_out sc_lv 1 signal 26 } 
	{ m_axi_flipMove2_RVALID sc_in sc_logic 1 signal 26 } 
	{ m_axi_flipMove2_RREADY sc_out sc_logic 1 signal 26 } 
	{ m_axi_flipMove2_RDATA sc_in sc_lv 16 signal 26 } 
	{ m_axi_flipMove2_RLAST sc_in sc_logic 1 signal 26 } 
	{ m_axi_flipMove2_RID sc_in sc_lv 1 signal 26 } 
	{ m_axi_flipMove2_RUSER sc_in sc_lv 1 signal 26 } 
	{ m_axi_flipMove2_RRESP sc_in sc_lv 2 signal 26 } 
	{ m_axi_flipMove2_BVALID sc_in sc_logic 1 signal 26 } 
	{ m_axi_flipMove2_BREADY sc_out sc_logic 1 signal 26 } 
	{ m_axi_flipMove2_BRESP sc_in sc_lv 2 signal 26 } 
	{ m_axi_flipMove2_BID sc_in sc_lv 1 signal 26 } 
	{ m_axi_flipMove2_BUSER sc_in sc_lv 1 signal 26 } 
	{ flipMove2_offset sc_in sc_lv 31 signal 27 } 
	{ m_axi_FRtoBR_Move2_AWVALID sc_out sc_logic 1 signal 28 } 
	{ m_axi_FRtoBR_Move2_AWREADY sc_in sc_logic 1 signal 28 } 
	{ m_axi_FRtoBR_Move2_AWADDR sc_out sc_lv 32 signal 28 } 
	{ m_axi_FRtoBR_Move2_AWID sc_out sc_lv 1 signal 28 } 
	{ m_axi_FRtoBR_Move2_AWLEN sc_out sc_lv 32 signal 28 } 
	{ m_axi_FRtoBR_Move2_AWSIZE sc_out sc_lv 3 signal 28 } 
	{ m_axi_FRtoBR_Move2_AWBURST sc_out sc_lv 2 signal 28 } 
	{ m_axi_FRtoBR_Move2_AWLOCK sc_out sc_lv 2 signal 28 } 
	{ m_axi_FRtoBR_Move2_AWCACHE sc_out sc_lv 4 signal 28 } 
	{ m_axi_FRtoBR_Move2_AWPROT sc_out sc_lv 3 signal 28 } 
	{ m_axi_FRtoBR_Move2_AWQOS sc_out sc_lv 4 signal 28 } 
	{ m_axi_FRtoBR_Move2_AWREGION sc_out sc_lv 4 signal 28 } 
	{ m_axi_FRtoBR_Move2_AWUSER sc_out sc_lv 1 signal 28 } 
	{ m_axi_FRtoBR_Move2_WVALID sc_out sc_logic 1 signal 28 } 
	{ m_axi_FRtoBR_Move2_WREADY sc_in sc_logic 1 signal 28 } 
	{ m_axi_FRtoBR_Move2_WDATA sc_out sc_lv 16 signal 28 } 
	{ m_axi_FRtoBR_Move2_WSTRB sc_out sc_lv 2 signal 28 } 
	{ m_axi_FRtoBR_Move2_WLAST sc_out sc_logic 1 signal 28 } 
	{ m_axi_FRtoBR_Move2_WID sc_out sc_lv 1 signal 28 } 
	{ m_axi_FRtoBR_Move2_WUSER sc_out sc_lv 1 signal 28 } 
	{ m_axi_FRtoBR_Move2_ARVALID sc_out sc_logic 1 signal 28 } 
	{ m_axi_FRtoBR_Move2_ARREADY sc_in sc_logic 1 signal 28 } 
	{ m_axi_FRtoBR_Move2_ARADDR sc_out sc_lv 32 signal 28 } 
	{ m_axi_FRtoBR_Move2_ARID sc_out sc_lv 1 signal 28 } 
	{ m_axi_FRtoBR_Move2_ARLEN sc_out sc_lv 32 signal 28 } 
	{ m_axi_FRtoBR_Move2_ARSIZE sc_out sc_lv 3 signal 28 } 
	{ m_axi_FRtoBR_Move2_ARBURST sc_out sc_lv 2 signal 28 } 
	{ m_axi_FRtoBR_Move2_ARLOCK sc_out sc_lv 2 signal 28 } 
	{ m_axi_FRtoBR_Move2_ARCACHE sc_out sc_lv 4 signal 28 } 
	{ m_axi_FRtoBR_Move2_ARPROT sc_out sc_lv 3 signal 28 } 
	{ m_axi_FRtoBR_Move2_ARQOS sc_out sc_lv 4 signal 28 } 
	{ m_axi_FRtoBR_Move2_ARREGION sc_out sc_lv 4 signal 28 } 
	{ m_axi_FRtoBR_Move2_ARUSER sc_out sc_lv 1 signal 28 } 
	{ m_axi_FRtoBR_Move2_RVALID sc_in sc_logic 1 signal 28 } 
	{ m_axi_FRtoBR_Move2_RREADY sc_out sc_logic 1 signal 28 } 
	{ m_axi_FRtoBR_Move2_RDATA sc_in sc_lv 16 signal 28 } 
	{ m_axi_FRtoBR_Move2_RLAST sc_in sc_logic 1 signal 28 } 
	{ m_axi_FRtoBR_Move2_RID sc_in sc_lv 1 signal 28 } 
	{ m_axi_FRtoBR_Move2_RUSER sc_in sc_lv 1 signal 28 } 
	{ m_axi_FRtoBR_Move2_RRESP sc_in sc_lv 2 signal 28 } 
	{ m_axi_FRtoBR_Move2_BVALID sc_in sc_logic 1 signal 28 } 
	{ m_axi_FRtoBR_Move2_BREADY sc_out sc_logic 1 signal 28 } 
	{ m_axi_FRtoBR_Move2_BRESP sc_in sc_lv 2 signal 28 } 
	{ m_axi_FRtoBR_Move2_BID sc_in sc_lv 1 signal 28 } 
	{ m_axi_FRtoBR_Move2_BUSER sc_in sc_lv 1 signal 28 } 
	{ FRtoBR_Move2_offset sc_in sc_lv 31 signal 29 } 
	{ Slice_Twist_Prun2_offset sc_in sc_lv 31 signal 30 } 
	{ Slice_Flip_Prun2_offset sc_in sc_lv 31 signal 31 } 
	{ URFtoDLF_Move2_offset sc_in sc_lv 31 signal 32 } 
	{ URtoDF_Move2_offset sc_in sc_lv 31 signal 33 } 
	{ URtoUL_Move2_offset sc_in sc_lv 31 signal 34 } 
	{ UBtoDF_Move2_offset sc_in sc_lv 31 signal 35 } 
	{ MergeURtoULandUBtoDF2_offset sc_in sc_lv 31 signal 36 } 
	{ Slice_URFtoDLF_Parity_Prun2_offset sc_in sc_lv 31 signal 37 } 
	{ Slice_URtoDF_Parity_Prun2_offset sc_in sc_lv 31 signal 38 } 
	{ a_i sc_in sc_lv 32 signal 39 } 
	{ a_o sc_out sc_lv 32 signal 39 } 
	{ a_o_ap_vld sc_out sc_logic 1 outvld 39 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "flip", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "flip", "role": "default" }} , 
 	{ "name": "twist", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "twist", "role": "default" }} , 
 	{ "name": "slice", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "slice", "role": "default" }} , 
 	{ "name": "P1Buffer_0_flip_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P1Buffer_0_flip", "role": "address0" }} , 
 	{ "name": "P1Buffer_0_flip_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_flip", "role": "ce0" }} , 
 	{ "name": "P1Buffer_0_flip_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_flip", "role": "we0" }} , 
 	{ "name": "P1Buffer_0_flip_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P1Buffer_0_flip", "role": "d0" }} , 
 	{ "name": "P1Buffer_0_flip_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P1Buffer_0_flip", "role": "q0" }} , 
 	{ "name": "P1Buffer_0_twist_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P1Buffer_0_twist", "role": "address0" }} , 
 	{ "name": "P1Buffer_0_twist_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_twist", "role": "ce0" }} , 
 	{ "name": "P1Buffer_0_twist_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_twist", "role": "we0" }} , 
 	{ "name": "P1Buffer_0_twist_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P1Buffer_0_twist", "role": "d0" }} , 
 	{ "name": "P1Buffer_0_twist_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P1Buffer_0_twist", "role": "q0" }} , 
 	{ "name": "P1Buffer_0_slice_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P1Buffer_0_slice", "role": "address0" }} , 
 	{ "name": "P1Buffer_0_slice_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_slice", "role": "ce0" }} , 
 	{ "name": "P1Buffer_0_slice_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_slice", "role": "we0" }} , 
 	{ "name": "P1Buffer_0_slice_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P1Buffer_0_slice", "role": "d0" }} , 
 	{ "name": "P1Buffer_0_slice_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P1Buffer_0_slice", "role": "q0" }} , 
 	{ "name": "P1Buffer_0_depthPha_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P1Buffer_0_depthPha", "role": "address0" }} , 
 	{ "name": "P1Buffer_0_depthPha_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_depthPha", "role": "ce0" }} , 
 	{ "name": "P1Buffer_0_depthPha_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_depthPha", "role": "we0" }} , 
 	{ "name": "P1Buffer_0_depthPha_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P1Buffer_0_depthPha", "role": "d0" }} , 
 	{ "name": "P1Buffer_0_depthPha_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P1Buffer_0_depthPha", "role": "q0" }} , 
 	{ "name": "P1Buffer_0_n_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P1Buffer_0_n", "role": "address0" }} , 
 	{ "name": "P1Buffer_0_n_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_n", "role": "ce0" }} , 
 	{ "name": "P1Buffer_0_n_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_n", "role": "we0" }} , 
 	{ "name": "P1Buffer_0_n_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P1Buffer_0_n", "role": "d0" }} , 
 	{ "name": "P1Buffer_0_n_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P1Buffer_0_n", "role": "q0" }} , 
 	{ "name": "P1Buffer_0_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "P1Buffer_0_i", "role": "address0" }} , 
 	{ "name": "P1Buffer_0_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_i", "role": "ce0" }} , 
 	{ "name": "P1Buffer_0_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_i", "role": "we0" }} , 
 	{ "name": "P1Buffer_0_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P1Buffer_0_i", "role": "d0" }} , 
 	{ "name": "P1Buffer_0_i_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P1Buffer_0_i", "role": "q0" }} , 
 	{ "name": "depthPhase1", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "depthPhase1", "role": "default" }} , 
 	{ "name": "maxDepth", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "maxDepth", "role": "default" }} , 
 	{ "name": "URFtoDLF", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "URFtoDLF", "role": "default" }} , 
 	{ "name": "FRtoBR", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FRtoBR", "role": "default" }} , 
 	{ "name": "parity", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parity", "role": "default" }} , 
 	{ "name": "URtoUL", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "URtoUL", "role": "default" }} , 
 	{ "name": "UBtoDF", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "UBtoDF", "role": "default" }} , 
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
 	{ "name": "encode_length", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "encode_length", "role": "default" }} , 
 	{ "name": "encode_length_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "encode_length", "role": "ap_vld" }} , 
 	{ "name": "encode_array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "encode_array", "role": "address0" }} , 
 	{ "name": "encode_array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "encode_array", "role": "ce0" }} , 
 	{ "name": "encode_array_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "encode_array", "role": "we0" }} , 
 	{ "name": "encode_array_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "encode_array", "role": "d0" }} , 
 	{ "name": "m_axi_twistMove2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_twistMove2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_twistMove2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_twistMove2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWID" }} , 
 	{ "name": "m_axi_twistMove2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_twistMove2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_twistMove2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_twistMove2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_twistMove2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_twistMove2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_twistMove2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_twistMove2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_twistMove2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_twistMove2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "WVALID" }} , 
 	{ "name": "m_axi_twistMove2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "WREADY" }} , 
 	{ "name": "m_axi_twistMove2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "twistMove2", "role": "WDATA" }} , 
 	{ "name": "m_axi_twistMove2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "twistMove2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_twistMove2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "WLAST" }} , 
 	{ "name": "m_axi_twistMove2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "WID" }} , 
 	{ "name": "m_axi_twistMove2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "WUSER" }} , 
 	{ "name": "m_axi_twistMove2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_twistMove2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_twistMove2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_twistMove2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARID" }} , 
 	{ "name": "m_axi_twistMove2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_twistMove2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_twistMove2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_twistMove2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_twistMove2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_twistMove2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_twistMove2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_twistMove2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_twistMove2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_twistMove2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "RVALID" }} , 
 	{ "name": "m_axi_twistMove2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "RREADY" }} , 
 	{ "name": "m_axi_twistMove2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "twistMove2", "role": "RDATA" }} , 
 	{ "name": "m_axi_twistMove2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "RLAST" }} , 
 	{ "name": "m_axi_twistMove2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "RID" }} , 
 	{ "name": "m_axi_twistMove2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "RUSER" }} , 
 	{ "name": "m_axi_twistMove2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "twistMove2", "role": "RRESP" }} , 
 	{ "name": "m_axi_twistMove2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "BVALID" }} , 
 	{ "name": "m_axi_twistMove2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "BREADY" }} , 
 	{ "name": "m_axi_twistMove2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "twistMove2", "role": "BRESP" }} , 
 	{ "name": "m_axi_twistMove2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "BID" }} , 
 	{ "name": "m_axi_twistMove2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "BUSER" }} , 
 	{ "name": "twistMove2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "twistMove2_offset", "role": "default" }} , 
 	{ "name": "m_axi_flipMove2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_flipMove2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_flipMove2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_flipMove2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWID" }} , 
 	{ "name": "m_axi_flipMove2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_flipMove2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_flipMove2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_flipMove2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_flipMove2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_flipMove2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_flipMove2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_flipMove2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_flipMove2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_flipMove2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "WVALID" }} , 
 	{ "name": "m_axi_flipMove2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "WREADY" }} , 
 	{ "name": "m_axi_flipMove2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "flipMove2", "role": "WDATA" }} , 
 	{ "name": "m_axi_flipMove2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "flipMove2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_flipMove2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "WLAST" }} , 
 	{ "name": "m_axi_flipMove2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "WID" }} , 
 	{ "name": "m_axi_flipMove2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "WUSER" }} , 
 	{ "name": "m_axi_flipMove2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_flipMove2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_flipMove2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_flipMove2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARID" }} , 
 	{ "name": "m_axi_flipMove2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_flipMove2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_flipMove2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_flipMove2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_flipMove2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_flipMove2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_flipMove2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_flipMove2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_flipMove2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_flipMove2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "RVALID" }} , 
 	{ "name": "m_axi_flipMove2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "RREADY" }} , 
 	{ "name": "m_axi_flipMove2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "flipMove2", "role": "RDATA" }} , 
 	{ "name": "m_axi_flipMove2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "RLAST" }} , 
 	{ "name": "m_axi_flipMove2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "RID" }} , 
 	{ "name": "m_axi_flipMove2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "RUSER" }} , 
 	{ "name": "m_axi_flipMove2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "flipMove2", "role": "RRESP" }} , 
 	{ "name": "m_axi_flipMove2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "BVALID" }} , 
 	{ "name": "m_axi_flipMove2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "BREADY" }} , 
 	{ "name": "m_axi_flipMove2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "flipMove2", "role": "BRESP" }} , 
 	{ "name": "m_axi_flipMove2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "BID" }} , 
 	{ "name": "m_axi_flipMove2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "BUSER" }} , 
 	{ "name": "flipMove2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "flipMove2_offset", "role": "default" }} , 
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
 	{ "name": "Slice_Twist_Prun2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "Slice_Twist_Prun2_offset", "role": "default" }} , 
 	{ "name": "Slice_Flip_Prun2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "Slice_Flip_Prun2_offset", "role": "default" }} , 
 	{ "name": "URFtoDLF_Move2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "URFtoDLF_Move2_offset", "role": "default" }} , 
 	{ "name": "URtoDF_Move2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "URtoDF_Move2_offset", "role": "default" }} , 
 	{ "name": "URtoUL_Move2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "URtoUL_Move2_offset", "role": "default" }} , 
 	{ "name": "UBtoDF_Move2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "UBtoDF_Move2_offset", "role": "default" }} , 
 	{ "name": "MergeURtoULandUBtoDF2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "MergeURtoULandUBtoDF2_offset", "role": "default" }} , 
 	{ "name": "Slice_URFtoDLF_Parity_Prun2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "Slice_URFtoDLF_Parity_Prun2_offset", "role": "default" }} , 
 	{ "name": "Slice_URtoDF_Parity_Prun2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "Slice_URtoDF_Parity_Prun2_offset", "role": "default" }} , 
 	{ "name": "a_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "i" }} , 
 	{ "name": "a_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "o" }} , 
 	{ "name": "a_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "a", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "19", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71"],
		"CDFG" : "blockP1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "303944237568077",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_blockP2_fu_1316"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_parallel_v2_fu_1456"}],
		"Port" : [
			{"Name" : "flip", "Type" : "None", "Direction" : "I"},
			{"Name" : "twist", "Type" : "None", "Direction" : "I"},
			{"Name" : "slice", "Type" : "None", "Direction" : "I"},
			{"Name" : "P1Buffer_0_flip", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P1Buffer_0_flip"}]},
			{"Name" : "P1Buffer_0_twist", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P1Buffer_0_twist"}]},
			{"Name" : "P1Buffer_0_slice", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P1Buffer_0_slice"}]},
			{"Name" : "P1Buffer_0_depthPha", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P1Buffer_0_depthPha"}]},
			{"Name" : "P1Buffer_0_n", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P1Buffer_0_n"}]},
			{"Name" : "P1Buffer_0_i", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P1Buffer_0_i"}]},
			{"Name" : "depthPhase1", "Type" : "None", "Direction" : "I"},
			{"Name" : "maxDepth", "Type" : "None", "Direction" : "I"},
			{"Name" : "URFtoDLF", "Type" : "None", "Direction" : "I"},
			{"Name" : "FRtoBR", "Type" : "None", "Direction" : "I"},
			{"Name" : "parity", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoUL", "Type" : "None", "Direction" : "I"},
			{"Name" : "UBtoDF", "Type" : "None", "Direction" : "I"},
			{"Name" : "P3Buffer_0_parity", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P3Buffer_0_parity"}]},
			{"Name" : "P3Buffer_0_URFtoDLF", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P3Buffer_0_URFtoDLF"}]},
			{"Name" : "P3Buffer_0_FRtoBR", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P3Buffer_0_FRtoBR"}]},
			{"Name" : "P3Buffer_0_URtoDF", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P3Buffer_0_URtoDF"}]},
			{"Name" : "P3Buffer_0_n", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P3Buffer_0_n"}]},
			{"Name" : "P3Buffer_0_i", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P3Buffer_0_i"}]},
			{"Name" : "encode_length", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "encode_length"}]},
			{"Name" : "encode_array", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "encode_array"}]},
			{"Name" : "twistMove2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "twistMove2"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "URFtoDLF_Move2"}]},
			{"Name" : "twistMove2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "flipMove2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "flipMove2"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "URtoDF_Move2"}]},
			{"Name" : "flipMove2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "FRtoBR_Move2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "FRtoBR_Move2"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "FRtoBR_Move2"}]},
			{"Name" : "FRtoBR_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_Twist_Prun2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_Flip_Prun2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URFtoDLF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoDF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoUL_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "UBtoDF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "MergeURtoULandUBtoDF2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_URFtoDLF_Parity_Prun2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_URtoDF_Parity_Prun2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "label_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "label_0"}]},
			{"Name" : "label_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "label_1"}]},
			{"Name" : "a", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "a"}]},
			{"Name" : "twistOld", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "twistOld"}]},
			{"Name" : "flipOld", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "flipOld"}]},
			{"Name" : "sliceOld", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "sliceOld"}]},
			{"Name" : "twistMove3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "twistMove3"}]},
			{"Name" : "flipMove3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "flipMove3"}]},
			{"Name" : "FRtoBR_Move3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "FRtoBR_Move3"}]},
			{"Name" : "P2Buffer_V_flip", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_flip"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_flip"}]},
			{"Name" : "P2Buffer_V_twist", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_twist"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_twist"}]},
			{"Name" : "P2Buffer_V_slice", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_slice"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_slice"}]},
			{"Name" : "P2Buffer_V_parity", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_parity"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_parity"}]},
			{"Name" : "P2Buffer_V_URFtoDLF", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_URFtoDLF"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_URFtoDLF"}]},
			{"Name" : "P2Buffer_V_FRtoBR", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_FRtoBR"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_FRtoBR"}]},
			{"Name" : "P2Buffer_V_URtoDF", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_URtoDF"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_URtoDF"}]},
			{"Name" : "P2Buffer_V_depthPhas", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_depthPhas"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_depthPhas"}]},
			{"Name" : "P2Buffer_V_n", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_n"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_n"}]},
			{"Name" : "P2Buffer_V_i_0", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_0"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_0"}]},
			{"Name" : "P2Buffer_V_i_1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_1"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_1"}]},
			{"Name" : "P2Buffer_V_i_2", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_2"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_2"}]},
			{"Name" : "P2Buffer_V_i_3", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_3"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_3"}]},
			{"Name" : "P2Buffer_V_i_4", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_4"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_4"}]},
			{"Name" : "P2Buffer_V_i_5", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_5"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_5"}]},
			{"Name" : "P2Buffer_V_i_6", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_6"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_6"}]},
			{"Name" : "P2Buffer_V_i_7", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_7"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_7"}]},
			{"Name" : "P2Buffer_V_i_8", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_8"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_8"}]},
			{"Name" : "P2Buffer_V_i_9", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_9"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_9"}]},
			{"Name" : "P2Buffer_V_i_10", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_10"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_10"}]},
			{"Name" : "P2Buffer_V_i_11", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_11"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_11"}]},
			{"Name" : "P2Buffer_V_i_12", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_12"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_12"}]},
			{"Name" : "P2Buffer_V_i_13", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_13"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_13"}]},
			{"Name" : "P2Buffer_V_i_14", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_14"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_14"}]},
			{"Name" : "P2Buffer_V_i_15", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_15"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_15"}]},
			{"Name" : "P2Buffer_V_i_16", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_16"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_16"}]},
			{"Name" : "P2Buffer_V_i_17", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_17"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_17"}]},
			{"Name" : "P2Buffer_V_i_18", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_18"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_18"}]},
			{"Name" : "P2Buffer_V_i_19", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_19"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_19"}]},
			{"Name" : "P2Buffer_V_i_20", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_20"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_20"}]},
			{"Name" : "P2Buffer_V_i_21", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_21"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_21"}]},
			{"Name" : "P2Buffer_V_i_22", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_22"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_22"}]},
			{"Name" : "P2Buffer_V_i_23", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_23"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_23"}]},
			{"Name" : "P2Buffer_V_i_24", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_24"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_24"}]},
			{"Name" : "P2Buffer_V_i_25", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_25"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_25"}]},
			{"Name" : "P2Buffer_V_i_26", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_26"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_26"}]},
			{"Name" : "P2Buffer_V_i_27", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_27"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_27"}]},
			{"Name" : "P2Buffer_V_i_28", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_28"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_28"}]},
			{"Name" : "P2Buffer_V_i_29", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_29"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_29"}]},
			{"Name" : "P2Buffer_V_i_30", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_30"},
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_30"}]},
			{"Name" : "search_sol_i", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "search_sol_i"}]},
			{"Name" : "parityMove", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "parityMove"}]},
			{"Name" : "nOld", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "nOld"}]},
			{"Name" : "URFtoDLF_Move3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "URFtoDLF_Move3"}]},
			{"Name" : "FRtoBR_Move3_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "FRtoBR_Move3_2"}]},
			{"Name" : "URtoDF_Move3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "URtoDF_Move3"}]},
			{"Name" : "label3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "label3_0"}]},
			{"Name" : "label3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "label3_1"}]},
			{"Name" : "search_sol_depthPhas", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "search_sol_depthPhas"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.label_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.label_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_blockP2_fu_1316", "Parent" : "0", "Child" : ["4", "5"],
		"CDFG" : "blockP2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "2110722008",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_phase2_fu_967"}],
		"Port" : [
			{"Name" : "URFtoDLF", "Type" : "None", "Direction" : "I"},
			{"Name" : "FRtoBR", "Type" : "None", "Direction" : "I"},
			{"Name" : "parity", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoUL", "Type" : "None", "Direction" : "I"},
			{"Name" : "UBtoDF", "Type" : "None", "Direction" : "I"},
			{"Name" : "P3Buffer_0_parity", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P3Buffer_0_parity"}]},
			{"Name" : "P3Buffer_0_URFtoDLF", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P3Buffer_0_URFtoDLF"}]},
			{"Name" : "P3Buffer_0_FRtoBR", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P3Buffer_0_FRtoBR"}]},
			{"Name" : "P3Buffer_0_URtoDF", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P3Buffer_0_URtoDF"}]},
			{"Name" : "P3Buffer_0_n", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P3Buffer_0_n"}]},
			{"Name" : "P3Buffer_0_i", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P3Buffer_0_i"}]},
			{"Name" : "maxDepth", "Type" : "None", "Direction" : "I"},
			{"Name" : "encode_length", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "encode_array", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "FRtoBR_Move2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "FRtoBR_Move2"}]},
			{"Name" : "FRtoBR_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URFtoDLF_Move2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "URFtoDLF_Move2"}]},
			{"Name" : "URFtoDLF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoDF_Move2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "URtoDF_Move2"}]},
			{"Name" : "URtoDF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoUL_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "UBtoDF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "MergeURtoULandUBtoDF2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_URFtoDLF_Parity_Prun2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_URtoDF_Parity_Prun2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "P2Buffer_V_flip", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_flip"}]},
			{"Name" : "P2Buffer_V_twist", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_twist"}]},
			{"Name" : "P2Buffer_V_slice", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_slice"}]},
			{"Name" : "P2Buffer_V_parity", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_parity"}]},
			{"Name" : "P2Buffer_V_URFtoDLF", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_URFtoDLF"}]},
			{"Name" : "P2Buffer_V_FRtoBR", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_FRtoBR"}]},
			{"Name" : "P2Buffer_V_URtoDF", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_URtoDF"}]},
			{"Name" : "P2Buffer_V_depthPhas", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_depthPhas"}]},
			{"Name" : "P2Buffer_V_n", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_n"}]},
			{"Name" : "P2Buffer_V_i_0", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_0"}]},
			{"Name" : "P2Buffer_V_i_1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_1"}]},
			{"Name" : "P2Buffer_V_i_2", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_2"}]},
			{"Name" : "P2Buffer_V_i_3", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_3"}]},
			{"Name" : "P2Buffer_V_i_4", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_4"}]},
			{"Name" : "P2Buffer_V_i_5", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_5"}]},
			{"Name" : "P2Buffer_V_i_6", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_6"}]},
			{"Name" : "P2Buffer_V_i_7", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_7"}]},
			{"Name" : "P2Buffer_V_i_8", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_8"}]},
			{"Name" : "P2Buffer_V_i_9", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_9"}]},
			{"Name" : "P2Buffer_V_i_10", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_10"}]},
			{"Name" : "P2Buffer_V_i_11", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_11"}]},
			{"Name" : "P2Buffer_V_i_12", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_12"}]},
			{"Name" : "P2Buffer_V_i_13", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_13"}]},
			{"Name" : "P2Buffer_V_i_14", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_14"}]},
			{"Name" : "P2Buffer_V_i_15", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_15"}]},
			{"Name" : "P2Buffer_V_i_16", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_16"}]},
			{"Name" : "P2Buffer_V_i_17", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_17"}]},
			{"Name" : "P2Buffer_V_i_18", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_18"}]},
			{"Name" : "P2Buffer_V_i_19", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_19"}]},
			{"Name" : "P2Buffer_V_i_20", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_20"}]},
			{"Name" : "P2Buffer_V_i_21", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_21"}]},
			{"Name" : "P2Buffer_V_i_22", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_22"}]},
			{"Name" : "P2Buffer_V_i_23", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_23"}]},
			{"Name" : "P2Buffer_V_i_24", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_24"}]},
			{"Name" : "P2Buffer_V_i_25", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_25"}]},
			{"Name" : "P2Buffer_V_i_26", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_26"}]},
			{"Name" : "P2Buffer_V_i_27", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_27"}]},
			{"Name" : "P2Buffer_V_i_28", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_28"}]},
			{"Name" : "P2Buffer_V_i_29", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_29"}]},
			{"Name" : "P2Buffer_V_i_30", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_30"}]},
			{"Name" : "search_sol_i", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "search_sol_i"}]},
			{"Name" : "parityMove", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "parityMove"}]},
			{"Name" : "nOld", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "nOld"}]},
			{"Name" : "URFtoDLF_Move3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "URFtoDLF_Move3"}]},
			{"Name" : "FRtoBR_Move3_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "FRtoBR_Move3_2"}]},
			{"Name" : "URtoDF_Move3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "URtoDF_Move3"}]},
			{"Name" : "label3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "label3_0"}]},
			{"Name" : "label3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "label3_1"}]},
			{"Name" : "search_sol_depthPhas", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "search_sol_depthPhas"}]},
			{"Name" : "a", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_phase2_fu_967", "Port" : "a"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP2_fu_1316.search_sol_i_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP2_fu_1316.grp_phase2_fu_967", "Parent" : "3", "Child" : ["6", "7", "8", "16", "17", "18"],
		"CDFG" : "phase2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "2110716",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_P2_fu_1689"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getPruning_2_fu_1742"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getPruning_228_fu_1750"}],
		"Port" : [
			{"Name" : "P3Buffer_0_parity", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_P2_fu_1689", "Port" : "P3Buffer_0_parity"}]},
			{"Name" : "P3Buffer_0_URFtoDLF", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_P2_fu_1689", "Port" : "P3Buffer_0_URFtoDLF"}]},
			{"Name" : "P3Buffer_0_FRtoBR", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_P2_fu_1689", "Port" : "P3Buffer_0_FRtoBR"}]},
			{"Name" : "P3Buffer_0_URtoDF", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_P2_fu_1689", "Port" : "P3Buffer_0_URtoDF"}]},
			{"Name" : "P3Buffer_0_n", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_P2_fu_1689", "Port" : "P3Buffer_0_n"}]},
			{"Name" : "P3Buffer_0_i", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_P2_fu_1689", "Port" : "P3Buffer_0_i"}]},
			{"Name" : "maxDepth", "Type" : "None", "Direction" : "I"},
			{"Name" : "URFtoDLF", "Type" : "None", "Direction" : "I"},
			{"Name" : "FRtoBR", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoUL", "Type" : "None", "Direction" : "I"},
			{"Name" : "UBtoDF", "Type" : "None", "Direction" : "I"},
			{"Name" : "parity", "Type" : "None", "Direction" : "I"},
			{"Name" : "FRtoBR_Move2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "FRtoBR_Move2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "FRtoBR_Move2_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_P2_fu_1689", "Port" : "FRtoBR_Move2"}]},
			{"Name" : "FRtoBR_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URFtoDLF_Move2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "URFtoDLF_Move2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "URFtoDLF_Move2_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_getPruning_2_fu_1742", "Port" : "table_r"},
					{"ID" : "8", "SubInstance" : "grp_P2_fu_1689", "Port" : "URFtoDLF_Move2"}]},
			{"Name" : "URFtoDLF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoDF_Move2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "URtoDF_Move2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "URtoDF_Move2_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_getPruning_228_fu_1750", "Port" : "table_r"},
					{"ID" : "8", "SubInstance" : "grp_P2_fu_1689", "Port" : "URtoDF_Move2"}]},
			{"Name" : "URtoDF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoUL_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "UBtoDF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "MergeURtoULandUBtoDF2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_URFtoDLF_Parity_Prun2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_URtoDF_Parity_Prun2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "P2Buffer_V_flip", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_flip_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_twist", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_twist_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_slice", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_slice_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_parity", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_parity_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_URFtoDLF", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_URFtoDLF_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_FRtoBR", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_FRtoBR_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_URtoDF", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_URtoDF_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_depthPhas", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_depthPhas_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_n", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_n_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_5", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_6", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_7", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_8", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_9", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_10", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_11", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_12", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_13", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_14", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_15", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_16", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_17", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_18", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_19", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_20", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_21", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_22", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_23", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_24", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_25", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_26", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_27", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_27_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_28", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_28_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_29", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_29_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_30", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_30_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "search_sol_i", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_P2_fu_1689", "Port" : "search_sol_i"}]},
			{"Name" : "parityMove", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_P2_fu_1689", "Port" : "parityMove"}]},
			{"Name" : "nOld", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_P2_fu_1689", "Port" : "nOld"}]},
			{"Name" : "URFtoDLF_Move3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_P2_fu_1689", "Port" : "URFtoDLF_Move3"}]},
			{"Name" : "FRtoBR_Move3_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_P2_fu_1689", "Port" : "FRtoBR_Move3_2"}]},
			{"Name" : "URtoDF_Move3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_P2_fu_1689", "Port" : "URtoDF_Move3"}]},
			{"Name" : "label3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_P2_fu_1689", "Port" : "label3_0"}]},
			{"Name" : "label3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_P2_fu_1689", "Port" : "label3_1"}]},
			{"Name" : "search_sol_depthPhas", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_P2_fu_1689", "Port" : "search_sol_depthPhas"}]},
			{"Name" : "a", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_blockP2_fu_1316.grp_phase2_fu_967.parityMove_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_blockP2_fu_1316.grp_phase2_fu_967.search_0_i_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_blockP2_fu_1316.grp_phase2_fu_967.grp_P2_fu_1689", "Parent" : "5", "Child" : ["9", "10", "11", "12", "13", "14", "15"],
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
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_blockP2_fu_1316.grp_phase2_fu_967.grp_P2_fu_1689.URFtoDLF_Move3_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_blockP2_fu_1316.grp_phase2_fu_967.grp_P2_fu_1689.FRtoBR_Move3_2_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_blockP2_fu_1316.grp_phase2_fu_967.grp_P2_fu_1689.URtoDF_Move3_U", "Parent" : "8"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_blockP2_fu_1316.grp_phase2_fu_967.grp_P2_fu_1689.label3_0_U", "Parent" : "8"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_blockP2_fu_1316.grp_phase2_fu_967.grp_P2_fu_1689.label3_1_U", "Parent" : "8"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_blockP2_fu_1316.grp_phase2_fu_967.grp_P2_fu_1689.parityMove_U", "Parent" : "8"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_blockP2_fu_1316.grp_phase2_fu_967.grp_P2_fu_1689.search_0_i_U", "Parent" : "8"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_blockP2_fu_1316.grp_phase2_fu_967.grp_getPruning_2_fu_1742", "Parent" : "5",
		"CDFG" : "getPruning_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
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
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_blockP2_fu_1316.grp_phase2_fu_967.grp_getPruning_228_fu_1750", "Parent" : "5",
		"CDFG" : "getPruning_228",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
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
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_blockP2_fu_1316.grp_phase2_fu_967.solution_mac_mulatde_U162", "Parent" : "5"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_parallel_v2_fu_1456", "Parent" : "0", "Child" : ["20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"],
		"CDFG" : "parallel_v2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "68", "EstimateLatencyMax" : "1859",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getPruning_1_fu_1604"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getPruning_fu_1612"}],
		"Port" : [
			{"Name" : "P1Buffer_0_flip", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "P1Buffer_0_twist", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "P1Buffer_0_slice", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "P1Buffer_0_depthPha", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "P1Buffer_0_n", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "P1Buffer_0_i", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "P1Start_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P1End_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "first_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "depthPhase1", "Type" : "None", "Direction" : "I"},
			{"Name" : "twistMove2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "twistMove2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "twistMove2_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_getPruning_fu_1612", "Port" : "table_r"}]},
			{"Name" : "twistMove2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "flipMove2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "flipMove2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "flipMove2_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_getPruning_1_fu_1604", "Port" : "table_r"}]},
			{"Name" : "flipMove2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "FRtoBR_Move2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "FRtoBR_Move2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "FRtoBR_Move2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "FRtoBR_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_Twist_Prun2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_Flip_Prun2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "twistOld", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "flipOld", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sliceOld", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "twistMove3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "flipMove3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "FRtoBR_Move3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "label_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "label_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "P2Buffer_V_flip", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_flip_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_twist", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_twist_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_slice", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_slice_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_parity", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_parity_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_URFtoDLF", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_URFtoDLF_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_FRtoBR", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_FRtoBR_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_URtoDF", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_URtoDF_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_depthPhas", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_depthPhas_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_n", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_n_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_5", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_6", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_7", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_8", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_9", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_10", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_11", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_12", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_13", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_14", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_15", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_16", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_17", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_18", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_19", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_20", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_21", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_22", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_23", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_24", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_25", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_26", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_27", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_27_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_28", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_28_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_29", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_29_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_30", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_30_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_parallel_v2_fu_1456.twistMove3_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_parallel_v2_fu_1456.flipMove3_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_parallel_v2_fu_1456.FRtoBR_Move3_U", "Parent" : "19"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_parallel_v2_fu_1456.label_0_U", "Parent" : "19"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_parallel_v2_fu_1456.label_1_U", "Parent" : "19"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_parallel_v2_fu_1456.search_new_0_i_U", "Parent" : "19"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_parallel_v2_fu_1456.grp_getPruning_1_fu_1604", "Parent" : "19",
		"CDFG" : "getPruning_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
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
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_parallel_v2_fu_1456.grp_getPruning_fu_1612", "Parent" : "19",
		"CDFG" : "getPruning",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
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
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_parallel_v2_fu_1456.solution_mac_mulaqcK_U64", "Parent" : "19"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_parallel_v2_fu_1456.solution_mul_mul_rcU_U65", "Parent" : "19"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_parallel_v2_fu_1456.solution_mac_mulasc4_U66", "Parent" : "19"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_parallel_v2_fu_1456.solution_mac_mulasc4_U67", "Parent" : "19"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_FRtoBR_fifo_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_URFtoDLF_fifo_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_URtoDF_fifo_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_depthPhas_fifo_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_flip_fifo_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_0_fifo_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_1_fifo_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_10_fifo_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_11_fifo_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_12_fifo_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_13_fifo_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_14_fifo_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_15_fifo_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_16_fifo_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_17_fifo_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_18_fifo_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_19_fifo_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_2_fifo_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_20_fifo_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_21_fifo_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_22_fifo_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_23_fifo_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_24_fifo_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_25_fifo_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_26_fifo_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_27_fifo_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_28_fifo_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_29_fifo_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_3_fifo_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_30_fifo_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_4_fifo_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_5_fifo_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_6_fifo_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_7_fifo_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_8_fifo_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_i_9_fifo_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_n_fifo_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_parity_fifo_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_slice_fifo_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P2Buffer_V_twist_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	blockP1 {
		flip {Type I LastRead 0 FirstWrite -1}
		twist {Type I LastRead 0 FirstWrite -1}
		slice {Type I LastRead 0 FirstWrite -1}
		P1Buffer_0_flip {Type IO LastRead 0 FirstWrite 1}
		P1Buffer_0_twist {Type IO LastRead 0 FirstWrite 1}
		P1Buffer_0_slice {Type IO LastRead 0 FirstWrite 1}
		P1Buffer_0_depthPha {Type IO LastRead 0 FirstWrite 1}
		P1Buffer_0_n {Type IO LastRead 0 FirstWrite 1}
		P1Buffer_0_i {Type IO LastRead 2 FirstWrite 3}
		depthPhase1 {Type I LastRead 0 FirstWrite -1}
		maxDepth {Type I LastRead 0 FirstWrite -1}
		URFtoDLF {Type I LastRead 0 FirstWrite -1}
		FRtoBR {Type I LastRead 0 FirstWrite -1}
		parity {Type I LastRead 0 FirstWrite -1}
		URtoUL {Type I LastRead 0 FirstWrite -1}
		UBtoDF {Type I LastRead 0 FirstWrite -1}
		P3Buffer_0_parity {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_URFtoDLF {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_FRtoBR {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_URtoDF {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_n {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_i {Type IO LastRead 3 FirstWrite 32}
		encode_length {Type O LastRead -1 FirstWrite 7}
		encode_array {Type O LastRead -1 FirstWrite 8}
		twistMove2 {Type I LastRead 29 FirstWrite -1}
		twistMove2_offset {Type I LastRead 0 FirstWrite -1}
		flipMove2 {Type I LastRead 29 FirstWrite -1}
		flipMove2_offset {Type I LastRead 0 FirstWrite -1}
		FRtoBR_Move2 {Type I LastRead 28 FirstWrite -1}
		FRtoBR_Move2_offset {Type I LastRead 0 FirstWrite -1}
		Slice_Twist_Prun2_offset {Type I LastRead 0 FirstWrite -1}
		Slice_Flip_Prun2_offset {Type I LastRead 0 FirstWrite -1}
		URFtoDLF_Move2_offset {Type I LastRead 0 FirstWrite -1}
		URtoDF_Move2_offset {Type I LastRead 0 FirstWrite -1}
		URtoUL_Move2_offset {Type I LastRead 0 FirstWrite -1}
		UBtoDF_Move2_offset {Type I LastRead 0 FirstWrite -1}
		MergeURtoULandUBtoDF2_offset {Type I LastRead 0 FirstWrite -1}
		Slice_URFtoDLF_Parity_Prun2_offset {Type I LastRead 0 FirstWrite -1}
		Slice_URtoDF_Parity_Prun2_offset {Type I LastRead 0 FirstWrite -1}
		label_0 {Type I LastRead -1 FirstWrite -1}
		label_1 {Type I LastRead -1 FirstWrite -1}
		a {Type IO LastRead 4 FirstWrite 7}
		twistOld {Type IO LastRead -1 FirstWrite -1}
		flipOld {Type IO LastRead -1 FirstWrite -1}
		sliceOld {Type IO LastRead -1 FirstWrite -1}
		twistMove3 {Type IO LastRead -1 FirstWrite -1}
		flipMove3 {Type IO LastRead -1 FirstWrite -1}
		FRtoBR_Move3 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_flip {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_twist {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_slice {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_parity {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_URFtoDLF {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_FRtoBR {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_URtoDF {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_depthPhas {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_n {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_0 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_1 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_2 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_3 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_4 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_5 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_6 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_7 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_8 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_9 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_10 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_11 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_12 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_13 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_14 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_15 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_16 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_17 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_18 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_19 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_20 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_21 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_22 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_23 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_24 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_25 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_26 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_27 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_28 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_29 {Type IO LastRead -1 FirstWrite -1}
		P2Buffer_V_i_30 {Type IO LastRead -1 FirstWrite -1}
		search_sol_i {Type IO LastRead -1 FirstWrite -1}
		parityMove {Type I LastRead -1 FirstWrite -1}
		nOld {Type IO LastRead -1 FirstWrite -1}
		URFtoDLF_Move3 {Type IO LastRead -1 FirstWrite -1}
		FRtoBR_Move3_2 {Type IO LastRead -1 FirstWrite -1}
		URtoDF_Move3 {Type IO LastRead -1 FirstWrite -1}
		label3_0 {Type I LastRead -1 FirstWrite -1}
		label3_1 {Type I LastRead -1 FirstWrite -1}
		search_sol_depthPhas {Type IO LastRead -1 FirstWrite -1}}
	blockP2 {
		URFtoDLF {Type I LastRead 0 FirstWrite -1}
		FRtoBR {Type I LastRead 0 FirstWrite -1}
		parity {Type I LastRead 0 FirstWrite -1}
		URtoUL {Type I LastRead 0 FirstWrite -1}
		UBtoDF {Type I LastRead 0 FirstWrite -1}
		P3Buffer_0_parity {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_URFtoDLF {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_FRtoBR {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_URtoDF {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_n {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_i {Type IO LastRead 3 FirstWrite 32}
		maxDepth {Type I LastRead 0 FirstWrite -1}
		encode_length {Type O LastRead -1 FirstWrite 7}
		encode_array {Type O LastRead -1 FirstWrite 8}
		FRtoBR_Move2 {Type I LastRead 28 FirstWrite -1}
		FRtoBR_Move2_offset {Type I LastRead 0 FirstWrite -1}
		URFtoDLF_Move2 {Type I LastRead 29 FirstWrite -1}
		URFtoDLF_Move2_offset {Type I LastRead 0 FirstWrite -1}
		URtoDF_Move2 {Type I LastRead 29 FirstWrite -1}
		URtoDF_Move2_offset {Type I LastRead 0 FirstWrite -1}
		URtoUL_Move2_offset {Type I LastRead 0 FirstWrite -1}
		UBtoDF_Move2_offset {Type I LastRead 0 FirstWrite -1}
		MergeURtoULandUBtoDF2_offset {Type I LastRead 0 FirstWrite -1}
		Slice_URFtoDLF_Parity_Prun2_offset {Type I LastRead 0 FirstWrite -1}
		Slice_URtoDF_Parity_Prun2_offset {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_flip {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_twist {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_slice {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_parity {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_URFtoDLF {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_FRtoBR {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_URtoDF {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_depthPhas {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_n {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_0 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_1 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_2 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_3 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_4 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_5 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_6 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_7 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_8 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_9 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_10 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_11 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_12 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_13 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_14 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_15 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_16 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_17 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_18 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_19 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_20 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_21 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_22 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_23 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_24 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_25 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_26 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_27 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_28 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_29 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_30 {Type I LastRead 6 FirstWrite -1}
		search_sol_i {Type IO LastRead -1 FirstWrite -1}
		parityMove {Type I LastRead -1 FirstWrite -1}
		nOld {Type IO LastRead -1 FirstWrite -1}
		URFtoDLF_Move3 {Type IO LastRead -1 FirstWrite -1}
		FRtoBR_Move3_2 {Type IO LastRead -1 FirstWrite -1}
		URtoDF_Move3 {Type IO LastRead -1 FirstWrite -1}
		label3_0 {Type I LastRead -1 FirstWrite -1}
		label3_1 {Type I LastRead -1 FirstWrite -1}
		search_sol_depthPhas {Type IO LastRead -1 FirstWrite -1}
		a {Type O LastRead -1 FirstWrite 7}}
	phase2 {
		P3Buffer_0_parity {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_URFtoDLF {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_FRtoBR {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_URtoDF {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_n {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_i {Type IO LastRead 3 FirstWrite 32}
		maxDepth {Type I LastRead 0 FirstWrite -1}
		URFtoDLF {Type I LastRead 0 FirstWrite -1}
		FRtoBR {Type I LastRead 0 FirstWrite -1}
		URtoUL {Type I LastRead 0 FirstWrite -1}
		UBtoDF {Type I LastRead 0 FirstWrite -1}
		parity {Type I LastRead 0 FirstWrite -1}
		FRtoBR_Move2 {Type I LastRead 28 FirstWrite -1}
		FRtoBR_Move2_offset {Type I LastRead 0 FirstWrite -1}
		URFtoDLF_Move2 {Type I LastRead 29 FirstWrite -1}
		URFtoDLF_Move2_offset {Type I LastRead 0 FirstWrite -1}
		URtoDF_Move2 {Type I LastRead 29 FirstWrite -1}
		URtoDF_Move2_offset {Type I LastRead 0 FirstWrite -1}
		URtoUL_Move2_offset {Type I LastRead 0 FirstWrite -1}
		UBtoDF_Move2_offset {Type I LastRead 0 FirstWrite -1}
		MergeURtoULandUBtoDF2_offset {Type I LastRead 0 FirstWrite -1}
		Slice_URFtoDLF_Parity_Prun2_offset {Type I LastRead 0 FirstWrite -1}
		Slice_URtoDF_Parity_Prun2_offset {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_flip {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_twist {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_slice {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_parity {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_URFtoDLF {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_FRtoBR {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_URtoDF {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_depthPhas {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_n {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_0 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_1 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_2 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_3 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_4 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_5 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_6 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_7 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_8 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_9 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_10 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_11 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_12 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_13 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_14 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_15 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_16 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_17 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_18 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_19 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_20 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_21 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_22 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_23 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_24 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_25 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_26 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_27 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_28 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_29 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_30 {Type I LastRead 0 FirstWrite -1}
		search_sol_i {Type O LastRead -1 FirstWrite 17}
		parityMove {Type I LastRead -1 FirstWrite -1}
		nOld {Type IO LastRead -1 FirstWrite -1}
		URFtoDLF_Move3 {Type IO LastRead -1 FirstWrite -1}
		FRtoBR_Move3_2 {Type IO LastRead -1 FirstWrite -1}
		URtoDF_Move3 {Type IO LastRead -1 FirstWrite -1}
		label3_0 {Type I LastRead -1 FirstWrite -1}
		label3_1 {Type I LastRead -1 FirstWrite -1}
		search_sol_depthPhas {Type O LastRead -1 FirstWrite 31}
		a {Type O LastRead -1 FirstWrite 35}}
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
		search_sol_i {Type O LastRead -1 FirstWrite 19}}
	getPruning_2 {
		table_r {Type I LastRead 9 FirstWrite -1}
		table_offset {Type I LastRead 1 FirstWrite -1}
		index {Type I LastRead 0 FirstWrite -1}}
	getPruning_228 {
		table_r {Type I LastRead 9 FirstWrite -1}
		table_offset {Type I LastRead 1 FirstWrite -1}
		index {Type I LastRead 0 FirstWrite -1}}
	parallel_v2 {
		P1Buffer_0_flip {Type IO LastRead 0 FirstWrite 38}
		P1Buffer_0_twist {Type IO LastRead 0 FirstWrite 38}
		P1Buffer_0_slice {Type IO LastRead 0 FirstWrite 38}
		P1Buffer_0_depthPha {Type IO LastRead 0 FirstWrite 38}
		P1Buffer_0_n {Type IO LastRead 0 FirstWrite 38}
		P1Buffer_0_i {Type IO LastRead 2 FirstWrite 39}
		P1Start_read {Type I LastRead 1 FirstWrite -1}
		P1End_read {Type I LastRead 0 FirstWrite -1}
		first_read {Type I LastRead 1 FirstWrite -1}
		depthPhase1 {Type I LastRead 1 FirstWrite -1}
		twistMove2 {Type I LastRead 13 FirstWrite -1}
		twistMove2_offset {Type I LastRead 1 FirstWrite -1}
		flipMove2 {Type I LastRead 13 FirstWrite -1}
		flipMove2_offset {Type I LastRead 1 FirstWrite -1}
		FRtoBR_Move2 {Type I LastRead 13 FirstWrite -1}
		FRtoBR_Move2_offset {Type I LastRead 1 FirstWrite -1}
		Slice_Twist_Prun2_offset {Type I LastRead 1 FirstWrite -1}
		Slice_Flip_Prun2_offset {Type I LastRead 1 FirstWrite -1}
		twistOld {Type IO LastRead -1 FirstWrite -1}
		flipOld {Type IO LastRead -1 FirstWrite -1}
		sliceOld {Type IO LastRead -1 FirstWrite -1}
		twistMove3 {Type IO LastRead -1 FirstWrite -1}
		flipMove3 {Type IO LastRead -1 FirstWrite -1}
		FRtoBR_Move3 {Type IO LastRead -1 FirstWrite -1}
		label_0 {Type I LastRead -1 FirstWrite -1}
		label_1 {Type I LastRead -1 FirstWrite -1}
		P2Buffer_V_flip {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_twist {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_slice {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_parity {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_URFtoDLF {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_FRtoBR {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_URtoDF {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_depthPhas {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_n {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_0 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_1 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_2 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_3 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_4 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_5 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_6 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_7 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_8 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_9 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_10 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_11 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_12 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_13 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_14 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_15 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_16 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_17 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_18 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_19 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_20 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_21 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_22 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_23 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_24 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_25 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_26 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_27 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_28 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_29 {Type O LastRead -1 FirstWrite 37}
		P2Buffer_V_i_30 {Type O LastRead -1 FirstWrite 37}}
	getPruning_1 {
		table_r {Type I LastRead 9 FirstWrite -1}
		table_offset {Type I LastRead 1 FirstWrite -1}
		index {Type I LastRead 0 FirstWrite -1}}
	getPruning {
		table_r {Type I LastRead 9 FirstWrite -1}
		table_offset {Type I LastRead 1 FirstWrite -1}
		index {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "303944237568077"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "-2008035251"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	flip { ap_none {  { flip in_data 0 16 } } }
	twist { ap_none {  { twist in_data 0 16 } } }
	slice { ap_none {  { slice in_data 0 16 } } }
	P1Buffer_0_flip { ap_memory {  { P1Buffer_0_flip_address0 mem_address 1 13 }  { P1Buffer_0_flip_ce0 mem_ce 1 1 }  { P1Buffer_0_flip_we0 mem_we 1 1 }  { P1Buffer_0_flip_d0 mem_din 1 16 }  { P1Buffer_0_flip_q0 mem_dout 0 16 } } }
	P1Buffer_0_twist { ap_memory {  { P1Buffer_0_twist_address0 mem_address 1 13 }  { P1Buffer_0_twist_ce0 mem_ce 1 1 }  { P1Buffer_0_twist_we0 mem_we 1 1 }  { P1Buffer_0_twist_d0 mem_din 1 16 }  { P1Buffer_0_twist_q0 mem_dout 0 16 } } }
	P1Buffer_0_slice { ap_memory {  { P1Buffer_0_slice_address0 mem_address 1 13 }  { P1Buffer_0_slice_ce0 mem_ce 1 1 }  { P1Buffer_0_slice_we0 mem_we 1 1 }  { P1Buffer_0_slice_d0 mem_din 1 16 }  { P1Buffer_0_slice_q0 mem_dout 0 16 } } }
	P1Buffer_0_depthPha { ap_memory {  { P1Buffer_0_depthPha_address0 mem_address 1 13 }  { P1Buffer_0_depthPha_ce0 mem_ce 1 1 }  { P1Buffer_0_depthPha_we0 mem_we 1 1 }  { P1Buffer_0_depthPha_d0 mem_din 1 8 }  { P1Buffer_0_depthPha_q0 mem_dout 0 8 } } }
	P1Buffer_0_n { ap_memory {  { P1Buffer_0_n_address0 mem_address 1 13 }  { P1Buffer_0_n_ce0 mem_ce 1 1 }  { P1Buffer_0_n_we0 mem_we 1 1 }  { P1Buffer_0_n_d0 mem_din 1 8 }  { P1Buffer_0_n_q0 mem_dout 0 8 } } }
	P1Buffer_0_i { ap_memory {  { P1Buffer_0_i_address0 mem_address 1 18 }  { P1Buffer_0_i_ce0 mem_ce 1 1 }  { P1Buffer_0_i_we0 mem_we 1 1 }  { P1Buffer_0_i_d0 mem_din 1 8 }  { P1Buffer_0_i_q0 mem_dout 0 8 } } }
	depthPhase1 { ap_none {  { depthPhase1 in_data 0 5 } } }
	maxDepth { ap_none {  { maxDepth in_data 0 8 } } }
	URFtoDLF { ap_none {  { URFtoDLF in_data 0 16 } } }
	FRtoBR { ap_none {  { FRtoBR in_data 0 16 } } }
	parity { ap_none {  { parity in_data 0 1 } } }
	URtoUL { ap_none {  { URtoUL in_data 0 16 } } }
	UBtoDF { ap_none {  { UBtoDF in_data 0 16 } } }
	P3Buffer_0_parity { ap_memory {  { P3Buffer_0_parity_address0 mem_address 1 10 }  { P3Buffer_0_parity_ce0 mem_ce 1 1 }  { P3Buffer_0_parity_we0 mem_we 1 1 }  { P3Buffer_0_parity_d0 mem_din 1 1 }  { P3Buffer_0_parity_q0 mem_dout 0 1 } } }
	P3Buffer_0_URFtoDLF { ap_memory {  { P3Buffer_0_URFtoDLF_address0 mem_address 1 10 }  { P3Buffer_0_URFtoDLF_ce0 mem_ce 1 1 }  { P3Buffer_0_URFtoDLF_we0 mem_we 1 1 }  { P3Buffer_0_URFtoDLF_d0 mem_din 1 16 }  { P3Buffer_0_URFtoDLF_q0 mem_dout 0 16 } } }
	P3Buffer_0_FRtoBR { ap_memory {  { P3Buffer_0_FRtoBR_address0 mem_address 1 10 }  { P3Buffer_0_FRtoBR_ce0 mem_ce 1 1 }  { P3Buffer_0_FRtoBR_we0 mem_we 1 1 }  { P3Buffer_0_FRtoBR_d0 mem_din 1 16 }  { P3Buffer_0_FRtoBR_q0 mem_dout 0 16 } } }
	P3Buffer_0_URtoDF { ap_memory {  { P3Buffer_0_URtoDF_address0 mem_address 1 10 }  { P3Buffer_0_URtoDF_ce0 mem_ce 1 1 }  { P3Buffer_0_URtoDF_we0 mem_we 1 1 }  { P3Buffer_0_URtoDF_d0 mem_din 1 16 }  { P3Buffer_0_URtoDF_q0 mem_dout 0 16 } } }
	P3Buffer_0_n { ap_memory {  { P3Buffer_0_n_address0 mem_address 1 10 }  { P3Buffer_0_n_ce0 mem_ce 1 1 }  { P3Buffer_0_n_we0 mem_we 1 1 }  { P3Buffer_0_n_d0 mem_din 1 8 }  { P3Buffer_0_n_q0 mem_dout 0 8 } } }
	P3Buffer_0_i { ap_memory {  { P3Buffer_0_i_address0 mem_address 1 15 }  { P3Buffer_0_i_ce0 mem_ce 1 1 }  { P3Buffer_0_i_we0 mem_we 1 1 }  { P3Buffer_0_i_d0 mem_din 1 8 }  { P3Buffer_0_i_q0 mem_dout 0 8 }  { P3Buffer_0_i_address1 mem_address 1 15 }  { P3Buffer_0_i_ce1 mem_ce 1 1 }  { P3Buffer_0_i_we1 mem_we 1 1 }  { P3Buffer_0_i_d1 mem_din 1 8 }  { P3Buffer_0_i_q1 mem_dout 0 8 } } }
	encode_length { ap_vld {  { encode_length out_data 1 8 }  { encode_length_ap_vld out_vld 1 1 } } }
	encode_array { ap_memory {  { encode_array_address0 mem_address 1 5 }  { encode_array_ce0 mem_ce 1 1 }  { encode_array_we0 mem_we 1 1 }  { encode_array_d0 mem_din 1 8 } } }
	twistMove2 { m_axi {  { m_axi_twistMove2_AWVALID VALID 1 1 }  { m_axi_twistMove2_AWREADY READY 0 1 }  { m_axi_twistMove2_AWADDR ADDR 1 32 }  { m_axi_twistMove2_AWID ID 1 1 }  { m_axi_twistMove2_AWLEN LEN 1 32 }  { m_axi_twistMove2_AWSIZE SIZE 1 3 }  { m_axi_twistMove2_AWBURST BURST 1 2 }  { m_axi_twistMove2_AWLOCK LOCK 1 2 }  { m_axi_twistMove2_AWCACHE CACHE 1 4 }  { m_axi_twistMove2_AWPROT PROT 1 3 }  { m_axi_twistMove2_AWQOS QOS 1 4 }  { m_axi_twistMove2_AWREGION REGION 1 4 }  { m_axi_twistMove2_AWUSER USER 1 1 }  { m_axi_twistMove2_WVALID VALID 1 1 }  { m_axi_twistMove2_WREADY READY 0 1 }  { m_axi_twistMove2_WDATA DATA 1 16 }  { m_axi_twistMove2_WSTRB STRB 1 2 }  { m_axi_twistMove2_WLAST LAST 1 1 }  { m_axi_twistMove2_WID ID 1 1 }  { m_axi_twistMove2_WUSER USER 1 1 }  { m_axi_twistMove2_ARVALID VALID 1 1 }  { m_axi_twistMove2_ARREADY READY 0 1 }  { m_axi_twistMove2_ARADDR ADDR 1 32 }  { m_axi_twistMove2_ARID ID 1 1 }  { m_axi_twistMove2_ARLEN LEN 1 32 }  { m_axi_twistMove2_ARSIZE SIZE 1 3 }  { m_axi_twistMove2_ARBURST BURST 1 2 }  { m_axi_twistMove2_ARLOCK LOCK 1 2 }  { m_axi_twistMove2_ARCACHE CACHE 1 4 }  { m_axi_twistMove2_ARPROT PROT 1 3 }  { m_axi_twistMove2_ARQOS QOS 1 4 }  { m_axi_twistMove2_ARREGION REGION 1 4 }  { m_axi_twistMove2_ARUSER USER 1 1 }  { m_axi_twistMove2_RVALID VALID 0 1 }  { m_axi_twistMove2_RREADY READY 1 1 }  { m_axi_twistMove2_RDATA DATA 0 16 }  { m_axi_twistMove2_RLAST LAST 0 1 }  { m_axi_twistMove2_RID ID 0 1 }  { m_axi_twistMove2_RUSER USER 0 1 }  { m_axi_twistMove2_RRESP RESP 0 2 }  { m_axi_twistMove2_BVALID VALID 0 1 }  { m_axi_twistMove2_BREADY READY 1 1 }  { m_axi_twistMove2_BRESP RESP 0 2 }  { m_axi_twistMove2_BID ID 0 1 }  { m_axi_twistMove2_BUSER USER 0 1 } } }
	twistMove2_offset { ap_none {  { twistMove2_offset in_data 0 31 } } }
	flipMove2 { m_axi {  { m_axi_flipMove2_AWVALID VALID 1 1 }  { m_axi_flipMove2_AWREADY READY 0 1 }  { m_axi_flipMove2_AWADDR ADDR 1 32 }  { m_axi_flipMove2_AWID ID 1 1 }  { m_axi_flipMove2_AWLEN LEN 1 32 }  { m_axi_flipMove2_AWSIZE SIZE 1 3 }  { m_axi_flipMove2_AWBURST BURST 1 2 }  { m_axi_flipMove2_AWLOCK LOCK 1 2 }  { m_axi_flipMove2_AWCACHE CACHE 1 4 }  { m_axi_flipMove2_AWPROT PROT 1 3 }  { m_axi_flipMove2_AWQOS QOS 1 4 }  { m_axi_flipMove2_AWREGION REGION 1 4 }  { m_axi_flipMove2_AWUSER USER 1 1 }  { m_axi_flipMove2_WVALID VALID 1 1 }  { m_axi_flipMove2_WREADY READY 0 1 }  { m_axi_flipMove2_WDATA DATA 1 16 }  { m_axi_flipMove2_WSTRB STRB 1 2 }  { m_axi_flipMove2_WLAST LAST 1 1 }  { m_axi_flipMove2_WID ID 1 1 }  { m_axi_flipMove2_WUSER USER 1 1 }  { m_axi_flipMove2_ARVALID VALID 1 1 }  { m_axi_flipMove2_ARREADY READY 0 1 }  { m_axi_flipMove2_ARADDR ADDR 1 32 }  { m_axi_flipMove2_ARID ID 1 1 }  { m_axi_flipMove2_ARLEN LEN 1 32 }  { m_axi_flipMove2_ARSIZE SIZE 1 3 }  { m_axi_flipMove2_ARBURST BURST 1 2 }  { m_axi_flipMove2_ARLOCK LOCK 1 2 }  { m_axi_flipMove2_ARCACHE CACHE 1 4 }  { m_axi_flipMove2_ARPROT PROT 1 3 }  { m_axi_flipMove2_ARQOS QOS 1 4 }  { m_axi_flipMove2_ARREGION REGION 1 4 }  { m_axi_flipMove2_ARUSER USER 1 1 }  { m_axi_flipMove2_RVALID VALID 0 1 }  { m_axi_flipMove2_RREADY READY 1 1 }  { m_axi_flipMove2_RDATA DATA 0 16 }  { m_axi_flipMove2_RLAST LAST 0 1 }  { m_axi_flipMove2_RID ID 0 1 }  { m_axi_flipMove2_RUSER USER 0 1 }  { m_axi_flipMove2_RRESP RESP 0 2 }  { m_axi_flipMove2_BVALID VALID 0 1 }  { m_axi_flipMove2_BREADY READY 1 1 }  { m_axi_flipMove2_BRESP RESP 0 2 }  { m_axi_flipMove2_BID ID 0 1 }  { m_axi_flipMove2_BUSER USER 0 1 } } }
	flipMove2_offset { ap_none {  { flipMove2_offset in_data 0 31 } } }
	FRtoBR_Move2 { m_axi {  { m_axi_FRtoBR_Move2_AWVALID VALID 1 1 }  { m_axi_FRtoBR_Move2_AWREADY READY 0 1 }  { m_axi_FRtoBR_Move2_AWADDR ADDR 1 32 }  { m_axi_FRtoBR_Move2_AWID ID 1 1 }  { m_axi_FRtoBR_Move2_AWLEN LEN 1 32 }  { m_axi_FRtoBR_Move2_AWSIZE SIZE 1 3 }  { m_axi_FRtoBR_Move2_AWBURST BURST 1 2 }  { m_axi_FRtoBR_Move2_AWLOCK LOCK 1 2 }  { m_axi_FRtoBR_Move2_AWCACHE CACHE 1 4 }  { m_axi_FRtoBR_Move2_AWPROT PROT 1 3 }  { m_axi_FRtoBR_Move2_AWQOS QOS 1 4 }  { m_axi_FRtoBR_Move2_AWREGION REGION 1 4 }  { m_axi_FRtoBR_Move2_AWUSER USER 1 1 }  { m_axi_FRtoBR_Move2_WVALID VALID 1 1 }  { m_axi_FRtoBR_Move2_WREADY READY 0 1 }  { m_axi_FRtoBR_Move2_WDATA DATA 1 16 }  { m_axi_FRtoBR_Move2_WSTRB STRB 1 2 }  { m_axi_FRtoBR_Move2_WLAST LAST 1 1 }  { m_axi_FRtoBR_Move2_WID ID 1 1 }  { m_axi_FRtoBR_Move2_WUSER USER 1 1 }  { m_axi_FRtoBR_Move2_ARVALID VALID 1 1 }  { m_axi_FRtoBR_Move2_ARREADY READY 0 1 }  { m_axi_FRtoBR_Move2_ARADDR ADDR 1 32 }  { m_axi_FRtoBR_Move2_ARID ID 1 1 }  { m_axi_FRtoBR_Move2_ARLEN LEN 1 32 }  { m_axi_FRtoBR_Move2_ARSIZE SIZE 1 3 }  { m_axi_FRtoBR_Move2_ARBURST BURST 1 2 }  { m_axi_FRtoBR_Move2_ARLOCK LOCK 1 2 }  { m_axi_FRtoBR_Move2_ARCACHE CACHE 1 4 }  { m_axi_FRtoBR_Move2_ARPROT PROT 1 3 }  { m_axi_FRtoBR_Move2_ARQOS QOS 1 4 }  { m_axi_FRtoBR_Move2_ARREGION REGION 1 4 }  { m_axi_FRtoBR_Move2_ARUSER USER 1 1 }  { m_axi_FRtoBR_Move2_RVALID VALID 0 1 }  { m_axi_FRtoBR_Move2_RREADY READY 1 1 }  { m_axi_FRtoBR_Move2_RDATA DATA 0 16 }  { m_axi_FRtoBR_Move2_RLAST LAST 0 1 }  { m_axi_FRtoBR_Move2_RID ID 0 1 }  { m_axi_FRtoBR_Move2_RUSER USER 0 1 }  { m_axi_FRtoBR_Move2_RRESP RESP 0 2 }  { m_axi_FRtoBR_Move2_BVALID VALID 0 1 }  { m_axi_FRtoBR_Move2_BREADY READY 1 1 }  { m_axi_FRtoBR_Move2_BRESP RESP 0 2 }  { m_axi_FRtoBR_Move2_BID ID 0 1 }  { m_axi_FRtoBR_Move2_BUSER USER 0 1 } } }
	FRtoBR_Move2_offset { ap_none {  { FRtoBR_Move2_offset in_data 0 31 } } }
	Slice_Twist_Prun2_offset { ap_none {  { Slice_Twist_Prun2_offset in_data 0 31 } } }
	Slice_Flip_Prun2_offset { ap_none {  { Slice_Flip_Prun2_offset in_data 0 31 } } }
	URFtoDLF_Move2_offset { ap_none {  { URFtoDLF_Move2_offset in_data 0 31 } } }
	URtoDF_Move2_offset { ap_none {  { URtoDF_Move2_offset in_data 0 31 } } }
	URtoUL_Move2_offset { ap_none {  { URtoUL_Move2_offset in_data 0 31 } } }
	UBtoDF_Move2_offset { ap_none {  { UBtoDF_Move2_offset in_data 0 31 } } }
	MergeURtoULandUBtoDF2_offset { ap_none {  { MergeURtoULandUBtoDF2_offset in_data 0 31 } } }
	Slice_URFtoDLF_Parity_Prun2_offset { ap_none {  { Slice_URFtoDLF_Parity_Prun2_offset in_data 0 31 } } }
	Slice_URtoDF_Parity_Prun2_offset { ap_none {  { Slice_URtoDF_Parity_Prun2_offset in_data 0 31 } } }
	a { ap_ovld {  { a_i in_data 0 32 }  { a_o out_data 1 32 }  { a_o_ap_vld out_vld 1 1 } } }
}
