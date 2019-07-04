// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module getUBtoDF (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        cubiecube_0_ep_address0,
        cubiecube_0_ep_ce0,
        cubiecube_0_ep_q0,
        ap_return
);

parameter    ap_ST_fsm_state1 = 47'd1;
parameter    ap_ST_fsm_state2 = 47'd2;
parameter    ap_ST_fsm_state3 = 47'd4;
parameter    ap_ST_fsm_state4 = 47'd8;
parameter    ap_ST_fsm_state5 = 47'd16;
parameter    ap_ST_fsm_state6 = 47'd32;
parameter    ap_ST_fsm_state7 = 47'd64;
parameter    ap_ST_fsm_state8 = 47'd128;
parameter    ap_ST_fsm_state9 = 47'd256;
parameter    ap_ST_fsm_state10 = 47'd512;
parameter    ap_ST_fsm_state11 = 47'd1024;
parameter    ap_ST_fsm_state12 = 47'd2048;
parameter    ap_ST_fsm_state13 = 47'd4096;
parameter    ap_ST_fsm_state14 = 47'd8192;
parameter    ap_ST_fsm_state15 = 47'd16384;
parameter    ap_ST_fsm_state16 = 47'd32768;
parameter    ap_ST_fsm_state17 = 47'd65536;
parameter    ap_ST_fsm_state18 = 47'd131072;
parameter    ap_ST_fsm_state19 = 47'd262144;
parameter    ap_ST_fsm_state20 = 47'd524288;
parameter    ap_ST_fsm_state21 = 47'd1048576;
parameter    ap_ST_fsm_state22 = 47'd2097152;
parameter    ap_ST_fsm_state23 = 47'd4194304;
parameter    ap_ST_fsm_state24 = 47'd8388608;
parameter    ap_ST_fsm_state25 = 47'd16777216;
parameter    ap_ST_fsm_state26 = 47'd33554432;
parameter    ap_ST_fsm_state27 = 47'd67108864;
parameter    ap_ST_fsm_state28 = 47'd134217728;
parameter    ap_ST_fsm_state29 = 47'd268435456;
parameter    ap_ST_fsm_state30 = 47'd536870912;
parameter    ap_ST_fsm_state31 = 47'd1073741824;
parameter    ap_ST_fsm_state32 = 47'd2147483648;
parameter    ap_ST_fsm_state33 = 47'd4294967296;
parameter    ap_ST_fsm_state34 = 47'd8589934592;
parameter    ap_ST_fsm_state35 = 47'd17179869184;
parameter    ap_ST_fsm_state36 = 47'd34359738368;
parameter    ap_ST_fsm_state37 = 47'd68719476736;
parameter    ap_ST_fsm_state38 = 47'd137438953472;
parameter    ap_ST_fsm_state39 = 47'd274877906944;
parameter    ap_ST_fsm_state40 = 47'd549755813888;
parameter    ap_ST_fsm_state41 = 47'd1099511627776;
parameter    ap_ST_fsm_state42 = 47'd2199023255552;
parameter    ap_ST_fsm_state43 = 47'd4398046511104;
parameter    ap_ST_fsm_state44 = 47'd8796093022208;
parameter    ap_ST_fsm_state45 = 47'd17592186044416;
parameter    ap_ST_fsm_state46 = 47'd35184372088832;
parameter    ap_ST_fsm_state47 = 47'd70368744177664;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] cubiecube_0_ep_address0;
output   cubiecube_0_ep_ce0;
input  [3:0] cubiecube_0_ep_q0;
output  [15:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg cubiecube_0_ep_ce0;
reg[15:0] ap_return;

(* fsm_encoding = "none" *) reg   [46:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] n_assign_cast4_fu_377_p1;
reg   [31:0] n_assign_cast4_reg_751;
wire    ap_CS_fsm_state2;
wire   [3:0] j_10_fu_387_p2;
reg   [3:0] j_10_reg_761;
wire   [0:0] exitcond_fu_381_p2;
reg   [3:0] edge3_0_reg_792;
wire    ap_CS_fsm_state3;
wire   [0:0] or_cond_fu_425_p2;
reg   [0:0] or_cond_reg_799;
wire   [31:0] x_4_fu_431_p2;
reg   [31:0] x_4_reg_803;
wire   [31:0] tmp_380_i_fu_475_p2;
reg   [31:0] tmp_380_i_reg_811;
wire   [0:0] tmp_i_fu_437_p2;
wire   [31:0] s_fu_486_p2;
reg   [31:0] s_reg_819;
wire    ap_CS_fsm_state4;
wire   [0:0] exitcond_i_fu_481_p2;
wire   [31:0] i_28_fu_492_p2;
reg   [31:0] i_28_reg_824;
wire   [31:0] j_9_fu_503_p2;
reg   [31:0] j_9_reg_829;
wire    ap_CS_fsm_state5;
wire   [31:0] grp_fu_498_p2;
wire    ap_CS_fsm_state40;
wire   [4:0] tmp_225_cast_fu_548_p1;
reg   [4:0] tmp_225_cast_reg_845;
wire    ap_CS_fsm_state42;
wire   [0:0] tmp_184_fu_536_p2;
wire   [0:0] cond2_fu_552_p2;
reg   [0:0] cond2_reg_850;
wire    ap_CS_fsm_state43;
wire   [31:0] k_3_fu_612_p2;
reg   [31:0] k_3_reg_870;
wire   [1:0] tmp_189_fu_618_p2;
reg   [1:0] tmp_189_reg_875;
wire   [0:0] tmp_188_fu_607_p2;
wire   [1:0] j_fu_624_p2;
reg   [1:0] j_reg_880;
wire   [1:0] i_29_fu_636_p2;
reg   [1:0] i_29_reg_888;
wire    ap_CS_fsm_state44;
wire   [3:0] arr_load_phi_i_fu_648_p3;
wire   [0:0] exitcond1_fu_630_p2;
wire   [31:0] tmp_190_fu_699_p2;
reg   [31:0] tmp_190_reg_900;
wire    ap_CS_fsm_state46;
wire   [1:0] indvars_iv_next_fu_705_p2;
reg   [1:0] indvars_iv_next_reg_905;
wire   [31:0] b_3_fu_711_p2;
wire    ap_CS_fsm_state47;
reg   [3:0] i_reg_107;
wire    ap_CS_fsm_state41;
reg   [31:0] j_i_reg_119;
reg  signed [31:0] i_i_reg_131;
reg  signed [31:0] s_i_reg_140;
reg   [31:0] p_0_i_reg_152;
reg   [1:0] indvars_iv_reg_164;
reg   [1:0] r_assign_reg_176;
reg  signed [31:0] b_reg_188;
reg   [31:0] k_reg_200;
reg   [3:0] arr2_i_reg_212;
wire    ap_CS_fsm_state45;
reg   [0:0] write_flag_i_reg_222;
reg   [3:0] arr1_i_reg_234;
reg   [3:0] arr_i_reg_244;
wire   [1:0] ap_phi_mux_i_i1_phi_fu_260_p4;
reg   [1:0] i_i1_reg_256;
reg   [3:0] arr2_i_be_reg_267;
reg   [0:0] write_flag_i_be_reg_282;
reg   [3:0] arr1_i_be_reg_299;
reg   [3:0] arr_i_be_reg_314;
wire   [63:0] tmp_s_fu_393_p1;
reg   [3:0] edge3_2_6_fu_62;
wire   [1:0] tmp_126_fu_516_p1;
reg   [3:0] edge3_2_7_fu_66;
reg   [3:0] edge3_2_8_fu_70;
reg   [31:0] a_1_fu_74;
wire   [31:0] a_3_fu_509_p2;
reg   [31:0] x_fu_78;
reg   [3:0] temp_fu_82;
wire   [3:0] edge3_0_2_fu_673_p3;
reg   [3:0] edge3_1_3_fu_86;
wire   [3:0] edge3_1_fu_666_p3;
reg   [3:0] edge3_2_9_fu_90;
wire   [3:0] edge3_2_fu_659_p3;
wire   [0:0] tmp_182_fu_413_p2;
wire   [0:0] tmp_183_fu_419_p2;
wire   [2:0] p_lshr_f_i_cast_fu_442_p4;
wire   [31:0] tmp_i_cast_fu_452_p1;
wire   [0:0] tmp_379_i_fu_456_p2;
wire   [31:0] k_assign_3_fu_462_p2;
wire   [31:0] p_k_i_fu_467_p3;
wire   [2:0] j_1_cast_fu_532_p1;
wire   [2:0] tmp_187_fu_542_p2;
wire   [31:0] tmp_fu_558_p2;
wire   [31:0] tmp_123_fu_564_p2;
wire   [31:0] tmp_185_fu_570_p2;
wire   [15:0] tmp_125_fu_580_p1;
wire   [15:0] tmp_124_fu_576_p1;
wire   [3:0] edge3_load_phi_fu_596_p3;
wire   [4:0] tmp_228_cast_fu_603_p1;
wire   [0:0] cond_i_fu_642_p2;
wire   [1:0] tmp_190_fu_699_p0;
reg    grp_fu_498_ap_start;
wire    grp_fu_498_ap_done;
wire   [15:0] tmp_186_fu_584_p2;
reg   [15:0] ap_return_preg;
reg   [46:0] ap_NS_fsm;
wire   [31:0] tmp_190_fu_699_p00;

// power-on initialization
initial begin
#0 ap_CS_fsm = 47'd1;
#0 ap_return_preg = 16'd0;
end

solution_sdiv_32nkbM #(
    .ID( 1 ),
    .NUM_STAGE( 36 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
solution_sdiv_32nkbM_U43(
    .clk(ap_clk),
    .reset(ap_rst),
    .start(grp_fu_498_ap_start),
    .done(grp_fu_498_ap_done),
    .din0(s_reg_819),
    .din1(j_i_reg_119),
    .ce(1'b1),
    .dout(grp_fu_498_p2)
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
        ap_return_preg <= 16'd0;
    end else begin
        if (((tmp_184_fu_536_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state42))) begin
            ap_return_preg <= tmp_186_fu_584_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((~(tmp_126_fu_516_p1 == 2'd1) & ~(tmp_126_fu_516_p1 == 2'd0) & (or_cond_reg_799 == 1'd1) & (1'b1 == ap_CS_fsm_state41)) | ((or_cond_reg_799 == 1'd1) & (tmp_126_fu_516_p1 == 2'd1) & (1'b1 == ap_CS_fsm_state41)) | ((or_cond_reg_799 == 1'd1) & (tmp_126_fu_516_p1 == 2'd0) & (1'b1 == ap_CS_fsm_state41)))) begin
        a_1_fu_74 <= a_3_fu_509_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        a_1_fu_74 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_630_p2 == 1'd0) & (ap_phi_mux_i_i1_phi_fu_260_p4 == 2'd1) & (1'b1 == ap_CS_fsm_state44))) begin
        arr1_i_be_reg_299 <= arr_load_phi_i_fu_648_p3;
    end else if (((~(ap_phi_mux_i_i1_phi_fu_260_p4 == 2'd1) & ~(ap_phi_mux_i_i1_phi_fu_260_p4 == 2'd0) & (exitcond1_fu_630_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state44)) | ((exitcond1_fu_630_p2 == 1'd0) & (ap_phi_mux_i_i1_phi_fu_260_p4 == 2'd0) & (1'b1 == ap_CS_fsm_state44)))) begin
        arr1_i_be_reg_299 <= arr1_i_reg_234;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        arr1_i_reg_234 <= arr1_i_be_reg_299;
    end else if (((tmp_188_fu_607_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state43))) begin
        arr1_i_reg_234 <= edge3_1_3_fu_86;
    end
end

always @ (posedge ap_clk) begin
    if ((((exitcond1_fu_630_p2 == 1'd0) & (ap_phi_mux_i_i1_phi_fu_260_p4 == 2'd1) & (1'b1 == ap_CS_fsm_state44)) | ((exitcond1_fu_630_p2 == 1'd0) & (ap_phi_mux_i_i1_phi_fu_260_p4 == 2'd0) & (1'b1 == ap_CS_fsm_state44)))) begin
        arr2_i_be_reg_267 <= arr2_i_reg_212;
    end else if ((~(ap_phi_mux_i_i1_phi_fu_260_p4 == 2'd1) & ~(ap_phi_mux_i_i1_phi_fu_260_p4 == 2'd0) & (exitcond1_fu_630_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state44))) begin
        arr2_i_be_reg_267 <= arr_load_phi_i_fu_648_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        arr2_i_reg_212 <= arr2_i_be_reg_267;
    end else if (((tmp_188_fu_607_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state43))) begin
        arr2_i_reg_212 <= edge3_2_9_fu_90;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_630_p2 == 1'd0) & (ap_phi_mux_i_i1_phi_fu_260_p4 == 2'd0) & (1'b1 == ap_CS_fsm_state44))) begin
        arr_i_be_reg_314 <= arr_load_phi_i_fu_648_p3;
    end else if ((((exitcond1_fu_630_p2 == 1'd0) & (ap_phi_mux_i_i1_phi_fu_260_p4 == 2'd1) & (1'b1 == ap_CS_fsm_state44)) | (~(ap_phi_mux_i_i1_phi_fu_260_p4 == 2'd1) & ~(ap_phi_mux_i_i1_phi_fu_260_p4 == 2'd0) & (exitcond1_fu_630_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state44)))) begin
        arr_i_be_reg_314 <= arr_i_reg_244;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_381_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        b_reg_188 <= 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        b_reg_188 <= b_3_fu_711_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_630_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state44))) begin
        edge3_1_3_fu_86 <= edge3_1_fu_666_p3;
    end else if (((exitcond_fu_381_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        edge3_1_3_fu_86 <= edge3_2_7_fu_66;
    end
end

always @ (posedge ap_clk) begin
    if (((or_cond_reg_799 == 1'd1) & (tmp_126_fu_516_p1 == 2'd0) & (1'b1 == ap_CS_fsm_state41))) begin
        edge3_2_6_fu_62 <= edge3_0_reg_792;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        edge3_2_6_fu_62 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((or_cond_reg_799 == 1'd1) & (tmp_126_fu_516_p1 == 2'd1) & (1'b1 == ap_CS_fsm_state41))) begin
        edge3_2_7_fu_66 <= edge3_0_reg_792;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        edge3_2_7_fu_66 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~(tmp_126_fu_516_p1 == 2'd1) & ~(tmp_126_fu_516_p1 == 2'd0) & (or_cond_reg_799 == 1'd1) & (1'b1 == ap_CS_fsm_state41))) begin
        edge3_2_8_fu_70 <= edge3_0_reg_792;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        edge3_2_8_fu_70 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_630_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state44))) begin
        edge3_2_9_fu_90 <= edge3_2_fu_659_p3;
    end else if (((exitcond_fu_381_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        edge3_2_9_fu_90 <= edge3_2_8_fu_70;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        i_i1_reg_256 <= i_29_reg_888;
    end else if (((tmp_188_fu_607_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state43))) begin
        i_i1_reg_256 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        i_i_reg_131 <= i_28_reg_824;
    end else if (((or_cond_fu_425_p2 == 1'd1) & (tmp_i_fu_437_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        i_i_reg_131 <= n_assign_cast4_reg_751;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        i_reg_107 <= j_10_reg_761;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_107 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_381_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        indvars_iv_reg_164 <= 2'd2;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        indvars_iv_reg_164 <= indvars_iv_next_reg_905;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        j_i_reg_119 <= j_9_reg_829;
    end else if (((or_cond_fu_425_p2 == 1'd1) & (tmp_i_fu_437_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        j_i_reg_119 <= 32'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_630_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state44))) begin
        k_reg_200 <= k_3_reg_870;
    end else if (((tmp_184_fu_536_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state42))) begin
        k_reg_200 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_fu_481_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        p_0_i_reg_152 <= s_i_reg_140;
    end else if (((tmp_i_fu_437_p2 == 1'd1) & (or_cond_fu_425_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        p_0_i_reg_152 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_381_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        r_assign_reg_176 <= 2'd2;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        r_assign_reg_176 <= j_reg_880;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        s_i_reg_140 <= grp_fu_498_p2;
    end else if (((or_cond_fu_425_p2 == 1'd1) & (tmp_i_fu_437_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        s_i_reg_140 <= 32'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_630_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state44))) begin
        temp_fu_82 <= edge3_0_2_fu_673_p3;
    end else if (((exitcond_fu_381_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        temp_fu_82 <= edge3_2_6_fu_62;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_630_p2 == 1'd0) & (ap_phi_mux_i_i1_phi_fu_260_p4 == 2'd0) & (1'b1 == ap_CS_fsm_state44))) begin
        write_flag_i_be_reg_282 <= 1'd1;
    end else if ((((exitcond1_fu_630_p2 == 1'd0) & (ap_phi_mux_i_i1_phi_fu_260_p4 == 2'd1) & (1'b1 == ap_CS_fsm_state44)) | (~(ap_phi_mux_i_i1_phi_fu_260_p4 == 2'd1) & ~(ap_phi_mux_i_i1_phi_fu_260_p4 == 2'd0) & (exitcond1_fu_630_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state44)))) begin
        write_flag_i_be_reg_282 <= write_flag_i_reg_222;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        write_flag_i_reg_222 <= write_flag_i_be_reg_282;
    end else if (((tmp_188_fu_607_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state43))) begin
        write_flag_i_reg_222 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((~(tmp_126_fu_516_p1 == 2'd1) & ~(tmp_126_fu_516_p1 == 2'd0) & (or_cond_reg_799 == 1'd1) & (1'b1 == ap_CS_fsm_state41)) | ((or_cond_reg_799 == 1'd1) & (tmp_126_fu_516_p1 == 2'd1) & (1'b1 == ap_CS_fsm_state41)) | ((or_cond_reg_799 == 1'd1) & (tmp_126_fu_516_p1 == 2'd0) & (1'b1 == ap_CS_fsm_state41)))) begin
        x_fu_78 <= x_4_reg_803;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        x_fu_78 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        arr_i_reg_244 <= arr_i_be_reg_314;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_184_fu_536_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state42))) begin
        cond2_reg_850 <= cond2_fu_552_p2;
        tmp_225_cast_reg_845[2 : 0] <= tmp_225_cast_fu_548_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        edge3_0_reg_792 <= cubiecube_0_ep_q0;
        or_cond_reg_799 <= or_cond_fu_425_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_fu_481_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        i_28_reg_824 <= i_28_fu_492_p2;
        s_reg_819 <= s_fu_486_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        i_29_reg_888 <= i_29_fu_636_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state46)) begin
        indvars_iv_next_reg_905 <= indvars_iv_next_fu_705_p2;
        tmp_190_reg_900 <= tmp_190_fu_699_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        j_10_reg_761 <= j_10_fu_387_p2;
        n_assign_cast4_reg_751[3 : 0] <= n_assign_cast4_fu_377_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        j_9_reg_829 <= j_9_fu_503_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_188_fu_607_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state43))) begin
        j_reg_880 <= j_fu_624_p2;
        tmp_189_reg_875 <= tmp_189_fu_618_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        k_3_reg_870 <= k_3_fu_612_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((or_cond_fu_425_p2 == 1'd1) & (tmp_i_fu_437_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp_380_i_reg_811 <= tmp_380_i_fu_475_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((or_cond_fu_425_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        x_4_reg_803 <= x_4_fu_431_p2;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((tmp_184_fu_536_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state42)))) begin
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
    if (((tmp_184_fu_536_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state42))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_184_fu_536_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state42))) begin
        ap_return = tmp_186_fu_584_p2;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cubiecube_0_ep_ce0 = 1'b1;
    end else begin
        cubiecube_0_ep_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_498_ap_start = 1'b1;
    end else begin
        grp_fu_498_ap_start = 1'b0;
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
            if (((exitcond_fu_381_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state42;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((or_cond_fu_425_p2 == 1'd1) & (tmp_i_fu_437_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state41;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((exitcond_i_fu_481_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state41;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state41 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state42 : begin
            if (((tmp_184_fu_536_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state42))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state43;
            end
        end
        ap_ST_fsm_state43 : begin
            if (((tmp_188_fu_607_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state43))) begin
                ap_NS_fsm = ap_ST_fsm_state44;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state46;
            end
        end
        ap_ST_fsm_state44 : begin
            if (((exitcond1_fu_630_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state44))) begin
                ap_NS_fsm = ap_ST_fsm_state43;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state45;
            end
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state44;
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state47;
        end
        ap_ST_fsm_state47 : begin
            ap_NS_fsm = ap_ST_fsm_state42;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_3_fu_509_p2 = (p_0_i_reg_152 + a_1_fu_74);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state40 = ap_CS_fsm[32'd39];

assign ap_CS_fsm_state41 = ap_CS_fsm[32'd40];

assign ap_CS_fsm_state42 = ap_CS_fsm[32'd41];

assign ap_CS_fsm_state43 = ap_CS_fsm[32'd42];

assign ap_CS_fsm_state44 = ap_CS_fsm[32'd43];

assign ap_CS_fsm_state45 = ap_CS_fsm[32'd44];

assign ap_CS_fsm_state46 = ap_CS_fsm[32'd45];

assign ap_CS_fsm_state47 = ap_CS_fsm[32'd46];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_phi_mux_i_i1_phi_fu_260_p4 = i_i1_reg_256;

assign arr_load_phi_i_fu_648_p3 = ((cond_i_fu_642_p2[0:0] === 1'b1) ? arr1_i_reg_234 : arr2_i_reg_212);

assign b_3_fu_711_p2 = (k_reg_200 + tmp_190_reg_900);

assign cond2_fu_552_p2 = ((r_assign_reg_176 == 2'd1) ? 1'b1 : 1'b0);

assign cond_i_fu_642_p2 = ((i_i1_reg_256 == 2'd0) ? 1'b1 : 1'b0);

assign cubiecube_0_ep_address0 = tmp_s_fu_393_p1;

assign edge3_0_2_fu_673_p3 = ((write_flag_i_reg_222[0:0] === 1'b1) ? arr_i_reg_244 : temp_fu_82);

assign edge3_1_fu_666_p3 = ((cond2_reg_850[0:0] === 1'b1) ? temp_fu_82 : arr1_i_reg_234);

assign edge3_2_fu_659_p3 = ((cond2_reg_850[0:0] === 1'b1) ? arr2_i_reg_212 : temp_fu_82);

assign edge3_load_phi_fu_596_p3 = ((cond2_reg_850[0:0] === 1'b1) ? edge3_1_3_fu_86 : edge3_2_9_fu_90);

assign exitcond1_fu_630_p2 = ((i_i1_reg_256 == indvars_iv_reg_164) ? 1'b1 : 1'b0);

assign exitcond_fu_381_p2 = ((i_reg_107 == 4'd12) ? 1'b1 : 1'b0);

assign exitcond_i_fu_481_p2 = ((j_i_reg_119 == tmp_380_i_reg_811) ? 1'b1 : 1'b0);

assign i_28_fu_492_p2 = ($signed(i_i_reg_131) + $signed(32'd4294967295));

assign i_29_fu_636_p2 = (i_i1_reg_256 + 2'd1);

assign indvars_iv_next_fu_705_p2 = ($signed(indvars_iv_reg_164) + $signed(2'd3));

assign j_10_fu_387_p2 = (i_reg_107 + 4'd1);

assign j_1_cast_fu_532_p1 = r_assign_reg_176;

assign j_9_fu_503_p2 = (j_i_reg_119 + 32'd1);

assign j_fu_624_p2 = ($signed(r_assign_reg_176) + $signed(2'd3));

assign k_3_fu_612_p2 = (k_reg_200 + 32'd1);

assign k_assign_3_fu_462_p2 = (n_assign_cast4_reg_751 - x_4_fu_431_p2);

assign n_assign_cast4_fu_377_p1 = i_reg_107;

assign or_cond_fu_425_p2 = (tmp_183_fu_419_p2 & tmp_182_fu_413_p2);

assign p_k_i_fu_467_p3 = ((tmp_379_i_fu_456_p2[0:0] === 1'b1) ? k_assign_3_fu_462_p2 : x_4_fu_431_p2);

assign p_lshr_f_i_cast_fu_442_p4 = {{i_reg_107[3:1]}};

assign s_fu_486_p2 = ($signed(s_i_reg_140) * $signed(i_i_reg_131));

assign tmp_123_fu_564_p2 = a_1_fu_74 << 32'd1;

assign tmp_124_fu_576_p1 = b_reg_188[15:0];

assign tmp_125_fu_580_p1 = tmp_185_fu_570_p2[15:0];

assign tmp_126_fu_516_p1 = x_fu_78[1:0];

assign tmp_182_fu_413_p2 = ((cubiecube_0_ep_q0 > 4'd2) ? 1'b1 : 1'b0);

assign tmp_183_fu_419_p2 = ((cubiecube_0_ep_q0 < 4'd6) ? 1'b1 : 1'b0);

assign tmp_184_fu_536_p2 = ((r_assign_reg_176 == 2'd0) ? 1'b1 : 1'b0);

assign tmp_185_fu_570_p2 = (tmp_fu_558_p2 - tmp_123_fu_564_p2);

assign tmp_186_fu_584_p2 = (tmp_125_fu_580_p1 + tmp_124_fu_576_p1);

assign tmp_187_fu_542_p2 = (j_1_cast_fu_532_p1 + 3'd3);

assign tmp_188_fu_607_p2 = ((tmp_228_cast_fu_603_p1 == tmp_225_cast_reg_845) ? 1'b1 : 1'b0);

assign tmp_189_fu_618_p2 = (r_assign_reg_176 + 2'd1);

assign tmp_190_fu_699_p0 = tmp_190_fu_699_p00;

assign tmp_190_fu_699_p00 = tmp_189_reg_875;

assign tmp_190_fu_699_p2 = ($signed({{1'b0}, {tmp_190_fu_699_p0}}) * $signed(b_reg_188));

assign tmp_225_cast_fu_548_p1 = tmp_187_fu_542_p2;

assign tmp_228_cast_fu_603_p1 = edge3_load_phi_fu_596_p3;

assign tmp_379_i_fu_456_p2 = (($signed(tmp_i_cast_fu_452_p1) < $signed(x_4_fu_431_p2)) ? 1'b1 : 1'b0);

assign tmp_380_i_fu_475_p2 = (p_k_i_fu_467_p3 + 32'd1);

assign tmp_fu_558_p2 = a_1_fu_74 << 32'd3;

assign tmp_i_cast_fu_452_p1 = p_lshr_f_i_cast_fu_442_p4;

assign tmp_i_fu_437_p2 = (($signed(n_assign_cast4_reg_751) < $signed(x_4_fu_431_p2)) ? 1'b1 : 1'b0);

assign tmp_s_fu_393_p1 = i_reg_107;

assign x_4_fu_431_p2 = (x_fu_78 + 32'd1);

always @ (posedge ap_clk) begin
    n_assign_cast4_reg_751[31:4] <= 28'b0000000000000000000000000000;
    tmp_225_cast_reg_845[4:3] <= 2'b00;
end

endmodule //getUBtoDF
