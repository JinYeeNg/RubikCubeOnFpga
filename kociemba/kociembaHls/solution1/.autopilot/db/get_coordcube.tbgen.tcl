set moduleName get_coordcube
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
set C_modelName {get_coordcube}
set C_modelType { void 0 }
set C_modelArgList {
	{ cubiecube_0_cp int 3 regular {array 8 { 1 3 } 1 1 }  }
	{ cubiecube_0_co int 2 regular {array 8 { 1 3 } 1 1 }  }
	{ cubiecube_0_ep int 4 regular {array 12 { 1 3 } 1 1 }  }
	{ cubiecube_0_eo int 1 regular {array 12 { 1 3 } 1 1 }  }
	{ result_twist_0 int 16 regular {pointer 1} {global 1}  }
	{ result_flip_0 int 16 regular {pointer 1} {global 1}  }
	{ result_parity_0 int 16 regular {pointer 1} {global 1}  }
	{ result_FRtoBR_0 int 16 regular {pointer 1} {global 1}  }
	{ result_URFtoDLF_0 int 16 regular {pointer 1} {global 1}  }
	{ result_URtoUL_0 int 16 regular {pointer 1} {global 1}  }
	{ result_UBtoDF_0 int 16 regular {pointer 1} {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "cubiecube_0_cp", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "cubiecube_0_co", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "cubiecube_0_ep", "interface" : "memory", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "cubiecube_0_eo", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "result_twist_0", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "result_flip_0", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "result_parity_0", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "result_FRtoBR_0", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "result_URFtoDLF_0", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "result_URtoUL_0", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "result_UBtoDF_0", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ cubiecube_0_cp_address0 sc_out sc_lv 3 signal 0 } 
	{ cubiecube_0_cp_ce0 sc_out sc_logic 1 signal 0 } 
	{ cubiecube_0_cp_q0 sc_in sc_lv 3 signal 0 } 
	{ cubiecube_0_co_address0 sc_out sc_lv 3 signal 1 } 
	{ cubiecube_0_co_ce0 sc_out sc_logic 1 signal 1 } 
	{ cubiecube_0_co_q0 sc_in sc_lv 2 signal 1 } 
	{ cubiecube_0_ep_address0 sc_out sc_lv 4 signal 2 } 
	{ cubiecube_0_ep_ce0 sc_out sc_logic 1 signal 2 } 
	{ cubiecube_0_ep_q0 sc_in sc_lv 4 signal 2 } 
	{ cubiecube_0_eo_address0 sc_out sc_lv 4 signal 3 } 
	{ cubiecube_0_eo_ce0 sc_out sc_logic 1 signal 3 } 
	{ cubiecube_0_eo_q0 sc_in sc_lv 1 signal 3 } 
	{ result_twist_0 sc_out sc_lv 16 signal 4 } 
	{ result_twist_0_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ result_flip_0 sc_out sc_lv 16 signal 5 } 
	{ result_flip_0_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ result_parity_0 sc_out sc_lv 16 signal 6 } 
	{ result_parity_0_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ result_FRtoBR_0 sc_out sc_lv 16 signal 7 } 
	{ result_FRtoBR_0_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ result_URFtoDLF_0 sc_out sc_lv 16 signal 8 } 
	{ result_URFtoDLF_0_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ result_URtoUL_0 sc_out sc_lv 16 signal 9 } 
	{ result_URtoUL_0_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ result_UBtoDF_0 sc_out sc_lv 16 signal 10 } 
	{ result_UBtoDF_0_ap_vld sc_out sc_logic 1 outvld 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cubiecube_0_cp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cubiecube_0_cp", "role": "address0" }} , 
 	{ "name": "cubiecube_0_cp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cubiecube_0_cp", "role": "ce0" }} , 
 	{ "name": "cubiecube_0_cp_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cubiecube_0_cp", "role": "q0" }} , 
 	{ "name": "cubiecube_0_co_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cubiecube_0_co", "role": "address0" }} , 
 	{ "name": "cubiecube_0_co_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cubiecube_0_co", "role": "ce0" }} , 
 	{ "name": "cubiecube_0_co_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cubiecube_0_co", "role": "q0" }} , 
 	{ "name": "cubiecube_0_ep_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cubiecube_0_ep", "role": "address0" }} , 
 	{ "name": "cubiecube_0_ep_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cubiecube_0_ep", "role": "ce0" }} , 
 	{ "name": "cubiecube_0_ep_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cubiecube_0_ep", "role": "q0" }} , 
 	{ "name": "cubiecube_0_eo_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cubiecube_0_eo", "role": "address0" }} , 
 	{ "name": "cubiecube_0_eo_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cubiecube_0_eo", "role": "ce0" }} , 
 	{ "name": "cubiecube_0_eo_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cubiecube_0_eo", "role": "q0" }} , 
 	{ "name": "result_twist_0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "result_twist_0", "role": "default" }} , 
 	{ "name": "result_twist_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "result_twist_0", "role": "ap_vld" }} , 
 	{ "name": "result_flip_0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "result_flip_0", "role": "default" }} , 
 	{ "name": "result_flip_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "result_flip_0", "role": "ap_vld" }} , 
 	{ "name": "result_parity_0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "result_parity_0", "role": "default" }} , 
 	{ "name": "result_parity_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "result_parity_0", "role": "ap_vld" }} , 
 	{ "name": "result_FRtoBR_0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "result_FRtoBR_0", "role": "default" }} , 
 	{ "name": "result_FRtoBR_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "result_FRtoBR_0", "role": "ap_vld" }} , 
 	{ "name": "result_URFtoDLF_0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "result_URFtoDLF_0", "role": "default" }} , 
 	{ "name": "result_URFtoDLF_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "result_URFtoDLF_0", "role": "ap_vld" }} , 
 	{ "name": "result_URtoUL_0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "result_URtoUL_0", "role": "default" }} , 
 	{ "name": "result_URtoUL_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "result_URtoUL_0", "role": "ap_vld" }} , 
 	{ "name": "result_UBtoDF_0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "result_UBtoDF_0", "role": "default" }} , 
 	{ "name": "result_UBtoDF_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "result_UBtoDF_0", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "12", "14", "16", "19"],
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
					{"ID" : "16", "SubInstance" : "grp_getURFtoDLF_fu_207", "Port" : "cubiecube_0_cp"}]},
			{"Name" : "cubiecube_0_co", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cubiecube_0_ep", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_getURtoUL_fu_201", "Port" : "cubiecube_0_ep"},
					{"ID" : "19", "SubInstance" : "grp_getURtoDF_fu_213", "Port" : "cubiecube_0_ep"},
					{"ID" : "12", "SubInstance" : "grp_getUBtoDF_fu_195", "Port" : "cubiecube_0_ep"},
					{"ID" : "1", "SubInstance" : "grp_getFRtoBR_fu_189", "Port" : "cubiecube_0_ep"}]},
			{"Name" : "cubiecube_0_eo", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "result_twist_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "result_flip_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "result_parity_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "result_FRtoBR_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "result_URFtoDLF_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "result_URtoUL_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "result_UBtoDF_0", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_getFRtoBR_fu_189", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U24", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U25", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U26", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getFRtoBR_fu_189.solution_sdiv_32nkbM_U27", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U28", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getFRtoBR_fu_189.solution_mux_42_1lbW_U29", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U30", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U31", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U32", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getFRtoBR_fu_189.solution_mux_42_4jbC_U33", "Parent" : "1"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_getUBtoDF_fu_195", "Parent" : "0", "Child" : ["13"],
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
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getUBtoDF_fu_195.solution_sdiv_32nkbM_U43", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_getURtoUL_fu_201", "Parent" : "0", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getURtoUL_fu_201.solution_sdiv_32nkbM_U41", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_getURFtoDLF_fu_207", "Parent" : "0", "Child" : ["17", "18"],
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
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getURFtoDLF_fu_207.corner6_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getURFtoDLF_fu_207.solution_sdiv_32nkbM_U38", "Parent" : "16"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_getURtoDF_fu_213", "Parent" : "0", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getURtoDF_fu_213.edge6_U", "Parent" : "19"}]}


set ArgLastReadFirstWriteLatency {
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
		cubiecube_0_ep {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "276", "Max" : "17792"}
	, {"Name" : "Interval", "Min" : "276", "Max" : "17792"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cubiecube_0_cp { ap_memory {  { cubiecube_0_cp_address0 mem_address 1 3 }  { cubiecube_0_cp_ce0 mem_ce 1 1 }  { cubiecube_0_cp_q0 mem_dout 0 3 } } }
	cubiecube_0_co { ap_memory {  { cubiecube_0_co_address0 mem_address 1 3 }  { cubiecube_0_co_ce0 mem_ce 1 1 }  { cubiecube_0_co_q0 mem_dout 0 2 } } }
	cubiecube_0_ep { ap_memory {  { cubiecube_0_ep_address0 mem_address 1 4 }  { cubiecube_0_ep_ce0 mem_ce 1 1 }  { cubiecube_0_ep_q0 mem_dout 0 4 } } }
	cubiecube_0_eo { ap_memory {  { cubiecube_0_eo_address0 mem_address 1 4 }  { cubiecube_0_eo_ce0 mem_ce 1 1 }  { cubiecube_0_eo_q0 mem_dout 0 1 } } }
	result_twist_0 { ap_vld {  { result_twist_0 out_data 1 16 }  { result_twist_0_ap_vld out_vld 1 1 } } }
	result_flip_0 { ap_vld {  { result_flip_0 out_data 1 16 }  { result_flip_0_ap_vld out_vld 1 1 } } }
	result_parity_0 { ap_vld {  { result_parity_0 out_data 1 16 }  { result_parity_0_ap_vld out_vld 1 1 } } }
	result_FRtoBR_0 { ap_vld {  { result_FRtoBR_0 out_data 1 16 }  { result_FRtoBR_0_ap_vld out_vld 1 1 } } }
	result_URFtoDLF_0 { ap_vld {  { result_URFtoDLF_0 out_data 1 16 }  { result_URFtoDLF_0_ap_vld out_vld 1 1 } } }
	result_URtoUL_0 { ap_vld {  { result_URtoUL_0 out_data 1 16 }  { result_URtoUL_0_ap_vld out_vld 1 1 } } }
	result_UBtoDF_0 { ap_vld {  { result_UBtoDF_0 out_data 1 16 }  { result_UBtoDF_0_ap_vld out_vld 1 1 } } }
}
