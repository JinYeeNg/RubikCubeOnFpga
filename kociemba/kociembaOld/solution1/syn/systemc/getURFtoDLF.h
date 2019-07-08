// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _getURFtoDLF_HH_
#define _getURFtoDLF_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "solution_sdiv_32nkbM.h"
#include "getURFtoDLF_corner6.h"

namespace ap_rtl {

struct getURFtoDLF : public sc_module {
    // Port declarations 10
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<3> > cubiecube_0_cp_address0;
    sc_out< sc_logic > cubiecube_0_cp_ce0;
    sc_in< sc_lv<3> > cubiecube_0_cp_q0;
    sc_out< sc_lv<16> > ap_return;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    getURFtoDLF(sc_module_name name);
    SC_HAS_PROCESS(getURFtoDLF);

    ~getURFtoDLF();

    sc_trace_file* mVcdFile;

    getURFtoDLF_corner6* corner6_U;
    solution_sdiv_32nkbM<1,36,32,32,32>* solution_sdiv_32nkbM_U38;
    sc_signal< sc_lv<50> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<3> > indvarinc_fu_241_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<32> > n_assign_cast3_fu_268_p1;
    sc_signal< sc_lv<32> > n_assign_cast3_reg_502;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<4> > j_8_fu_278_p2;
    sc_signal< sc_lv<4> > j_8_reg_512;
    sc_signal< sc_lv<1> > exitcond_fu_272_p2;
    sc_signal< sc_lv<3> > cubiecube_0_cp_load_reg_527;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > tmp_258_fu_289_p2;
    sc_signal< sc_lv<1> > tmp_258_reg_532;
    sc_signal< sc_lv<32> > x_3_fu_295_p2;
    sc_signal< sc_lv<32> > x_3_reg_536;
    sc_signal< sc_lv<1> > tmp_i_fu_301_p2;
    sc_signal< sc_lv<1> > tmp_i_reg_541;
    sc_signal< sc_lv<32> > tmp_364_i_fu_339_p2;
    sc_signal< sc_lv<32> > tmp_364_i_reg_545;
    sc_signal< sc_lv<32> > s_fu_350_p2;
    sc_signal< sc_lv<32> > s_reg_553;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > exitcond_i_fu_345_p2;
    sc_signal< sc_lv<32> > i_21_fu_356_p2;
    sc_signal< sc_lv<32> > i_21_reg_558;
    sc_signal< sc_lv<32> > j_9_fu_376_p2;
    sc_signal< sc_lv<32> > j_9_reg_563;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<32> > grp_fu_371_p2;
    sc_signal< sc_logic > ap_CS_fsm_state41;
    sc_signal< sc_lv<3> > corner6_addr_1_reg_576;
    sc_signal< sc_logic > ap_CS_fsm_state43;
    sc_signal< sc_lv<1> > tmp_259_fu_393_p2;
    sc_signal< sc_lv<32> > tmp_260_fu_404_p2;
    sc_signal< sc_lv<32> > tmp_260_reg_581;
    sc_signal< sc_lv<32> > k_2_fu_416_p2;
    sc_signal< sc_lv<32> > k_2_reg_589;
    sc_signal< sc_logic > ap_CS_fsm_state45;
    sc_signal< sc_lv<32> > tmp_265_fu_432_p2;
    sc_signal< sc_lv<32> > tmp_265_reg_594;
    sc_signal< sc_lv<1> > tmp_263_fu_410_p2;
    sc_signal< sc_lv<3> > corner6_q0;
    sc_signal< sc_lv<3> > temp_reg_599;
    sc_signal< sc_logic > ap_CS_fsm_state46;
    sc_signal< sc_lv<3> > i_22_fu_444_p2;
    sc_signal< sc_lv<3> > i_22_reg_607;
    sc_signal< sc_logic > ap_CS_fsm_state47;
    sc_signal< sc_lv<1> > exitcond5_fu_438_p2;
    sc_signal< sc_lv<32> > b_2_fu_460_p2;
    sc_signal< sc_logic > ap_CS_fsm_state49;
    sc_signal< sc_lv<3> > j_fu_465_p2;
    sc_signal< sc_lv<3> > corner6_address0;
    sc_signal< sc_logic > corner6_ce0;
    sc_signal< sc_logic > corner6_we0;
    sc_signal< sc_lv<3> > corner6_d0;
    sc_signal< sc_lv<3> > invdar_reg_119;
    sc_signal< sc_lv<1> > tmp_s_fu_252_p2;
    sc_signal< sc_lv<4> > i_reg_130;
    sc_signal< sc_logic > ap_CS_fsm_state42;
    sc_signal< sc_lv<32> > j_i_reg_142;
    sc_signal< sc_lv<32> > i_i_reg_154;
    sc_signal< sc_lv<32> > s_i_reg_163;
    sc_signal< sc_lv<32> > p_0_i_reg_175;
    sc_signal< sc_lv<3> > r_assign_reg_187;
    sc_signal< sc_lv<32> > b_reg_199;
    sc_signal< sc_lv<32> > k_reg_211;
    sc_signal< sc_lv<3> > i_i2_reg_223;
    sc_signal< sc_logic > ap_CS_fsm_state48;
    sc_signal< sc_lv<64> > tmp_fu_247_p1;
    sc_signal< sc_lv<64> > tmp_257_fu_284_p1;
    sc_signal< sc_lv<64> > tmp_266_fu_362_p1;
    sc_signal< sc_lv<64> > tmp_262_fu_399_p1;
    sc_signal< sc_lv<64> > tmp_i4_fu_450_p1;
    sc_signal< sc_lv<64> > tmp_287_i_fu_455_p1;
    sc_signal< sc_lv<32> > a_fu_50;
    sc_signal< sc_lv<32> > a_2_fu_382_p2;
    sc_signal< sc_lv<32> > x_fu_54;
    sc_signal< sc_logic > ap_CS_fsm_state44;
    sc_signal< sc_lv<2> > p_lshr_f_i_cast_fu_306_p4;
    sc_signal< sc_lv<32> > tmp_i_cast_fu_316_p1;
    sc_signal< sc_lv<1> > tmp_363_i_fu_320_p2;
    sc_signal< sc_lv<32> > k_assign_2_fu_326_p2;
    sc_signal< sc_lv<32> > p_k_i_fu_331_p3;
    sc_signal< sc_lv<32> > tmp_266_fu_362_p0;
    sc_signal< sc_lv<32> > tmp_260_fu_404_p1;
    sc_signal< sc_lv<3> > tmp_264_fu_422_p2;
    sc_signal< sc_lv<3> > tmp_265_fu_432_p0;
    sc_signal< sc_logic > ap_CS_fsm_state50;
    sc_signal< sc_lv<32> > tmp_261_fu_471_p2;
    sc_signal< sc_logic > grp_fu_371_ap_start;
    sc_signal< sc_logic > grp_fu_371_ap_done;
    sc_signal< sc_lv<50> > ap_NS_fsm;
    sc_signal< sc_lv<32> > tmp_265_fu_432_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<50> ap_ST_fsm_state1;
    static const sc_lv<50> ap_ST_fsm_state2;
    static const sc_lv<50> ap_ST_fsm_state3;
    static const sc_lv<50> ap_ST_fsm_state4;
    static const sc_lv<50> ap_ST_fsm_state5;
    static const sc_lv<50> ap_ST_fsm_state6;
    static const sc_lv<50> ap_ST_fsm_state7;
    static const sc_lv<50> ap_ST_fsm_state8;
    static const sc_lv<50> ap_ST_fsm_state9;
    static const sc_lv<50> ap_ST_fsm_state10;
    static const sc_lv<50> ap_ST_fsm_state11;
    static const sc_lv<50> ap_ST_fsm_state12;
    static const sc_lv<50> ap_ST_fsm_state13;
    static const sc_lv<50> ap_ST_fsm_state14;
    static const sc_lv<50> ap_ST_fsm_state15;
    static const sc_lv<50> ap_ST_fsm_state16;
    static const sc_lv<50> ap_ST_fsm_state17;
    static const sc_lv<50> ap_ST_fsm_state18;
    static const sc_lv<50> ap_ST_fsm_state19;
    static const sc_lv<50> ap_ST_fsm_state20;
    static const sc_lv<50> ap_ST_fsm_state21;
    static const sc_lv<50> ap_ST_fsm_state22;
    static const sc_lv<50> ap_ST_fsm_state23;
    static const sc_lv<50> ap_ST_fsm_state24;
    static const sc_lv<50> ap_ST_fsm_state25;
    static const sc_lv<50> ap_ST_fsm_state26;
    static const sc_lv<50> ap_ST_fsm_state27;
    static const sc_lv<50> ap_ST_fsm_state28;
    static const sc_lv<50> ap_ST_fsm_state29;
    static const sc_lv<50> ap_ST_fsm_state30;
    static const sc_lv<50> ap_ST_fsm_state31;
    static const sc_lv<50> ap_ST_fsm_state32;
    static const sc_lv<50> ap_ST_fsm_state33;
    static const sc_lv<50> ap_ST_fsm_state34;
    static const sc_lv<50> ap_ST_fsm_state35;
    static const sc_lv<50> ap_ST_fsm_state36;
    static const sc_lv<50> ap_ST_fsm_state37;
    static const sc_lv<50> ap_ST_fsm_state38;
    static const sc_lv<50> ap_ST_fsm_state39;
    static const sc_lv<50> ap_ST_fsm_state40;
    static const sc_lv<50> ap_ST_fsm_state41;
    static const sc_lv<50> ap_ST_fsm_state42;
    static const sc_lv<50> ap_ST_fsm_state43;
    static const sc_lv<50> ap_ST_fsm_state44;
    static const sc_lv<50> ap_ST_fsm_state45;
    static const sc_lv<50> ap_ST_fsm_state46;
    static const sc_lv<50> ap_ST_fsm_state47;
    static const sc_lv<50> ap_ST_fsm_state48;
    static const sc_lv<50> ap_ST_fsm_state49;
    static const sc_lv<50> ap_ST_fsm_state50;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_2A;
    static const sc_lv<32> ap_const_lv32_2C;
    static const sc_lv<32> ap_const_lv32_2D;
    static const sc_lv<32> ap_const_lv32_2E;
    static const sc_lv<32> ap_const_lv32_30;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_29;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<32> ap_const_lv32_2F;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<32> ap_const_lv32_2B;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<32> ap_const_lv32_2D0;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<32> ap_const_lv32_31;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_a_2_fu_382_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
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
    void thread_ap_CS_fsm_state6();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_b_2_fu_460_p2();
    void thread_corner6_address0();
    void thread_corner6_ce0();
    void thread_corner6_d0();
    void thread_corner6_we0();
    void thread_cubiecube_0_cp_address0();
    void thread_cubiecube_0_cp_ce0();
    void thread_exitcond5_fu_438_p2();
    void thread_exitcond_fu_272_p2();
    void thread_exitcond_i_fu_345_p2();
    void thread_grp_fu_371_ap_start();
    void thread_i_21_fu_356_p2();
    void thread_i_22_fu_444_p2();
    void thread_indvarinc_fu_241_p2();
    void thread_j_8_fu_278_p2();
    void thread_j_9_fu_376_p2();
    void thread_j_fu_465_p2();
    void thread_k_2_fu_416_p2();
    void thread_k_assign_2_fu_326_p2();
    void thread_n_assign_cast3_fu_268_p1();
    void thread_p_k_i_fu_331_p3();
    void thread_p_lshr_f_i_cast_fu_306_p4();
    void thread_s_fu_350_p2();
    void thread_tmp_257_fu_284_p1();
    void thread_tmp_258_fu_289_p2();
    void thread_tmp_259_fu_393_p2();
    void thread_tmp_260_fu_404_p1();
    void thread_tmp_260_fu_404_p2();
    void thread_tmp_261_fu_471_p2();
    void thread_tmp_262_fu_399_p1();
    void thread_tmp_263_fu_410_p2();
    void thread_tmp_264_fu_422_p2();
    void thread_tmp_265_fu_432_p0();
    void thread_tmp_265_fu_432_p00();
    void thread_tmp_265_fu_432_p2();
    void thread_tmp_266_fu_362_p0();
    void thread_tmp_266_fu_362_p1();
    void thread_tmp_287_i_fu_455_p1();
    void thread_tmp_363_i_fu_320_p2();
    void thread_tmp_364_i_fu_339_p2();
    void thread_tmp_fu_247_p1();
    void thread_tmp_i4_fu_450_p1();
    void thread_tmp_i_cast_fu_316_p1();
    void thread_tmp_i_fu_301_p2();
    void thread_tmp_s_fu_252_p2();
    void thread_x_3_fu_295_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif