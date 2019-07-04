set moduleName parallel_v2
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
set C_modelName {parallel_v2}
set C_modelType { int 32 }
set C_modelArgList {
	{ P1Buffer_0_flip int 16 regular {array 8000 { 2 3 } 1 1 }  }
	{ P1Buffer_0_twist int 16 regular {array 8000 { 2 3 } 1 1 }  }
	{ P1Buffer_0_slice int 16 regular {array 8000 { 2 3 } 1 1 }  }
	{ P1Buffer_0_depthPha int 8 regular {array 8000 { 2 3 } 1 1 }  }
	{ P1Buffer_0_n int 8 regular {array 8000 { 2 3 } 1 1 }  }
	{ P1Buffer_0_i int 8 regular {array 248000 { 2 3 } 1 1 }  }
	{ P1Start_read int 32 regular  }
	{ P1End_read int 32 regular  }
	{ first_read int 1 regular  }
	{ depthPhase1 int 5 regular  }
	{ twistMove2 int 16 regular {axi_master 0}  }
	{ twistMove2_offset int 31 regular  }
	{ flipMove2 int 16 regular {axi_master 0}  }
	{ flipMove2_offset int 31 regular  }
	{ FRtoBR_Move2 int 16 regular {axi_master 0}  }
	{ FRtoBR_Move2_offset int 31 regular  }
	{ Slice_Twist_Prun2_offset int 31 regular  }
	{ Slice_Flip_Prun2_offset int 31 regular  }
	{ P2Buffer_V_flip int 16 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_twist int 16 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_slice int 16 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_parity int 1 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_URFtoDLF int 16 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_FRtoBR int 16 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_URtoDF int 16 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_depthPhas int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_n int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_0 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_1 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_2 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_3 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_4 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_5 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_6 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_7 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_8 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_9 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_10 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_11 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_12 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_13 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_14 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_15 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_16 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_17 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_18 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_19 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_20 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_21 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_22 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_23 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_24 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_25 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_26 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_27 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_28 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_29 int 8 regular {fifo 1 volatile } {global 1}  }
	{ P2Buffer_V_i_30 int 8 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "P1Buffer_0_flip", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "P1Buffer_0_twist", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "P1Buffer_0_slice", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "P1Buffer_0_depthPha", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "P1Buffer_0_n", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "P1Buffer_0_i", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "P1Start_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P1End_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "first_read", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "depthPhase1", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "twistMove2", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "twistMove2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "flipMove2", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "flipMove2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "FRtoBR_Move2", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FRtoBR_Move2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "Slice_Twist_Prun2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "Slice_Flip_Prun2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "P2Buffer_V_flip", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "P2Buffer.V.flip","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_twist", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "P2Buffer.V.twist","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_slice", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "P2Buffer.V.slice","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_parity", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "P2Buffer.V.parity","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_URFtoDLF", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "P2Buffer.V.URFtoDLF","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_FRtoBR", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "P2Buffer.V.FRtoBR","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_URtoDF", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "P2Buffer.V.URtoDF","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_depthPhas", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.depthPhase1","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_n", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.n","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_0", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_1", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_2", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_3", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_4", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_5", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_6", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_7", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_8", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 8,"up" : 8,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_9", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 9,"up" : 9,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_10", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 10,"up" : 10,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_11", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 11,"up" : 11,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_12", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 12,"up" : 12,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_13", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 13,"up" : 13,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_14", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 14,"up" : 14,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_15", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 15,"up" : 15,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_16", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 16,"up" : 16,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_17", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 17,"up" : 17,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_18", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 18,"up" : 18,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_19", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 19,"up" : 19,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_20", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 20,"up" : 20,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_21", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 21,"up" : 21,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_22", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 22,"up" : 22,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_23", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 23,"up" : 23,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_24", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 24,"up" : 24,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_25", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 25,"up" : 25,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_26", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 26,"up" : 26,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_27", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 27,"up" : 27,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_28", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 28,"up" : 28,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_29", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 29,"up" : 29,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_30", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 30,"up" : 30,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 301
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ P1Buffer_0_flip_address0 sc_out sc_lv 13 signal 0 } 
	{ P1Buffer_0_flip_ce0 sc_out sc_logic 1 signal 0 } 
	{ P1Buffer_0_flip_we0 sc_out sc_logic 1 signal 0 } 
	{ P1Buffer_0_flip_d0 sc_out sc_lv 16 signal 0 } 
	{ P1Buffer_0_flip_q0 sc_in sc_lv 16 signal 0 } 
	{ P1Buffer_0_twist_address0 sc_out sc_lv 13 signal 1 } 
	{ P1Buffer_0_twist_ce0 sc_out sc_logic 1 signal 1 } 
	{ P1Buffer_0_twist_we0 sc_out sc_logic 1 signal 1 } 
	{ P1Buffer_0_twist_d0 sc_out sc_lv 16 signal 1 } 
	{ P1Buffer_0_twist_q0 sc_in sc_lv 16 signal 1 } 
	{ P1Buffer_0_slice_address0 sc_out sc_lv 13 signal 2 } 
	{ P1Buffer_0_slice_ce0 sc_out sc_logic 1 signal 2 } 
	{ P1Buffer_0_slice_we0 sc_out sc_logic 1 signal 2 } 
	{ P1Buffer_0_slice_d0 sc_out sc_lv 16 signal 2 } 
	{ P1Buffer_0_slice_q0 sc_in sc_lv 16 signal 2 } 
	{ P1Buffer_0_depthPha_address0 sc_out sc_lv 13 signal 3 } 
	{ P1Buffer_0_depthPha_ce0 sc_out sc_logic 1 signal 3 } 
	{ P1Buffer_0_depthPha_we0 sc_out sc_logic 1 signal 3 } 
	{ P1Buffer_0_depthPha_d0 sc_out sc_lv 8 signal 3 } 
	{ P1Buffer_0_depthPha_q0 sc_in sc_lv 8 signal 3 } 
	{ P1Buffer_0_n_address0 sc_out sc_lv 13 signal 4 } 
	{ P1Buffer_0_n_ce0 sc_out sc_logic 1 signal 4 } 
	{ P1Buffer_0_n_we0 sc_out sc_logic 1 signal 4 } 
	{ P1Buffer_0_n_d0 sc_out sc_lv 8 signal 4 } 
	{ P1Buffer_0_n_q0 sc_in sc_lv 8 signal 4 } 
	{ P1Buffer_0_i_address0 sc_out sc_lv 18 signal 5 } 
	{ P1Buffer_0_i_ce0 sc_out sc_logic 1 signal 5 } 
	{ P1Buffer_0_i_we0 sc_out sc_logic 1 signal 5 } 
	{ P1Buffer_0_i_d0 sc_out sc_lv 8 signal 5 } 
	{ P1Buffer_0_i_q0 sc_in sc_lv 8 signal 5 } 
	{ P1Start_read sc_in sc_lv 32 signal 6 } 
	{ P1End_read sc_in sc_lv 32 signal 7 } 
	{ first_read sc_in sc_logic 1 signal 8 } 
	{ depthPhase1 sc_in sc_lv 5 signal 9 } 
	{ m_axi_twistMove2_AWVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_twistMove2_AWREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_twistMove2_AWADDR sc_out sc_lv 32 signal 10 } 
	{ m_axi_twistMove2_AWID sc_out sc_lv 1 signal 10 } 
	{ m_axi_twistMove2_AWLEN sc_out sc_lv 32 signal 10 } 
	{ m_axi_twistMove2_AWSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_twistMove2_AWBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_twistMove2_AWLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_twistMove2_AWCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_twistMove2_AWPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_twistMove2_AWQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_twistMove2_AWREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_twistMove2_AWUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_twistMove2_WVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_twistMove2_WREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_twistMove2_WDATA sc_out sc_lv 16 signal 10 } 
	{ m_axi_twistMove2_WSTRB sc_out sc_lv 2 signal 10 } 
	{ m_axi_twistMove2_WLAST sc_out sc_logic 1 signal 10 } 
	{ m_axi_twistMove2_WID sc_out sc_lv 1 signal 10 } 
	{ m_axi_twistMove2_WUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_twistMove2_ARVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_twistMove2_ARREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_twistMove2_ARADDR sc_out sc_lv 32 signal 10 } 
	{ m_axi_twistMove2_ARID sc_out sc_lv 1 signal 10 } 
	{ m_axi_twistMove2_ARLEN sc_out sc_lv 32 signal 10 } 
	{ m_axi_twistMove2_ARSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_twistMove2_ARBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_twistMove2_ARLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_twistMove2_ARCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_twistMove2_ARPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_twistMove2_ARQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_twistMove2_ARREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_twistMove2_ARUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_twistMove2_RVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_twistMove2_RREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_twistMove2_RDATA sc_in sc_lv 16 signal 10 } 
	{ m_axi_twistMove2_RLAST sc_in sc_logic 1 signal 10 } 
	{ m_axi_twistMove2_RID sc_in sc_lv 1 signal 10 } 
	{ m_axi_twistMove2_RUSER sc_in sc_lv 1 signal 10 } 
	{ m_axi_twistMove2_RRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_twistMove2_BVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_twistMove2_BREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_twistMove2_BRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_twistMove2_BID sc_in sc_lv 1 signal 10 } 
	{ m_axi_twistMove2_BUSER sc_in sc_lv 1 signal 10 } 
	{ twistMove2_offset sc_in sc_lv 31 signal 11 } 
	{ m_axi_flipMove2_AWVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_flipMove2_AWREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_flipMove2_AWADDR sc_out sc_lv 32 signal 12 } 
	{ m_axi_flipMove2_AWID sc_out sc_lv 1 signal 12 } 
	{ m_axi_flipMove2_AWLEN sc_out sc_lv 32 signal 12 } 
	{ m_axi_flipMove2_AWSIZE sc_out sc_lv 3 signal 12 } 
	{ m_axi_flipMove2_AWBURST sc_out sc_lv 2 signal 12 } 
	{ m_axi_flipMove2_AWLOCK sc_out sc_lv 2 signal 12 } 
	{ m_axi_flipMove2_AWCACHE sc_out sc_lv 4 signal 12 } 
	{ m_axi_flipMove2_AWPROT sc_out sc_lv 3 signal 12 } 
	{ m_axi_flipMove2_AWQOS sc_out sc_lv 4 signal 12 } 
	{ m_axi_flipMove2_AWREGION sc_out sc_lv 4 signal 12 } 
	{ m_axi_flipMove2_AWUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_flipMove2_WVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_flipMove2_WREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_flipMove2_WDATA sc_out sc_lv 16 signal 12 } 
	{ m_axi_flipMove2_WSTRB sc_out sc_lv 2 signal 12 } 
	{ m_axi_flipMove2_WLAST sc_out sc_logic 1 signal 12 } 
	{ m_axi_flipMove2_WID sc_out sc_lv 1 signal 12 } 
	{ m_axi_flipMove2_WUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_flipMove2_ARVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_flipMove2_ARREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_flipMove2_ARADDR sc_out sc_lv 32 signal 12 } 
	{ m_axi_flipMove2_ARID sc_out sc_lv 1 signal 12 } 
	{ m_axi_flipMove2_ARLEN sc_out sc_lv 32 signal 12 } 
	{ m_axi_flipMove2_ARSIZE sc_out sc_lv 3 signal 12 } 
	{ m_axi_flipMove2_ARBURST sc_out sc_lv 2 signal 12 } 
	{ m_axi_flipMove2_ARLOCK sc_out sc_lv 2 signal 12 } 
	{ m_axi_flipMove2_ARCACHE sc_out sc_lv 4 signal 12 } 
	{ m_axi_flipMove2_ARPROT sc_out sc_lv 3 signal 12 } 
	{ m_axi_flipMove2_ARQOS sc_out sc_lv 4 signal 12 } 
	{ m_axi_flipMove2_ARREGION sc_out sc_lv 4 signal 12 } 
	{ m_axi_flipMove2_ARUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_flipMove2_RVALID sc_in sc_logic 1 signal 12 } 
	{ m_axi_flipMove2_RREADY sc_out sc_logic 1 signal 12 } 
	{ m_axi_flipMove2_RDATA sc_in sc_lv 16 signal 12 } 
	{ m_axi_flipMove2_RLAST sc_in sc_logic 1 signal 12 } 
	{ m_axi_flipMove2_RID sc_in sc_lv 1 signal 12 } 
	{ m_axi_flipMove2_RUSER sc_in sc_lv 1 signal 12 } 
	{ m_axi_flipMove2_RRESP sc_in sc_lv 2 signal 12 } 
	{ m_axi_flipMove2_BVALID sc_in sc_logic 1 signal 12 } 
	{ m_axi_flipMove2_BREADY sc_out sc_logic 1 signal 12 } 
	{ m_axi_flipMove2_BRESP sc_in sc_lv 2 signal 12 } 
	{ m_axi_flipMove2_BID sc_in sc_lv 1 signal 12 } 
	{ m_axi_flipMove2_BUSER sc_in sc_lv 1 signal 12 } 
	{ flipMove2_offset sc_in sc_lv 31 signal 13 } 
	{ m_axi_FRtoBR_Move2_AWVALID sc_out sc_logic 1 signal 14 } 
	{ m_axi_FRtoBR_Move2_AWREADY sc_in sc_logic 1 signal 14 } 
	{ m_axi_FRtoBR_Move2_AWADDR sc_out sc_lv 32 signal 14 } 
	{ m_axi_FRtoBR_Move2_AWID sc_out sc_lv 1 signal 14 } 
	{ m_axi_FRtoBR_Move2_AWLEN sc_out sc_lv 32 signal 14 } 
	{ m_axi_FRtoBR_Move2_AWSIZE sc_out sc_lv 3 signal 14 } 
	{ m_axi_FRtoBR_Move2_AWBURST sc_out sc_lv 2 signal 14 } 
	{ m_axi_FRtoBR_Move2_AWLOCK sc_out sc_lv 2 signal 14 } 
	{ m_axi_FRtoBR_Move2_AWCACHE sc_out sc_lv 4 signal 14 } 
	{ m_axi_FRtoBR_Move2_AWPROT sc_out sc_lv 3 signal 14 } 
	{ m_axi_FRtoBR_Move2_AWQOS sc_out sc_lv 4 signal 14 } 
	{ m_axi_FRtoBR_Move2_AWREGION sc_out sc_lv 4 signal 14 } 
	{ m_axi_FRtoBR_Move2_AWUSER sc_out sc_lv 1 signal 14 } 
	{ m_axi_FRtoBR_Move2_WVALID sc_out sc_logic 1 signal 14 } 
	{ m_axi_FRtoBR_Move2_WREADY sc_in sc_logic 1 signal 14 } 
	{ m_axi_FRtoBR_Move2_WDATA sc_out sc_lv 16 signal 14 } 
	{ m_axi_FRtoBR_Move2_WSTRB sc_out sc_lv 2 signal 14 } 
	{ m_axi_FRtoBR_Move2_WLAST sc_out sc_logic 1 signal 14 } 
	{ m_axi_FRtoBR_Move2_WID sc_out sc_lv 1 signal 14 } 
	{ m_axi_FRtoBR_Move2_WUSER sc_out sc_lv 1 signal 14 } 
	{ m_axi_FRtoBR_Move2_ARVALID sc_out sc_logic 1 signal 14 } 
	{ m_axi_FRtoBR_Move2_ARREADY sc_in sc_logic 1 signal 14 } 
	{ m_axi_FRtoBR_Move2_ARADDR sc_out sc_lv 32 signal 14 } 
	{ m_axi_FRtoBR_Move2_ARID sc_out sc_lv 1 signal 14 } 
	{ m_axi_FRtoBR_Move2_ARLEN sc_out sc_lv 32 signal 14 } 
	{ m_axi_FRtoBR_Move2_ARSIZE sc_out sc_lv 3 signal 14 } 
	{ m_axi_FRtoBR_Move2_ARBURST sc_out sc_lv 2 signal 14 } 
	{ m_axi_FRtoBR_Move2_ARLOCK sc_out sc_lv 2 signal 14 } 
	{ m_axi_FRtoBR_Move2_ARCACHE sc_out sc_lv 4 signal 14 } 
	{ m_axi_FRtoBR_Move2_ARPROT sc_out sc_lv 3 signal 14 } 
	{ m_axi_FRtoBR_Move2_ARQOS sc_out sc_lv 4 signal 14 } 
	{ m_axi_FRtoBR_Move2_ARREGION sc_out sc_lv 4 signal 14 } 
	{ m_axi_FRtoBR_Move2_ARUSER sc_out sc_lv 1 signal 14 } 
	{ m_axi_FRtoBR_Move2_RVALID sc_in sc_logic 1 signal 14 } 
	{ m_axi_FRtoBR_Move2_RREADY sc_out sc_logic 1 signal 14 } 
	{ m_axi_FRtoBR_Move2_RDATA sc_in sc_lv 16 signal 14 } 
	{ m_axi_FRtoBR_Move2_RLAST sc_in sc_logic 1 signal 14 } 
	{ m_axi_FRtoBR_Move2_RID sc_in sc_lv 1 signal 14 } 
	{ m_axi_FRtoBR_Move2_RUSER sc_in sc_lv 1 signal 14 } 
	{ m_axi_FRtoBR_Move2_RRESP sc_in sc_lv 2 signal 14 } 
	{ m_axi_FRtoBR_Move2_BVALID sc_in sc_logic 1 signal 14 } 
	{ m_axi_FRtoBR_Move2_BREADY sc_out sc_logic 1 signal 14 } 
	{ m_axi_FRtoBR_Move2_BRESP sc_in sc_lv 2 signal 14 } 
	{ m_axi_FRtoBR_Move2_BID sc_in sc_lv 1 signal 14 } 
	{ m_axi_FRtoBR_Move2_BUSER sc_in sc_lv 1 signal 14 } 
	{ FRtoBR_Move2_offset sc_in sc_lv 31 signal 15 } 
	{ Slice_Twist_Prun2_offset sc_in sc_lv 31 signal 16 } 
	{ Slice_Flip_Prun2_offset sc_in sc_lv 31 signal 17 } 
	{ P2Buffer_V_flip_din sc_out sc_lv 16 signal 18 } 
	{ P2Buffer_V_flip_full_n sc_in sc_logic 1 signal 18 } 
	{ P2Buffer_V_flip_write sc_out sc_logic 1 signal 18 } 
	{ P2Buffer_V_twist_din sc_out sc_lv 16 signal 19 } 
	{ P2Buffer_V_twist_full_n sc_in sc_logic 1 signal 19 } 
	{ P2Buffer_V_twist_write sc_out sc_logic 1 signal 19 } 
	{ P2Buffer_V_slice_din sc_out sc_lv 16 signal 20 } 
	{ P2Buffer_V_slice_full_n sc_in sc_logic 1 signal 20 } 
	{ P2Buffer_V_slice_write sc_out sc_logic 1 signal 20 } 
	{ P2Buffer_V_parity_din sc_out sc_lv 1 signal 21 } 
	{ P2Buffer_V_parity_full_n sc_in sc_logic 1 signal 21 } 
	{ P2Buffer_V_parity_write sc_out sc_logic 1 signal 21 } 
	{ P2Buffer_V_URFtoDLF_din sc_out sc_lv 16 signal 22 } 
	{ P2Buffer_V_URFtoDLF_full_n sc_in sc_logic 1 signal 22 } 
	{ P2Buffer_V_URFtoDLF_write sc_out sc_logic 1 signal 22 } 
	{ P2Buffer_V_FRtoBR_din sc_out sc_lv 16 signal 23 } 
	{ P2Buffer_V_FRtoBR_full_n sc_in sc_logic 1 signal 23 } 
	{ P2Buffer_V_FRtoBR_write sc_out sc_logic 1 signal 23 } 
	{ P2Buffer_V_URtoDF_din sc_out sc_lv 16 signal 24 } 
	{ P2Buffer_V_URtoDF_full_n sc_in sc_logic 1 signal 24 } 
	{ P2Buffer_V_URtoDF_write sc_out sc_logic 1 signal 24 } 
	{ P2Buffer_V_depthPhas_din sc_out sc_lv 8 signal 25 } 
	{ P2Buffer_V_depthPhas_full_n sc_in sc_logic 1 signal 25 } 
	{ P2Buffer_V_depthPhas_write sc_out sc_logic 1 signal 25 } 
	{ P2Buffer_V_n_din sc_out sc_lv 8 signal 26 } 
	{ P2Buffer_V_n_full_n sc_in sc_logic 1 signal 26 } 
	{ P2Buffer_V_n_write sc_out sc_logic 1 signal 26 } 
	{ P2Buffer_V_i_0_din sc_out sc_lv 8 signal 27 } 
	{ P2Buffer_V_i_0_full_n sc_in sc_logic 1 signal 27 } 
	{ P2Buffer_V_i_0_write sc_out sc_logic 1 signal 27 } 
	{ P2Buffer_V_i_1_din sc_out sc_lv 8 signal 28 } 
	{ P2Buffer_V_i_1_full_n sc_in sc_logic 1 signal 28 } 
	{ P2Buffer_V_i_1_write sc_out sc_logic 1 signal 28 } 
	{ P2Buffer_V_i_2_din sc_out sc_lv 8 signal 29 } 
	{ P2Buffer_V_i_2_full_n sc_in sc_logic 1 signal 29 } 
	{ P2Buffer_V_i_2_write sc_out sc_logic 1 signal 29 } 
	{ P2Buffer_V_i_3_din sc_out sc_lv 8 signal 30 } 
	{ P2Buffer_V_i_3_full_n sc_in sc_logic 1 signal 30 } 
	{ P2Buffer_V_i_3_write sc_out sc_logic 1 signal 30 } 
	{ P2Buffer_V_i_4_din sc_out sc_lv 8 signal 31 } 
	{ P2Buffer_V_i_4_full_n sc_in sc_logic 1 signal 31 } 
	{ P2Buffer_V_i_4_write sc_out sc_logic 1 signal 31 } 
	{ P2Buffer_V_i_5_din sc_out sc_lv 8 signal 32 } 
	{ P2Buffer_V_i_5_full_n sc_in sc_logic 1 signal 32 } 
	{ P2Buffer_V_i_5_write sc_out sc_logic 1 signal 32 } 
	{ P2Buffer_V_i_6_din sc_out sc_lv 8 signal 33 } 
	{ P2Buffer_V_i_6_full_n sc_in sc_logic 1 signal 33 } 
	{ P2Buffer_V_i_6_write sc_out sc_logic 1 signal 33 } 
	{ P2Buffer_V_i_7_din sc_out sc_lv 8 signal 34 } 
	{ P2Buffer_V_i_7_full_n sc_in sc_logic 1 signal 34 } 
	{ P2Buffer_V_i_7_write sc_out sc_logic 1 signal 34 } 
	{ P2Buffer_V_i_8_din sc_out sc_lv 8 signal 35 } 
	{ P2Buffer_V_i_8_full_n sc_in sc_logic 1 signal 35 } 
	{ P2Buffer_V_i_8_write sc_out sc_logic 1 signal 35 } 
	{ P2Buffer_V_i_9_din sc_out sc_lv 8 signal 36 } 
	{ P2Buffer_V_i_9_full_n sc_in sc_logic 1 signal 36 } 
	{ P2Buffer_V_i_9_write sc_out sc_logic 1 signal 36 } 
	{ P2Buffer_V_i_10_din sc_out sc_lv 8 signal 37 } 
	{ P2Buffer_V_i_10_full_n sc_in sc_logic 1 signal 37 } 
	{ P2Buffer_V_i_10_write sc_out sc_logic 1 signal 37 } 
	{ P2Buffer_V_i_11_din sc_out sc_lv 8 signal 38 } 
	{ P2Buffer_V_i_11_full_n sc_in sc_logic 1 signal 38 } 
	{ P2Buffer_V_i_11_write sc_out sc_logic 1 signal 38 } 
	{ P2Buffer_V_i_12_din sc_out sc_lv 8 signal 39 } 
	{ P2Buffer_V_i_12_full_n sc_in sc_logic 1 signal 39 } 
	{ P2Buffer_V_i_12_write sc_out sc_logic 1 signal 39 } 
	{ P2Buffer_V_i_13_din sc_out sc_lv 8 signal 40 } 
	{ P2Buffer_V_i_13_full_n sc_in sc_logic 1 signal 40 } 
	{ P2Buffer_V_i_13_write sc_out sc_logic 1 signal 40 } 
	{ P2Buffer_V_i_14_din sc_out sc_lv 8 signal 41 } 
	{ P2Buffer_V_i_14_full_n sc_in sc_logic 1 signal 41 } 
	{ P2Buffer_V_i_14_write sc_out sc_logic 1 signal 41 } 
	{ P2Buffer_V_i_15_din sc_out sc_lv 8 signal 42 } 
	{ P2Buffer_V_i_15_full_n sc_in sc_logic 1 signal 42 } 
	{ P2Buffer_V_i_15_write sc_out sc_logic 1 signal 42 } 
	{ P2Buffer_V_i_16_din sc_out sc_lv 8 signal 43 } 
	{ P2Buffer_V_i_16_full_n sc_in sc_logic 1 signal 43 } 
	{ P2Buffer_V_i_16_write sc_out sc_logic 1 signal 43 } 
	{ P2Buffer_V_i_17_din sc_out sc_lv 8 signal 44 } 
	{ P2Buffer_V_i_17_full_n sc_in sc_logic 1 signal 44 } 
	{ P2Buffer_V_i_17_write sc_out sc_logic 1 signal 44 } 
	{ P2Buffer_V_i_18_din sc_out sc_lv 8 signal 45 } 
	{ P2Buffer_V_i_18_full_n sc_in sc_logic 1 signal 45 } 
	{ P2Buffer_V_i_18_write sc_out sc_logic 1 signal 45 } 
	{ P2Buffer_V_i_19_din sc_out sc_lv 8 signal 46 } 
	{ P2Buffer_V_i_19_full_n sc_in sc_logic 1 signal 46 } 
	{ P2Buffer_V_i_19_write sc_out sc_logic 1 signal 46 } 
	{ P2Buffer_V_i_20_din sc_out sc_lv 8 signal 47 } 
	{ P2Buffer_V_i_20_full_n sc_in sc_logic 1 signal 47 } 
	{ P2Buffer_V_i_20_write sc_out sc_logic 1 signal 47 } 
	{ P2Buffer_V_i_21_din sc_out sc_lv 8 signal 48 } 
	{ P2Buffer_V_i_21_full_n sc_in sc_logic 1 signal 48 } 
	{ P2Buffer_V_i_21_write sc_out sc_logic 1 signal 48 } 
	{ P2Buffer_V_i_22_din sc_out sc_lv 8 signal 49 } 
	{ P2Buffer_V_i_22_full_n sc_in sc_logic 1 signal 49 } 
	{ P2Buffer_V_i_22_write sc_out sc_logic 1 signal 49 } 
	{ P2Buffer_V_i_23_din sc_out sc_lv 8 signal 50 } 
	{ P2Buffer_V_i_23_full_n sc_in sc_logic 1 signal 50 } 
	{ P2Buffer_V_i_23_write sc_out sc_logic 1 signal 50 } 
	{ P2Buffer_V_i_24_din sc_out sc_lv 8 signal 51 } 
	{ P2Buffer_V_i_24_full_n sc_in sc_logic 1 signal 51 } 
	{ P2Buffer_V_i_24_write sc_out sc_logic 1 signal 51 } 
	{ P2Buffer_V_i_25_din sc_out sc_lv 8 signal 52 } 
	{ P2Buffer_V_i_25_full_n sc_in sc_logic 1 signal 52 } 
	{ P2Buffer_V_i_25_write sc_out sc_logic 1 signal 52 } 
	{ P2Buffer_V_i_26_din sc_out sc_lv 8 signal 53 } 
	{ P2Buffer_V_i_26_full_n sc_in sc_logic 1 signal 53 } 
	{ P2Buffer_V_i_26_write sc_out sc_logic 1 signal 53 } 
	{ P2Buffer_V_i_27_din sc_out sc_lv 8 signal 54 } 
	{ P2Buffer_V_i_27_full_n sc_in sc_logic 1 signal 54 } 
	{ P2Buffer_V_i_27_write sc_out sc_logic 1 signal 54 } 
	{ P2Buffer_V_i_28_din sc_out sc_lv 8 signal 55 } 
	{ P2Buffer_V_i_28_full_n sc_in sc_logic 1 signal 55 } 
	{ P2Buffer_V_i_28_write sc_out sc_logic 1 signal 55 } 
	{ P2Buffer_V_i_29_din sc_out sc_lv 8 signal 56 } 
	{ P2Buffer_V_i_29_full_n sc_in sc_logic 1 signal 56 } 
	{ P2Buffer_V_i_29_write sc_out sc_logic 1 signal 56 } 
	{ P2Buffer_V_i_30_din sc_out sc_lv 8 signal 57 } 
	{ P2Buffer_V_i_30_full_n sc_in sc_logic 1 signal 57 } 
	{ P2Buffer_V_i_30_write sc_out sc_logic 1 signal 57 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "P1Buffer_0_flip_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P1Buffer_0_flip", "role": "address0" }} , 
 	{ "name": "P1Buffer_0_flip_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_flip", "role": "ce0" }} , 
 	{ "name": "P1Buffer_0_flip_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_flip", "role": "we0" }} , 
 	{ "name": "P1Buffer_0_flip_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P1Buffer_0_flip", "role": "d0" }} , 
 	{ "name": "P1Buffer_0_flip_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P1Buffer_0_flip", "role": "q0" }} , 
 	{ "name": "P1Buffer_0_twist_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P1Buffer_0_twist", "role": "address0" }} , 
 	{ "name": "P1Buffer_0_twist_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_twist", "role": "ce0" }} , 
 	{ "name": "P1Buffer_0_twist_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_twist", "role": "we0" }} , 
 	{ "name": "P1Buffer_0_twist_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P1Buffer_0_twist", "role": "d0" }} , 
 	{ "name": "P1Buffer_0_twist_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P1Buffer_0_twist", "role": "q0" }} , 
 	{ "name": "P1Buffer_0_slice_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P1Buffer_0_slice", "role": "address0" }} , 
 	{ "name": "P1Buffer_0_slice_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_slice", "role": "ce0" }} , 
 	{ "name": "P1Buffer_0_slice_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_slice", "role": "we0" }} , 
 	{ "name": "P1Buffer_0_slice_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P1Buffer_0_slice", "role": "d0" }} , 
 	{ "name": "P1Buffer_0_slice_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P1Buffer_0_slice", "role": "q0" }} , 
 	{ "name": "P1Buffer_0_depthPha_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P1Buffer_0_depthPha", "role": "address0" }} , 
 	{ "name": "P1Buffer_0_depthPha_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_depthPha", "role": "ce0" }} , 
 	{ "name": "P1Buffer_0_depthPha_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_depthPha", "role": "we0" }} , 
 	{ "name": "P1Buffer_0_depthPha_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P1Buffer_0_depthPha", "role": "d0" }} , 
 	{ "name": "P1Buffer_0_depthPha_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P1Buffer_0_depthPha", "role": "q0" }} , 
 	{ "name": "P1Buffer_0_n_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "P1Buffer_0_n", "role": "address0" }} , 
 	{ "name": "P1Buffer_0_n_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_n", "role": "ce0" }} , 
 	{ "name": "P1Buffer_0_n_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_n", "role": "we0" }} , 
 	{ "name": "P1Buffer_0_n_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P1Buffer_0_n", "role": "d0" }} , 
 	{ "name": "P1Buffer_0_n_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P1Buffer_0_n", "role": "q0" }} , 
 	{ "name": "P1Buffer_0_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "P1Buffer_0_i", "role": "address0" }} , 
 	{ "name": "P1Buffer_0_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_i", "role": "ce0" }} , 
 	{ "name": "P1Buffer_0_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P1Buffer_0_i", "role": "we0" }} , 
 	{ "name": "P1Buffer_0_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P1Buffer_0_i", "role": "d0" }} , 
 	{ "name": "P1Buffer_0_i_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P1Buffer_0_i", "role": "q0" }} , 
 	{ "name": "P1Start_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P1Start_read", "role": "default" }} , 
 	{ "name": "P1End_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P1End_read", "role": "default" }} , 
 	{ "name": "first_read", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "first_read", "role": "default" }} , 
 	{ "name": "depthPhase1", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "depthPhase1", "role": "default" }} , 
 	{ "name": "m_axi_twistMove2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_twistMove2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_twistMove2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_twistMove2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWID" }} , 
 	{ "name": "m_axi_twistMove2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_twistMove2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_twistMove2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_twistMove2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_twistMove2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_twistMove2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_twistMove2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_twistMove2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_twistMove2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_twistMove2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "WVALID" }} , 
 	{ "name": "m_axi_twistMove2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "WREADY" }} , 
 	{ "name": "m_axi_twistMove2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "twistMove2", "role": "WDATA" }} , 
 	{ "name": "m_axi_twistMove2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "twistMove2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_twistMove2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "WLAST" }} , 
 	{ "name": "m_axi_twistMove2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "WID" }} , 
 	{ "name": "m_axi_twistMove2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "WUSER" }} , 
 	{ "name": "m_axi_twistMove2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_twistMove2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_twistMove2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_twistMove2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARID" }} , 
 	{ "name": "m_axi_twistMove2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_twistMove2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_twistMove2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_twistMove2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_twistMove2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_twistMove2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_twistMove2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_twistMove2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_twistMove2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_twistMove2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "RVALID" }} , 
 	{ "name": "m_axi_twistMove2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "RREADY" }} , 
 	{ "name": "m_axi_twistMove2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "twistMove2", "role": "RDATA" }} , 
 	{ "name": "m_axi_twistMove2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "RLAST" }} , 
 	{ "name": "m_axi_twistMove2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "RID" }} , 
 	{ "name": "m_axi_twistMove2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "RUSER" }} , 
 	{ "name": "m_axi_twistMove2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "twistMove2", "role": "RRESP" }} , 
 	{ "name": "m_axi_twistMove2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "BVALID" }} , 
 	{ "name": "m_axi_twistMove2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "BREADY" }} , 
 	{ "name": "m_axi_twistMove2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "twistMove2", "role": "BRESP" }} , 
 	{ "name": "m_axi_twistMove2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "BID" }} , 
 	{ "name": "m_axi_twistMove2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "twistMove2", "role": "BUSER" }} , 
 	{ "name": "twistMove2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "twistMove2_offset", "role": "default" }} , 
 	{ "name": "m_axi_flipMove2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_flipMove2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_flipMove2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_flipMove2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWID" }} , 
 	{ "name": "m_axi_flipMove2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_flipMove2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_flipMove2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_flipMove2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_flipMove2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_flipMove2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_flipMove2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_flipMove2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_flipMove2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_flipMove2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "WVALID" }} , 
 	{ "name": "m_axi_flipMove2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "WREADY" }} , 
 	{ "name": "m_axi_flipMove2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "flipMove2", "role": "WDATA" }} , 
 	{ "name": "m_axi_flipMove2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "flipMove2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_flipMove2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "WLAST" }} , 
 	{ "name": "m_axi_flipMove2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "WID" }} , 
 	{ "name": "m_axi_flipMove2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "WUSER" }} , 
 	{ "name": "m_axi_flipMove2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_flipMove2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_flipMove2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_flipMove2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARID" }} , 
 	{ "name": "m_axi_flipMove2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_flipMove2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_flipMove2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_flipMove2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_flipMove2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_flipMove2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_flipMove2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_flipMove2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_flipMove2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_flipMove2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "RVALID" }} , 
 	{ "name": "m_axi_flipMove2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "RREADY" }} , 
 	{ "name": "m_axi_flipMove2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "flipMove2", "role": "RDATA" }} , 
 	{ "name": "m_axi_flipMove2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "RLAST" }} , 
 	{ "name": "m_axi_flipMove2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "RID" }} , 
 	{ "name": "m_axi_flipMove2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "RUSER" }} , 
 	{ "name": "m_axi_flipMove2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "flipMove2", "role": "RRESP" }} , 
 	{ "name": "m_axi_flipMove2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "BVALID" }} , 
 	{ "name": "m_axi_flipMove2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "BREADY" }} , 
 	{ "name": "m_axi_flipMove2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "flipMove2", "role": "BRESP" }} , 
 	{ "name": "m_axi_flipMove2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "BID" }} , 
 	{ "name": "m_axi_flipMove2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flipMove2", "role": "BUSER" }} , 
 	{ "name": "flipMove2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "flipMove2_offset", "role": "default" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWID" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "WVALID" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "WREADY" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "WDATA" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "WLAST" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "WID" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "WUSER" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARID" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "RVALID" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "RREADY" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "RDATA" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "RLAST" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "RID" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "RUSER" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "RRESP" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "BVALID" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "BREADY" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "BRESP" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "BID" }} , 
 	{ "name": "m_axi_FRtoBR_Move2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "FRtoBR_Move2", "role": "BUSER" }} , 
 	{ "name": "FRtoBR_Move2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "FRtoBR_Move2_offset", "role": "default" }} , 
 	{ "name": "Slice_Twist_Prun2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "Slice_Twist_Prun2_offset", "role": "default" }} , 
 	{ "name": "Slice_Flip_Prun2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "Slice_Flip_Prun2_offset", "role": "default" }} , 
 	{ "name": "P2Buffer_V_flip_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P2Buffer_V_flip", "role": "din" }} , 
 	{ "name": "P2Buffer_V_flip_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_flip", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_flip_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_flip", "role": "write" }} , 
 	{ "name": "P2Buffer_V_twist_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P2Buffer_V_twist", "role": "din" }} , 
 	{ "name": "P2Buffer_V_twist_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_twist", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_twist_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_twist", "role": "write" }} , 
 	{ "name": "P2Buffer_V_slice_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P2Buffer_V_slice", "role": "din" }} , 
 	{ "name": "P2Buffer_V_slice_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_slice", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_slice_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_slice", "role": "write" }} , 
 	{ "name": "P2Buffer_V_parity_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_parity", "role": "din" }} , 
 	{ "name": "P2Buffer_V_parity_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_parity", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_parity_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_parity", "role": "write" }} , 
 	{ "name": "P2Buffer_V_URFtoDLF_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P2Buffer_V_URFtoDLF", "role": "din" }} , 
 	{ "name": "P2Buffer_V_URFtoDLF_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_URFtoDLF", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_URFtoDLF_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_URFtoDLF", "role": "write" }} , 
 	{ "name": "P2Buffer_V_FRtoBR_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P2Buffer_V_FRtoBR", "role": "din" }} , 
 	{ "name": "P2Buffer_V_FRtoBR_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_FRtoBR", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_FRtoBR_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_FRtoBR", "role": "write" }} , 
 	{ "name": "P2Buffer_V_URtoDF_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P2Buffer_V_URtoDF", "role": "din" }} , 
 	{ "name": "P2Buffer_V_URtoDF_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_URtoDF", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_URtoDF_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_URtoDF", "role": "write" }} , 
 	{ "name": "P2Buffer_V_depthPhas_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_depthPhas", "role": "din" }} , 
 	{ "name": "P2Buffer_V_depthPhas_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_depthPhas", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_depthPhas_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_depthPhas", "role": "write" }} , 
 	{ "name": "P2Buffer_V_n_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_n", "role": "din" }} , 
 	{ "name": "P2Buffer_V_n_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_n", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_n_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_n", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_0", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_0", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_0", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_1", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_1", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_1", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_2", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_2", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_2", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_3", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_3", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_3", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_4", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_4", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_4", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_5_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_5", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_5_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_5", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_5_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_5", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_6", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_6", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_6", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_7_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_7", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_7_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_7", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_7_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_7", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_8_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_8", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_8_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_8", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_8_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_8", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_9_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_9", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_9_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_9", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_9_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_9", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_10_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_10", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_10_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_10", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_10_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_10", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_11_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_11", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_11_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_11", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_11_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_11", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_12_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_12", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_12_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_12", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_12_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_12", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_13_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_13", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_13_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_13", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_13_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_13", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_14_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_14", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_14_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_14", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_14_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_14", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_15_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_15", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_15_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_15", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_15_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_15", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_16_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_16", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_16_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_16", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_16_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_16", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_17_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_17", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_17_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_17", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_17_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_17", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_18_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_18", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_18_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_18", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_18_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_18", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_19_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_19", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_19_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_19", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_19_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_19", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_20_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_20", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_20_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_20", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_20_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_20", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_21_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_21", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_21_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_21", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_21_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_21", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_22_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_22", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_22_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_22", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_22_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_22", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_23_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_23", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_23_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_23", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_23_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_23", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_24_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_24", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_24_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_24", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_24_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_24", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_25_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_25", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_25_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_25", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_25_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_25", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_26_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_26", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_26_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_26", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_26_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_26", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_27_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_27", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_27_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_27", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_27_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_27", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_28_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_28", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_28_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_28", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_28_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_28", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_29_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_29", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_29_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_29", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_29_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_29", "role": "write" }} , 
 	{ "name": "P2Buffer_V_i_30_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_30", "role": "din" }} , 
 	{ "name": "P2Buffer_V_i_30_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_30", "role": "full_n" }} , 
 	{ "name": "P2Buffer_V_i_30_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_30", "role": "write" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
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
					{"ID" : "8", "SubInstance" : "grp_getPruning_fu_1612", "Port" : "table_r"}]},
			{"Name" : "twistMove2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "flipMove2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "flipMove2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "flipMove2_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_getPruning_1_fu_1604", "Port" : "table_r"}]},
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.twistMove3_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flipMove3_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FRtoBR_Move3_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.label_0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.label_1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.search_new_0_i_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_getPruning_1_fu_1604", "Parent" : "0",
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
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_getPruning_fu_1612", "Parent" : "0",
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
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.solution_mac_mulaqcK_U64", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.solution_mul_mul_rcU_U65", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.solution_mac_mulasc4_U66", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.solution_mac_mulasc4_U67", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		index {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "68", "Max" : "1859"}
	, {"Name" : "Interval", "Min" : "68", "Max" : "1859"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	P1Buffer_0_flip { ap_memory {  { P1Buffer_0_flip_address0 mem_address 1 13 }  { P1Buffer_0_flip_ce0 mem_ce 1 1 }  { P1Buffer_0_flip_we0 mem_we 1 1 }  { P1Buffer_0_flip_d0 mem_din 1 16 }  { P1Buffer_0_flip_q0 mem_dout 0 16 } } }
	P1Buffer_0_twist { ap_memory {  { P1Buffer_0_twist_address0 mem_address 1 13 }  { P1Buffer_0_twist_ce0 mem_ce 1 1 }  { P1Buffer_0_twist_we0 mem_we 1 1 }  { P1Buffer_0_twist_d0 mem_din 1 16 }  { P1Buffer_0_twist_q0 mem_dout 0 16 } } }
	P1Buffer_0_slice { ap_memory {  { P1Buffer_0_slice_address0 mem_address 1 13 }  { P1Buffer_0_slice_ce0 mem_ce 1 1 }  { P1Buffer_0_slice_we0 mem_we 1 1 }  { P1Buffer_0_slice_d0 mem_din 1 16 }  { P1Buffer_0_slice_q0 mem_dout 0 16 } } }
	P1Buffer_0_depthPha { ap_memory {  { P1Buffer_0_depthPha_address0 mem_address 1 13 }  { P1Buffer_0_depthPha_ce0 mem_ce 1 1 }  { P1Buffer_0_depthPha_we0 mem_we 1 1 }  { P1Buffer_0_depthPha_d0 mem_din 1 8 }  { P1Buffer_0_depthPha_q0 mem_dout 0 8 } } }
	P1Buffer_0_n { ap_memory {  { P1Buffer_0_n_address0 mem_address 1 13 }  { P1Buffer_0_n_ce0 mem_ce 1 1 }  { P1Buffer_0_n_we0 mem_we 1 1 }  { P1Buffer_0_n_d0 mem_din 1 8 }  { P1Buffer_0_n_q0 mem_dout 0 8 } } }
	P1Buffer_0_i { ap_memory {  { P1Buffer_0_i_address0 mem_address 1 18 }  { P1Buffer_0_i_ce0 mem_ce 1 1 }  { P1Buffer_0_i_we0 mem_we 1 1 }  { P1Buffer_0_i_d0 mem_din 1 8 }  { P1Buffer_0_i_q0 mem_dout 0 8 } } }
	P1Start_read { ap_none {  { P1Start_read in_data 0 32 } } }
	P1End_read { ap_none {  { P1End_read in_data 0 32 } } }
	first_read { ap_none {  { first_read in_data 0 1 } } }
	depthPhase1 { ap_none {  { depthPhase1 in_data 0 5 } } }
	twistMove2 { m_axi {  { m_axi_twistMove2_AWVALID VALID 1 1 }  { m_axi_twistMove2_AWREADY READY 0 1 }  { m_axi_twistMove2_AWADDR ADDR 1 32 }  { m_axi_twistMove2_AWID ID 1 1 }  { m_axi_twistMove2_AWLEN LEN 1 32 }  { m_axi_twistMove2_AWSIZE SIZE 1 3 }  { m_axi_twistMove2_AWBURST BURST 1 2 }  { m_axi_twistMove2_AWLOCK LOCK 1 2 }  { m_axi_twistMove2_AWCACHE CACHE 1 4 }  { m_axi_twistMove2_AWPROT PROT 1 3 }  { m_axi_twistMove2_AWQOS QOS 1 4 }  { m_axi_twistMove2_AWREGION REGION 1 4 }  { m_axi_twistMove2_AWUSER USER 1 1 }  { m_axi_twistMove2_WVALID VALID 1 1 }  { m_axi_twistMove2_WREADY READY 0 1 }  { m_axi_twistMove2_WDATA DATA 1 16 }  { m_axi_twistMove2_WSTRB STRB 1 2 }  { m_axi_twistMove2_WLAST LAST 1 1 }  { m_axi_twistMove2_WID ID 1 1 }  { m_axi_twistMove2_WUSER USER 1 1 }  { m_axi_twistMove2_ARVALID VALID 1 1 }  { m_axi_twistMove2_ARREADY READY 0 1 }  { m_axi_twistMove2_ARADDR ADDR 1 32 }  { m_axi_twistMove2_ARID ID 1 1 }  { m_axi_twistMove2_ARLEN LEN 1 32 }  { m_axi_twistMove2_ARSIZE SIZE 1 3 }  { m_axi_twistMove2_ARBURST BURST 1 2 }  { m_axi_twistMove2_ARLOCK LOCK 1 2 }  { m_axi_twistMove2_ARCACHE CACHE 1 4 }  { m_axi_twistMove2_ARPROT PROT 1 3 }  { m_axi_twistMove2_ARQOS QOS 1 4 }  { m_axi_twistMove2_ARREGION REGION 1 4 }  { m_axi_twistMove2_ARUSER USER 1 1 }  { m_axi_twistMove2_RVALID VALID 0 1 }  { m_axi_twistMove2_RREADY READY 1 1 }  { m_axi_twistMove2_RDATA DATA 0 16 }  { m_axi_twistMove2_RLAST LAST 0 1 }  { m_axi_twistMove2_RID ID 0 1 }  { m_axi_twistMove2_RUSER USER 0 1 }  { m_axi_twistMove2_RRESP RESP 0 2 }  { m_axi_twistMove2_BVALID VALID 0 1 }  { m_axi_twistMove2_BREADY READY 1 1 }  { m_axi_twistMove2_BRESP RESP 0 2 }  { m_axi_twistMove2_BID ID 0 1 }  { m_axi_twistMove2_BUSER USER 0 1 } } }
	twistMove2_offset { ap_none {  { twistMove2_offset in_data 0 31 } } }
	flipMove2 { m_axi {  { m_axi_flipMove2_AWVALID VALID 1 1 }  { m_axi_flipMove2_AWREADY READY 0 1 }  { m_axi_flipMove2_AWADDR ADDR 1 32 }  { m_axi_flipMove2_AWID ID 1 1 }  { m_axi_flipMove2_AWLEN LEN 1 32 }  { m_axi_flipMove2_AWSIZE SIZE 1 3 }  { m_axi_flipMove2_AWBURST BURST 1 2 }  { m_axi_flipMove2_AWLOCK LOCK 1 2 }  { m_axi_flipMove2_AWCACHE CACHE 1 4 }  { m_axi_flipMove2_AWPROT PROT 1 3 }  { m_axi_flipMove2_AWQOS QOS 1 4 }  { m_axi_flipMove2_AWREGION REGION 1 4 }  { m_axi_flipMove2_AWUSER USER 1 1 }  { m_axi_flipMove2_WVALID VALID 1 1 }  { m_axi_flipMove2_WREADY READY 0 1 }  { m_axi_flipMove2_WDATA DATA 1 16 }  { m_axi_flipMove2_WSTRB STRB 1 2 }  { m_axi_flipMove2_WLAST LAST 1 1 }  { m_axi_flipMove2_WID ID 1 1 }  { m_axi_flipMove2_WUSER USER 1 1 }  { m_axi_flipMove2_ARVALID VALID 1 1 }  { m_axi_flipMove2_ARREADY READY 0 1 }  { m_axi_flipMove2_ARADDR ADDR 1 32 }  { m_axi_flipMove2_ARID ID 1 1 }  { m_axi_flipMove2_ARLEN LEN 1 32 }  { m_axi_flipMove2_ARSIZE SIZE 1 3 }  { m_axi_flipMove2_ARBURST BURST 1 2 }  { m_axi_flipMove2_ARLOCK LOCK 1 2 }  { m_axi_flipMove2_ARCACHE CACHE 1 4 }  { m_axi_flipMove2_ARPROT PROT 1 3 }  { m_axi_flipMove2_ARQOS QOS 1 4 }  { m_axi_flipMove2_ARREGION REGION 1 4 }  { m_axi_flipMove2_ARUSER USER 1 1 }  { m_axi_flipMove2_RVALID VALID 0 1 }  { m_axi_flipMove2_RREADY READY 1 1 }  { m_axi_flipMove2_RDATA DATA 0 16 }  { m_axi_flipMove2_RLAST LAST 0 1 }  { m_axi_flipMove2_RID ID 0 1 }  { m_axi_flipMove2_RUSER USER 0 1 }  { m_axi_flipMove2_RRESP RESP 0 2 }  { m_axi_flipMove2_BVALID VALID 0 1 }  { m_axi_flipMove2_BREADY READY 1 1 }  { m_axi_flipMove2_BRESP RESP 0 2 }  { m_axi_flipMove2_BID ID 0 1 }  { m_axi_flipMove2_BUSER USER 0 1 } } }
	flipMove2_offset { ap_none {  { flipMove2_offset in_data 0 31 } } }
	FRtoBR_Move2 { m_axi {  { m_axi_FRtoBR_Move2_AWVALID VALID 1 1 }  { m_axi_FRtoBR_Move2_AWREADY READY 0 1 }  { m_axi_FRtoBR_Move2_AWADDR ADDR 1 32 }  { m_axi_FRtoBR_Move2_AWID ID 1 1 }  { m_axi_FRtoBR_Move2_AWLEN LEN 1 32 }  { m_axi_FRtoBR_Move2_AWSIZE SIZE 1 3 }  { m_axi_FRtoBR_Move2_AWBURST BURST 1 2 }  { m_axi_FRtoBR_Move2_AWLOCK LOCK 1 2 }  { m_axi_FRtoBR_Move2_AWCACHE CACHE 1 4 }  { m_axi_FRtoBR_Move2_AWPROT PROT 1 3 }  { m_axi_FRtoBR_Move2_AWQOS QOS 1 4 }  { m_axi_FRtoBR_Move2_AWREGION REGION 1 4 }  { m_axi_FRtoBR_Move2_AWUSER USER 1 1 }  { m_axi_FRtoBR_Move2_WVALID VALID 1 1 }  { m_axi_FRtoBR_Move2_WREADY READY 0 1 }  { m_axi_FRtoBR_Move2_WDATA DATA 1 16 }  { m_axi_FRtoBR_Move2_WSTRB STRB 1 2 }  { m_axi_FRtoBR_Move2_WLAST LAST 1 1 }  { m_axi_FRtoBR_Move2_WID ID 1 1 }  { m_axi_FRtoBR_Move2_WUSER USER 1 1 }  { m_axi_FRtoBR_Move2_ARVALID VALID 1 1 }  { m_axi_FRtoBR_Move2_ARREADY READY 0 1 }  { m_axi_FRtoBR_Move2_ARADDR ADDR 1 32 }  { m_axi_FRtoBR_Move2_ARID ID 1 1 }  { m_axi_FRtoBR_Move2_ARLEN LEN 1 32 }  { m_axi_FRtoBR_Move2_ARSIZE SIZE 1 3 }  { m_axi_FRtoBR_Move2_ARBURST BURST 1 2 }  { m_axi_FRtoBR_Move2_ARLOCK LOCK 1 2 }  { m_axi_FRtoBR_Move2_ARCACHE CACHE 1 4 }  { m_axi_FRtoBR_Move2_ARPROT PROT 1 3 }  { m_axi_FRtoBR_Move2_ARQOS QOS 1 4 }  { m_axi_FRtoBR_Move2_ARREGION REGION 1 4 }  { m_axi_FRtoBR_Move2_ARUSER USER 1 1 }  { m_axi_FRtoBR_Move2_RVALID VALID 0 1 }  { m_axi_FRtoBR_Move2_RREADY READY 1 1 }  { m_axi_FRtoBR_Move2_RDATA DATA 0 16 }  { m_axi_FRtoBR_Move2_RLAST LAST 0 1 }  { m_axi_FRtoBR_Move2_RID ID 0 1 }  { m_axi_FRtoBR_Move2_RUSER USER 0 1 }  { m_axi_FRtoBR_Move2_RRESP RESP 0 2 }  { m_axi_FRtoBR_Move2_BVALID VALID 0 1 }  { m_axi_FRtoBR_Move2_BREADY READY 1 1 }  { m_axi_FRtoBR_Move2_BRESP RESP 0 2 }  { m_axi_FRtoBR_Move2_BID ID 0 1 }  { m_axi_FRtoBR_Move2_BUSER USER 0 1 } } }
	FRtoBR_Move2_offset { ap_none {  { FRtoBR_Move2_offset in_data 0 31 } } }
	Slice_Twist_Prun2_offset { ap_none {  { Slice_Twist_Prun2_offset in_data 0 31 } } }
	Slice_Flip_Prun2_offset { ap_none {  { Slice_Flip_Prun2_offset in_data 0 31 } } }
	P2Buffer_V_flip { ap_fifo {  { P2Buffer_V_flip_din fifo_data 1 16 }  { P2Buffer_V_flip_full_n fifo_status 0 1 }  { P2Buffer_V_flip_write fifo_update 1 1 } } }
	P2Buffer_V_twist { ap_fifo {  { P2Buffer_V_twist_din fifo_data 1 16 }  { P2Buffer_V_twist_full_n fifo_status 0 1 }  { P2Buffer_V_twist_write fifo_update 1 1 } } }
	P2Buffer_V_slice { ap_fifo {  { P2Buffer_V_slice_din fifo_data 1 16 }  { P2Buffer_V_slice_full_n fifo_status 0 1 }  { P2Buffer_V_slice_write fifo_update 1 1 } } }
	P2Buffer_V_parity { ap_fifo {  { P2Buffer_V_parity_din fifo_data 1 1 }  { P2Buffer_V_parity_full_n fifo_status 0 1 }  { P2Buffer_V_parity_write fifo_update 1 1 } } }
	P2Buffer_V_URFtoDLF { ap_fifo {  { P2Buffer_V_URFtoDLF_din fifo_data 1 16 }  { P2Buffer_V_URFtoDLF_full_n fifo_status 0 1 }  { P2Buffer_V_URFtoDLF_write fifo_update 1 1 } } }
	P2Buffer_V_FRtoBR { ap_fifo {  { P2Buffer_V_FRtoBR_din fifo_data 1 16 }  { P2Buffer_V_FRtoBR_full_n fifo_status 0 1 }  { P2Buffer_V_FRtoBR_write fifo_update 1 1 } } }
	P2Buffer_V_URtoDF { ap_fifo {  { P2Buffer_V_URtoDF_din fifo_data 1 16 }  { P2Buffer_V_URtoDF_full_n fifo_status 0 1 }  { P2Buffer_V_URtoDF_write fifo_update 1 1 } } }
	P2Buffer_V_depthPhas { ap_fifo {  { P2Buffer_V_depthPhas_din fifo_data 1 8 }  { P2Buffer_V_depthPhas_full_n fifo_status 0 1 }  { P2Buffer_V_depthPhas_write fifo_update 1 1 } } }
	P2Buffer_V_n { ap_fifo {  { P2Buffer_V_n_din fifo_data 1 8 }  { P2Buffer_V_n_full_n fifo_status 0 1 }  { P2Buffer_V_n_write fifo_update 1 1 } } }
	P2Buffer_V_i_0 { ap_fifo {  { P2Buffer_V_i_0_din fifo_data 1 8 }  { P2Buffer_V_i_0_full_n fifo_status 0 1 }  { P2Buffer_V_i_0_write fifo_update 1 1 } } }
	P2Buffer_V_i_1 { ap_fifo {  { P2Buffer_V_i_1_din fifo_data 1 8 }  { P2Buffer_V_i_1_full_n fifo_status 0 1 }  { P2Buffer_V_i_1_write fifo_update 1 1 } } }
	P2Buffer_V_i_2 { ap_fifo {  { P2Buffer_V_i_2_din fifo_data 1 8 }  { P2Buffer_V_i_2_full_n fifo_status 0 1 }  { P2Buffer_V_i_2_write fifo_update 1 1 } } }
	P2Buffer_V_i_3 { ap_fifo {  { P2Buffer_V_i_3_din fifo_data 1 8 }  { P2Buffer_V_i_3_full_n fifo_status 0 1 }  { P2Buffer_V_i_3_write fifo_update 1 1 } } }
	P2Buffer_V_i_4 { ap_fifo {  { P2Buffer_V_i_4_din fifo_data 1 8 }  { P2Buffer_V_i_4_full_n fifo_status 0 1 }  { P2Buffer_V_i_4_write fifo_update 1 1 } } }
	P2Buffer_V_i_5 { ap_fifo {  { P2Buffer_V_i_5_din fifo_data 1 8 }  { P2Buffer_V_i_5_full_n fifo_status 0 1 }  { P2Buffer_V_i_5_write fifo_update 1 1 } } }
	P2Buffer_V_i_6 { ap_fifo {  { P2Buffer_V_i_6_din fifo_data 1 8 }  { P2Buffer_V_i_6_full_n fifo_status 0 1 }  { P2Buffer_V_i_6_write fifo_update 1 1 } } }
	P2Buffer_V_i_7 { ap_fifo {  { P2Buffer_V_i_7_din fifo_data 1 8 }  { P2Buffer_V_i_7_full_n fifo_status 0 1 }  { P2Buffer_V_i_7_write fifo_update 1 1 } } }
	P2Buffer_V_i_8 { ap_fifo {  { P2Buffer_V_i_8_din fifo_data 1 8 }  { P2Buffer_V_i_8_full_n fifo_status 0 1 }  { P2Buffer_V_i_8_write fifo_update 1 1 } } }
	P2Buffer_V_i_9 { ap_fifo {  { P2Buffer_V_i_9_din fifo_data 1 8 }  { P2Buffer_V_i_9_full_n fifo_status 0 1 }  { P2Buffer_V_i_9_write fifo_update 1 1 } } }
	P2Buffer_V_i_10 { ap_fifo {  { P2Buffer_V_i_10_din fifo_data 1 8 }  { P2Buffer_V_i_10_full_n fifo_status 0 1 }  { P2Buffer_V_i_10_write fifo_update 1 1 } } }
	P2Buffer_V_i_11 { ap_fifo {  { P2Buffer_V_i_11_din fifo_data 1 8 }  { P2Buffer_V_i_11_full_n fifo_status 0 1 }  { P2Buffer_V_i_11_write fifo_update 1 1 } } }
	P2Buffer_V_i_12 { ap_fifo {  { P2Buffer_V_i_12_din fifo_data 1 8 }  { P2Buffer_V_i_12_full_n fifo_status 0 1 }  { P2Buffer_V_i_12_write fifo_update 1 1 } } }
	P2Buffer_V_i_13 { ap_fifo {  { P2Buffer_V_i_13_din fifo_data 1 8 }  { P2Buffer_V_i_13_full_n fifo_status 0 1 }  { P2Buffer_V_i_13_write fifo_update 1 1 } } }
	P2Buffer_V_i_14 { ap_fifo {  { P2Buffer_V_i_14_din fifo_data 1 8 }  { P2Buffer_V_i_14_full_n fifo_status 0 1 }  { P2Buffer_V_i_14_write fifo_update 1 1 } } }
	P2Buffer_V_i_15 { ap_fifo {  { P2Buffer_V_i_15_din fifo_data 1 8 }  { P2Buffer_V_i_15_full_n fifo_status 0 1 }  { P2Buffer_V_i_15_write fifo_update 1 1 } } }
	P2Buffer_V_i_16 { ap_fifo {  { P2Buffer_V_i_16_din fifo_data 1 8 }  { P2Buffer_V_i_16_full_n fifo_status 0 1 }  { P2Buffer_V_i_16_write fifo_update 1 1 } } }
	P2Buffer_V_i_17 { ap_fifo {  { P2Buffer_V_i_17_din fifo_data 1 8 }  { P2Buffer_V_i_17_full_n fifo_status 0 1 }  { P2Buffer_V_i_17_write fifo_update 1 1 } } }
	P2Buffer_V_i_18 { ap_fifo {  { P2Buffer_V_i_18_din fifo_data 1 8 }  { P2Buffer_V_i_18_full_n fifo_status 0 1 }  { P2Buffer_V_i_18_write fifo_update 1 1 } } }
	P2Buffer_V_i_19 { ap_fifo {  { P2Buffer_V_i_19_din fifo_data 1 8 }  { P2Buffer_V_i_19_full_n fifo_status 0 1 }  { P2Buffer_V_i_19_write fifo_update 1 1 } } }
	P2Buffer_V_i_20 { ap_fifo {  { P2Buffer_V_i_20_din fifo_data 1 8 }  { P2Buffer_V_i_20_full_n fifo_status 0 1 }  { P2Buffer_V_i_20_write fifo_update 1 1 } } }
	P2Buffer_V_i_21 { ap_fifo {  { P2Buffer_V_i_21_din fifo_data 1 8 }  { P2Buffer_V_i_21_full_n fifo_status 0 1 }  { P2Buffer_V_i_21_write fifo_update 1 1 } } }
	P2Buffer_V_i_22 { ap_fifo {  { P2Buffer_V_i_22_din fifo_data 1 8 }  { P2Buffer_V_i_22_full_n fifo_status 0 1 }  { P2Buffer_V_i_22_write fifo_update 1 1 } } }
	P2Buffer_V_i_23 { ap_fifo {  { P2Buffer_V_i_23_din fifo_data 1 8 }  { P2Buffer_V_i_23_full_n fifo_status 0 1 }  { P2Buffer_V_i_23_write fifo_update 1 1 } } }
	P2Buffer_V_i_24 { ap_fifo {  { P2Buffer_V_i_24_din fifo_data 1 8 }  { P2Buffer_V_i_24_full_n fifo_status 0 1 }  { P2Buffer_V_i_24_write fifo_update 1 1 } } }
	P2Buffer_V_i_25 { ap_fifo {  { P2Buffer_V_i_25_din fifo_data 1 8 }  { P2Buffer_V_i_25_full_n fifo_status 0 1 }  { P2Buffer_V_i_25_write fifo_update 1 1 } } }
	P2Buffer_V_i_26 { ap_fifo {  { P2Buffer_V_i_26_din fifo_data 1 8 }  { P2Buffer_V_i_26_full_n fifo_status 0 1 }  { P2Buffer_V_i_26_write fifo_update 1 1 } } }
	P2Buffer_V_i_27 { ap_fifo {  { P2Buffer_V_i_27_din fifo_data 1 8 }  { P2Buffer_V_i_27_full_n fifo_status 0 1 }  { P2Buffer_V_i_27_write fifo_update 1 1 } } }
	P2Buffer_V_i_28 { ap_fifo {  { P2Buffer_V_i_28_din fifo_data 1 8 }  { P2Buffer_V_i_28_full_n fifo_status 0 1 }  { P2Buffer_V_i_28_write fifo_update 1 1 } } }
	P2Buffer_V_i_29 { ap_fifo {  { P2Buffer_V_i_29_din fifo_data 1 8 }  { P2Buffer_V_i_29_full_n fifo_status 0 1 }  { P2Buffer_V_i_29_write fifo_update 1 1 } } }
	P2Buffer_V_i_30 { ap_fifo {  { P2Buffer_V_i_30_din fifo_data 1 8 }  { P2Buffer_V_i_30_full_n fifo_status 0 1 }  { P2Buffer_V_i_30_write fifo_update 1 1 } } }
}
