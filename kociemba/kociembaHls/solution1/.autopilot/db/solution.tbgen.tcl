set C_TypeInfoList {{ 
"solution" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"facelets": [[], {"array": [ {"scalar": "char"}, [54]]}] }, {"maxDepth": [[], {"scalar": "char"}] }, {"unsolvable": [[],{ "pointer":  {"scalar": "bool"}}] }, {"encode_length": [[],{ "pointer":  {"scalar": "char"}}] }, {"encode_array": [[], {"array": [ {"scalar": "char"}, [30]]}] }, {"twistMove2": [[], {"array": [ {"scalar": "short"}, [39366]]}] }, {"flipMove2": [[], {"array": [ {"scalar": "short"}, [36864]]}] }, {"FRtoBR_Move2": [[], {"array": [ {"scalar": "short"}, [213840]]}] }, {"URFtoDLF_Move2": [[], {"array": [ {"scalar": "short"}, [362880]]}] }, {"URtoDF_Move2": [[], {"array": [ {"scalar": "short"}, [362880]]}] }, {"URtoUL_Move2": [[], {"array": [ {"scalar": "short"}, [23760]]}] }, {"UBtoDF_Move2": [[], {"array": [ {"scalar": "short"}, [23760]]}] }, {"MergeURtoULandUBtoDF2": [[], {"array": [ {"scalar": "short"}, [112896]]}] }, {"Slice_URFtoDLF_Parity_Prun2": [[], {"array": [ {"scalar": "signed char"}, [483840]]}] }, {"Slice_URtoDF_Parity_Prun2": [[], {"array": [ {"scalar": "signed char"}, [483840]]}] }, {"Slice_Twist_Prun2": [[], {"array": [ {"scalar": "signed char"}, [541283]]}] }, {"Slice_Flip_Prun2": [[], {"array": [ {"scalar": "signed char"}, [506880]]}] }],["0","1","2","3","4","5","6","7","8","9","10","11","12","13"],""],
 "0": [ "twistOld", [[], {"scalar": "short"}],""],
 "1": [ "twistMove3", [[], {"array": [ {"scalar": "short"}, [18]]}],""],
 "2": [ "sliceOld", [[], {"scalar": "short"}],""],
 "3": [ "search_sol", [[], {"array": ["14", [1]]}],""],
 "4": [ "nOld", [[], {"scalar": "int"}],""],
 "5": [ "flipOld", [[], {"scalar": "short"}],""],
 "6": [ "flipMove3", [[], {"array": [ {"scalar": "short"}, [18]]}],""],
 "7": [ "end", [[], {"scalar": "bool"}],""],
 "8": [ "a", [[], {"scalar": "int"}],""],
 "9": [ "URtoDF_Move3", [[], {"array": [ {"scalar": "short"}, [18]]}],""],
 "10": [ "URFtoDLF_Move3", [[], {"array": [ {"scalar": "short"}, [18]]}],""],
 "11": [ "P2Buffer", [[],"15"],""],
 "12": [ "FRtoBR_Move3_2", [[], {"array": [ {"scalar": "short"}, [18]]}],""],
 "13": [ "FRtoBR_Move3", [[], {"array": [ {"scalar": "short"}, [18]]}],""], 
"15": [ "stream<search_t2>", {"hls_type": {"stream": [[[[],"16"]],"17"]}}], 
"16": [ "search_t2", {"struct": [[{"pack": 0}],[],[{ "flip": [[],  {"scalar": "short"}]},{ "twist": [[],  {"scalar": "short"}]},{ "slice": [[],  {"scalar": "short"}]},{ "parity": [[],  {"scalar": "bool"}]},{ "URFtoDLF": [[],  {"scalar": "short"}]},{ "FRtoBR": [[],  {"scalar": "short"}]},{ "URtoDF": [[],  {"scalar": "short"}]},{ "depthPhase1": [[],  {"scalar": "char"}]},{ "n": [[],  {"scalar": "char"}]},{ "i": [[],  {"array": [ {"scalar": "char"}, [31]]}]}],""]}], 
"14": [ "search_t2", {"typedef": [[[],"16"],""]}],
"17": ["hls", ""]
}}
set moduleName solution
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
set C_modelName {solution}
set C_modelType { void 0 }
set C_modelArgList {
	{ CTRL_BUS1 int 16 regular {axi_master 0}  }
	{ CTRL_BUS2 int 16 regular {axi_master 0}  }
	{ CTRL_BUS3 int 16 regular {axi_master 0}  }
	{ facelets int 8 regular {axi_slave 0}  }
	{ maxDepth int 8 regular {axi_slave 0}  }
	{ unsolvable int 1 regular {axi_slave 1}  }
	{ encode_length int 8 regular {axi_slave 1}  }
	{ encode_array int 8 regular {axi_slave 1}  }
	{ twistMove2 int 32 regular {axi_slave 0}  }
	{ flipMove2 int 32 regular {axi_slave 0}  }
	{ FRtoBR_Move2 int 32 regular {axi_slave 0}  }
	{ URFtoDLF_Move2 int 32 regular {axi_slave 0}  }
	{ URtoDF_Move2 int 32 regular {axi_slave 0}  }
	{ URtoUL_Move2 int 32 regular {axi_slave 0}  }
	{ UBtoDF_Move2 int 32 regular {axi_slave 0}  }
	{ MergeURtoULandUBtoDF2 int 32 regular {axi_slave 0}  }
	{ Slice_URFtoDLF_Parity_Prun2 int 32 regular {axi_slave 0}  }
	{ Slice_URtoDF_Parity_Prun2 int 32 regular {axi_slave 0}  }
	{ Slice_Twist_Prun2 int 32 regular {axi_slave 0}  }
	{ Slice_Flip_Prun2 int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "CTRL_BUS1", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "twistMove2","cData": "short","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "twistMove2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 39365,"step" : 1}]},{"cName": "URFtoDLF_Move2","cData": "short","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "URFtoDLF_Move2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 362879,"step" : 1}]},{"cName": "UBtoDF_Move2","cData": "short","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "UBtoDF_Move2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 23759,"step" : 1}]},{"cName": "Slice_URFtoDLF_Parity_Prun2","cData": "signed char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "Slice_URFtoDLF_Parity_Prun2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 483838,"step" : 2}]},{"cName": "Slice_Twist_Prun2","cData": "signed char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "Slice_Twist_Prun2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 541282,"step" : 2}]}]},{"low":8,"up":15,"cElement": [{"cName": "twistMove2","cData": "short","bit_use": { "low": 8,"up": 15},"cArray": [{"low" : 0,"up" : 39365,"step" : 1}]},{"cName": "URFtoDLF_Move2","cData": "short","bit_use": { "low": 8,"up": 15},"cArray": [{"low" : 0,"up" : 362879,"step" : 1}]},{"cName": "UBtoDF_Move2","cData": "short","bit_use": { "low": 8,"up": 15},"cArray": [{"low" : 0,"up" : 23759,"step" : 1}]},{"cName": "Slice_URFtoDLF_Parity_Prun2","cData": "signed char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 1,"up" : 483839,"step" : 2}]},{"cName": "Slice_Twist_Prun2","cData": "signed char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 1,"up" : 541282,"step" : 2}]},{"cName": "","cData": "","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "CTRL_BUS2", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "flipMove2","cData": "short","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "flipMove2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 36863,"step" : 1}]},{"cName": "URtoDF_Move2","cData": "short","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "URtoDF_Move2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 362879,"step" : 1}]},{"cName": "MergeURtoULandUBtoDF2","cData": "short","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "MergeURtoULandUBtoDF2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 112895,"step" : 1}]},{"cName": "Slice_URtoDF_Parity_Prun2","cData": "signed char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "Slice_URtoDF_Parity_Prun2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 483838,"step" : 2}]},{"cName": "Slice_Flip_Prun2","cData": "signed char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "Slice_Flip_Prun2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 506878,"step" : 2}]}]},{"low":8,"up":15,"cElement": [{"cName": "flipMove2","cData": "short","bit_use": { "low": 8,"up": 15},"offset": { "type": "dynamic","port_name": "flipMove2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 36863,"step" : 1}]},{"cName": "URtoDF_Move2","cData": "short","bit_use": { "low": 8,"up": 15},"offset": { "type": "dynamic","port_name": "URtoDF_Move2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 362879,"step" : 1}]},{"cName": "MergeURtoULandUBtoDF2","cData": "short","bit_use": { "low": 8,"up": 15},"offset": { "type": "dynamic","port_name": "MergeURtoULandUBtoDF2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 112895,"step" : 1}]},{"cName": "Slice_URtoDF_Parity_Prun2","cData": "signed char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "Slice_URtoDF_Parity_Prun2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 1,"up" : 483839,"step" : 2}]},{"cName": "Slice_Flip_Prun2","cData": "signed char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "Slice_Flip_Prun2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 1,"up" : 506879,"step" : 2}]}]}]} , 
 	{ "Name" : "CTRL_BUS3", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "FRtoBR_Move2","cData": "short","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "FRtoBR_Move2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 213839,"step" : 1}]},{"cName": "URtoUL_Move2","cData": "short","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "URtoUL_Move2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 23759,"step" : 1}]}]}]} , 
 	{ "Name" : "facelets", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "facelets","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 53,"step" : 1}]}]}], "offset" : {"in":64}, "offset_end" : {"in":127}} , 
 	{ "Name" : "maxDepth", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "maxDepth","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":128}, "offset_end" : {"in":135}} , 
 	{ "Name" : "unsolvable", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_vld","bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "unsolvable","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":136}, "offset_end" : {"out":143}} , 
 	{ "Name" : "encode_length", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_vld","bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "encode_length","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":144}, "offset_end" : {"out":151}} , 
 	{ "Name" : "encode_array", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_memory","bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "encode_array","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 29,"step" : 1}]}]}], "offset" : {"out":160}, "offset_end" : {"out":191}} , 
 	{ "Name" : "twistMove2", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "flipMove2", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "FRtoBR_Move2", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "URFtoDLF_Move2", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "URtoDF_Move2", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "URtoUL_Move2", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "UBtoDF_Move2", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":152}, "offset_end" : {"in":159}} , 
 	{ "Name" : "MergeURtoULandUBtoDF2", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":192}, "offset_end" : {"in":199}} , 
 	{ "Name" : "Slice_URFtoDLF_Parity_Prun2", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":200}, "offset_end" : {"in":207}} , 
 	{ "Name" : "Slice_URtoDF_Parity_Prun2", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":208}, "offset_end" : {"in":215}} , 
 	{ "Name" : "Slice_Twist_Prun2", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":216}, "offset_end" : {"in":223}} , 
 	{ "Name" : "Slice_Flip_Prun2", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":224}, "offset_end" : {"in":231}} ]}
# RTL Port declarations: 
set portNum 155
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_CTRL_BUS1_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS1_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS1_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_CTRL_BUS1_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_CTRL_BUS1_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_CTRL_BUS1_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_CTRL_BUS1_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_CTRL_BUS1_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_CTRL_BUS1_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_CTRL_BUS1_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_CTRL_BUS1_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_CTRL_BUS1_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_CTRL_BUS1_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_CTRL_BUS1_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS1_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS1_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_CTRL_BUS1_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_CTRL_BUS1_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS1_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_CTRL_BUS1_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_CTRL_BUS1_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS1_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS1_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_CTRL_BUS1_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_CTRL_BUS1_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_CTRL_BUS1_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_CTRL_BUS1_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_CTRL_BUS1_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_CTRL_BUS1_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_CTRL_BUS1_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_CTRL_BUS1_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_CTRL_BUS1_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_CTRL_BUS1_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_CTRL_BUS1_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS1_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS1_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_CTRL_BUS1_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS1_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_CTRL_BUS1_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_CTRL_BUS1_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_CTRL_BUS1_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS1_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS1_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_CTRL_BUS1_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_CTRL_BUS1_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_CTRL_BUS2_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_CTRL_BUS2_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_CTRL_BUS2_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_CTRL_BUS2_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_CTRL_BUS2_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_CTRL_BUS2_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_CTRL_BUS2_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_CTRL_BUS2_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_CTRL_BUS2_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_CTRL_BUS2_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_CTRL_BUS2_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_CTRL_BUS2_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_CTRL_BUS2_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_CTRL_BUS2_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_CTRL_BUS2_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_CTRL_BUS2_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_CTRL_BUS2_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_CTRL_BUS2_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_CTRL_BUS2_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_CTRL_BUS2_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_CTRL_BUS2_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_CTRL_BUS2_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_CTRL_BUS2_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_CTRL_BUS2_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_CTRL_BUS2_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_CTRL_BUS2_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_CTRL_BUS2_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_CTRL_BUS2_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_CTRL_BUS2_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_CTRL_BUS2_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_CTRL_BUS2_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_CTRL_BUS2_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_CTRL_BUS2_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_CTRL_BUS2_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_CTRL_BUS2_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_CTRL_BUS2_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_CTRL_BUS2_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_CTRL_BUS2_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_CTRL_BUS2_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_CTRL_BUS2_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_CTRL_BUS2_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_CTRL_BUS2_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_CTRL_BUS2_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_CTRL_BUS2_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_CTRL_BUS2_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_CTRL_BUS3_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_CTRL_BUS3_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_CTRL_BUS3_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_CTRL_BUS3_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_CTRL_BUS3_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_CTRL_BUS3_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_CTRL_BUS3_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_CTRL_BUS3_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_CTRL_BUS3_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_CTRL_BUS3_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_CTRL_BUS3_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_CTRL_BUS3_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_CTRL_BUS3_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_CTRL_BUS3_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_CTRL_BUS3_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_CTRL_BUS3_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_CTRL_BUS3_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_CTRL_BUS3_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_CTRL_BUS3_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_CTRL_BUS3_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_CTRL_BUS3_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_CTRL_BUS3_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_CTRL_BUS3_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_CTRL_BUS3_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_CTRL_BUS3_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_CTRL_BUS3_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_CTRL_BUS3_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_CTRL_BUS3_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_CTRL_BUS3_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_CTRL_BUS3_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_CTRL_BUS3_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_CTRL_BUS3_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_CTRL_BUS3_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_CTRL_BUS3_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_CTRL_BUS3_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_CTRL_BUS3_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_CTRL_BUS3_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_CTRL_BUS3_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_CTRL_BUS3_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_CTRL_BUS3_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_CTRL_BUS3_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_CTRL_BUS3_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_CTRL_BUS3_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_CTRL_BUS3_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_CTRL_BUS3_BUSER sc_in sc_lv 1 signal 2 } 
	{ s_axi_CTRL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_AWADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_CTRL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_ARADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_CTRL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWADDR" },"address":[{"name":"solution","role":"start","value":"0","valid_bit":"0"},{"name":"solution","role":"continue","value":"0","valid_bit":"4"},{"name":"solution","role":"auto_start","value":"0","valid_bit":"7"},{"name":"facelets","role":"data","value":"64"},{"name":"maxDepth","role":"data","value":"128"},{"name":"twistMove2","role":"data","value":"16"},{"name":"flipMove2","role":"data","value":"24"},{"name":"FRtoBR_Move2","role":"data","value":"32"},{"name":"URFtoDLF_Move2","role":"data","value":"40"},{"name":"URtoDF_Move2","role":"data","value":"48"},{"name":"URtoUL_Move2","role":"data","value":"56"},{"name":"UBtoDF_Move2","role":"data","value":"152"},{"name":"MergeURtoULandUBtoDF2","role":"data","value":"192"},{"name":"Slice_URFtoDLF_Parity_Prun2","role":"data","value":"200"},{"name":"Slice_URtoDF_Parity_Prun2","role":"data","value":"208"},{"name":"Slice_Twist_Prun2","role":"data","value":"216"},{"name":"Slice_Flip_Prun2","role":"data","value":"224"}] },
	{ "name": "s_axi_CTRL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARADDR" },"address":[{"name":"solution","role":"start","value":"0","valid_bit":"0"},{"name":"solution","role":"done","value":"0","valid_bit":"1"},{"name":"solution","role":"idle","value":"0","valid_bit":"2"},{"name":"solution","role":"ready","value":"0","valid_bit":"3"},{"name":"solution","role":"auto_start","value":"0","valid_bit":"7"},{"name":"unsolvable","role":"data","value":"136"}, {"name":"unsolvable","role":"valid","value":"140","valid_bit":"0"},{"name":"encode_length","role":"data","value":"144"}, {"name":"encode_length","role":"valid","value":"148","valid_bit":"0"},{"name":"encode_array","role":"data","value":"160"}] },
	{ "name": "s_axi_CTRL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_CTRL_BUS1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_CTRL_BUS1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_CTRL_BUS1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_CTRL_BUS1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "AWID" }} , 
 	{ "name": "m_axi_CTRL_BUS1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_CTRL_BUS1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_CTRL_BUS1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_CTRL_BUS1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_CTRL_BUS1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_CTRL_BUS1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_CTRL_BUS1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_CTRL_BUS1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_CTRL_BUS1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_CTRL_BUS1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "WVALID" }} , 
 	{ "name": "m_axi_CTRL_BUS1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "WREADY" }} , 
 	{ "name": "m_axi_CTRL_BUS1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "WDATA" }} , 
 	{ "name": "m_axi_CTRL_BUS1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_CTRL_BUS1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "WLAST" }} , 
 	{ "name": "m_axi_CTRL_BUS1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "WID" }} , 
 	{ "name": "m_axi_CTRL_BUS1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "WUSER" }} , 
 	{ "name": "m_axi_CTRL_BUS1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_CTRL_BUS1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_CTRL_BUS1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_CTRL_BUS1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "ARID" }} , 
 	{ "name": "m_axi_CTRL_BUS1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_CTRL_BUS1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_CTRL_BUS1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_CTRL_BUS1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_CTRL_BUS1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_CTRL_BUS1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_CTRL_BUS1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_CTRL_BUS1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_CTRL_BUS1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_CTRL_BUS1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "RVALID" }} , 
 	{ "name": "m_axi_CTRL_BUS1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "RREADY" }} , 
 	{ "name": "m_axi_CTRL_BUS1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "RDATA" }} , 
 	{ "name": "m_axi_CTRL_BUS1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "RLAST" }} , 
 	{ "name": "m_axi_CTRL_BUS1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "RID" }} , 
 	{ "name": "m_axi_CTRL_BUS1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "RUSER" }} , 
 	{ "name": "m_axi_CTRL_BUS1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "RRESP" }} , 
 	{ "name": "m_axi_CTRL_BUS1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "BVALID" }} , 
 	{ "name": "m_axi_CTRL_BUS1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "BREADY" }} , 
 	{ "name": "m_axi_CTRL_BUS1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "BRESP" }} , 
 	{ "name": "m_axi_CTRL_BUS1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "BID" }} , 
 	{ "name": "m_axi_CTRL_BUS1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS1", "role": "BUSER" }} , 
 	{ "name": "m_axi_CTRL_BUS2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_CTRL_BUS2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_CTRL_BUS2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_CTRL_BUS2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "AWID" }} , 
 	{ "name": "m_axi_CTRL_BUS2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_CTRL_BUS2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_CTRL_BUS2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_CTRL_BUS2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_CTRL_BUS2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_CTRL_BUS2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_CTRL_BUS2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_CTRL_BUS2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_CTRL_BUS2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_CTRL_BUS2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "WVALID" }} , 
 	{ "name": "m_axi_CTRL_BUS2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "WREADY" }} , 
 	{ "name": "m_axi_CTRL_BUS2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "WDATA" }} , 
 	{ "name": "m_axi_CTRL_BUS2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_CTRL_BUS2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "WLAST" }} , 
 	{ "name": "m_axi_CTRL_BUS2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "WID" }} , 
 	{ "name": "m_axi_CTRL_BUS2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "WUSER" }} , 
 	{ "name": "m_axi_CTRL_BUS2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_CTRL_BUS2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_CTRL_BUS2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_CTRL_BUS2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "ARID" }} , 
 	{ "name": "m_axi_CTRL_BUS2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_CTRL_BUS2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_CTRL_BUS2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_CTRL_BUS2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_CTRL_BUS2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_CTRL_BUS2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_CTRL_BUS2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_CTRL_BUS2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_CTRL_BUS2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_CTRL_BUS2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "RVALID" }} , 
 	{ "name": "m_axi_CTRL_BUS2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "RREADY" }} , 
 	{ "name": "m_axi_CTRL_BUS2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "RDATA" }} , 
 	{ "name": "m_axi_CTRL_BUS2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "RLAST" }} , 
 	{ "name": "m_axi_CTRL_BUS2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "RID" }} , 
 	{ "name": "m_axi_CTRL_BUS2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "RUSER" }} , 
 	{ "name": "m_axi_CTRL_BUS2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "RRESP" }} , 
 	{ "name": "m_axi_CTRL_BUS2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "BVALID" }} , 
 	{ "name": "m_axi_CTRL_BUS2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "BREADY" }} , 
 	{ "name": "m_axi_CTRL_BUS2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "BRESP" }} , 
 	{ "name": "m_axi_CTRL_BUS2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "BID" }} , 
 	{ "name": "m_axi_CTRL_BUS2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS2", "role": "BUSER" }} , 
 	{ "name": "m_axi_CTRL_BUS3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_CTRL_BUS3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_CTRL_BUS3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_CTRL_BUS3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "AWID" }} , 
 	{ "name": "m_axi_CTRL_BUS3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_CTRL_BUS3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_CTRL_BUS3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_CTRL_BUS3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_CTRL_BUS3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_CTRL_BUS3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_CTRL_BUS3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_CTRL_BUS3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_CTRL_BUS3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_CTRL_BUS3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "WVALID" }} , 
 	{ "name": "m_axi_CTRL_BUS3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "WREADY" }} , 
 	{ "name": "m_axi_CTRL_BUS3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "WDATA" }} , 
 	{ "name": "m_axi_CTRL_BUS3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_CTRL_BUS3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "WLAST" }} , 
 	{ "name": "m_axi_CTRL_BUS3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "WID" }} , 
 	{ "name": "m_axi_CTRL_BUS3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "WUSER" }} , 
 	{ "name": "m_axi_CTRL_BUS3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_CTRL_BUS3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_CTRL_BUS3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_CTRL_BUS3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "ARID" }} , 
 	{ "name": "m_axi_CTRL_BUS3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_CTRL_BUS3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_CTRL_BUS3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_CTRL_BUS3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_CTRL_BUS3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_CTRL_BUS3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_CTRL_BUS3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_CTRL_BUS3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_CTRL_BUS3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_CTRL_BUS3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "RVALID" }} , 
 	{ "name": "m_axi_CTRL_BUS3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "RREADY" }} , 
 	{ "name": "m_axi_CTRL_BUS3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "RDATA" }} , 
 	{ "name": "m_axi_CTRL_BUS3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "RLAST" }} , 
 	{ "name": "m_axi_CTRL_BUS3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "RID" }} , 
 	{ "name": "m_axi_CTRL_BUS3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "RUSER" }} , 
 	{ "name": "m_axi_CTRL_BUS3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "RRESP" }} , 
 	{ "name": "m_axi_CTRL_BUS3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "BVALID" }} , 
 	{ "name": "m_axi_CTRL_BUS3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "BREADY" }} , 
 	{ "name": "m_axi_CTRL_BUS3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "BRESP" }} , 
 	{ "name": "m_axi_CTRL_BUS3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "BID" }} , 
 	{ "name": "m_axi_CTRL_BUS3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS3", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "95", "116", "125", "129", "130"],
		"CDFG" : "solution",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "68", "EstimateLatencyMax" : "5470996276245274",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_blockP1_fu_1276"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_coordcube_fu_1441"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_toCubieCube_fu_1467"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_verify_fu_1495"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_facecube_fromstr_fu_1507"}],
		"Port" : [
			{"Name" : "CTRL_BUS1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "twistMove2"}]},
			{"Name" : "CTRL_BUS2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "flipMove2"}]},
			{"Name" : "CTRL_BUS3", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "FRtoBR_Move2"}]},
			{"Name" : "facelets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_get_facecube_fromstr_fu_1507", "Port" : "cubeString"}]},
			{"Name" : "maxDepth", "Type" : "None", "Direction" : "I"},
			{"Name" : "unsolvable", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "encode_length", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "encode_length"}]},
			{"Name" : "encode_array", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "encode_array"}]},
			{"Name" : "twistMove2", "Type" : "None", "Direction" : "I"},
			{"Name" : "flipMove2", "Type" : "None", "Direction" : "I"},
			{"Name" : "FRtoBR_Move2", "Type" : "None", "Direction" : "I"},
			{"Name" : "URFtoDLF_Move2", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoDF_Move2", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoUL_Move2", "Type" : "None", "Direction" : "I"},
			{"Name" : "UBtoDF_Move2", "Type" : "None", "Direction" : "I"},
			{"Name" : "MergeURtoULandUBtoDF2", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_URFtoDLF_Parity_Prun2", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_URtoDF_Parity_Prun2", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_Twist_Prun2", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_Flip_Prun2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_f_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_get_facecube_fromstr_fu_1507", "Port" : "res_f_0"},
					{"ID" : "116", "SubInstance" : "grp_toCubieCube_fu_1467", "Port" : "facecube_0_f"}]},
			{"Name" : "ccRet_cp_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "grp_toCubieCube_fu_1467", "Port" : "ccRet_cp_0"},
					{"ID" : "95", "SubInstance" : "grp_get_coordcube_fu_1441", "Port" : "cubiecube_0_cp"},
					{"ID" : "125", "SubInstance" : "grp_verify_fu_1495", "Port" : "cubiecube_0_cp"}]},
			{"Name" : "ccRet_ep_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "grp_toCubieCube_fu_1467", "Port" : "ccRet_ep_0"},
					{"ID" : "95", "SubInstance" : "grp_get_coordcube_fu_1441", "Port" : "cubiecube_0_ep"},
					{"ID" : "125", "SubInstance" : "grp_verify_fu_1495", "Port" : "cubiecube_0_ep"}]},
			{"Name" : "cornerFacelet", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "grp_toCubieCube_fu_1467", "Port" : "cornerFacelet"}]},
			{"Name" : "cornerColor_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "grp_toCubieCube_fu_1467", "Port" : "cornerColor_1"}]},
			{"Name" : "cornerColor_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "grp_toCubieCube_fu_1467", "Port" : "cornerColor_2"}]},
			{"Name" : "ccRet_co_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "grp_toCubieCube_fu_1467", "Port" : "ccRet_co_0"},
					{"ID" : "95", "SubInstance" : "grp_get_coordcube_fu_1441", "Port" : "cubiecube_0_co"},
					{"ID" : "125", "SubInstance" : "grp_verify_fu_1495", "Port" : "cubiecube_0_co"}]},
			{"Name" : "edgeFacelet_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "grp_toCubieCube_fu_1467", "Port" : "edgeFacelet_0"}]},
			{"Name" : "edgeFacelet_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "grp_toCubieCube_fu_1467", "Port" : "edgeFacelet_1"}]},
			{"Name" : "edgeColor_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "grp_toCubieCube_fu_1467", "Port" : "edgeColor_0"}]},
			{"Name" : "edgeColor_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "grp_toCubieCube_fu_1467", "Port" : "edgeColor_1"}]},
			{"Name" : "ccRet_eo_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "grp_toCubieCube_fu_1467", "Port" : "ccRet_eo_0"},
					{"ID" : "95", "SubInstance" : "grp_get_coordcube_fu_1441", "Port" : "cubiecube_0_eo"},
					{"ID" : "125", "SubInstance" : "grp_verify_fu_1495", "Port" : "cubiecube_0_eo"}]},
			{"Name" : "result_twist_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_get_coordcube_fu_1441", "Port" : "result_twist_0"}]},
			{"Name" : "result_flip_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_get_coordcube_fu_1441", "Port" : "result_flip_0"}]},
			{"Name" : "result_parity_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_get_coordcube_fu_1441", "Port" : "result_parity_0"}]},
			{"Name" : "result_FRtoBR_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_get_coordcube_fu_1441", "Port" : "result_FRtoBR_0"}]},
			{"Name" : "result_URFtoDLF_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_get_coordcube_fu_1441", "Port" : "result_URFtoDLF_0"}]},
			{"Name" : "result_URtoUL_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_get_coordcube_fu_1441", "Port" : "result_URtoUL_0"}]},
			{"Name" : "result_UBtoDF_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_get_coordcube_fu_1441", "Port" : "result_UBtoDF_0"}]},
			{"Name" : "a", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "a"}]},
			{"Name" : "label_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "label_0"}]},
			{"Name" : "label_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "label_1"}]},
			{"Name" : "twistOld", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "twistOld"}]},
			{"Name" : "flipOld", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "flipOld"}]},
			{"Name" : "sliceOld", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "sliceOld"}]},
			{"Name" : "twistMove3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "twistMove3"}]},
			{"Name" : "flipMove3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "flipMove3"}]},
			{"Name" : "FRtoBR_Move3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "FRtoBR_Move3"}]},
			{"Name" : "P2Buffer_V_flip", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_flip"}]},
			{"Name" : "P2Buffer_V_twist", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_twist"}]},
			{"Name" : "P2Buffer_V_slice", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_slice"}]},
			{"Name" : "P2Buffer_V_parity", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_parity"}]},
			{"Name" : "P2Buffer_V_URFtoDLF", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_URFtoDLF"}]},
			{"Name" : "P2Buffer_V_FRtoBR", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_FRtoBR"}]},
			{"Name" : "P2Buffer_V_URtoDF", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_URtoDF"}]},
			{"Name" : "P2Buffer_V_depthPhas", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_depthPhas"}]},
			{"Name" : "P2Buffer_V_n", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_n"}]},
			{"Name" : "P2Buffer_V_i_0", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_0"}]},
			{"Name" : "P2Buffer_V_i_1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_1"}]},
			{"Name" : "P2Buffer_V_i_2", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_2"}]},
			{"Name" : "P2Buffer_V_i_3", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_3"}]},
			{"Name" : "P2Buffer_V_i_4", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_4"}]},
			{"Name" : "P2Buffer_V_i_5", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_5"}]},
			{"Name" : "P2Buffer_V_i_6", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_6"}]},
			{"Name" : "P2Buffer_V_i_7", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_7"}]},
			{"Name" : "P2Buffer_V_i_8", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_8"}]},
			{"Name" : "P2Buffer_V_i_9", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_9"}]},
			{"Name" : "P2Buffer_V_i_10", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_10"}]},
			{"Name" : "P2Buffer_V_i_11", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_11"}]},
			{"Name" : "P2Buffer_V_i_12", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_12"}]},
			{"Name" : "P2Buffer_V_i_13", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_13"}]},
			{"Name" : "P2Buffer_V_i_14", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_14"}]},
			{"Name" : "P2Buffer_V_i_15", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_15"}]},
			{"Name" : "P2Buffer_V_i_16", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_16"}]},
			{"Name" : "P2Buffer_V_i_17", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_17"}]},
			{"Name" : "P2Buffer_V_i_18", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_18"}]},
			{"Name" : "P2Buffer_V_i_19", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_19"}]},
			{"Name" : "P2Buffer_V_i_20", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_20"}]},
			{"Name" : "P2Buffer_V_i_21", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_21"}]},
			{"Name" : "P2Buffer_V_i_22", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_22"}]},
			{"Name" : "P2Buffer_V_i_23", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_23"}]},
			{"Name" : "P2Buffer_V_i_24", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_24"}]},
			{"Name" : "P2Buffer_V_i_25", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_25"}]},
			{"Name" : "P2Buffer_V_i_26", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_26"}]},
			{"Name" : "P2Buffer_V_i_27", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_27"}]},
			{"Name" : "P2Buffer_V_i_28", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_28"}]},
			{"Name" : "P2Buffer_V_i_29", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_29"}]},
			{"Name" : "P2Buffer_V_i_30", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "P2Buffer_V_i_30"}]},
			{"Name" : "search_sol_i", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "search_sol_i"}]},
			{"Name" : "parityMove", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "parityMove"}]},
			{"Name" : "nOld", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "nOld"}]},
			{"Name" : "URFtoDLF_Move3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "URFtoDLF_Move3"}]},
			{"Name" : "FRtoBR_Move3_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "FRtoBR_Move3_2"}]},
			{"Name" : "URtoDF_Move3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "URtoDF_Move3"}]},
			{"Name" : "label3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "label3_0"}]},
			{"Name" : "label3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "label3_1"}]},
			{"Name" : "search_sol_depthPhas", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_blockP1_fu_1276", "Port" : "search_sol_depthPhas"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_f_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ccRet_cp_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ccRet_ep_0_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ccRet_co_0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ccRet_eo_0_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.solution_CTRL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.solution_CTRL_BUS1_m_axi_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.solution_CTRL_BUS2_m_axi_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.solution_CTRL_BUS3_m_axi_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.count_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P1Buffer_flip_0_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P1Buffer_twist_0_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P1Buffer_slice_0_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P1Buffer_depthPhase1_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P1Buffer_n_0_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P1Buffer_0_i_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P3Buffer_parity_0_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P3Buffer_URFtoDLF_0_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P3Buffer_FRtoBR_0_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P3Buffer_URtoDF_0_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P3Buffer_n_0_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P3Buffer_0_i_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276", "Parent" : "0", "Child" : ["24", "25", "26", "42", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94"],
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
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P1Buffer_0_flip"}]},
			{"Name" : "P1Buffer_0_twist", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P1Buffer_0_twist"}]},
			{"Name" : "P1Buffer_0_slice", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P1Buffer_0_slice"}]},
			{"Name" : "P1Buffer_0_depthPha", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P1Buffer_0_depthPha"}]},
			{"Name" : "P1Buffer_0_n", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P1Buffer_0_n"}]},
			{"Name" : "P1Buffer_0_i", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P1Buffer_0_i"}]},
			{"Name" : "depthPhase1", "Type" : "None", "Direction" : "I"},
			{"Name" : "maxDepth", "Type" : "None", "Direction" : "I"},
			{"Name" : "URFtoDLF", "Type" : "None", "Direction" : "I"},
			{"Name" : "FRtoBR", "Type" : "None", "Direction" : "I"},
			{"Name" : "parity", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoUL", "Type" : "None", "Direction" : "I"},
			{"Name" : "UBtoDF", "Type" : "None", "Direction" : "I"},
			{"Name" : "P3Buffer_0_parity", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P3Buffer_0_parity"}]},
			{"Name" : "P3Buffer_0_URFtoDLF", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P3Buffer_0_URFtoDLF"}]},
			{"Name" : "P3Buffer_0_FRtoBR", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P3Buffer_0_FRtoBR"}]},
			{"Name" : "P3Buffer_0_URtoDF", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P3Buffer_0_URtoDF"}]},
			{"Name" : "P3Buffer_0_n", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P3Buffer_0_n"}]},
			{"Name" : "P3Buffer_0_i", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P3Buffer_0_i"}]},
			{"Name" : "encode_length", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "encode_length"}]},
			{"Name" : "encode_array", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "encode_array"}]},
			{"Name" : "twistMove2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "twistMove2"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "URFtoDLF_Move2"}]},
			{"Name" : "twistMove2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "flipMove2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "flipMove2"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "URtoDF_Move2"}]},
			{"Name" : "flipMove2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "FRtoBR_Move2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "FRtoBR_Move2"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "FRtoBR_Move2"}]},
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
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "label_0"}]},
			{"Name" : "label_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "label_1"}]},
			{"Name" : "a", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "a"}]},
			{"Name" : "twistOld", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "twistOld"}]},
			{"Name" : "flipOld", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "flipOld"}]},
			{"Name" : "sliceOld", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "sliceOld"}]},
			{"Name" : "twistMove3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "twistMove3"}]},
			{"Name" : "flipMove3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "flipMove3"}]},
			{"Name" : "FRtoBR_Move3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "FRtoBR_Move3"}]},
			{"Name" : "P2Buffer_V_flip", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_flip"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_flip"}]},
			{"Name" : "P2Buffer_V_twist", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_twist"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_twist"}]},
			{"Name" : "P2Buffer_V_slice", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_slice"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_slice"}]},
			{"Name" : "P2Buffer_V_parity", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_parity"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_parity"}]},
			{"Name" : "P2Buffer_V_URFtoDLF", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_URFtoDLF"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_URFtoDLF"}]},
			{"Name" : "P2Buffer_V_FRtoBR", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_FRtoBR"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_FRtoBR"}]},
			{"Name" : "P2Buffer_V_URtoDF", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_URtoDF"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_URtoDF"}]},
			{"Name" : "P2Buffer_V_depthPhas", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_depthPhas"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_depthPhas"}]},
			{"Name" : "P2Buffer_V_n", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_n"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_n"}]},
			{"Name" : "P2Buffer_V_i_0", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_0"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_0"}]},
			{"Name" : "P2Buffer_V_i_1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_1"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_1"}]},
			{"Name" : "P2Buffer_V_i_2", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_2"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_2"}]},
			{"Name" : "P2Buffer_V_i_3", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_3"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_3"}]},
			{"Name" : "P2Buffer_V_i_4", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_4"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_4"}]},
			{"Name" : "P2Buffer_V_i_5", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_5"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_5"}]},
			{"Name" : "P2Buffer_V_i_6", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_6"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_6"}]},
			{"Name" : "P2Buffer_V_i_7", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_7"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_7"}]},
			{"Name" : "P2Buffer_V_i_8", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_8"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_8"}]},
			{"Name" : "P2Buffer_V_i_9", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_9"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_9"}]},
			{"Name" : "P2Buffer_V_i_10", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_10"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_10"}]},
			{"Name" : "P2Buffer_V_i_11", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_11"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_11"}]},
			{"Name" : "P2Buffer_V_i_12", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_12"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_12"}]},
			{"Name" : "P2Buffer_V_i_13", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_13"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_13"}]},
			{"Name" : "P2Buffer_V_i_14", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_14"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_14"}]},
			{"Name" : "P2Buffer_V_i_15", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_15"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_15"}]},
			{"Name" : "P2Buffer_V_i_16", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_16"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_16"}]},
			{"Name" : "P2Buffer_V_i_17", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_17"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_17"}]},
			{"Name" : "P2Buffer_V_i_18", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_18"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_18"}]},
			{"Name" : "P2Buffer_V_i_19", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_19"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_19"}]},
			{"Name" : "P2Buffer_V_i_20", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_20"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_20"}]},
			{"Name" : "P2Buffer_V_i_21", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_21"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_21"}]},
			{"Name" : "P2Buffer_V_i_22", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_22"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_22"}]},
			{"Name" : "P2Buffer_V_i_23", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_23"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_23"}]},
			{"Name" : "P2Buffer_V_i_24", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_24"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_24"}]},
			{"Name" : "P2Buffer_V_i_25", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_25"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_25"}]},
			{"Name" : "P2Buffer_V_i_26", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_26"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_26"}]},
			{"Name" : "P2Buffer_V_i_27", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_27"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_27"}]},
			{"Name" : "P2Buffer_V_i_28", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_28"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_28"}]},
			{"Name" : "P2Buffer_V_i_29", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_29"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_29"}]},
			{"Name" : "P2Buffer_V_i_30", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_parallel_v2_fu_1456", "Port" : "P2Buffer_V_i_30"},
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "P2Buffer_V_i_30"}]},
			{"Name" : "search_sol_i", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "search_sol_i"}]},
			{"Name" : "parityMove", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "parityMove"}]},
			{"Name" : "nOld", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "nOld"}]},
			{"Name" : "URFtoDLF_Move3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "URFtoDLF_Move3"}]},
			{"Name" : "FRtoBR_Move3_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "FRtoBR_Move3_2"}]},
			{"Name" : "URtoDF_Move3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "URtoDF_Move3"}]},
			{"Name" : "label3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "label3_0"}]},
			{"Name" : "label3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "label3_1"}]},
			{"Name" : "search_sol_depthPhas", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_blockP2_fu_1316", "Port" : "search_sol_depthPhas"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.label_0_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.label_1_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_blockP2_fu_1316", "Parent" : "23", "Child" : ["27", "28"],
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
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P3Buffer_0_parity"}]},
			{"Name" : "P3Buffer_0_URFtoDLF", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P3Buffer_0_URFtoDLF"}]},
			{"Name" : "P3Buffer_0_FRtoBR", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P3Buffer_0_FRtoBR"}]},
			{"Name" : "P3Buffer_0_URtoDF", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P3Buffer_0_URtoDF"}]},
			{"Name" : "P3Buffer_0_n", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P3Buffer_0_n"}]},
			{"Name" : "P3Buffer_0_i", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P3Buffer_0_i"}]},
			{"Name" : "maxDepth", "Type" : "None", "Direction" : "I"},
			{"Name" : "encode_length", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "encode_array", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "FRtoBR_Move2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "FRtoBR_Move2"}]},
			{"Name" : "FRtoBR_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URFtoDLF_Move2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "URFtoDLF_Move2"}]},
			{"Name" : "URFtoDLF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoDF_Move2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "URtoDF_Move2"}]},
			{"Name" : "URtoDF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoUL_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "UBtoDF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "MergeURtoULandUBtoDF2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_URFtoDLF_Parity_Prun2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_URtoDF_Parity_Prun2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "P2Buffer_V_flip", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_flip"}]},
			{"Name" : "P2Buffer_V_twist", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_twist"}]},
			{"Name" : "P2Buffer_V_slice", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_slice"}]},
			{"Name" : "P2Buffer_V_parity", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_parity"}]},
			{"Name" : "P2Buffer_V_URFtoDLF", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_URFtoDLF"}]},
			{"Name" : "P2Buffer_V_FRtoBR", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_FRtoBR"}]},
			{"Name" : "P2Buffer_V_URtoDF", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_URtoDF"}]},
			{"Name" : "P2Buffer_V_depthPhas", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_depthPhas"}]},
			{"Name" : "P2Buffer_V_n", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_n"}]},
			{"Name" : "P2Buffer_V_i_0", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_0"}]},
			{"Name" : "P2Buffer_V_i_1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_1"}]},
			{"Name" : "P2Buffer_V_i_2", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_2"}]},
			{"Name" : "P2Buffer_V_i_3", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_3"}]},
			{"Name" : "P2Buffer_V_i_4", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_4"}]},
			{"Name" : "P2Buffer_V_i_5", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_5"}]},
			{"Name" : "P2Buffer_V_i_6", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_6"}]},
			{"Name" : "P2Buffer_V_i_7", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_7"}]},
			{"Name" : "P2Buffer_V_i_8", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_8"}]},
			{"Name" : "P2Buffer_V_i_9", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_9"}]},
			{"Name" : "P2Buffer_V_i_10", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_10"}]},
			{"Name" : "P2Buffer_V_i_11", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_11"}]},
			{"Name" : "P2Buffer_V_i_12", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_12"}]},
			{"Name" : "P2Buffer_V_i_13", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_13"}]},
			{"Name" : "P2Buffer_V_i_14", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_14"}]},
			{"Name" : "P2Buffer_V_i_15", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_15"}]},
			{"Name" : "P2Buffer_V_i_16", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_16"}]},
			{"Name" : "P2Buffer_V_i_17", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_17"}]},
			{"Name" : "P2Buffer_V_i_18", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_18"}]},
			{"Name" : "P2Buffer_V_i_19", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_19"}]},
			{"Name" : "P2Buffer_V_i_20", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_20"}]},
			{"Name" : "P2Buffer_V_i_21", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_21"}]},
			{"Name" : "P2Buffer_V_i_22", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_22"}]},
			{"Name" : "P2Buffer_V_i_23", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_23"}]},
			{"Name" : "P2Buffer_V_i_24", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_24"}]},
			{"Name" : "P2Buffer_V_i_25", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_25"}]},
			{"Name" : "P2Buffer_V_i_26", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_26"}]},
			{"Name" : "P2Buffer_V_i_27", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_27"}]},
			{"Name" : "P2Buffer_V_i_28", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_28"}]},
			{"Name" : "P2Buffer_V_i_29", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_29"}]},
			{"Name" : "P2Buffer_V_i_30", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_30"}]},
			{"Name" : "search_sol_i", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "search_sol_i"}]},
			{"Name" : "parityMove", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "parityMove"}]},
			{"Name" : "nOld", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "nOld"}]},
			{"Name" : "URFtoDLF_Move3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "URFtoDLF_Move3"}]},
			{"Name" : "FRtoBR_Move3_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "FRtoBR_Move3_2"}]},
			{"Name" : "URtoDF_Move3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "URtoDF_Move3"}]},
			{"Name" : "label3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "label3_0"}]},
			{"Name" : "label3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "label3_1"}]},
			{"Name" : "search_sol_depthPhas", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "search_sol_depthPhas"}]},
			{"Name" : "a", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_phase2_fu_967", "Port" : "a"}]}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_blockP2_fu_1316.search_sol_i_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_blockP2_fu_1316.grp_phase2_fu_967", "Parent" : "26", "Child" : ["29", "30", "31", "39", "40", "41"],
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
					{"ID" : "31", "SubInstance" : "grp_P2_fu_1689", "Port" : "P3Buffer_0_parity"}]},
			{"Name" : "P3Buffer_0_URFtoDLF", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_P2_fu_1689", "Port" : "P3Buffer_0_URFtoDLF"}]},
			{"Name" : "P3Buffer_0_FRtoBR", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_P2_fu_1689", "Port" : "P3Buffer_0_FRtoBR"}]},
			{"Name" : "P3Buffer_0_URtoDF", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_P2_fu_1689", "Port" : "P3Buffer_0_URtoDF"}]},
			{"Name" : "P3Buffer_0_n", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_P2_fu_1689", "Port" : "P3Buffer_0_n"}]},
			{"Name" : "P3Buffer_0_i", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_P2_fu_1689", "Port" : "P3Buffer_0_i"}]},
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
					{"ID" : "31", "SubInstance" : "grp_P2_fu_1689", "Port" : "FRtoBR_Move2"}]},
			{"Name" : "FRtoBR_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URFtoDLF_Move2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "URFtoDLF_Move2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "URFtoDLF_Move2_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_getPruning_2_fu_1742", "Port" : "table_r"},
					{"ID" : "31", "SubInstance" : "grp_P2_fu_1689", "Port" : "URFtoDLF_Move2"}]},
			{"Name" : "URFtoDLF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoDF_Move2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "URtoDF_Move2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "URtoDF_Move2_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_getPruning_228_fu_1750", "Port" : "table_r"},
					{"ID" : "31", "SubInstance" : "grp_P2_fu_1689", "Port" : "URtoDF_Move2"}]},
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
					{"ID" : "31", "SubInstance" : "grp_P2_fu_1689", "Port" : "search_sol_i"}]},
			{"Name" : "parityMove", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_P2_fu_1689", "Port" : "parityMove"}]},
			{"Name" : "nOld", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_P2_fu_1689", "Port" : "nOld"}]},
			{"Name" : "URFtoDLF_Move3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_P2_fu_1689", "Port" : "URFtoDLF_Move3"}]},
			{"Name" : "FRtoBR_Move3_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_P2_fu_1689", "Port" : "FRtoBR_Move3_2"}]},
			{"Name" : "URtoDF_Move3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_P2_fu_1689", "Port" : "URtoDF_Move3"}]},
			{"Name" : "label3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_P2_fu_1689", "Port" : "label3_0"}]},
			{"Name" : "label3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_P2_fu_1689", "Port" : "label3_1"}]},
			{"Name" : "search_sol_depthPhas", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_P2_fu_1689", "Port" : "search_sol_depthPhas"}]},
			{"Name" : "a", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_blockP2_fu_1316.grp_phase2_fu_967.parityMove_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_blockP2_fu_1316.grp_phase2_fu_967.search_0_i_U", "Parent" : "28"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_blockP2_fu_1316.grp_phase2_fu_967.grp_P2_fu_1689", "Parent" : "28", "Child" : ["32", "33", "34", "35", "36", "37", "38"],
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
	{"ID" : "32", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_blockP2_fu_1316.grp_phase2_fu_967.grp_P2_fu_1689.URFtoDLF_Move3_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_blockP2_fu_1316.grp_phase2_fu_967.grp_P2_fu_1689.FRtoBR_Move3_2_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_blockP2_fu_1316.grp_phase2_fu_967.grp_P2_fu_1689.URtoDF_Move3_U", "Parent" : "31"},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_blockP2_fu_1316.grp_phase2_fu_967.grp_P2_fu_1689.label3_0_U", "Parent" : "31"},
	{"ID" : "36", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_blockP2_fu_1316.grp_phase2_fu_967.grp_P2_fu_1689.label3_1_U", "Parent" : "31"},
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_blockP2_fu_1316.grp_phase2_fu_967.grp_P2_fu_1689.parityMove_U", "Parent" : "31"},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_blockP2_fu_1316.grp_phase2_fu_967.grp_P2_fu_1689.search_0_i_U", "Parent" : "31"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_blockP2_fu_1316.grp_phase2_fu_967.grp_getPruning_2_fu_1742", "Parent" : "28",
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
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_blockP2_fu_1316.grp_phase2_fu_967.grp_getPruning_228_fu_1750", "Parent" : "28",
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
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_blockP2_fu_1316.grp_phase2_fu_967.solution_mac_mulatde_U162", "Parent" : "28"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_parallel_v2_fu_1456", "Parent" : "23", "Child" : ["43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54"],
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
					{"ID" : "50", "SubInstance" : "grp_getPruning_fu_1612", "Port" : "table_r"}]},
			{"Name" : "twistMove2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "flipMove2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "flipMove2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "flipMove2_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_getPruning_1_fu_1604", "Port" : "table_r"}]},
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
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_parallel_v2_fu_1456.twistMove3_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_parallel_v2_fu_1456.flipMove3_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_parallel_v2_fu_1456.FRtoBR_Move3_U", "Parent" : "42"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_parallel_v2_fu_1456.label_0_U", "Parent" : "42"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_parallel_v2_fu_1456.label_1_U", "Parent" : "42"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_parallel_v2_fu_1456.search_new_0_i_U", "Parent" : "42"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_parallel_v2_fu_1456.grp_getPruning_1_fu_1604", "Parent" : "42",
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
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_parallel_v2_fu_1456.grp_getPruning_fu_1612", "Parent" : "42",
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
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_parallel_v2_fu_1456.solution_mac_mulaqcK_U64", "Parent" : "42"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_parallel_v2_fu_1456.solution_mul_mul_rcU_U65", "Parent" : "42"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_parallel_v2_fu_1456.solution_mac_mulasc4_U66", "Parent" : "42"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.grp_parallel_v2_fu_1456.solution_mac_mulasc4_U67", "Parent" : "42"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_FRtoBR_fifo_U", "Parent" : "23"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_URFtoDLF_fifo_U", "Parent" : "23"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_URtoDF_fifo_U", "Parent" : "23"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_depthPhas_fifo_U", "Parent" : "23"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_flip_fifo_U", "Parent" : "23"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_0_fifo_U", "Parent" : "23"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_1_fifo_U", "Parent" : "23"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_10_fifo_U", "Parent" : "23"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_11_fifo_U", "Parent" : "23"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_12_fifo_U", "Parent" : "23"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_13_fifo_U", "Parent" : "23"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_14_fifo_U", "Parent" : "23"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_15_fifo_U", "Parent" : "23"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_16_fifo_U", "Parent" : "23"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_17_fifo_U", "Parent" : "23"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_18_fifo_U", "Parent" : "23"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_19_fifo_U", "Parent" : "23"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_2_fifo_U", "Parent" : "23"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_20_fifo_U", "Parent" : "23"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_21_fifo_U", "Parent" : "23"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_22_fifo_U", "Parent" : "23"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_23_fifo_U", "Parent" : "23"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_24_fifo_U", "Parent" : "23"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_25_fifo_U", "Parent" : "23"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_26_fifo_U", "Parent" : "23"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_27_fifo_U", "Parent" : "23"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_28_fifo_U", "Parent" : "23"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_29_fifo_U", "Parent" : "23"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_3_fifo_U", "Parent" : "23"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_30_fifo_U", "Parent" : "23"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_4_fifo_U", "Parent" : "23"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_5_fifo_U", "Parent" : "23"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_6_fifo_U", "Parent" : "23"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_7_fifo_U", "Parent" : "23"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_8_fifo_U", "Parent" : "23"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_i_9_fifo_U", "Parent" : "23"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_n_fifo_U", "Parent" : "23"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_parity_fifo_U", "Parent" : "23"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_slice_fifo_U", "Parent" : "23"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_blockP1_fu_1276.P2Buffer_V_twist_fifo_U", "Parent" : "23"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_1441", "Parent" : "0", "Child" : ["96", "107", "109", "111", "114"],
		"CDFG" : "get_coordcube",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "276", "EstimateLatencyMax" : "17792",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getFRtoBR_fu_189"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getUBtoDF_fu_195"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getURtoUL_fu_201"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getURFtoDLF_fu_207"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getURtoDF_fu_213"}],
		"Port" : [
			{"Name" : "cubiecube_0_cp", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_getURFtoDLF_fu_207", "Port" : "cubiecube_0_cp"}]},
			{"Name" : "cubiecube_0_co", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cubiecube_0_ep", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_getURtoUL_fu_201", "Port" : "cubiecube_0_ep"},
					{"ID" : "114", "SubInstance" : "grp_getURtoDF_fu_213", "Port" : "cubiecube_0_ep"},
					{"ID" : "107", "SubInstance" : "grp_getUBtoDF_fu_195", "Port" : "cubiecube_0_ep"},
					{"ID" : "96", "SubInstance" : "grp_getFRtoBR_fu_189", "Port" : "cubiecube_0_ep"}]},
			{"Name" : "cubiecube_0_eo", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "result_twist_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "result_flip_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "result_parity_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "result_FRtoBR_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "result_URFtoDLF_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "result_URtoUL_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "result_UBtoDF_0", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_1441.grp_getFRtoBR_fu_189", "Parent" : "95", "Child" : ["97", "98", "99", "100", "101", "102", "103", "104", "105", "106"],
		"CDFG" : "getFRtoBR",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "53", "EstimateLatencyMax" : "5681",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "cubiecube_0_ep", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_1441.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U24", "Parent" : "96"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_1441.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U25", "Parent" : "96"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_1441.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U26", "Parent" : "96"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_1441.grp_getFRtoBR_fu_189.solution_sdiv_32nkbM_U27", "Parent" : "96"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_1441.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U28", "Parent" : "96"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_1441.grp_getFRtoBR_fu_189.solution_mux_42_1lbW_U29", "Parent" : "96"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_1441.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U30", "Parent" : "96"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_1441.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U31", "Parent" : "96"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_1441.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U32", "Parent" : "96"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_1441.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U33", "Parent" : "96"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_1441.grp_getUBtoDF_fu_195", "Parent" : "95", "Child" : ["108"],
		"CDFG" : "getUBtoDF",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46", "EstimateLatencyMax" : "5530",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "cubiecube_0_ep", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_1441.grp_getUBtoDF_fu_195.solution_sdiv_32nkbM_U43", "Parent" : "107"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_1441.grp_getURtoUL_fu_201", "Parent" : "95", "Child" : ["110"],
		"CDFG" : "getURtoUL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46", "EstimateLatencyMax" : "5530",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "cubiecube_0_ep", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_1441.grp_getURtoUL_fu_201.solution_sdiv_32nkbM_U41", "Parent" : "109"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_1441.grp_getURFtoDLF_fu_207", "Parent" : "95", "Child" : ["112", "113"],
		"CDFG" : "getURFtoDLF",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "4177",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "cubiecube_0_cp", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_1441.grp_getURFtoDLF_fu_207.corner6_U", "Parent" : "111"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_1441.grp_getURFtoDLF_fu_207.solution_sdiv_32nkbM_U38", "Parent" : "111"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_1441.grp_getURtoDF_fu_213", "Parent" : "95", "Child" : ["115"],
		"CDFG" : "getURtoDF",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46", "EstimateLatencyMax" : "886",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "cubiecube_0_ep", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_1441.grp_getURtoDF_fu_213.edge6_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_toCubieCube_fu_1467", "Parent" : "0", "Child" : ["117", "118", "119", "120", "121", "122", "123", "124"],
		"CDFG" : "toCubieCube",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "228", "EstimateLatencyMax" : "1084",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_convert_edge_fu_430"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_convert_edge_fu_430"}],
		"Port" : [
			{"Name" : "facecube_0_f", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ccRet_cp_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "ccRet_ep_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cornerFacelet", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cornerColor_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cornerColor_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ccRet_co_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edgeFacelet_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "edgeFacelet_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "edgeColor_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "edgeColor_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ccRet_eo_0", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_toCubieCube_fu_1467.cornerFacelet_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_toCubieCube_fu_1467.cornerColor_1_U", "Parent" : "116"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_toCubieCube_fu_1467.cornerColor_2_U", "Parent" : "116"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_toCubieCube_fu_1467.edgeFacelet_0_U", "Parent" : "116"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_toCubieCube_fu_1467.edgeFacelet_1_U", "Parent" : "116"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_toCubieCube_fu_1467.edgeColor_0_U", "Parent" : "116"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_toCubieCube_fu_1467.edgeColor_1_U", "Parent" : "116"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_toCubieCube_fu_1467.grp_convert_edge_fu_430", "Parent" : "116",
		"CDFG" : "convert_edge",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_verify_fu_1495", "Parent" : "0", "Child" : ["126", "127", "128"],
		"CDFG" : "verify",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "61", "EstimateLatencyMax" : "573",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "cubiecube_0_cp", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cubiecube_0_co", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cubiecube_0_ep", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cubiecube_0_eo", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_verify_fu_1495.edgeCount_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_verify_fu_1495.cornerCount_U", "Parent" : "125"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_verify_fu_1495.solution_urem_5nsibs_U16", "Parent" : "125"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_get_facecube_fromstr_fu_1507", "Parent" : "0",
		"CDFG" : "get_facecube_fromstr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "109", "EstimateLatencyMax" : "109",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "cubeString", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_f_0", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.solution_mul_mul_rcU_U378", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	solution {
		CTRL_BUS1 {Type I LastRead 29 FirstWrite -1}
		CTRL_BUS2 {Type I LastRead 29 FirstWrite -1}
		CTRL_BUS3 {Type I LastRead 28 FirstWrite -1}
		facelets {Type I LastRead 10 FirstWrite -1}
		maxDepth {Type I LastRead 0 FirstWrite -1}
		unsolvable {Type O LastRead -1 FirstWrite 0}
		encode_length {Type O LastRead -1 FirstWrite 0}
		encode_array {Type O LastRead -1 FirstWrite 8}
		twistMove2 {Type I LastRead 0 FirstWrite -1}
		flipMove2 {Type I LastRead 0 FirstWrite -1}
		FRtoBR_Move2 {Type I LastRead 0 FirstWrite -1}
		URFtoDLF_Move2 {Type I LastRead 0 FirstWrite -1}
		URtoDF_Move2 {Type I LastRead 0 FirstWrite -1}
		URtoUL_Move2 {Type I LastRead 0 FirstWrite -1}
		UBtoDF_Move2 {Type I LastRead 0 FirstWrite -1}
		MergeURtoULandUBtoDF2 {Type I LastRead 0 FirstWrite -1}
		Slice_URFtoDLF_Parity_Prun2 {Type I LastRead 0 FirstWrite -1}
		Slice_URtoDF_Parity_Prun2 {Type I LastRead 0 FirstWrite -1}
		Slice_Twist_Prun2 {Type I LastRead 0 FirstWrite -1}
		Slice_Flip_Prun2 {Type I LastRead 0 FirstWrite -1}
		res_f_0 {Type IO LastRead -1 FirstWrite -1}
		ccRet_cp_0 {Type IO LastRead -1 FirstWrite -1}
		ccRet_ep_0 {Type IO LastRead -1 FirstWrite -1}
		cornerFacelet {Type I LastRead -1 FirstWrite -1}
		cornerColor_1 {Type I LastRead -1 FirstWrite -1}
		cornerColor_2 {Type I LastRead -1 FirstWrite -1}
		ccRet_co_0 {Type IO LastRead -1 FirstWrite -1}
		edgeFacelet_0 {Type I LastRead -1 FirstWrite -1}
		edgeFacelet_1 {Type I LastRead -1 FirstWrite -1}
		edgeColor_0 {Type I LastRead -1 FirstWrite -1}
		edgeColor_1 {Type I LastRead -1 FirstWrite -1}
		ccRet_eo_0 {Type IO LastRead -1 FirstWrite -1}
		result_twist_0 {Type IO LastRead -1 FirstWrite -1}
		result_flip_0 {Type IO LastRead -1 FirstWrite -1}
		result_parity_0 {Type IO LastRead -1 FirstWrite -1}
		result_FRtoBR_0 {Type IO LastRead -1 FirstWrite -1}
		result_URFtoDLF_0 {Type IO LastRead -1 FirstWrite -1}
		result_URtoUL_0 {Type IO LastRead -1 FirstWrite -1}
		result_UBtoDF_0 {Type IO LastRead -1 FirstWrite -1}
		a {Type IO LastRead -1 FirstWrite -1}
		label_0 {Type I LastRead -1 FirstWrite -1}
		label_1 {Type I LastRead -1 FirstWrite -1}
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
		index {Type I LastRead 0 FirstWrite -1}}
	get_coordcube {
		cubiecube_0_cp {Type I LastRead 5 FirstWrite -1}
		cubiecube_0_co {Type I LastRead 1 FirstWrite -1}
		cubiecube_0_ep {Type I LastRead 2 FirstWrite -1}
		cubiecube_0_eo {Type I LastRead 2 FirstWrite -1}
		result_twist_0 {Type O LastRead -1 FirstWrite 1}
		result_flip_0 {Type O LastRead -1 FirstWrite 2}
		result_parity_0 {Type O LastRead -1 FirstWrite 10}
		result_FRtoBR_0 {Type O LastRead -1 FirstWrite 4}
		result_URFtoDLF_0 {Type O LastRead -1 FirstWrite 4}
		result_URtoUL_0 {Type O LastRead -1 FirstWrite 6}
		result_UBtoDF_0 {Type O LastRead -1 FirstWrite 8}}
	getFRtoBR {
		cubiecube_0_ep {Type I LastRead 2 FirstWrite -1}}
	getUBtoDF {
		cubiecube_0_ep {Type I LastRead 1 FirstWrite -1}}
	getURtoUL {
		cubiecube_0_ep {Type I LastRead 1 FirstWrite -1}}
	getURFtoDLF {
		cubiecube_0_cp {Type I LastRead 2 FirstWrite -1}}
	getURtoDF {
		cubiecube_0_ep {Type I LastRead 2 FirstWrite -1}}
	toCubieCube {
		facecube_0_f {Type I LastRead 8 FirstWrite -1}
		ccRet_cp_0 {Type O LastRead -1 FirstWrite 1}
		ccRet_ep_0 {Type O LastRead -1 FirstWrite 2}
		cornerFacelet {Type I LastRead -1 FirstWrite -1}
		cornerColor_1 {Type I LastRead -1 FirstWrite -1}
		cornerColor_2 {Type I LastRead -1 FirstWrite -1}
		ccRet_co_0 {Type O LastRead -1 FirstWrite 11}
		edgeFacelet_0 {Type I LastRead -1 FirstWrite -1}
		edgeFacelet_1 {Type I LastRead -1 FirstWrite -1}
		edgeColor_0 {Type I LastRead -1 FirstWrite -1}
		edgeColor_1 {Type I LastRead -1 FirstWrite -1}
		ccRet_eo_0 {Type O LastRead -1 FirstWrite 10}}
	convert_edge {
		in_r {Type I LastRead 0 FirstWrite -1}}
	verify {
		cubiecube_0_cp {Type I LastRead 20 FirstWrite -1}
		cubiecube_0_co {Type I LastRead 8 FirstWrite -1}
		cubiecube_0_ep {Type I LastRead 19 FirstWrite -1}
		cubiecube_0_eo {Type I LastRead 5 FirstWrite -1}}
	get_facecube_fromstr {
		cubeString {Type I LastRead 1 FirstWrite -1}
		res_f_0 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "68", "Max" : "5470996276245274"}
	, {"Name" : "Interval", "Min" : "69", "Max" : "-1784876261"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	CTRL_BUS1 { m_axi {  { m_axi_CTRL_BUS1_AWVALID VALID 1 1 }  { m_axi_CTRL_BUS1_AWREADY READY 0 1 }  { m_axi_CTRL_BUS1_AWADDR ADDR 1 32 }  { m_axi_CTRL_BUS1_AWID ID 1 1 }  { m_axi_CTRL_BUS1_AWLEN LEN 1 8 }  { m_axi_CTRL_BUS1_AWSIZE SIZE 1 3 }  { m_axi_CTRL_BUS1_AWBURST BURST 1 2 }  { m_axi_CTRL_BUS1_AWLOCK LOCK 1 2 }  { m_axi_CTRL_BUS1_AWCACHE CACHE 1 4 }  { m_axi_CTRL_BUS1_AWPROT PROT 1 3 }  { m_axi_CTRL_BUS1_AWQOS QOS 1 4 }  { m_axi_CTRL_BUS1_AWREGION REGION 1 4 }  { m_axi_CTRL_BUS1_AWUSER USER 1 1 }  { m_axi_CTRL_BUS1_WVALID VALID 1 1 }  { m_axi_CTRL_BUS1_WREADY READY 0 1 }  { m_axi_CTRL_BUS1_WDATA DATA 1 32 }  { m_axi_CTRL_BUS1_WSTRB STRB 1 4 }  { m_axi_CTRL_BUS1_WLAST LAST 1 1 }  { m_axi_CTRL_BUS1_WID ID 1 1 }  { m_axi_CTRL_BUS1_WUSER USER 1 1 }  { m_axi_CTRL_BUS1_ARVALID VALID 1 1 }  { m_axi_CTRL_BUS1_ARREADY READY 0 1 }  { m_axi_CTRL_BUS1_ARADDR ADDR 1 32 }  { m_axi_CTRL_BUS1_ARID ID 1 1 }  { m_axi_CTRL_BUS1_ARLEN LEN 1 8 }  { m_axi_CTRL_BUS1_ARSIZE SIZE 1 3 }  { m_axi_CTRL_BUS1_ARBURST BURST 1 2 }  { m_axi_CTRL_BUS1_ARLOCK LOCK 1 2 }  { m_axi_CTRL_BUS1_ARCACHE CACHE 1 4 }  { m_axi_CTRL_BUS1_ARPROT PROT 1 3 }  { m_axi_CTRL_BUS1_ARQOS QOS 1 4 }  { m_axi_CTRL_BUS1_ARREGION REGION 1 4 }  { m_axi_CTRL_BUS1_ARUSER USER 1 1 }  { m_axi_CTRL_BUS1_RVALID VALID 0 1 }  { m_axi_CTRL_BUS1_RREADY READY 1 1 }  { m_axi_CTRL_BUS1_RDATA DATA 0 32 }  { m_axi_CTRL_BUS1_RLAST LAST 0 1 }  { m_axi_CTRL_BUS1_RID ID 0 1 }  { m_axi_CTRL_BUS1_RUSER USER 0 1 }  { m_axi_CTRL_BUS1_RRESP RESP 0 2 }  { m_axi_CTRL_BUS1_BVALID VALID 0 1 }  { m_axi_CTRL_BUS1_BREADY READY 1 1 }  { m_axi_CTRL_BUS1_BRESP RESP 0 2 }  { m_axi_CTRL_BUS1_BID ID 0 1 }  { m_axi_CTRL_BUS1_BUSER USER 0 1 } } }
	CTRL_BUS2 { m_axi {  { m_axi_CTRL_BUS2_AWVALID VALID 1 1 }  { m_axi_CTRL_BUS2_AWREADY READY 0 1 }  { m_axi_CTRL_BUS2_AWADDR ADDR 1 32 }  { m_axi_CTRL_BUS2_AWID ID 1 1 }  { m_axi_CTRL_BUS2_AWLEN LEN 1 8 }  { m_axi_CTRL_BUS2_AWSIZE SIZE 1 3 }  { m_axi_CTRL_BUS2_AWBURST BURST 1 2 }  { m_axi_CTRL_BUS2_AWLOCK LOCK 1 2 }  { m_axi_CTRL_BUS2_AWCACHE CACHE 1 4 }  { m_axi_CTRL_BUS2_AWPROT PROT 1 3 }  { m_axi_CTRL_BUS2_AWQOS QOS 1 4 }  { m_axi_CTRL_BUS2_AWREGION REGION 1 4 }  { m_axi_CTRL_BUS2_AWUSER USER 1 1 }  { m_axi_CTRL_BUS2_WVALID VALID 1 1 }  { m_axi_CTRL_BUS2_WREADY READY 0 1 }  { m_axi_CTRL_BUS2_WDATA DATA 1 32 }  { m_axi_CTRL_BUS2_WSTRB STRB 1 4 }  { m_axi_CTRL_BUS2_WLAST LAST 1 1 }  { m_axi_CTRL_BUS2_WID ID 1 1 }  { m_axi_CTRL_BUS2_WUSER USER 1 1 }  { m_axi_CTRL_BUS2_ARVALID VALID 1 1 }  { m_axi_CTRL_BUS2_ARREADY READY 0 1 }  { m_axi_CTRL_BUS2_ARADDR ADDR 1 32 }  { m_axi_CTRL_BUS2_ARID ID 1 1 }  { m_axi_CTRL_BUS2_ARLEN LEN 1 8 }  { m_axi_CTRL_BUS2_ARSIZE SIZE 1 3 }  { m_axi_CTRL_BUS2_ARBURST BURST 1 2 }  { m_axi_CTRL_BUS2_ARLOCK LOCK 1 2 }  { m_axi_CTRL_BUS2_ARCACHE CACHE 1 4 }  { m_axi_CTRL_BUS2_ARPROT PROT 1 3 }  { m_axi_CTRL_BUS2_ARQOS QOS 1 4 }  { m_axi_CTRL_BUS2_ARREGION REGION 1 4 }  { m_axi_CTRL_BUS2_ARUSER USER 1 1 }  { m_axi_CTRL_BUS2_RVALID VALID 0 1 }  { m_axi_CTRL_BUS2_RREADY READY 1 1 }  { m_axi_CTRL_BUS2_RDATA DATA 0 32 }  { m_axi_CTRL_BUS2_RLAST LAST 0 1 }  { m_axi_CTRL_BUS2_RID ID 0 1 }  { m_axi_CTRL_BUS2_RUSER USER 0 1 }  { m_axi_CTRL_BUS2_RRESP RESP 0 2 }  { m_axi_CTRL_BUS2_BVALID VALID 0 1 }  { m_axi_CTRL_BUS2_BREADY READY 1 1 }  { m_axi_CTRL_BUS2_BRESP RESP 0 2 }  { m_axi_CTRL_BUS2_BID ID 0 1 }  { m_axi_CTRL_BUS2_BUSER USER 0 1 } } }
	CTRL_BUS3 { m_axi {  { m_axi_CTRL_BUS3_AWVALID VALID 1 1 }  { m_axi_CTRL_BUS3_AWREADY READY 0 1 }  { m_axi_CTRL_BUS3_AWADDR ADDR 1 32 }  { m_axi_CTRL_BUS3_AWID ID 1 1 }  { m_axi_CTRL_BUS3_AWLEN LEN 1 8 }  { m_axi_CTRL_BUS3_AWSIZE SIZE 1 3 }  { m_axi_CTRL_BUS3_AWBURST BURST 1 2 }  { m_axi_CTRL_BUS3_AWLOCK LOCK 1 2 }  { m_axi_CTRL_BUS3_AWCACHE CACHE 1 4 }  { m_axi_CTRL_BUS3_AWPROT PROT 1 3 }  { m_axi_CTRL_BUS3_AWQOS QOS 1 4 }  { m_axi_CTRL_BUS3_AWREGION REGION 1 4 }  { m_axi_CTRL_BUS3_AWUSER USER 1 1 }  { m_axi_CTRL_BUS3_WVALID VALID 1 1 }  { m_axi_CTRL_BUS3_WREADY READY 0 1 }  { m_axi_CTRL_BUS3_WDATA DATA 1 32 }  { m_axi_CTRL_BUS3_WSTRB STRB 1 4 }  { m_axi_CTRL_BUS3_WLAST LAST 1 1 }  { m_axi_CTRL_BUS3_WID ID 1 1 }  { m_axi_CTRL_BUS3_WUSER USER 1 1 }  { m_axi_CTRL_BUS3_ARVALID VALID 1 1 }  { m_axi_CTRL_BUS3_ARREADY READY 0 1 }  { m_axi_CTRL_BUS3_ARADDR ADDR 1 32 }  { m_axi_CTRL_BUS3_ARID ID 1 1 }  { m_axi_CTRL_BUS3_ARLEN LEN 1 8 }  { m_axi_CTRL_BUS3_ARSIZE SIZE 1 3 }  { m_axi_CTRL_BUS3_ARBURST BURST 1 2 }  { m_axi_CTRL_BUS3_ARLOCK LOCK 1 2 }  { m_axi_CTRL_BUS3_ARCACHE CACHE 1 4 }  { m_axi_CTRL_BUS3_ARPROT PROT 1 3 }  { m_axi_CTRL_BUS3_ARQOS QOS 1 4 }  { m_axi_CTRL_BUS3_ARREGION REGION 1 4 }  { m_axi_CTRL_BUS3_ARUSER USER 1 1 }  { m_axi_CTRL_BUS3_RVALID VALID 0 1 }  { m_axi_CTRL_BUS3_RREADY READY 1 1 }  { m_axi_CTRL_BUS3_RDATA DATA 0 32 }  { m_axi_CTRL_BUS3_RLAST LAST 0 1 }  { m_axi_CTRL_BUS3_RID ID 0 1 }  { m_axi_CTRL_BUS3_RUSER USER 0 1 }  { m_axi_CTRL_BUS3_RRESP RESP 0 2 }  { m_axi_CTRL_BUS3_BVALID VALID 0 1 }  { m_axi_CTRL_BUS3_BREADY READY 1 1 }  { m_axi_CTRL_BUS3_BRESP RESP 0 2 }  { m_axi_CTRL_BUS3_BID ID 0 1 }  { m_axi_CTRL_BUS3_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ CTRL_BUS1 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ CTRL_BUS2 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ CTRL_BUS3 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ CTRL_BUS1 1 }
	{ CTRL_BUS2 1 }
	{ CTRL_BUS3 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ CTRL_BUS1 1 }
	{ CTRL_BUS2 1 }
	{ CTRL_BUS3 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
