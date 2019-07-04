set moduleName blockP2
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
set C_modelName {blockP2}
set C_modelType { void 0 }
set C_modelArgList {
	{ URFtoDLF int 16 regular  }
	{ FRtoBR int 16 regular  }
	{ parity int 1 regular  }
	{ URtoUL int 16 regular  }
	{ UBtoDF int 16 regular  }
	{ P3Buffer_0_parity int 1 regular {array 1000 { 2 3 } 1 1 }  }
	{ P3Buffer_0_URFtoDLF int 16 regular {array 1000 { 2 3 } 1 1 }  }
	{ P3Buffer_0_FRtoBR int 16 regular {array 1000 { 2 3 } 1 1 }  }
	{ P3Buffer_0_URtoDF int 16 regular {array 1000 { 2 3 } 1 1 }  }
	{ P3Buffer_0_n int 8 regular {array 1000 { 2 3 } 1 1 }  }
	{ P3Buffer_0_i int 8 regular {array 31000 { 2 2 } 1 1 }  }
	{ maxDepth int 8 regular  }
	{ encode_length int 8 regular {pointer 1}  }
	{ encode_array int 8 regular {array 30 { 0 } 0 1 }  }
	{ FRtoBR_Move2 int 16 regular {axi_master 0}  }
	{ FRtoBR_Move2_offset int 31 regular  }
	{ URFtoDLF_Move2 int 16 regular {axi_master 0}  }
	{ URFtoDLF_Move2_offset int 31 regular  }
	{ URtoDF_Move2 int 16 regular {axi_master 0}  }
	{ URtoDF_Move2_offset int 31 regular  }
	{ URtoUL_Move2_offset int 31 regular  }
	{ UBtoDF_Move2_offset int 31 regular  }
	{ MergeURtoULandUBtoDF2_offset int 31 regular  }
	{ Slice_URFtoDLF_Parity_Prun2_offset int 31 regular  }
	{ Slice_URtoDF_Parity_Prun2_offset int 31 regular  }
	{ P2Buffer_V_flip int 16 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_twist int 16 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_slice int 16 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_parity int 1 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_URFtoDLF int 16 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_FRtoBR int 16 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_URtoDF int 16 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_depthPhas int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_n int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_0 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_1 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_2 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_3 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_4 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_5 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_6 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_7 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_8 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_9 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_10 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_11 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_12 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_13 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_14 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_15 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_16 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_17 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_18 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_19 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_20 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_21 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_22 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_23 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_24 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_25 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_26 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_27 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_28 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_29 int 8 regular {fifo 0 volatile } {global 0}  }
	{ P2Buffer_V_i_30 int 8 regular {fifo 0 volatile } {global 0}  }
	{ a int 32 regular {pointer 1} {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "URFtoDLF", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FRtoBR", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "parity", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "URtoUL", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "UBtoDF", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "P3Buffer_0_parity", "interface" : "memory", "bitwidth" : 1, "direction" : "READWRITE"} , 
 	{ "Name" : "P3Buffer_0_URFtoDLF", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "P3Buffer_0_FRtoBR", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "P3Buffer_0_URtoDF", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "P3Buffer_0_n", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "P3Buffer_0_i", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "maxDepth", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "encode_length", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "encode_array", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "FRtoBR_Move2", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FRtoBR_Move2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "URFtoDLF_Move2", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "URFtoDLF_Move2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "URtoDF_Move2", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "URtoDF_Move2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "URtoUL_Move2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "UBtoDF_Move2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "MergeURtoULandUBtoDF2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "Slice_URFtoDLF_Parity_Prun2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "Slice_URtoDF_Parity_Prun2_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "P2Buffer_V_flip", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "P2Buffer.V.flip","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_twist", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "P2Buffer.V.twist","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_slice", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "P2Buffer.V.slice","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_parity", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "P2Buffer.V.parity","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_URFtoDLF", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "P2Buffer.V.URFtoDLF","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_FRtoBR", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "P2Buffer.V.FRtoBR","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_URtoDF", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "P2Buffer.V.URtoDF","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_depthPhas", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.depthPhase1","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_n", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.n","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_0", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_2", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_3", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_4", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_5", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_6", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_7", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_8", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 8,"up" : 8,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_9", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 9,"up" : 9,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_10", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 10,"up" : 10,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_11", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 11,"up" : 11,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_12", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 12,"up" : 12,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_13", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 13,"up" : 13,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_14", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 14,"up" : 14,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_15", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 15,"up" : 15,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_16", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 16,"up" : 16,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_17", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 17,"up" : 17,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_18", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 18,"up" : 18,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_19", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 19,"up" : 19,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_20", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 20,"up" : 20,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_21", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 21,"up" : 21,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_22", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 22,"up" : 22,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_23", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 23,"up" : 23,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_24", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 24,"up" : 24,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_25", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 25,"up" : 25,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_26", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 26,"up" : 26,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_27", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 27,"up" : 27,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_28", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 28,"up" : 28,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_29", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 29,"up" : 29,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P2Buffer_V_i_30", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "P2Buffer.V.i","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 30,"up" : 30,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "a", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 318
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ URFtoDLF sc_in sc_lv 16 signal 0 } 
	{ FRtoBR sc_in sc_lv 16 signal 1 } 
	{ parity sc_in sc_logic 1 signal 2 } 
	{ URtoUL sc_in sc_lv 16 signal 3 } 
	{ UBtoDF sc_in sc_lv 16 signal 4 } 
	{ P3Buffer_0_parity_address0 sc_out sc_lv 10 signal 5 } 
	{ P3Buffer_0_parity_ce0 sc_out sc_logic 1 signal 5 } 
	{ P3Buffer_0_parity_we0 sc_out sc_logic 1 signal 5 } 
	{ P3Buffer_0_parity_d0 sc_out sc_lv 1 signal 5 } 
	{ P3Buffer_0_parity_q0 sc_in sc_lv 1 signal 5 } 
	{ P3Buffer_0_URFtoDLF_address0 sc_out sc_lv 10 signal 6 } 
	{ P3Buffer_0_URFtoDLF_ce0 sc_out sc_logic 1 signal 6 } 
	{ P3Buffer_0_URFtoDLF_we0 sc_out sc_logic 1 signal 6 } 
	{ P3Buffer_0_URFtoDLF_d0 sc_out sc_lv 16 signal 6 } 
	{ P3Buffer_0_URFtoDLF_q0 sc_in sc_lv 16 signal 6 } 
	{ P3Buffer_0_FRtoBR_address0 sc_out sc_lv 10 signal 7 } 
	{ P3Buffer_0_FRtoBR_ce0 sc_out sc_logic 1 signal 7 } 
	{ P3Buffer_0_FRtoBR_we0 sc_out sc_logic 1 signal 7 } 
	{ P3Buffer_0_FRtoBR_d0 sc_out sc_lv 16 signal 7 } 
	{ P3Buffer_0_FRtoBR_q0 sc_in sc_lv 16 signal 7 } 
	{ P3Buffer_0_URtoDF_address0 sc_out sc_lv 10 signal 8 } 
	{ P3Buffer_0_URtoDF_ce0 sc_out sc_logic 1 signal 8 } 
	{ P3Buffer_0_URtoDF_we0 sc_out sc_logic 1 signal 8 } 
	{ P3Buffer_0_URtoDF_d0 sc_out sc_lv 16 signal 8 } 
	{ P3Buffer_0_URtoDF_q0 sc_in sc_lv 16 signal 8 } 
	{ P3Buffer_0_n_address0 sc_out sc_lv 10 signal 9 } 
	{ P3Buffer_0_n_ce0 sc_out sc_logic 1 signal 9 } 
	{ P3Buffer_0_n_we0 sc_out sc_logic 1 signal 9 } 
	{ P3Buffer_0_n_d0 sc_out sc_lv 8 signal 9 } 
	{ P3Buffer_0_n_q0 sc_in sc_lv 8 signal 9 } 
	{ P3Buffer_0_i_address0 sc_out sc_lv 15 signal 10 } 
	{ P3Buffer_0_i_ce0 sc_out sc_logic 1 signal 10 } 
	{ P3Buffer_0_i_we0 sc_out sc_logic 1 signal 10 } 
	{ P3Buffer_0_i_d0 sc_out sc_lv 8 signal 10 } 
	{ P3Buffer_0_i_q0 sc_in sc_lv 8 signal 10 } 
	{ P3Buffer_0_i_address1 sc_out sc_lv 15 signal 10 } 
	{ P3Buffer_0_i_ce1 sc_out sc_logic 1 signal 10 } 
	{ P3Buffer_0_i_we1 sc_out sc_logic 1 signal 10 } 
	{ P3Buffer_0_i_d1 sc_out sc_lv 8 signal 10 } 
	{ P3Buffer_0_i_q1 sc_in sc_lv 8 signal 10 } 
	{ maxDepth sc_in sc_lv 8 signal 11 } 
	{ encode_length sc_out sc_lv 8 signal 12 } 
	{ encode_length_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ encode_array_address0 sc_out sc_lv 5 signal 13 } 
	{ encode_array_ce0 sc_out sc_logic 1 signal 13 } 
	{ encode_array_we0 sc_out sc_logic 1 signal 13 } 
	{ encode_array_d0 sc_out sc_lv 8 signal 13 } 
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
	{ m_axi_URFtoDLF_Move2_AWVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_URFtoDLF_Move2_AWREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_URFtoDLF_Move2_AWADDR sc_out sc_lv 32 signal 16 } 
	{ m_axi_URFtoDLF_Move2_AWID sc_out sc_lv 1 signal 16 } 
	{ m_axi_URFtoDLF_Move2_AWLEN sc_out sc_lv 32 signal 16 } 
	{ m_axi_URFtoDLF_Move2_AWSIZE sc_out sc_lv 3 signal 16 } 
	{ m_axi_URFtoDLF_Move2_AWBURST sc_out sc_lv 2 signal 16 } 
	{ m_axi_URFtoDLF_Move2_AWLOCK sc_out sc_lv 2 signal 16 } 
	{ m_axi_URFtoDLF_Move2_AWCACHE sc_out sc_lv 4 signal 16 } 
	{ m_axi_URFtoDLF_Move2_AWPROT sc_out sc_lv 3 signal 16 } 
	{ m_axi_URFtoDLF_Move2_AWQOS sc_out sc_lv 4 signal 16 } 
	{ m_axi_URFtoDLF_Move2_AWREGION sc_out sc_lv 4 signal 16 } 
	{ m_axi_URFtoDLF_Move2_AWUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_URFtoDLF_Move2_WVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_URFtoDLF_Move2_WREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_URFtoDLF_Move2_WDATA sc_out sc_lv 16 signal 16 } 
	{ m_axi_URFtoDLF_Move2_WSTRB sc_out sc_lv 2 signal 16 } 
	{ m_axi_URFtoDLF_Move2_WLAST sc_out sc_logic 1 signal 16 } 
	{ m_axi_URFtoDLF_Move2_WID sc_out sc_lv 1 signal 16 } 
	{ m_axi_URFtoDLF_Move2_WUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_URFtoDLF_Move2_ARVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_URFtoDLF_Move2_ARREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_URFtoDLF_Move2_ARADDR sc_out sc_lv 32 signal 16 } 
	{ m_axi_URFtoDLF_Move2_ARID sc_out sc_lv 1 signal 16 } 
	{ m_axi_URFtoDLF_Move2_ARLEN sc_out sc_lv 32 signal 16 } 
	{ m_axi_URFtoDLF_Move2_ARSIZE sc_out sc_lv 3 signal 16 } 
	{ m_axi_URFtoDLF_Move2_ARBURST sc_out sc_lv 2 signal 16 } 
	{ m_axi_URFtoDLF_Move2_ARLOCK sc_out sc_lv 2 signal 16 } 
	{ m_axi_URFtoDLF_Move2_ARCACHE sc_out sc_lv 4 signal 16 } 
	{ m_axi_URFtoDLF_Move2_ARPROT sc_out sc_lv 3 signal 16 } 
	{ m_axi_URFtoDLF_Move2_ARQOS sc_out sc_lv 4 signal 16 } 
	{ m_axi_URFtoDLF_Move2_ARREGION sc_out sc_lv 4 signal 16 } 
	{ m_axi_URFtoDLF_Move2_ARUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_URFtoDLF_Move2_RVALID sc_in sc_logic 1 signal 16 } 
	{ m_axi_URFtoDLF_Move2_RREADY sc_out sc_logic 1 signal 16 } 
	{ m_axi_URFtoDLF_Move2_RDATA sc_in sc_lv 16 signal 16 } 
	{ m_axi_URFtoDLF_Move2_RLAST sc_in sc_logic 1 signal 16 } 
	{ m_axi_URFtoDLF_Move2_RID sc_in sc_lv 1 signal 16 } 
	{ m_axi_URFtoDLF_Move2_RUSER sc_in sc_lv 1 signal 16 } 
	{ m_axi_URFtoDLF_Move2_RRESP sc_in sc_lv 2 signal 16 } 
	{ m_axi_URFtoDLF_Move2_BVALID sc_in sc_logic 1 signal 16 } 
	{ m_axi_URFtoDLF_Move2_BREADY sc_out sc_logic 1 signal 16 } 
	{ m_axi_URFtoDLF_Move2_BRESP sc_in sc_lv 2 signal 16 } 
	{ m_axi_URFtoDLF_Move2_BID sc_in sc_lv 1 signal 16 } 
	{ m_axi_URFtoDLF_Move2_BUSER sc_in sc_lv 1 signal 16 } 
	{ URFtoDLF_Move2_offset sc_in sc_lv 31 signal 17 } 
	{ m_axi_URtoDF_Move2_AWVALID sc_out sc_logic 1 signal 18 } 
	{ m_axi_URtoDF_Move2_AWREADY sc_in sc_logic 1 signal 18 } 
	{ m_axi_URtoDF_Move2_AWADDR sc_out sc_lv 32 signal 18 } 
	{ m_axi_URtoDF_Move2_AWID sc_out sc_lv 1 signal 18 } 
	{ m_axi_URtoDF_Move2_AWLEN sc_out sc_lv 32 signal 18 } 
	{ m_axi_URtoDF_Move2_AWSIZE sc_out sc_lv 3 signal 18 } 
	{ m_axi_URtoDF_Move2_AWBURST sc_out sc_lv 2 signal 18 } 
	{ m_axi_URtoDF_Move2_AWLOCK sc_out sc_lv 2 signal 18 } 
	{ m_axi_URtoDF_Move2_AWCACHE sc_out sc_lv 4 signal 18 } 
	{ m_axi_URtoDF_Move2_AWPROT sc_out sc_lv 3 signal 18 } 
	{ m_axi_URtoDF_Move2_AWQOS sc_out sc_lv 4 signal 18 } 
	{ m_axi_URtoDF_Move2_AWREGION sc_out sc_lv 4 signal 18 } 
	{ m_axi_URtoDF_Move2_AWUSER sc_out sc_lv 1 signal 18 } 
	{ m_axi_URtoDF_Move2_WVALID sc_out sc_logic 1 signal 18 } 
	{ m_axi_URtoDF_Move2_WREADY sc_in sc_logic 1 signal 18 } 
	{ m_axi_URtoDF_Move2_WDATA sc_out sc_lv 16 signal 18 } 
	{ m_axi_URtoDF_Move2_WSTRB sc_out sc_lv 2 signal 18 } 
	{ m_axi_URtoDF_Move2_WLAST sc_out sc_logic 1 signal 18 } 
	{ m_axi_URtoDF_Move2_WID sc_out sc_lv 1 signal 18 } 
	{ m_axi_URtoDF_Move2_WUSER sc_out sc_lv 1 signal 18 } 
	{ m_axi_URtoDF_Move2_ARVALID sc_out sc_logic 1 signal 18 } 
	{ m_axi_URtoDF_Move2_ARREADY sc_in sc_logic 1 signal 18 } 
	{ m_axi_URtoDF_Move2_ARADDR sc_out sc_lv 32 signal 18 } 
	{ m_axi_URtoDF_Move2_ARID sc_out sc_lv 1 signal 18 } 
	{ m_axi_URtoDF_Move2_ARLEN sc_out sc_lv 32 signal 18 } 
	{ m_axi_URtoDF_Move2_ARSIZE sc_out sc_lv 3 signal 18 } 
	{ m_axi_URtoDF_Move2_ARBURST sc_out sc_lv 2 signal 18 } 
	{ m_axi_URtoDF_Move2_ARLOCK sc_out sc_lv 2 signal 18 } 
	{ m_axi_URtoDF_Move2_ARCACHE sc_out sc_lv 4 signal 18 } 
	{ m_axi_URtoDF_Move2_ARPROT sc_out sc_lv 3 signal 18 } 
	{ m_axi_URtoDF_Move2_ARQOS sc_out sc_lv 4 signal 18 } 
	{ m_axi_URtoDF_Move2_ARREGION sc_out sc_lv 4 signal 18 } 
	{ m_axi_URtoDF_Move2_ARUSER sc_out sc_lv 1 signal 18 } 
	{ m_axi_URtoDF_Move2_RVALID sc_in sc_logic 1 signal 18 } 
	{ m_axi_URtoDF_Move2_RREADY sc_out sc_logic 1 signal 18 } 
	{ m_axi_URtoDF_Move2_RDATA sc_in sc_lv 16 signal 18 } 
	{ m_axi_URtoDF_Move2_RLAST sc_in sc_logic 1 signal 18 } 
	{ m_axi_URtoDF_Move2_RID sc_in sc_lv 1 signal 18 } 
	{ m_axi_URtoDF_Move2_RUSER sc_in sc_lv 1 signal 18 } 
	{ m_axi_URtoDF_Move2_RRESP sc_in sc_lv 2 signal 18 } 
	{ m_axi_URtoDF_Move2_BVALID sc_in sc_logic 1 signal 18 } 
	{ m_axi_URtoDF_Move2_BREADY sc_out sc_logic 1 signal 18 } 
	{ m_axi_URtoDF_Move2_BRESP sc_in sc_lv 2 signal 18 } 
	{ m_axi_URtoDF_Move2_BID sc_in sc_lv 1 signal 18 } 
	{ m_axi_URtoDF_Move2_BUSER sc_in sc_lv 1 signal 18 } 
	{ URtoDF_Move2_offset sc_in sc_lv 31 signal 19 } 
	{ URtoUL_Move2_offset sc_in sc_lv 31 signal 20 } 
	{ UBtoDF_Move2_offset sc_in sc_lv 31 signal 21 } 
	{ MergeURtoULandUBtoDF2_offset sc_in sc_lv 31 signal 22 } 
	{ Slice_URFtoDLF_Parity_Prun2_offset sc_in sc_lv 31 signal 23 } 
	{ Slice_URtoDF_Parity_Prun2_offset sc_in sc_lv 31 signal 24 } 
	{ P2Buffer_V_flip_dout sc_in sc_lv 16 signal 25 } 
	{ P2Buffer_V_flip_empty_n sc_in sc_logic 1 signal 25 } 
	{ P2Buffer_V_flip_read sc_out sc_logic 1 signal 25 } 
	{ P2Buffer_V_twist_dout sc_in sc_lv 16 signal 26 } 
	{ P2Buffer_V_twist_empty_n sc_in sc_logic 1 signal 26 } 
	{ P2Buffer_V_twist_read sc_out sc_logic 1 signal 26 } 
	{ P2Buffer_V_slice_dout sc_in sc_lv 16 signal 27 } 
	{ P2Buffer_V_slice_empty_n sc_in sc_logic 1 signal 27 } 
	{ P2Buffer_V_slice_read sc_out sc_logic 1 signal 27 } 
	{ P2Buffer_V_parity_dout sc_in sc_lv 1 signal 28 } 
	{ P2Buffer_V_parity_empty_n sc_in sc_logic 1 signal 28 } 
	{ P2Buffer_V_parity_read sc_out sc_logic 1 signal 28 } 
	{ P2Buffer_V_URFtoDLF_dout sc_in sc_lv 16 signal 29 } 
	{ P2Buffer_V_URFtoDLF_empty_n sc_in sc_logic 1 signal 29 } 
	{ P2Buffer_V_URFtoDLF_read sc_out sc_logic 1 signal 29 } 
	{ P2Buffer_V_FRtoBR_dout sc_in sc_lv 16 signal 30 } 
	{ P2Buffer_V_FRtoBR_empty_n sc_in sc_logic 1 signal 30 } 
	{ P2Buffer_V_FRtoBR_read sc_out sc_logic 1 signal 30 } 
	{ P2Buffer_V_URtoDF_dout sc_in sc_lv 16 signal 31 } 
	{ P2Buffer_V_URtoDF_empty_n sc_in sc_logic 1 signal 31 } 
	{ P2Buffer_V_URtoDF_read sc_out sc_logic 1 signal 31 } 
	{ P2Buffer_V_depthPhas_dout sc_in sc_lv 8 signal 32 } 
	{ P2Buffer_V_depthPhas_empty_n sc_in sc_logic 1 signal 32 } 
	{ P2Buffer_V_depthPhas_read sc_out sc_logic 1 signal 32 } 
	{ P2Buffer_V_n_dout sc_in sc_lv 8 signal 33 } 
	{ P2Buffer_V_n_empty_n sc_in sc_logic 1 signal 33 } 
	{ P2Buffer_V_n_read sc_out sc_logic 1 signal 33 } 
	{ P2Buffer_V_i_0_dout sc_in sc_lv 8 signal 34 } 
	{ P2Buffer_V_i_0_empty_n sc_in sc_logic 1 signal 34 } 
	{ P2Buffer_V_i_0_read sc_out sc_logic 1 signal 34 } 
	{ P2Buffer_V_i_1_dout sc_in sc_lv 8 signal 35 } 
	{ P2Buffer_V_i_1_empty_n sc_in sc_logic 1 signal 35 } 
	{ P2Buffer_V_i_1_read sc_out sc_logic 1 signal 35 } 
	{ P2Buffer_V_i_2_dout sc_in sc_lv 8 signal 36 } 
	{ P2Buffer_V_i_2_empty_n sc_in sc_logic 1 signal 36 } 
	{ P2Buffer_V_i_2_read sc_out sc_logic 1 signal 36 } 
	{ P2Buffer_V_i_3_dout sc_in sc_lv 8 signal 37 } 
	{ P2Buffer_V_i_3_empty_n sc_in sc_logic 1 signal 37 } 
	{ P2Buffer_V_i_3_read sc_out sc_logic 1 signal 37 } 
	{ P2Buffer_V_i_4_dout sc_in sc_lv 8 signal 38 } 
	{ P2Buffer_V_i_4_empty_n sc_in sc_logic 1 signal 38 } 
	{ P2Buffer_V_i_4_read sc_out sc_logic 1 signal 38 } 
	{ P2Buffer_V_i_5_dout sc_in sc_lv 8 signal 39 } 
	{ P2Buffer_V_i_5_empty_n sc_in sc_logic 1 signal 39 } 
	{ P2Buffer_V_i_5_read sc_out sc_logic 1 signal 39 } 
	{ P2Buffer_V_i_6_dout sc_in sc_lv 8 signal 40 } 
	{ P2Buffer_V_i_6_empty_n sc_in sc_logic 1 signal 40 } 
	{ P2Buffer_V_i_6_read sc_out sc_logic 1 signal 40 } 
	{ P2Buffer_V_i_7_dout sc_in sc_lv 8 signal 41 } 
	{ P2Buffer_V_i_7_empty_n sc_in sc_logic 1 signal 41 } 
	{ P2Buffer_V_i_7_read sc_out sc_logic 1 signal 41 } 
	{ P2Buffer_V_i_8_dout sc_in sc_lv 8 signal 42 } 
	{ P2Buffer_V_i_8_empty_n sc_in sc_logic 1 signal 42 } 
	{ P2Buffer_V_i_8_read sc_out sc_logic 1 signal 42 } 
	{ P2Buffer_V_i_9_dout sc_in sc_lv 8 signal 43 } 
	{ P2Buffer_V_i_9_empty_n sc_in sc_logic 1 signal 43 } 
	{ P2Buffer_V_i_9_read sc_out sc_logic 1 signal 43 } 
	{ P2Buffer_V_i_10_dout sc_in sc_lv 8 signal 44 } 
	{ P2Buffer_V_i_10_empty_n sc_in sc_logic 1 signal 44 } 
	{ P2Buffer_V_i_10_read sc_out sc_logic 1 signal 44 } 
	{ P2Buffer_V_i_11_dout sc_in sc_lv 8 signal 45 } 
	{ P2Buffer_V_i_11_empty_n sc_in sc_logic 1 signal 45 } 
	{ P2Buffer_V_i_11_read sc_out sc_logic 1 signal 45 } 
	{ P2Buffer_V_i_12_dout sc_in sc_lv 8 signal 46 } 
	{ P2Buffer_V_i_12_empty_n sc_in sc_logic 1 signal 46 } 
	{ P2Buffer_V_i_12_read sc_out sc_logic 1 signal 46 } 
	{ P2Buffer_V_i_13_dout sc_in sc_lv 8 signal 47 } 
	{ P2Buffer_V_i_13_empty_n sc_in sc_logic 1 signal 47 } 
	{ P2Buffer_V_i_13_read sc_out sc_logic 1 signal 47 } 
	{ P2Buffer_V_i_14_dout sc_in sc_lv 8 signal 48 } 
	{ P2Buffer_V_i_14_empty_n sc_in sc_logic 1 signal 48 } 
	{ P2Buffer_V_i_14_read sc_out sc_logic 1 signal 48 } 
	{ P2Buffer_V_i_15_dout sc_in sc_lv 8 signal 49 } 
	{ P2Buffer_V_i_15_empty_n sc_in sc_logic 1 signal 49 } 
	{ P2Buffer_V_i_15_read sc_out sc_logic 1 signal 49 } 
	{ P2Buffer_V_i_16_dout sc_in sc_lv 8 signal 50 } 
	{ P2Buffer_V_i_16_empty_n sc_in sc_logic 1 signal 50 } 
	{ P2Buffer_V_i_16_read sc_out sc_logic 1 signal 50 } 
	{ P2Buffer_V_i_17_dout sc_in sc_lv 8 signal 51 } 
	{ P2Buffer_V_i_17_empty_n sc_in sc_logic 1 signal 51 } 
	{ P2Buffer_V_i_17_read sc_out sc_logic 1 signal 51 } 
	{ P2Buffer_V_i_18_dout sc_in sc_lv 8 signal 52 } 
	{ P2Buffer_V_i_18_empty_n sc_in sc_logic 1 signal 52 } 
	{ P2Buffer_V_i_18_read sc_out sc_logic 1 signal 52 } 
	{ P2Buffer_V_i_19_dout sc_in sc_lv 8 signal 53 } 
	{ P2Buffer_V_i_19_empty_n sc_in sc_logic 1 signal 53 } 
	{ P2Buffer_V_i_19_read sc_out sc_logic 1 signal 53 } 
	{ P2Buffer_V_i_20_dout sc_in sc_lv 8 signal 54 } 
	{ P2Buffer_V_i_20_empty_n sc_in sc_logic 1 signal 54 } 
	{ P2Buffer_V_i_20_read sc_out sc_logic 1 signal 54 } 
	{ P2Buffer_V_i_21_dout sc_in sc_lv 8 signal 55 } 
	{ P2Buffer_V_i_21_empty_n sc_in sc_logic 1 signal 55 } 
	{ P2Buffer_V_i_21_read sc_out sc_logic 1 signal 55 } 
	{ P2Buffer_V_i_22_dout sc_in sc_lv 8 signal 56 } 
	{ P2Buffer_V_i_22_empty_n sc_in sc_logic 1 signal 56 } 
	{ P2Buffer_V_i_22_read sc_out sc_logic 1 signal 56 } 
	{ P2Buffer_V_i_23_dout sc_in sc_lv 8 signal 57 } 
	{ P2Buffer_V_i_23_empty_n sc_in sc_logic 1 signal 57 } 
	{ P2Buffer_V_i_23_read sc_out sc_logic 1 signal 57 } 
	{ P2Buffer_V_i_24_dout sc_in sc_lv 8 signal 58 } 
	{ P2Buffer_V_i_24_empty_n sc_in sc_logic 1 signal 58 } 
	{ P2Buffer_V_i_24_read sc_out sc_logic 1 signal 58 } 
	{ P2Buffer_V_i_25_dout sc_in sc_lv 8 signal 59 } 
	{ P2Buffer_V_i_25_empty_n sc_in sc_logic 1 signal 59 } 
	{ P2Buffer_V_i_25_read sc_out sc_logic 1 signal 59 } 
	{ P2Buffer_V_i_26_dout sc_in sc_lv 8 signal 60 } 
	{ P2Buffer_V_i_26_empty_n sc_in sc_logic 1 signal 60 } 
	{ P2Buffer_V_i_26_read sc_out sc_logic 1 signal 60 } 
	{ P2Buffer_V_i_27_dout sc_in sc_lv 8 signal 61 } 
	{ P2Buffer_V_i_27_empty_n sc_in sc_logic 1 signal 61 } 
	{ P2Buffer_V_i_27_read sc_out sc_logic 1 signal 61 } 
	{ P2Buffer_V_i_28_dout sc_in sc_lv 8 signal 62 } 
	{ P2Buffer_V_i_28_empty_n sc_in sc_logic 1 signal 62 } 
	{ P2Buffer_V_i_28_read sc_out sc_logic 1 signal 62 } 
	{ P2Buffer_V_i_29_dout sc_in sc_lv 8 signal 63 } 
	{ P2Buffer_V_i_29_empty_n sc_in sc_logic 1 signal 63 } 
	{ P2Buffer_V_i_29_read sc_out sc_logic 1 signal 63 } 
	{ P2Buffer_V_i_30_dout sc_in sc_lv 8 signal 64 } 
	{ P2Buffer_V_i_30_empty_n sc_in sc_logic 1 signal 64 } 
	{ P2Buffer_V_i_30_read sc_out sc_logic 1 signal 64 } 
	{ a sc_out sc_lv 32 signal 65 } 
	{ a_ap_vld sc_out sc_logic 1 outvld 65 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "URFtoDLF", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "URFtoDLF", "role": "default" }} , 
 	{ "name": "FRtoBR", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FRtoBR", "role": "default" }} , 
 	{ "name": "parity", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parity", "role": "default" }} , 
 	{ "name": "URtoUL", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "URtoUL", "role": "default" }} , 
 	{ "name": "UBtoDF", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "UBtoDF", "role": "default" }} , 
 	{ "name": "P3Buffer_0_parity_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "P3Buffer_0_parity", "role": "address0" }} , 
 	{ "name": "P3Buffer_0_parity_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_parity", "role": "ce0" }} , 
 	{ "name": "P3Buffer_0_parity_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_parity", "role": "we0" }} , 
 	{ "name": "P3Buffer_0_parity_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_parity", "role": "d0" }} , 
 	{ "name": "P3Buffer_0_parity_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_parity", "role": "q0" }} , 
 	{ "name": "P3Buffer_0_URFtoDLF_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "P3Buffer_0_URFtoDLF", "role": "address0" }} , 
 	{ "name": "P3Buffer_0_URFtoDLF_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_URFtoDLF", "role": "ce0" }} , 
 	{ "name": "P3Buffer_0_URFtoDLF_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_URFtoDLF", "role": "we0" }} , 
 	{ "name": "P3Buffer_0_URFtoDLF_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P3Buffer_0_URFtoDLF", "role": "d0" }} , 
 	{ "name": "P3Buffer_0_URFtoDLF_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P3Buffer_0_URFtoDLF", "role": "q0" }} , 
 	{ "name": "P3Buffer_0_FRtoBR_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "P3Buffer_0_FRtoBR", "role": "address0" }} , 
 	{ "name": "P3Buffer_0_FRtoBR_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_FRtoBR", "role": "ce0" }} , 
 	{ "name": "P3Buffer_0_FRtoBR_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_FRtoBR", "role": "we0" }} , 
 	{ "name": "P3Buffer_0_FRtoBR_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P3Buffer_0_FRtoBR", "role": "d0" }} , 
 	{ "name": "P3Buffer_0_FRtoBR_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P3Buffer_0_FRtoBR", "role": "q0" }} , 
 	{ "name": "P3Buffer_0_URtoDF_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "P3Buffer_0_URtoDF", "role": "address0" }} , 
 	{ "name": "P3Buffer_0_URtoDF_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_URtoDF", "role": "ce0" }} , 
 	{ "name": "P3Buffer_0_URtoDF_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_URtoDF", "role": "we0" }} , 
 	{ "name": "P3Buffer_0_URtoDF_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P3Buffer_0_URtoDF", "role": "d0" }} , 
 	{ "name": "P3Buffer_0_URtoDF_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P3Buffer_0_URtoDF", "role": "q0" }} , 
 	{ "name": "P3Buffer_0_n_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "P3Buffer_0_n", "role": "address0" }} , 
 	{ "name": "P3Buffer_0_n_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_n", "role": "ce0" }} , 
 	{ "name": "P3Buffer_0_n_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_n", "role": "we0" }} , 
 	{ "name": "P3Buffer_0_n_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P3Buffer_0_n", "role": "d0" }} , 
 	{ "name": "P3Buffer_0_n_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P3Buffer_0_n", "role": "q0" }} , 
 	{ "name": "P3Buffer_0_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "P3Buffer_0_i", "role": "address0" }} , 
 	{ "name": "P3Buffer_0_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_i", "role": "ce0" }} , 
 	{ "name": "P3Buffer_0_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_i", "role": "we0" }} , 
 	{ "name": "P3Buffer_0_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P3Buffer_0_i", "role": "d0" }} , 
 	{ "name": "P3Buffer_0_i_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P3Buffer_0_i", "role": "q0" }} , 
 	{ "name": "P3Buffer_0_i_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "P3Buffer_0_i", "role": "address1" }} , 
 	{ "name": "P3Buffer_0_i_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_i", "role": "ce1" }} , 
 	{ "name": "P3Buffer_0_i_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P3Buffer_0_i", "role": "we1" }} , 
 	{ "name": "P3Buffer_0_i_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P3Buffer_0_i", "role": "d1" }} , 
 	{ "name": "P3Buffer_0_i_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P3Buffer_0_i", "role": "q1" }} , 
 	{ "name": "maxDepth", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "maxDepth", "role": "default" }} , 
 	{ "name": "encode_length", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "encode_length", "role": "default" }} , 
 	{ "name": "encode_length_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "encode_length", "role": "ap_vld" }} , 
 	{ "name": "encode_array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "encode_array", "role": "address0" }} , 
 	{ "name": "encode_array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "encode_array", "role": "ce0" }} , 
 	{ "name": "encode_array_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "encode_array", "role": "we0" }} , 
 	{ "name": "encode_array_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "encode_array", "role": "d0" }} , 
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
 	{ "name": "m_axi_URFtoDLF_Move2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWID" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "WVALID" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "WREADY" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "WDATA" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "WLAST" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "WID" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "WUSER" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARID" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "RVALID" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "RREADY" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "RDATA" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "RLAST" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "RID" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "RUSER" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "RRESP" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "BVALID" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "BREADY" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "BRESP" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "BID" }} , 
 	{ "name": "m_axi_URFtoDLF_Move2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URFtoDLF_Move2", "role": "BUSER" }} , 
 	{ "name": "URFtoDLF_Move2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "URFtoDLF_Move2_offset", "role": "default" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWID" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_URtoDF_Move2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_URtoDF_Move2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "WVALID" }} , 
 	{ "name": "m_axi_URtoDF_Move2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "WREADY" }} , 
 	{ "name": "m_axi_URtoDF_Move2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "WDATA" }} , 
 	{ "name": "m_axi_URtoDF_Move2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_URtoDF_Move2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "WLAST" }} , 
 	{ "name": "m_axi_URtoDF_Move2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "WID" }} , 
 	{ "name": "m_axi_URtoDF_Move2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "WUSER" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARID" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_URtoDF_Move2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_URtoDF_Move2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "RVALID" }} , 
 	{ "name": "m_axi_URtoDF_Move2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "RREADY" }} , 
 	{ "name": "m_axi_URtoDF_Move2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "RDATA" }} , 
 	{ "name": "m_axi_URtoDF_Move2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "RLAST" }} , 
 	{ "name": "m_axi_URtoDF_Move2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "RID" }} , 
 	{ "name": "m_axi_URtoDF_Move2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "RUSER" }} , 
 	{ "name": "m_axi_URtoDF_Move2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "RRESP" }} , 
 	{ "name": "m_axi_URtoDF_Move2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "BVALID" }} , 
 	{ "name": "m_axi_URtoDF_Move2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "BREADY" }} , 
 	{ "name": "m_axi_URtoDF_Move2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "BRESP" }} , 
 	{ "name": "m_axi_URtoDF_Move2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "BID" }} , 
 	{ "name": "m_axi_URtoDF_Move2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "URtoDF_Move2", "role": "BUSER" }} , 
 	{ "name": "URtoDF_Move2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "URtoDF_Move2_offset", "role": "default" }} , 
 	{ "name": "URtoUL_Move2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "URtoUL_Move2_offset", "role": "default" }} , 
 	{ "name": "UBtoDF_Move2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "UBtoDF_Move2_offset", "role": "default" }} , 
 	{ "name": "MergeURtoULandUBtoDF2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "MergeURtoULandUBtoDF2_offset", "role": "default" }} , 
 	{ "name": "Slice_URFtoDLF_Parity_Prun2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "Slice_URFtoDLF_Parity_Prun2_offset", "role": "default" }} , 
 	{ "name": "Slice_URtoDF_Parity_Prun2_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "Slice_URtoDF_Parity_Prun2_offset", "role": "default" }} , 
 	{ "name": "P2Buffer_V_flip_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P2Buffer_V_flip", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_flip_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_flip", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_flip_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_flip", "role": "read" }} , 
 	{ "name": "P2Buffer_V_twist_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P2Buffer_V_twist", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_twist_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_twist", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_twist_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_twist", "role": "read" }} , 
 	{ "name": "P2Buffer_V_slice_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P2Buffer_V_slice", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_slice_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_slice", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_slice_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_slice", "role": "read" }} , 
 	{ "name": "P2Buffer_V_parity_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_parity", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_parity_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_parity", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_parity_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_parity", "role": "read" }} , 
 	{ "name": "P2Buffer_V_URFtoDLF_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P2Buffer_V_URFtoDLF", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_URFtoDLF_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_URFtoDLF", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_URFtoDLF_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_URFtoDLF", "role": "read" }} , 
 	{ "name": "P2Buffer_V_FRtoBR_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P2Buffer_V_FRtoBR", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_FRtoBR_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_FRtoBR", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_FRtoBR_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_FRtoBR", "role": "read" }} , 
 	{ "name": "P2Buffer_V_URtoDF_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P2Buffer_V_URtoDF", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_URtoDF_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_URtoDF", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_URtoDF_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_URtoDF", "role": "read" }} , 
 	{ "name": "P2Buffer_V_depthPhas_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_depthPhas", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_depthPhas_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_depthPhas", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_depthPhas_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_depthPhas", "role": "read" }} , 
 	{ "name": "P2Buffer_V_n_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_n", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_n_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_n", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_n_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_n", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_0", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_0", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_0", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_1", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_1", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_1", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_2", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_2", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_2", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_3", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_3", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_3", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_4", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_4", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_4", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_5", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_5", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_5", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_6", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_6", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_6", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_7", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_7", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_7", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_8", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_8", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_8", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_9_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_9", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_9_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_9", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_9_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_9", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_10_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_10", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_10_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_10", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_10_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_10", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_11_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_11", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_11_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_11", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_11_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_11", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_12_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_12", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_12_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_12", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_12_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_12", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_13_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_13", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_13_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_13", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_13_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_13", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_14_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_14", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_14_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_14", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_14_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_14", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_15_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_15", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_15_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_15", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_15_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_15", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_16_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_16", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_16_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_16", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_16_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_16", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_17_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_17", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_17_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_17", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_17_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_17", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_18_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_18", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_18_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_18", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_18_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_18", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_19_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_19", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_19_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_19", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_19_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_19", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_20_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_20", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_20_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_20", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_20_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_20", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_21_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_21", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_21_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_21", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_21_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_21", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_22_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_22", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_22_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_22", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_22_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_22", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_23_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_23", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_23_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_23", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_23_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_23", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_24_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_24", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_24_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_24", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_24_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_24", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_25_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_25", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_25_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_25", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_25_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_25", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_26_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_26", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_26_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_26", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_26_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_26", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_27_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_27", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_27_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_27", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_27_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_27", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_28_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_28", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_28_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_28", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_28_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_28", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_29_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_29", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_29_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_29", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_29_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_29", "role": "read" }} , 
 	{ "name": "P2Buffer_V_i_30_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "P2Buffer_V_i_30", "role": "dout" }} , 
 	{ "name": "P2Buffer_V_i_30_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_30", "role": "empty_n" }} , 
 	{ "name": "P2Buffer_V_i_30_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P2Buffer_V_i_30", "role": "read" }} , 
 	{ "name": "a", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "default" }} , 
 	{ "name": "a_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "a", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "blockP2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "2110722008",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_phase2_fu_967"}],
		"Port" : [
			{"Name" : "URFtoDLF", "Type" : "None", "Direction" : "I"},
			{"Name" : "FRtoBR", "Type" : "None", "Direction" : "I"},
			{"Name" : "parity", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoUL", "Type" : "None", "Direction" : "I"},
			{"Name" : "UBtoDF", "Type" : "None", "Direction" : "I"},
			{"Name" : "P3Buffer_0_parity", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P3Buffer_0_parity"}]},
			{"Name" : "P3Buffer_0_URFtoDLF", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P3Buffer_0_URFtoDLF"}]},
			{"Name" : "P3Buffer_0_FRtoBR", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P3Buffer_0_FRtoBR"}]},
			{"Name" : "P3Buffer_0_URtoDF", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P3Buffer_0_URtoDF"}]},
			{"Name" : "P3Buffer_0_n", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P3Buffer_0_n"}]},
			{"Name" : "P3Buffer_0_i", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P3Buffer_0_i"}]},
			{"Name" : "maxDepth", "Type" : "None", "Direction" : "I"},
			{"Name" : "encode_length", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "encode_array", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "FRtoBR_Move2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "FRtoBR_Move2"}]},
			{"Name" : "FRtoBR_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URFtoDLF_Move2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "URFtoDLF_Move2"}]},
			{"Name" : "URFtoDLF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoDF_Move2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "URtoDF_Move2"}]},
			{"Name" : "URtoDF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoUL_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "UBtoDF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "MergeURtoULandUBtoDF2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_URFtoDLF_Parity_Prun2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_URtoDF_Parity_Prun2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "P2Buffer_V_flip", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_flip"}]},
			{"Name" : "P2Buffer_V_twist", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_twist"}]},
			{"Name" : "P2Buffer_V_slice", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_slice"}]},
			{"Name" : "P2Buffer_V_parity", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_parity"}]},
			{"Name" : "P2Buffer_V_URFtoDLF", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_URFtoDLF"}]},
			{"Name" : "P2Buffer_V_FRtoBR", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_FRtoBR"}]},
			{"Name" : "P2Buffer_V_URtoDF", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_URtoDF"}]},
			{"Name" : "P2Buffer_V_depthPhas", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_depthPhas"}]},
			{"Name" : "P2Buffer_V_n", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_n"}]},
			{"Name" : "P2Buffer_V_i_0", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_0"}]},
			{"Name" : "P2Buffer_V_i_1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_1"}]},
			{"Name" : "P2Buffer_V_i_2", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_2"}]},
			{"Name" : "P2Buffer_V_i_3", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_3"}]},
			{"Name" : "P2Buffer_V_i_4", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_4"}]},
			{"Name" : "P2Buffer_V_i_5", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_5"}]},
			{"Name" : "P2Buffer_V_i_6", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_6"}]},
			{"Name" : "P2Buffer_V_i_7", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_7"}]},
			{"Name" : "P2Buffer_V_i_8", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_8"}]},
			{"Name" : "P2Buffer_V_i_9", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_9"}]},
			{"Name" : "P2Buffer_V_i_10", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_10"}]},
			{"Name" : "P2Buffer_V_i_11", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_11"}]},
			{"Name" : "P2Buffer_V_i_12", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_12"}]},
			{"Name" : "P2Buffer_V_i_13", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_13"}]},
			{"Name" : "P2Buffer_V_i_14", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_14"}]},
			{"Name" : "P2Buffer_V_i_15", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_15"}]},
			{"Name" : "P2Buffer_V_i_16", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_16"}]},
			{"Name" : "P2Buffer_V_i_17", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_17"}]},
			{"Name" : "P2Buffer_V_i_18", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_18"}]},
			{"Name" : "P2Buffer_V_i_19", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_19"}]},
			{"Name" : "P2Buffer_V_i_20", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_20"}]},
			{"Name" : "P2Buffer_V_i_21", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_21"}]},
			{"Name" : "P2Buffer_V_i_22", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_22"}]},
			{"Name" : "P2Buffer_V_i_23", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_23"}]},
			{"Name" : "P2Buffer_V_i_24", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_24"}]},
			{"Name" : "P2Buffer_V_i_25", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_25"}]},
			{"Name" : "P2Buffer_V_i_26", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_26"}]},
			{"Name" : "P2Buffer_V_i_27", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_27"}]},
			{"Name" : "P2Buffer_V_i_28", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_28"}]},
			{"Name" : "P2Buffer_V_i_29", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_29"}]},
			{"Name" : "P2Buffer_V_i_30", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "P2Buffer_V_i_30"}]},
			{"Name" : "search_sol_i", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "search_sol_i"}]},
			{"Name" : "parityMove", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "parityMove"}]},
			{"Name" : "nOld", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "nOld"}]},
			{"Name" : "URFtoDLF_Move3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "URFtoDLF_Move3"}]},
			{"Name" : "FRtoBR_Move3_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "FRtoBR_Move3_2"}]},
			{"Name" : "URtoDF_Move3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "URtoDF_Move3"}]},
			{"Name" : "label3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "label3_0"}]},
			{"Name" : "label3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "label3_1"}]},
			{"Name" : "search_sol_depthPhas", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "search_sol_depthPhas"}]},
			{"Name" : "a", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_phase2_fu_967", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.search_sol_i_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_phase2_fu_967", "Parent" : "0", "Child" : ["3", "4", "5", "13", "14", "15"],
		"CDFG" : "phase2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "2110716",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_P2_fu_1689"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getPruning_2_fu_1742"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getPruning_228_fu_1750"}],
		"Port" : [
			{"Name" : "P3Buffer_0_parity", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_P2_fu_1689", "Port" : "P3Buffer_0_parity"}]},
			{"Name" : "P3Buffer_0_URFtoDLF", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_P2_fu_1689", "Port" : "P3Buffer_0_URFtoDLF"}]},
			{"Name" : "P3Buffer_0_FRtoBR", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_P2_fu_1689", "Port" : "P3Buffer_0_FRtoBR"}]},
			{"Name" : "P3Buffer_0_URtoDF", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_P2_fu_1689", "Port" : "P3Buffer_0_URtoDF"}]},
			{"Name" : "P3Buffer_0_n", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_P2_fu_1689", "Port" : "P3Buffer_0_n"}]},
			{"Name" : "P3Buffer_0_i", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_P2_fu_1689", "Port" : "P3Buffer_0_i"}]},
			{"Name" : "maxDepth", "Type" : "None", "Direction" : "I"},
			{"Name" : "URFtoDLF", "Type" : "None", "Direction" : "I"},
			{"Name" : "FRtoBR", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoUL", "Type" : "None", "Direction" : "I"},
			{"Name" : "UBtoDF", "Type" : "None", "Direction" : "I"},
			{"Name" : "parity", "Type" : "None", "Direction" : "I"},
			{"Name" : "FRtoBR_Move2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "FRtoBR_Move2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "FRtoBR_Move2_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_P2_fu_1689", "Port" : "FRtoBR_Move2"}]},
			{"Name" : "FRtoBR_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URFtoDLF_Move2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "URFtoDLF_Move2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "URFtoDLF_Move2_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_getPruning_2_fu_1742", "Port" : "table_r"},
					{"ID" : "5", "SubInstance" : "grp_P2_fu_1689", "Port" : "URFtoDLF_Move2"}]},
			{"Name" : "URFtoDLF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoDF_Move2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "URtoDF_Move2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "URtoDF_Move2_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_getPruning_228_fu_1750", "Port" : "table_r"},
					{"ID" : "5", "SubInstance" : "grp_P2_fu_1689", "Port" : "URtoDF_Move2"}]},
			{"Name" : "URtoDF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoUL_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "UBtoDF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "MergeURtoULandUBtoDF2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_URFtoDLF_Parity_Prun2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_URtoDF_Parity_Prun2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "P2Buffer_V_flip", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_flip_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_twist", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_twist_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_slice", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_slice_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_parity", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_parity_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_URFtoDLF", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_URFtoDLF_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_FRtoBR", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_FRtoBR_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_URtoDF", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_URtoDF_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_depthPhas", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_depthPhas_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_n", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_n_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_5", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_6", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_7", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_8", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_9", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_10", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_11", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_12", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_13", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_14", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_15", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_16", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_17", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_18", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_19", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_20", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_21", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_22", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_23", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_24", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_25", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_26", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_27", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_27_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_28", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_28_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_29", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_29_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "P2Buffer_V_i_30", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "P2Buffer_V_i_30_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "search_sol_i", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_P2_fu_1689", "Port" : "search_sol_i"}]},
			{"Name" : "parityMove", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_P2_fu_1689", "Port" : "parityMove"}]},
			{"Name" : "nOld", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_P2_fu_1689", "Port" : "nOld"}]},
			{"Name" : "URFtoDLF_Move3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_P2_fu_1689", "Port" : "URFtoDLF_Move3"}]},
			{"Name" : "FRtoBR_Move3_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_P2_fu_1689", "Port" : "FRtoBR_Move3_2"}]},
			{"Name" : "URtoDF_Move3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_P2_fu_1689", "Port" : "URtoDF_Move3"}]},
			{"Name" : "label3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_P2_fu_1689", "Port" : "label3_0"}]},
			{"Name" : "label3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_P2_fu_1689", "Port" : "label3_1"}]},
			{"Name" : "search_sol_depthPhas", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_P2_fu_1689", "Port" : "search_sol_depthPhas"}]},
			{"Name" : "a", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_phase2_fu_967.parityMove_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_phase2_fu_967.search_0_i_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_phase2_fu_967.grp_P2_fu_1689", "Parent" : "2", "Child" : ["6", "7", "8", "9", "10", "11", "12"],
		"CDFG" : "P2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "151", "EstimateLatencyMax" : "209",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "P3Buffer_0_parity", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "P3Buffer_0_URFtoDLF", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "P3Buffer_0_FRtoBR", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "P3Buffer_0_URtoDF", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "P3Buffer_0_n", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "P3Buffer_0_i", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "P3Start_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P3End_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "depthPhase1", "Type" : "None", "Direction" : "I"},
			{"Name" : "depthPhase2", "Type" : "None", "Direction" : "I"},
			{"Name" : "FRtoBR_Move2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "FRtoBR_Move2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "FRtoBR_Move2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "FRtoBR_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URFtoDLF_Move2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "URFtoDLF_Move2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "URFtoDLF_Move2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "URFtoDLF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "URtoDF_Move2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "URtoDF_Move2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "URtoDF_Move2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "URtoDF_Move2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_URFtoDLF_Parity_Prun2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Slice_URtoDF_Parity_Prun2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "nOld", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "URFtoDLF_Move3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "FRtoBR_Move3_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "URtoDF_Move3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "label3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "label3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "parityMove", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "search_sol_depthPhas", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "search_sol_i", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_phase2_fu_967.grp_P2_fu_1689.URFtoDLF_Move3_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_phase2_fu_967.grp_P2_fu_1689.FRtoBR_Move3_2_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_phase2_fu_967.grp_P2_fu_1689.URtoDF_Move3_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_phase2_fu_967.grp_P2_fu_1689.label3_0_U", "Parent" : "5"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_phase2_fu_967.grp_P2_fu_1689.label3_1_U", "Parent" : "5"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_phase2_fu_967.grp_P2_fu_1689.parityMove_U", "Parent" : "5"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_phase2_fu_967.grp_P2_fu_1689.search_0_i_U", "Parent" : "5"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_phase2_fu_967.grp_getPruning_2_fu_1742", "Parent" : "2",
		"CDFG" : "getPruning_2",
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
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_phase2_fu_967.grp_getPruning_228_fu_1750", "Parent" : "2",
		"CDFG" : "getPruning_228",
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_phase2_fu_967.solution_mac_mulatde_U162", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	blockP2 {
		URFtoDLF {Type I LastRead 0 FirstWrite -1}
		FRtoBR {Type I LastRead 0 FirstWrite -1}
		parity {Type I LastRead 0 FirstWrite -1}
		URtoUL {Type I LastRead 0 FirstWrite -1}
		UBtoDF {Type I LastRead 0 FirstWrite -1}
		P3Buffer_0_parity {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_URFtoDLF {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_FRtoBR {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_URtoDF {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_n {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_i {Type IO LastRead 3 FirstWrite 32}
		maxDepth {Type I LastRead 0 FirstWrite -1}
		encode_length {Type O LastRead -1 FirstWrite 7}
		encode_array {Type O LastRead -1 FirstWrite 8}
		FRtoBR_Move2 {Type I LastRead 28 FirstWrite -1}
		FRtoBR_Move2_offset {Type I LastRead 0 FirstWrite -1}
		URFtoDLF_Move2 {Type I LastRead 29 FirstWrite -1}
		URFtoDLF_Move2_offset {Type I LastRead 0 FirstWrite -1}
		URtoDF_Move2 {Type I LastRead 29 FirstWrite -1}
		URtoDF_Move2_offset {Type I LastRead 0 FirstWrite -1}
		URtoUL_Move2_offset {Type I LastRead 0 FirstWrite -1}
		UBtoDF_Move2_offset {Type I LastRead 0 FirstWrite -1}
		MergeURtoULandUBtoDF2_offset {Type I LastRead 0 FirstWrite -1}
		Slice_URFtoDLF_Parity_Prun2_offset {Type I LastRead 0 FirstWrite -1}
		Slice_URtoDF_Parity_Prun2_offset {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_flip {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_twist {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_slice {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_parity {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_URFtoDLF {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_FRtoBR {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_URtoDF {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_depthPhas {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_n {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_0 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_1 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_2 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_3 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_4 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_5 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_6 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_7 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_8 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_9 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_10 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_11 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_12 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_13 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_14 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_15 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_16 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_17 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_18 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_19 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_20 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_21 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_22 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_23 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_24 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_25 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_26 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_27 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_28 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_29 {Type I LastRead 6 FirstWrite -1}
		P2Buffer_V_i_30 {Type I LastRead 6 FirstWrite -1}
		search_sol_i {Type IO LastRead -1 FirstWrite -1}
		parityMove {Type I LastRead -1 FirstWrite -1}
		nOld {Type IO LastRead -1 FirstWrite -1}
		URFtoDLF_Move3 {Type IO LastRead -1 FirstWrite -1}
		FRtoBR_Move3_2 {Type IO LastRead -1 FirstWrite -1}
		URtoDF_Move3 {Type IO LastRead -1 FirstWrite -1}
		label3_0 {Type I LastRead -1 FirstWrite -1}
		label3_1 {Type I LastRead -1 FirstWrite -1}
		search_sol_depthPhas {Type IO LastRead -1 FirstWrite -1}
		a {Type O LastRead -1 FirstWrite 7}}
	phase2 {
		P3Buffer_0_parity {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_URFtoDLF {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_FRtoBR {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_URtoDF {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_n {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_i {Type IO LastRead 3 FirstWrite 32}
		maxDepth {Type I LastRead 0 FirstWrite -1}
		URFtoDLF {Type I LastRead 0 FirstWrite -1}
		FRtoBR {Type I LastRead 0 FirstWrite -1}
		URtoUL {Type I LastRead 0 FirstWrite -1}
		UBtoDF {Type I LastRead 0 FirstWrite -1}
		parity {Type I LastRead 0 FirstWrite -1}
		FRtoBR_Move2 {Type I LastRead 28 FirstWrite -1}
		FRtoBR_Move2_offset {Type I LastRead 0 FirstWrite -1}
		URFtoDLF_Move2 {Type I LastRead 29 FirstWrite -1}
		URFtoDLF_Move2_offset {Type I LastRead 0 FirstWrite -1}
		URtoDF_Move2 {Type I LastRead 29 FirstWrite -1}
		URtoDF_Move2_offset {Type I LastRead 0 FirstWrite -1}
		URtoUL_Move2_offset {Type I LastRead 0 FirstWrite -1}
		UBtoDF_Move2_offset {Type I LastRead 0 FirstWrite -1}
		MergeURtoULandUBtoDF2_offset {Type I LastRead 0 FirstWrite -1}
		Slice_URFtoDLF_Parity_Prun2_offset {Type I LastRead 0 FirstWrite -1}
		Slice_URtoDF_Parity_Prun2_offset {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_flip {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_twist {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_slice {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_parity {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_URFtoDLF {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_FRtoBR {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_URtoDF {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_depthPhas {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_n {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_0 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_1 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_2 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_3 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_4 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_5 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_6 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_7 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_8 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_9 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_10 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_11 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_12 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_13 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_14 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_15 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_16 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_17 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_18 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_19 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_20 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_21 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_22 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_23 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_24 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_25 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_26 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_27 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_28 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_29 {Type I LastRead 0 FirstWrite -1}
		P2Buffer_V_i_30 {Type I LastRead 0 FirstWrite -1}
		search_sol_i {Type O LastRead -1 FirstWrite 17}
		parityMove {Type I LastRead -1 FirstWrite -1}
		nOld {Type IO LastRead -1 FirstWrite -1}
		URFtoDLF_Move3 {Type IO LastRead -1 FirstWrite -1}
		FRtoBR_Move3_2 {Type IO LastRead -1 FirstWrite -1}
		URtoDF_Move3 {Type IO LastRead -1 FirstWrite -1}
		label3_0 {Type I LastRead -1 FirstWrite -1}
		label3_1 {Type I LastRead -1 FirstWrite -1}
		search_sol_depthPhas {Type O LastRead -1 FirstWrite 31}
		a {Type O LastRead -1 FirstWrite 35}}
	P2 {
		P3Buffer_0_parity {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_URFtoDLF {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_FRtoBR {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_URtoDF {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_n {Type IO LastRead 0 FirstWrite 32}
		P3Buffer_0_i {Type IO LastRead 3 FirstWrite 32}
		P3Start_read {Type I LastRead 1 FirstWrite -1}
		P3End_read {Type I LastRead 0 FirstWrite -1}
		depthPhase1 {Type I LastRead 1 FirstWrite -1}
		depthPhase2 {Type I LastRead 1 FirstWrite -1}
		FRtoBR_Move2 {Type I LastRead 10 FirstWrite -1}
		FRtoBR_Move2_offset {Type I LastRead 1 FirstWrite -1}
		URFtoDLF_Move2 {Type I LastRead 29 FirstWrite -1}
		URFtoDLF_Move2_offset {Type I LastRead 1 FirstWrite -1}
		URtoDF_Move2 {Type I LastRead 29 FirstWrite -1}
		URtoDF_Move2_offset {Type I LastRead 1 FirstWrite -1}
		Slice_URFtoDLF_Parity_Prun2_offset {Type I LastRead 1 FirstWrite -1}
		Slice_URtoDF_Parity_Prun2_offset {Type I LastRead 1 FirstWrite -1}
		nOld {Type IO LastRead -1 FirstWrite -1}
		URFtoDLF_Move3 {Type IO LastRead -1 FirstWrite -1}
		FRtoBR_Move3_2 {Type IO LastRead -1 FirstWrite -1}
		URtoDF_Move3 {Type IO LastRead -1 FirstWrite -1}
		label3_0 {Type I LastRead -1 FirstWrite -1}
		label3_1 {Type I LastRead -1 FirstWrite -1}
		parityMove {Type I LastRead -1 FirstWrite -1}
		search_sol_depthPhas {Type O LastRead -1 FirstWrite 31}
		search_sol_i {Type O LastRead -1 FirstWrite 19}}
	getPruning_2 {
		table_r {Type I LastRead 9 FirstWrite -1}
		table_offset {Type I LastRead 1 FirstWrite -1}
		index {Type I LastRead 0 FirstWrite -1}}
	getPruning_228 {
		table_r {Type I LastRead 9 FirstWrite -1}
		table_offset {Type I LastRead 1 FirstWrite -1}
		index {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "2110722008"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "2110722008"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	URFtoDLF { ap_none {  { URFtoDLF in_data 0 16 } } }
	FRtoBR { ap_none {  { FRtoBR in_data 0 16 } } }
	parity { ap_none {  { parity in_data 0 1 } } }
	URtoUL { ap_none {  { URtoUL in_data 0 16 } } }
	UBtoDF { ap_none {  { UBtoDF in_data 0 16 } } }
	P3Buffer_0_parity { ap_memory {  { P3Buffer_0_parity_address0 mem_address 1 10 }  { P3Buffer_0_parity_ce0 mem_ce 1 1 }  { P3Buffer_0_parity_we0 mem_we 1 1 }  { P3Buffer_0_parity_d0 mem_din 1 1 }  { P3Buffer_0_parity_q0 mem_dout 0 1 } } }
	P3Buffer_0_URFtoDLF { ap_memory {  { P3Buffer_0_URFtoDLF_address0 mem_address 1 10 }  { P3Buffer_0_URFtoDLF_ce0 mem_ce 1 1 }  { P3Buffer_0_URFtoDLF_we0 mem_we 1 1 }  { P3Buffer_0_URFtoDLF_d0 mem_din 1 16 }  { P3Buffer_0_URFtoDLF_q0 mem_dout 0 16 } } }
	P3Buffer_0_FRtoBR { ap_memory {  { P3Buffer_0_FRtoBR_address0 mem_address 1 10 }  { P3Buffer_0_FRtoBR_ce0 mem_ce 1 1 }  { P3Buffer_0_FRtoBR_we0 mem_we 1 1 }  { P3Buffer_0_FRtoBR_d0 mem_din 1 16 }  { P3Buffer_0_FRtoBR_q0 mem_dout 0 16 } } }
	P3Buffer_0_URtoDF { ap_memory {  { P3Buffer_0_URtoDF_address0 mem_address 1 10 }  { P3Buffer_0_URtoDF_ce0 mem_ce 1 1 }  { P3Buffer_0_URtoDF_we0 mem_we 1 1 }  { P3Buffer_0_URtoDF_d0 mem_din 1 16 }  { P3Buffer_0_URtoDF_q0 mem_dout 0 16 } } }
	P3Buffer_0_n { ap_memory {  { P3Buffer_0_n_address0 mem_address 1 10 }  { P3Buffer_0_n_ce0 mem_ce 1 1 }  { P3Buffer_0_n_we0 mem_we 1 1 }  { P3Buffer_0_n_d0 mem_din 1 8 }  { P3Buffer_0_n_q0 mem_dout 0 8 } } }
	P3Buffer_0_i { ap_memory {  { P3Buffer_0_i_address0 mem_address 1 15 }  { P3Buffer_0_i_ce0 mem_ce 1 1 }  { P3Buffer_0_i_we0 mem_we 1 1 }  { P3Buffer_0_i_d0 mem_din 1 8 }  { P3Buffer_0_i_q0 mem_dout 0 8 }  { P3Buffer_0_i_address1 mem_address 1 15 }  { P3Buffer_0_i_ce1 mem_ce 1 1 }  { P3Buffer_0_i_we1 mem_we 1 1 }  { P3Buffer_0_i_d1 mem_din 1 8 }  { P3Buffer_0_i_q1 mem_dout 0 8 } } }
	maxDepth { ap_none {  { maxDepth in_data 0 8 } } }
	encode_length { ap_vld {  { encode_length out_data 1 8 }  { encode_length_ap_vld out_vld 1 1 } } }
	encode_array { ap_memory {  { encode_array_address0 mem_address 1 5 }  { encode_array_ce0 mem_ce 1 1 }  { encode_array_we0 mem_we 1 1 }  { encode_array_d0 mem_din 1 8 } } }
	FRtoBR_Move2 { m_axi {  { m_axi_FRtoBR_Move2_AWVALID VALID 1 1 }  { m_axi_FRtoBR_Move2_AWREADY READY 0 1 }  { m_axi_FRtoBR_Move2_AWADDR ADDR 1 32 }  { m_axi_FRtoBR_Move2_AWID ID 1 1 }  { m_axi_FRtoBR_Move2_AWLEN LEN 1 32 }  { m_axi_FRtoBR_Move2_AWSIZE SIZE 1 3 }  { m_axi_FRtoBR_Move2_AWBURST BURST 1 2 }  { m_axi_FRtoBR_Move2_AWLOCK LOCK 1 2 }  { m_axi_FRtoBR_Move2_AWCACHE CACHE 1 4 }  { m_axi_FRtoBR_Move2_AWPROT PROT 1 3 }  { m_axi_FRtoBR_Move2_AWQOS QOS 1 4 }  { m_axi_FRtoBR_Move2_AWREGION REGION 1 4 }  { m_axi_FRtoBR_Move2_AWUSER USER 1 1 }  { m_axi_FRtoBR_Move2_WVALID VALID 1 1 }  { m_axi_FRtoBR_Move2_WREADY READY 0 1 }  { m_axi_FRtoBR_Move2_WDATA DATA 1 16 }  { m_axi_FRtoBR_Move2_WSTRB STRB 1 2 }  { m_axi_FRtoBR_Move2_WLAST LAST 1 1 }  { m_axi_FRtoBR_Move2_WID ID 1 1 }  { m_axi_FRtoBR_Move2_WUSER USER 1 1 }  { m_axi_FRtoBR_Move2_ARVALID VALID 1 1 }  { m_axi_FRtoBR_Move2_ARREADY READY 0 1 }  { m_axi_FRtoBR_Move2_ARADDR ADDR 1 32 }  { m_axi_FRtoBR_Move2_ARID ID 1 1 }  { m_axi_FRtoBR_Move2_ARLEN LEN 1 32 }  { m_axi_FRtoBR_Move2_ARSIZE SIZE 1 3 }  { m_axi_FRtoBR_Move2_ARBURST BURST 1 2 }  { m_axi_FRtoBR_Move2_ARLOCK LOCK 1 2 }  { m_axi_FRtoBR_Move2_ARCACHE CACHE 1 4 }  { m_axi_FRtoBR_Move2_ARPROT PROT 1 3 }  { m_axi_FRtoBR_Move2_ARQOS QOS 1 4 }  { m_axi_FRtoBR_Move2_ARREGION REGION 1 4 }  { m_axi_FRtoBR_Move2_ARUSER USER 1 1 }  { m_axi_FRtoBR_Move2_RVALID VALID 0 1 }  { m_axi_FRtoBR_Move2_RREADY READY 1 1 }  { m_axi_FRtoBR_Move2_RDATA DATA 0 16 }  { m_axi_FRtoBR_Move2_RLAST LAST 0 1 }  { m_axi_FRtoBR_Move2_RID ID 0 1 }  { m_axi_FRtoBR_Move2_RUSER USER 0 1 }  { m_axi_FRtoBR_Move2_RRESP RESP 0 2 }  { m_axi_FRtoBR_Move2_BVALID VALID 0 1 }  { m_axi_FRtoBR_Move2_BREADY READY 1 1 }  { m_axi_FRtoBR_Move2_BRESP RESP 0 2 }  { m_axi_FRtoBR_Move2_BID ID 0 1 }  { m_axi_FRtoBR_Move2_BUSER USER 0 1 } } }
	FRtoBR_Move2_offset { ap_none {  { FRtoBR_Move2_offset in_data 0 31 } } }
	URFtoDLF_Move2 { m_axi {  { m_axi_URFtoDLF_Move2_AWVALID VALID 1 1 }  { m_axi_URFtoDLF_Move2_AWREADY READY 0 1 }  { m_axi_URFtoDLF_Move2_AWADDR ADDR 1 32 }  { m_axi_URFtoDLF_Move2_AWID ID 1 1 }  { m_axi_URFtoDLF_Move2_AWLEN LEN 1 32 }  { m_axi_URFtoDLF_Move2_AWSIZE SIZE 1 3 }  { m_axi_URFtoDLF_Move2_AWBURST BURST 1 2 }  { m_axi_URFtoDLF_Move2_AWLOCK LOCK 1 2 }  { m_axi_URFtoDLF_Move2_AWCACHE CACHE 1 4 }  { m_axi_URFtoDLF_Move2_AWPROT PROT 1 3 }  { m_axi_URFtoDLF_Move2_AWQOS QOS 1 4 }  { m_axi_URFtoDLF_Move2_AWREGION REGION 1 4 }  { m_axi_URFtoDLF_Move2_AWUSER USER 1 1 }  { m_axi_URFtoDLF_Move2_WVALID VALID 1 1 }  { m_axi_URFtoDLF_Move2_WREADY READY 0 1 }  { m_axi_URFtoDLF_Move2_WDATA DATA 1 16 }  { m_axi_URFtoDLF_Move2_WSTRB STRB 1 2 }  { m_axi_URFtoDLF_Move2_WLAST LAST 1 1 }  { m_axi_URFtoDLF_Move2_WID ID 1 1 }  { m_axi_URFtoDLF_Move2_WUSER USER 1 1 }  { m_axi_URFtoDLF_Move2_ARVALID VALID 1 1 }  { m_axi_URFtoDLF_Move2_ARREADY READY 0 1 }  { m_axi_URFtoDLF_Move2_ARADDR ADDR 1 32 }  { m_axi_URFtoDLF_Move2_ARID ID 1 1 }  { m_axi_URFtoDLF_Move2_ARLEN LEN 1 32 }  { m_axi_URFtoDLF_Move2_ARSIZE SIZE 1 3 }  { m_axi_URFtoDLF_Move2_ARBURST BURST 1 2 }  { m_axi_URFtoDLF_Move2_ARLOCK LOCK 1 2 }  { m_axi_URFtoDLF_Move2_ARCACHE CACHE 1 4 }  { m_axi_URFtoDLF_Move2_ARPROT PROT 1 3 }  { m_axi_URFtoDLF_Move2_ARQOS QOS 1 4 }  { m_axi_URFtoDLF_Move2_ARREGION REGION 1 4 }  { m_axi_URFtoDLF_Move2_ARUSER USER 1 1 }  { m_axi_URFtoDLF_Move2_RVALID VALID 0 1 }  { m_axi_URFtoDLF_Move2_RREADY READY 1 1 }  { m_axi_URFtoDLF_Move2_RDATA DATA 0 16 }  { m_axi_URFtoDLF_Move2_RLAST LAST 0 1 }  { m_axi_URFtoDLF_Move2_RID ID 0 1 }  { m_axi_URFtoDLF_Move2_RUSER USER 0 1 }  { m_axi_URFtoDLF_Move2_RRESP RESP 0 2 }  { m_axi_URFtoDLF_Move2_BVALID VALID 0 1 }  { m_axi_URFtoDLF_Move2_BREADY READY 1 1 }  { m_axi_URFtoDLF_Move2_BRESP RESP 0 2 }  { m_axi_URFtoDLF_Move2_BID ID 0 1 }  { m_axi_URFtoDLF_Move2_BUSER USER 0 1 } } }
	URFtoDLF_Move2_offset { ap_none {  { URFtoDLF_Move2_offset in_data 0 31 } } }
	URtoDF_Move2 { m_axi {  { m_axi_URtoDF_Move2_AWVALID VALID 1 1 }  { m_axi_URtoDF_Move2_AWREADY READY 0 1 }  { m_axi_URtoDF_Move2_AWADDR ADDR 1 32 }  { m_axi_URtoDF_Move2_AWID ID 1 1 }  { m_axi_URtoDF_Move2_AWLEN LEN 1 32 }  { m_axi_URtoDF_Move2_AWSIZE SIZE 1 3 }  { m_axi_URtoDF_Move2_AWBURST BURST 1 2 }  { m_axi_URtoDF_Move2_AWLOCK LOCK 1 2 }  { m_axi_URtoDF_Move2_AWCACHE CACHE 1 4 }  { m_axi_URtoDF_Move2_AWPROT PROT 1 3 }  { m_axi_URtoDF_Move2_AWQOS QOS 1 4 }  { m_axi_URtoDF_Move2_AWREGION REGION 1 4 }  { m_axi_URtoDF_Move2_AWUSER USER 1 1 }  { m_axi_URtoDF_Move2_WVALID VALID 1 1 }  { m_axi_URtoDF_Move2_WREADY READY 0 1 }  { m_axi_URtoDF_Move2_WDATA DATA 1 16 }  { m_axi_URtoDF_Move2_WSTRB STRB 1 2 }  { m_axi_URtoDF_Move2_WLAST LAST 1 1 }  { m_axi_URtoDF_Move2_WID ID 1 1 }  { m_axi_URtoDF_Move2_WUSER USER 1 1 }  { m_axi_URtoDF_Move2_ARVALID VALID 1 1 }  { m_axi_URtoDF_Move2_ARREADY READY 0 1 }  { m_axi_URtoDF_Move2_ARADDR ADDR 1 32 }  { m_axi_URtoDF_Move2_ARID ID 1 1 }  { m_axi_URtoDF_Move2_ARLEN LEN 1 32 }  { m_axi_URtoDF_Move2_ARSIZE SIZE 1 3 }  { m_axi_URtoDF_Move2_ARBURST BURST 1 2 }  { m_axi_URtoDF_Move2_ARLOCK LOCK 1 2 }  { m_axi_URtoDF_Move2_ARCACHE CACHE 1 4 }  { m_axi_URtoDF_Move2_ARPROT PROT 1 3 }  { m_axi_URtoDF_Move2_ARQOS QOS 1 4 }  { m_axi_URtoDF_Move2_ARREGION REGION 1 4 }  { m_axi_URtoDF_Move2_ARUSER USER 1 1 }  { m_axi_URtoDF_Move2_RVALID VALID 0 1 }  { m_axi_URtoDF_Move2_RREADY READY 1 1 }  { m_axi_URtoDF_Move2_RDATA DATA 0 16 }  { m_axi_URtoDF_Move2_RLAST LAST 0 1 }  { m_axi_URtoDF_Move2_RID ID 0 1 }  { m_axi_URtoDF_Move2_RUSER USER 0 1 }  { m_axi_URtoDF_Move2_RRESP RESP 0 2 }  { m_axi_URtoDF_Move2_BVALID VALID 0 1 }  { m_axi_URtoDF_Move2_BREADY READY 1 1 }  { m_axi_URtoDF_Move2_BRESP RESP 0 2 }  { m_axi_URtoDF_Move2_BID ID 0 1 }  { m_axi_URtoDF_Move2_BUSER USER 0 1 } } }
	URtoDF_Move2_offset { ap_none {  { URtoDF_Move2_offset in_data 0 31 } } }
	URtoUL_Move2_offset { ap_none {  { URtoUL_Move2_offset in_data 0 31 } } }
	UBtoDF_Move2_offset { ap_none {  { UBtoDF_Move2_offset in_data 0 31 } } }
	MergeURtoULandUBtoDF2_offset { ap_none {  { MergeURtoULandUBtoDF2_offset in_data 0 31 } } }
	Slice_URFtoDLF_Parity_Prun2_offset { ap_none {  { Slice_URFtoDLF_Parity_Prun2_offset in_data 0 31 } } }
	Slice_URtoDF_Parity_Prun2_offset { ap_none {  { Slice_URtoDF_Parity_Prun2_offset in_data 0 31 } } }
	P2Buffer_V_flip { ap_fifo {  { P2Buffer_V_flip_dout fifo_data 0 16 }  { P2Buffer_V_flip_empty_n fifo_status 0 1 }  { P2Buffer_V_flip_read fifo_update 1 1 } } }
	P2Buffer_V_twist { ap_fifo {  { P2Buffer_V_twist_dout fifo_data 0 16 }  { P2Buffer_V_twist_empty_n fifo_status 0 1 }  { P2Buffer_V_twist_read fifo_update 1 1 } } }
	P2Buffer_V_slice { ap_fifo {  { P2Buffer_V_slice_dout fifo_data 0 16 }  { P2Buffer_V_slice_empty_n fifo_status 0 1 }  { P2Buffer_V_slice_read fifo_update 1 1 } } }
	P2Buffer_V_parity { ap_fifo {  { P2Buffer_V_parity_dout fifo_data 0 1 }  { P2Buffer_V_parity_empty_n fifo_status 0 1 }  { P2Buffer_V_parity_read fifo_update 1 1 } } }
	P2Buffer_V_URFtoDLF { ap_fifo {  { P2Buffer_V_URFtoDLF_dout fifo_data 0 16 }  { P2Buffer_V_URFtoDLF_empty_n fifo_status 0 1 }  { P2Buffer_V_URFtoDLF_read fifo_update 1 1 } } }
	P2Buffer_V_FRtoBR { ap_fifo {  { P2Buffer_V_FRtoBR_dout fifo_data 0 16 }  { P2Buffer_V_FRtoBR_empty_n fifo_status 0 1 }  { P2Buffer_V_FRtoBR_read fifo_update 1 1 } } }
	P2Buffer_V_URtoDF { ap_fifo {  { P2Buffer_V_URtoDF_dout fifo_data 0 16 }  { P2Buffer_V_URtoDF_empty_n fifo_status 0 1 }  { P2Buffer_V_URtoDF_read fifo_update 1 1 } } }
	P2Buffer_V_depthPhas { ap_fifo {  { P2Buffer_V_depthPhas_dout fifo_data 0 8 }  { P2Buffer_V_depthPhas_empty_n fifo_status 0 1 }  { P2Buffer_V_depthPhas_read fifo_update 1 1 } } }
	P2Buffer_V_n { ap_fifo {  { P2Buffer_V_n_dout fifo_data 0 8 }  { P2Buffer_V_n_empty_n fifo_status 0 1 }  { P2Buffer_V_n_read fifo_update 1 1 } } }
	P2Buffer_V_i_0 { ap_fifo {  { P2Buffer_V_i_0_dout fifo_data 0 8 }  { P2Buffer_V_i_0_empty_n fifo_status 0 1 }  { P2Buffer_V_i_0_read fifo_update 1 1 } } }
	P2Buffer_V_i_1 { ap_fifo {  { P2Buffer_V_i_1_dout fifo_data 0 8 }  { P2Buffer_V_i_1_empty_n fifo_status 0 1 }  { P2Buffer_V_i_1_read fifo_update 1 1 } } }
	P2Buffer_V_i_2 { ap_fifo {  { P2Buffer_V_i_2_dout fifo_data 0 8 }  { P2Buffer_V_i_2_empty_n fifo_status 0 1 }  { P2Buffer_V_i_2_read fifo_update 1 1 } } }
	P2Buffer_V_i_3 { ap_fifo {  { P2Buffer_V_i_3_dout fifo_data 0 8 }  { P2Buffer_V_i_3_empty_n fifo_status 0 1 }  { P2Buffer_V_i_3_read fifo_update 1 1 } } }
	P2Buffer_V_i_4 { ap_fifo {  { P2Buffer_V_i_4_dout fifo_data 0 8 }  { P2Buffer_V_i_4_empty_n fifo_status 0 1 }  { P2Buffer_V_i_4_read fifo_update 1 1 } } }
	P2Buffer_V_i_5 { ap_fifo {  { P2Buffer_V_i_5_dout fifo_data 0 8 }  { P2Buffer_V_i_5_empty_n fifo_status 0 1 }  { P2Buffer_V_i_5_read fifo_update 1 1 } } }
	P2Buffer_V_i_6 { ap_fifo {  { P2Buffer_V_i_6_dout fifo_data 0 8 }  { P2Buffer_V_i_6_empty_n fifo_status 0 1 }  { P2Buffer_V_i_6_read fifo_update 1 1 } } }
	P2Buffer_V_i_7 { ap_fifo {  { P2Buffer_V_i_7_dout fifo_data 0 8 }  { P2Buffer_V_i_7_empty_n fifo_status 0 1 }  { P2Buffer_V_i_7_read fifo_update 1 1 } } }
	P2Buffer_V_i_8 { ap_fifo {  { P2Buffer_V_i_8_dout fifo_data 0 8 }  { P2Buffer_V_i_8_empty_n fifo_status 0 1 }  { P2Buffer_V_i_8_read fifo_update 1 1 } } }
	P2Buffer_V_i_9 { ap_fifo {  { P2Buffer_V_i_9_dout fifo_data 0 8 }  { P2Buffer_V_i_9_empty_n fifo_status 0 1 }  { P2Buffer_V_i_9_read fifo_update 1 1 } } }
	P2Buffer_V_i_10 { ap_fifo {  { P2Buffer_V_i_10_dout fifo_data 0 8 }  { P2Buffer_V_i_10_empty_n fifo_status 0 1 }  { P2Buffer_V_i_10_read fifo_update 1 1 } } }
	P2Buffer_V_i_11 { ap_fifo {  { P2Buffer_V_i_11_dout fifo_data 0 8 }  { P2Buffer_V_i_11_empty_n fifo_status 0 1 }  { P2Buffer_V_i_11_read fifo_update 1 1 } } }
	P2Buffer_V_i_12 { ap_fifo {  { P2Buffer_V_i_12_dout fifo_data 0 8 }  { P2Buffer_V_i_12_empty_n fifo_status 0 1 }  { P2Buffer_V_i_12_read fifo_update 1 1 } } }
	P2Buffer_V_i_13 { ap_fifo {  { P2Buffer_V_i_13_dout fifo_data 0 8 }  { P2Buffer_V_i_13_empty_n fifo_status 0 1 }  { P2Buffer_V_i_13_read fifo_update 1 1 } } }
	P2Buffer_V_i_14 { ap_fifo {  { P2Buffer_V_i_14_dout fifo_data 0 8 }  { P2Buffer_V_i_14_empty_n fifo_status 0 1 }  { P2Buffer_V_i_14_read fifo_update 1 1 } } }
	P2Buffer_V_i_15 { ap_fifo {  { P2Buffer_V_i_15_dout fifo_data 0 8 }  { P2Buffer_V_i_15_empty_n fifo_status 0 1 }  { P2Buffer_V_i_15_read fifo_update 1 1 } } }
	P2Buffer_V_i_16 { ap_fifo {  { P2Buffer_V_i_16_dout fifo_data 0 8 }  { P2Buffer_V_i_16_empty_n fifo_status 0 1 }  { P2Buffer_V_i_16_read fifo_update 1 1 } } }
	P2Buffer_V_i_17 { ap_fifo {  { P2Buffer_V_i_17_dout fifo_data 0 8 }  { P2Buffer_V_i_17_empty_n fifo_status 0 1 }  { P2Buffer_V_i_17_read fifo_update 1 1 } } }
	P2Buffer_V_i_18 { ap_fifo {  { P2Buffer_V_i_18_dout fifo_data 0 8 }  { P2Buffer_V_i_18_empty_n fifo_status 0 1 }  { P2Buffer_V_i_18_read fifo_update 1 1 } } }
	P2Buffer_V_i_19 { ap_fifo {  { P2Buffer_V_i_19_dout fifo_data 0 8 }  { P2Buffer_V_i_19_empty_n fifo_status 0 1 }  { P2Buffer_V_i_19_read fifo_update 1 1 } } }
	P2Buffer_V_i_20 { ap_fifo {  { P2Buffer_V_i_20_dout fifo_data 0 8 }  { P2Buffer_V_i_20_empty_n fifo_status 0 1 }  { P2Buffer_V_i_20_read fifo_update 1 1 } } }
	P2Buffer_V_i_21 { ap_fifo {  { P2Buffer_V_i_21_dout fifo_data 0 8 }  { P2Buffer_V_i_21_empty_n fifo_status 0 1 }  { P2Buffer_V_i_21_read fifo_update 1 1 } } }
	P2Buffer_V_i_22 { ap_fifo {  { P2Buffer_V_i_22_dout fifo_data 0 8 }  { P2Buffer_V_i_22_empty_n fifo_status 0 1 }  { P2Buffer_V_i_22_read fifo_update 1 1 } } }
	P2Buffer_V_i_23 { ap_fifo {  { P2Buffer_V_i_23_dout fifo_data 0 8 }  { P2Buffer_V_i_23_empty_n fifo_status 0 1 }  { P2Buffer_V_i_23_read fifo_update 1 1 } } }
	P2Buffer_V_i_24 { ap_fifo {  { P2Buffer_V_i_24_dout fifo_data 0 8 }  { P2Buffer_V_i_24_empty_n fifo_status 0 1 }  { P2Buffer_V_i_24_read fifo_update 1 1 } } }
	P2Buffer_V_i_25 { ap_fifo {  { P2Buffer_V_i_25_dout fifo_data 0 8 }  { P2Buffer_V_i_25_empty_n fifo_status 0 1 }  { P2Buffer_V_i_25_read fifo_update 1 1 } } }
	P2Buffer_V_i_26 { ap_fifo {  { P2Buffer_V_i_26_dout fifo_data 0 8 }  { P2Buffer_V_i_26_empty_n fifo_status 0 1 }  { P2Buffer_V_i_26_read fifo_update 1 1 } } }
	P2Buffer_V_i_27 { ap_fifo {  { P2Buffer_V_i_27_dout fifo_data 0 8 }  { P2Buffer_V_i_27_empty_n fifo_status 0 1 }  { P2Buffer_V_i_27_read fifo_update 1 1 } } }
	P2Buffer_V_i_28 { ap_fifo {  { P2Buffer_V_i_28_dout fifo_data 0 8 }  { P2Buffer_V_i_28_empty_n fifo_status 0 1 }  { P2Buffer_V_i_28_read fifo_update 1 1 } } }
	P2Buffer_V_i_29 { ap_fifo {  { P2Buffer_V_i_29_dout fifo_data 0 8 }  { P2Buffer_V_i_29_empty_n fifo_status 0 1 }  { P2Buffer_V_i_29_read fifo_update 1 1 } } }
	P2Buffer_V_i_30 { ap_fifo {  { P2Buffer_V_i_30_dout fifo_data 0 8 }  { P2Buffer_V_i_30_empty_n fifo_status 0 1 }  { P2Buffer_V_i_30_read fifo_update 1 1 } } }
	a { ap_vld {  { a out_data 1 32 }  { a_ap_vld out_vld 1 1 } } }
}
