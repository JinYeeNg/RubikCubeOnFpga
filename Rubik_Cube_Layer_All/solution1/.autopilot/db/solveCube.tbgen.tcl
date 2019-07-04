set C_TypeInfoList {{ 
"solveCube" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"cubieColor_tb": [[], {"array": [ {"array": ["0", [9]]}, [6]]}] }, {"rMoves": [[], {"array": ["1", [200]]}] }, {"order": [[],{ "pointer": "2"}] }],["3","4","5"],""],
 "3": [ "moves", [[], {"array": ["1", [200]]}],""],
 "4": [ "moveCounter", [[],"2"],""],
 "5": [ "cubieColor", [[], {"array": ["0", [6,9]]}],""], 
"0": [ "uint3_t", {"typedef": [[[],"6"],""]}], 
"2": [ "uint9_t", {"typedef": [[[],"7"],""]}], 
"7": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}], 
"6": [ "ap_uint<3>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 3}}]],""]}}], 
"1": [ "uint4_t", {"typedef": [[[],"8"],""]}], 
"8": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}]
}}
set moduleName solveCube
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
set C_modelName {solveCube}
set C_modelType { void 0 }
set C_modelArgList {
	{ cubieColor_tb_V int 3 regular {axi_slave 0}  }
	{ rMoves_V int 4 regular {axi_slave 1}  }
	{ order_V int 8 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "cubieColor_tb_V", "interface" : "axi_slave", "bundle":"add_io","type":"ap_memory","bitwidth" : 3, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "cubieColor_tb.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 5,"step" : 1},{"low" : 0,"up" : 8,"step" : 1}]}]}], "offset" : {"in":64}, "offset_end" : {"in":127}} , 
 	{ "Name" : "rMoves_V", "interface" : "axi_slave", "bundle":"add_io","type":"ap_memory","bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "rMoves.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 199,"step" : 1}]}]}], "offset" : {"out":256}, "offset_end" : {"out":511}} , 
 	{ "Name" : "order_V", "interface" : "axi_slave", "bundle":"add_io","type":"ap_vld","bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "order.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":512}, "offset_end" : {"out":519}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_add_io_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_add_io_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_add_io_AWADDR sc_in sc_lv 10 signal -1 } 
	{ s_axi_add_io_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_add_io_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_add_io_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_add_io_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_add_io_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_add_io_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_add_io_ARADDR sc_in sc_lv 10 signal -1 } 
	{ s_axi_add_io_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_add_io_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_add_io_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_add_io_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_add_io_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_add_io_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_add_io_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_add_io_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "add_io", "role": "AWADDR" },"address":[{"name":"solveCube","role":"start","value":"0","valid_bit":"0"},{"name":"solveCube","role":"continue","value":"0","valid_bit":"4"},{"name":"solveCube","role":"auto_start","value":"0","valid_bit":"7"},{"name":"cubieColor_tb_V","role":"data","value":"64"}] },
	{ "name": "s_axi_add_io_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_io", "role": "AWVALID" } },
	{ "name": "s_axi_add_io_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_io", "role": "AWREADY" } },
	{ "name": "s_axi_add_io_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_io", "role": "WVALID" } },
	{ "name": "s_axi_add_io_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_io", "role": "WREADY" } },
	{ "name": "s_axi_add_io_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_io", "role": "WDATA" } },
	{ "name": "s_axi_add_io_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "add_io", "role": "WSTRB" } },
	{ "name": "s_axi_add_io_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "add_io", "role": "ARADDR" },"address":[{"name":"solveCube","role":"start","value":"0","valid_bit":"0"},{"name":"solveCube","role":"done","value":"0","valid_bit":"1"},{"name":"solveCube","role":"idle","value":"0","valid_bit":"2"},{"name":"solveCube","role":"ready","value":"0","valid_bit":"3"},{"name":"solveCube","role":"auto_start","value":"0","valid_bit":"7"},{"name":"rMoves_V","role":"data","value":"256"},{"name":"order_V","role":"data","value":"512"}, {"name":"order_V","role":"valid","value":"516","valid_bit":"0"}] },
	{ "name": "s_axi_add_io_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_io", "role": "ARVALID" } },
	{ "name": "s_axi_add_io_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_io", "role": "ARREADY" } },
	{ "name": "s_axi_add_io_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_io", "role": "RVALID" } },
	{ "name": "s_axi_add_io_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_io", "role": "RREADY" } },
	{ "name": "s_axi_add_io_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_io", "role": "RDATA" } },
	{ "name": "s_axi_add_io_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "add_io", "role": "RRESP" } },
	{ "name": "s_axi_add_io_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_io", "role": "BVALID" } },
	{ "name": "s_axi_add_io_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_io", "role": "BREADY" } },
	{ "name": "s_axi_add_io_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "add_io", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_io", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "15", "21", "27", "33", "38", "43", "45", "48", "50", "52", "53", "54", "55"],
		"CDFG" : "solveCube",
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
			{"State" : "ap_ST_fsm_state84", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_solveStage3_fu_242"},
			{"State" : "ap_ST_fsm_state88", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_solveStage3_fu_242"},
			{"State" : "ap_ST_fsm_state92", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_solveStage3_fu_242"},
			{"State" : "ap_ST_fsm_state96", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_solveStage3_fu_242"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_solveStage2_fu_262"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_solveStage2_fu_262"},
			{"State" : "ap_ST_fsm_state60", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_solveStage2_fu_262"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_solveStage2_fu_262"},
			{"State" : "ap_ST_fsm_state140", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_solveStage5b_fu_280"},
			{"State" : "ap_ST_fsm_state128", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_solveStage5a_fu_290"},
			{"State" : "ap_ST_fsm_state104", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_solveStage4a_fu_300"},
			{"State" : "ap_ST_fsm_state110", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_solveStage4b_fu_310"},
			{"State" : "ap_ST_fsm_state128", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_320"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_solveStage1_fu_332"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_solveStage1_fu_332"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_solveStage1_fu_332"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_solveStage1_fu_332"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_343"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_343"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_343"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_343"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_343"},
			{"State" : "ap_ST_fsm_state56", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_343"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_343"},
			{"State" : "ap_ST_fsm_state68", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_343"},
			{"State" : "ap_ST_fsm_state74", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_343"},
			{"State" : "ap_ST_fsm_state86", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_343"},
			{"State" : "ap_ST_fsm_state90", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_343"},
			{"State" : "ap_ST_fsm_state94", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_343"},
			{"State" : "ap_ST_fsm_state98", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_343"},
			{"State" : "ap_ST_fsm_state70", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeVertical_fu_353"},
			{"State" : "ap_ST_fsm_state72", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeVertical_fu_353"},
			{"State" : "ap_ST_fsm_state141", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_optimizeCube_fu_363"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_findEdge_fu_372"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_findEdge_fu_372"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_findEdge_fu_372"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_findEdge_fu_372"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_edgeCorrect_fu_385"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_edgeCorrect_fu_385"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_edgeCorrect_fu_385"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_edgeCorrect_fu_385"},
			{"State" : "ap_ST_fsm_state76", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_edgeCorrect_fu_385"},
			{"State" : "ap_ST_fsm_state78", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_edgeCorrect_fu_385"},
			{"State" : "ap_ST_fsm_state80", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_edgeCorrect_fu_385"},
			{"State" : "ap_ST_fsm_state82", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_edgeCorrect_fu_385"},
			{"State" : "ap_ST_fsm_state132", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_edgeCorrect_fu_385"},
			{"State" : "ap_ST_fsm_state134", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_edgeCorrect_fu_385"},
			{"State" : "ap_ST_fsm_state136", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_edgeCorrect_fu_385"},
			{"State" : "ap_ST_fsm_state138", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_edgeCorrect_fu_385"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_400"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_400"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_400"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_400"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_400"},
			{"State" : "ap_ST_fsm_state52", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_400"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_400"},
			{"State" : "ap_ST_fsm_state64", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_400"},
			{"State" : "ap_ST_fsm_state112", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_400"},
			{"State" : "ap_ST_fsm_state114", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_400"},
			{"State" : "ap_ST_fsm_state116", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_400"},
			{"State" : "ap_ST_fsm_state118", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_400"},
			{"State" : "ap_ST_fsm_state120", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_400"},
			{"State" : "ap_ST_fsm_state122", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_400"},
			{"State" : "ap_ST_fsm_state124", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_400"},
			{"State" : "ap_ST_fsm_state126", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_400"},
			{"State" : "ap_ST_fsm_state126", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_400"}],
		"Port" : [
			{"Name" : "cubieColor_tb_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rMoves_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "order_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_solveStage2_fu_262", "Port" : "cubieColor_V"},
					{"ID" : "27", "SubInstance" : "grp_solveStage5a_fu_290", "Port" : "cubieColor_V"},
					{"ID" : "33", "SubInstance" : "grp_solveStage4a_fu_300", "Port" : "cubieColor_V"},
					{"ID" : "38", "SubInstance" : "grp_solveStage4b_fu_310", "Port" : "cubieColor_V"},
					{"ID" : "21", "SubInstance" : "grp_solveStage5b_fu_280", "Port" : "cubieColor_V"},
					{"ID" : "53", "SubInstance" : "grp_findEdge_fu_372", "Port" : "cubieColor_V"},
					{"ID" : "48", "SubInstance" : "grp_rotateCubeHorizontal_fu_343", "Port" : "cubieColor_V"},
					{"ID" : "54", "SubInstance" : "grp_edgeCorrect_fu_385", "Port" : "cubieColor_V"},
					{"ID" : "45", "SubInstance" : "grp_solveStage1_fu_332", "Port" : "cubieColor_V"},
					{"ID" : "4", "SubInstance" : "grp_solveStage3_fu_242", "Port" : "cubieColor_V"},
					{"ID" : "43", "SubInstance" : "grp_turnCube_fu_320", "Port" : "cubieColor_V"},
					{"ID" : "55", "SubInstance" : "grp_cornerCorrect_fu_400", "Port" : "cubieColor_V"},
					{"ID" : "50", "SubInstance" : "grp_rotateCubeVertical_fu_353", "Port" : "cubieColor_V"}]},
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_solveStage2_fu_262", "Port" : "moveCounter_V"},
					{"ID" : "27", "SubInstance" : "grp_solveStage5a_fu_290", "Port" : "moveCounter_V"},
					{"ID" : "33", "SubInstance" : "grp_solveStage4a_fu_300", "Port" : "moveCounter_V"},
					{"ID" : "38", "SubInstance" : "grp_solveStage4b_fu_310", "Port" : "moveCounter_V"},
					{"ID" : "21", "SubInstance" : "grp_solveStage5b_fu_280", "Port" : "moveCounter_V"},
					{"ID" : "48", "SubInstance" : "grp_rotateCubeHorizontal_fu_343", "Port" : "moveCounter_V"},
					{"ID" : "45", "SubInstance" : "grp_solveStage1_fu_332", "Port" : "moveCounter_V"},
					{"ID" : "4", "SubInstance" : "grp_solveStage3_fu_242", "Port" : "moveCounter_V"},
					{"ID" : "43", "SubInstance" : "grp_turnCube_fu_320", "Port" : "moveCounter_V"},
					{"ID" : "52", "SubInstance" : "grp_optimizeCube_fu_363", "Port" : "moveCounter_V"},
					{"ID" : "50", "SubInstance" : "grp_rotateCubeVertical_fu_353", "Port" : "moveCounter_V"}]},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_solveStage2_fu_262", "Port" : "moves_V"},
					{"ID" : "27", "SubInstance" : "grp_solveStage5a_fu_290", "Port" : "moves_V"},
					{"ID" : "33", "SubInstance" : "grp_solveStage4a_fu_300", "Port" : "moves_V"},
					{"ID" : "38", "SubInstance" : "grp_solveStage4b_fu_310", "Port" : "moves_V"},
					{"ID" : "21", "SubInstance" : "grp_solveStage5b_fu_280", "Port" : "moves_V"},
					{"ID" : "48", "SubInstance" : "grp_rotateCubeHorizontal_fu_343", "Port" : "moves_V"},
					{"ID" : "45", "SubInstance" : "grp_solveStage1_fu_332", "Port" : "moves_V"},
					{"ID" : "4", "SubInstance" : "grp_solveStage3_fu_242", "Port" : "moves_V"},
					{"ID" : "43", "SubInstance" : "grp_turnCube_fu_320", "Port" : "moves_V"},
					{"ID" : "52", "SubInstance" : "grp_optimizeCube_fu_363", "Port" : "moves_V"},
					{"ID" : "50", "SubInstance" : "grp_rotateCubeVertical_fu_353", "Port" : "moves_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cubieColor_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.moves_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.solveCube_add_io_s_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_solveStage3_fu_242", "Parent" : "0", "Child" : ["5", "11", "14"],
		"CDFG" : "solveStage3",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_stage3Prepare_fu_32"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_solveStage3a_fu_44"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_solveStage3a_fu_44"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_findEdge_fu_54"}],
		"Port" : [
			{"Name" : "fC_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "sC_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_solveStage3a_fu_44", "Port" : "moveCounter_V"},
					{"ID" : "5", "SubInstance" : "grp_stage3Prepare_fu_32", "Port" : "moveCounter_V"}]},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_solveStage3a_fu_44", "Port" : "moves_V"},
					{"ID" : "5", "SubInstance" : "grp_stage3Prepare_fu_32", "Port" : "moves_V"}]},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_solveStage3a_fu_44", "Port" : "cubieColor_V"},
					{"ID" : "14", "SubInstance" : "grp_findEdge_fu_54", "Port" : "cubieColor_V"},
					{"ID" : "5", "SubInstance" : "grp_stage3Prepare_fu_32", "Port" : "cubieColor_V"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solveStage3_fu_242.grp_stage3Prepare_fu_32", "Parent" : "4", "Child" : ["6", "8", "10"],
		"CDFG" : "stage3Prepare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "1685",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_78"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_78"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_78"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_78"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_78"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_78"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_78"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_78"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_78"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_78"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_78"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_78"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_findEdge_fu_88"}],
		"Port" : [
			{"Name" : "fC_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "sC_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_turnCube_fu_61", "Port" : "cubieColor_V"},
					{"ID" : "8", "SubInstance" : "grp_rotateCubeHorizontal_fu_78", "Port" : "cubieColor_V"},
					{"ID" : "10", "SubInstance" : "grp_findEdge_fu_88", "Port" : "cubieColor_V"}]},
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_turnCube_fu_61", "Port" : "moveCounter_V"},
					{"ID" : "8", "SubInstance" : "grp_rotateCubeHorizontal_fu_78", "Port" : "moveCounter_V"}]},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_turnCube_fu_61", "Port" : "moves_V"},
					{"ID" : "8", "SubInstance" : "grp_rotateCubeHorizontal_fu_78", "Port" : "moves_V"}]}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solveStage3_fu_242.grp_stage3Prepare_fu_32.grp_turnCube_fu_61", "Parent" : "5", "Child" : ["7"],
		"CDFG" : "turnCube",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "122", "EstimateLatencyMax" : "132",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "turn_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solveStage3_fu_242.grp_stage3Prepare_fu_32.grp_turnCube_fu_61.cubieTemp_V_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solveStage3_fu_242.grp_stage3Prepare_fu_32.grp_rotateCubeHorizontal_fu_78", "Parent" : "5", "Child" : ["9"],
		"CDFG" : "rotateCubeHorizontal",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "148", "EstimateLatencyMax" : "148",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solveStage3_fu_242.grp_stage3Prepare_fu_32.grp_rotateCubeHorizontal_fu_78.cubieTemp_V_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solveStage3_fu_242.grp_stage3Prepare_fu_32.grp_findEdge_fu_88", "Parent" : "5",
		"CDFG" : "findEdge",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fEC_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "sEC_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solveStage3_fu_242.grp_solveStage3a_fu_44", "Parent" : "4", "Child" : ["12"],
		"CDFG" : "solveStage3a",
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
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state64", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state68", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state70", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state72", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state74", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state76", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state80", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state82", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state84", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state86", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state88", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state90", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state92", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state94", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state101", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state103", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state105", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state107", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state109", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state111", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state113", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state115", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state119", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state121", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state123", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state125", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state127", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state129", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state131", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state133", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state135", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state140", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state142", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state144", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state146", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state148", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state150", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state152", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state154", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state156", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state160", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state162", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state164", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state166", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state168", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state170", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state172", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state174", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"},
			{"State" : "ap_ST_fsm_state176", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_72"}],
		"Port" : [
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_turnCube_fu_72", "Port" : "moveCounter_V"}]},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_turnCube_fu_72", "Port" : "moves_V"}]},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_turnCube_fu_72", "Port" : "cubieColor_V"}]}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solveStage3_fu_242.grp_solveStage3a_fu_44.grp_turnCube_fu_72", "Parent" : "11", "Child" : ["13"],
		"CDFG" : "turnCube",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "122", "EstimateLatencyMax" : "132",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "turn_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solveStage3_fu_242.grp_solveStage3a_fu_44.grp_turnCube_fu_72.cubieTemp_V_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solveStage3_fu_242.grp_findEdge_fu_54", "Parent" : "4",
		"CDFG" : "findEdge",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fEC_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "sEC_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_solveStage2_fu_262", "Parent" : "0", "Child" : ["16", "18", "20"],
		"CDFG" : "solveStage2",
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
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_75"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_75"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_75"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_75"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_75"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_75"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_75"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_75"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_75"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_75"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_75"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_75"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_75"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_75"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_75"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_75"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_75"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_75"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_75"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_75"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_90"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_90"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_90"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_90"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_90"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_90"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_90"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_90"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_90"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_90"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_90"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_90"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_findCorner_fu_100"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_findCorner_fu_100"}],
		"Port" : [
			{"Name" : "sC_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "tC_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_rotateCubeHorizontal_fu_90", "Port" : "cubieColor_V"},
					{"ID" : "16", "SubInstance" : "grp_turnCube_fu_75", "Port" : "cubieColor_V"},
					{"ID" : "20", "SubInstance" : "grp_findCorner_fu_100", "Port" : "cubieColor_V"}]},
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_rotateCubeHorizontal_fu_90", "Port" : "moveCounter_V"},
					{"ID" : "16", "SubInstance" : "grp_turnCube_fu_75", "Port" : "moveCounter_V"}]},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_rotateCubeHorizontal_fu_90", "Port" : "moves_V"},
					{"ID" : "16", "SubInstance" : "grp_turnCube_fu_75", "Port" : "moves_V"}]}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solveStage2_fu_262.grp_turnCube_fu_75", "Parent" : "15", "Child" : ["17"],
		"CDFG" : "turnCube",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "122", "EstimateLatencyMax" : "132",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "turn_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solveStage2_fu_262.grp_turnCube_fu_75.cubieTemp_V_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solveStage2_fu_262.grp_rotateCubeHorizontal_fu_90", "Parent" : "15", "Child" : ["19"],
		"CDFG" : "rotateCubeHorizontal",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "148", "EstimateLatencyMax" : "148",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solveStage2_fu_262.grp_rotateCubeHorizontal_fu_90.cubieTemp_V_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solveStage2_fu_262.grp_findCorner_fu_100", "Parent" : "15",
		"CDFG" : "findCorner",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sCC_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "tCC_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_solveStage5b_fu_280", "Parent" : "0", "Child" : ["22", "24", "26"],
		"CDFG" : "solveStage5b",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1517", "EstimateLatencyMax" : "2124",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state56", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state60", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state64", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state68", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state70", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state72", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state74", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state76", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state78", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state80", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state82", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state84", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state86", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state88", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state90", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state92", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state94", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state96", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state78", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_47"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_65"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_65"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_65"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_65"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_65"},
			{"State" : "ap_ST_fsm_state52", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_65"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_edgeCorrect_fu_75"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_edgeCorrect_fu_75"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_edgeCorrect_fu_75"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_edgeCorrect_fu_75"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_edgeCorrect_fu_75"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_edgeCorrect_fu_75"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_edgeCorrect_fu_75"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_edgeCorrect_fu_75"}],
		"Port" : [
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_rotateCubeHorizontal_fu_65", "Port" : "cubieColor_V"},
					{"ID" : "22", "SubInstance" : "grp_turnCube_fu_47", "Port" : "cubieColor_V"},
					{"ID" : "26", "SubInstance" : "grp_edgeCorrect_fu_75", "Port" : "cubieColor_V"}]},
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_rotateCubeHorizontal_fu_65", "Port" : "moveCounter_V"},
					{"ID" : "22", "SubInstance" : "grp_turnCube_fu_47", "Port" : "moveCounter_V"}]},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_rotateCubeHorizontal_fu_65", "Port" : "moves_V"},
					{"ID" : "22", "SubInstance" : "grp_turnCube_fu_47", "Port" : "moves_V"}]}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solveStage5b_fu_280.grp_turnCube_fu_47", "Parent" : "21", "Child" : ["23"],
		"CDFG" : "turnCube",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "122", "EstimateLatencyMax" : "132",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "turn_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solveStage5b_fu_280.grp_turnCube_fu_47.cubieTemp_V_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solveStage5b_fu_280.grp_rotateCubeHorizontal_fu_65", "Parent" : "21", "Child" : ["25"],
		"CDFG" : "rotateCubeHorizontal",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "148", "EstimateLatencyMax" : "148",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solveStage5b_fu_280.grp_rotateCubeHorizontal_fu_65.cubieTemp_V_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solveStage5b_fu_280.grp_edgeCorrect_fu_75", "Parent" : "21",
		"CDFG" : "edgeCorrect",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "edge_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_solveStage5a_fu_290", "Parent" : "0", "Child" : ["28", "30", "32"],
		"CDFG" : "solveStage5a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1634", "EstimateLatencyMax" : "2231",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_32"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_32"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_32"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_32"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_32"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_32"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_32"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_32"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_32"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_32"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_32"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_32"},
			{"State" : "ap_ST_fsm_state52", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_32"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_49"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_49"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_49"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_49"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_49"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_49"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_59"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_59"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_59"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_59"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_59"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_59"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cornerCorrect_fu_59"}],
		"Port" : [
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_rotateCubeHorizontal_fu_49", "Port" : "cubieColor_V"},
					{"ID" : "28", "SubInstance" : "grp_turnCube_fu_32", "Port" : "cubieColor_V"},
					{"ID" : "32", "SubInstance" : "grp_cornerCorrect_fu_59", "Port" : "cubieColor_V"}]},
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_rotateCubeHorizontal_fu_49", "Port" : "moveCounter_V"},
					{"ID" : "28", "SubInstance" : "grp_turnCube_fu_32", "Port" : "moveCounter_V"}]},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_rotateCubeHorizontal_fu_49", "Port" : "moves_V"},
					{"ID" : "28", "SubInstance" : "grp_turnCube_fu_32", "Port" : "moves_V"}]}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solveStage5a_fu_290.grp_turnCube_fu_32", "Parent" : "27", "Child" : ["29"],
		"CDFG" : "turnCube",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "122", "EstimateLatencyMax" : "132",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "turn_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solveStage5a_fu_290.grp_turnCube_fu_32.cubieTemp_V_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solveStage5a_fu_290.grp_rotateCubeHorizontal_fu_49", "Parent" : "27", "Child" : ["31"],
		"CDFG" : "rotateCubeHorizontal",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "148", "EstimateLatencyMax" : "148",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solveStage5a_fu_290.grp_rotateCubeHorizontal_fu_49.cubieTemp_V_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solveStage5a_fu_290.grp_cornerCorrect_fu_59", "Parent" : "27",
		"CDFG" : "cornerCorrect",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "corner_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_solveStage4a_fu_300", "Parent" : "0", "Child" : ["34", "36"],
		"CDFG" : "solveStage4a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "3023",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state61", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state63", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_61"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_78"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_78"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_78"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_78"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_78"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_78"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_78"}],
		"Port" : [
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_rotateCubeHorizontal_fu_78", "Port" : "moveCounter_V"},
					{"ID" : "34", "SubInstance" : "grp_turnCube_fu_61", "Port" : "moveCounter_V"}]},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_rotateCubeHorizontal_fu_78", "Port" : "moves_V"},
					{"ID" : "34", "SubInstance" : "grp_turnCube_fu_61", "Port" : "moves_V"}]},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_rotateCubeHorizontal_fu_78", "Port" : "cubieColor_V"},
					{"ID" : "34", "SubInstance" : "grp_turnCube_fu_61", "Port" : "cubieColor_V"}]}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solveStage4a_fu_300.grp_turnCube_fu_61", "Parent" : "33", "Child" : ["35"],
		"CDFG" : "turnCube",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "122", "EstimateLatencyMax" : "132",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "turn_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solveStage4a_fu_300.grp_turnCube_fu_61.cubieTemp_V_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solveStage4a_fu_300.grp_rotateCubeHorizontal_fu_78", "Parent" : "33", "Child" : ["37"],
		"CDFG" : "rotateCubeHorizontal",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "148", "EstimateLatencyMax" : "148",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solveStage4a_fu_300.grp_rotateCubeHorizontal_fu_78.cubieTemp_V_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_solveStage4b_fu_310", "Parent" : "0", "Child" : ["39", "41"],
		"CDFG" : "solveStage4b",
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
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state61", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state63", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_71"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_85"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_85"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rotateCubeHorizontal_fu_85"}],
		"Port" : [
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_turnCube_fu_71", "Port" : "moveCounter_V"},
					{"ID" : "41", "SubInstance" : "grp_rotateCubeHorizontal_fu_85", "Port" : "moveCounter_V"}]},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_turnCube_fu_71", "Port" : "moves_V"},
					{"ID" : "41", "SubInstance" : "grp_rotateCubeHorizontal_fu_85", "Port" : "moves_V"}]},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_turnCube_fu_71", "Port" : "cubieColor_V"},
					{"ID" : "41", "SubInstance" : "grp_rotateCubeHorizontal_fu_85", "Port" : "cubieColor_V"}]}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solveStage4b_fu_310.grp_turnCube_fu_71", "Parent" : "38", "Child" : ["40"],
		"CDFG" : "turnCube",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "122", "EstimateLatencyMax" : "132",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "turn_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solveStage4b_fu_310.grp_turnCube_fu_71.cubieTemp_V_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solveStage4b_fu_310.grp_rotateCubeHorizontal_fu_85", "Parent" : "38", "Child" : ["42"],
		"CDFG" : "rotateCubeHorizontal",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "148", "EstimateLatencyMax" : "148",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solveStage4b_fu_310.grp_rotateCubeHorizontal_fu_85.cubieTemp_V_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_turnCube_fu_320", "Parent" : "0", "Child" : ["44"],
		"CDFG" : "turnCube",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "122", "EstimateLatencyMax" : "132",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "turn_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_turnCube_fu_320.cubieTemp_V_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_solveStage1_fu_332", "Parent" : "0", "Child" : ["46"],
		"CDFG" : "solveStage1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "1343",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state56", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state60", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state64", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state69", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state71", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state79", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"},
			{"State" : "ap_ST_fsm_state85", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_turnCube_fu_60"}],
		"Port" : [
			{"Name" : "edgeNumber_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_turnCube_fu_60", "Port" : "moveCounter_V"}]},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_turnCube_fu_60", "Port" : "moves_V"}]},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_turnCube_fu_60", "Port" : "cubieColor_V"}]}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solveStage1_fu_332.grp_turnCube_fu_60", "Parent" : "45", "Child" : ["47"],
		"CDFG" : "turnCube",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "122", "EstimateLatencyMax" : "132",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "turn_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solveStage1_fu_332.grp_turnCube_fu_60.cubieTemp_V_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rotateCubeHorizontal_fu_343", "Parent" : "0", "Child" : ["49"],
		"CDFG" : "rotateCubeHorizontal",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "148", "EstimateLatencyMax" : "148",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rotateCubeHorizontal_fu_343.cubieTemp_V_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rotateCubeVertical_fu_353", "Parent" : "0", "Child" : ["51"],
		"CDFG" : "rotateCubeVertical",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "148", "EstimateLatencyMax" : "148",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rotateCubeVertical_fu_353.cubieTemp_V_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_optimizeCube_fu_363", "Parent" : "0",
		"CDFG" : "optimizeCube",
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
			{"Name" : "moveCounter_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_findEdge_fu_372", "Parent" : "0",
		"CDFG" : "findEdge",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fEC_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "sEC_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_edgeCorrect_fu_385", "Parent" : "0",
		"CDFG" : "edgeCorrect",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "edge_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cornerCorrect_fu_400", "Parent" : "0",
		"CDFG" : "cornerCorrect",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "corner_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	solveCube {
		cubieColor_tb_V {Type I LastRead 2 FirstWrite -1}
		rMoves_V {Type O LastRead -1 FirstWrite 60}
		order_V {Type O LastRead -1 FirstWrite 58}
		cubieColor_V {Type IO LastRead -1 FirstWrite -1}
		moveCounter_V {Type IO LastRead -1 FirstWrite -1}
		moves_V {Type IO LastRead -1 FirstWrite -1}}
	solveStage3 {
		fC_V {Type I LastRead 2 FirstWrite -1}
		sC_V {Type I LastRead 2 FirstWrite -1}
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 157 FirstWrite -1}}
	stage3Prepare {
		fC_V {Type I LastRead 0 FirstWrite -1}
		sC_V {Type I LastRead 0 FirstWrite -1}
		cubieColor_V {Type IO LastRead 12 FirstWrite -1}
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}}
	turnCube {
		turn_V {Type I LastRead 0 FirstWrite -1}
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 2 FirstWrite 2}}
	rotateCubeHorizontal {
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 2 FirstWrite 2}}
	findEdge {
		fEC_V {Type I LastRead 2 FirstWrite -1}
		sEC_V {Type I LastRead 2 FirstWrite -1}
		cubieColor_V {Type I LastRead 12 FirstWrite -1}}
	solveStage3a {
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 157 FirstWrite 2}}
	turnCube {
		turn_V {Type I LastRead 0 FirstWrite -1}
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 2 FirstWrite 2}}
	findEdge {
		fEC_V {Type I LastRead 2 FirstWrite -1}
		sEC_V {Type I LastRead 2 FirstWrite -1}
		cubieColor_V {Type I LastRead 12 FirstWrite -1}}
	solveStage2 {
		sC_V {Type I LastRead 0 FirstWrite -1}
		tC_V {Type I LastRead 0 FirstWrite -1}
		cubieColor_V {Type IO LastRead 25 FirstWrite -1}
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}}
	turnCube {
		turn_V {Type I LastRead 0 FirstWrite -1}
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 2 FirstWrite 2}}
	rotateCubeHorizontal {
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 2 FirstWrite 2}}
	findCorner {
		sCC_V {Type I LastRead 2 FirstWrite -1}
		tCC_V {Type I LastRead 2 FirstWrite -1}
		cubieColor_V {Type I LastRead 12 FirstWrite -1}}
	solveStage5b {
		cubieColor_V {Type IO LastRead 17 FirstWrite -1}
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}}
	turnCube {
		turn_V {Type I LastRead 0 FirstWrite -1}
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 2 FirstWrite 2}}
	rotateCubeHorizontal {
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 2 FirstWrite 2}}
	edgeCorrect {
		edge_V {Type I LastRead 9 FirstWrite -1}
		cubieColor_V {Type I LastRead 11 FirstWrite -1}}
	solveStage5a {
		cubieColor_V {Type IO LastRead 8 FirstWrite -1}
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}}
	turnCube {
		turn_V {Type I LastRead 0 FirstWrite -1}
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 2 FirstWrite 2}}
	rotateCubeHorizontal {
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 2 FirstWrite 2}}
	cornerCorrect {
		corner_V {Type I LastRead 7 FirstWrite -1}
		cubieColor_V {Type I LastRead 8 FirstWrite -1}}
	solveStage4a {
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 41 FirstWrite 2}}
	turnCube {
		turn_V {Type I LastRead 0 FirstWrite -1}
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 2 FirstWrite 2}}
	rotateCubeHorizontal {
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 2 FirstWrite 2}}
	solveStage4b {
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 6 FirstWrite 2}}
	turnCube {
		turn_V {Type I LastRead 0 FirstWrite -1}
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 2 FirstWrite 2}}
	rotateCubeHorizontal {
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 2 FirstWrite 2}}
	turnCube {
		turn_V {Type I LastRead 0 FirstWrite -1}
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 2 FirstWrite 2}}
	solveStage1 {
		edgeNumber_V {Type I LastRead 0 FirstWrite -1}
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 14 FirstWrite 2}}
	turnCube {
		turn_V {Type I LastRead 0 FirstWrite -1}
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 2 FirstWrite 2}}
	rotateCubeHorizontal {
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 2 FirstWrite 2}}
	rotateCubeVertical {
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 2 FirstWrite 2}}
	optimizeCube {
		moveCounter_V {Type I LastRead 0 FirstWrite -1}
		moves_V {Type IO LastRead 9 FirstWrite 7}}
	findEdge {
		fEC_V {Type I LastRead 2 FirstWrite -1}
		sEC_V {Type I LastRead 2 FirstWrite -1}
		cubieColor_V {Type I LastRead 12 FirstWrite -1}}
	edgeCorrect {
		edge_V {Type I LastRead 9 FirstWrite -1}
		cubieColor_V {Type I LastRead 11 FirstWrite -1}}
	cornerCorrect {
		corner_V {Type I LastRead 7 FirstWrite -1}
		cubieColor_V {Type I LastRead 8 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
