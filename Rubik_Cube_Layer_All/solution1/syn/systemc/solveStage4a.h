// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _solveStage4a_HH_
#define _solveStage4a_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "turnCube.h"
#include "rotateCubeHorizontal.h"

namespace ap_rtl {

struct solveStage4a : public sc_module {
    // Port declarations 23
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > moveCounter_V_i;
    sc_out< sc_lv<8> > moveCounter_V_o;
    sc_out< sc_logic > moveCounter_V_o_ap_vld;
    sc_out< sc_lv<8> > moves_V_address0;
    sc_out< sc_logic > moves_V_ce0;
    sc_out< sc_logic > moves_V_we0;
    sc_out< sc_lv<4> > moves_V_d0;
    sc_out< sc_lv<6> > cubieColor_V_address0;
    sc_out< sc_logic > cubieColor_V_ce0;
    sc_out< sc_logic > cubieColor_V_we0;
    sc_out< sc_lv<3> > cubieColor_V_d0;
    sc_in< sc_lv<3> > cubieColor_V_q0;
    sc_out< sc_lv<6> > cubieColor_V_address1;
    sc_out< sc_logic > cubieColor_V_ce1;
    sc_out< sc_logic > cubieColor_V_we1;
    sc_out< sc_lv<3> > cubieColor_V_d1;
    sc_in< sc_lv<3> > cubieColor_V_q1;


    // Module declarations
    solveStage4a(sc_module_name name);
    SC_HAS_PROCESS(solveStage4a);

    ~solveStage4a();

    sc_trace_file* mVcdFile;

    turnCube* grp_turnCube_fu_61;
    rotateCubeHorizontal* grp_rotateCubeHorizontal_fu_78;
    sc_signal< sc_lv<63> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<3> > reg_103;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_logic > ap_CS_fsm_state47;
    sc_signal< sc_lv<3> > reg_112;
    sc_signal< sc_logic > ap_CS_fsm_state48;
    sc_signal< sc_lv<1> > grp_fu_88_p2;
    sc_signal< sc_lv<1> > tmp_reg_227;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > grp_fu_93_p2;
    sc_signal< sc_lv<1> > tmp_s_reg_232;
    sc_signal< sc_lv<1> > or_cond7_fu_134_p2;
    sc_signal< sc_lv<1> > or_cond7_reg_237;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > grp_fu_118_p2;
    sc_signal< sc_lv<1> > tmp_17_reg_241;
    sc_signal< sc_lv<1> > tmp_18_fu_140_p2;
    sc_signal< sc_lv<1> > tmp_18_reg_245;
    sc_signal< sc_lv<1> > tmp_20_fu_146_p2;
    sc_signal< sc_lv<1> > tmp_20_reg_252;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_lv<1> > tmp_21_fu_152_p2;
    sc_signal< sc_lv<1> > tmp_21_reg_256;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_lv<1> > grp_fu_98_p2;
    sc_signal< sc_lv<1> > tmp_22_reg_260;
    sc_signal< sc_lv<1> > or_cond_fu_181_p2;
    sc_signal< sc_lv<1> > or_cond_reg_267;
    sc_signal< sc_logic > ap_CS_fsm_state49;
    sc_signal< sc_lv<1> > brmerge1_fu_210_p2;
    sc_signal< sc_lv<1> > brmerge1_reg_271;
    sc_signal< sc_logic > grp_turnCube_fu_61_ap_start;
    sc_signal< sc_logic > grp_turnCube_fu_61_ap_done;
    sc_signal< sc_logic > grp_turnCube_fu_61_ap_idle;
    sc_signal< sc_logic > grp_turnCube_fu_61_ap_ready;
    sc_signal< sc_lv<4> > grp_turnCube_fu_61_turn_V;
    sc_signal< sc_lv<8> > grp_turnCube_fu_61_moveCounter_V_o;
    sc_signal< sc_logic > grp_turnCube_fu_61_moveCounter_V_o_ap_vld;
    sc_signal< sc_lv<8> > grp_turnCube_fu_61_moves_V_address0;
    sc_signal< sc_logic > grp_turnCube_fu_61_moves_V_ce0;
    sc_signal< sc_logic > grp_turnCube_fu_61_moves_V_we0;
    sc_signal< sc_lv<4> > grp_turnCube_fu_61_moves_V_d0;
    sc_signal< sc_lv<6> > grp_turnCube_fu_61_cubieColor_V_address0;
    sc_signal< sc_logic > grp_turnCube_fu_61_cubieColor_V_ce0;
    sc_signal< sc_logic > grp_turnCube_fu_61_cubieColor_V_we0;
    sc_signal< sc_lv<3> > grp_turnCube_fu_61_cubieColor_V_d0;
    sc_signal< sc_lv<6> > grp_turnCube_fu_61_cubieColor_V_address1;
    sc_signal< sc_logic > grp_turnCube_fu_61_cubieColor_V_ce1;
    sc_signal< sc_logic > grp_turnCube_fu_61_cubieColor_V_we1;
    sc_signal< sc_lv<3> > grp_turnCube_fu_61_cubieColor_V_d1;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_78_ap_start;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_78_ap_done;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_78_ap_idle;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_78_ap_ready;
    sc_signal< sc_lv<8> > grp_rotateCubeHorizontal_fu_78_moveCounter_V_o;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_78_moveCounter_V_o_ap_vld;
    sc_signal< sc_lv<8> > grp_rotateCubeHorizontal_fu_78_moves_V_address0;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_78_moves_V_ce0;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_78_moves_V_we0;
    sc_signal< sc_lv<4> > grp_rotateCubeHorizontal_fu_78_moves_V_d0;
    sc_signal< sc_lv<6> > grp_rotateCubeHorizontal_fu_78_cubieColor_V_address0;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_78_cubieColor_V_ce0;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_78_cubieColor_V_we0;
    sc_signal< sc_lv<3> > grp_rotateCubeHorizontal_fu_78_cubieColor_V_d0;
    sc_signal< sc_lv<6> > grp_rotateCubeHorizontal_fu_78_cubieColor_V_address1;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_78_cubieColor_V_ce1;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_78_cubieColor_V_we1;
    sc_signal< sc_lv<3> > grp_rotateCubeHorizontal_fu_78_cubieColor_V_d1;
    sc_signal< sc_lv<3> > tmp_26_reg_52;
    sc_signal< sc_logic > grp_turnCube_fu_61_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > ap_CS_fsm_state34;
    sc_signal< sc_logic > ap_CS_fsm_state36;
    sc_signal< sc_logic > ap_CS_fsm_state38;
    sc_signal< sc_logic > ap_CS_fsm_state40;
    sc_signal< sc_logic > ap_CS_fsm_state42;
    sc_signal< sc_logic > ap_CS_fsm_state44;
    sc_signal< sc_logic > ap_CS_fsm_state52;
    sc_signal< sc_logic > ap_CS_fsm_state54;
    sc_signal< sc_logic > ap_CS_fsm_state56;
    sc_signal< sc_logic > ap_CS_fsm_state58;
    sc_signal< sc_logic > ap_CS_fsm_state60;
    sc_signal< sc_logic > ap_CS_fsm_state62;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > ap_CS_fsm_state35;
    sc_signal< sc_logic > ap_CS_fsm_state37;
    sc_signal< sc_logic > ap_CS_fsm_state39;
    sc_signal< sc_logic > ap_CS_fsm_state41;
    sc_signal< sc_logic > ap_CS_fsm_state43;
    sc_signal< sc_logic > ap_CS_fsm_state45;
    sc_signal< sc_logic > ap_CS_fsm_state53;
    sc_signal< sc_logic > ap_CS_fsm_state55;
    sc_signal< sc_logic > ap_CS_fsm_state57;
    sc_signal< sc_logic > ap_CS_fsm_state59;
    sc_signal< sc_logic > ap_CS_fsm_state61;
    sc_signal< sc_logic > ap_CS_fsm_state63;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_78_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_logic > ap_CS_fsm_state26;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_logic > ap_CS_fsm_state30;
    sc_signal< sc_logic > ap_CS_fsm_state32;
    sc_signal< sc_logic > ap_CS_fsm_state50;
    sc_signal< sc_lv<1> > or_cond1_fu_222_p2;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_logic > ap_CS_fsm_state29;
    sc_signal< sc_logic > ap_CS_fsm_state31;
    sc_signal< sc_logic > ap_CS_fsm_state33;
    sc_signal< sc_logic > ap_CS_fsm_state51;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_logic > ap_CS_fsm_state46;
    sc_signal< sc_lv<1> > tmp3_fu_128_p2;
    sc_signal< sc_lv<1> > tmp2_fu_124_p2;
    sc_signal< sc_lv<1> > tmp_23_fu_158_p2;
    sc_signal< sc_lv<1> > or_cond8_fu_164_p2;
    sc_signal< sc_lv<1> > or_cond75_not_fu_169_p2;
    sc_signal< sc_lv<1> > tmp4_fu_175_p2;
    sc_signal< sc_lv<1> > notrhs_fu_193_p2;
    sc_signal< sc_lv<1> > notlhs_fu_187_p2;
    sc_signal< sc_lv<1> > tmp6_fu_205_p2;
    sc_signal< sc_lv<1> > tmp5_fu_199_p2;
    sc_signal< sc_lv<1> > tmp_27_fu_216_p2;
    sc_signal< bool > ap_predicate_op189_call_state63;
    sc_signal< bool > ap_block_state63_on_subcall_done;
    sc_signal< sc_lv<63> > ap_NS_fsm;
    sc_signal< bool > ap_block_state16_on_subcall_done;
    sc_signal< bool > ap_block_state23_on_subcall_done;
    sc_signal< bool > ap_block_state27_on_subcall_done;
    sc_signal< bool > ap_predicate_op144_call_state45;
    sc_signal< bool > ap_block_state45_on_subcall_done;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<63> ap_ST_fsm_state1;
    static const sc_lv<63> ap_ST_fsm_state2;
    static const sc_lv<63> ap_ST_fsm_state3;
    static const sc_lv<63> ap_ST_fsm_state4;
    static const sc_lv<63> ap_ST_fsm_state5;
    static const sc_lv<63> ap_ST_fsm_state6;
    static const sc_lv<63> ap_ST_fsm_state7;
    static const sc_lv<63> ap_ST_fsm_state8;
    static const sc_lv<63> ap_ST_fsm_state9;
    static const sc_lv<63> ap_ST_fsm_state10;
    static const sc_lv<63> ap_ST_fsm_state11;
    static const sc_lv<63> ap_ST_fsm_state12;
    static const sc_lv<63> ap_ST_fsm_state13;
    static const sc_lv<63> ap_ST_fsm_state14;
    static const sc_lv<63> ap_ST_fsm_state15;
    static const sc_lv<63> ap_ST_fsm_state16;
    static const sc_lv<63> ap_ST_fsm_state17;
    static const sc_lv<63> ap_ST_fsm_state18;
    static const sc_lv<63> ap_ST_fsm_state19;
    static const sc_lv<63> ap_ST_fsm_state20;
    static const sc_lv<63> ap_ST_fsm_state21;
    static const sc_lv<63> ap_ST_fsm_state22;
    static const sc_lv<63> ap_ST_fsm_state23;
    static const sc_lv<63> ap_ST_fsm_state24;
    static const sc_lv<63> ap_ST_fsm_state25;
    static const sc_lv<63> ap_ST_fsm_state26;
    static const sc_lv<63> ap_ST_fsm_state27;
    static const sc_lv<63> ap_ST_fsm_state28;
    static const sc_lv<63> ap_ST_fsm_state29;
    static const sc_lv<63> ap_ST_fsm_state30;
    static const sc_lv<63> ap_ST_fsm_state31;
    static const sc_lv<63> ap_ST_fsm_state32;
    static const sc_lv<63> ap_ST_fsm_state33;
    static const sc_lv<63> ap_ST_fsm_state34;
    static const sc_lv<63> ap_ST_fsm_state35;
    static const sc_lv<63> ap_ST_fsm_state36;
    static const sc_lv<63> ap_ST_fsm_state37;
    static const sc_lv<63> ap_ST_fsm_state38;
    static const sc_lv<63> ap_ST_fsm_state39;
    static const sc_lv<63> ap_ST_fsm_state40;
    static const sc_lv<63> ap_ST_fsm_state41;
    static const sc_lv<63> ap_ST_fsm_state42;
    static const sc_lv<63> ap_ST_fsm_state43;
    static const sc_lv<63> ap_ST_fsm_state44;
    static const sc_lv<63> ap_ST_fsm_state45;
    static const sc_lv<63> ap_ST_fsm_state46;
    static const sc_lv<63> ap_ST_fsm_state47;
    static const sc_lv<63> ap_ST_fsm_state48;
    static const sc_lv<63> ap_ST_fsm_state49;
    static const sc_lv<63> ap_ST_fsm_state50;
    static const sc_lv<63> ap_ST_fsm_state51;
    static const sc_lv<63> ap_ST_fsm_state52;
    static const sc_lv<63> ap_ST_fsm_state53;
    static const sc_lv<63> ap_ST_fsm_state54;
    static const sc_lv<63> ap_ST_fsm_state55;
    static const sc_lv<63> ap_ST_fsm_state56;
    static const sc_lv<63> ap_ST_fsm_state57;
    static const sc_lv<63> ap_ST_fsm_state58;
    static const sc_lv<63> ap_ST_fsm_state59;
    static const sc_lv<63> ap_ST_fsm_state60;
    static const sc_lv<63> ap_ST_fsm_state61;
    static const sc_lv<63> ap_ST_fsm_state62;
    static const sc_lv<63> ap_ST_fsm_state63;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_2E;
    static const sc_lv<32> ap_const_lv32_2F;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_30;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<32> ap_const_lv32_23;
    static const sc_lv<32> ap_const_lv32_25;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<32> ap_const_lv32_29;
    static const sc_lv<32> ap_const_lv32_2B;
    static const sc_lv<32> ap_const_lv32_33;
    static const sc_lv<32> ap_const_lv32_35;
    static const sc_lv<32> ap_const_lv32_37;
    static const sc_lv<32> ap_const_lv32_39;
    static const sc_lv<32> ap_const_lv32_3B;
    static const sc_lv<32> ap_const_lv32_3D;
    static const sc_lv<4> ap_const_lv4_6;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<4> ap_const_lv4_B;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<4> ap_const_lv4_7;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_22;
    static const sc_lv<32> ap_const_lv32_24;
    static const sc_lv<32> ap_const_lv32_26;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_2A;
    static const sc_lv<32> ap_const_lv32_2C;
    static const sc_lv<32> ap_const_lv32_34;
    static const sc_lv<32> ap_const_lv32_36;
    static const sc_lv<32> ap_const_lv32_38;
    static const sc_lv<32> ap_const_lv32_3A;
    static const sc_lv<32> ap_const_lv32_3C;
    static const sc_lv<32> ap_const_lv32_3E;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_31;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_32;
    static const sc_lv<6> ap_const_lv6_4;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<6> ap_const_lv6_3;
    static const sc_lv<6> ap_const_lv6_5;
    static const sc_lv<6> ap_const_lv6_7;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_2D;
    static const bool ap_const_boolean_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state26();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state28();
    void thread_ap_CS_fsm_state29();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state30();
    void thread_ap_CS_fsm_state31();
    void thread_ap_CS_fsm_state32();
    void thread_ap_CS_fsm_state33();
    void thread_ap_CS_fsm_state34();
    void thread_ap_CS_fsm_state35();
    void thread_ap_CS_fsm_state36();
    void thread_ap_CS_fsm_state37();
    void thread_ap_CS_fsm_state38();
    void thread_ap_CS_fsm_state39();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state40();
    void thread_ap_CS_fsm_state41();
    void thread_ap_CS_fsm_state42();
    void thread_ap_CS_fsm_state43();
    void thread_ap_CS_fsm_state44();
    void thread_ap_CS_fsm_state45();
    void thread_ap_CS_fsm_state46();
    void thread_ap_CS_fsm_state47();
    void thread_ap_CS_fsm_state48();
    void thread_ap_CS_fsm_state49();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state50();
    void thread_ap_CS_fsm_state51();
    void thread_ap_CS_fsm_state52();
    void thread_ap_CS_fsm_state53();
    void thread_ap_CS_fsm_state54();
    void thread_ap_CS_fsm_state55();
    void thread_ap_CS_fsm_state56();
    void thread_ap_CS_fsm_state57();
    void thread_ap_CS_fsm_state58();
    void thread_ap_CS_fsm_state59();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state60();
    void thread_ap_CS_fsm_state61();
    void thread_ap_CS_fsm_state62();
    void thread_ap_CS_fsm_state63();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state16_on_subcall_done();
    void thread_ap_block_state23_on_subcall_done();
    void thread_ap_block_state27_on_subcall_done();
    void thread_ap_block_state45_on_subcall_done();
    void thread_ap_block_state63_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_predicate_op144_call_state45();
    void thread_ap_predicate_op189_call_state63();
    void thread_ap_ready();
    void thread_brmerge1_fu_210_p2();
    void thread_cubieColor_V_address0();
    void thread_cubieColor_V_address1();
    void thread_cubieColor_V_ce0();
    void thread_cubieColor_V_ce1();
    void thread_cubieColor_V_d0();
    void thread_cubieColor_V_d1();
    void thread_cubieColor_V_we0();
    void thread_cubieColor_V_we1();
    void thread_grp_fu_118_p2();
    void thread_grp_fu_88_p2();
    void thread_grp_fu_93_p2();
    void thread_grp_fu_98_p2();
    void thread_grp_rotateCubeHorizontal_fu_78_ap_start();
    void thread_grp_turnCube_fu_61_ap_start();
    void thread_grp_turnCube_fu_61_turn_V();
    void thread_moveCounter_V_o();
    void thread_moveCounter_V_o_ap_vld();
    void thread_moves_V_address0();
    void thread_moves_V_ce0();
    void thread_moves_V_d0();
    void thread_moves_V_we0();
    void thread_notlhs_fu_187_p2();
    void thread_notrhs_fu_193_p2();
    void thread_or_cond1_fu_222_p2();
    void thread_or_cond75_not_fu_169_p2();
    void thread_or_cond7_fu_134_p2();
    void thread_or_cond8_fu_164_p2();
    void thread_or_cond_fu_181_p2();
    void thread_tmp2_fu_124_p2();
    void thread_tmp3_fu_128_p2();
    void thread_tmp4_fu_175_p2();
    void thread_tmp5_fu_199_p2();
    void thread_tmp6_fu_205_p2();
    void thread_tmp_18_fu_140_p2();
    void thread_tmp_20_fu_146_p2();
    void thread_tmp_21_fu_152_p2();
    void thread_tmp_23_fu_158_p2();
    void thread_tmp_27_fu_216_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
