-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Mar 10 00:43:29 2019
-- Host        : NGJINYEE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/jinyee/FYP/RubikCube/190309Kociemba/kociemba/kociemba_hlx/kociemba_hlx.srcs/sources_1/bd/kociemba/ip/kociemba_xlconstant_1_0/kociemba_xlconstant_1_0_sim_netlist.vhdl
-- Design      : kociemba_xlconstant_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kociemba_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of kociemba_xlconstant_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of kociemba_xlconstant_1_0 : entity is "kociemba_xlconstant_1_0,xlconstant_v1_1_5_xlconstant,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of kociemba_xlconstant_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of kociemba_xlconstant_1_0 : entity is "xlconstant_v1_1_5_xlconstant,Vivado 2018.2";
end kociemba_xlconstant_1_0;

architecture STRUCTURE of kociemba_xlconstant_1_0 is
  signal \<const1>\ : STD_LOGIC;
begin
  dout(3) <= \<const1>\;
  dout(2) <= \<const1>\;
  dout(1) <= \<const1>\;
  dout(0) <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
