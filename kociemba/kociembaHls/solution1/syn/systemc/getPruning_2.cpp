// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "getPruning_2.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic getPruning_2::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic getPruning_2::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<11> getPruning_2::ap_ST_fsm_state1 = "1";
const sc_lv<11> getPruning_2::ap_ST_fsm_state2 = "10";
const sc_lv<11> getPruning_2::ap_ST_fsm_state3 = "100";
const sc_lv<11> getPruning_2::ap_ST_fsm_state4 = "1000";
const sc_lv<11> getPruning_2::ap_ST_fsm_state5 = "10000";
const sc_lv<11> getPruning_2::ap_ST_fsm_state6 = "100000";
const sc_lv<11> getPruning_2::ap_ST_fsm_state7 = "1000000";
const sc_lv<11> getPruning_2::ap_ST_fsm_state8 = "10000000";
const sc_lv<11> getPruning_2::ap_ST_fsm_state9 = "100000000";
const sc_lv<11> getPruning_2::ap_ST_fsm_state10 = "1000000000";
const sc_lv<11> getPruning_2::ap_ST_fsm_state11 = "10000000000";
const sc_lv<32> getPruning_2::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> getPruning_2::ap_const_lv1_0 = "0";
const sc_lv<3> getPruning_2::ap_const_lv3_0 = "000";
const sc_lv<2> getPruning_2::ap_const_lv2_0 = "00";
const sc_lv<4> getPruning_2::ap_const_lv4_0 = "0000";
const sc_lv<16> getPruning_2::ap_const_lv16_0 = "0000000000000000";
const sc_lv<32> getPruning_2::ap_const_lv32_2 = "10";
const sc_lv<32> getPruning_2::ap_const_lv32_9 = "1001";
const sc_lv<32> getPruning_2::ap_const_lv32_1 = "1";
const sc_lv<32> getPruning_2::ap_const_lv32_16 = "10110";
const sc_lv<24> getPruning_2::ap_const_lv24_0 = "000000000000000000000000";
const sc_lv<32> getPruning_2::ap_const_lv32_17 = "10111";
const sc_lv<32> getPruning_2::ap_const_lv32_1F = "11111";
const sc_lv<32> getPruning_2::ap_const_lv32_A = "1010";
const sc_lv<32> getPruning_2::ap_const_lv32_4 = "100";
const sc_lv<32> getPruning_2::ap_const_lv32_7 = "111";
const bool getPruning_2::ap_const_boolean_1 = true;

getPruning_2::getPruning_2(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state10);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state11);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state11 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state11 );

    SC_METHOD(thread_ap_return);
    sensitive << ( tmp_134_reg_228 );
    sensitive << ( ap_CS_fsm_state11 );
    sensitive << ( tmp_199_fu_207_p4 );
    sensitive << ( tmp_140_fu_217_p1 );

    SC_METHOD(thread_ap_sig_ioackin_m_axi_table_r_ARREADY);
    sensitive << ( m_axi_table_r_ARREADY );
    sensitive << ( ap_reg_ioackin_m_axi_table_r_ARREADY );

    SC_METHOD(thread_index_cast4_fu_94_p0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( index );

    SC_METHOD(thread_index_cast4_fu_94_p1);
    sensitive << ( index_cast4_fu_94_p0 );

    SC_METHOD(thread_m_axi_table_r_ARADDR);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( table_addr_reg_243 );
    sensitive << ( ap_reg_ioackin_m_axi_table_r_ARREADY );

    SC_METHOD(thread_m_axi_table_r_ARBURST);

    SC_METHOD(thread_m_axi_table_r_ARCACHE);

    SC_METHOD(thread_m_axi_table_r_ARID);

    SC_METHOD(thread_m_axi_table_r_ARLEN);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_reg_ioackin_m_axi_table_r_ARREADY );

    SC_METHOD(thread_m_axi_table_r_ARLOCK);

    SC_METHOD(thread_m_axi_table_r_ARPROT);

    SC_METHOD(thread_m_axi_table_r_ARQOS);

    SC_METHOD(thread_m_axi_table_r_ARREGION);

    SC_METHOD(thread_m_axi_table_r_ARSIZE);

    SC_METHOD(thread_m_axi_table_r_ARUSER);

    SC_METHOD(thread_m_axi_table_r_ARVALID);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_reg_ioackin_m_axi_table_r_ARREADY );

    SC_METHOD(thread_m_axi_table_r_AWADDR);

    SC_METHOD(thread_m_axi_table_r_AWBURST);

    SC_METHOD(thread_m_axi_table_r_AWCACHE);

    SC_METHOD(thread_m_axi_table_r_AWID);

    SC_METHOD(thread_m_axi_table_r_AWLEN);

    SC_METHOD(thread_m_axi_table_r_AWLOCK);

    SC_METHOD(thread_m_axi_table_r_AWPROT);

    SC_METHOD(thread_m_axi_table_r_AWQOS);

    SC_METHOD(thread_m_axi_table_r_AWREGION);

    SC_METHOD(thread_m_axi_table_r_AWSIZE);

    SC_METHOD(thread_m_axi_table_r_AWUSER);

    SC_METHOD(thread_m_axi_table_r_AWVALID);

    SC_METHOD(thread_m_axi_table_r_BREADY);

    SC_METHOD(thread_m_axi_table_r_RREADY);
    sensitive << ( m_axi_table_r_RVALID );
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_m_axi_table_r_WDATA);

    SC_METHOD(thread_m_axi_table_r_WID);

    SC_METHOD(thread_m_axi_table_r_WLAST);

    SC_METHOD(thread_m_axi_table_r_WSTRB);

    SC_METHOD(thread_m_axi_table_r_WUSER);

    SC_METHOD(thread_m_axi_table_r_WVALID);

    SC_METHOD(thread_p_lshr_f_fu_138_p1);
    sensitive << ( tmp_137_fu_128_p4 );

    SC_METHOD(thread_p_lshr_fu_114_p1);
    sensitive << ( tmp_136_fu_104_p4 );

    SC_METHOD(thread_p_neg_fu_98_p2);
    sensitive << ( index_cast4_fu_94_p1 );

    SC_METHOD(thread_p_neg_t_fu_122_p2);
    sensitive << ( tmp_fu_118_p1 );

    SC_METHOD(thread_sext_fu_175_p1);
    sensitive << ( table_offset );

    SC_METHOD(thread_sum_fu_179_p2);
    sensitive << ( tmp_197_fu_171_p1 );
    sensitive << ( sext_fu_175_p1 );

    SC_METHOD(thread_table_load5_fu_202_p2);
    sensitive << ( table_addr_read_reg_249 );
    sensitive << ( tmp_198_fu_198_p1 );

    SC_METHOD(thread_table_r_blk_n_AR);
    sensitive << ( m_axi_table_r_ARREADY );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_table_r_blk_n_R);
    sensitive << ( m_axi_table_r_RVALID );
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_tmp_134_fu_82_p0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( index );

    SC_METHOD(thread_tmp_134_fu_82_p1);
    sensitive << ( tmp_134_fu_82_p0 );

    SC_METHOD(thread_tmp_135_fu_86_p1);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( index );

    SC_METHOD(thread_tmp_135_fu_86_p3);
    sensitive << ( tmp_135_fu_86_p1 );

    SC_METHOD(thread_tmp_136_fu_104_p4);
    sensitive << ( p_neg_fu_98_p2 );

    SC_METHOD(thread_tmp_137_fu_128_p1);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( index );

    SC_METHOD(thread_tmp_137_fu_128_p4);
    sensitive << ( tmp_137_fu_128_p1 );

    SC_METHOD(thread_tmp_138_fu_164_p1);
    sensitive << ( tmp_s_fu_146_p3 );

    SC_METHOD(thread_tmp_139_fu_191_p3);
    sensitive << ( tmp_138_reg_238 );

    SC_METHOD(thread_tmp_140_fu_217_p1);
    sensitive << ( table_load5_fu_202_p2 );

    SC_METHOD(thread_tmp_194_fu_142_p1);
    sensitive << ( p_lshr_f_fu_138_p1 );

    SC_METHOD(thread_tmp_196_fu_168_p1);
    sensitive << ( tmp_195_reg_233 );

    SC_METHOD(thread_tmp_197_fu_171_p1);
    sensitive << ( tmp_196_fu_168_p1 );

    SC_METHOD(thread_tmp_198_fu_198_p1);
    sensitive << ( tmp_139_fu_191_p3 );

    SC_METHOD(thread_tmp_199_fu_207_p4);
    sensitive << ( table_load5_fu_202_p2 );

    SC_METHOD(thread_tmp_fu_118_p1);
    sensitive << ( p_lshr_fu_114_p1 );

    SC_METHOD(thread_tmp_s_fu_146_p3);
    sensitive << ( tmp_135_fu_86_p3 );
    sensitive << ( p_neg_t_fu_122_p2 );
    sensitive << ( tmp_194_fu_142_p1 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( m_axi_table_r_RVALID );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_sig_ioackin_m_axi_table_r_ARREADY );

    ap_CS_fsm = "00000000001";
    ap_reg_ioackin_m_axi_table_r_ARREADY = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "getPruning_2_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, m_axi_table_r_AWVALID, "(port)m_axi_table_r_AWVALID");
    sc_trace(mVcdFile, m_axi_table_r_AWREADY, "(port)m_axi_table_r_AWREADY");
    sc_trace(mVcdFile, m_axi_table_r_AWADDR, "(port)m_axi_table_r_AWADDR");
    sc_trace(mVcdFile, m_axi_table_r_AWID, "(port)m_axi_table_r_AWID");
    sc_trace(mVcdFile, m_axi_table_r_AWLEN, "(port)m_axi_table_r_AWLEN");
    sc_trace(mVcdFile, m_axi_table_r_AWSIZE, "(port)m_axi_table_r_AWSIZE");
    sc_trace(mVcdFile, m_axi_table_r_AWBURST, "(port)m_axi_table_r_AWBURST");
    sc_trace(mVcdFile, m_axi_table_r_AWLOCK, "(port)m_axi_table_r_AWLOCK");
    sc_trace(mVcdFile, m_axi_table_r_AWCACHE, "(port)m_axi_table_r_AWCACHE");
    sc_trace(mVcdFile, m_axi_table_r_AWPROT, "(port)m_axi_table_r_AWPROT");
    sc_trace(mVcdFile, m_axi_table_r_AWQOS, "(port)m_axi_table_r_AWQOS");
    sc_trace(mVcdFile, m_axi_table_r_AWREGION, "(port)m_axi_table_r_AWREGION");
    sc_trace(mVcdFile, m_axi_table_r_AWUSER, "(port)m_axi_table_r_AWUSER");
    sc_trace(mVcdFile, m_axi_table_r_WVALID, "(port)m_axi_table_r_WVALID");
    sc_trace(mVcdFile, m_axi_table_r_WREADY, "(port)m_axi_table_r_WREADY");
    sc_trace(mVcdFile, m_axi_table_r_WDATA, "(port)m_axi_table_r_WDATA");
    sc_trace(mVcdFile, m_axi_table_r_WSTRB, "(port)m_axi_table_r_WSTRB");
    sc_trace(mVcdFile, m_axi_table_r_WLAST, "(port)m_axi_table_r_WLAST");
    sc_trace(mVcdFile, m_axi_table_r_WID, "(port)m_axi_table_r_WID");
    sc_trace(mVcdFile, m_axi_table_r_WUSER, "(port)m_axi_table_r_WUSER");
    sc_trace(mVcdFile, m_axi_table_r_ARVALID, "(port)m_axi_table_r_ARVALID");
    sc_trace(mVcdFile, m_axi_table_r_ARREADY, "(port)m_axi_table_r_ARREADY");
    sc_trace(mVcdFile, m_axi_table_r_ARADDR, "(port)m_axi_table_r_ARADDR");
    sc_trace(mVcdFile, m_axi_table_r_ARID, "(port)m_axi_table_r_ARID");
    sc_trace(mVcdFile, m_axi_table_r_ARLEN, "(port)m_axi_table_r_ARLEN");
    sc_trace(mVcdFile, m_axi_table_r_ARSIZE, "(port)m_axi_table_r_ARSIZE");
    sc_trace(mVcdFile, m_axi_table_r_ARBURST, "(port)m_axi_table_r_ARBURST");
    sc_trace(mVcdFile, m_axi_table_r_ARLOCK, "(port)m_axi_table_r_ARLOCK");
    sc_trace(mVcdFile, m_axi_table_r_ARCACHE, "(port)m_axi_table_r_ARCACHE");
    sc_trace(mVcdFile, m_axi_table_r_ARPROT, "(port)m_axi_table_r_ARPROT");
    sc_trace(mVcdFile, m_axi_table_r_ARQOS, "(port)m_axi_table_r_ARQOS");
    sc_trace(mVcdFile, m_axi_table_r_ARREGION, "(port)m_axi_table_r_ARREGION");
    sc_trace(mVcdFile, m_axi_table_r_ARUSER, "(port)m_axi_table_r_ARUSER");
    sc_trace(mVcdFile, m_axi_table_r_RVALID, "(port)m_axi_table_r_RVALID");
    sc_trace(mVcdFile, m_axi_table_r_RREADY, "(port)m_axi_table_r_RREADY");
    sc_trace(mVcdFile, m_axi_table_r_RDATA, "(port)m_axi_table_r_RDATA");
    sc_trace(mVcdFile, m_axi_table_r_RLAST, "(port)m_axi_table_r_RLAST");
    sc_trace(mVcdFile, m_axi_table_r_RID, "(port)m_axi_table_r_RID");
    sc_trace(mVcdFile, m_axi_table_r_RUSER, "(port)m_axi_table_r_RUSER");
    sc_trace(mVcdFile, m_axi_table_r_RRESP, "(port)m_axi_table_r_RRESP");
    sc_trace(mVcdFile, m_axi_table_r_BVALID, "(port)m_axi_table_r_BVALID");
    sc_trace(mVcdFile, m_axi_table_r_BREADY, "(port)m_axi_table_r_BREADY");
    sc_trace(mVcdFile, m_axi_table_r_BRESP, "(port)m_axi_table_r_BRESP");
    sc_trace(mVcdFile, m_axi_table_r_BID, "(port)m_axi_table_r_BID");
    sc_trace(mVcdFile, m_axi_table_r_BUSER, "(port)m_axi_table_r_BUSER");
    sc_trace(mVcdFile, table_offset, "(port)table_offset");
    sc_trace(mVcdFile, index, "(port)index");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, table_r_blk_n_AR, "table_r_blk_n_AR");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, table_r_blk_n_R, "table_r_blk_n_R");
    sc_trace(mVcdFile, ap_CS_fsm_state10, "ap_CS_fsm_state10");
    sc_trace(mVcdFile, tmp_134_fu_82_p1, "tmp_134_fu_82_p1");
    sc_trace(mVcdFile, tmp_134_reg_228, "tmp_134_reg_228");
    sc_trace(mVcdFile, tmp_195_reg_233, "tmp_195_reg_233");
    sc_trace(mVcdFile, tmp_138_fu_164_p1, "tmp_138_fu_164_p1");
    sc_trace(mVcdFile, tmp_138_reg_238, "tmp_138_reg_238");
    sc_trace(mVcdFile, table_addr_reg_243, "table_addr_reg_243");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, table_addr_read_reg_249, "table_addr_read_reg_249");
    sc_trace(mVcdFile, sum_fu_179_p2, "sum_fu_179_p2");
    sc_trace(mVcdFile, ap_reg_ioackin_m_axi_table_r_ARREADY, "ap_reg_ioackin_m_axi_table_r_ARREADY");
    sc_trace(mVcdFile, ap_sig_ioackin_m_axi_table_r_ARREADY, "ap_sig_ioackin_m_axi_table_r_ARREADY");
    sc_trace(mVcdFile, tmp_134_fu_82_p0, "tmp_134_fu_82_p0");
    sc_trace(mVcdFile, tmp_135_fu_86_p1, "tmp_135_fu_86_p1");
    sc_trace(mVcdFile, index_cast4_fu_94_p0, "index_cast4_fu_94_p0");
    sc_trace(mVcdFile, index_cast4_fu_94_p1, "index_cast4_fu_94_p1");
    sc_trace(mVcdFile, p_neg_fu_98_p2, "p_neg_fu_98_p2");
    sc_trace(mVcdFile, tmp_136_fu_104_p4, "tmp_136_fu_104_p4");
    sc_trace(mVcdFile, p_lshr_fu_114_p1, "p_lshr_fu_114_p1");
    sc_trace(mVcdFile, tmp_fu_118_p1, "tmp_fu_118_p1");
    sc_trace(mVcdFile, tmp_137_fu_128_p1, "tmp_137_fu_128_p1");
    sc_trace(mVcdFile, tmp_137_fu_128_p4, "tmp_137_fu_128_p4");
    sc_trace(mVcdFile, p_lshr_f_fu_138_p1, "p_lshr_f_fu_138_p1");
    sc_trace(mVcdFile, tmp_135_fu_86_p3, "tmp_135_fu_86_p3");
    sc_trace(mVcdFile, p_neg_t_fu_122_p2, "p_neg_t_fu_122_p2");
    sc_trace(mVcdFile, tmp_194_fu_142_p1, "tmp_194_fu_142_p1");
    sc_trace(mVcdFile, tmp_s_fu_146_p3, "tmp_s_fu_146_p3");
    sc_trace(mVcdFile, tmp_196_fu_168_p1, "tmp_196_fu_168_p1");
    sc_trace(mVcdFile, tmp_197_fu_171_p1, "tmp_197_fu_171_p1");
    sc_trace(mVcdFile, sext_fu_175_p1, "sext_fu_175_p1");
    sc_trace(mVcdFile, ap_CS_fsm_state11, "ap_CS_fsm_state11");
    sc_trace(mVcdFile, tmp_139_fu_191_p3, "tmp_139_fu_191_p3");
    sc_trace(mVcdFile, tmp_198_fu_198_p1, "tmp_198_fu_198_p1");
    sc_trace(mVcdFile, table_load5_fu_202_p2, "table_load5_fu_202_p2");
    sc_trace(mVcdFile, tmp_199_fu_207_p4, "tmp_199_fu_207_p4");
    sc_trace(mVcdFile, tmp_140_fu_217_p1, "tmp_140_fu_217_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

getPruning_2::~getPruning_2() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void getPruning_2::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ioackin_m_axi_table_r_ARREADY = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
            if (esl_seteq<1,1,1>(ap_sig_ioackin_m_axi_table_r_ARREADY.read(), ap_const_logic_1)) {
                ap_reg_ioackin_m_axi_table_r_ARREADY = ap_const_logic_0;
            } else if (esl_seteq<1,1,1>(ap_const_logic_1, m_axi_table_r_ARREADY.read())) {
                ap_reg_ioackin_m_axi_table_r_ARREADY = ap_const_logic_1;
            }
        }
    }
    if ((esl_seteq<1,1,1>(m_axi_table_r_RVALID.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read()))) {
        table_addr_read_reg_249 = m_axi_table_r_RDATA.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        table_addr_reg_243 =  (sc_lv<32>) (sum_fu_179_p2.read());
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        tmp_134_reg_228 = tmp_134_fu_82_p1.read();
        tmp_138_reg_238 = tmp_138_fu_164_p1.read();
        tmp_195_reg_233 = tmp_s_fu_146_p3.read().range(31, 1);
    }
}

void getPruning_2::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void getPruning_2::thread_ap_CS_fsm_state10() {
    ap_CS_fsm_state10 = ap_CS_fsm.read()[9];
}

void getPruning_2::thread_ap_CS_fsm_state11() {
    ap_CS_fsm_state11 = ap_CS_fsm.read()[10];
}

void getPruning_2::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void getPruning_2::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void getPruning_2::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void getPruning_2::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void getPruning_2::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void getPruning_2::thread_ap_return() {
    ap_return = (!tmp_134_reg_228.read()[0].is_01())? sc_lv<4>(): ((tmp_134_reg_228.read()[0].to_bool())? tmp_199_fu_207_p4.read(): tmp_140_fu_217_p1.read());
}

void getPruning_2::thread_ap_sig_ioackin_m_axi_table_r_ARREADY() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_m_axi_table_r_ARREADY.read())) {
        ap_sig_ioackin_m_axi_table_r_ARREADY = m_axi_table_r_ARREADY.read();
    } else {
        ap_sig_ioackin_m_axi_table_r_ARREADY = ap_const_logic_1;
    }
}

void getPruning_2::thread_index_cast4_fu_94_p0() {
    index_cast4_fu_94_p0 = index.read();
}

void getPruning_2::thread_index_cast4_fu_94_p1() {
    index_cast4_fu_94_p1 = esl_sext<24,23>(index_cast4_fu_94_p0.read());
}

void getPruning_2::thread_m_axi_table_r_ARADDR() {
    m_axi_table_r_ARADDR = table_addr_reg_243.read();
}

void getPruning_2::thread_m_axi_table_r_ARBURST() {
    m_axi_table_r_ARBURST = ap_const_lv2_0;
}

void getPruning_2::thread_m_axi_table_r_ARCACHE() {
    m_axi_table_r_ARCACHE = ap_const_lv4_0;
}

void getPruning_2::thread_m_axi_table_r_ARID() {
    m_axi_table_r_ARID = ap_const_lv1_0;
}

void getPruning_2::thread_m_axi_table_r_ARLEN() {
    m_axi_table_r_ARLEN = ap_const_lv32_1;
}

void getPruning_2::thread_m_axi_table_r_ARLOCK() {
    m_axi_table_r_ARLOCK = ap_const_lv2_0;
}

void getPruning_2::thread_m_axi_table_r_ARPROT() {
    m_axi_table_r_ARPROT = ap_const_lv3_0;
}

void getPruning_2::thread_m_axi_table_r_ARQOS() {
    m_axi_table_r_ARQOS = ap_const_lv4_0;
}

void getPruning_2::thread_m_axi_table_r_ARREGION() {
    m_axi_table_r_ARREGION = ap_const_lv4_0;
}

void getPruning_2::thread_m_axi_table_r_ARSIZE() {
    m_axi_table_r_ARSIZE = ap_const_lv3_0;
}

void getPruning_2::thread_m_axi_table_r_ARUSER() {
    m_axi_table_r_ARUSER = ap_const_lv1_0;
}

void getPruning_2::thread_m_axi_table_r_ARVALID() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_m_axi_table_r_ARREADY.read()))) {
        m_axi_table_r_ARVALID = ap_const_logic_1;
    } else {
        m_axi_table_r_ARVALID = ap_const_logic_0;
    }
}

void getPruning_2::thread_m_axi_table_r_AWADDR() {
    m_axi_table_r_AWADDR = ap_const_lv32_0;
}

void getPruning_2::thread_m_axi_table_r_AWBURST() {
    m_axi_table_r_AWBURST = ap_const_lv2_0;
}

void getPruning_2::thread_m_axi_table_r_AWCACHE() {
    m_axi_table_r_AWCACHE = ap_const_lv4_0;
}

void getPruning_2::thread_m_axi_table_r_AWID() {
    m_axi_table_r_AWID = ap_const_lv1_0;
}

void getPruning_2::thread_m_axi_table_r_AWLEN() {
    m_axi_table_r_AWLEN = ap_const_lv32_0;
}

void getPruning_2::thread_m_axi_table_r_AWLOCK() {
    m_axi_table_r_AWLOCK = ap_const_lv2_0;
}

void getPruning_2::thread_m_axi_table_r_AWPROT() {
    m_axi_table_r_AWPROT = ap_const_lv3_0;
}

void getPruning_2::thread_m_axi_table_r_AWQOS() {
    m_axi_table_r_AWQOS = ap_const_lv4_0;
}

void getPruning_2::thread_m_axi_table_r_AWREGION() {
    m_axi_table_r_AWREGION = ap_const_lv4_0;
}

void getPruning_2::thread_m_axi_table_r_AWSIZE() {
    m_axi_table_r_AWSIZE = ap_const_lv3_0;
}

void getPruning_2::thread_m_axi_table_r_AWUSER() {
    m_axi_table_r_AWUSER = ap_const_lv1_0;
}

void getPruning_2::thread_m_axi_table_r_AWVALID() {
    m_axi_table_r_AWVALID = ap_const_logic_0;
}

void getPruning_2::thread_m_axi_table_r_BREADY() {
    m_axi_table_r_BREADY = ap_const_logic_0;
}

void getPruning_2::thread_m_axi_table_r_RREADY() {
    if ((esl_seteq<1,1,1>(m_axi_table_r_RVALID.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read()))) {
        m_axi_table_r_RREADY = ap_const_logic_1;
    } else {
        m_axi_table_r_RREADY = ap_const_logic_0;
    }
}

void getPruning_2::thread_m_axi_table_r_WDATA() {
    m_axi_table_r_WDATA = ap_const_lv16_0;
}

void getPruning_2::thread_m_axi_table_r_WID() {
    m_axi_table_r_WID = ap_const_lv1_0;
}

void getPruning_2::thread_m_axi_table_r_WLAST() {
    m_axi_table_r_WLAST = ap_const_logic_0;
}

void getPruning_2::thread_m_axi_table_r_WSTRB() {
    m_axi_table_r_WSTRB = ap_const_lv2_0;
}

void getPruning_2::thread_m_axi_table_r_WUSER() {
    m_axi_table_r_WUSER = ap_const_lv1_0;
}

void getPruning_2::thread_m_axi_table_r_WVALID() {
    m_axi_table_r_WVALID = ap_const_logic_0;
}

void getPruning_2::thread_p_lshr_f_fu_138_p1() {
    p_lshr_f_fu_138_p1 = esl_sext<31,22>(tmp_137_fu_128_p4.read());
}

void getPruning_2::thread_p_lshr_fu_114_p1() {
    p_lshr_fu_114_p1 = esl_sext<31,23>(tmp_136_fu_104_p4.read());
}

void getPruning_2::thread_p_neg_fu_98_p2() {
    p_neg_fu_98_p2 = (!ap_const_lv24_0.is_01() || !index_cast4_fu_94_p1.read().is_01())? sc_lv<24>(): (sc_biguint<24>(ap_const_lv24_0) - sc_bigint<24>(index_cast4_fu_94_p1.read()));
}

void getPruning_2::thread_p_neg_t_fu_122_p2() {
    p_neg_t_fu_122_p2 = (!ap_const_lv32_0.is_01() || !tmp_fu_118_p1.read().is_01())? sc_lv<32>(): (sc_biguint<32>(ap_const_lv32_0) - sc_biguint<32>(tmp_fu_118_p1.read()));
}

void getPruning_2::thread_sext_fu_175_p1() {
    sext_fu_175_p1 = esl_zext<64,31>(table_offset.read());
}

void getPruning_2::thread_sum_fu_179_p2() {
    sum_fu_179_p2 = (!tmp_197_fu_171_p1.read().is_01() || !sext_fu_175_p1.read().is_01())? sc_lv<64>(): (sc_biguint<64>(tmp_197_fu_171_p1.read()) + sc_biguint<64>(sext_fu_175_p1.read()));
}

void getPruning_2::thread_table_load5_fu_202_p2() {
    table_load5_fu_202_p2 = (!tmp_198_fu_198_p1.read().is_01())? sc_lv<16>(): table_addr_read_reg_249.read() >> (unsigned short)tmp_198_fu_198_p1.read().to_uint();
}

void getPruning_2::thread_table_r_blk_n_AR() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        table_r_blk_n_AR = m_axi_table_r_ARREADY.read();
    } else {
        table_r_blk_n_AR = ap_const_logic_1;
    }
}

void getPruning_2::thread_table_r_blk_n_R() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        table_r_blk_n_R = m_axi_table_r_RVALID.read();
    } else {
        table_r_blk_n_R = ap_const_logic_1;
    }
}

void getPruning_2::thread_tmp_134_fu_82_p0() {
    tmp_134_fu_82_p0 = index.read();
}

void getPruning_2::thread_tmp_134_fu_82_p1() {
    tmp_134_fu_82_p1 = tmp_134_fu_82_p0.read().range(1-1, 0);
}

void getPruning_2::thread_tmp_135_fu_86_p1() {
    tmp_135_fu_86_p1 = index.read();
}

void getPruning_2::thread_tmp_135_fu_86_p3() {
    tmp_135_fu_86_p3 = tmp_135_fu_86_p1.read().range(22, 22);
}

void getPruning_2::thread_tmp_136_fu_104_p4() {
    tmp_136_fu_104_p4 = p_neg_fu_98_p2.read().range(23, 1);
}

void getPruning_2::thread_tmp_137_fu_128_p1() {
    tmp_137_fu_128_p1 = index.read();
}

void getPruning_2::thread_tmp_137_fu_128_p4() {
    tmp_137_fu_128_p4 = tmp_137_fu_128_p1.read().range(22, 1);
}

void getPruning_2::thread_tmp_138_fu_164_p1() {
    tmp_138_fu_164_p1 = tmp_s_fu_146_p3.read().range(1-1, 0);
}

void getPruning_2::thread_tmp_139_fu_191_p3() {
    tmp_139_fu_191_p3 = esl_concat<1,3>(tmp_138_reg_238.read(), ap_const_lv3_0);
}

void getPruning_2::thread_tmp_140_fu_217_p1() {
    tmp_140_fu_217_p1 = table_load5_fu_202_p2.read().range(4-1, 0);
}

void getPruning_2::thread_tmp_194_fu_142_p1() {
    tmp_194_fu_142_p1 = esl_zext<32,31>(p_lshr_f_fu_138_p1.read());
}

void getPruning_2::thread_tmp_196_fu_168_p1() {
    tmp_196_fu_168_p1 = esl_sext<63,31>(tmp_195_reg_233.read());
}

void getPruning_2::thread_tmp_197_fu_171_p1() {
    tmp_197_fu_171_p1 = esl_zext<64,63>(tmp_196_fu_168_p1.read());
}

void getPruning_2::thread_tmp_198_fu_198_p1() {
    tmp_198_fu_198_p1 = esl_zext<16,4>(tmp_139_fu_191_p3.read());
}

void getPruning_2::thread_tmp_199_fu_207_p4() {
    tmp_199_fu_207_p4 = table_load5_fu_202_p2.read().range(7, 4);
}

void getPruning_2::thread_tmp_fu_118_p1() {
    tmp_fu_118_p1 = esl_zext<32,31>(p_lshr_fu_114_p1.read());
}

void getPruning_2::thread_tmp_s_fu_146_p3() {
    tmp_s_fu_146_p3 = (!tmp_135_fu_86_p3.read()[0].is_01())? sc_lv<32>(): ((tmp_135_fu_86_p3.read()[0].to_bool())? p_neg_t_fu_122_p2.read(): tmp_194_fu_142_p1.read());
}

void getPruning_2::thread_ap_NS_fsm() {
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
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_sig_ioackin_m_axi_table_r_ARREADY.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
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
            if ((esl_seteq<1,1,1>(m_axi_table_r_RVALID.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read()))) {
                ap_NS_fsm = ap_ST_fsm_state11;
            } else {
                ap_NS_fsm = ap_ST_fsm_state10;
            }
            break;
        case 1024 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXXXXXXXXXX";
            break;
    }
}

}

