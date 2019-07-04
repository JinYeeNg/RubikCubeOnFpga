// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _solveStage2_HH_
#define _solveStage2_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "turnCube.h"
#include "rotateCubeHorizontal.h"
#include "findCorner.h"

namespace ap_rtl {

struct solveStage2 : public sc_module {
    // Port declarations 25
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<3> > sC_V;
    sc_in< sc_lv<3> > tC_V;
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
    sc_in< sc_lv<8> > moveCounter_V_i;
    sc_out< sc_lv<8> > moveCounter_V_o;
    sc_out< sc_logic > moveCounter_V_o_ap_vld;
    sc_out< sc_lv<8> > moves_V_address0;
    sc_out< sc_logic > moves_V_ce0;
    sc_out< sc_logic > moves_V_we0;
    sc_out< sc_lv<4> > moves_V_d0;


    // Module declarations
    solveStage2(sc_module_name name);
    SC_HAS_PROCESS(solveStage2);

    ~solveStage2();

    sc_trace_file* mVcdFile;

    turnCube* grp_turnCube_fu_75;
    rotateCubeHorizontal* grp_rotateCubeHorizontal_fu_90;
    findCorner* grp_findCorner_fu_100;
    sc_signal< sc_lv<44> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<4> > grp_findCorner_fu_100_ap_return;
    sc_signal< sc_lv<4> > reg_116;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > grp_findCorner_fu_100_ap_idle;
    sc_signal< sc_logic > grp_findCorner_fu_100_ap_ready;
    sc_signal< sc_logic > grp_findCorner_fu_100_ap_done;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_logic > grp_turnCube_fu_75_ap_start;
    sc_signal< sc_logic > grp_turnCube_fu_75_ap_done;
    sc_signal< sc_logic > grp_turnCube_fu_75_ap_idle;
    sc_signal< sc_logic > grp_turnCube_fu_75_ap_ready;
    sc_signal< sc_lv<4> > grp_turnCube_fu_75_turn_V;
    sc_signal< sc_lv<8> > grp_turnCube_fu_75_moveCounter_V_o;
    sc_signal< sc_logic > grp_turnCube_fu_75_moveCounter_V_o_ap_vld;
    sc_signal< sc_lv<8> > grp_turnCube_fu_75_moves_V_address0;
    sc_signal< sc_logic > grp_turnCube_fu_75_moves_V_ce0;
    sc_signal< sc_logic > grp_turnCube_fu_75_moves_V_we0;
    sc_signal< sc_lv<4> > grp_turnCube_fu_75_moves_V_d0;
    sc_signal< sc_lv<6> > grp_turnCube_fu_75_cubieColor_V_address0;
    sc_signal< sc_logic > grp_turnCube_fu_75_cubieColor_V_ce0;
    sc_signal< sc_logic > grp_turnCube_fu_75_cubieColor_V_we0;
    sc_signal< sc_lv<3> > grp_turnCube_fu_75_cubieColor_V_d0;
    sc_signal< sc_lv<6> > grp_turnCube_fu_75_cubieColor_V_address1;
    sc_signal< sc_logic > grp_turnCube_fu_75_cubieColor_V_ce1;
    sc_signal< sc_logic > grp_turnCube_fu_75_cubieColor_V_we1;
    sc_signal< sc_lv<3> > grp_turnCube_fu_75_cubieColor_V_d1;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_90_ap_start;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_90_ap_done;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_90_ap_idle;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_90_ap_ready;
    sc_signal< sc_lv<8> > grp_rotateCubeHorizontal_fu_90_moveCounter_V_o;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_90_moveCounter_V_o_ap_vld;
    sc_signal< sc_lv<8> > grp_rotateCubeHorizontal_fu_90_moves_V_address0;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_90_moves_V_ce0;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_90_moves_V_we0;
    sc_signal< sc_lv<4> > grp_rotateCubeHorizontal_fu_90_moves_V_d0;
    sc_signal< sc_lv<6> > grp_rotateCubeHorizontal_fu_90_cubieColor_V_address0;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_90_cubieColor_V_ce0;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_90_cubieColor_V_we0;
    sc_signal< sc_lv<3> > grp_rotateCubeHorizontal_fu_90_cubieColor_V_d0;
    sc_signal< sc_lv<6> > grp_rotateCubeHorizontal_fu_90_cubieColor_V_address1;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_90_cubieColor_V_ce1;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_90_cubieColor_V_we1;
    sc_signal< sc_lv<3> > grp_rotateCubeHorizontal_fu_90_cubieColor_V_d1;
    sc_signal< sc_logic > grp_findCorner_fu_100_ap_start;
    sc_signal< sc_lv<6> > grp_findCorner_fu_100_cubieColor_V_address0;
    sc_signal< sc_logic > grp_findCorner_fu_100_cubieColor_V_ce0;
    sc_signal< sc_lv<6> > grp_findCorner_fu_100_cubieColor_V_address1;
    sc_signal< sc_logic > grp_findCorner_fu_100_cubieColor_V_ce1;
    sc_signal< sc_logic > grp_turnCube_fu_75_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_logic > ap_CS_fsm_state29;
    sc_signal< sc_logic > ap_CS_fsm_state31;
    sc_signal< sc_logic > ap_CS_fsm_state37;
    sc_signal< sc_logic > ap_CS_fsm_state39;
    sc_signal< sc_logic > ap_CS_fsm_state41;
    sc_signal< sc_logic > ap_CS_fsm_state43;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_logic > ap_CS_fsm_state26;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_logic > ap_CS_fsm_state30;
    sc_signal< sc_logic > ap_CS_fsm_state32;
    sc_signal< sc_logic > ap_CS_fsm_state38;
    sc_signal< sc_logic > ap_CS_fsm_state40;
    sc_signal< sc_logic > ap_CS_fsm_state42;
    sc_signal< sc_logic > ap_CS_fsm_state44;
    sc_signal< sc_logic > grp_rotateCubeHorizontal_fu_90_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_logic > grp_findCorner_fu_100_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_logic > ap_CS_fsm_state33;
    sc_signal< sc_logic > ap_CS_fsm_state34;
    sc_signal< sc_logic > ap_CS_fsm_state35;
    sc_signal< sc_logic > ap_CS_fsm_state36;
    sc_signal< sc_lv<1> > grp_fu_110_p2;
    sc_signal< sc_lv<1> > tmp_fu_120_p2;
    sc_signal< sc_lv<44> > ap_NS_fsm;
    sc_signal< bool > ap_block_state10_on_subcall_done;
    sc_signal< bool > ap_block_state12_on_subcall_done;
    sc_signal< bool > ap_block_state14_on_subcall_done;
    sc_signal< bool > ap_block_state16_on_subcall_done;
    sc_signal< bool > ap_block_state18_on_subcall_done;
    sc_signal< bool > ap_block_state20_on_subcall_done;
    sc_signal< bool > ap_block_state22_on_subcall_done;
    sc_signal< bool > ap_block_state30_on_subcall_done;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<44> ap_ST_fsm_state1;
    static const sc_lv<44> ap_ST_fsm_state2;
    static const sc_lv<44> ap_ST_fsm_state3;
    static const sc_lv<44> ap_ST_fsm_state4;
    static const sc_lv<44> ap_ST_fsm_state5;
    static const sc_lv<44> ap_ST_fsm_state6;
    static const sc_lv<44> ap_ST_fsm_state7;
    static const sc_lv<44> ap_ST_fsm_state8;
    static const sc_lv<44> ap_ST_fsm_state9;
    static const sc_lv<44> ap_ST_fsm_state10;
    static const sc_lv<44> ap_ST_fsm_state11;
    static const sc_lv<44> ap_ST_fsm_state12;
    static const sc_lv<44> ap_ST_fsm_state13;
    static const sc_lv<44> ap_ST_fsm_state14;
    static const sc_lv<44> ap_ST_fsm_state15;
    static const sc_lv<44> ap_ST_fsm_state16;
    static const sc_lv<44> ap_ST_fsm_state17;
    static const sc_lv<44> ap_ST_fsm_state18;
    static const sc_lv<44> ap_ST_fsm_state19;
    static const sc_lv<44> ap_ST_fsm_state20;
    static const sc_lv<44> ap_ST_fsm_state21;
    static const sc_lv<44> ap_ST_fsm_state22;
    static const sc_lv<44> ap_ST_fsm_state23;
    static const sc_lv<44> ap_ST_fsm_state24;
    static const sc_lv<44> ap_ST_fsm_state25;
    static const sc_lv<44> ap_ST_fsm_state26;
    static const sc_lv<44> ap_ST_fsm_state27;
    static const sc_lv<44> ap_ST_fsm_state28;
    static const sc_lv<44> ap_ST_fsm_state29;
    static const sc_lv<44> ap_ST_fsm_state30;
    static const sc_lv<44> ap_ST_fsm_state31;
    static const sc_lv<44> ap_ST_fsm_state32;
    static const sc_lv<44> ap_ST_fsm_state33;
    static const sc_lv<44> ap_ST_fsm_state34;
    static const sc_lv<44> ap_ST_fsm_state35;
    static const sc_lv<44> ap_ST_fsm_state36;
    static const sc_lv<44> ap_ST_fsm_state37;
    static const sc_lv<44> ap_ST_fsm_state38;
    static const sc_lv<44> ap_ST_fsm_state39;
    static const sc_lv<44> ap_ST_fsm_state40;
    static const sc_lv<44> ap_ST_fsm_state41;
    static const sc_lv<44> ap_ST_fsm_state42;
    static const sc_lv<44> ap_ST_fsm_state43;
    static const sc_lv<44> ap_ST_fsm_state44;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<4> ap_const_lv4_3;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<4> ap_const_lv4_2;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_24;
    static const sc_lv<32> ap_const_lv32_26;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_2A;
    static const sc_lv<4> ap_const_lv4_B;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<4> ap_const_lv4_6;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_25;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<32> ap_const_lv32_29;
    static const sc_lv<32> ap_const_lv32_2B;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<6> ap_const_lv6_8;
    static const sc_lv<6> ap_const_lv6_4;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<6> ap_const_lv6_1D;
    static const sc_lv<6> ap_const_lv6_1F;
    static const sc_lv<32> ap_const_lv32_22;
    static const sc_lv<6> ap_const_lv6_2D;
    static const sc_lv<6> ap_const_lv6_31;
    static const sc_lv<32> ap_const_lv32_23;
    static const sc_lv<4> ap_const_lv4_5;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<4> ap_const_lv4_4;
    static const bool ap_const_boolean_0;
    static const sc_lv<4> ap_const_lv4_7;
    static const bool ap_const_boolean_1;
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
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state10_on_subcall_done();
    void thread_ap_block_state12_on_subcall_done();
    void thread_ap_block_state14_on_subcall_done();
    void thread_ap_block_state16_on_subcall_done();
    void thread_ap_block_state18_on_subcall_done();
    void thread_ap_block_state20_on_subcall_done();
    void thread_ap_block_state22_on_subcall_done();
    void thread_ap_block_state30_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_cubieColor_V_address0();
    void thread_cubieColor_V_address1();
    void thread_cubieColor_V_ce0();
    void thread_cubieColor_V_ce1();
    void thread_cubieColor_V_d0();
    void thread_cubieColor_V_d1();
    void thread_cubieColor_V_we0();
    void thread_cubieColor_V_we1();
    void thread_grp_findCorner_fu_100_ap_start();
    void thread_grp_fu_110_p2();
    void thread_grp_rotateCubeHorizontal_fu_90_ap_start();
    void thread_grp_turnCube_fu_75_ap_start();
    void thread_grp_turnCube_fu_75_turn_V();
    void thread_moveCounter_V_o();
    void thread_moveCounter_V_o_ap_vld();
    void thread_moves_V_address0();
    void thread_moves_V_ce0();
    void thread_moves_V_d0();
    void thread_moves_V_we0();
    void thread_tmp_fu_120_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
