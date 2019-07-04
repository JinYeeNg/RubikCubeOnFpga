set moduleName solveStage1
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
set C_modelName {solveStage1}
set C_modelType { void 0 }
set C_modelArgList {
	{ edgeNumber_V int 4 regular  }
	{ moveCounter_V int 8 regular {pointer 2} {global 2}  }
	{ moves_V int 4 regular {array 200 { 0 3 } 0 1 } {global 1}  }
	{ cubieColor_V int 3 regular {array 54 { 2 0 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "edgeNumber_V", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "moveCounter_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "moveCounter.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "moves_V", "interface" : "memory", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "moves.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 199,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "cubieColor_V", "interface" : "memory", "bitwidth" : 3, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "cubieColor.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 5,"step" : 1},{"low" : 0,"up" : 8,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ edgeNumber_V sc_in sc_lv 4 signal 0 } 
	{ moveCounter_V_i sc_in sc_lv 8 signal 1 } 
	{ moveCounter_V_o sc_out sc_lv 8 signal 1 } 
	{ moveCounter_V_o_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ moves_V_address0 sc_out sc_lv 8 signal 2 } 
	{ moves_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ moves_V_we0 sc_out sc_logic 1 signal 2 } 
	{ moves_V_d0 sc_out sc_lv 4 signal 2 } 
	{ cubieColor_V_address0 sc_out sc_lv 6 signal 3 } 
	{ cubieColor_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ cubieColor_V_we0 sc_out sc_logic 1 signal 3 } 
	{ cubieColor_V_d0 sc_out sc_lv 3 signal 3 } 
	{ cubieColor_V_q0 sc_in sc_lv 3 signal 3 } 
	{ cubieColor_V_address1 sc_out sc_lv 6 signal 3 } 
	{ cubieColor_V_ce1 sc_out sc_logic 1 signal 3 } 
	{ cubieColor_V_we1 sc_out sc_logic 1 signal 3 } 
	{ cubieColor_V_d1 sc_out sc_lv 3 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "edgeNumber_V", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "edgeNumber_V", "role": "default" }} , 
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
 	{ "name": "cubieColor_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cubieColor_V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
					{"ID" : "1", "SubInstance" : "grp_turnCube_fu_60", "Port" : "moveCounter_V"}]},
			{"Name" : "moves_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_turnCube_fu_60", "Port" : "moves_V"}]},
			{"Name" : "cubieColor_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_turnCube_fu_60", "Port" : "cubieColor_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_turnCube_fu_60", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_turnCube_fu_60.cubieTemp_V_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	solveStage1 {
		edgeNumber_V {Type I LastRead 0 FirstWrite -1}
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 14 FirstWrite 2}}
	turnCube {
		turn_V {Type I LastRead 0 FirstWrite -1}
		moveCounter_V {Type IO LastRead 0 FirstWrite 0}
		moves_V {Type O LastRead -1 FirstWrite 0}
		cubieColor_V {Type IO LastRead 2 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "1343"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "1343"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	edgeNumber_V { ap_none {  { edgeNumber_V in_data 0 4 } } }
	moveCounter_V { ap_ovld {  { moveCounter_V_i in_data 0 8 }  { moveCounter_V_o out_data 1 8 }  { moveCounter_V_o_ap_vld out_vld 1 1 } } }
	moves_V { ap_memory {  { moves_V_address0 mem_address 1 8 }  { moves_V_ce0 mem_ce 1 1 }  { moves_V_we0 mem_we 1 1 }  { moves_V_d0 mem_din 1 4 } } }
	cubieColor_V { ap_memory {  { cubieColor_V_address0 mem_address 1 6 }  { cubieColor_V_ce0 mem_ce 1 1 }  { cubieColor_V_we0 mem_we 1 1 }  { cubieColor_V_d0 mem_din 1 3 }  { cubieColor_V_q0 mem_dout 0 3 }  { cubieColor_V_address1 mem_address 1 6 }  { cubieColor_V_ce1 mem_ce 1 1 }  { cubieColor_V_we1 mem_we 1 1 }  { cubieColor_V_d1 mem_din 1 3 } } }
}
