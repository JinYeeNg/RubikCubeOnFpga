// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "getURtoDF.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic getURtoDF::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic getURtoDF::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<10> getURtoDF::ap_ST_fsm_state1 = "1";
const sc_lv<10> getURtoDF::ap_ST_fsm_state2 = "10";
const sc_lv<10> getURtoDF::ap_ST_fsm_state3 = "100";
const sc_lv<10> getURtoDF::ap_ST_fsm_state4 = "1000";
const sc_lv<10> getURtoDF::ap_ST_fsm_state5 = "10000";
const sc_lv<10> getURtoDF::ap_ST_fsm_state6 = "100000";
const sc_lv<10> getURtoDF::ap_ST_fsm_state7 = "1000000";
const sc_lv<10> getURtoDF::ap_ST_fsm_state8 = "10000000";
const sc_lv<10> getURtoDF::ap_ST_fsm_state9 = "100000000";
const sc_lv<10> getURtoDF::ap_ST_fsm_state10 = "1000000000";
const sc_lv<32> getURtoDF::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> getURtoDF::ap_const_lv32_1 = "1";
const sc_lv<32> getURtoDF::ap_const_lv32_2 = "10";
const sc_lv<1> getURtoDF::ap_const_lv1_0 = "0";
const sc_lv<32> getURtoDF::ap_const_lv32_4 = "100";
const sc_lv<32> getURtoDF::ap_const_lv32_6 = "110";
const sc_lv<1> getURtoDF::ap_const_lv1_1 = "1";
const sc_lv<32> getURtoDF::ap_const_lv32_7 = "111";
const sc_lv<32> getURtoDF::ap_const_lv32_8 = "1000";
const sc_lv<3> getURtoDF::ap_const_lv3_0 = "000";
const sc_lv<4> getURtoDF::ap_const_lv4_0 = "0000";
const sc_lv<32> getURtoDF::ap_const_lv32_3 = "11";
const sc_lv<3> getURtoDF::ap_const_lv3_5 = "101";
const sc_lv<32> getURtoDF::ap_const_lv32_9 = "1001";
const sc_lv<64> getURtoDF::ap_const_lv64_0 = "0000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<32> getURtoDF::ap_const_lv32_5 = "101";
const sc_lv<3> getURtoDF::ap_const_lv3_1 = "1";
const sc_lv<3> getURtoDF::ap_const_lv3_4 = "100";
const sc_lv<4> getURtoDF::ap_const_lv4_C = "1100";
const sc_lv<4> getURtoDF::ap_const_lv4_1 = "1";
const sc_lv<4> getURtoDF::ap_const_lv4_6 = "110";
const sc_lv<3> getURtoDF::ap_const_lv3_7 = "111";
const bool getURtoDF::ap_const_boolean_1 = true;

getURtoDF::getURtoDF(sc_module_name name) : sc_module(name), mVcdFile(0) {
    edge6_U = new getURtoDF_edge6("edge6_U");
    edge6_U->clk(ap_clk);
    edge6_U->reset(ap_rst);
    edge6_U->address0(edge6_address0);
    edge6_U->ce0(edge6_ce0);
    edge6_U->we0(edge6_we0);
    edge6_U->d0(edge6_d0);
    edge6_U->q0(edge6_q0);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state10);
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
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( tmp_168_fu_232_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( tmp_168_fu_232_p2 );

    SC_METHOD(thread_cubiecube_0_ep_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_166_fu_198_p1 );

    SC_METHOD(thread_cubiecube_0_ep_ce0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_edge6_addr_reg_280);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_edge6_address0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( edge6_addr_reg_280 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( edge6_addr_3_reg_324 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( exitcond1_fu_258_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( p_sum_cast_fu_170_p1 );
    sensitive << ( tmp_169_fu_218_p1 );
    sensitive << ( tmp_i_fu_270_p1 );
    sensitive << ( tmp_108_i_fu_275_p1 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_edge6_ce0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( exitcond1_fu_258_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_edge6_d0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( cubiecube_0_ep_q0 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( edge6_q0 );
    sensitive << ( temp_reg_337 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( exitcond1_fu_258_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_edge6_we0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( exitcond1_fu_258_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( tmp_167_fu_203_p2 );

    SC_METHOD(thread_exitcond1_fu_258_p2);
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( r_assign_reg_140 );
    sensitive << ( i_i_reg_152 );

    SC_METHOD(thread_exitcond_fu_186_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( j_reg_129 );

    SC_METHOD(thread_i_fu_264_p2);
    sensitive << ( i_i_reg_152 );

    SC_METHOD(thread_j_5_fu_192_p2);
    sensitive << ( j_reg_129 );

    SC_METHOD(thread_j_6_fu_252_p2);
    sensitive << ( r_assign_reg_140 );

    SC_METHOD(thread_p_sum_cast_fu_170_p1);
    sensitive << ( p_sum_fu_164_p2 );

    SC_METHOD(thread_p_sum_fu_164_p2);
    sensitive << ( p_rec_reg_118 );

    SC_METHOD(thread_r_assign_cast3_fu_228_p1);
    sensitive << ( r_assign_reg_140 );

    SC_METHOD(thread_tmp_108_i_fu_275_p1);
    sensitive << ( i_i_reg_152 );

    SC_METHOD(thread_tmp_166_fu_198_p1);
    sensitive << ( j_reg_129 );

    SC_METHOD(thread_tmp_167_fu_203_p2);
    sensitive << ( cubiecube_0_ep_q0 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_tmp_168_fu_232_p2);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( r_assign_reg_140 );

    SC_METHOD(thread_tmp_169_fu_218_p0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( x_fu_50 );

    SC_METHOD(thread_tmp_169_fu_218_p1);
    sensitive << ( tmp_169_fu_218_p0 );

    SC_METHOD(thread_tmp_170_fu_238_p1);
    sensitive << ( r_assign_reg_140 );

    SC_METHOD(thread_tmp_171_fu_247_p2);
    sensitive << ( r_assign_cast3_reg_316 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( tmp_208_cast_fu_243_p1 );

    SC_METHOD(thread_tmp_208_cast_fu_243_p1);
    sensitive << ( edge6_q0 );

    SC_METHOD(thread_tmp_i_fu_270_p1);
    sensitive << ( i_fu_264_p2 );

    SC_METHOD(thread_tmp_s_fu_175_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( p_rec_reg_118 );

    SC_METHOD(thread_x_2_fu_212_p0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( x_fu_50 );

    SC_METHOD(thread_x_2_fu_212_p2);
    sensitive << ( x_2_fu_212_p0 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( exitcond_fu_186_p2 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( tmp_168_fu_232_p2 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( tmp_171_fu_247_p2 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( exitcond1_fu_258_p2 );
    sensitive << ( tmp_s_fu_175_p2 );

    ap_CS_fsm = "0000000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "getURtoDF_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, cubiecube_0_ep_address0, "(port)cubiecube_0_ep_address0");
    sc_trace(mVcdFile, cubiecube_0_ep_ce0, "(port)cubiecube_0_ep_ce0");
    sc_trace(mVcdFile, cubiecube_0_ep_q0, "(port)cubiecube_0_ep_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, edge6_addr_reg_280, "edge6_addr_reg_280");
    sc_trace(mVcdFile, p_sum_fu_164_p2, "p_sum_fu_164_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, j_5_fu_192_p2, "j_5_fu_192_p2");
    sc_trace(mVcdFile, j_5_reg_303, "j_5_reg_303");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, exitcond_fu_186_p2, "exitcond_fu_186_p2");
    sc_trace(mVcdFile, r_assign_cast3_fu_228_p1, "r_assign_cast3_fu_228_p1");
    sc_trace(mVcdFile, r_assign_cast3_reg_316, "r_assign_cast3_reg_316");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, edge6_addr_3_reg_324, "edge6_addr_3_reg_324");
    sc_trace(mVcdFile, tmp_168_fu_232_p2, "tmp_168_fu_232_p2");
    sc_trace(mVcdFile, j_6_fu_252_p2, "j_6_fu_252_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, tmp_171_fu_247_p2, "tmp_171_fu_247_p2");
    sc_trace(mVcdFile, edge6_q0, "edge6_q0");
    sc_trace(mVcdFile, temp_reg_337, "temp_reg_337");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, i_fu_264_p2, "i_fu_264_p2");
    sc_trace(mVcdFile, i_reg_345, "i_reg_345");
    sc_trace(mVcdFile, ap_CS_fsm_state9, "ap_CS_fsm_state9");
    sc_trace(mVcdFile, exitcond1_fu_258_p2, "exitcond1_fu_258_p2");
    sc_trace(mVcdFile, edge6_address0, "edge6_address0");
    sc_trace(mVcdFile, edge6_ce0, "edge6_ce0");
    sc_trace(mVcdFile, edge6_we0, "edge6_we0");
    sc_trace(mVcdFile, edge6_d0, "edge6_d0");
    sc_trace(mVcdFile, p_rec_reg_118, "p_rec_reg_118");
    sc_trace(mVcdFile, tmp_s_fu_175_p2, "tmp_s_fu_175_p2");
    sc_trace(mVcdFile, j_reg_129, "j_reg_129");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, r_assign_reg_140, "r_assign_reg_140");
    sc_trace(mVcdFile, i_i_reg_152, "i_i_reg_152");
    sc_trace(mVcdFile, ap_CS_fsm_state10, "ap_CS_fsm_state10");
    sc_trace(mVcdFile, p_sum_cast_fu_170_p1, "p_sum_cast_fu_170_p1");
    sc_trace(mVcdFile, tmp_166_fu_198_p1, "tmp_166_fu_198_p1");
    sc_trace(mVcdFile, tmp_169_fu_218_p1, "tmp_169_fu_218_p1");
    sc_trace(mVcdFile, tmp_167_fu_203_p2, "tmp_167_fu_203_p2");
    sc_trace(mVcdFile, tmp_170_fu_238_p1, "tmp_170_fu_238_p1");
    sc_trace(mVcdFile, tmp_i_fu_270_p1, "tmp_i_fu_270_p1");
    sc_trace(mVcdFile, tmp_108_i_fu_275_p1, "tmp_108_i_fu_275_p1");
    sc_trace(mVcdFile, x_fu_50, "x_fu_50");
    sc_trace(mVcdFile, x_2_fu_212_p2, "x_2_fu_212_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, x_2_fu_212_p0, "x_2_fu_212_p0");
    sc_trace(mVcdFile, tmp_169_fu_218_p0, "tmp_169_fu_218_p0");
    sc_trace(mVcdFile, tmp_208_cast_fu_243_p1, "tmp_208_cast_fu_243_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

getURtoDF::~getURtoDF() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete edge6_U;
}

void getURtoDF::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        i_i_reg_152 = i_reg_345.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        i_i_reg_152 = ap_const_lv3_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        j_reg_129 = j_5_reg_303.read();
    } else if ((esl_seteq<1,1,1>(tmp_s_fu_175_p2.read(), ap_const_lv1_1) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        j_reg_129 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(tmp_s_fu_175_p2.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        p_rec_reg_118 = p_sum_fu_164_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        p_rec_reg_118 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(exitcond_fu_186_p2.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        r_assign_reg_140 = ap_const_lv3_5;
    } else if ((esl_seteq<1,1,1>(tmp_171_fu_247_p2.read(), ap_const_lv1_1) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()))) {
        r_assign_reg_140 = j_6_fu_252_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_167_fu_203_p2.read()))) {
        x_fu_50 = x_2_fu_212_p2.read();
    } else if ((esl_seteq<1,1,1>(tmp_s_fu_175_p2.read(), ap_const_lv1_1) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        x_fu_50 = ap_const_lv32_0;
    }
    if ((esl_seteq<1,1,1>(tmp_168_fu_232_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        edge6_addr_3_reg_324 =  (sc_lv<3>) (tmp_170_fu_238_p1.read());
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        i_reg_345 = i_fu_264_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        j_5_reg_303 = j_5_fu_192_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        r_assign_cast3_reg_316 = r_assign_cast3_fu_228_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        temp_reg_337 = edge6_q0.read();
    }
}

void getURtoDF::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void getURtoDF::thread_ap_CS_fsm_state10() {
    ap_CS_fsm_state10 = ap_CS_fsm.read()[9];
}

void getURtoDF::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void getURtoDF::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void getURtoDF::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void getURtoDF::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void getURtoDF::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void getURtoDF::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void getURtoDF::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void getURtoDF::thread_ap_CS_fsm_state9() {
    ap_CS_fsm_state9 = ap_CS_fsm.read()[8];
}

void getURtoDF::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(tmp_168_fu_232_p2.read(), ap_const_lv1_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void getURtoDF::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void getURtoDF::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(tmp_168_fu_232_p2.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void getURtoDF::thread_cubiecube_0_ep_address0() {
    cubiecube_0_ep_address0 =  (sc_lv<4>) (tmp_166_fu_198_p1.read());
}

void getURtoDF::thread_cubiecube_0_ep_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        cubiecube_0_ep_ce0 = ap_const_logic_1;
    } else {
        cubiecube_0_ep_ce0 = ap_const_logic_0;
    }
}

void getURtoDF::thread_edge6_addr_reg_280() {
    edge6_addr_reg_280 =  (sc_lv<3>) (ap_const_lv64_0);
}

void getURtoDF::thread_edge6_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        edge6_address0 =  (sc_lv<3>) (tmp_108_i_fu_275_p1.read());
    } else if ((esl_seteq<1,1,1>(exitcond1_fu_258_p2.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()))) {
        edge6_address0 =  (sc_lv<3>) (tmp_i_fu_270_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        edge6_address0 = edge6_addr_reg_280.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) || 
                (esl_seteq<1,1,1>(exitcond1_fu_258_p2.read(), ap_const_lv1_1) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())))) {
        edge6_address0 = edge6_addr_3_reg_324.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        edge6_address0 =  (sc_lv<3>) (tmp_169_fu_218_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        edge6_address0 =  (sc_lv<3>) (p_sum_cast_fu_170_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
        edge6_address0 =  (sc_lv<3>) (ap_const_lv64_0);
    } else {
        edge6_address0 = "XXX";
    }
}

void getURtoDF::thread_edge6_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) || 
         (esl_seteq<1,1,1>(exitcond1_fu_258_p2.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) || 
         (esl_seteq<1,1,1>(exitcond1_fu_258_p2.read(), ap_const_lv1_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())))) {
        edge6_ce0 = ap_const_logic_1;
    } else {
        edge6_ce0 = ap_const_logic_0;
    }
}

void getURtoDF::thread_edge6_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        edge6_d0 = edge6_q0.read();
    } else if ((esl_seteq<1,1,1>(exitcond1_fu_258_p2.read(), ap_const_lv1_1) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()))) {
        edge6_d0 = temp_reg_337.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        edge6_d0 = cubiecube_0_ep_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        edge6_d0 = ap_const_lv4_0;
    } else {
        edge6_d0 =  (sc_lv<4>) ("XXXX");
    }
}

void getURtoDF::thread_edge6_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, tmp_167_fu_203_p2.read())) || 
         (esl_seteq<1,1,1>(exitcond1_fu_258_p2.read(), ap_const_lv1_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())))) {
        edge6_we0 = ap_const_logic_1;
    } else {
        edge6_we0 = ap_const_logic_0;
    }
}

void getURtoDF::thread_exitcond1_fu_258_p2() {
    exitcond1_fu_258_p2 = (!i_i_reg_152.read().is_01() || !r_assign_reg_140.read().is_01())? sc_lv<1>(): sc_lv<1>(i_i_reg_152.read() == r_assign_reg_140.read());
}

void getURtoDF::thread_exitcond_fu_186_p2() {
    exitcond_fu_186_p2 = (!j_reg_129.read().is_01() || !ap_const_lv4_C.is_01())? sc_lv<1>(): sc_lv<1>(j_reg_129.read() == ap_const_lv4_C);
}

void getURtoDF::thread_i_fu_264_p2() {
    i_fu_264_p2 = (!i_i_reg_152.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(i_i_reg_152.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void getURtoDF::thread_j_5_fu_192_p2() {
    j_5_fu_192_p2 = (!j_reg_129.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(j_reg_129.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void getURtoDF::thread_j_6_fu_252_p2() {
    j_6_fu_252_p2 = (!r_assign_reg_140.read().is_01() || !ap_const_lv3_7.is_01())? sc_lv<3>(): (sc_biguint<3>(r_assign_reg_140.read()) + sc_bigint<3>(ap_const_lv3_7));
}

void getURtoDF::thread_p_sum_cast_fu_170_p1() {
    p_sum_cast_fu_170_p1 = esl_zext<64,3>(p_sum_fu_164_p2.read());
}

void getURtoDF::thread_p_sum_fu_164_p2() {
    p_sum_fu_164_p2 = (!p_rec_reg_118.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(p_rec_reg_118.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void getURtoDF::thread_r_assign_cast3_fu_228_p1() {
    r_assign_cast3_fu_228_p1 = esl_zext<5,3>(r_assign_reg_140.read());
}

void getURtoDF::thread_tmp_108_i_fu_275_p1() {
    tmp_108_i_fu_275_p1 = esl_zext<64,3>(i_i_reg_152.read());
}

void getURtoDF::thread_tmp_166_fu_198_p1() {
    tmp_166_fu_198_p1 = esl_zext<64,4>(j_reg_129.read());
}

void getURtoDF::thread_tmp_167_fu_203_p2() {
    tmp_167_fu_203_p2 = (!cubiecube_0_ep_q0.read().is_01() || !ap_const_lv4_6.is_01())? sc_lv<1>(): (sc_biguint<4>(cubiecube_0_ep_q0.read()) < sc_biguint<4>(ap_const_lv4_6));
}

void getURtoDF::thread_tmp_168_fu_232_p2() {
    tmp_168_fu_232_p2 = (!r_assign_reg_140.read().is_01() || !ap_const_lv3_0.is_01())? sc_lv<1>(): sc_lv<1>(r_assign_reg_140.read() == ap_const_lv3_0);
}

void getURtoDF::thread_tmp_169_fu_218_p0() {
    tmp_169_fu_218_p0 = x_fu_50.read();
}

void getURtoDF::thread_tmp_169_fu_218_p1() {
    tmp_169_fu_218_p1 = esl_sext<64,32>(tmp_169_fu_218_p0.read());
}

void getURtoDF::thread_tmp_170_fu_238_p1() {
    tmp_170_fu_238_p1 = esl_zext<64,3>(r_assign_reg_140.read());
}

void getURtoDF::thread_tmp_171_fu_247_p2() {
    tmp_171_fu_247_p2 = (!tmp_208_cast_fu_243_p1.read().is_01() || !r_assign_cast3_reg_316.read().is_01())? sc_lv<1>(): sc_lv<1>(tmp_208_cast_fu_243_p1.read() == r_assign_cast3_reg_316.read());
}

void getURtoDF::thread_tmp_208_cast_fu_243_p1() {
    tmp_208_cast_fu_243_p1 = esl_zext<5,4>(edge6_q0.read());
}

void getURtoDF::thread_tmp_i_fu_270_p1() {
    tmp_i_fu_270_p1 = esl_zext<64,3>(i_fu_264_p2.read());
}

void getURtoDF::thread_tmp_s_fu_175_p2() {
    tmp_s_fu_175_p2 = (!p_rec_reg_118.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(p_rec_reg_118.read() == ap_const_lv3_4);
}

void getURtoDF::thread_x_2_fu_212_p0() {
    x_2_fu_212_p0 = x_fu_50.read();
}

void getURtoDF::thread_x_2_fu_212_p2() {
    x_2_fu_212_p2 = (!x_2_fu_212_p0.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_bigint<32>(x_2_fu_212_p0.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void getURtoDF::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(tmp_s_fu_175_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(exitcond_fu_186_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 16 : 
            if ((esl_seteq<1,1,1>(tmp_168_fu_232_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state6;
            }
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            if ((esl_seteq<1,1,1>(tmp_171_fu_247_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_state8;
            }
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state9;
            break;
        case 256 : 
            if ((esl_seteq<1,1,1>(exitcond1_fu_258_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()))) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_state10;
            }
            break;
        case 512 : 
            ap_NS_fsm = ap_ST_fsm_state9;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<10>) ("XXXXXXXXXX");
            break;
    }
}

}

