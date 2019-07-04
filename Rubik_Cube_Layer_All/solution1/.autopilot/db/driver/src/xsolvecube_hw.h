// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

// add_io
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x200 : Data signal of order_V
//         bit 7~0 - order_V[7:0] (Read)
//         others  - reserved
// 0x204 : Control signal of order_V
//         bit 0  - order_V_ap_vld (Read/COR)
//         others - reserved
// 0x040 ~
// 0x07f : Memory 'cubieColor_tb_V' (54 * 3b)
//         Word n : bit [ 2: 0] - cubieColor_tb_V[4n]
//                  bit [10: 8] - cubieColor_tb_V[4n+1]
//                  bit [18:16] - cubieColor_tb_V[4n+2]
//                  bit [26:24] - cubieColor_tb_V[4n+3]
//                  others      - reserved
// 0x100 ~
// 0x1ff : Memory 'rMoves_V' (200 * 4b)
//         Word n : bit [ 3: 0] - rMoves_V[4n]
//                  bit [11: 8] - rMoves_V[4n+1]
//                  bit [19:16] - rMoves_V[4n+2]
//                  bit [27:24] - rMoves_V[4n+3]
//                  others      - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XSOLVECUBE_ADD_IO_ADDR_AP_CTRL              0x000
#define XSOLVECUBE_ADD_IO_ADDR_GIE                  0x004
#define XSOLVECUBE_ADD_IO_ADDR_IER                  0x008
#define XSOLVECUBE_ADD_IO_ADDR_ISR                  0x00c
#define XSOLVECUBE_ADD_IO_ADDR_ORDER_V_DATA         0x200
#define XSOLVECUBE_ADD_IO_BITS_ORDER_V_DATA         8
#define XSOLVECUBE_ADD_IO_ADDR_ORDER_V_CTRL         0x204
#define XSOLVECUBE_ADD_IO_ADDR_CUBIECOLOR_TB_V_BASE 0x040
#define XSOLVECUBE_ADD_IO_ADDR_CUBIECOLOR_TB_V_HIGH 0x07f
#define XSOLVECUBE_ADD_IO_WIDTH_CUBIECOLOR_TB_V     3
#define XSOLVECUBE_ADD_IO_DEPTH_CUBIECOLOR_TB_V     54
#define XSOLVECUBE_ADD_IO_ADDR_RMOVES_V_BASE        0x100
#define XSOLVECUBE_ADD_IO_ADDR_RMOVES_V_HIGH        0x1ff
#define XSOLVECUBE_ADD_IO_WIDTH_RMOVES_V            4
#define XSOLVECUBE_ADD_IO_DEPTH_RMOVES_V            200

