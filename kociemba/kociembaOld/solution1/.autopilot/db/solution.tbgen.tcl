set C_TypeInfoList {{ 
"solution" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"facelets": [[], {"array": [ {"scalar": "char"}, [54]]}] }, {"maxDepth": [[], {"scalar": "char"}] }, {"unsolvable": [[],{ "pointer":  {"scalar": "_Bool"}}] }, {"encode_length": [[],{ "pointer":  {"scalar": "char"}}] }, {"encode_array": [[], {"array": [ {"scalar": "char"}, [30]]}] }, {"twistMove2": [[], {"array": [ {"scalar": "short"}, [39366]]}] }, {"flipMove2": [[], {"array": [ {"scalar": "short"}, [36864]]}] }, {"FRtoBR_Move2": [[], {"array": [ {"scalar": "short"}, [213840]]}] }, {"URFtoDLF_Move2": [[], {"array": [ {"scalar": "short"}, [362880]]}] }, {"URtoDF_Move2": [[], {"array": [ {"scalar": "short"}, [362880]]}] }, {"URtoUL_Move2": [[], {"array": [ {"scalar": "short"}, [23760]]}] }, {"UBtoDF_Move2": [[], {"array": [ {"scalar": "short"}, [23760]]}] }, {"MergeURtoULandUBtoDF2": [[], {"array": [ {"scalar": "short"}, [112896]]}] }, {"Slice_URFtoDLF_Parity_Prun2": [[], {"array": [ {"scalar": "signed char"}, [483840]]}] }, {"Slice_URtoDF_Parity_Prun2": [[], {"array": [ {"scalar": "signed char"}, [483840]]}] }, {"Slice_Twist_Prun2": [[], {"array": [ {"scalar": "signed char"}, [541283]]}] }, {"Slice_Flip_Prun2": [[], {"array": [ {"scalar": "signed char"}, [506880]]}] }],[],""]
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
	{ CTRL_BUS int 16 regular {axi_master 0}  }
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
	{ "Name" : "CTRL_BUS", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "twistMove2","cData": "short","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "twistMove2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 39365,"step" : 1}]},{"cName": "flipMove2","cData": "short","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "flipMove2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 36863,"step" : 1}]},{"cName": "FRtoBR_Move2","cData": "short","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "FRtoBR_Move2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 213839,"step" : 1}]},{"cName": "URFtoDLF_Move2","cData": "short","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "URFtoDLF_Move2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 362879,"step" : 1}]},{"cName": "URtoDF_Move2","cData": "short","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "URtoDF_Move2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 362879,"step" : 1}]},{"cName": "URtoUL_Move2","cData": "short","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "URtoUL_Move2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 23759,"step" : 1}]},{"cName": "UBtoDF_Move2","cData": "short","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "UBtoDF_Move2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 23759,"step" : 1}]},{"cName": "MergeURtoULandUBtoDF2","cData": "short","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "MergeURtoULandUBtoDF2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 112895,"step" : 1}]},{"cName": "Slice_URFtoDLF_Parity_Prun2","cData": "signed char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "Slice_URFtoDLF_Parity_Prun2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 483838,"step" : 2}]},{"cName": "Slice_URtoDF_Parity_Prun2","cData": "signed char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "Slice_URtoDF_Parity_Prun2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 483838,"step" : 2}]},{"cName": "Slice_Twist_Prun2","cData": "signed char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "Slice_Twist_Prun2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 541282,"step" : 2}]},{"cName": "Slice_Flip_Prun2","cData": "signed char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "Slice_Flip_Prun2","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 506878,"step" : 2}]}]},{"low":8,"up":15,"cElement": [{"cName": "twistMove2","cData": "short","bit_use": { "low": 8,"up": 15},"cArray": [{"low" : 0,"up" : 39365,"step" : 1}]},{"cName": "flipMove2","cData": "short","bit_use": { "low": 8,"up": 15},"cArray": [{"low" : 0,"up" : 36863,"step" : 1}]},{"cName": "FRtoBR_Move2","cData": "short","bit_use": { "low": 8,"up": 15},"cArray": [{"low" : 0,"up" : 213839,"step" : 1}]},{"cName": "URFtoDLF_Move2","cData": "short","bit_use": { "low": 8,"up": 15},"cArray": [{"low" : 0,"up" : 362879,"step" : 1}]},{"cName": "URtoDF_Move2","cData": "short","bit_use": { "low": 8,"up": 15},"cArray": [{"low" : 0,"up" : 362879,"step" : 1}]},{"cName": "URtoUL_Move2","cData": "short","bit_use": { "low": 8,"up": 15},"cArray": [{"low" : 0,"up" : 23759,"step" : 1}]},{"cName": "UBtoDF_Move2","cData": "short","bit_use": { "low": 8,"up": 15},"cArray": [{"low" : 0,"up" : 23759,"step" : 1}]},{"cName": "MergeURtoULandUBtoDF2","cData": "short","bit_use": { "low": 8,"up": 15},"cArray": [{"low" : 0,"up" : 112895,"step" : 1}]},{"cName": "Slice_URFtoDLF_Parity_Prun2","cData": "signed char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 1,"up" : 483839,"step" : 2}]},{"cName": "Slice_URtoDF_Parity_Prun2","cData": "signed char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 1,"up" : 483839,"step" : 2}]},{"cName": "Slice_Twist_Prun2","cData": "signed char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 1,"up" : 541282,"step" : 2}]},{"cName": "","cData": "","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "Slice_Flip_Prun2","cData": "signed char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 1,"up" : 506879,"step" : 2}]}]}]} , 
 	{ "Name" : "facelets", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "facelets","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 53,"step" : 1}]}]}], "offset" : {"in":64}, "offset_end" : {"in":127}} , 
 	{ "Name" : "maxDepth", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "maxDepth","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":128}, "offset_end" : {"in":135}} , 
 	{ "Name" : "unsolvable", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_vld","bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "unsolvable","cData": "_Bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":136}, "offset_end" : {"out":143}} , 
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
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_CTRL_BUS_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_CTRL_BUS_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_CTRL_BUS_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_CTRL_BUS_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_CTRL_BUS_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_CTRL_BUS_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_CTRL_BUS_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_CTRL_BUS_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_CTRL_BUS_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_CTRL_BUS_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_CTRL_BUS_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_CTRL_BUS_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_CTRL_BUS_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_CTRL_BUS_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_CTRL_BUS_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_CTRL_BUS_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_CTRL_BUS_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_CTRL_BUS_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_CTRL_BUS_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_CTRL_BUS_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_CTRL_BUS_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_CTRL_BUS_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_CTRL_BUS_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_CTRL_BUS_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_CTRL_BUS_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_CTRL_BUS_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_CTRL_BUS_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_CTRL_BUS_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_CTRL_BUS_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_CTRL_BUS_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_CTRL_BUS_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_CTRL_BUS_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_CTRL_BUS_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_CTRL_BUS_BUSER sc_in sc_lv 1 signal 0 } 
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
 	{ "name": "m_axi_CTRL_BUS_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWVALID" }} , 
 	{ "name": "m_axi_CTRL_BUS_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWREADY" }} , 
 	{ "name": "m_axi_CTRL_BUS_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWADDR" }} , 
 	{ "name": "m_axi_CTRL_BUS_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWID" }} , 
 	{ "name": "m_axi_CTRL_BUS_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWLEN" }} , 
 	{ "name": "m_axi_CTRL_BUS_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_CTRL_BUS_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWBURST" }} , 
 	{ "name": "m_axi_CTRL_BUS_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_CTRL_BUS_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_CTRL_BUS_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWPROT" }} , 
 	{ "name": "m_axi_CTRL_BUS_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWQOS" }} , 
 	{ "name": "m_axi_CTRL_BUS_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWREGION" }} , 
 	{ "name": "m_axi_CTRL_BUS_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWUSER" }} , 
 	{ "name": "m_axi_CTRL_BUS_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WVALID" }} , 
 	{ "name": "m_axi_CTRL_BUS_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WREADY" }} , 
 	{ "name": "m_axi_CTRL_BUS_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WDATA" }} , 
 	{ "name": "m_axi_CTRL_BUS_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WSTRB" }} , 
 	{ "name": "m_axi_CTRL_BUS_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WLAST" }} , 
 	{ "name": "m_axi_CTRL_BUS_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WID" }} , 
 	{ "name": "m_axi_CTRL_BUS_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WUSER" }} , 
 	{ "name": "m_axi_CTRL_BUS_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARVALID" }} , 
 	{ "name": "m_axi_CTRL_BUS_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARREADY" }} , 
 	{ "name": "m_axi_CTRL_BUS_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARADDR" }} , 
 	{ "name": "m_axi_CTRL_BUS_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARID" }} , 
 	{ "name": "m_axi_CTRL_BUS_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARLEN" }} , 
 	{ "name": "m_axi_CTRL_BUS_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_CTRL_BUS_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARBURST" }} , 
 	{ "name": "m_axi_CTRL_BUS_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_CTRL_BUS_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_CTRL_BUS_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARPROT" }} , 
 	{ "name": "m_axi_CTRL_BUS_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARQOS" }} , 
 	{ "name": "m_axi_CTRL_BUS_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARREGION" }} , 
 	{ "name": "m_axi_CTRL_BUS_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARUSER" }} , 
 	{ "name": "m_axi_CTRL_BUS_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RVALID" }} , 
 	{ "name": "m_axi_CTRL_BUS_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RREADY" }} , 
 	{ "name": "m_axi_CTRL_BUS_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RDATA" }} , 
 	{ "name": "m_axi_CTRL_BUS_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RLAST" }} , 
 	{ "name": "m_axi_CTRL_BUS_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RID" }} , 
 	{ "name": "m_axi_CTRL_BUS_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RUSER" }} , 
 	{ "name": "m_axi_CTRL_BUS_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RRESP" }} , 
 	{ "name": "m_axi_CTRL_BUS_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BVALID" }} , 
 	{ "name": "m_axi_CTRL_BUS_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BREADY" }} , 
 	{ "name": "m_axi_CTRL_BUS_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BRESP" }} , 
 	{ "name": "m_axi_CTRL_BUS_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BID" }} , 
 	{ "name": "m_axi_CTRL_BUS_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "48", "56", "60", "68", "69", "70", "71", "72", "73", "74", "75", "76"],
		"CDFG" : "solution",
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
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_coordcube_fu_978"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_totalDepth_fu_1004"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_verify_fu_1040"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_toCubieCube_fu_1052"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_solutionToString_fu_1080"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getPruning_2_fu_1091"},
			{"State" : "ap_ST_fsm_state52", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getPruning_1_fu_1099"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_facecube_fromstr_fu_1107"}],
		"Port" : [
			{"Name" : "CTRL_BUS", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "CTRL_BUS_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "CTRL_BUS_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_totalDepth_fu_1004", "Port" : "FRtoBR_Move2"},
					{"ID" : "69", "SubInstance" : "grp_getPruning_2_fu_1091", "Port" : "table_r"},
					{"ID" : "70", "SubInstance" : "grp_getPruning_1_fu_1099", "Port" : "table_r"}]},
			{"Name" : "facelets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_get_facecube_fromstr_fu_1107", "Port" : "cubeString"}]},
			{"Name" : "maxDepth", "Type" : "None", "Direction" : "I"},
			{"Name" : "unsolvable", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "encode_length", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "encode_array", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_solutionToString_fu_1080", "Port" : "encode_array"}]},
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
					{"ID" : "60", "SubInstance" : "grp_toCubieCube_fu_1052", "Port" : "facecube_0_f"},
					{"ID" : "71", "SubInstance" : "grp_get_facecube_fromstr_fu_1107", "Port" : "res_f_0"}]},
			{"Name" : "ccRet_cp_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_toCubieCube_fu_1052", "Port" : "ccRet_cp_0"},
					{"ID" : "20", "SubInstance" : "grp_get_coordcube_fu_978", "Port" : "cubiecube_0_cp"},
					{"ID" : "56", "SubInstance" : "grp_verify_fu_1040", "Port" : "cubiecube_0_cp"}]},
			{"Name" : "ccRet_ep_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_toCubieCube_fu_1052", "Port" : "ccRet_ep_0"},
					{"ID" : "20", "SubInstance" : "grp_get_coordcube_fu_978", "Port" : "cubiecube_0_ep"},
					{"ID" : "56", "SubInstance" : "grp_verify_fu_1040", "Port" : "cubiecube_0_ep"}]},
			{"Name" : "cornerFacelet", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_toCubieCube_fu_1052", "Port" : "cornerFacelet"}]},
			{"Name" : "cornerColor_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_toCubieCube_fu_1052", "Port" : "cornerColor_1"}]},
			{"Name" : "cornerColor_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_toCubieCube_fu_1052", "Port" : "cornerColor_2"}]},
			{"Name" : "ccRet_co_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_toCubieCube_fu_1052", "Port" : "ccRet_co_0"},
					{"ID" : "20", "SubInstance" : "grp_get_coordcube_fu_978", "Port" : "cubiecube_0_co"},
					{"ID" : "56", "SubInstance" : "grp_verify_fu_1040", "Port" : "cubiecube_0_co"}]},
			{"Name" : "edgeFacelet_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_toCubieCube_fu_1052", "Port" : "edgeFacelet_0"}]},
			{"Name" : "edgeFacelet_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_toCubieCube_fu_1052", "Port" : "edgeFacelet_1"}]},
			{"Name" : "edgeColor_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_toCubieCube_fu_1052", "Port" : "edgeColor_0"}]},
			{"Name" : "edgeColor_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_toCubieCube_fu_1052", "Port" : "edgeColor_1"}]},
			{"Name" : "ccRet_eo_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_toCubieCube_fu_1052", "Port" : "ccRet_eo_0"},
					{"ID" : "20", "SubInstance" : "grp_get_coordcube_fu_978", "Port" : "cubiecube_0_eo"},
					{"ID" : "56", "SubInstance" : "grp_verify_fu_1040", "Port" : "cubiecube_0_eo"}]},
			{"Name" : "result_twist_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_get_coordcube_fu_978", "Port" : "result_twist_0"}]},
			{"Name" : "result_flip_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_get_coordcube_fu_978", "Port" : "result_flip_0"}]},
			{"Name" : "result_parity_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_get_coordcube_fu_978", "Port" : "result_parity_0"}]},
			{"Name" : "result_FRtoBR_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_get_coordcube_fu_978", "Port" : "result_FRtoBR_0"}]},
			{"Name" : "result_URFtoDLF_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_get_coordcube_fu_978", "Port" : "result_URFtoDLF_0"}]},
			{"Name" : "result_URtoUL_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_get_coordcube_fu_978", "Port" : "result_URtoUL_0"}]},
			{"Name" : "result_UBtoDF_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_get_coordcube_fu_978", "Port" : "result_UBtoDF_0"}]},
			{"Name" : "search_minDistPhase1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "search_ax_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_solutionToString_fu_1080", "Port" : "search_0_ax"},
					{"ID" : "48", "SubInstance" : "grp_totalDepth_fu_1004", "Port" : "search_0_ax"}]},
			{"Name" : "search_po_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_solutionToString_fu_1080", "Port" : "search_0_po"},
					{"ID" : "48", "SubInstance" : "grp_totalDepth_fu_1004", "Port" : "search_0_po"}]},
			{"Name" : "search_flip_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "search_twist_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "search_slice_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "parityMove1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_totalDepth_fu_1004", "Port" : "parityMove1"}]},
			{"Name" : "search_URtoDF_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_totalDepth_fu_1004", "Port" : "search_URtoDF_0"}]},
			{"Name" : "search_minDistPhase2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_totalDepth_fu_1004", "Port" : "search_minDistPhase2"}]},
			{"Name" : "search_parity_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_totalDepth_fu_1004", "Port" : "search_0_parity"}]},
			{"Name" : "search_URFtoDLF_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_totalDepth_fu_1004", "Port" : "search_0_URFtoDLF"}]},
			{"Name" : "search_FRtoBR_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_totalDepth_fu_1004", "Port" : "search_0_FRtoBR"}]},
			{"Name" : "search_URtoUL_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_totalDepth_fu_1004", "Port" : "search_0_URtoUL"}]},
			{"Name" : "search_UBtoDF_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_totalDepth_fu_1004", "Port" : "search_0_UBtoDF"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_f_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ccRet_cp_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ccRet_ep_0_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ccRet_co_0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ccRet_eo_0_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.search_minDistPhase1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.search_ax_0_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.search_po_0_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.search_flip_0_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.search_twist_0_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.search_slice_0_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.search_parity_0_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.search_URFtoDLF_0_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.search_FRtoBR_0_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.search_URtoUL_0_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.search_UBtoDF_0_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.solution_CTRL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.solution_CTRL_BUS_m_axi_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.count_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978", "Parent" : "0", "Child" : ["21", "33", "38", "43", "46"],
		"CDFG" : "get_coordcube",
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
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getFRtoBR_fu_189"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getUBtoDF_fu_195"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getURtoUL_fu_201"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getURFtoDLF_fu_207"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getURtoDF_fu_213"}],
		"Port" : [
			{"Name" : "cubiecube_0_cp", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_getURFtoDLF_fu_207", "Port" : "cubiecube_0_cp"}]},
			{"Name" : "cubiecube_0_co", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cubiecube_0_ep", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_getURtoUL_fu_201", "Port" : "cubiecube_0_ep"},
					{"ID" : "33", "SubInstance" : "grp_getUBtoDF_fu_195", "Port" : "cubiecube_0_ep"},
					{"ID" : "21", "SubInstance" : "grp_getFRtoBR_fu_189", "Port" : "cubiecube_0_ep"},
					{"ID" : "46", "SubInstance" : "grp_getURtoDF_fu_213", "Port" : "cubiecube_0_ep"}]},
			{"Name" : "cubiecube_0_eo", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "result_twist_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "result_flip_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "result_parity_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "result_FRtoBR_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "result_URFtoDLF_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "result_URtoUL_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "result_UBtoDF_0", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getFRtoBR_fu_189", "Parent" : "20", "Child" : ["22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "getFRtoBR",
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
		"Port" : [
			{"Name" : "cubiecube_0_ep", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U23", "Parent" : "21"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U24", "Parent" : "21"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U25", "Parent" : "21"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U26", "Parent" : "21"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getFRtoBR_fu_189.solution_sdiv_32nkbM_U27", "Parent" : "21"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U28", "Parent" : "21"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getFRtoBR_fu_189.solution_mux_42_1lbW_U29", "Parent" : "21"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U30", "Parent" : "21"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U31", "Parent" : "21"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U32", "Parent" : "21"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U33", "Parent" : "21"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getUBtoDF_fu_195", "Parent" : "20", "Child" : ["34", "35", "36", "37"],
		"CDFG" : "getUBtoDF",
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
		"Port" : [
			{"Name" : "cubiecube_0_ep", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getUBtoDF_fu_195.solution_mux_42_4jbC_U46", "Parent" : "33"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getUBtoDF_fu_195.solution_mux_42_4jbC_U47", "Parent" : "33"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getUBtoDF_fu_195.solution_mux_42_4jbC_U48", "Parent" : "33"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getUBtoDF_fu_195.solution_sdiv_32nkbM_U49", "Parent" : "33"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getURtoUL_fu_201", "Parent" : "20", "Child" : ["39", "40", "41", "42"],
		"CDFG" : "getURtoUL",
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
		"Port" : [
			{"Name" : "cubiecube_0_ep", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getURtoUL_fu_201.solution_mux_42_4jbC_U41", "Parent" : "38"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getURtoUL_fu_201.solution_mux_42_4jbC_U42", "Parent" : "38"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getURtoUL_fu_201.solution_mux_42_4jbC_U43", "Parent" : "38"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getURtoUL_fu_201.solution_sdiv_32nkbM_U44", "Parent" : "38"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getURFtoDLF_fu_207", "Parent" : "20", "Child" : ["44", "45"],
		"CDFG" : "getURFtoDLF",
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
		"Port" : [
			{"Name" : "cubiecube_0_cp", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getURFtoDLF_fu_207.corner6_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getURFtoDLF_fu_207.solution_sdiv_32nkbM_U38", "Parent" : "43"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getURtoDF_fu_213", "Parent" : "20", "Child" : ["47"],
		"CDFG" : "getURtoDF",
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
		"Port" : [
			{"Name" : "cubiecube_0_ep", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_get_coordcube_fu_978.grp_getURtoDF_fu_213.edge6_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_totalDepth_fu_1004", "Parent" : "0", "Child" : ["49", "50", "51", "52", "53", "54", "55"],
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
					{"ID" : "54", "SubInstance" : "grp_getPruning1314_fu_829", "Port" : "table_r"},
					{"ID" : "53", "SubInstance" : "grp_getPruning131416_fu_821", "Port" : "table_r"},
					{"ID" : "52", "SubInstance" : "grp_getPruning_fu_813", "Port" : "table_r"},
					{"ID" : "55", "SubInstance" : "grp_getPruning13_fu_837", "Port" : "table_r"}]},
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
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_totalDepth_fu_1004.parityMove1_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_totalDepth_fu_1004.search_URtoDF_0_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_totalDepth_fu_1004.search_minDistPhase2_U", "Parent" : "48"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_totalDepth_fu_1004.grp_getPruning_fu_813", "Parent" : "48",
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
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_totalDepth_fu_1004.grp_getPruning131416_fu_821", "Parent" : "48",
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
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_totalDepth_fu_1004.grp_getPruning1314_fu_829", "Parent" : "48",
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
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_totalDepth_fu_1004.grp_getPruning13_fu_837", "Parent" : "48",
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
			{"Name" : "index", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_verify_fu_1040", "Parent" : "0", "Child" : ["57", "58", "59"],
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
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_verify_fu_1040.edgeCount_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_verify_fu_1040.cornerCount_U", "Parent" : "56"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_verify_fu_1040.solution_urem_5nsibs_U15", "Parent" : "56"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_toCubieCube_fu_1052", "Parent" : "0", "Child" : ["61", "62", "63", "64", "65", "66", "67"],
		"CDFG" : "toCubieCube",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "208", "EstimateLatencyMax" : "1048",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
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
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_toCubieCube_fu_1052.cornerFacelet_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_toCubieCube_fu_1052.cornerColor_1_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_toCubieCube_fu_1052.cornerColor_2_U", "Parent" : "60"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_toCubieCube_fu_1052.edgeFacelet_0_U", "Parent" : "60"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_toCubieCube_fu_1052.edgeFacelet_1_U", "Parent" : "60"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_toCubieCube_fu_1052.edgeColor_0_U", "Parent" : "60"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_toCubieCube_fu_1052.edgeColor_1_U", "Parent" : "60"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_solutionToString_fu_1080", "Parent" : "0",
		"CDFG" : "solutionToString",
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
		"Port" : [
			{"Name" : "search_0_ax", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "search_0_po", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "length_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "encode_array", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_getPruning_2_fu_1091", "Parent" : "0",
		"CDFG" : "getPruning_2",
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
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_getPruning_1_fu_1099", "Parent" : "0",
		"CDFG" : "getPruning_1",
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
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_get_facecube_fromstr_fu_1107", "Parent" : "0",
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
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.solution_mul_mul_Aem_U107", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.solution_mac_mulaBew_U108", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.solution_mul_mul_Aem_U109", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.solution_mac_mulaCeG_U110", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.solution_mac_mulaCeG_U111", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	solution {
		CTRL_BUS {Type I LastRead 38 FirstWrite -1}
		facelets {Type I LastRead 10 FirstWrite -1}
		maxDepth {Type I LastRead 0 FirstWrite -1}
		unsolvable {Type O LastRead -1 FirstWrite 0}
		encode_length {Type O LastRead -1 FirstWrite 0}
		encode_array {Type O LastRead -1 FirstWrite 3}
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
		search_minDistPhase1 {Type IO LastRead -1 FirstWrite -1}
		search_ax_0 {Type IO LastRead -1 FirstWrite -1}
		search_po_0 {Type IO LastRead -1 FirstWrite -1}
		search_flip_0 {Type IO LastRead -1 FirstWrite -1}
		search_twist_0 {Type IO LastRead -1 FirstWrite -1}
		search_slice_0 {Type IO LastRead -1 FirstWrite -1}
		parityMove1 {Type I LastRead -1 FirstWrite -1}
		search_URtoDF_0 {Type IO LastRead -1 FirstWrite -1}
		search_minDistPhase2 {Type IO LastRead -1 FirstWrite -1}
		search_parity_0 {Type IO LastRead -1 FirstWrite -1}
		search_URFtoDLF_0 {Type IO LastRead -1 FirstWrite -1}
		search_FRtoBR_0 {Type IO LastRead -1 FirstWrite -1}
		search_URtoUL_0 {Type IO LastRead -1 FirstWrite -1}
		search_UBtoDF_0 {Type IO LastRead -1 FirstWrite -1}}
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
		cubiecube_0_ep {Type I LastRead 2 FirstWrite -1}}
	getURtoUL {
		cubiecube_0_ep {Type I LastRead 2 FirstWrite -1}}
	getURFtoDLF {
		cubiecube_0_cp {Type I LastRead 2 FirstWrite -1}}
	getURtoDF {
		cubiecube_0_ep {Type I LastRead 2 FirstWrite -1}}
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
		index {Type I LastRead 0 FirstWrite -1}}
	verify {
		cubiecube_0_cp {Type I LastRead 20 FirstWrite -1}
		cubiecube_0_co {Type I LastRead 8 FirstWrite -1}
		cubiecube_0_ep {Type I LastRead 19 FirstWrite -1}
		cubiecube_0_eo {Type I LastRead 5 FirstWrite -1}}
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
		ccRet_eo_0 {Type O LastRead -1 FirstWrite 9}}
	solutionToString {
		search_0_ax {Type I LastRead 1 FirstWrite -1}
		search_0_po {Type I LastRead 2 FirstWrite -1}
		length_r {Type I LastRead 0 FirstWrite -1}
		encode_array {Type O LastRead -1 FirstWrite 3}}
	getPruning_2 {
		table_r {Type I LastRead 8 FirstWrite -1}
		table_offset {Type I LastRead 0 FirstWrite -1}
		index {Type I LastRead 0 FirstWrite -1}}
	getPruning_1 {
		table_r {Type I LastRead 8 FirstWrite -1}
		table_offset {Type I LastRead 0 FirstWrite -1}
		index {Type I LastRead 0 FirstWrite -1}}
	get_facecube_fromstr {
		cubeString {Type I LastRead 1 FirstWrite -1}
		res_f_0 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	CTRL_BUS { m_axi {  { m_axi_CTRL_BUS_AWVALID VALID 1 1 }  { m_axi_CTRL_BUS_AWREADY READY 0 1 }  { m_axi_CTRL_BUS_AWADDR ADDR 1 32 }  { m_axi_CTRL_BUS_AWID ID 1 1 }  { m_axi_CTRL_BUS_AWLEN LEN 1 8 }  { m_axi_CTRL_BUS_AWSIZE SIZE 1 3 }  { m_axi_CTRL_BUS_AWBURST BURST 1 2 }  { m_axi_CTRL_BUS_AWLOCK LOCK 1 2 }  { m_axi_CTRL_BUS_AWCACHE CACHE 1 4 }  { m_axi_CTRL_BUS_AWPROT PROT 1 3 }  { m_axi_CTRL_BUS_AWQOS QOS 1 4 }  { m_axi_CTRL_BUS_AWREGION REGION 1 4 }  { m_axi_CTRL_BUS_AWUSER USER 1 1 }  { m_axi_CTRL_BUS_WVALID VALID 1 1 }  { m_axi_CTRL_BUS_WREADY READY 0 1 }  { m_axi_CTRL_BUS_WDATA DATA 1 32 }  { m_axi_CTRL_BUS_WSTRB STRB 1 4 }  { m_axi_CTRL_BUS_WLAST LAST 1 1 }  { m_axi_CTRL_BUS_WID ID 1 1 }  { m_axi_CTRL_BUS_WUSER USER 1 1 }  { m_axi_CTRL_BUS_ARVALID VALID 1 1 }  { m_axi_CTRL_BUS_ARREADY READY 0 1 }  { m_axi_CTRL_BUS_ARADDR ADDR 1 32 }  { m_axi_CTRL_BUS_ARID ID 1 1 }  { m_axi_CTRL_BUS_ARLEN LEN 1 8 }  { m_axi_CTRL_BUS_ARSIZE SIZE 1 3 }  { m_axi_CTRL_BUS_ARBURST BURST 1 2 }  { m_axi_CTRL_BUS_ARLOCK LOCK 1 2 }  { m_axi_CTRL_BUS_ARCACHE CACHE 1 4 }  { m_axi_CTRL_BUS_ARPROT PROT 1 3 }  { m_axi_CTRL_BUS_ARQOS QOS 1 4 }  { m_axi_CTRL_BUS_ARREGION REGION 1 4 }  { m_axi_CTRL_BUS_ARUSER USER 1 1 }  { m_axi_CTRL_BUS_RVALID VALID 0 1 }  { m_axi_CTRL_BUS_RREADY READY 1 1 }  { m_axi_CTRL_BUS_RDATA DATA 0 32 }  { m_axi_CTRL_BUS_RLAST LAST 0 1 }  { m_axi_CTRL_BUS_RID ID 0 1 }  { m_axi_CTRL_BUS_RUSER USER 0 1 }  { m_axi_CTRL_BUS_RRESP RESP 0 2 }  { m_axi_CTRL_BUS_BVALID VALID 0 1 }  { m_axi_CTRL_BUS_BREADY READY 1 1 }  { m_axi_CTRL_BUS_BRESP RESP 0 2 }  { m_axi_CTRL_BUS_BID ID 0 1 }  { m_axi_CTRL_BUS_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ CTRL_BUS { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ CTRL_BUS 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ CTRL_BUS 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
