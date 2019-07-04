// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XSOLVECUBE_H
#define XSOLVECUBE_H

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
#include "xsolvecube_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Add_io_BaseAddress;
} XSolvecube_Config;
#endif

typedef struct {
    u32 Add_io_BaseAddress;
    u32 IsReady;
} XSolvecube;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSolvecube_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSolvecube_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSolvecube_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSolvecube_ReadReg(BaseAddress, RegOffset) \
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
int XSolvecube_Initialize(XSolvecube *InstancePtr, u16 DeviceId);
XSolvecube_Config* XSolvecube_LookupConfig(u16 DeviceId);
int XSolvecube_CfgInitialize(XSolvecube *InstancePtr, XSolvecube_Config *ConfigPtr);
#else
int XSolvecube_Initialize(XSolvecube *InstancePtr, const char* InstanceName);
int XSolvecube_Release(XSolvecube *InstancePtr);
#endif

void XSolvecube_Start(XSolvecube *InstancePtr);
u32 XSolvecube_IsDone(XSolvecube *InstancePtr);
u32 XSolvecube_IsIdle(XSolvecube *InstancePtr);
u32 XSolvecube_IsReady(XSolvecube *InstancePtr);
void XSolvecube_EnableAutoRestart(XSolvecube *InstancePtr);
void XSolvecube_DisableAutoRestart(XSolvecube *InstancePtr);

u32 XSolvecube_Get_order_V(XSolvecube *InstancePtr);
u32 XSolvecube_Get_order_V_vld(XSolvecube *InstancePtr);
u32 XSolvecube_Get_cubieColor_tb_V_BaseAddress(XSolvecube *InstancePtr);
u32 XSolvecube_Get_cubieColor_tb_V_HighAddress(XSolvecube *InstancePtr);
u32 XSolvecube_Get_cubieColor_tb_V_TotalBytes(XSolvecube *InstancePtr);
u32 XSolvecube_Get_cubieColor_tb_V_BitWidth(XSolvecube *InstancePtr);
u32 XSolvecube_Get_cubieColor_tb_V_Depth(XSolvecube *InstancePtr);
u32 XSolvecube_Write_cubieColor_tb_V_Words(XSolvecube *InstancePtr, int offset, int *data, int length);
u32 XSolvecube_Read_cubieColor_tb_V_Words(XSolvecube *InstancePtr, int offset, int *data, int length);
u32 XSolvecube_Write_cubieColor_tb_V_Bytes(XSolvecube *InstancePtr, int offset, char *data, int length);
u32 XSolvecube_Read_cubieColor_tb_V_Bytes(XSolvecube *InstancePtr, int offset, char *data, int length);
u32 XSolvecube_Get_rMoves_V_BaseAddress(XSolvecube *InstancePtr);
u32 XSolvecube_Get_rMoves_V_HighAddress(XSolvecube *InstancePtr);
u32 XSolvecube_Get_rMoves_V_TotalBytes(XSolvecube *InstancePtr);
u32 XSolvecube_Get_rMoves_V_BitWidth(XSolvecube *InstancePtr);
u32 XSolvecube_Get_rMoves_V_Depth(XSolvecube *InstancePtr);
u32 XSolvecube_Write_rMoves_V_Words(XSolvecube *InstancePtr, int offset, int *data, int length);
u32 XSolvecube_Read_rMoves_V_Words(XSolvecube *InstancePtr, int offset, int *data, int length);
u32 XSolvecube_Write_rMoves_V_Bytes(XSolvecube *InstancePtr, int offset, char *data, int length);
u32 XSolvecube_Read_rMoves_V_Bytes(XSolvecube *InstancePtr, int offset, char *data, int length);

void XSolvecube_InterruptGlobalEnable(XSolvecube *InstancePtr);
void XSolvecube_InterruptGlobalDisable(XSolvecube *InstancePtr);
void XSolvecube_InterruptEnable(XSolvecube *InstancePtr, u32 Mask);
void XSolvecube_InterruptDisable(XSolvecube *InstancePtr, u32 Mask);
void XSolvecube_InterruptClear(XSolvecube *InstancePtr, u32 Mask);
u32 XSolvecube_InterruptGetEnabled(XSolvecube *InstancePtr);
u32 XSolvecube_InterruptGetStatus(XSolvecube *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
