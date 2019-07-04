// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _toCubieCube_HH_
#define _toCubieCube_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "convert_edge.h"
#include "toCubieCube_cornebkb.h"
#include "toCubieCube_cornecud.h"
#include "toCubieCube_cornedEe.h"
#include "toCubieCube_edgeFeOg.h"
#include "toCubieCube_edgeFfYi.h"
#include "toCubieCube_edgeCg8j.h"
#include "toCubieCube_edgeChbi.h"

namespace ap_rtl {

struct toCubieCube : public sc_module {
    // Port declarations 28
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > facecube_0_f_address0;
    sc_out< sc_logic > facecube_0_f_ce0;
    sc_in< sc_lv<3> > facecube_0_f_q0;
    sc_out< sc_lv<6> > facecube_0_f_address1;
    sc_out< sc_logic > facecube_0_f_ce1;
    sc_in< sc_lv<3> > facecube_0_f_q1;
    sc_out< sc_lv<3> > ccRet_cp_0_address0;
    sc_out< sc_logic > ccRet_cp_0_ce0;
    sc_out< sc_logic > ccRet_cp_0_we0;
    sc_out< sc_lv<3> > ccRet_cp_0_d0;
    sc_out< sc_lv<4> > ccRet_ep_0_address0;
    sc_out< sc_logic > ccRet_ep_0_ce0;
    sc_out< sc_logic > ccRet_ep_0_we0;
    sc_out< sc_lv<4> > ccRet_ep_0_d0;
    sc_out< sc_lv<3> > ccRet_co_0_address0;
    sc_out< sc_logic > ccRet_co_0_ce0;
    sc_out< sc_logic > ccRet_co_0_we0;
    sc_out< sc_lv<2> > ccRet_co_0_d0;
    sc_out< sc_lv<4> > ccRet_eo_0_address0;
    sc_out< sc_logic > ccRet_eo_0_ce0;
    sc_out< sc_logic > ccRet_eo_0_we0;
    sc_out< sc_lv<1> > ccRet_eo_0_d0;


    // Module declarations
    toCubieCube(sc_module_name name);
    SC_HAS_PROCESS(toCubieCube);

    ~toCubieCube();

    sc_trace_file* mVcdFile;

    toCubieCube_cornebkb* cornerFacelet_U;
    toCubieCube_cornecud* cornerColor_1_U;
    toCubieCube_cornedEe* cornerColor_2_U;
    toCubieCube_edgeFeOg* edgeFacelet_0_U;
    toCubieCube_edgeFfYi* edgeFacelet_1_U;
    toCubieCube_edgeCg8j* edgeColor_0_U;
    toCubieCube_edgeChbi* edgeColor_1_U;
    convert_edge* grp_convert_edge_fu_430;
    sc_signal< sc_lv<22> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > cornerFacelet_address0;
    sc_signal< sc_logic > cornerFacelet_ce0;
    sc_signal< sc_lv<6> > cornerFacelet_q0;
    sc_signal< sc_lv<5> > cornerFacelet_address1;
    sc_signal< sc_logic > cornerFacelet_ce1;
    sc_signal< sc_lv<6> > cornerFacelet_q1;
    sc_signal< sc_lv<3> > cornerColor_1_address0;
    sc_signal< sc_logic > cornerColor_1_ce0;
    sc_signal< sc_lv<3> > cornerColor_1_q0;
    sc_signal< sc_lv<3> > cornerColor_2_address0;
    sc_signal< sc_logic > cornerColor_2_ce0;
    sc_signal< sc_lv<3> > cornerColor_2_q0;
    sc_signal< sc_lv<4> > edgeFacelet_0_address0;
    sc_signal< sc_logic > edgeFacelet_0_ce0;
    sc_signal< sc_lv<6> > edgeFacelet_0_q0;
    sc_signal< sc_lv<4> > edgeFacelet_1_address0;
    sc_signal< sc_logic > edgeFacelet_1_ce0;
    sc_signal< sc_lv<6> > edgeFacelet_1_q0;
    sc_signal< sc_lv<4> > edgeColor_0_address0;
    sc_signal< sc_logic > edgeColor_0_ce0;
    sc_signal< sc_lv<3> > edgeColor_0_q0;
    sc_signal< sc_lv<4> > edgeColor_1_address0;
    sc_signal< sc_logic > edgeColor_1_ce0;
    sc_signal< sc_lv<3> > edgeColor_1_q0;
    sc_signal< sc_lv<3> > reg_437;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<3> > reg_442;
    sc_signal< sc_lv<4> > i_8_fu_453_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<4> > i_9_fu_470_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<4> > i_10_fu_487_p2;
    sc_signal< sc_lv<4> > i_10_reg_1011;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<64> > tmp_20_fu_493_p1;
    sc_signal< sc_lv<64> > tmp_20_reg_1016;
    sc_signal< sc_lv<1> > exitcond8_fu_481_p2;
    sc_signal< sc_lv<6> > tmp_31_fu_509_p2;
    sc_signal< sc_lv<6> > tmp_31_reg_1022;
    sc_signal< sc_lv<1> > tmp_21_fu_515_p2;
    sc_signal< sc_lv<1> > tmp_21_reg_1029;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<2> > ori_1_fu_521_p2;
    sc_signal< sc_lv<2> > ori_1_reg_1033;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > tmp_49_fu_558_p2;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > tmp_58_fu_662_p3;
    sc_signal< sc_lv<1> > tmp_58_reg_1072;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<4> > j_2_fu_670_p2;
    sc_signal< sc_lv<4> > j_2_reg_1076;
    sc_signal< sc_lv<64> > tmp_43_fu_676_p1;
    sc_signal< sc_lv<64> > tmp_43_reg_1081;
    sc_signal< sc_lv<1> > tmp_44_fu_681_p2;
    sc_signal< sc_lv<1> > tmp_44_reg_1091;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<3> > merge_i_fu_897_p3;
    sc_signal< sc_lv<3> > merge_i_reg_1103;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<1> > tmp_47_fu_687_p2;
    sc_signal< sc_lv<4> > i_4_fu_925_p2;
    sc_signal< sc_lv<4> > i_4_reg_1111;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<64> > tmp_22_fu_931_p1;
    sc_signal< sc_lv<64> > tmp_22_reg_1116;
    sc_signal< sc_lv<1> > exitcond_fu_919_p2;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<1> > tmp_28_fu_947_p2;
    sc_signal< sc_lv<1> > tmp_28_reg_1144;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<4> > j_fu_953_p2;
    sc_signal< sc_lv<4> > j_reg_1148;
    sc_signal< sc_lv<64> > tmp_36_fu_959_p1;
    sc_signal< sc_lv<64> > tmp_36_reg_1153;
    sc_signal< sc_lv<3> > edgeColor_0_load_reg_1164;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<1> > tmp_37_fu_964_p2;
    sc_signal< sc_lv<1> > tmp_37_reg_1169;
    sc_signal< sc_lv<1> > tmp_40_fu_970_p2;
    sc_signal< sc_lv<1> > tmp_40_reg_1178;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<4> > edgeColor_1_addr_1_gep_fu_303_p3;
    sc_signal< sc_lv<1> > tmp_42_fu_976_p2;
    sc_signal< sc_lv<1> > tmp_42_reg_1187;
    sc_signal< sc_logic > grp_convert_edge_fu_430_ap_start;
    sc_signal< sc_logic > grp_convert_edge_fu_430_ap_done;
    sc_signal< sc_logic > grp_convert_edge_fu_430_ap_idle;
    sc_signal< sc_logic > grp_convert_edge_fu_430_ap_ready;
    sc_signal< sc_lv<4> > grp_convert_edge_fu_430_ap_return;
    sc_signal< sc_lv<4> > i_reg_350;
    sc_signal< sc_lv<1> > exitcond1_fu_447_p2;
    sc_signal< sc_lv<4> > i_1_reg_361;
    sc_signal< sc_lv<1> > exitcond9_fu_464_p2;
    sc_signal< sc_lv<4> > i_2_reg_372;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<2> > ori_reg_383;
    sc_signal< sc_lv<4> > in_assign_reg_395;
    sc_signal< sc_lv<4> > i_3_reg_407;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< bool > ap_predicate_op213_call_state21;
    sc_signal< bool > ap_block_state21_on_subcall_done;
    sc_signal< sc_lv<4> > j_1_reg_418;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_lv<1> > or_cond_fu_987_p2;
    sc_signal< sc_logic > grp_convert_edge_fu_430_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_lv<64> > tmp_fu_459_p1;
    sc_signal< sc_lv<64> > tmp_s_fu_476_p1;
    sc_signal< sc_lv<64> > tmp_50_cast_fu_536_p1;
    sc_signal< sc_lv<64> > tmp_27_fu_541_p1;
    sc_signal< sc_lv<64> > tmp_53_cast_fu_607_p1;
    sc_signal< sc_lv<64> > tmp_56_cast_fu_647_p1;
    sc_signal< sc_lv<64> > tmp_32_fu_652_p1;
    sc_signal< sc_lv<64> > tmp_38_fu_657_p1;
    sc_signal< sc_lv<64> > tmp_23_fu_937_p1;
    sc_signal< sc_lv<64> > tmp_24_fu_942_p1;
    sc_signal< sc_lv<4> > ccRet_ep_0_addr_1_gep_fu_333_p3;
    sc_signal< sc_lv<4> > ccRet_eo_0_addr_gep_fu_341_p3;
    sc_signal< sc_lv<6> > tmp_30_fu_501_p3;
    sc_signal< sc_lv<6> > tmp_20_cast_fu_497_p1;
    sc_signal< sc_lv<6> > tmp_26_cast_fu_527_p1;
    sc_signal< sc_lv<6> > tmp_34_fu_531_p2;
    sc_signal< sc_lv<1> > tmp_48_fu_552_p2;
    sc_signal< sc_lv<1> > tmp_39_fu_546_p2;
    sc_signal< sc_lv<3> > tmp_32_cast_fu_564_p1;
    sc_signal< sc_lv<3> > tmp_29_fu_568_p2;
    sc_signal< sc_lv<2> > tmp_50_fu_580_p2;
    sc_signal< sc_lv<1> > tmp_35_fu_574_p2;
    sc_signal< sc_lv<3> > tmp_52_cast_fu_586_p1;
    sc_signal< sc_lv<3> > tmp_51_fu_590_p3;
    sc_signal< sc_lv<6> > tmp_31_cast_fu_598_p1;
    sc_signal< sc_lv<6> > tmp_52_fu_602_p2;
    sc_signal< sc_lv<3> > tmp_33_fu_612_p2;
    sc_signal< sc_lv<1> > tmp_53_fu_618_p2;
    sc_signal< sc_lv<3> > tmp_54_fu_624_p2;
    sc_signal< sc_lv<3> > tmp_55_fu_630_p3;
    sc_signal< sc_lv<6> > tmp_35_cast_fu_638_p1;
    sc_signal< sc_lv<6> > tmp_56_fu_642_p2;
    sc_signal< sc_lv<1> > tmp_i_fu_693_p2;
    sc_signal< sc_lv<1> > tmp_i_29_fu_699_p2;
    sc_signal< sc_lv<1> > sel_tmp1_fu_735_p2;
    sc_signal< sc_lv<1> > sel_tmp2_fu_741_p2;
    sc_signal< sc_lv<1> > tmp_17_fu_751_p2;
    sc_signal< sc_lv<2> > sel_tmp_fu_747_p1;
    sc_signal< sc_lv<2> > sel_tmp3_fu_757_p3;
    sc_signal< sc_lv<1> > sel_tmp6_demorgan_fu_769_p2;
    sc_signal< sc_lv<1> > tmp_297_i_fu_705_p2;
    sc_signal< sc_lv<1> > sel_tmp6_fu_775_p2;
    sc_signal< sc_lv<1> > sel_tmp13_demorgan_fu_787_p2;
    sc_signal< sc_lv<1> > tmp_298_i_fu_711_p2;
    sc_signal< sc_lv<1> > sel_tmp4_fu_793_p2;
    sc_signal< sc_lv<1> > sel_tmp5_fu_799_p2;
    sc_signal< sc_lv<1> > sel_tmp7_fu_781_p2;
    sc_signal< sc_lv<1> > tmp_18_fu_813_p2;
    sc_signal< sc_lv<3> > sel_tmp8_cast_fu_805_p3;
    sc_signal< sc_lv<3> > sel_tmp3_cast_fu_765_p1;
    sc_signal< sc_lv<1> > sel_tmp22_demorgan_fu_827_p2;
    sc_signal< sc_lv<1> > tmp_299_i_fu_717_p2;
    sc_signal< sc_lv<1> > sel_tmp8_fu_833_p2;
    sc_signal< sc_lv<1> > sel_tmp33_demorgan_fu_845_p2;
    sc_signal< sc_lv<1> > tmp_300_i_fu_723_p2;
    sc_signal< sc_lv<1> > sel_tmp11_fu_851_p2;
    sc_signal< sc_lv<1> > sel_tmp12_fu_857_p2;
    sc_signal< sc_lv<1> > sel_tmp10_fu_839_p2;
    sc_signal< sc_lv<1> > tmp_19_fu_871_p2;
    sc_signal< sc_lv<3> > sel_tmp13_fu_863_p3;
    sc_signal< sc_lv<3> > sel_tmp9_fu_819_p3;
    sc_signal< sc_lv<1> > tmp_301_i_fu_729_p2;
    sc_signal< sc_lv<1> > tmp20_fu_885_p2;
    sc_signal< sc_lv<1> > sel_tmp14_fu_891_p2;
    sc_signal< sc_lv<3> > p_0_i_fu_877_p3;
    sc_signal< sc_lv<1> > tmp_57_fu_905_p2;
    sc_signal< sc_lv<1> > tmp_41_fu_981_p2;
    sc_signal< sc_lv<22> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<22> ap_ST_fsm_state1;
    static const sc_lv<22> ap_ST_fsm_state2;
    static const sc_lv<22> ap_ST_fsm_state3;
    static const sc_lv<22> ap_ST_fsm_state4;
    static const sc_lv<22> ap_ST_fsm_state5;
    static const sc_lv<22> ap_ST_fsm_state6;
    static const sc_lv<22> ap_ST_fsm_state7;
    static const sc_lv<22> ap_ST_fsm_state8;
    static const sc_lv<22> ap_ST_fsm_state9;
    static const sc_lv<22> ap_ST_fsm_state10;
    static const sc_lv<22> ap_ST_fsm_state11;
    static const sc_lv<22> ap_ST_fsm_state12;
    static const sc_lv<22> ap_ST_fsm_state13;
    static const sc_lv<22> ap_ST_fsm_state14;
    static const sc_lv<22> ap_ST_fsm_state15;
    static const sc_lv<22> ap_ST_fsm_state16;
    static const sc_lv<22> ap_ST_fsm_state17;
    static const sc_lv<22> ap_ST_fsm_state18;
    static const sc_lv<22> ap_ST_fsm_state19;
    static const sc_lv<22> ap_ST_fsm_state20;
    static const sc_lv<22> ap_ST_fsm_state21;
    static const sc_lv<22> ap_ST_fsm_state22;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_14;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<4> ap_const_lv4_C;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<4> ap_const_lv4_2;
    static const sc_lv<4> ap_const_lv4_3;
    static const sc_lv<4> ap_const_lv4_4;
    static const sc_lv<4> ap_const_lv4_5;
    static const sc_lv<4> ap_const_lv4_6;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_4;
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
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state21_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_predicate_op213_call_state21();
    void thread_ap_ready();
    void thread_ccRet_co_0_address0();
    void thread_ccRet_co_0_ce0();
    void thread_ccRet_co_0_d0();
    void thread_ccRet_co_0_we0();
    void thread_ccRet_cp_0_address0();
    void thread_ccRet_cp_0_ce0();
    void thread_ccRet_cp_0_d0();
    void thread_ccRet_cp_0_we0();
    void thread_ccRet_eo_0_addr_gep_fu_341_p3();
    void thread_ccRet_eo_0_address0();
    void thread_ccRet_eo_0_ce0();
    void thread_ccRet_eo_0_d0();
    void thread_ccRet_eo_0_we0();
    void thread_ccRet_ep_0_addr_1_gep_fu_333_p3();
    void thread_ccRet_ep_0_address0();
    void thread_ccRet_ep_0_ce0();
    void thread_ccRet_ep_0_d0();
    void thread_ccRet_ep_0_we0();
    void thread_cornerColor_1_address0();
    void thread_cornerColor_1_ce0();
    void thread_cornerColor_2_address0();
    void thread_cornerColor_2_ce0();
    void thread_cornerFacelet_address0();
    void thread_cornerFacelet_address1();
    void thread_cornerFacelet_ce0();
    void thread_cornerFacelet_ce1();
    void thread_edgeColor_0_address0();
    void thread_edgeColor_0_ce0();
    void thread_edgeColor_1_addr_1_gep_fu_303_p3();
    void thread_edgeColor_1_address0();
    void thread_edgeColor_1_ce0();
    void thread_edgeFacelet_0_address0();
    void thread_edgeFacelet_0_ce0();
    void thread_edgeFacelet_1_address0();
    void thread_edgeFacelet_1_ce0();
    void thread_exitcond1_fu_447_p2();
    void thread_exitcond8_fu_481_p2();
    void thread_exitcond9_fu_464_p2();
    void thread_exitcond_fu_919_p2();
    void thread_facecube_0_f_address0();
    void thread_facecube_0_f_address1();
    void thread_facecube_0_f_ce0();
    void thread_facecube_0_f_ce1();
    void thread_grp_convert_edge_fu_430_ap_start();
    void thread_i_10_fu_487_p2();
    void thread_i_4_fu_925_p2();
    void thread_i_8_fu_453_p2();
    void thread_i_9_fu_470_p2();
    void thread_j_2_fu_670_p2();
    void thread_j_fu_953_p2();
    void thread_merge_i_fu_897_p3();
    void thread_or_cond_fu_987_p2();
    void thread_ori_1_fu_521_p2();
    void thread_p_0_i_fu_877_p3();
    void thread_sel_tmp10_fu_839_p2();
    void thread_sel_tmp11_fu_851_p2();
    void thread_sel_tmp12_fu_857_p2();
    void thread_sel_tmp13_demorgan_fu_787_p2();
    void thread_sel_tmp13_fu_863_p3();
    void thread_sel_tmp14_fu_891_p2();
    void thread_sel_tmp1_fu_735_p2();
    void thread_sel_tmp22_demorgan_fu_827_p2();
    void thread_sel_tmp2_fu_741_p2();
    void thread_sel_tmp33_demorgan_fu_845_p2();
    void thread_sel_tmp3_cast_fu_765_p1();
    void thread_sel_tmp3_fu_757_p3();
    void thread_sel_tmp4_fu_793_p2();
    void thread_sel_tmp5_fu_799_p2();
    void thread_sel_tmp6_demorgan_fu_769_p2();
    void thread_sel_tmp6_fu_775_p2();
    void thread_sel_tmp7_fu_781_p2();
    void thread_sel_tmp8_cast_fu_805_p3();
    void thread_sel_tmp8_fu_833_p2();
    void thread_sel_tmp9_fu_819_p3();
    void thread_sel_tmp_fu_747_p1();
    void thread_tmp20_fu_885_p2();
    void thread_tmp_17_fu_751_p2();
    void thread_tmp_18_fu_813_p2();
    void thread_tmp_19_fu_871_p2();
    void thread_tmp_20_cast_fu_497_p1();
    void thread_tmp_20_fu_493_p1();
    void thread_tmp_21_fu_515_p2();
    void thread_tmp_22_fu_931_p1();
    void thread_tmp_23_fu_937_p1();
    void thread_tmp_24_fu_942_p1();
    void thread_tmp_26_cast_fu_527_p1();
    void thread_tmp_27_fu_541_p1();
    void thread_tmp_28_fu_947_p2();
    void thread_tmp_297_i_fu_705_p2();
    void thread_tmp_298_i_fu_711_p2();
    void thread_tmp_299_i_fu_717_p2();
    void thread_tmp_29_fu_568_p2();
    void thread_tmp_300_i_fu_723_p2();
    void thread_tmp_301_i_fu_729_p2();
    void thread_tmp_30_fu_501_p3();
    void thread_tmp_31_cast_fu_598_p1();
    void thread_tmp_31_fu_509_p2();
    void thread_tmp_32_cast_fu_564_p1();
    void thread_tmp_32_fu_652_p1();
    void thread_tmp_33_fu_612_p2();
    void thread_tmp_34_fu_531_p2();
    void thread_tmp_35_cast_fu_638_p1();
    void thread_tmp_35_fu_574_p2();
    void thread_tmp_36_fu_959_p1();
    void thread_tmp_37_fu_964_p2();
    void thread_tmp_38_fu_657_p1();
    void thread_tmp_39_fu_546_p2();
    void thread_tmp_40_fu_970_p2();
    void thread_tmp_41_fu_981_p2();
    void thread_tmp_42_fu_976_p2();
    void thread_tmp_43_fu_676_p1();
    void thread_tmp_44_fu_681_p2();
    void thread_tmp_47_fu_687_p2();
    void thread_tmp_48_fu_552_p2();
    void thread_tmp_49_fu_558_p2();
    void thread_tmp_50_cast_fu_536_p1();
    void thread_tmp_50_fu_580_p2();
    void thread_tmp_51_fu_590_p3();
    void thread_tmp_52_cast_fu_586_p1();
    void thread_tmp_52_fu_602_p2();
    void thread_tmp_53_cast_fu_607_p1();
    void thread_tmp_53_fu_618_p2();
    void thread_tmp_54_fu_624_p2();
    void thread_tmp_55_fu_630_p3();
    void thread_tmp_56_cast_fu_647_p1();
    void thread_tmp_56_fu_642_p2();
    void thread_tmp_57_fu_905_p2();
    void thread_tmp_58_fu_662_p3();
    void thread_tmp_fu_459_p1();
    void thread_tmp_i_29_fu_699_p2();
    void thread_tmp_i_fu_693_p2();
    void thread_tmp_s_fu_476_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
