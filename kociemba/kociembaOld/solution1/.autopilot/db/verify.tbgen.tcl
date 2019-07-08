set moduleName verify
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
set C_modelName {verify}
set C_modelType { int 4 }
set C_modelArgList {
	{ cubiecube_0_cp int 3 regular {array 8 { 1 3 } 1 1 }  }
	{ cubiecube_0_co int 2 regular {array 8 { 1 3 } 1 1 }  }
	{ cubiecube_0_ep int 4 regular {array 12 { 1 3 } 1 1 }  }
	{ cubiecube_0_eo int 1 regular {array 12 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "cubiecube_0_cp", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "cubiecube_0_co", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "cubiecube_0_ep", "interface" : "memory", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "cubiecube_0_eo", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 4} ]}
# RTL Port declarations: 
set portNum 19
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
	{ ap_return sc_out sc_lv 4 signal -1 } 
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
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.edgeCount_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cornerCount_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.solution_urem_5nsibs_U15", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	verify {
		cubiecube_0_cp {Type I LastRead 20 FirstWrite -1}
		cubiecube_0_co {Type I LastRead 8 FirstWrite -1}
		cubiecube_0_ep {Type I LastRead 19 FirstWrite -1}
		cubiecube_0_eo {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "61", "Max" : "573"}
	, {"Name" : "Interval", "Min" : "61", "Max" : "573"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cubiecube_0_cp { ap_memory {  { cubiecube_0_cp_address0 mem_address 1 3 }  { cubiecube_0_cp_ce0 mem_ce 1 1 }  { cubiecube_0_cp_q0 mem_dout 0 3 } } }
	cubiecube_0_co { ap_memory {  { cubiecube_0_co_address0 mem_address 1 3 }  { cubiecube_0_co_ce0 mem_ce 1 1 }  { cubiecube_0_co_q0 mem_dout 0 2 } } }
	cubiecube_0_ep { ap_memory {  { cubiecube_0_ep_address0 mem_address 1 4 }  { cubiecube_0_ep_ce0 mem_ce 1 1 }  { cubiecube_0_ep_q0 mem_dout 0 4 } } }
	cubiecube_0_eo { ap_memory {  { cubiecube_0_eo_address0 mem_address 1 4 }  { cubiecube_0_eo_ce0 mem_ce 1 1 }  { cubiecube_0_eo_q0 mem_dout 0 1 } } }
}
