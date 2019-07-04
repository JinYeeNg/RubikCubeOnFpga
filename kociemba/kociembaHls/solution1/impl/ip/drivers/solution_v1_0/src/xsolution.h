// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XSOLUTION_H
#define XSOLUTION_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xsolution_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_bus_BaseAddress;
} XSolution_Config;
#endif

typedef struct {
    u32 Ctrl_bus_BaseAddress;
    u32 IsReady;
} XSolution;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSolution_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSolution_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSolution_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSolution_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XSolution_Initialize(XSolution *InstancePtr, u16 DeviceId);
XSolution_Config* XSolution_LookupConfig(u16 DeviceId);
int XSolution_CfgInitialize(XSolution *InstancePtr, XSolution_Config *ConfigPtr);
#else
int XSolution_Initialize(XSolution *InstancePtr, const char* InstanceName);
int XSolution_Release(XSolution *InstancePtr);
#endif

void XSolution_Start(XSolution *InstancePtr);
u32 XSolution_IsDone(XSolution *InstancePtr);
u32 XSolution_IsIdle(XSolution *InstancePtr);
u32 XSolution_IsReady(XSolution *InstancePtr);
void XSolution_EnableAutoRestart(XSolution *InstancePtr);
void XSolution_DisableAutoRestart(XSolution *InstancePtr);

void XSolution_Set_maxDepth(XSolution *InstancePtr, u32 Data);
u32 XSolution_Get_maxDepth(XSolution *InstancePtr);
u32 XSolution_Get_unsolvable(XSolution *InstancePtr);
u32 XSolution_Get_unsolvable_vld(XSolution *InstancePtr);
u32 XSolution_Get_encode_length(XSolution *InstancePtr);
u32 XSolution_Get_encode_length_vld(XSolution *InstancePtr);
void XSolution_Set_twistMove2(XSolution *InstancePtr, u32 Data);
u32 XSolution_Get_twistMove2(XSolution *InstancePtr);
void XSolution_Set_flipMove2(XSolution *InstancePtr, u32 Data);
u32 XSolution_Get_flipMove2(XSolution *InstancePtr);
void XSolution_Set_FRtoBR_Move2(XSolution *InstancePtr, u32 Data);
u32 XSolution_Get_FRtoBR_Move2(XSolution *InstancePtr);
void XSolution_Set_URFtoDLF_Move2(XSolution *InstancePtr, u32 Data);
u32 XSolution_Get_URFtoDLF_Move2(XSolution *InstancePtr);
void XSolution_Set_URtoDF_Move2(XSolution *InstancePtr, u32 Data);
u32 XSolution_Get_URtoDF_Move2(XSolution *InstancePtr);
void XSolution_Set_URtoUL_Move2(XSolution *InstancePtr, u32 Data);
u32 XSolution_Get_URtoUL_Move2(XSolution *InstancePtr);
void XSolution_Set_UBtoDF_Move2(XSolution *InstancePtr, u32 Data);
u32 XSolution_Get_UBtoDF_Move2(XSolution *InstancePtr);
void XSolution_Set_MergeURtoULandUBtoDF2(XSolution *InstancePtr, u32 Data);
u32 XSolution_Get_MergeURtoULandUBtoDF2(XSolution *InstancePtr);
void XSolution_Set_Slice_URFtoDLF_Parity_Prun2(XSolution *InstancePtr, u32 Data);
u32 XSolution_Get_Slice_URFtoDLF_Parity_Prun2(XSolution *InstancePtr);
void XSolution_Set_Slice_URtoDF_Parity_Prun2(XSolution *InstancePtr, u32 Data);
u32 XSolution_Get_Slice_URtoDF_Parity_Prun2(XSolution *InstancePtr);
void XSolution_Set_Slice_Twist_Prun2(XSolution *InstancePtr, u32 Data);
u32 XSolution_Get_Slice_Twist_Prun2(XSolution *InstancePtr);
void XSolution_Set_Slice_Flip_Prun2(XSolution *InstancePtr, u32 Data);
u32 XSolution_Get_Slice_Flip_Prun2(XSolution *InstancePtr);
u32 XSolution_Get_facelets_BaseAddress(XSolution *InstancePtr);
u32 XSolution_Get_facelets_HighAddress(XSolution *InstancePtr);
u32 XSolution_Get_facelets_TotalBytes(XSolution *InstancePtr);
u32 XSolution_Get_facelets_BitWidth(XSolution *InstancePtr);
u32 XSolution_Get_facelets_Depth(XSolution *InstancePtr);
u32 XSolution_Write_facelets_Words(XSolution *InstancePtr, int offset, int *data, int length);
u32 XSolution_Read_facelets_Words(XSolution *InstancePtr, int offset, int *data, int length);
u32 XSolution_Write_facelets_Bytes(XSolution *InstancePtr, int offset, char *data, int length);
u32 XSolution_Read_facelets_Bytes(XSolution *InstancePtr, int offset, char *data, int length);
u32 XSolution_Get_encode_array_BaseAddress(XSolution *InstancePtr);
u32 XSolution_Get_encode_array_HighAddress(XSolution *InstancePtr);
u32 XSolution_Get_encode_array_TotalBytes(XSolution *InstancePtr);
u32 XSolution_Get_encode_array_BitWidth(XSolution *InstancePtr);
u32 XSolution_Get_encode_array_Depth(XSolution *InstancePtr);
u32 XSolution_Write_encode_array_Words(XSolution *InstancePtr, int offset, int *data, int length);
u32 XSolution_Read_encode_array_Words(XSolution *InstancePtr, int offset, int *data, int length);
u32 XSolution_Write_encode_array_Bytes(XSolution *InstancePtr, int offset, char *data, int length);
u32 XSolution_Read_encode_array_Bytes(XSolution *InstancePtr, int offset, char *data, int length);

void XSolution_InterruptGlobalEnable(XSolution *InstancePtr);
void XSolution_InterruptGlobalDisable(XSolution *InstancePtr);
void XSolution_InterruptEnable(XSolution *InstancePtr, u32 Mask);
void XSolution_InterruptDisable(XSolution *InstancePtr, u32 Mask);
void XSolution_InterruptClear(XSolution *InstancePtr, u32 Mask);
u32 XSolution_InterruptGetEnabled(XSolution *InstancePtr);
u32 XSolution_InterruptGetStatus(XSolution *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
