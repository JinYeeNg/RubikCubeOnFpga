// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "edgeCorrect.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic edgeCorrect::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic edgeCorrect::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<12> edgeCorrect::ap_ST_fsm_state1 = "1";
const sc_lv<12> edgeCorrect::ap_ST_fsm_state2 = "10";
const sc_lv<12> edgeCorrect::ap_ST_fsm_state3 = "100";
const sc_lv<12> edgeCorrect::ap_ST_fsm_state4 = "1000";
const sc_lv<12> edgeCorrect::ap_ST_fsm_state5 = "10000";
const sc_lv<12> edgeCorrect::ap_ST_fsm_state6 = "100000";
const sc_lv<12> edgeCorrect::ap_ST_fsm_state7 = "1000000";
const sc_lv<12> edgeCorrect::ap_ST_fsm_state8 = "10000000";
const sc_lv<12> edgeCorrect::ap_ST_fsm_state9 = "100000000";
const sc_lv<12> edgeCorrect::ap_ST_fsm_state10 = "1000000000";
const sc_lv<12> edgeCorrect::ap_ST_fsm_state11 = "10000000000";
const sc_lv<12> edgeCorrect::ap_ST_fsm_state12 = "100000000000";
const sc_lv<32> edgeCorrect::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> edgeCorrect::ap_const_lv32_1 = "1";
const sc_lv<32> edgeCorrect::ap_const_lv32_4 = "100";
const sc_lv<32> edgeCorrect::ap_const_lv32_8 = "1000";
const sc_lv<32> edgeCorrect::ap_const_lv32_2 = "10";
const sc_lv<32> edgeCorrect::ap_const_lv32_3 = "11";
const sc_lv<32> edgeCorrect::ap_const_lv32_5 = "101";
const sc_lv<32> edgeCorrect::ap_const_lv32_6 = "110";
const sc_lv<32> edgeCorrect::ap_const_lv32_7 = "111";
const sc_lv<32> edgeCorrect::ap_const_lv32_9 = "1001";
const sc_lv<32> edgeCorrect::ap_const_lv32_A = "1010";
const sc_lv<6> edgeCorrect::ap_const_lv6_4 = "100";
const sc_lv<6> edgeCorrect::ap_const_lv6_7 = "111";
const sc_lv<6> edgeCorrect::ap_const_lv6_3 = "11";
const sc_lv<6> edgeCorrect::ap_const_lv6_1 = "1";
const sc_lv<6> edgeCorrect::ap_const_lv6_5 = "101";
const sc_lv<6> edgeCorrect::ap_const_lv6_1F = "11111";
const sc_lv<6> edgeCorrect::ap_const_lv6_1E = "11110";
const sc_lv<6> edgeCorrect::ap_const_lv6_28 = "101000";
const sc_lv<6> edgeCorrect::ap_const_lv6_27 = "100111";
const sc_lv<6> edgeCorrect::ap_const_lv6_31 = "110001";
const sc_lv<6> edgeCorrect::ap_const_lv6_32 = "110010";
const sc_lv<6> edgeCorrect::ap_const_lv6_20 = "100000";
const sc_lv<6> edgeCorrect::ap_const_lv6_1C = "11100";
const sc_lv<6> edgeCorrect::ap_const_lv6_25 = "100101";
const sc_lv<6> edgeCorrect::ap_const_lv6_16 = "10110";
const sc_lv<6> edgeCorrect::ap_const_lv6_13 = "10011";
const sc_lv<6> edgeCorrect::ap_const_lv6_2E = "101110";
const sc_lv<6> edgeCorrect::ap_const_lv6_29 = "101001";
const sc_lv<6> edgeCorrect::ap_const_lv6_17 = "10111";
const sc_lv<6> edgeCorrect::ap_const_lv6_15 = "10101";
const sc_lv<6> edgeCorrect::ap_const_lv6_30 = "110000";
const sc_lv<32> edgeCorrect::ap_const_lv32_B = "1011";
const sc_lv<4> edgeCorrect::ap_const_lv4_1 = "1";
const sc_lv<4> edgeCorrect::ap_const_lv4_2 = "10";
const sc_lv<4> edgeCorrect::ap_const_lv4_3 = "11";
const sc_lv<4> edgeCorrect::ap_const_lv4_4 = "100";
const sc_lv<4> edgeCorrect::ap_const_lv4_5 = "101";
const sc_lv<4> edgeCorrect::ap_const_lv4_6 = "110";
const sc_lv<4> edgeCorrect::ap_const_lv4_7 = "111";
const sc_lv<4> edgeCorrect::ap_const_lv4_8 = "1000";
const sc_lv<1> edgeCorrect::ap_const_lv1_0 = "0";
const bool edgeCorrect::ap_const_boolean_1 = true;

edgeCorrect::edgeCorrect(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_agg_result_V_fu_313_p2);
    sensitive << ( tmp37_fu_308_p2 );
    sensitive << ( tmp34_fu_298_p2 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state10);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state11);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state12);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state8);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state9);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state12 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state12 );

    SC_METHOD(thread_ap_return);
    sensitive << ( ap_CS_fsm_state12 );
    sensitive << ( agg_result_V_fu_313_p2 );
    sensitive << ( ap_return_preg );

    SC_METHOD(thread_cubieColor_V_address0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_CS_fsm_state11 );

    SC_METHOD(thread_cubieColor_V_address1);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_CS_fsm_state11 );

    SC_METHOD(thread_cubieColor_V_ce0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_CS_fsm_state11 );

    SC_METHOD(thread_cubieColor_V_ce1);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_CS_fsm_state11 );

    SC_METHOD(thread_grp_fu_100_p2);
    sensitive << ( cubieColor_V_q0 );
    sensitive << ( reg_131 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_grp_fu_105_p2);
    sensitive << ( cubieColor_V_q1 );
    sensitive << ( reg_131 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_grp_fu_110_p0);
    sensitive << ( cubieColor_V_q1 );
    sensitive << ( reg_131 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_grp_fu_110_p2);
    sensitive << ( cubieColor_V_q0 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( grp_fu_110_p0 );

    SC_METHOD(thread_grp_fu_116_p2);
    sensitive << ( cubieColor_V_q1 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( cubieColor_V_load_137_reg_344 );
    sensitive << ( ap_CS_fsm_state11 );

    SC_METHOD(thread_grp_fu_121_p2);
    sensitive << ( cubieColor_V_q1 );
    sensitive << ( reg_131 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_CS_fsm_state12 );

    SC_METHOD(thread_grp_fu_126_p2);
    sensitive << ( cubieColor_V_q0 );
    sensitive << ( cubieColor_V_load_139_reg_354 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_CS_fsm_state12 );

    SC_METHOD(thread_sel_tmp10_fu_189_p2);
    sensitive << ( tmp26_fu_184_p2 );
    sensitive << ( sel_tmp8_fu_178_p2 );

    SC_METHOD(thread_sel_tmp12_fu_195_p2);
    sensitive << ( edge_V );
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_sel_tmp14_fu_206_p2);
    sensitive << ( tmp27_fu_201_p2 );
    sensitive << ( sel_tmp12_fu_195_p2 );

    SC_METHOD(thread_sel_tmp16_fu_230_p2);
    sensitive << ( edge_V );
    sensitive << ( ap_CS_fsm_state11 );

    SC_METHOD(thread_sel_tmp17_fu_240_p2);
    sensitive << ( tmp28_fu_235_p2 );
    sensitive << ( sel_tmp16_fu_230_p2 );

    SC_METHOD(thread_sel_tmp18_fu_246_p2);
    sensitive << ( edge_V );
    sensitive << ( ap_CS_fsm_state11 );

    SC_METHOD(thread_sel_tmp19_fu_256_p2);
    sensitive << ( tmp29_fu_251_p2 );
    sensitive << ( sel_tmp18_fu_246_p2 );

    SC_METHOD(thread_sel_tmp20_fu_262_p2);
    sensitive << ( edge_V );
    sensitive << ( ap_CS_fsm_state11 );

    SC_METHOD(thread_sel_tmp21_fu_283_p2);
    sensitive << ( sel_tmp20_reg_397 );
    sensitive << ( tmp30_fu_278_p2 );

    SC_METHOD(thread_sel_tmp22_fu_267_p2);
    sensitive << ( edge_V );
    sensitive << ( ap_CS_fsm_state11 );

    SC_METHOD(thread_sel_tmp23_fu_293_p2);
    sensitive << ( sel_tmp22_reg_402 );
    sensitive << ( tmp31_fu_288_p2 );

    SC_METHOD(thread_sel_tmp2_fu_156_p2);
    sensitive << ( tmp_fu_152_p2 );
    sensitive << ( sel_tmp_fu_146_p2 );

    SC_METHOD(thread_sel_tmp4_fu_162_p2);
    sensitive << ( edge_V );
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_sel_tmp6_fu_172_p2);
    sensitive << ( tmp25_fu_168_p2 );
    sensitive << ( sel_tmp4_fu_162_p2 );

    SC_METHOD(thread_sel_tmp8_fu_178_p2);
    sensitive << ( edge_V );
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_sel_tmp_fu_146_p2);
    sensitive << ( edge_V );
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_tmp25_fu_168_p2);
    sensitive << ( tmp_201_reg_324 );
    sensitive << ( tmp_209_reg_374 );

    SC_METHOD(thread_tmp26_fu_184_p2);
    sensitive << ( tmp_202_reg_329 );
    sensitive << ( grp_fu_121_p2 );

    SC_METHOD(thread_tmp27_fu_201_p2);
    sensitive << ( tmp_203_reg_334 );
    sensitive << ( grp_fu_126_p2 );

    SC_METHOD(thread_tmp28_fu_235_p2);
    sensitive << ( tmp_204_reg_339 );
    sensitive << ( grp_fu_116_p2 );

    SC_METHOD(thread_tmp29_fu_251_p2);
    sensitive << ( tmp_205_reg_349 );
    sensitive << ( tmp_213_fu_224_p2 );

    SC_METHOD(thread_tmp30_fu_278_p2);
    sensitive << ( tmp_206_reg_359 );
    sensitive << ( grp_fu_121_p2 );

    SC_METHOD(thread_tmp31_fu_288_p2);
    sensitive << ( tmp_207_reg_364 );
    sensitive << ( grp_fu_126_p2 );

    SC_METHOD(thread_tmp32_fu_212_p2);
    sensitive << ( sel_tmp6_fu_172_p2 );
    sensitive << ( sel_tmp2_fu_156_p2 );

    SC_METHOD(thread_tmp33_fu_218_p2);
    sensitive << ( sel_tmp10_fu_189_p2 );
    sensitive << ( sel_tmp14_fu_206_p2 );

    SC_METHOD(thread_tmp34_fu_298_p2);
    sensitive << ( tmp32_reg_387 );
    sensitive << ( tmp33_reg_392 );

    SC_METHOD(thread_tmp35_fu_272_p2);
    sensitive << ( sel_tmp17_fu_240_p2 );
    sensitive << ( sel_tmp19_fu_256_p2 );

    SC_METHOD(thread_tmp36_fu_302_p2);
    sensitive << ( sel_tmp21_fu_283_p2 );
    sensitive << ( sel_tmp23_fu_293_p2 );

    SC_METHOD(thread_tmp37_fu_308_p2);
    sensitive << ( tmp35_reg_407 );
    sensitive << ( tmp36_fu_302_p2 );

    SC_METHOD(thread_tmp_207_fu_140_p2);
    sensitive << ( cubieColor_V_q1 );
    sensitive << ( reg_131 );
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_tmp_213_fu_224_p2);
    sensitive << ( cubieColor_V_q0 );
    sensitive << ( reg_131 );
    sensitive << ( ap_CS_fsm_state11 );

    SC_METHOD(thread_tmp_fu_152_p2);
    sensitive << ( tmp_s_reg_319 );
    sensitive << ( tmp_208_reg_369 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );

    ap_CS_fsm = "000000000001";
    ap_return_preg = "0";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "edgeCorrect_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, edge_V, "(port)edge_V");
    sc_trace(mVcdFile, cubieColor_V_address0, "(port)cubieColor_V_address0");
    sc_trace(mVcdFile, cubieColor_V_ce0, "(port)cubieColor_V_ce0");
    sc_trace(mVcdFile, cubieColor_V_q0, "(port)cubieColor_V_q0");
    sc_trace(mVcdFile, cubieColor_V_address1, "(port)cubieColor_V_address1");
    sc_trace(mVcdFile, cubieColor_V_ce1, "(port)cubieColor_V_ce1");
    sc_trace(mVcdFile, cubieColor_V_q1, "(port)cubieColor_V_q1");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, reg_131, "reg_131");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, ap_CS_fsm_state9, "ap_CS_fsm_state9");
    sc_trace(mVcdFile, grp_fu_100_p2, "grp_fu_100_p2");
    sc_trace(mVcdFile, tmp_s_reg_319, "tmp_s_reg_319");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, grp_fu_105_p2, "grp_fu_105_p2");
    sc_trace(mVcdFile, tmp_201_reg_324, "tmp_201_reg_324");
    sc_trace(mVcdFile, tmp_202_reg_329, "tmp_202_reg_329");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, tmp_203_reg_334, "tmp_203_reg_334");
    sc_trace(mVcdFile, grp_fu_110_p2, "grp_fu_110_p2");
    sc_trace(mVcdFile, tmp_204_reg_339, "tmp_204_reg_339");
    sc_trace(mVcdFile, cubieColor_V_load_137_reg_344, "cubieColor_V_load_137_reg_344");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, tmp_205_reg_349, "tmp_205_reg_349");
    sc_trace(mVcdFile, cubieColor_V_load_139_reg_354, "cubieColor_V_load_139_reg_354");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, tmp_206_reg_359, "tmp_206_reg_359");
    sc_trace(mVcdFile, tmp_207_fu_140_p2, "tmp_207_fu_140_p2");
    sc_trace(mVcdFile, tmp_207_reg_364, "tmp_207_reg_364");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, tmp_208_reg_369, "tmp_208_reg_369");
    sc_trace(mVcdFile, grp_fu_116_p2, "grp_fu_116_p2");
    sc_trace(mVcdFile, tmp_209_reg_374, "tmp_209_reg_374");
    sc_trace(mVcdFile, ap_CS_fsm_state10, "ap_CS_fsm_state10");
    sc_trace(mVcdFile, tmp32_fu_212_p2, "tmp32_fu_212_p2");
    sc_trace(mVcdFile, tmp32_reg_387, "tmp32_reg_387");
    sc_trace(mVcdFile, tmp33_fu_218_p2, "tmp33_fu_218_p2");
    sc_trace(mVcdFile, tmp33_reg_392, "tmp33_reg_392");
    sc_trace(mVcdFile, sel_tmp20_fu_262_p2, "sel_tmp20_fu_262_p2");
    sc_trace(mVcdFile, sel_tmp20_reg_397, "sel_tmp20_reg_397");
    sc_trace(mVcdFile, ap_CS_fsm_state11, "ap_CS_fsm_state11");
    sc_trace(mVcdFile, sel_tmp22_fu_267_p2, "sel_tmp22_fu_267_p2");
    sc_trace(mVcdFile, sel_tmp22_reg_402, "sel_tmp22_reg_402");
    sc_trace(mVcdFile, tmp35_fu_272_p2, "tmp35_fu_272_p2");
    sc_trace(mVcdFile, tmp35_reg_407, "tmp35_reg_407");
    sc_trace(mVcdFile, grp_fu_110_p0, "grp_fu_110_p0");
    sc_trace(mVcdFile, ap_CS_fsm_state12, "ap_CS_fsm_state12");
    sc_trace(mVcdFile, tmp_fu_152_p2, "tmp_fu_152_p2");
    sc_trace(mVcdFile, sel_tmp_fu_146_p2, "sel_tmp_fu_146_p2");
    sc_trace(mVcdFile, tmp25_fu_168_p2, "tmp25_fu_168_p2");
    sc_trace(mVcdFile, sel_tmp4_fu_162_p2, "sel_tmp4_fu_162_p2");
    sc_trace(mVcdFile, grp_fu_121_p2, "grp_fu_121_p2");
    sc_trace(mVcdFile, tmp26_fu_184_p2, "tmp26_fu_184_p2");
    sc_trace(mVcdFile, sel_tmp8_fu_178_p2, "sel_tmp8_fu_178_p2");
    sc_trace(mVcdFile, grp_fu_126_p2, "grp_fu_126_p2");
    sc_trace(mVcdFile, tmp27_fu_201_p2, "tmp27_fu_201_p2");
    sc_trace(mVcdFile, sel_tmp12_fu_195_p2, "sel_tmp12_fu_195_p2");
    sc_trace(mVcdFile, sel_tmp6_fu_172_p2, "sel_tmp6_fu_172_p2");
    sc_trace(mVcdFile, sel_tmp2_fu_156_p2, "sel_tmp2_fu_156_p2");
    sc_trace(mVcdFile, sel_tmp10_fu_189_p2, "sel_tmp10_fu_189_p2");
    sc_trace(mVcdFile, sel_tmp14_fu_206_p2, "sel_tmp14_fu_206_p2");
    sc_trace(mVcdFile, tmp28_fu_235_p2, "tmp28_fu_235_p2");
    sc_trace(mVcdFile, sel_tmp16_fu_230_p2, "sel_tmp16_fu_230_p2");
    sc_trace(mVcdFile, tmp_213_fu_224_p2, "tmp_213_fu_224_p2");
    sc_trace(mVcdFile, tmp29_fu_251_p2, "tmp29_fu_251_p2");
    sc_trace(mVcdFile, sel_tmp18_fu_246_p2, "sel_tmp18_fu_246_p2");
    sc_trace(mVcdFile, sel_tmp17_fu_240_p2, "sel_tmp17_fu_240_p2");
    sc_trace(mVcdFile, sel_tmp19_fu_256_p2, "sel_tmp19_fu_256_p2");
    sc_trace(mVcdFile, tmp30_fu_278_p2, "tmp30_fu_278_p2");
    sc_trace(mVcdFile, tmp31_fu_288_p2, "tmp31_fu_288_p2");
    sc_trace(mVcdFile, sel_tmp21_fu_283_p2, "sel_tmp21_fu_283_p2");
    sc_trace(mVcdFile, sel_tmp23_fu_293_p2, "sel_tmp23_fu_293_p2");
    sc_trace(mVcdFile, tmp36_fu_302_p2, "tmp36_fu_302_p2");
    sc_trace(mVcdFile, tmp37_fu_308_p2, "tmp37_fu_308_p2");
    sc_trace(mVcdFile, tmp34_fu_298_p2, "tmp34_fu_298_p2");
    sc_trace(mVcdFile, agg_result_V_fu_313_p2, "agg_result_V_fu_313_p2");
    sc_trace(mVcdFile, ap_return_preg, "ap_return_preg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

edgeCorrect::~edgeCorrect() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void edgeCorrect::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_preg = ap_const_lv1_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
            ap_return_preg = agg_result_V_fu_313_p2.read();
        }
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        reg_131 = cubieColor_V_q1.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()))) {
        reg_131 = cubieColor_V_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        cubieColor_V_load_137_reg_344 = cubieColor_V_q1.read();
        tmp_205_reg_349 = grp_fu_110_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        cubieColor_V_load_139_reg_354 = cubieColor_V_q1.read();
        tmp_206_reg_359 = grp_fu_110_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read())) {
        sel_tmp20_reg_397 = sel_tmp20_fu_262_p2.read();
        sel_tmp22_reg_402 = sel_tmp22_fu_267_p2.read();
        tmp35_reg_407 = tmp35_fu_272_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        tmp32_reg_387 = tmp32_fu_212_p2.read();
        tmp33_reg_392 = tmp33_fu_218_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        tmp_201_reg_324 = grp_fu_105_p2.read();
        tmp_s_reg_319 = grp_fu_100_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        tmp_202_reg_329 = grp_fu_105_p2.read();
        tmp_203_reg_334 = grp_fu_100_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        tmp_204_reg_339 = grp_fu_110_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        tmp_207_reg_364 = tmp_207_fu_140_p2.read();
        tmp_208_reg_369 = grp_fu_110_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        tmp_209_reg_374 = grp_fu_116_p2.read();
    }
}

void edgeCorrect::thread_agg_result_V_fu_313_p2() {
    agg_result_V_fu_313_p2 = (tmp37_fu_308_p2.read() | tmp34_fu_298_p2.read());
}

void edgeCorrect::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void edgeCorrect::thread_ap_CS_fsm_state10() {
    ap_CS_fsm_state10 = ap_CS_fsm.read()[9];
}

void edgeCorrect::thread_ap_CS_fsm_state11() {
    ap_CS_fsm_state11 = ap_CS_fsm.read()[10];
}

void edgeCorrect::thread_ap_CS_fsm_state12() {
    ap_CS_fsm_state12 = ap_CS_fsm.read()[11];
}

void edgeCorrect::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void edgeCorrect::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void edgeCorrect::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void edgeCorrect::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void edgeCorrect::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void edgeCorrect::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void edgeCorrect::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void edgeCorrect::thread_ap_CS_fsm_state9() {
    ap_CS_fsm_state9 = ap_CS_fsm.read()[8];
}

void edgeCorrect::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void edgeCorrect::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void edgeCorrect::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void edgeCorrect::thread_ap_return() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        ap_return = agg_result_V_fu_313_p2.read();
    } else {
        ap_return = ap_return_preg.read();
    }
}

void edgeCorrect::thread_cubieColor_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read())) {
        cubieColor_V_address0 = ap_const_lv6_30;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        cubieColor_V_address0 = ap_const_lv6_17;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        cubieColor_V_address0 = ap_const_lv6_2E;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        cubieColor_V_address0 = ap_const_lv6_16;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        cubieColor_V_address0 = ap_const_lv6_1C;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        cubieColor_V_address0 = ap_const_lv6_32;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        cubieColor_V_address0 = ap_const_lv6_27;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        cubieColor_V_address0 = ap_const_lv6_1E;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        cubieColor_V_address0 = ap_const_lv6_5;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        cubieColor_V_address0 = ap_const_lv6_7;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
        cubieColor_V_address0 = ap_const_lv6_4;
    } else {
        cubieColor_V_address0 = "XXXXXX";
    }
}

void edgeCorrect::thread_cubieColor_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read())) {
        cubieColor_V_address1 = ap_const_lv6_15;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        cubieColor_V_address1 = ap_const_lv6_29;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        cubieColor_V_address1 = ap_const_lv6_13;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        cubieColor_V_address1 = ap_const_lv6_25;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        cubieColor_V_address1 = ap_const_lv6_20;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        cubieColor_V_address1 = ap_const_lv6_31;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        cubieColor_V_address1 = ap_const_lv6_28;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        cubieColor_V_address1 = ap_const_lv6_1F;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        cubieColor_V_address1 = ap_const_lv6_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        cubieColor_V_address1 = ap_const_lv6_3;
    } else {
        cubieColor_V_address1 = "XXXXXX";
    }
}

void edgeCorrect::thread_cubieColor_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)))) {
        cubieColor_V_ce0 = ap_const_logic_1;
    } else {
        cubieColor_V_ce0 = ap_const_logic_0;
    }
}

void edgeCorrect::thread_cubieColor_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read()))) {
        cubieColor_V_ce1 = ap_const_logic_1;
    } else {
        cubieColor_V_ce1 = ap_const_logic_0;
    }
}

void edgeCorrect::thread_grp_fu_100_p2() {
    grp_fu_100_p2 = (!reg_131.read().is_01() || !cubieColor_V_q0.read().is_01())? sc_lv<1>(): sc_lv<1>(reg_131.read() == cubieColor_V_q0.read());
}

void edgeCorrect::thread_grp_fu_105_p2() {
    grp_fu_105_p2 = (!reg_131.read().is_01() || !cubieColor_V_q1.read().is_01())? sc_lv<1>(): sc_lv<1>(reg_131.read() == cubieColor_V_q1.read());
}

void edgeCorrect::thread_grp_fu_110_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        grp_fu_110_p0 = reg_131.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()))) {
        grp_fu_110_p0 = cubieColor_V_q1.read();
    } else {
        grp_fu_110_p0 =  (sc_lv<3>) ("XXX");
    }
}

void edgeCorrect::thread_grp_fu_110_p2() {
    grp_fu_110_p2 = (!grp_fu_110_p0.read().is_01() || !cubieColor_V_q0.read().is_01())? sc_lv<1>(): sc_lv<1>(grp_fu_110_p0.read() == cubieColor_V_q0.read());
}

void edgeCorrect::thread_grp_fu_116_p2() {
    grp_fu_116_p2 = (!cubieColor_V_load_137_reg_344.read().is_01() || !cubieColor_V_q1.read().is_01())? sc_lv<1>(): sc_lv<1>(cubieColor_V_load_137_reg_344.read() == cubieColor_V_q1.read());
}

void edgeCorrect::thread_grp_fu_121_p2() {
    grp_fu_121_p2 = (!reg_131.read().is_01() || !cubieColor_V_q1.read().is_01())? sc_lv<1>(): sc_lv<1>(reg_131.read() == cubieColor_V_q1.read());
}

void edgeCorrect::thread_grp_fu_126_p2() {
    grp_fu_126_p2 = (!cubieColor_V_load_139_reg_354.read().is_01() || !cubieColor_V_q0.read().is_01())? sc_lv<1>(): sc_lv<1>(cubieColor_V_load_139_reg_354.read() == cubieColor_V_q0.read());
}

void edgeCorrect::thread_sel_tmp10_fu_189_p2() {
    sel_tmp10_fu_189_p2 = (tmp26_fu_184_p2.read() & sel_tmp8_fu_178_p2.read());
}

void edgeCorrect::thread_sel_tmp12_fu_195_p2() {
    sel_tmp12_fu_195_p2 = (!edge_V.read().is_01() || !ap_const_lv4_4.is_01())? sc_lv<1>(): sc_lv<1>(edge_V.read() == ap_const_lv4_4);
}

void edgeCorrect::thread_sel_tmp14_fu_206_p2() {
    sel_tmp14_fu_206_p2 = (tmp27_fu_201_p2.read() & sel_tmp12_fu_195_p2.read());
}

void edgeCorrect::thread_sel_tmp16_fu_230_p2() {
    sel_tmp16_fu_230_p2 = (!edge_V.read().is_01() || !ap_const_lv4_5.is_01())? sc_lv<1>(): sc_lv<1>(edge_V.read() == ap_const_lv4_5);
}

void edgeCorrect::thread_sel_tmp17_fu_240_p2() {
    sel_tmp17_fu_240_p2 = (tmp28_fu_235_p2.read() & sel_tmp16_fu_230_p2.read());
}

void edgeCorrect::thread_sel_tmp18_fu_246_p2() {
    sel_tmp18_fu_246_p2 = (!edge_V.read().is_01() || !ap_const_lv4_6.is_01())? sc_lv<1>(): sc_lv<1>(edge_V.read() == ap_const_lv4_6);
}

void edgeCorrect::thread_sel_tmp19_fu_256_p2() {
    sel_tmp19_fu_256_p2 = (tmp29_fu_251_p2.read() & sel_tmp18_fu_246_p2.read());
}

void edgeCorrect::thread_sel_tmp20_fu_262_p2() {
    sel_tmp20_fu_262_p2 = (!edge_V.read().is_01() || !ap_const_lv4_7.is_01())? sc_lv<1>(): sc_lv<1>(edge_V.read() == ap_const_lv4_7);
}

void edgeCorrect::thread_sel_tmp21_fu_283_p2() {
    sel_tmp21_fu_283_p2 = (tmp30_fu_278_p2.read() & sel_tmp20_reg_397.read());
}

void edgeCorrect::thread_sel_tmp22_fu_267_p2() {
    sel_tmp22_fu_267_p2 = (!edge_V.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(edge_V.read() == ap_const_lv4_8);
}

void edgeCorrect::thread_sel_tmp23_fu_293_p2() {
    sel_tmp23_fu_293_p2 = (tmp31_fu_288_p2.read() & sel_tmp22_reg_402.read());
}

void edgeCorrect::thread_sel_tmp2_fu_156_p2() {
    sel_tmp2_fu_156_p2 = (tmp_fu_152_p2.read() & sel_tmp_fu_146_p2.read());
}

void edgeCorrect::thread_sel_tmp4_fu_162_p2() {
    sel_tmp4_fu_162_p2 = (!edge_V.read().is_01() || !ap_const_lv4_2.is_01())? sc_lv<1>(): sc_lv<1>(edge_V.read() == ap_const_lv4_2);
}

void edgeCorrect::thread_sel_tmp6_fu_172_p2() {
    sel_tmp6_fu_172_p2 = (tmp25_fu_168_p2.read() & sel_tmp4_fu_162_p2.read());
}

void edgeCorrect::thread_sel_tmp8_fu_178_p2() {
    sel_tmp8_fu_178_p2 = (!edge_V.read().is_01() || !ap_const_lv4_3.is_01())? sc_lv<1>(): sc_lv<1>(edge_V.read() == ap_const_lv4_3);
}

void edgeCorrect::thread_sel_tmp_fu_146_p2() {
    sel_tmp_fu_146_p2 = (!edge_V.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<1>(): sc_lv<1>(edge_V.read() == ap_const_lv4_1);
}

void edgeCorrect::thread_tmp25_fu_168_p2() {
    tmp25_fu_168_p2 = (tmp_201_reg_324.read() & tmp_209_reg_374.read());
}

void edgeCorrect::thread_tmp26_fu_184_p2() {
    tmp26_fu_184_p2 = (tmp_202_reg_329.read() & grp_fu_121_p2.read());
}

void edgeCorrect::thread_tmp27_fu_201_p2() {
    tmp27_fu_201_p2 = (tmp_203_reg_334.read() & grp_fu_126_p2.read());
}

void edgeCorrect::thread_tmp28_fu_235_p2() {
    tmp28_fu_235_p2 = (tmp_204_reg_339.read() & grp_fu_116_p2.read());
}

void edgeCorrect::thread_tmp29_fu_251_p2() {
    tmp29_fu_251_p2 = (tmp_205_reg_349.read() & tmp_213_fu_224_p2.read());
}

void edgeCorrect::thread_tmp30_fu_278_p2() {
    tmp30_fu_278_p2 = (tmp_206_reg_359.read() & grp_fu_121_p2.read());
}

void edgeCorrect::thread_tmp31_fu_288_p2() {
    tmp31_fu_288_p2 = (tmp_207_reg_364.read() & grp_fu_126_p2.read());
}

void edgeCorrect::thread_tmp32_fu_212_p2() {
    tmp32_fu_212_p2 = (sel_tmp6_fu_172_p2.read() | sel_tmp2_fu_156_p2.read());
}

void edgeCorrect::thread_tmp33_fu_218_p2() {
    tmp33_fu_218_p2 = (sel_tmp10_fu_189_p2.read() | sel_tmp14_fu_206_p2.read());
}

void edgeCorrect::thread_tmp34_fu_298_p2() {
    tmp34_fu_298_p2 = (tmp33_reg_392.read() | tmp32_reg_387.read());
}

void edgeCorrect::thread_tmp35_fu_272_p2() {
    tmp35_fu_272_p2 = (sel_tmp17_fu_240_p2.read() | sel_tmp19_fu_256_p2.read());
}

void edgeCorrect::thread_tmp36_fu_302_p2() {
    tmp36_fu_302_p2 = (sel_tmp21_fu_283_p2.read() | sel_tmp23_fu_293_p2.read());
}

void edgeCorrect::thread_tmp37_fu_308_p2() {
    tmp37_fu_308_p2 = (tmp36_fu_302_p2.read() | tmp35_reg_407.read());
}

void edgeCorrect::thread_tmp_207_fu_140_p2() {
    tmp_207_fu_140_p2 = (!reg_131.read().is_01() || !cubieColor_V_q1.read().is_01())? sc_lv<1>(): sc_lv<1>(reg_131.read() == cubieColor_V_q1.read());
}

void edgeCorrect::thread_tmp_213_fu_224_p2() {
    tmp_213_fu_224_p2 = (!reg_131.read().is_01() || !cubieColor_V_q0.read().is_01())? sc_lv<1>(): sc_lv<1>(reg_131.read() == cubieColor_V_q0.read());
}

void edgeCorrect::thread_tmp_fu_152_p2() {
    tmp_fu_152_p2 = (tmp_s_reg_319.read() & tmp_208_reg_369.read());
}

void edgeCorrect::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state9;
            break;
        case 256 : 
            ap_NS_fsm = ap_ST_fsm_state10;
            break;
        case 512 : 
            ap_NS_fsm = ap_ST_fsm_state11;
            break;
        case 1024 : 
            ap_NS_fsm = ap_ST_fsm_state12;
            break;
        case 2048 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<12>) ("XXXXXXXXXXXX");
            break;
    }
}

}

