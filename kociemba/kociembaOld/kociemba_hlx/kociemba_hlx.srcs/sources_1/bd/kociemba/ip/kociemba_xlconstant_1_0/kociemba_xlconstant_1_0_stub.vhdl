-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Mar 10 00:43:29 2019
-- Host        : NGJINYEE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/jinyee/FYP/RubikCube/190309Kociemba/kociemba/kociemba_hlx/kociemba_hlx.srcs/sources_1/bd/kociemba/ip/kociemba_xlconstant_1_0/kociemba_xlconstant_1_0_stub.vhdl
-- Design      : kociemba_xlconstant_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity kociemba_xlconstant_1_0 is
  Port ( 
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end kociemba_xlconstant_1_0;

architecture stub of kociemba_xlconstant_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dout[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xlconstant_v1_1_5_xlconstant,Vivado 2018.2";
begin
end;
