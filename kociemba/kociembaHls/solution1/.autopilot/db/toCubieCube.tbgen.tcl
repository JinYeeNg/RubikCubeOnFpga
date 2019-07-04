set moduleName toCubieCube
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
set C_modelName {toCubieCube}
set C_modelType { void 0 }
set C_modelArgList {
	{ facecube_0_f int 3 regular {array 54 { 1 1 } 1 1 }  }
	{ ccRet_cp_0 int 3 regular {array 8 { 0 3 } 0 1 } {global 1}  }
	{ ccRet_ep_0 int 4 regular {array 12 { 0 3 } 0 1 } {global 1}  }
	{ ccRet_co_0 int 2 regular {array 8 { 0 3 } 0 1 } {global 1}  }
	{ ccRet_eo_0 int 1 regular {array 12 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "facecube_0_f", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "ccRet_cp_0", "interface" : "memory", "bitwidth" : 3, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "ccRet_ep_0", "interface" : "memory", "bitwidth" : 4, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "ccRet_co_0", "interface" : "memory", "bitwidth" : 2, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "ccRet_eo_0", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ facecube_0_f_address0 sc_out sc_lv 6 signal 0 } 
	{ facecube_0_f_ce0 sc_out sc_logic 1 signal 0 } 
	{ facecube_0_f_q0 sc_in sc_lv 3 signal 0 } 
	{ facecube_0_f_address1 sc_out sc_lv 6 signal 0 } 
	{ facecube_0_f_ce1 sc_out sc_logic 1 signal 0 } 
	{ facecube_0_f_q1 sc_in sc_lv 3 signal 0 } 
	{ ccRet_cp_0_address0 sc_out sc_lv 3 signal 1 } 
	{ ccRet_cp_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ ccRet_cp_0_we0 sc_out sc_logic 1 signal 1 } 
	{ ccRet_cp_0_d0 sc_out sc_lv 3 signal 1 } 
	{ ccRet_ep_0_address0 sc_out sc_lv 4 signal 2 } 
	{ ccRet_ep_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ ccRet_ep_0_we0 sc_out sc_logic 1 signal 2 } 
	{ ccRet_ep_0_d0 sc_out sc_lv 4 signal 2 } 
	{ ccRet_co_0_address0 sc_out sc_lv 3 signal 3 } 
	{ ccRet_co_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ ccRet_co_0_we0 sc_out sc_logic 1 signal 3 } 
	{ ccRet_co_0_d0 sc_out sc_lv 2 signal 3 } 
	{ ccRet_eo_0_address0 sc_out sc_lv 4 signal 4 } 
	{ ccRet_eo_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ ccRet_eo_0_we0 sc_out sc_logic 1 signal 4 } 
	{ ccRet_eo_0_d0 sc_out sc_lv 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "facecube_0_f_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "facecube_0_f", "role": "address0" }} , 
 	{ "name": "facecube_0_f_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "facecube_0_f", "role": "ce0" }} , 
 	{ "name": "facecube_0_f_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "facecube_0_f", "role": "q0" }} , 
 	{ "name": "facecube_0_f_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "facecube_0_f", "role": "address1" }} , 
 	{ "name": "facecube_0_f_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "facecube_0_f", "role": "ce1" }} , 
 	{ "name": "facecube_0_f_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "facecube_0_f", "role": "q1" }} , 
 	{ "name": "ccRet_cp_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ccRet_cp_0", "role": "address0" }} , 
 	{ "name": "ccRet_cp_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccRet_cp_0", "role": "ce0" }} , 
 	{ "name": "ccRet_cp_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccRet_cp_0", "role": "we0" }} , 
 	{ "name": "ccRet_cp_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ccRet_cp_0", "role": "d0" }} , 
 	{ "name": "ccRet_ep_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccRet_ep_0", "role": "address0" }} , 
 	{ "name": "ccRet_ep_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccRet_ep_0", "role": "ce0" }} , 
 	{ "name": "ccRet_ep_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccRet_ep_0", "role": "we0" }} , 
 	{ "name": "ccRet_ep_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccRet_ep_0", "role": "d0" }} , 
 	{ "name": "ccRet_co_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ccRet_co_0", "role": "address0" }} , 
 	{ "name": "ccRet_co_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccRet_co_0", "role": "ce0" }} , 
 	{ "name": "ccRet_co_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccRet_co_0", "role": "we0" }} , 
 	{ "name": "ccRet_co_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ccRet_co_0", "role": "d0" }} , 
 	{ "name": "ccRet_eo_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccRet_eo_0", "role": "address0" }} , 
 	{ "name": "ccRet_eo_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccRet_eo_0", "role": "ce0" }} , 
 	{ "name": "ccRet_eo_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccRet_eo_0", "role": "we0" }} , 
 	{ "name": "ccRet_eo_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccRet_eo_0", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cornerFacelet_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cornerColor_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cornerColor_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.edgeFacelet_0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.edgeFacelet_1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.edgeColor_0_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.edgeColor_1_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convert_edge_fu_430", "Parent" : "0",
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
			{"Name" : "in_r", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
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
		in_r {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "228", "Max" : "1084"}
	, {"Name" : "Interval", "Min" : "228", "Max" : "1084"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	facecube_0_f { ap_memory {  { facecube_0_f_address0 mem_address 1 6 }  { facecube_0_f_ce0 mem_ce 1 1 }  { facecube_0_f_q0 mem_dout 0 3 }  { facecube_0_f_address1 mem_address 1 6 }  { facecube_0_f_ce1 mem_ce 1 1 }  { facecube_0_f_q1 mem_dout 0 3 } } }
	ccRet_cp_0 { ap_memory {  { ccRet_cp_0_address0 mem_address 1 3 }  { ccRet_cp_0_ce0 mem_ce 1 1 }  { ccRet_cp_0_we0 mem_we 1 1 }  { ccRet_cp_0_d0 mem_din 1 3 } } }
	ccRet_ep_0 { ap_memory {  { ccRet_ep_0_address0 mem_address 1 4 }  { ccRet_ep_0_ce0 mem_ce 1 1 }  { ccRet_ep_0_we0 mem_we 1 1 }  { ccRet_ep_0_d0 mem_din 1 4 } } }
	ccRet_co_0 { ap_memory {  { ccRet_co_0_address0 mem_address 1 3 }  { ccRet_co_0_ce0 mem_ce 1 1 }  { ccRet_co_0_we0 mem_we 1 1 }  { ccRet_co_0_d0 mem_din 1 2 } } }
	ccRet_eo_0 { ap_memory {  { ccRet_eo_0_address0 mem_address 1 4 }  { ccRet_eo_0_ce0 mem_ce 1 1 }  { ccRet_eo_0_we0 mem_we 1 1 }  { ccRet_eo_0_d0 mem_din 1 1 } } }
}
