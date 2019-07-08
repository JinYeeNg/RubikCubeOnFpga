set moduleName get_facecube_fromstr
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
set C_modelName {get_facecube_fromstr}
set C_modelType { void 0 }
set C_modelArgList {
	{ cubeString int 8 regular {array 54 { 1 } 1 1 }  }
	{ res_f_0 int 3 regular {array 54 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "cubeString", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "res_f_0", "interface" : "memory", "bitwidth" : 3, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ cubeString_address0 sc_out sc_lv 6 signal 0 } 
	{ cubeString_ce0 sc_out sc_logic 1 signal 0 } 
	{ cubeString_q0 sc_in sc_lv 8 signal 0 } 
	{ res_f_0_address0 sc_out sc_lv 6 signal 1 } 
	{ res_f_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_f_0_we0 sc_out sc_logic 1 signal 1 } 
	{ res_f_0_d0 sc_out sc_lv 3 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cubeString_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cubeString", "role": "address0" }} , 
 	{ "name": "cubeString_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cubeString", "role": "ce0" }} , 
 	{ "name": "cubeString_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cubeString", "role": "q0" }} , 
 	{ "name": "res_f_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "res_f_0", "role": "address0" }} , 
 	{ "name": "res_f_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_f_0", "role": "ce0" }} , 
 	{ "name": "res_f_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_f_0", "role": "we0" }} , 
 	{ "name": "res_f_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "res_f_0", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "res_f_0", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	get_facecube_fromstr {
		cubeString {Type I LastRead 1 FirstWrite -1}
		res_f_0 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "109", "Max" : "109"}
	, {"Name" : "Interval", "Min" : "109", "Max" : "109"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cubeString { ap_memory {  { cubeString_address0 mem_address 1 6 }  { cubeString_ce0 mem_ce 1 1 }  { cubeString_q0 mem_dout 0 8 } } }
	res_f_0 { ap_memory {  { res_f_0_address0 mem_address 1 6 }  { res_f_0_ce0 mem_ce 1 1 }  { res_f_0_we0 mem_we 1 1 }  { res_f_0_d0 mem_din 1 3 } } }
}
