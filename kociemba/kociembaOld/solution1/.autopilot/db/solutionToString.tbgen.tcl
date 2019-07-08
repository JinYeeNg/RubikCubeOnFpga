set moduleName solutionToString
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
set C_modelName {solutionToString}
set C_modelType { void 0 }
set C_modelArgList {
	{ search_0_ax int 32 regular {array 31 { 1 3 } 1 1 }  }
	{ search_0_po int 32 regular {array 31 { 1 3 } 1 1 }  }
	{ length_r int 32 regular  }
	{ encode_array int 8 regular {array 30 { 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "search_0_ax", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "search_0_po", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "length_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "encode_array", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ search_0_ax_address0 sc_out sc_lv 5 signal 0 } 
	{ search_0_ax_ce0 sc_out sc_logic 1 signal 0 } 
	{ search_0_ax_q0 sc_in sc_lv 32 signal 0 } 
	{ search_0_po_address0 sc_out sc_lv 5 signal 1 } 
	{ search_0_po_ce0 sc_out sc_logic 1 signal 1 } 
	{ search_0_po_q0 sc_in sc_lv 32 signal 1 } 
	{ length_r sc_in sc_lv 32 signal 2 } 
	{ encode_array_address0 sc_out sc_lv 5 signal 3 } 
	{ encode_array_ce0 sc_out sc_logic 1 signal 3 } 
	{ encode_array_we0 sc_out sc_logic 1 signal 3 } 
	{ encode_array_d0 sc_out sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "search_0_ax_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "search_0_ax", "role": "address0" }} , 
 	{ "name": "search_0_ax_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "search_0_ax", "role": "ce0" }} , 
 	{ "name": "search_0_ax_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "search_0_ax", "role": "q0" }} , 
 	{ "name": "search_0_po_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "search_0_po", "role": "address0" }} , 
 	{ "name": "search_0_po_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "search_0_po", "role": "ce0" }} , 
 	{ "name": "search_0_po_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "search_0_po", "role": "q0" }} , 
 	{ "name": "length_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "length_r", "role": "default" }} , 
 	{ "name": "encode_array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "encode_array", "role": "address0" }} , 
 	{ "name": "encode_array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "encode_array", "role": "ce0" }} , 
 	{ "name": "encode_array_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "encode_array", "role": "we0" }} , 
 	{ "name": "encode_array_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "encode_array", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "encode_array", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	solutionToString {
		search_0_ax {Type I LastRead 1 FirstWrite -1}
		search_0_po {Type I LastRead 2 FirstWrite -1}
		length_r {Type I LastRead 0 FirstWrite -1}
		encode_array {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	search_0_ax { ap_memory {  { search_0_ax_address0 mem_address 1 5 }  { search_0_ax_ce0 mem_ce 1 1 }  { search_0_ax_q0 mem_dout 0 32 } } }
	search_0_po { ap_memory {  { search_0_po_address0 mem_address 1 5 }  { search_0_po_ce0 mem_ce 1 1 }  { search_0_po_q0 mem_dout 0 32 } } }
	length_r { ap_none {  { length_r in_data 0 32 } } }
	encode_array { ap_memory {  { encode_array_address0 mem_address 1 5 }  { encode_array_ce0 mem_ce 1 1 }  { encode_array_we0 mem_we 1 1 }  { encode_array_d0 mem_din 1 8 } } }
}
