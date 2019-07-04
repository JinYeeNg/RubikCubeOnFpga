set moduleName solveStage3
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
set C_modelName {solveStage3}
set C_modelType { void 0 }
set C_modelArgList {
	{ fC_V int 3 regular  }
	{ sC_V int 3 regular  }
	{ moveCounter_V int 8 regular {pointer 2} {global 2}  }
	{ moves_V int 4 regular {array 200 { 0 3 } 0 1 } {global 1}  }
	{ cubieColor_V int 3 regular {array 54 { 2 2 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fC_V", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "sC_V", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "moveCounter_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "moveCounter.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "moves_V", "interface" : "memory", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "moves.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 199,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "cubieColor_V", "interface" : "memory", "bitwidth" : 3, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "cubieColor.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 5,"step" : 1},{"low" : 0,"up" : 8,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fC_V sc_in sc_lv 3 signal 0 } 
	{ sC_V sc_in sc_lv 3 signal 1 } 
	{ moveCounter_V_i sc_in sc_lv 8 signal 2 } 
	{ moveCounter_V_o sc_out sc_lv 8 signal 2 } 
	{ moveCounter_V_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ moves_V_address0 sc_out sc_lv 8 signal 3 } 
	{ moves_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ moves_V_we0 sc_out sc_logic 1 signal 3 } 
	{ moves_V_d0 sc_out sc_lv 4 signal 3 } 
	{ cubieColor_V_address0 sc_out sc_lv 6 signal 4 } 
	{ cubieColor_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ cubieColor_V_we0 sc_out sc_logic 1 signal 4 } 
	{ cubieColor_V_d0 sc_out sc_lv 3 signal 4 } 
	{ cubieColor_V_q0 sc_in sc_lv 3 signal 4 } 
	{ cubieColor_V_address1 sc_out sc_lv 6 signal 4 } 
	{ cubieColor_V_ce1 sc_out sc_logic 1 signal 4 } 
	{ cubieColor_V_we1 sc_out sc_logic 1 signal 4 } 
	{ cubieColor_V_d1 sc_out sc_lv 3 signal 4 } 
	{ cubieColor_V_q1 sc_in sc_lv 3 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fC_V", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fC_V", "role": "default" }} , 
 	{ "name": "sC_V", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sC_V", "role": "default" }} , 
 	{ "name": "moveCounter_V_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "moveCounter_V", "role": "i" }} , 
 	{ "name": "moveCounter_V_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "moveCounter_V", "role": "o" }} , 
 	{ "name": "moveCounter_V_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "moveCounter_V", "role": "o_ap_vld" }} , 
 	{ "name": "moves_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "moves_V", "role": "address0" }} , 
 	{ "name": "moves_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "moves_V", "role": "ce0" }} , 
 	{ "name": "moves_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "moves_V", "role": "we0" }} , 
 	{ "name": "moves_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "moves_V", "role": "d0" }} , 
 	{ "name": "cubieColor_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cubieColor_V", "role": "address0" }} , 
 	{ "name": "cubieColor_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cubieColor_V", "role": "ce0" }} , 
 	{ "name": "cubieColor_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cubieColor_V", "role": "we0" }} , 
 	{ "name": "cubieColor_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cubieColor_V", "role": "d0" }} , 
 	{ "name": "cubieColor_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cubieColor_V", "role": "q0" }} , 
 	{ "name": "cubieColor_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cubieColor_V", "role": "address1" }} , 
 	{ "name": "cubieColor_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cubieColor_V", "role": "ce1" }} , 
 	{ "name": "cubieColor_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cubieColor_V", "role": "we1" }} , 
 	{ "name": "cubieColor_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cubieColor_V", "role": "d1" }} , 
 	{ "name": "cubieColor_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cubieColor_V", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "7", "10"],
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
					{"ID" : "7", "SubInstance" : "grp_solveStage3a_fu_44", "Port" : "moveCounter_V"},
					{"ID" : "1", "SubInstance" : "grp_stage3Prepare_fu_32", "Port" : "moveCounter_V"}]},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_solveStage3a_fu_44", "Port" : "moves_V"},
					{"ID" : "1", "SubInstance" : "grp_stage3Prepare_fu_32", "Port" : "moves_V"}]},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_solveStage3a_fu_44", "Port" : "cubieColor_V"},
					{"ID" : "10", "SubInstance" : "grp_findEdge_fu_54", "Port" : "cubieColor_V"},
					{"ID" : "1", "SubInstance" : "grp_stage3Prepare_fu_32", "Port" : "cubieColor_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_stage3Prepare_fu_32", "Parent" : "0", "Child" : ["2", "4", "6"],
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
					{"ID" : "2", "SubInstance" : "grp_turnCube_fu_61", "Port" : "cubieColor_V"},
					{"ID" : "4", "SubInstance" : "grp_rotateCubeHorizontal_fu_78", "Port" : "cubieColor_V"},
					{"ID" : "6", "SubInstance" : "grp_findEdge_fu_88", "Port" : "cubieColor_V"}]},
			{"Name" : "moveCounter_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_turnCube_fu_61", "Port" : "moveCounter_V"},
					{"ID" : "4", "SubInstance" : "grp_rotateCubeHorizontal_fu_78", "Port" : "moveCounter_V"}]},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_turnCube_fu_61", "Port" : "moves_V"},
					{"ID" : "4", "SubInstance" : "grp_rotateCubeHorizontal_fu_78", "Port" : "moves_V"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_stage3Prepare_fu_32.grp_turnCube_fu_61", "Parent" : "1", "Child" : ["3"],
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_stage3Prepare_fu_32.grp_turnCube_fu_61.cubieTemp_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_stage3Prepare_fu_32.grp_rotateCubeHorizontal_fu_78", "Parent" : "1", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_stage3Prepare_fu_32.grp_rotateCubeHorizontal_fu_78.cubieTemp_V_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_stage3Prepare_fu_32.grp_findEdge_fu_88", "Parent" : "1",
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
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_solveStage3a_fu_44", "Parent" : "0", "Child" : ["8"],
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
					{"ID" : "8", "SubInstance" : "grp_turnCube_fu_72", "Port" : "moveCounter_V"}]},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_turnCube_fu_72", "Port" : "moves_V"}]},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_turnCube_fu_72", "Port" : "cubieColor_V"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solveStage3a_fu_44.grp_turnCube_fu_72", "Parent" : "7", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solveStage3a_fu_44.grp_turnCube_fu_72.cubieTemp_V_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_findEdge_fu_54", "Parent" : "0",
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
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
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
		cubieColor_V {Type I LastRead 12 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fC_V { ap_none {  { fC_V in_data 0 3 } } }
	sC_V { ap_none {  { sC_V in_data 0 3 } } }
	moveCounter_V { ap_ovld {  { moveCounter_V_i in_data 0 8 }  { moveCounter_V_o out_data 1 8 }  { moveCounter_V_o_ap_vld out_vld 1 1 } } }
	moves_V { ap_memory {  { moves_V_address0 mem_address 1 8 }  { moves_V_ce0 mem_ce 1 1 }  { moves_V_we0 mem_we 1 1 }  { moves_V_d0 mem_din 1 4 } } }
	cubieColor_V { ap_memory {  { cubieColor_V_address0 mem_address 1 6 }  { cubieColor_V_ce0 mem_ce 1 1 }  { cubieColor_V_we0 mem_we 1 1 }  { cubieColor_V_d0 mem_din 1 3 }  { cubieColor_V_q0 mem_dout 0 3 }  { cubieColor_V_address1 mem_address 1 6 }  { cubieColor_V_ce1 mem_ce 1 1 }  { cubieColor_V_we1 mem_we 1 1 }  { cubieColor_V_d1 mem_din 1 3 }  { cubieColor_V_q1 mem_dout 0 3 } } }
}
