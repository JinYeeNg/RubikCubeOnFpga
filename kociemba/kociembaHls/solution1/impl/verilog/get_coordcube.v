// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module get_coordcube (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        cubiecube_0_cp_address0,
        cubiecube_0_cp_ce0,
        cubiecube_0_cp_q0,
        cubiecube_0_co_address0,
        cubiecube_0_co_ce0,
        cubiecube_0_co_q0,
        cubiecube_0_ep_address0,
        cubiecube_0_ep_ce0,
        cubiecube_0_ep_q0,
        cubiecube_0_eo_address0,
        cubiecube_0_eo_ce0,
        cubiecube_0_eo_q0,
        result_twist_0,
        result_twist_0_ap_vld,
        result_flip_0,
        result_flip_0_ap_vld,
        result_parity_0,
        result_parity_0_ap_vld,
        result_FRtoBR_0,
        result_FRtoBR_0_ap_vld,
        result_URFtoDLF_0,
        result_URFtoDLF_0_ap_vld,
        result_URtoUL_0,
        result_URtoUL_0_ap_vld,
        result_UBtoDF_0,
        result_UBtoDF_0_ap_vld
);

parameter    ap_ST_fsm_state1 = 16'd1;
parameter    ap_ST_fsm_state2 = 16'd2;
parameter    ap_ST_fsm_state3 = 16'd4;
parameter    ap_ST_fsm_state4 = 16'd8;
parameter    ap_ST_fsm_state5 = 16'd16;
parameter    ap_ST_fsm_state6 = 16'd32;
parameter    ap_ST_fsm_state7 = 16'd64;
parameter    ap_ST_fsm_state8 = 16'd128;
parameter    ap_ST_fsm_state9 = 16'd256;
parameter    ap_ST_fsm_state10 = 16'd512;
parameter    ap_ST_fsm_state11 = 16'd1024;
parameter    ap_ST_fsm_state12 = 16'd2048;
parameter    ap_ST_fsm_state13 = 16'd4096;
parameter    ap_ST_fsm_state14 = 16'd8192;
parameter    ap_ST_fsm_state15 = 16'd16384;
parameter    ap_ST_fsm_state16 = 16'd32768;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] cubiecube_0_cp_address0;
output   cubiecube_0_cp_ce0;
input  [2:0] cubiecube_0_cp_q0;
output  [2:0] cubiecube_0_co_address0;
output   cubiecube_0_co_ce0;
input  [1:0] cubiecube_0_co_q0;
output  [3:0] cubiecube_0_ep_address0;
output   cubiecube_0_ep_ce0;
input  [3:0] cubiecube_0_ep_q0;
output  [3:0] cubiecube_0_eo_address0;
output   cubiecube_0_eo_ce0;
input  [0:0] cubiecube_0_eo_q0;
output  [15:0] result_twist_0;
output   result_twist_0_ap_vld;
output  [15:0] result_flip_0;
output   result_flip_0_ap_vld;
output  [15:0] result_parity_0;
output   result_parity_0_ap_vld;
output  [15:0] result_FRtoBR_0;
output   result_FRtoBR_0_ap_vld;
output  [15:0] result_URFtoDLF_0;
output   result_URFtoDLF_0_ap_vld;
output  [15:0] result_URtoUL_0;
output   result_URtoUL_0_ap_vld;
output  [15:0] result_UBtoDF_0;
output   result_UBtoDF_0_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[2:0] cubiecube_0_cp_address0;
reg cubiecube_0_cp_ce0;
reg cubiecube_0_co_ce0;
reg[3:0] cubiecube_0_ep_address0;
reg cubiecube_0_ep_ce0;
reg cubiecube_0_eo_ce0;
reg result_twist_0_ap_vld;
reg result_flip_0_ap_vld;
reg result_parity_0_ap_vld;
reg result_FRtoBR_0_ap_vld;
reg result_URFtoDLF_0_ap_vld;
reg result_URtoUL_0_ap_vld;
reg result_UBtoDF_0_ap_vld;

(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] i_fu_228_p2;
reg   [2:0] i_reg_451;
wire    ap_CS_fsm_state2;
wire   [0:0] exitcond_i_fu_222_p2;
wire   [15:0] ret_fu_261_p2;
wire    ap_CS_fsm_state3;
wire   [3:0] i_22_fu_273_p2;
reg   [3:0] i_22_reg_469;
wire    ap_CS_fsm_state4;
wire   [0:0] exitcond_i3_fu_267_p2;
wire   [14:0] tmp_113_fu_284_p1;
reg   [14:0] tmp_113_reg_479;
wire   [15:0] ret_1_fu_299_p3;
wire    ap_CS_fsm_state5;
wire   [3:0] i_i6_cast_fu_306_p1;
reg   [3:0] i_i6_cast_reg_496;
wire    ap_CS_fsm_state6;
wire   [0:0] tmp_i7_fu_310_p2;
reg   [2:0] cubiecube_0_cp_load_reg_509;
wire    ap_CS_fsm_state7;
wire  signed [3:0] j_fu_321_p2;
reg  signed [3:0] j_reg_514;
wire    ap_CS_fsm_state8;
wire   [0:0] tmp_285_i_fu_331_p2;
wire   [2:0] i_23_fu_342_p2;
wire    grp_getFRtoBR_fu_189_ap_start;
wire    grp_getFRtoBR_fu_189_ap_done;
wire    grp_getFRtoBR_fu_189_ap_idle;
wire    grp_getFRtoBR_fu_189_ap_ready;
wire   [3:0] grp_getFRtoBR_fu_189_cubiecube_0_ep_address0;
wire    grp_getFRtoBR_fu_189_cubiecube_0_ep_ce0;
wire   [15:0] grp_getFRtoBR_fu_189_ap_return;
wire    grp_getUBtoDF_fu_195_ap_start;
wire    grp_getUBtoDF_fu_195_ap_done;
wire    grp_getUBtoDF_fu_195_ap_idle;
wire    grp_getUBtoDF_fu_195_ap_ready;
wire   [3:0] grp_getUBtoDF_fu_195_cubiecube_0_ep_address0;
wire    grp_getUBtoDF_fu_195_cubiecube_0_ep_ce0;
wire   [15:0] grp_getUBtoDF_fu_195_ap_return;
wire    grp_getURtoUL_fu_201_ap_start;
wire    grp_getURtoUL_fu_201_ap_done;
wire    grp_getURtoUL_fu_201_ap_idle;
wire    grp_getURtoUL_fu_201_ap_ready;
wire   [3:0] grp_getURtoUL_fu_201_cubiecube_0_ep_address0;
wire    grp_getURtoUL_fu_201_cubiecube_0_ep_ce0;
wire   [15:0] grp_getURtoUL_fu_201_ap_return;
wire    grp_getURFtoDLF_fu_207_ap_start;
wire    grp_getURFtoDLF_fu_207_ap_done;
wire    grp_getURFtoDLF_fu_207_ap_idle;
wire    grp_getURFtoDLF_fu_207_ap_ready;
wire   [2:0] grp_getURFtoDLF_fu_207_cubiecube_0_cp_address0;
wire    grp_getURFtoDLF_fu_207_cubiecube_0_cp_ce0;
wire   [15:0] grp_getURFtoDLF_fu_207_ap_return;
wire    grp_getURtoDF_fu_213_ap_start;
wire    grp_getURtoDF_fu_213_ap_done;
wire    grp_getURtoDF_fu_213_ap_idle;
wire    grp_getURtoDF_fu_213_ap_ready;
wire   [3:0] grp_getURtoDF_fu_213_cubiecube_0_ep_address0;
wire    grp_getURtoDF_fu_213_cubiecube_0_ep_ce0;
reg   [15:0] ret_i_reg_123;
reg   [2:0] i_i_reg_135;
reg   [3:0] i_i1_reg_146;
reg   [15:0] ret_i2_reg_157;
reg   [2:0] i_i6_reg_168;
reg   [3:0] j_0_in_i_reg_180;
wire    ap_CS_fsm_state9;
reg    grp_getFRtoBR_fu_189_ap_start_reg;
wire    ap_CS_fsm_state10;
reg    grp_getUBtoDF_fu_195_ap_start_reg;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
reg    grp_getURtoUL_fu_201_ap_start_reg;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
reg    grp_getURFtoDLF_fu_207_ap_start_reg;
reg    grp_getURtoDF_fu_213_ap_start_reg;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire   [63:0] tmp_i_36_fu_234_p1;
wire   [63:0] tmp_i5_fu_279_p1;
wire   [63:0] tmp_i8_fu_316_p1;
wire   [63:0] tmp_286_i_fu_337_p1;
reg   [31:0] s_i_fu_72;
wire   [31:0] p_s_1_i_fu_359_p3;
reg    ap_block_state10_on_subcall_done;
wire   [15:0] tmp_fu_245_p2;
wire   [15:0] tmp_256_i_fu_257_p1;
wire   [15:0] tmp_i_fu_251_p2;
wire  signed [31:0] j_cast_fu_327_p1;
wire   [0:0] tmp_287_i_fu_348_p2;
wire   [31:0] s_fu_353_p2;
wire   [0:0] tmp_116_fu_408_p1;
wire   [15:0] tmp_117_fu_412_p3;
wire   [0:0] tmp_115_fu_404_p1;
wire   [0:0] tmp_114_fu_396_p3;
wire   [15:0] tmp_118_fu_420_p2;
wire   [15:0] tmp_s_fu_426_p3;
reg   [15:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 16'd1;
#0 grp_getFRtoBR_fu_189_ap_start_reg = 1'b0;
#0 grp_getUBtoDF_fu_195_ap_start_reg = 1'b0;
#0 grp_getURtoUL_fu_201_ap_start_reg = 1'b0;
#0 grp_getURFtoDLF_fu_207_ap_start_reg = 1'b0;
#0 grp_getURtoDF_fu_213_ap_start_reg = 1'b0;
end

getFRtoBR grp_getFRtoBR_fu_189(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_getFRtoBR_fu_189_ap_start),
    .ap_done(grp_getFRtoBR_fu_189_ap_done),
    .ap_idle(grp_getFRtoBR_fu_189_ap_idle),
    .ap_ready(grp_getFRtoBR_fu_189_ap_ready),
    .cubiecube_0_ep_address0(grp_getFRtoBR_fu_189_cubiecube_0_ep_address0),
    .cubiecube_0_ep_ce0(grp_getFRtoBR_fu_189_cubiecube_0_ep_ce0),
    .cubiecube_0_ep_q0(cubiecube_0_ep_q0),
    .ap_return(grp_getFRtoBR_fu_189_ap_return)
);

getUBtoDF grp_getUBtoDF_fu_195(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_getUBtoDF_fu_195_ap_start),
    .ap_done(grp_getUBtoDF_fu_195_ap_done),
    .ap_idle(grp_getUBtoDF_fu_195_ap_idle),
    .ap_ready(grp_getUBtoDF_fu_195_ap_ready),
    .cubiecube_0_ep_address0(grp_getUBtoDF_fu_195_cubiecube_0_ep_address0),
    .cubiecube_0_ep_ce0(grp_getUBtoDF_fu_195_cubiecube_0_ep_ce0),
    .cubiecube_0_ep_q0(cubiecube_0_ep_q0),
    .ap_return(grp_getUBtoDF_fu_195_ap_return)
);

getURtoUL grp_getURtoUL_fu_201(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_getURtoUL_fu_201_ap_start),
    .ap_done(grp_getURtoUL_fu_201_ap_done),
    .ap_idle(grp_getURtoUL_fu_201_ap_idle),
    .ap_ready(grp_getURtoUL_fu_201_ap_ready),
    .cubiecube_0_ep_address0(grp_getURtoUL_fu_201_cubiecube_0_ep_address0),
    .cubiecube_0_ep_ce0(grp_getURtoUL_fu_201_cubiecube_0_ep_ce0),
    .cubiecube_0_ep_q0(cubiecube_0_ep_q0),
    .ap_return(grp_getURtoUL_fu_201_ap_return)
);

getURFtoDLF grp_getURFtoDLF_fu_207(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_getURFtoDLF_fu_207_ap_start),
    .ap_done(grp_getURFtoDLF_fu_207_ap_done),
    .ap_idle(grp_getURFtoDLF_fu_207_ap_idle),
    .ap_ready(grp_getURFtoDLF_fu_207_ap_ready),
    .cubiecube_0_cp_address0(grp_getURFtoDLF_fu_207_cubiecube_0_cp_address0),
    .cubiecube_0_cp_ce0(grp_getURFtoDLF_fu_207_cubiecube_0_cp_ce0),
    .cubiecube_0_cp_q0(cubiecube_0_cp_q0),
    .ap_return(grp_getURFtoDLF_fu_207_ap_return)
);

getURtoDF grp_getURtoDF_fu_213(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_getURtoDF_fu_213_ap_start),
    .ap_done(grp_getURtoDF_fu_213_ap_done),
    .ap_idle(grp_getURtoDF_fu_213_ap_idle),
    .ap_ready(grp_getURtoDF_fu_213_ap_ready),
    .cubiecube_0_ep_address0(grp_getURtoDF_fu_213_cubiecube_0_ep_address0),
    .cubiecube_0_ep_ce0(grp_getURtoDF_fu_213_cubiecube_0_ep_ce0),
    .cubiecube_0_ep_q0(cubiecube_0_ep_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_getFRtoBR_fu_189_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state6) & (tmp_i7_fu_310_p2 == 1'd1))) begin
            grp_getFRtoBR_fu_189_ap_start_reg <= 1'b1;
        end else if ((grp_getFRtoBR_fu_189_ap_ready == 1'b1)) begin
            grp_getFRtoBR_fu_189_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_getUBtoDF_fu_195_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_getUBtoDF_fu_195_ap_start_reg <= 1'b1;
        end else if ((grp_getUBtoDF_fu_195_ap_ready == 1'b1)) begin
            grp_getUBtoDF_fu_195_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_getURFtoDLF_fu_207_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state6) & (tmp_i7_fu_310_p2 == 1'd1))) begin
            grp_getURFtoDLF_fu_207_ap_start_reg <= 1'b1;
        end else if ((grp_getURFtoDLF_fu_207_ap_ready == 1'b1)) begin
            grp_getURFtoDLF_fu_207_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_getURtoDF_fu_213_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state15)) begin
            grp_getURtoDF_fu_213_ap_start_reg <= 1'b1;
        end else if ((grp_getURtoDF_fu_213_ap_ready == 1'b1)) begin
            grp_getURtoDF_fu_213_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_getURtoUL_fu_201_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            grp_getURtoUL_fu_201_ap_start_reg <= 1'b1;
        end else if ((grp_getURtoUL_fu_201_ap_ready == 1'b1)) begin
            grp_getURtoUL_fu_201_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_i1_reg_146 <= i_22_reg_469;
    end else if (((exitcond_i_fu_222_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_i1_reg_146 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_285_i_fu_331_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        i_i6_reg_168 <= i_23_fu_342_p2;
    end else if (((1'b1 == ap_CS_fsm_state4) & (exitcond_i3_fu_267_p2 == 1'd1))) begin
        i_i6_reg_168 <= 3'd7;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_i_reg_135 <= i_reg_451;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_i_reg_135 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        j_0_in_i_reg_180 <= i_i6_cast_reg_496;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        j_0_in_i_reg_180 <= j_reg_514;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ret_i2_reg_157 <= ret_1_fu_299_p3;
    end else if (((exitcond_i_fu_222_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ret_i2_reg_157 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ret_i_reg_123 <= ret_fu_261_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ret_i_reg_123 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        s_i_fu_72 <= p_s_1_i_fu_359_p3;
    end else if (((1'b1 == ap_CS_fsm_state4) & (exitcond_i3_fu_267_p2 == 1'd1))) begin
        s_i_fu_72 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        cubiecube_0_cp_load_reg_509 <= cubiecube_0_cp_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_22_reg_469 <= i_22_fu_273_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i_i6_cast_reg_496[2 : 0] <= i_i6_cast_fu_306_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_451 <= i_fu_228_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        j_reg_514 <= j_fu_321_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i3_fu_267_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        tmp_113_reg_479 <= tmp_113_fu_284_p1;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state16) & (grp_getURtoDF_fu_213_ap_done == 1'b1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) & (grp_getURtoDF_fu_213_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cubiecube_0_co_ce0 = 1'b1;
    end else begin
        cubiecube_0_co_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cubiecube_0_cp_address0 = tmp_286_i_fu_337_p1;
    end else if (((tmp_i7_fu_310_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        cubiecube_0_cp_address0 = tmp_i8_fu_316_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cubiecube_0_cp_address0 = grp_getURFtoDLF_fu_207_cubiecube_0_cp_address0;
    end else begin
        cubiecube_0_cp_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | ((tmp_i7_fu_310_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6)))) begin
        cubiecube_0_cp_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cubiecube_0_cp_ce0 = grp_getURFtoDLF_fu_207_cubiecube_0_cp_ce0;
    end else begin
        cubiecube_0_cp_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cubiecube_0_eo_ce0 = 1'b1;
    end else begin
        cubiecube_0_eo_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        cubiecube_0_ep_address0 = grp_getURtoDF_fu_213_cubiecube_0_ep_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cubiecube_0_ep_address0 = grp_getURtoUL_fu_201_cubiecube_0_ep_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cubiecube_0_ep_address0 = grp_getUBtoDF_fu_195_cubiecube_0_ep_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cubiecube_0_ep_address0 = grp_getFRtoBR_fu_189_cubiecube_0_ep_address0;
    end else begin
        cubiecube_0_ep_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        cubiecube_0_ep_ce0 = grp_getURtoDF_fu_213_cubiecube_0_ep_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cubiecube_0_ep_ce0 = grp_getURtoUL_fu_201_cubiecube_0_ep_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cubiecube_0_ep_ce0 = grp_getUBtoDF_fu_195_cubiecube_0_ep_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cubiecube_0_ep_ce0 = grp_getFRtoBR_fu_189_cubiecube_0_ep_ce0;
    end else begin
        cubiecube_0_ep_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state10_on_subcall_done) & (1'b1 == ap_CS_fsm_state10))) begin
        result_FRtoBR_0_ap_vld = 1'b1;
    end else begin
        result_FRtoBR_0_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (grp_getUBtoDF_fu_195_ap_done == 1'b1))) begin
        result_UBtoDF_0_ap_vld = 1'b1;
    end else begin
        result_UBtoDF_0_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state10_on_subcall_done) & (1'b1 == ap_CS_fsm_state10))) begin
        result_URFtoDLF_0_ap_vld = 1'b1;
    end else begin
        result_URFtoDLF_0_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (grp_getURtoUL_fu_201_ap_done == 1'b1))) begin
        result_URtoUL_0_ap_vld = 1'b1;
    end else begin
        result_URtoUL_0_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (exitcond_i3_fu_267_p2 == 1'd1))) begin
        result_flip_0_ap_vld = 1'b1;
    end else begin
        result_flip_0_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) & (grp_getURtoDF_fu_213_ap_done == 1'b1))) begin
        result_parity_0_ap_vld = 1'b1;
    end else begin
        result_parity_0_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_i_fu_222_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        result_twist_0_ap_vld = 1'b1;
    end else begin
        result_twist_0_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond_i_fu_222_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond_i3_fu_267_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (tmp_i7_fu_310_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((tmp_285_i_fu_331_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b0 == ap_block_state10_on_subcall_done) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (grp_getURtoUL_fu_201_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((1'b1 == ap_CS_fsm_state14) & (grp_getUBtoDF_fu_195_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            if (((1'b1 == ap_CS_fsm_state16) & (grp_getURtoDF_fu_213_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state10_on_subcall_done = ((grp_getURFtoDLF_fu_207_ap_done == 1'b0) | (grp_getFRtoBR_fu_189_ap_done == 1'b0));
end

assign cubiecube_0_co_address0 = tmp_i_36_fu_234_p1;

assign cubiecube_0_eo_address0 = tmp_i5_fu_279_p1;

assign exitcond_i3_fu_267_p2 = ((i_i1_reg_146 == 4'd11) ? 1'b1 : 1'b0);

assign exitcond_i_fu_222_p2 = ((i_i_reg_135 == 3'd7) ? 1'b1 : 1'b0);

assign grp_getFRtoBR_fu_189_ap_start = grp_getFRtoBR_fu_189_ap_start_reg;

assign grp_getUBtoDF_fu_195_ap_start = grp_getUBtoDF_fu_195_ap_start_reg;

assign grp_getURFtoDLF_fu_207_ap_start = grp_getURFtoDLF_fu_207_ap_start_reg;

assign grp_getURtoDF_fu_213_ap_start = grp_getURtoDF_fu_213_ap_start_reg;

assign grp_getURtoUL_fu_201_ap_start = grp_getURtoUL_fu_201_ap_start_reg;

assign i_22_fu_273_p2 = (i_i1_reg_146 + 4'd1);

assign i_23_fu_342_p2 = ($signed(i_i6_reg_168) + $signed(3'd7));

assign i_fu_228_p2 = (i_i_reg_135 + 3'd1);

assign i_i6_cast_fu_306_p1 = i_i6_reg_168;

assign j_cast_fu_327_p1 = j_fu_321_p2;

assign j_fu_321_p2 = ($signed(j_0_in_i_reg_180) + $signed(4'd15));

assign p_s_1_i_fu_359_p3 = ((tmp_287_i_fu_348_p2[0:0] === 1'b1) ? s_fu_353_p2 : s_i_fu_72);

assign result_FRtoBR_0 = grp_getFRtoBR_fu_189_ap_return;

assign result_UBtoDF_0 = grp_getUBtoDF_fu_195_ap_return;

assign result_URFtoDLF_0 = grp_getURFtoDLF_fu_207_ap_return;

assign result_URtoUL_0 = grp_getURtoUL_fu_201_ap_return;

assign result_flip_0 = ret_i2_reg_157;

assign result_parity_0 = ((tmp_114_fu_396_p3[0:0] === 1'b1) ? tmp_118_fu_420_p2 : tmp_s_fu_426_p3);

assign result_twist_0 = ret_i_reg_123;

assign ret_1_fu_299_p3 = {{tmp_113_reg_479}, {cubiecube_0_eo_q0}};

assign ret_fu_261_p2 = (tmp_256_i_fu_257_p1 + tmp_i_fu_251_p2);

assign s_fu_353_p2 = (s_i_fu_72 + 32'd1);

assign tmp_113_fu_284_p1 = ret_i2_reg_157[14:0];

assign tmp_114_fu_396_p3 = s_i_fu_72[32'd31];

assign tmp_115_fu_404_p1 = s_i_fu_72[0:0];

assign tmp_116_fu_408_p1 = s_i_fu_72[0:0];

assign tmp_117_fu_412_p3 = {{15'd0}, {tmp_116_fu_408_p1}};

assign tmp_118_fu_420_p2 = (16'd0 - tmp_117_fu_412_p3);

assign tmp_256_i_fu_257_p1 = cubiecube_0_co_q0;

assign tmp_285_i_fu_331_p2 = (($signed(j_0_in_i_reg_180) > $signed(4'd0)) ? 1'b1 : 1'b0);

assign tmp_286_i_fu_337_p1 = $unsigned(j_cast_fu_327_p1);

assign tmp_287_i_fu_348_p2 = ((cubiecube_0_cp_q0 > cubiecube_0_cp_load_reg_509) ? 1'b1 : 1'b0);

assign tmp_fu_245_p2 = ret_i_reg_123 << 16'd2;

assign tmp_i5_fu_279_p1 = i_i1_reg_146;

assign tmp_i7_fu_310_p2 = ((i_i6_reg_168 == 3'd0) ? 1'b1 : 1'b0);

assign tmp_i8_fu_316_p1 = i_i6_reg_168;

assign tmp_i_36_fu_234_p1 = i_i_reg_135;

assign tmp_i_fu_251_p2 = (tmp_fu_245_p2 - ret_i_reg_123);

assign tmp_s_fu_426_p3 = {{15'd0}, {tmp_115_fu_404_p1}};

always @ (posedge ap_clk) begin
    i_i6_cast_reg_496[3] <= 1'b0;
end

endmodule //get_coordcube
