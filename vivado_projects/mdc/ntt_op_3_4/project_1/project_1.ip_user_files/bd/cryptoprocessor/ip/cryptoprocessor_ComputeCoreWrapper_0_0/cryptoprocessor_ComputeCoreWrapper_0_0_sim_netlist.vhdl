-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon Nov  7 13:49:32 2022
-- Host        : ipn018 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/CryptoProcessor_2022_23/project_1/project_1.srcs/sources_1/bd/cryptoprocessor/ip/cryptoprocessor_ComputeCoreWrapper_0_0/cryptoprocessor_ComputeCoreWrapper_0_0_sim_netlist.vhdl
-- Design      : cryptoprocessor_ComputeCoreWrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cryptoprocessor_ComputeCoreWrapper_0_0_modular_multiplier is
  port (
    dina : out STD_LOGIC_VECTOR ( 63 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    doutb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \^d\ : in STD_LOGIC_VECTOR ( 36 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC;
    dina_ext_high_word : in STD_LOGIC_VECTOR ( 26 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cryptoprocessor_ComputeCoreWrapper_0_0_modular_multiplier : entity is "modular_multiplier";
end cryptoprocessor_ComputeCoreWrapper_0_0_modular_multiplier;

architecture STRUCTURE of cryptoprocessor_ComputeCoreWrapper_0_0_modular_multiplier is
  signal done_r1 : STD_LOGIC;
  signal done_r2 : STD_LOGIC;
  signal \int_mul_result__0_n_100\ : STD_LOGIC;
  signal \int_mul_result__0_n_101\ : STD_LOGIC;
  signal \int_mul_result__0_n_102\ : STD_LOGIC;
  signal \int_mul_result__0_n_103\ : STD_LOGIC;
  signal \int_mul_result__0_n_104\ : STD_LOGIC;
  signal \int_mul_result__0_n_105\ : STD_LOGIC;
  signal \int_mul_result__0_n_106\ : STD_LOGIC;
  signal \int_mul_result__0_n_107\ : STD_LOGIC;
  signal \int_mul_result__0_n_108\ : STD_LOGIC;
  signal \int_mul_result__0_n_109\ : STD_LOGIC;
  signal \int_mul_result__0_n_110\ : STD_LOGIC;
  signal \int_mul_result__0_n_111\ : STD_LOGIC;
  signal \int_mul_result__0_n_112\ : STD_LOGIC;
  signal \int_mul_result__0_n_113\ : STD_LOGIC;
  signal \int_mul_result__0_n_114\ : STD_LOGIC;
  signal \int_mul_result__0_n_115\ : STD_LOGIC;
  signal \int_mul_result__0_n_116\ : STD_LOGIC;
  signal \int_mul_result__0_n_117\ : STD_LOGIC;
  signal \int_mul_result__0_n_118\ : STD_LOGIC;
  signal \int_mul_result__0_n_119\ : STD_LOGIC;
  signal \int_mul_result__0_n_120\ : STD_LOGIC;
  signal \int_mul_result__0_n_121\ : STD_LOGIC;
  signal \int_mul_result__0_n_122\ : STD_LOGIC;
  signal \int_mul_result__0_n_123\ : STD_LOGIC;
  signal \int_mul_result__0_n_124\ : STD_LOGIC;
  signal \int_mul_result__0_n_125\ : STD_LOGIC;
  signal \int_mul_result__0_n_126\ : STD_LOGIC;
  signal \int_mul_result__0_n_127\ : STD_LOGIC;
  signal \int_mul_result__0_n_128\ : STD_LOGIC;
  signal \int_mul_result__0_n_129\ : STD_LOGIC;
  signal \int_mul_result__0_n_130\ : STD_LOGIC;
  signal \int_mul_result__0_n_131\ : STD_LOGIC;
  signal \int_mul_result__0_n_132\ : STD_LOGIC;
  signal \int_mul_result__0_n_133\ : STD_LOGIC;
  signal \int_mul_result__0_n_134\ : STD_LOGIC;
  signal \int_mul_result__0_n_135\ : STD_LOGIC;
  signal \int_mul_result__0_n_136\ : STD_LOGIC;
  signal \int_mul_result__0_n_137\ : STD_LOGIC;
  signal \int_mul_result__0_n_138\ : STD_LOGIC;
  signal \int_mul_result__0_n_139\ : STD_LOGIC;
  signal \int_mul_result__0_n_140\ : STD_LOGIC;
  signal \int_mul_result__0_n_141\ : STD_LOGIC;
  signal \int_mul_result__0_n_142\ : STD_LOGIC;
  signal \int_mul_result__0_n_143\ : STD_LOGIC;
  signal \int_mul_result__0_n_144\ : STD_LOGIC;
  signal \int_mul_result__0_n_145\ : STD_LOGIC;
  signal \int_mul_result__0_n_146\ : STD_LOGIC;
  signal \int_mul_result__0_n_147\ : STD_LOGIC;
  signal \int_mul_result__0_n_148\ : STD_LOGIC;
  signal \int_mul_result__0_n_149\ : STD_LOGIC;
  signal \int_mul_result__0_n_150\ : STD_LOGIC;
  signal \int_mul_result__0_n_151\ : STD_LOGIC;
  signal \int_mul_result__0_n_152\ : STD_LOGIC;
  signal \int_mul_result__0_n_153\ : STD_LOGIC;
  signal \int_mul_result__0_n_58\ : STD_LOGIC;
  signal \int_mul_result__0_n_59\ : STD_LOGIC;
  signal \int_mul_result__0_n_60\ : STD_LOGIC;
  signal \int_mul_result__0_n_61\ : STD_LOGIC;
  signal \int_mul_result__0_n_62\ : STD_LOGIC;
  signal \int_mul_result__0_n_63\ : STD_LOGIC;
  signal \int_mul_result__0_n_64\ : STD_LOGIC;
  signal \int_mul_result__0_n_65\ : STD_LOGIC;
  signal \int_mul_result__0_n_66\ : STD_LOGIC;
  signal \int_mul_result__0_n_67\ : STD_LOGIC;
  signal \int_mul_result__0_n_68\ : STD_LOGIC;
  signal \int_mul_result__0_n_69\ : STD_LOGIC;
  signal \int_mul_result__0_n_70\ : STD_LOGIC;
  signal \int_mul_result__0_n_71\ : STD_LOGIC;
  signal \int_mul_result__0_n_72\ : STD_LOGIC;
  signal \int_mul_result__0_n_73\ : STD_LOGIC;
  signal \int_mul_result__0_n_74\ : STD_LOGIC;
  signal \int_mul_result__0_n_75\ : STD_LOGIC;
  signal \int_mul_result__0_n_76\ : STD_LOGIC;
  signal \int_mul_result__0_n_77\ : STD_LOGIC;
  signal \int_mul_result__0_n_78\ : STD_LOGIC;
  signal \int_mul_result__0_n_79\ : STD_LOGIC;
  signal \int_mul_result__0_n_80\ : STD_LOGIC;
  signal \int_mul_result__0_n_81\ : STD_LOGIC;
  signal \int_mul_result__0_n_82\ : STD_LOGIC;
  signal \int_mul_result__0_n_83\ : STD_LOGIC;
  signal \int_mul_result__0_n_84\ : STD_LOGIC;
  signal \int_mul_result__0_n_85\ : STD_LOGIC;
  signal \int_mul_result__0_n_86\ : STD_LOGIC;
  signal \int_mul_result__0_n_87\ : STD_LOGIC;
  signal \int_mul_result__0_n_88\ : STD_LOGIC;
  signal \int_mul_result__0_n_89\ : STD_LOGIC;
  signal \int_mul_result__0_n_90\ : STD_LOGIC;
  signal \int_mul_result__0_n_91\ : STD_LOGIC;
  signal \int_mul_result__0_n_92\ : STD_LOGIC;
  signal \int_mul_result__0_n_93\ : STD_LOGIC;
  signal \int_mul_result__0_n_94\ : STD_LOGIC;
  signal \int_mul_result__0_n_95\ : STD_LOGIC;
  signal \int_mul_result__0_n_96\ : STD_LOGIC;
  signal \int_mul_result__0_n_97\ : STD_LOGIC;
  signal \int_mul_result__0_n_98\ : STD_LOGIC;
  signal \int_mul_result__0_n_99\ : STD_LOGIC;
  signal \int_mul_result__1_n_106\ : STD_LOGIC;
  signal \int_mul_result__1_n_107\ : STD_LOGIC;
  signal \int_mul_result__1_n_108\ : STD_LOGIC;
  signal \int_mul_result__1_n_109\ : STD_LOGIC;
  signal \int_mul_result__1_n_110\ : STD_LOGIC;
  signal \int_mul_result__1_n_111\ : STD_LOGIC;
  signal \int_mul_result__1_n_112\ : STD_LOGIC;
  signal \int_mul_result__1_n_113\ : STD_LOGIC;
  signal \int_mul_result__1_n_114\ : STD_LOGIC;
  signal \int_mul_result__1_n_115\ : STD_LOGIC;
  signal \int_mul_result__1_n_116\ : STD_LOGIC;
  signal \int_mul_result__1_n_117\ : STD_LOGIC;
  signal \int_mul_result__1_n_118\ : STD_LOGIC;
  signal \int_mul_result__1_n_119\ : STD_LOGIC;
  signal \int_mul_result__1_n_120\ : STD_LOGIC;
  signal \int_mul_result__1_n_121\ : STD_LOGIC;
  signal \int_mul_result__1_n_122\ : STD_LOGIC;
  signal \int_mul_result__1_n_123\ : STD_LOGIC;
  signal \int_mul_result__1_n_124\ : STD_LOGIC;
  signal \int_mul_result__1_n_125\ : STD_LOGIC;
  signal \int_mul_result__1_n_126\ : STD_LOGIC;
  signal \int_mul_result__1_n_127\ : STD_LOGIC;
  signal \int_mul_result__1_n_128\ : STD_LOGIC;
  signal \int_mul_result__1_n_129\ : STD_LOGIC;
  signal \int_mul_result__1_n_130\ : STD_LOGIC;
  signal \int_mul_result__1_n_131\ : STD_LOGIC;
  signal \int_mul_result__1_n_132\ : STD_LOGIC;
  signal \int_mul_result__1_n_133\ : STD_LOGIC;
  signal \int_mul_result__1_n_134\ : STD_LOGIC;
  signal \int_mul_result__1_n_135\ : STD_LOGIC;
  signal \int_mul_result__1_n_136\ : STD_LOGIC;
  signal \int_mul_result__1_n_137\ : STD_LOGIC;
  signal \int_mul_result__1_n_138\ : STD_LOGIC;
  signal \int_mul_result__1_n_139\ : STD_LOGIC;
  signal \int_mul_result__1_n_140\ : STD_LOGIC;
  signal \int_mul_result__1_n_141\ : STD_LOGIC;
  signal \int_mul_result__1_n_142\ : STD_LOGIC;
  signal \int_mul_result__1_n_143\ : STD_LOGIC;
  signal \int_mul_result__1_n_144\ : STD_LOGIC;
  signal \int_mul_result__1_n_145\ : STD_LOGIC;
  signal \int_mul_result__1_n_146\ : STD_LOGIC;
  signal \int_mul_result__1_n_147\ : STD_LOGIC;
  signal \int_mul_result__1_n_148\ : STD_LOGIC;
  signal \int_mul_result__1_n_149\ : STD_LOGIC;
  signal \int_mul_result__1_n_150\ : STD_LOGIC;
  signal \int_mul_result__1_n_151\ : STD_LOGIC;
  signal \int_mul_result__1_n_152\ : STD_LOGIC;
  signal \int_mul_result__1_n_153\ : STD_LOGIC;
  signal \int_mul_result__2_n_100\ : STD_LOGIC;
  signal \int_mul_result__2_n_101\ : STD_LOGIC;
  signal \int_mul_result__2_n_102\ : STD_LOGIC;
  signal \int_mul_result__2_n_103\ : STD_LOGIC;
  signal \int_mul_result__2_n_104\ : STD_LOGIC;
  signal \int_mul_result__2_n_105\ : STD_LOGIC;
  signal \int_mul_result__2_n_106\ : STD_LOGIC;
  signal \int_mul_result__2_n_107\ : STD_LOGIC;
  signal \int_mul_result__2_n_108\ : STD_LOGIC;
  signal \int_mul_result__2_n_109\ : STD_LOGIC;
  signal \int_mul_result__2_n_110\ : STD_LOGIC;
  signal \int_mul_result__2_n_111\ : STD_LOGIC;
  signal \int_mul_result__2_n_112\ : STD_LOGIC;
  signal \int_mul_result__2_n_113\ : STD_LOGIC;
  signal \int_mul_result__2_n_114\ : STD_LOGIC;
  signal \int_mul_result__2_n_115\ : STD_LOGIC;
  signal \int_mul_result__2_n_116\ : STD_LOGIC;
  signal \int_mul_result__2_n_117\ : STD_LOGIC;
  signal \int_mul_result__2_n_118\ : STD_LOGIC;
  signal \int_mul_result__2_n_119\ : STD_LOGIC;
  signal \int_mul_result__2_n_120\ : STD_LOGIC;
  signal \int_mul_result__2_n_121\ : STD_LOGIC;
  signal \int_mul_result__2_n_122\ : STD_LOGIC;
  signal \int_mul_result__2_n_123\ : STD_LOGIC;
  signal \int_mul_result__2_n_124\ : STD_LOGIC;
  signal \int_mul_result__2_n_125\ : STD_LOGIC;
  signal \int_mul_result__2_n_126\ : STD_LOGIC;
  signal \int_mul_result__2_n_127\ : STD_LOGIC;
  signal \int_mul_result__2_n_128\ : STD_LOGIC;
  signal \int_mul_result__2_n_129\ : STD_LOGIC;
  signal \int_mul_result__2_n_130\ : STD_LOGIC;
  signal \int_mul_result__2_n_131\ : STD_LOGIC;
  signal \int_mul_result__2_n_132\ : STD_LOGIC;
  signal \int_mul_result__2_n_133\ : STD_LOGIC;
  signal \int_mul_result__2_n_134\ : STD_LOGIC;
  signal \int_mul_result__2_n_135\ : STD_LOGIC;
  signal \int_mul_result__2_n_136\ : STD_LOGIC;
  signal \int_mul_result__2_n_137\ : STD_LOGIC;
  signal \int_mul_result__2_n_138\ : STD_LOGIC;
  signal \int_mul_result__2_n_139\ : STD_LOGIC;
  signal \int_mul_result__2_n_140\ : STD_LOGIC;
  signal \int_mul_result__2_n_141\ : STD_LOGIC;
  signal \int_mul_result__2_n_142\ : STD_LOGIC;
  signal \int_mul_result__2_n_143\ : STD_LOGIC;
  signal \int_mul_result__2_n_144\ : STD_LOGIC;
  signal \int_mul_result__2_n_145\ : STD_LOGIC;
  signal \int_mul_result__2_n_146\ : STD_LOGIC;
  signal \int_mul_result__2_n_147\ : STD_LOGIC;
  signal \int_mul_result__2_n_148\ : STD_LOGIC;
  signal \int_mul_result__2_n_149\ : STD_LOGIC;
  signal \int_mul_result__2_n_150\ : STD_LOGIC;
  signal \int_mul_result__2_n_151\ : STD_LOGIC;
  signal \int_mul_result__2_n_152\ : STD_LOGIC;
  signal \int_mul_result__2_n_153\ : STD_LOGIC;
  signal \int_mul_result__2_n_58\ : STD_LOGIC;
  signal \int_mul_result__2_n_59\ : STD_LOGIC;
  signal \int_mul_result__2_n_60\ : STD_LOGIC;
  signal \int_mul_result__2_n_61\ : STD_LOGIC;
  signal \int_mul_result__2_n_62\ : STD_LOGIC;
  signal \int_mul_result__2_n_63\ : STD_LOGIC;
  signal \int_mul_result__2_n_64\ : STD_LOGIC;
  signal \int_mul_result__2_n_65\ : STD_LOGIC;
  signal \int_mul_result__2_n_66\ : STD_LOGIC;
  signal \int_mul_result__2_n_67\ : STD_LOGIC;
  signal \int_mul_result__2_n_68\ : STD_LOGIC;
  signal \int_mul_result__2_n_69\ : STD_LOGIC;
  signal \int_mul_result__2_n_70\ : STD_LOGIC;
  signal \int_mul_result__2_n_71\ : STD_LOGIC;
  signal \int_mul_result__2_n_72\ : STD_LOGIC;
  signal \int_mul_result__2_n_73\ : STD_LOGIC;
  signal \int_mul_result__2_n_74\ : STD_LOGIC;
  signal \int_mul_result__2_n_75\ : STD_LOGIC;
  signal \int_mul_result__2_n_76\ : STD_LOGIC;
  signal \int_mul_result__2_n_77\ : STD_LOGIC;
  signal \int_mul_result__2_n_78\ : STD_LOGIC;
  signal \int_mul_result__2_n_79\ : STD_LOGIC;
  signal \int_mul_result__2_n_80\ : STD_LOGIC;
  signal \int_mul_result__2_n_81\ : STD_LOGIC;
  signal \int_mul_result__2_n_82\ : STD_LOGIC;
  signal \int_mul_result__2_n_83\ : STD_LOGIC;
  signal \int_mul_result__2_n_84\ : STD_LOGIC;
  signal \int_mul_result__2_n_85\ : STD_LOGIC;
  signal \int_mul_result__2_n_86\ : STD_LOGIC;
  signal \int_mul_result__2_n_87\ : STD_LOGIC;
  signal \int_mul_result__2_n_88\ : STD_LOGIC;
  signal \int_mul_result__2_n_89\ : STD_LOGIC;
  signal \int_mul_result__2_n_90\ : STD_LOGIC;
  signal \int_mul_result__2_n_91\ : STD_LOGIC;
  signal \int_mul_result__2_n_92\ : STD_LOGIC;
  signal \int_mul_result__2_n_93\ : STD_LOGIC;
  signal \int_mul_result__2_n_94\ : STD_LOGIC;
  signal \int_mul_result__2_n_95\ : STD_LOGIC;
  signal \int_mul_result__2_n_96\ : STD_LOGIC;
  signal \int_mul_result__2_n_97\ : STD_LOGIC;
  signal \int_mul_result__2_n_98\ : STD_LOGIC;
  signal \int_mul_result__2_n_99\ : STD_LOGIC;
  signal \int_mul_result__3_n_106\ : STD_LOGIC;
  signal \int_mul_result__3_n_107\ : STD_LOGIC;
  signal \int_mul_result__3_n_108\ : STD_LOGIC;
  signal \int_mul_result__3_n_109\ : STD_LOGIC;
  signal \int_mul_result__3_n_110\ : STD_LOGIC;
  signal \int_mul_result__3_n_111\ : STD_LOGIC;
  signal \int_mul_result__3_n_112\ : STD_LOGIC;
  signal \int_mul_result__3_n_113\ : STD_LOGIC;
  signal \int_mul_result__3_n_114\ : STD_LOGIC;
  signal \int_mul_result__3_n_115\ : STD_LOGIC;
  signal \int_mul_result__3_n_116\ : STD_LOGIC;
  signal \int_mul_result__3_n_117\ : STD_LOGIC;
  signal \int_mul_result__3_n_118\ : STD_LOGIC;
  signal \int_mul_result__3_n_119\ : STD_LOGIC;
  signal \int_mul_result__3_n_120\ : STD_LOGIC;
  signal \int_mul_result__3_n_121\ : STD_LOGIC;
  signal \int_mul_result__3_n_122\ : STD_LOGIC;
  signal \int_mul_result__3_n_123\ : STD_LOGIC;
  signal \int_mul_result__3_n_124\ : STD_LOGIC;
  signal \int_mul_result__3_n_125\ : STD_LOGIC;
  signal \int_mul_result__3_n_126\ : STD_LOGIC;
  signal \int_mul_result__3_n_127\ : STD_LOGIC;
  signal \int_mul_result__3_n_128\ : STD_LOGIC;
  signal \int_mul_result__3_n_129\ : STD_LOGIC;
  signal \int_mul_result__3_n_130\ : STD_LOGIC;
  signal \int_mul_result__3_n_131\ : STD_LOGIC;
  signal \int_mul_result__3_n_132\ : STD_LOGIC;
  signal \int_mul_result__3_n_133\ : STD_LOGIC;
  signal \int_mul_result__3_n_134\ : STD_LOGIC;
  signal \int_mul_result__3_n_135\ : STD_LOGIC;
  signal \int_mul_result__3_n_136\ : STD_LOGIC;
  signal \int_mul_result__3_n_137\ : STD_LOGIC;
  signal \int_mul_result__3_n_138\ : STD_LOGIC;
  signal \int_mul_result__3_n_139\ : STD_LOGIC;
  signal \int_mul_result__3_n_140\ : STD_LOGIC;
  signal \int_mul_result__3_n_141\ : STD_LOGIC;
  signal \int_mul_result__3_n_142\ : STD_LOGIC;
  signal \int_mul_result__3_n_143\ : STD_LOGIC;
  signal \int_mul_result__3_n_144\ : STD_LOGIC;
  signal \int_mul_result__3_n_145\ : STD_LOGIC;
  signal \int_mul_result__3_n_146\ : STD_LOGIC;
  signal \int_mul_result__3_n_147\ : STD_LOGIC;
  signal \int_mul_result__3_n_148\ : STD_LOGIC;
  signal \int_mul_result__3_n_149\ : STD_LOGIC;
  signal \int_mul_result__3_n_150\ : STD_LOGIC;
  signal \int_mul_result__3_n_151\ : STD_LOGIC;
  signal \int_mul_result__3_n_152\ : STD_LOGIC;
  signal \int_mul_result__3_n_153\ : STD_LOGIC;
  signal \int_mul_result__4_n_100\ : STD_LOGIC;
  signal \int_mul_result__4_n_101\ : STD_LOGIC;
  signal \int_mul_result__4_n_102\ : STD_LOGIC;
  signal \int_mul_result__4_n_103\ : STD_LOGIC;
  signal \int_mul_result__4_n_104\ : STD_LOGIC;
  signal \int_mul_result__4_n_105\ : STD_LOGIC;
  signal \int_mul_result__4_n_106\ : STD_LOGIC;
  signal \int_mul_result__4_n_107\ : STD_LOGIC;
  signal \int_mul_result__4_n_108\ : STD_LOGIC;
  signal \int_mul_result__4_n_109\ : STD_LOGIC;
  signal \int_mul_result__4_n_110\ : STD_LOGIC;
  signal \int_mul_result__4_n_111\ : STD_LOGIC;
  signal \int_mul_result__4_n_112\ : STD_LOGIC;
  signal \int_mul_result__4_n_113\ : STD_LOGIC;
  signal \int_mul_result__4_n_114\ : STD_LOGIC;
  signal \int_mul_result__4_n_115\ : STD_LOGIC;
  signal \int_mul_result__4_n_116\ : STD_LOGIC;
  signal \int_mul_result__4_n_117\ : STD_LOGIC;
  signal \int_mul_result__4_n_118\ : STD_LOGIC;
  signal \int_mul_result__4_n_119\ : STD_LOGIC;
  signal \int_mul_result__4_n_120\ : STD_LOGIC;
  signal \int_mul_result__4_n_121\ : STD_LOGIC;
  signal \int_mul_result__4_n_122\ : STD_LOGIC;
  signal \int_mul_result__4_n_123\ : STD_LOGIC;
  signal \int_mul_result__4_n_124\ : STD_LOGIC;
  signal \int_mul_result__4_n_125\ : STD_LOGIC;
  signal \int_mul_result__4_n_126\ : STD_LOGIC;
  signal \int_mul_result__4_n_127\ : STD_LOGIC;
  signal \int_mul_result__4_n_128\ : STD_LOGIC;
  signal \int_mul_result__4_n_129\ : STD_LOGIC;
  signal \int_mul_result__4_n_130\ : STD_LOGIC;
  signal \int_mul_result__4_n_131\ : STD_LOGIC;
  signal \int_mul_result__4_n_132\ : STD_LOGIC;
  signal \int_mul_result__4_n_133\ : STD_LOGIC;
  signal \int_mul_result__4_n_134\ : STD_LOGIC;
  signal \int_mul_result__4_n_135\ : STD_LOGIC;
  signal \int_mul_result__4_n_136\ : STD_LOGIC;
  signal \int_mul_result__4_n_137\ : STD_LOGIC;
  signal \int_mul_result__4_n_138\ : STD_LOGIC;
  signal \int_mul_result__4_n_139\ : STD_LOGIC;
  signal \int_mul_result__4_n_140\ : STD_LOGIC;
  signal \int_mul_result__4_n_141\ : STD_LOGIC;
  signal \int_mul_result__4_n_142\ : STD_LOGIC;
  signal \int_mul_result__4_n_143\ : STD_LOGIC;
  signal \int_mul_result__4_n_144\ : STD_LOGIC;
  signal \int_mul_result__4_n_145\ : STD_LOGIC;
  signal \int_mul_result__4_n_146\ : STD_LOGIC;
  signal \int_mul_result__4_n_147\ : STD_LOGIC;
  signal \int_mul_result__4_n_148\ : STD_LOGIC;
  signal \int_mul_result__4_n_149\ : STD_LOGIC;
  signal \int_mul_result__4_n_150\ : STD_LOGIC;
  signal \int_mul_result__4_n_151\ : STD_LOGIC;
  signal \int_mul_result__4_n_152\ : STD_LOGIC;
  signal \int_mul_result__4_n_153\ : STD_LOGIC;
  signal \int_mul_result__4_n_58\ : STD_LOGIC;
  signal \int_mul_result__4_n_59\ : STD_LOGIC;
  signal \int_mul_result__4_n_60\ : STD_LOGIC;
  signal \int_mul_result__4_n_61\ : STD_LOGIC;
  signal \int_mul_result__4_n_62\ : STD_LOGIC;
  signal \int_mul_result__4_n_63\ : STD_LOGIC;
  signal \int_mul_result__4_n_64\ : STD_LOGIC;
  signal \int_mul_result__4_n_65\ : STD_LOGIC;
  signal \int_mul_result__4_n_66\ : STD_LOGIC;
  signal \int_mul_result__4_n_67\ : STD_LOGIC;
  signal \int_mul_result__4_n_68\ : STD_LOGIC;
  signal \int_mul_result__4_n_69\ : STD_LOGIC;
  signal \int_mul_result__4_n_70\ : STD_LOGIC;
  signal \int_mul_result__4_n_71\ : STD_LOGIC;
  signal \int_mul_result__4_n_72\ : STD_LOGIC;
  signal \int_mul_result__4_n_73\ : STD_LOGIC;
  signal \int_mul_result__4_n_74\ : STD_LOGIC;
  signal \int_mul_result__4_n_75\ : STD_LOGIC;
  signal \int_mul_result__4_n_76\ : STD_LOGIC;
  signal \int_mul_result__4_n_77\ : STD_LOGIC;
  signal \int_mul_result__4_n_78\ : STD_LOGIC;
  signal \int_mul_result__4_n_79\ : STD_LOGIC;
  signal \int_mul_result__4_n_80\ : STD_LOGIC;
  signal \int_mul_result__4_n_81\ : STD_LOGIC;
  signal \int_mul_result__4_n_82\ : STD_LOGIC;
  signal \int_mul_result__4_n_83\ : STD_LOGIC;
  signal \int_mul_result__4_n_84\ : STD_LOGIC;
  signal \int_mul_result__4_n_85\ : STD_LOGIC;
  signal \int_mul_result__4_n_86\ : STD_LOGIC;
  signal \int_mul_result__4_n_87\ : STD_LOGIC;
  signal \int_mul_result__4_n_88\ : STD_LOGIC;
  signal \int_mul_result__4_n_89\ : STD_LOGIC;
  signal \int_mul_result__4_n_90\ : STD_LOGIC;
  signal \int_mul_result__4_n_91\ : STD_LOGIC;
  signal \int_mul_result__4_n_92\ : STD_LOGIC;
  signal \int_mul_result__4_n_93\ : STD_LOGIC;
  signal \int_mul_result__4_n_94\ : STD_LOGIC;
  signal \int_mul_result__4_n_95\ : STD_LOGIC;
  signal \int_mul_result__4_n_96\ : STD_LOGIC;
  signal \int_mul_result__4_n_97\ : STD_LOGIC;
  signal \int_mul_result__4_n_98\ : STD_LOGIC;
  signal \int_mul_result__4_n_99\ : STD_LOGIC;
  signal \int_mul_result__5_n_106\ : STD_LOGIC;
  signal \int_mul_result__5_n_107\ : STD_LOGIC;
  signal \int_mul_result__5_n_108\ : STD_LOGIC;
  signal \int_mul_result__5_n_109\ : STD_LOGIC;
  signal \int_mul_result__5_n_110\ : STD_LOGIC;
  signal \int_mul_result__5_n_111\ : STD_LOGIC;
  signal \int_mul_result__5_n_112\ : STD_LOGIC;
  signal \int_mul_result__5_n_113\ : STD_LOGIC;
  signal \int_mul_result__5_n_114\ : STD_LOGIC;
  signal \int_mul_result__5_n_115\ : STD_LOGIC;
  signal \int_mul_result__5_n_116\ : STD_LOGIC;
  signal \int_mul_result__5_n_117\ : STD_LOGIC;
  signal \int_mul_result__5_n_118\ : STD_LOGIC;
  signal \int_mul_result__5_n_119\ : STD_LOGIC;
  signal \int_mul_result__5_n_120\ : STD_LOGIC;
  signal \int_mul_result__5_n_121\ : STD_LOGIC;
  signal \int_mul_result__5_n_122\ : STD_LOGIC;
  signal \int_mul_result__5_n_123\ : STD_LOGIC;
  signal \int_mul_result__5_n_124\ : STD_LOGIC;
  signal \int_mul_result__5_n_125\ : STD_LOGIC;
  signal \int_mul_result__5_n_126\ : STD_LOGIC;
  signal \int_mul_result__5_n_127\ : STD_LOGIC;
  signal \int_mul_result__5_n_128\ : STD_LOGIC;
  signal \int_mul_result__5_n_129\ : STD_LOGIC;
  signal \int_mul_result__5_n_130\ : STD_LOGIC;
  signal \int_mul_result__5_n_131\ : STD_LOGIC;
  signal \int_mul_result__5_n_132\ : STD_LOGIC;
  signal \int_mul_result__5_n_133\ : STD_LOGIC;
  signal \int_mul_result__5_n_134\ : STD_LOGIC;
  signal \int_mul_result__5_n_135\ : STD_LOGIC;
  signal \int_mul_result__5_n_136\ : STD_LOGIC;
  signal \int_mul_result__5_n_137\ : STD_LOGIC;
  signal \int_mul_result__5_n_138\ : STD_LOGIC;
  signal \int_mul_result__5_n_139\ : STD_LOGIC;
  signal \int_mul_result__5_n_140\ : STD_LOGIC;
  signal \int_mul_result__5_n_141\ : STD_LOGIC;
  signal \int_mul_result__5_n_142\ : STD_LOGIC;
  signal \int_mul_result__5_n_143\ : STD_LOGIC;
  signal \int_mul_result__5_n_144\ : STD_LOGIC;
  signal \int_mul_result__5_n_145\ : STD_LOGIC;
  signal \int_mul_result__5_n_146\ : STD_LOGIC;
  signal \int_mul_result__5_n_147\ : STD_LOGIC;
  signal \int_mul_result__5_n_148\ : STD_LOGIC;
  signal \int_mul_result__5_n_149\ : STD_LOGIC;
  signal \int_mul_result__5_n_150\ : STD_LOGIC;
  signal \int_mul_result__5_n_151\ : STD_LOGIC;
  signal \int_mul_result__5_n_152\ : STD_LOGIC;
  signal \int_mul_result__5_n_153\ : STD_LOGIC;
  signal \int_mul_result__6_n_100\ : STD_LOGIC;
  signal \int_mul_result__6_n_101\ : STD_LOGIC;
  signal \int_mul_result__6_n_102\ : STD_LOGIC;
  signal \int_mul_result__6_n_103\ : STD_LOGIC;
  signal \int_mul_result__6_n_104\ : STD_LOGIC;
  signal \int_mul_result__6_n_105\ : STD_LOGIC;
  signal \int_mul_result__6_n_106\ : STD_LOGIC;
  signal \int_mul_result__6_n_107\ : STD_LOGIC;
  signal \int_mul_result__6_n_108\ : STD_LOGIC;
  signal \int_mul_result__6_n_109\ : STD_LOGIC;
  signal \int_mul_result__6_n_110\ : STD_LOGIC;
  signal \int_mul_result__6_n_111\ : STD_LOGIC;
  signal \int_mul_result__6_n_112\ : STD_LOGIC;
  signal \int_mul_result__6_n_113\ : STD_LOGIC;
  signal \int_mul_result__6_n_114\ : STD_LOGIC;
  signal \int_mul_result__6_n_115\ : STD_LOGIC;
  signal \int_mul_result__6_n_116\ : STD_LOGIC;
  signal \int_mul_result__6_n_117\ : STD_LOGIC;
  signal \int_mul_result__6_n_118\ : STD_LOGIC;
  signal \int_mul_result__6_n_119\ : STD_LOGIC;
  signal \int_mul_result__6_n_120\ : STD_LOGIC;
  signal \int_mul_result__6_n_121\ : STD_LOGIC;
  signal \int_mul_result__6_n_122\ : STD_LOGIC;
  signal \int_mul_result__6_n_123\ : STD_LOGIC;
  signal \int_mul_result__6_n_124\ : STD_LOGIC;
  signal \int_mul_result__6_n_125\ : STD_LOGIC;
  signal \int_mul_result__6_n_126\ : STD_LOGIC;
  signal \int_mul_result__6_n_127\ : STD_LOGIC;
  signal \int_mul_result__6_n_128\ : STD_LOGIC;
  signal \int_mul_result__6_n_129\ : STD_LOGIC;
  signal \int_mul_result__6_n_130\ : STD_LOGIC;
  signal \int_mul_result__6_n_131\ : STD_LOGIC;
  signal \int_mul_result__6_n_132\ : STD_LOGIC;
  signal \int_mul_result__6_n_133\ : STD_LOGIC;
  signal \int_mul_result__6_n_134\ : STD_LOGIC;
  signal \int_mul_result__6_n_135\ : STD_LOGIC;
  signal \int_mul_result__6_n_136\ : STD_LOGIC;
  signal \int_mul_result__6_n_137\ : STD_LOGIC;
  signal \int_mul_result__6_n_138\ : STD_LOGIC;
  signal \int_mul_result__6_n_139\ : STD_LOGIC;
  signal \int_mul_result__6_n_140\ : STD_LOGIC;
  signal \int_mul_result__6_n_141\ : STD_LOGIC;
  signal \int_mul_result__6_n_142\ : STD_LOGIC;
  signal \int_mul_result__6_n_143\ : STD_LOGIC;
  signal \int_mul_result__6_n_144\ : STD_LOGIC;
  signal \int_mul_result__6_n_145\ : STD_LOGIC;
  signal \int_mul_result__6_n_146\ : STD_LOGIC;
  signal \int_mul_result__6_n_147\ : STD_LOGIC;
  signal \int_mul_result__6_n_148\ : STD_LOGIC;
  signal \int_mul_result__6_n_149\ : STD_LOGIC;
  signal \int_mul_result__6_n_150\ : STD_LOGIC;
  signal \int_mul_result__6_n_151\ : STD_LOGIC;
  signal \int_mul_result__6_n_152\ : STD_LOGIC;
  signal \int_mul_result__6_n_153\ : STD_LOGIC;
  signal \int_mul_result__6_n_58\ : STD_LOGIC;
  signal \int_mul_result__6_n_59\ : STD_LOGIC;
  signal \int_mul_result__6_n_60\ : STD_LOGIC;
  signal \int_mul_result__6_n_61\ : STD_LOGIC;
  signal \int_mul_result__6_n_62\ : STD_LOGIC;
  signal \int_mul_result__6_n_63\ : STD_LOGIC;
  signal \int_mul_result__6_n_64\ : STD_LOGIC;
  signal \int_mul_result__6_n_65\ : STD_LOGIC;
  signal \int_mul_result__6_n_66\ : STD_LOGIC;
  signal \int_mul_result__6_n_67\ : STD_LOGIC;
  signal \int_mul_result__6_n_68\ : STD_LOGIC;
  signal \int_mul_result__6_n_69\ : STD_LOGIC;
  signal \int_mul_result__6_n_70\ : STD_LOGIC;
  signal \int_mul_result__6_n_71\ : STD_LOGIC;
  signal \int_mul_result__6_n_72\ : STD_LOGIC;
  signal \int_mul_result__6_n_73\ : STD_LOGIC;
  signal \int_mul_result__6_n_74\ : STD_LOGIC;
  signal \int_mul_result__6_n_75\ : STD_LOGIC;
  signal \int_mul_result__6_n_76\ : STD_LOGIC;
  signal \int_mul_result__6_n_77\ : STD_LOGIC;
  signal \int_mul_result__6_n_78\ : STD_LOGIC;
  signal \int_mul_result__6_n_79\ : STD_LOGIC;
  signal \int_mul_result__6_n_80\ : STD_LOGIC;
  signal \int_mul_result__6_n_81\ : STD_LOGIC;
  signal \int_mul_result__6_n_82\ : STD_LOGIC;
  signal \int_mul_result__6_n_83\ : STD_LOGIC;
  signal \int_mul_result__6_n_84\ : STD_LOGIC;
  signal \int_mul_result__6_n_85\ : STD_LOGIC;
  signal \int_mul_result__6_n_86\ : STD_LOGIC;
  signal \int_mul_result__6_n_87\ : STD_LOGIC;
  signal \int_mul_result__6_n_88\ : STD_LOGIC;
  signal \int_mul_result__6_n_89\ : STD_LOGIC;
  signal \int_mul_result__6_n_90\ : STD_LOGIC;
  signal \int_mul_result__6_n_91\ : STD_LOGIC;
  signal \int_mul_result__6_n_92\ : STD_LOGIC;
  signal \int_mul_result__6_n_93\ : STD_LOGIC;
  signal \int_mul_result__6_n_94\ : STD_LOGIC;
  signal \int_mul_result__6_n_95\ : STD_LOGIC;
  signal \int_mul_result__6_n_96\ : STD_LOGIC;
  signal \int_mul_result__6_n_97\ : STD_LOGIC;
  signal \int_mul_result__6_n_98\ : STD_LOGIC;
  signal \int_mul_result__6_n_99\ : STD_LOGIC;
  signal int_mul_result_n_106 : STD_LOGIC;
  signal int_mul_result_n_107 : STD_LOGIC;
  signal int_mul_result_n_108 : STD_LOGIC;
  signal int_mul_result_n_109 : STD_LOGIC;
  signal int_mul_result_n_110 : STD_LOGIC;
  signal int_mul_result_n_111 : STD_LOGIC;
  signal int_mul_result_n_112 : STD_LOGIC;
  signal int_mul_result_n_113 : STD_LOGIC;
  signal int_mul_result_n_114 : STD_LOGIC;
  signal int_mul_result_n_115 : STD_LOGIC;
  signal int_mul_result_n_116 : STD_LOGIC;
  signal int_mul_result_n_117 : STD_LOGIC;
  signal int_mul_result_n_118 : STD_LOGIC;
  signal int_mul_result_n_119 : STD_LOGIC;
  signal int_mul_result_n_120 : STD_LOGIC;
  signal int_mul_result_n_121 : STD_LOGIC;
  signal int_mul_result_n_122 : STD_LOGIC;
  signal int_mul_result_n_123 : STD_LOGIC;
  signal int_mul_result_n_124 : STD_LOGIC;
  signal int_mul_result_n_125 : STD_LOGIC;
  signal int_mul_result_n_126 : STD_LOGIC;
  signal int_mul_result_n_127 : STD_LOGIC;
  signal int_mul_result_n_128 : STD_LOGIC;
  signal int_mul_result_n_129 : STD_LOGIC;
  signal int_mul_result_n_130 : STD_LOGIC;
  signal int_mul_result_n_131 : STD_LOGIC;
  signal int_mul_result_n_132 : STD_LOGIC;
  signal int_mul_result_n_133 : STD_LOGIC;
  signal int_mul_result_n_134 : STD_LOGIC;
  signal int_mul_result_n_135 : STD_LOGIC;
  signal int_mul_result_n_136 : STD_LOGIC;
  signal int_mul_result_n_137 : STD_LOGIC;
  signal int_mul_result_n_138 : STD_LOGIC;
  signal int_mul_result_n_139 : STD_LOGIC;
  signal int_mul_result_n_140 : STD_LOGIC;
  signal int_mul_result_n_141 : STD_LOGIC;
  signal int_mul_result_n_142 : STD_LOGIC;
  signal int_mul_result_n_143 : STD_LOGIC;
  signal int_mul_result_n_144 : STD_LOGIC;
  signal int_mul_result_n_145 : STD_LOGIC;
  signal int_mul_result_n_146 : STD_LOGIC;
  signal int_mul_result_n_147 : STD_LOGIC;
  signal int_mul_result_n_148 : STD_LOGIC;
  signal int_mul_result_n_149 : STD_LOGIC;
  signal int_mul_result_n_150 : STD_LOGIC;
  signal int_mul_result_n_151 : STD_LOGIC;
  signal int_mul_result_n_152 : STD_LOGIC;
  signal int_mul_result_n_153 : STD_LOGIC;
  signal mul_start : STD_LOGIC;
  signal \r1_reg[0]__2_n_0\ : STD_LOGIC;
  signal \r1_reg[0]__3_n_0\ : STD_LOGIC;
  signal \r1_reg[0]__4_n_0\ : STD_LOGIC;
  signal \r1_reg[10]__2_n_0\ : STD_LOGIC;
  signal \r1_reg[10]__3_n_0\ : STD_LOGIC;
  signal \r1_reg[10]__4_n_0\ : STD_LOGIC;
  signal \r1_reg[11]__2_n_0\ : STD_LOGIC;
  signal \r1_reg[11]__3_n_0\ : STD_LOGIC;
  signal \r1_reg[11]__4_n_0\ : STD_LOGIC;
  signal \r1_reg[12]__2_n_0\ : STD_LOGIC;
  signal \r1_reg[12]__3_n_0\ : STD_LOGIC;
  signal \r1_reg[12]__4_n_0\ : STD_LOGIC;
  signal \r1_reg[13]__2_n_0\ : STD_LOGIC;
  signal \r1_reg[13]__3_n_0\ : STD_LOGIC;
  signal \r1_reg[13]__4_n_0\ : STD_LOGIC;
  signal \r1_reg[14]__2_n_0\ : STD_LOGIC;
  signal \r1_reg[14]__3_n_0\ : STD_LOGIC;
  signal \r1_reg[14]__4_n_0\ : STD_LOGIC;
  signal \r1_reg[15]__2_n_0\ : STD_LOGIC;
  signal \r1_reg[15]__3_n_0\ : STD_LOGIC;
  signal \r1_reg[15]__4_n_0\ : STD_LOGIC;
  signal \r1_reg[16]__2_n_0\ : STD_LOGIC;
  signal \r1_reg[16]__3_n_0\ : STD_LOGIC;
  signal \r1_reg[16]__4_n_0\ : STD_LOGIC;
  signal \r1_reg[1]__2_n_0\ : STD_LOGIC;
  signal \r1_reg[1]__3_n_0\ : STD_LOGIC;
  signal \r1_reg[1]__4_n_0\ : STD_LOGIC;
  signal \r1_reg[2]__2_n_0\ : STD_LOGIC;
  signal \r1_reg[2]__3_n_0\ : STD_LOGIC;
  signal \r1_reg[2]__4_n_0\ : STD_LOGIC;
  signal \r1_reg[3]__2_n_0\ : STD_LOGIC;
  signal \r1_reg[3]__3_n_0\ : STD_LOGIC;
  signal \r1_reg[3]__4_n_0\ : STD_LOGIC;
  signal \r1_reg[4]__2_n_0\ : STD_LOGIC;
  signal \r1_reg[4]__3_n_0\ : STD_LOGIC;
  signal \r1_reg[4]__4_n_0\ : STD_LOGIC;
  signal \r1_reg[5]__2_n_0\ : STD_LOGIC;
  signal \r1_reg[5]__3_n_0\ : STD_LOGIC;
  signal \r1_reg[5]__4_n_0\ : STD_LOGIC;
  signal \r1_reg[6]__2_n_0\ : STD_LOGIC;
  signal \r1_reg[6]__3_n_0\ : STD_LOGIC;
  signal \r1_reg[6]__4_n_0\ : STD_LOGIC;
  signal \r1_reg[7]__2_n_0\ : STD_LOGIC;
  signal \r1_reg[7]__3_n_0\ : STD_LOGIC;
  signal \r1_reg[7]__4_n_0\ : STD_LOGIC;
  signal \r1_reg[8]__2_n_0\ : STD_LOGIC;
  signal \r1_reg[8]__3_n_0\ : STD_LOGIC;
  signal \r1_reg[8]__4_n_0\ : STD_LOGIC;
  signal \r1_reg[9]__2_n_0\ : STD_LOGIC;
  signal \r1_reg[9]__3_n_0\ : STD_LOGIC;
  signal \r1_reg[9]__4_n_0\ : STD_LOGIC;
  signal \r1_reg__0_n_100\ : STD_LOGIC;
  signal \r1_reg__0_n_101\ : STD_LOGIC;
  signal \r1_reg__0_n_102\ : STD_LOGIC;
  signal \r1_reg__0_n_103\ : STD_LOGIC;
  signal \r1_reg__0_n_104\ : STD_LOGIC;
  signal \r1_reg__0_n_105\ : STD_LOGIC;
  signal \r1_reg__0_n_58\ : STD_LOGIC;
  signal \r1_reg__0_n_59\ : STD_LOGIC;
  signal \r1_reg__0_n_60\ : STD_LOGIC;
  signal \r1_reg__0_n_61\ : STD_LOGIC;
  signal \r1_reg__0_n_62\ : STD_LOGIC;
  signal \r1_reg__0_n_63\ : STD_LOGIC;
  signal \r1_reg__0_n_64\ : STD_LOGIC;
  signal \r1_reg__0_n_65\ : STD_LOGIC;
  signal \r1_reg__0_n_66\ : STD_LOGIC;
  signal \r1_reg__0_n_67\ : STD_LOGIC;
  signal \r1_reg__0_n_68\ : STD_LOGIC;
  signal \r1_reg__0_n_69\ : STD_LOGIC;
  signal \r1_reg__0_n_70\ : STD_LOGIC;
  signal \r1_reg__0_n_71\ : STD_LOGIC;
  signal \r1_reg__0_n_72\ : STD_LOGIC;
  signal \r1_reg__0_n_73\ : STD_LOGIC;
  signal \r1_reg__0_n_74\ : STD_LOGIC;
  signal \r1_reg__0_n_75\ : STD_LOGIC;
  signal \r1_reg__0_n_76\ : STD_LOGIC;
  signal \r1_reg__0_n_77\ : STD_LOGIC;
  signal \r1_reg__0_n_78\ : STD_LOGIC;
  signal \r1_reg__0_n_79\ : STD_LOGIC;
  signal \r1_reg__0_n_80\ : STD_LOGIC;
  signal \r1_reg__0_n_81\ : STD_LOGIC;
  signal \r1_reg__0_n_82\ : STD_LOGIC;
  signal \r1_reg__0_n_83\ : STD_LOGIC;
  signal \r1_reg__0_n_84\ : STD_LOGIC;
  signal \r1_reg__0_n_85\ : STD_LOGIC;
  signal \r1_reg__0_n_86\ : STD_LOGIC;
  signal \r1_reg__0_n_87\ : STD_LOGIC;
  signal \r1_reg__0_n_88\ : STD_LOGIC;
  signal \r1_reg__0_n_89\ : STD_LOGIC;
  signal \r1_reg__0_n_90\ : STD_LOGIC;
  signal \r1_reg__0_n_91\ : STD_LOGIC;
  signal \r1_reg__0_n_92\ : STD_LOGIC;
  signal \r1_reg__0_n_93\ : STD_LOGIC;
  signal \r1_reg__0_n_94\ : STD_LOGIC;
  signal \r1_reg__0_n_95\ : STD_LOGIC;
  signal \r1_reg__0_n_96\ : STD_LOGIC;
  signal \r1_reg__0_n_97\ : STD_LOGIC;
  signal \r1_reg__0_n_98\ : STD_LOGIC;
  signal \r1_reg__0_n_99\ : STD_LOGIC;
  signal \r1_reg__3\ : STD_LOGIC_VECTOR ( 63 downto 33 );
  signal r1_reg_n_100 : STD_LOGIC;
  signal r1_reg_n_101 : STD_LOGIC;
  signal r1_reg_n_102 : STD_LOGIC;
  signal r1_reg_n_103 : STD_LOGIC;
  signal r1_reg_n_104 : STD_LOGIC;
  signal r1_reg_n_105 : STD_LOGIC;
  signal r1_reg_n_58 : STD_LOGIC;
  signal r1_reg_n_59 : STD_LOGIC;
  signal r1_reg_n_60 : STD_LOGIC;
  signal r1_reg_n_61 : STD_LOGIC;
  signal r1_reg_n_62 : STD_LOGIC;
  signal r1_reg_n_63 : STD_LOGIC;
  signal r1_reg_n_64 : STD_LOGIC;
  signal r1_reg_n_65 : STD_LOGIC;
  signal r1_reg_n_66 : STD_LOGIC;
  signal r1_reg_n_67 : STD_LOGIC;
  signal r1_reg_n_68 : STD_LOGIC;
  signal r1_reg_n_69 : STD_LOGIC;
  signal r1_reg_n_70 : STD_LOGIC;
  signal r1_reg_n_71 : STD_LOGIC;
  signal r1_reg_n_72 : STD_LOGIC;
  signal r1_reg_n_73 : STD_LOGIC;
  signal r1_reg_n_74 : STD_LOGIC;
  signal r1_reg_n_75 : STD_LOGIC;
  signal r1_reg_n_76 : STD_LOGIC;
  signal r1_reg_n_77 : STD_LOGIC;
  signal r1_reg_n_78 : STD_LOGIC;
  signal r1_reg_n_79 : STD_LOGIC;
  signal r1_reg_n_80 : STD_LOGIC;
  signal r1_reg_n_81 : STD_LOGIC;
  signal r1_reg_n_82 : STD_LOGIC;
  signal r1_reg_n_83 : STD_LOGIC;
  signal r1_reg_n_84 : STD_LOGIC;
  signal r1_reg_n_85 : STD_LOGIC;
  signal r1_reg_n_86 : STD_LOGIC;
  signal r1_reg_n_87 : STD_LOGIC;
  signal r1_reg_n_88 : STD_LOGIC;
  signal r1_reg_n_89 : STD_LOGIC;
  signal r1_reg_n_90 : STD_LOGIC;
  signal r1_reg_n_91 : STD_LOGIC;
  signal r1_reg_n_92 : STD_LOGIC;
  signal r1_reg_n_93 : STD_LOGIC;
  signal r1_reg_n_94 : STD_LOGIC;
  signal r1_reg_n_95 : STD_LOGIC;
  signal r1_reg_n_96 : STD_LOGIC;
  signal r1_reg_n_97 : STD_LOGIC;
  signal r1_reg_n_98 : STD_LOGIC;
  signal r1_reg_n_99 : STD_LOGIC;
  signal r2 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \r2[36]_i_2_n_0\ : STD_LOGIC;
  signal \r2[36]_i_3_n_0\ : STD_LOGIC;
  signal \r2[36]_i_4_n_0\ : STD_LOGIC;
  signal \r2[40]_i_2_n_0\ : STD_LOGIC;
  signal \r2[40]_i_3_n_0\ : STD_LOGIC;
  signal \r2[40]_i_4_n_0\ : STD_LOGIC;
  signal \r2[40]_i_5_n_0\ : STD_LOGIC;
  signal \r2[44]_i_2_n_0\ : STD_LOGIC;
  signal \r2[44]_i_3_n_0\ : STD_LOGIC;
  signal \r2[44]_i_4_n_0\ : STD_LOGIC;
  signal \r2[44]_i_5_n_0\ : STD_LOGIC;
  signal \r2[48]_i_2_n_0\ : STD_LOGIC;
  signal \r2[48]_i_3_n_0\ : STD_LOGIC;
  signal \r2[48]_i_4_n_0\ : STD_LOGIC;
  signal \r2[48]_i_5_n_0\ : STD_LOGIC;
  signal \r2[52]_i_2_n_0\ : STD_LOGIC;
  signal \r2[52]_i_3_n_0\ : STD_LOGIC;
  signal \r2[52]_i_4_n_0\ : STD_LOGIC;
  signal \r2[52]_i_5_n_0\ : STD_LOGIC;
  signal \r2[52]_i_6_n_0\ : STD_LOGIC;
  signal \r2[56]_i_2_n_0\ : STD_LOGIC;
  signal \r2[56]_i_3_n_0\ : STD_LOGIC;
  signal \r2[56]_i_4_n_0\ : STD_LOGIC;
  signal \r2[56]_i_5_n_0\ : STD_LOGIC;
  signal \r2[56]_i_6_n_0\ : STD_LOGIC;
  signal \r2[56]_i_7_n_0\ : STD_LOGIC;
  signal \r2[56]_i_8_n_0\ : STD_LOGIC;
  signal \r2[56]_i_9_n_0\ : STD_LOGIC;
  signal \r2[60]_i_2_n_0\ : STD_LOGIC;
  signal \r2[60]_i_3_n_0\ : STD_LOGIC;
  signal \r2[60]_i_4_n_0\ : STD_LOGIC;
  signal \r2[60]_i_5_n_0\ : STD_LOGIC;
  signal \r2[60]_i_6_n_0\ : STD_LOGIC;
  signal \r2[60]_i_7_n_0\ : STD_LOGIC;
  signal \r2[60]_i_8_n_0\ : STD_LOGIC;
  signal \r2[60]_i_9_n_0\ : STD_LOGIC;
  signal \r2[63]_i_2_n_0\ : STD_LOGIC;
  signal \r2[63]_i_3_n_0\ : STD_LOGIC;
  signal \r2[63]_i_4_n_0\ : STD_LOGIC;
  signal \r2[63]_i_5_n_0\ : STD_LOGIC;
  signal \r2[63]_i_6_n_0\ : STD_LOGIC;
  signal \r2_reg[36]_i_1_n_0\ : STD_LOGIC;
  signal \r2_reg[36]_i_1_n_1\ : STD_LOGIC;
  signal \r2_reg[36]_i_1_n_2\ : STD_LOGIC;
  signal \r2_reg[36]_i_1_n_3\ : STD_LOGIC;
  signal \r2_reg[40]_i_1_n_0\ : STD_LOGIC;
  signal \r2_reg[40]_i_1_n_1\ : STD_LOGIC;
  signal \r2_reg[40]_i_1_n_2\ : STD_LOGIC;
  signal \r2_reg[40]_i_1_n_3\ : STD_LOGIC;
  signal \r2_reg[44]_i_1_n_0\ : STD_LOGIC;
  signal \r2_reg[44]_i_1_n_1\ : STD_LOGIC;
  signal \r2_reg[44]_i_1_n_2\ : STD_LOGIC;
  signal \r2_reg[44]_i_1_n_3\ : STD_LOGIC;
  signal \r2_reg[48]_i_1_n_0\ : STD_LOGIC;
  signal \r2_reg[48]_i_1_n_1\ : STD_LOGIC;
  signal \r2_reg[48]_i_1_n_2\ : STD_LOGIC;
  signal \r2_reg[48]_i_1_n_3\ : STD_LOGIC;
  signal \r2_reg[52]_i_1_n_0\ : STD_LOGIC;
  signal \r2_reg[52]_i_1_n_1\ : STD_LOGIC;
  signal \r2_reg[52]_i_1_n_2\ : STD_LOGIC;
  signal \r2_reg[52]_i_1_n_3\ : STD_LOGIC;
  signal \r2_reg[56]_i_1_n_0\ : STD_LOGIC;
  signal \r2_reg[56]_i_1_n_1\ : STD_LOGIC;
  signal \r2_reg[56]_i_1_n_2\ : STD_LOGIC;
  signal \r2_reg[56]_i_1_n_3\ : STD_LOGIC;
  signal \r2_reg[60]_i_1_n_0\ : STD_LOGIC;
  signal \r2_reg[60]_i_1_n_1\ : STD_LOGIC;
  signal \r2_reg[60]_i_1_n_2\ : STD_LOGIC;
  signal \r2_reg[60]_i_1_n_3\ : STD_LOGIC;
  signal \r2_reg[63]_i_1_n_2\ : STD_LOGIC;
  signal \r2_reg[63]_i_1_n_3\ : STD_LOGIC;
  signal NLW_int_mul_result_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_int_mul_result_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_int_mul_result_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_int_mul_result_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_int_mul_result_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_int_mul_result_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_int_mul_result_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_int_mul_result_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_int_mul_result_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_int_mul_result_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_int_mul_result__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_int_mul_result__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_int_mul_result__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_int_mul_result__1_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__1_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__1_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__1_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__1_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__1_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__1_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_int_mul_result__1_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_int_mul_result__1_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_int_mul_result__1_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_int_mul_result__2_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__2_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__2_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__2_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__2_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__2_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__2_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_int_mul_result__2_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_int_mul_result__2_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_int_mul_result__3_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__3_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__3_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__3_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__3_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__3_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__3_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_int_mul_result__3_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_int_mul_result__3_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_int_mul_result__3_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_int_mul_result__4_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__4_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__4_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__4_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__4_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__4_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__4_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_int_mul_result__4_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_int_mul_result__4_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_int_mul_result__5_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__5_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__5_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__5_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__5_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__5_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__5_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_int_mul_result__5_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_int_mul_result__5_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_int_mul_result__5_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_int_mul_result__6_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__6_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__6_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__6_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__6_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__6_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_int_mul_result__6_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_int_mul_result__6_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_int_mul_result__6_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_r1_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_r1_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_r1_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_r1_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_r1_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_r1_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_r1_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_r1_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_r1_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_r1_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_r1_reg__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_r1_reg__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_r1_reg__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_r1_reg__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_r1_reg__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_r1_reg__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_r1_reg__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_r1_reg__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_r1_reg__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r1_reg__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_r2_reg[63]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r2_reg[63]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_1\ : label is "soft_lutpair0";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of int_mul_result : label is "{SYNTH-10 {cell *THIS*} {string 18x18 16}}";
  attribute METHODOLOGY_DRC_VIOS of \int_mul_result__0\ : label is "{SYNTH-10 {cell *THIS*} {string 14x18 16}}";
  attribute METHODOLOGY_DRC_VIOS of \int_mul_result__1\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 16}}";
  attribute METHODOLOGY_DRC_VIOS of \int_mul_result__2\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 16}}";
  attribute METHODOLOGY_DRC_VIOS of \int_mul_result__3\ : label is "{SYNTH-10 {cell *THIS*} {string 18x14 16}}";
  attribute METHODOLOGY_DRC_VIOS of \int_mul_result__4\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 16}}";
  attribute METHODOLOGY_DRC_VIOS of \int_mul_result__5\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 16}}";
  attribute METHODOLOGY_DRC_VIOS of \int_mul_result__6\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 16}}";
  attribute METHODOLOGY_DRC_VIOS of r1_reg : label is "{SYNTH-10 {cell *THIS*} {string 18x18 16}}";
  attribute METHODOLOGY_DRC_VIOS of \r1_reg__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 16}}";
  attribute HLUTNM : string;
  attribute HLUTNM of \r2[52]_i_3\ : label is "lutpair0";
  attribute HLUTNM of \r2[56]_i_2\ : label is "lutpair3";
  attribute HLUTNM of \r2[56]_i_3\ : label is "lutpair2";
  attribute HLUTNM of \r2[56]_i_4\ : label is "lutpair1";
  attribute HLUTNM of \r2[56]_i_5\ : label is "lutpair0";
  attribute HLUTNM of \r2[56]_i_6\ : label is "lutpair4";
  attribute HLUTNM of \r2[56]_i_7\ : label is "lutpair3";
  attribute HLUTNM of \r2[56]_i_8\ : label is "lutpair2";
  attribute HLUTNM of \r2[56]_i_9\ : label is "lutpair1";
  attribute HLUTNM of \r2[60]_i_2\ : label is "lutpair7";
  attribute HLUTNM of \r2[60]_i_3\ : label is "lutpair6";
  attribute HLUTNM of \r2[60]_i_4\ : label is "lutpair5";
  attribute HLUTNM of \r2[60]_i_5\ : label is "lutpair4";
  attribute HLUTNM of \r2[60]_i_6\ : label is "lutpair8";
  attribute HLUTNM of \r2[60]_i_7\ : label is "lutpair7";
  attribute HLUTNM of \r2[60]_i_8\ : label is "lutpair6";
  attribute HLUTNM of \r2[60]_i_9\ : label is "lutpair5";
  attribute HLUTNM of \r2[63]_i_2\ : label is "lutpair9";
  attribute HLUTNM of \r2[63]_i_3\ : label is "lutpair8";
  attribute HLUTNM of \r2[63]_i_6\ : label is "lutpair9";
begin
BR_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(18),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(55),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(55)
    );
BR_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(17),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(54),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(54)
    );
BR_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(16),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(53),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(53)
    );
BR_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(15),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(52),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(52)
    );
BR_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(14),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(51),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(51)
    );
BR_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(13),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(50),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(50)
    );
BR_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(12),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(49),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(49)
    );
BR_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(11),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(48),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(48)
    );
BR_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(10),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(47),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(47)
    );
BR_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(9),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(46),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(46)
    );
BR_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(26),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(63),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(63)
    );
BR_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(8),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(45),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(45)
    );
BR_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(44),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(44)
    );
BR_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(43),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(43)
    );
BR_i_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(42),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(42)
    );
BR_i_24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(41),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(41)
    );
BR_i_25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(40),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(40)
    );
BR_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(39),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(39)
    );
BR_i_27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(38),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(38)
    );
BR_i_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(37),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(37)
    );
BR_i_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(36),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(36),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(36)
    );
BR_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(25),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(62),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(62)
    );
BR_i_30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(35),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(35),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(35)
    );
BR_i_31: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(34),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(34),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(34)
    );
BR_i_32: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(33),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(33),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(33)
    );
BR_i_33: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(32),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(32),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(32)
    );
BR_i_34: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(31),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(31),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(31)
    );
BR_i_35: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(30),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(30),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(30)
    );
BR_i_36: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(29),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(29),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(29)
    );
BR_i_37: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(28),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(28),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(28)
    );
BR_i_38: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(27),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(27),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(27)
    );
BR_i_39: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(26),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(26),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(26)
    );
BR_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(24),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(61),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(61)
    );
BR_i_40: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(25),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(25),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(25)
    );
BR_i_41: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(24),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(24),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(24)
    );
BR_i_42: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(23),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(23),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(23)
    );
BR_i_43: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(22),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(22),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(22)
    );
BR_i_44: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(21),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(21),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(21)
    );
BR_i_45: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(20),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(20),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(20)
    );
BR_i_46: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(19),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(19),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(19)
    );
BR_i_47: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(18),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(18),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(18)
    );
BR_i_48: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(17),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(17),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(17)
    );
BR_i_49: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(16),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(16),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(16)
    );
BR_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(23),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(60),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(60)
    );
BR_i_50: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(15),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(15),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(15)
    );
BR_i_51: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(14),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(14),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(14)
    );
BR_i_52: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(13),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(13),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(13)
    );
BR_i_53: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(12),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(12),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(12)
    );
BR_i_54: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(11),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(11),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(11)
    );
BR_i_55: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(10),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(10),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(10)
    );
BR_i_56: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(9),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(9),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(9)
    );
BR_i_57: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(8),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(8),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(8)
    );
BR_i_58: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(7),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(7)
    );
BR_i_59: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(6),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(6)
    );
BR_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(22),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(59),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(59)
    );
BR_i_60: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(5),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(5)
    );
BR_i_61: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(4),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(4)
    );
BR_i_62: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(3)
    );
BR_i_63: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(2)
    );
BR_i_64: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(1),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(1)
    );
BR_i_65: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^d\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(0),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(0)
    );
BR_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(21),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(58),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(58)
    );
BR_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(20),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(57),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(57)
    );
BR_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dina_ext_high_word(19),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I2 => r2(56),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => dina(56)
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => done_r2,
      I1 => Q(3),
      I2 => Q(2),
      O => D(0)
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(3),
      I1 => done_r2,
      O => D(1)
    );
done_r1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      O => mul_start
    );
done_r1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mul_start,
      Q => done_r1,
      R => '0'
    );
done_r2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => done_r1,
      Q => done_r2,
      R => '0'
    );
int_mul_result: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => doutb(50 downto 34),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_int_mul_result_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => doutb(33 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_int_mul_result_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_int_mul_result_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_int_mul_result_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => Q(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(1),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_int_mul_result_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_int_mul_result_OVERFLOW_UNCONNECTED,
      P(47 downto 0) => NLW_int_mul_result_P_UNCONNECTED(47 downto 0),
      PATTERNBDETECT => NLW_int_mul_result_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_int_mul_result_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => int_mul_result_n_106,
      PCOUT(46) => int_mul_result_n_107,
      PCOUT(45) => int_mul_result_n_108,
      PCOUT(44) => int_mul_result_n_109,
      PCOUT(43) => int_mul_result_n_110,
      PCOUT(42) => int_mul_result_n_111,
      PCOUT(41) => int_mul_result_n_112,
      PCOUT(40) => int_mul_result_n_113,
      PCOUT(39) => int_mul_result_n_114,
      PCOUT(38) => int_mul_result_n_115,
      PCOUT(37) => int_mul_result_n_116,
      PCOUT(36) => int_mul_result_n_117,
      PCOUT(35) => int_mul_result_n_118,
      PCOUT(34) => int_mul_result_n_119,
      PCOUT(33) => int_mul_result_n_120,
      PCOUT(32) => int_mul_result_n_121,
      PCOUT(31) => int_mul_result_n_122,
      PCOUT(30) => int_mul_result_n_123,
      PCOUT(29) => int_mul_result_n_124,
      PCOUT(28) => int_mul_result_n_125,
      PCOUT(27) => int_mul_result_n_126,
      PCOUT(26) => int_mul_result_n_127,
      PCOUT(25) => int_mul_result_n_128,
      PCOUT(24) => int_mul_result_n_129,
      PCOUT(23) => int_mul_result_n_130,
      PCOUT(22) => int_mul_result_n_131,
      PCOUT(21) => int_mul_result_n_132,
      PCOUT(20) => int_mul_result_n_133,
      PCOUT(19) => int_mul_result_n_134,
      PCOUT(18) => int_mul_result_n_135,
      PCOUT(17) => int_mul_result_n_136,
      PCOUT(16) => int_mul_result_n_137,
      PCOUT(15) => int_mul_result_n_138,
      PCOUT(14) => int_mul_result_n_139,
      PCOUT(13) => int_mul_result_n_140,
      PCOUT(12) => int_mul_result_n_141,
      PCOUT(11) => int_mul_result_n_142,
      PCOUT(10) => int_mul_result_n_143,
      PCOUT(9) => int_mul_result_n_144,
      PCOUT(8) => int_mul_result_n_145,
      PCOUT(7) => int_mul_result_n_146,
      PCOUT(6) => int_mul_result_n_147,
      PCOUT(5) => int_mul_result_n_148,
      PCOUT(4) => int_mul_result_n_149,
      PCOUT(3) => int_mul_result_n_150,
      PCOUT(2) => int_mul_result_n_151,
      PCOUT(1) => int_mul_result_n_152,
      PCOUT(0) => int_mul_result_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_int_mul_result_UNDERFLOW_UNCONNECTED
    );
\int_mul_result__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => doutb(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_int_mul_result__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 13) => B"00000",
      B(12 downto 0) => doutb(63 downto 51),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_int_mul_result__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_int_mul_result__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_int_mul_result__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => Q(1),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_int_mul_result__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => \NLW_int_mul_result__0_OVERFLOW_UNCONNECTED\,
      P(47) => \int_mul_result__0_n_58\,
      P(46) => \int_mul_result__0_n_59\,
      P(45) => \int_mul_result__0_n_60\,
      P(44) => \int_mul_result__0_n_61\,
      P(43) => \int_mul_result__0_n_62\,
      P(42) => \int_mul_result__0_n_63\,
      P(41) => \int_mul_result__0_n_64\,
      P(40) => \int_mul_result__0_n_65\,
      P(39) => \int_mul_result__0_n_66\,
      P(38) => \int_mul_result__0_n_67\,
      P(37) => \int_mul_result__0_n_68\,
      P(36) => \int_mul_result__0_n_69\,
      P(35) => \int_mul_result__0_n_70\,
      P(34) => \int_mul_result__0_n_71\,
      P(33) => \int_mul_result__0_n_72\,
      P(32) => \int_mul_result__0_n_73\,
      P(31) => \int_mul_result__0_n_74\,
      P(30) => \int_mul_result__0_n_75\,
      P(29) => \int_mul_result__0_n_76\,
      P(28) => \int_mul_result__0_n_77\,
      P(27) => \int_mul_result__0_n_78\,
      P(26) => \int_mul_result__0_n_79\,
      P(25) => \int_mul_result__0_n_80\,
      P(24) => \int_mul_result__0_n_81\,
      P(23) => \int_mul_result__0_n_82\,
      P(22) => \int_mul_result__0_n_83\,
      P(21) => \int_mul_result__0_n_84\,
      P(20) => \int_mul_result__0_n_85\,
      P(19) => \int_mul_result__0_n_86\,
      P(18) => \int_mul_result__0_n_87\,
      P(17) => \int_mul_result__0_n_88\,
      P(16) => \int_mul_result__0_n_89\,
      P(15) => \int_mul_result__0_n_90\,
      P(14) => \int_mul_result__0_n_91\,
      P(13) => \int_mul_result__0_n_92\,
      P(12) => \int_mul_result__0_n_93\,
      P(11) => \int_mul_result__0_n_94\,
      P(10) => \int_mul_result__0_n_95\,
      P(9) => \int_mul_result__0_n_96\,
      P(8) => \int_mul_result__0_n_97\,
      P(7) => \int_mul_result__0_n_98\,
      P(6) => \int_mul_result__0_n_99\,
      P(5) => \int_mul_result__0_n_100\,
      P(4) => \int_mul_result__0_n_101\,
      P(3) => \int_mul_result__0_n_102\,
      P(2) => \int_mul_result__0_n_103\,
      P(1) => \int_mul_result__0_n_104\,
      P(0) => \int_mul_result__0_n_105\,
      PATTERNBDETECT => \NLW_int_mul_result__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_int_mul_result__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => int_mul_result_n_106,
      PCIN(46) => int_mul_result_n_107,
      PCIN(45) => int_mul_result_n_108,
      PCIN(44) => int_mul_result_n_109,
      PCIN(43) => int_mul_result_n_110,
      PCIN(42) => int_mul_result_n_111,
      PCIN(41) => int_mul_result_n_112,
      PCIN(40) => int_mul_result_n_113,
      PCIN(39) => int_mul_result_n_114,
      PCIN(38) => int_mul_result_n_115,
      PCIN(37) => int_mul_result_n_116,
      PCIN(36) => int_mul_result_n_117,
      PCIN(35) => int_mul_result_n_118,
      PCIN(34) => int_mul_result_n_119,
      PCIN(33) => int_mul_result_n_120,
      PCIN(32) => int_mul_result_n_121,
      PCIN(31) => int_mul_result_n_122,
      PCIN(30) => int_mul_result_n_123,
      PCIN(29) => int_mul_result_n_124,
      PCIN(28) => int_mul_result_n_125,
      PCIN(27) => int_mul_result_n_126,
      PCIN(26) => int_mul_result_n_127,
      PCIN(25) => int_mul_result_n_128,
      PCIN(24) => int_mul_result_n_129,
      PCIN(23) => int_mul_result_n_130,
      PCIN(22) => int_mul_result_n_131,
      PCIN(21) => int_mul_result_n_132,
      PCIN(20) => int_mul_result_n_133,
      PCIN(19) => int_mul_result_n_134,
      PCIN(18) => int_mul_result_n_135,
      PCIN(17) => int_mul_result_n_136,
      PCIN(16) => int_mul_result_n_137,
      PCIN(15) => int_mul_result_n_138,
      PCIN(14) => int_mul_result_n_139,
      PCIN(13) => int_mul_result_n_140,
      PCIN(12) => int_mul_result_n_141,
      PCIN(11) => int_mul_result_n_142,
      PCIN(10) => int_mul_result_n_143,
      PCIN(9) => int_mul_result_n_144,
      PCIN(8) => int_mul_result_n_145,
      PCIN(7) => int_mul_result_n_146,
      PCIN(6) => int_mul_result_n_147,
      PCIN(5) => int_mul_result_n_148,
      PCIN(4) => int_mul_result_n_149,
      PCIN(3) => int_mul_result_n_150,
      PCIN(2) => int_mul_result_n_151,
      PCIN(1) => int_mul_result_n_152,
      PCIN(0) => int_mul_result_n_153,
      PCOUT(47) => \int_mul_result__0_n_106\,
      PCOUT(46) => \int_mul_result__0_n_107\,
      PCOUT(45) => \int_mul_result__0_n_108\,
      PCOUT(44) => \int_mul_result__0_n_109\,
      PCOUT(43) => \int_mul_result__0_n_110\,
      PCOUT(42) => \int_mul_result__0_n_111\,
      PCOUT(41) => \int_mul_result__0_n_112\,
      PCOUT(40) => \int_mul_result__0_n_113\,
      PCOUT(39) => \int_mul_result__0_n_114\,
      PCOUT(38) => \int_mul_result__0_n_115\,
      PCOUT(37) => \int_mul_result__0_n_116\,
      PCOUT(36) => \int_mul_result__0_n_117\,
      PCOUT(35) => \int_mul_result__0_n_118\,
      PCOUT(34) => \int_mul_result__0_n_119\,
      PCOUT(33) => \int_mul_result__0_n_120\,
      PCOUT(32) => \int_mul_result__0_n_121\,
      PCOUT(31) => \int_mul_result__0_n_122\,
      PCOUT(30) => \int_mul_result__0_n_123\,
      PCOUT(29) => \int_mul_result__0_n_124\,
      PCOUT(28) => \int_mul_result__0_n_125\,
      PCOUT(27) => \int_mul_result__0_n_126\,
      PCOUT(26) => \int_mul_result__0_n_127\,
      PCOUT(25) => \int_mul_result__0_n_128\,
      PCOUT(24) => \int_mul_result__0_n_129\,
      PCOUT(23) => \int_mul_result__0_n_130\,
      PCOUT(22) => \int_mul_result__0_n_131\,
      PCOUT(21) => \int_mul_result__0_n_132\,
      PCOUT(20) => \int_mul_result__0_n_133\,
      PCOUT(19) => \int_mul_result__0_n_134\,
      PCOUT(18) => \int_mul_result__0_n_135\,
      PCOUT(17) => \int_mul_result__0_n_136\,
      PCOUT(16) => \int_mul_result__0_n_137\,
      PCOUT(15) => \int_mul_result__0_n_138\,
      PCOUT(14) => \int_mul_result__0_n_139\,
      PCOUT(13) => \int_mul_result__0_n_140\,
      PCOUT(12) => \int_mul_result__0_n_141\,
      PCOUT(11) => \int_mul_result__0_n_142\,
      PCOUT(10) => \int_mul_result__0_n_143\,
      PCOUT(9) => \int_mul_result__0_n_144\,
      PCOUT(8) => \int_mul_result__0_n_145\,
      PCOUT(7) => \int_mul_result__0_n_146\,
      PCOUT(6) => \int_mul_result__0_n_147\,
      PCOUT(5) => \int_mul_result__0_n_148\,
      PCOUT(4) => \int_mul_result__0_n_149\,
      PCOUT(3) => \int_mul_result__0_n_150\,
      PCOUT(2) => \int_mul_result__0_n_151\,
      PCOUT(1) => \int_mul_result__0_n_152\,
      PCOUT(0) => \int_mul_result__0_n_153\,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_int_mul_result__0_UNDERFLOW_UNCONNECTED\
    );
\int_mul_result__1\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => doutb(33 downto 17),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_int_mul_result__1_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => doutb(33 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_int_mul_result__1_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_int_mul_result__1_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_int_mul_result__1_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => Q(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(1),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_int_mul_result__1_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_int_mul_result__1_OVERFLOW_UNCONNECTED\,
      P(47 downto 0) => \NLW_int_mul_result__1_P_UNCONNECTED\(47 downto 0),
      PATTERNBDETECT => \NLW_int_mul_result__1_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_int_mul_result__1_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \int_mul_result__1_n_106\,
      PCOUT(46) => \int_mul_result__1_n_107\,
      PCOUT(45) => \int_mul_result__1_n_108\,
      PCOUT(44) => \int_mul_result__1_n_109\,
      PCOUT(43) => \int_mul_result__1_n_110\,
      PCOUT(42) => \int_mul_result__1_n_111\,
      PCOUT(41) => \int_mul_result__1_n_112\,
      PCOUT(40) => \int_mul_result__1_n_113\,
      PCOUT(39) => \int_mul_result__1_n_114\,
      PCOUT(38) => \int_mul_result__1_n_115\,
      PCOUT(37) => \int_mul_result__1_n_116\,
      PCOUT(36) => \int_mul_result__1_n_117\,
      PCOUT(35) => \int_mul_result__1_n_118\,
      PCOUT(34) => \int_mul_result__1_n_119\,
      PCOUT(33) => \int_mul_result__1_n_120\,
      PCOUT(32) => \int_mul_result__1_n_121\,
      PCOUT(31) => \int_mul_result__1_n_122\,
      PCOUT(30) => \int_mul_result__1_n_123\,
      PCOUT(29) => \int_mul_result__1_n_124\,
      PCOUT(28) => \int_mul_result__1_n_125\,
      PCOUT(27) => \int_mul_result__1_n_126\,
      PCOUT(26) => \int_mul_result__1_n_127\,
      PCOUT(25) => \int_mul_result__1_n_128\,
      PCOUT(24) => \int_mul_result__1_n_129\,
      PCOUT(23) => \int_mul_result__1_n_130\,
      PCOUT(22) => \int_mul_result__1_n_131\,
      PCOUT(21) => \int_mul_result__1_n_132\,
      PCOUT(20) => \int_mul_result__1_n_133\,
      PCOUT(19) => \int_mul_result__1_n_134\,
      PCOUT(18) => \int_mul_result__1_n_135\,
      PCOUT(17) => \int_mul_result__1_n_136\,
      PCOUT(16) => \int_mul_result__1_n_137\,
      PCOUT(15) => \int_mul_result__1_n_138\,
      PCOUT(14) => \int_mul_result__1_n_139\,
      PCOUT(13) => \int_mul_result__1_n_140\,
      PCOUT(12) => \int_mul_result__1_n_141\,
      PCOUT(11) => \int_mul_result__1_n_142\,
      PCOUT(10) => \int_mul_result__1_n_143\,
      PCOUT(9) => \int_mul_result__1_n_144\,
      PCOUT(8) => \int_mul_result__1_n_145\,
      PCOUT(7) => \int_mul_result__1_n_146\,
      PCOUT(6) => \int_mul_result__1_n_147\,
      PCOUT(5) => \int_mul_result__1_n_148\,
      PCOUT(4) => \int_mul_result__1_n_149\,
      PCOUT(3) => \int_mul_result__1_n_150\,
      PCOUT(2) => \int_mul_result__1_n_151\,
      PCOUT(1) => \int_mul_result__1_n_152\,
      PCOUT(0) => \int_mul_result__1_n_153\,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_int_mul_result__1_UNDERFLOW_UNCONNECTED\
    );
\int_mul_result__2\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => doutb(50 downto 34),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_int_mul_result__2_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => doutb(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_int_mul_result__2_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_int_mul_result__2_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_int_mul_result__2_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => Q(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(1),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_int_mul_result__2_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => \NLW_int_mul_result__2_OVERFLOW_UNCONNECTED\,
      P(47) => \int_mul_result__2_n_58\,
      P(46) => \int_mul_result__2_n_59\,
      P(45) => \int_mul_result__2_n_60\,
      P(44) => \int_mul_result__2_n_61\,
      P(43) => \int_mul_result__2_n_62\,
      P(42) => \int_mul_result__2_n_63\,
      P(41) => \int_mul_result__2_n_64\,
      P(40) => \int_mul_result__2_n_65\,
      P(39) => \int_mul_result__2_n_66\,
      P(38) => \int_mul_result__2_n_67\,
      P(37) => \int_mul_result__2_n_68\,
      P(36) => \int_mul_result__2_n_69\,
      P(35) => \int_mul_result__2_n_70\,
      P(34) => \int_mul_result__2_n_71\,
      P(33) => \int_mul_result__2_n_72\,
      P(32) => \int_mul_result__2_n_73\,
      P(31) => \int_mul_result__2_n_74\,
      P(30) => \int_mul_result__2_n_75\,
      P(29) => \int_mul_result__2_n_76\,
      P(28) => \int_mul_result__2_n_77\,
      P(27) => \int_mul_result__2_n_78\,
      P(26) => \int_mul_result__2_n_79\,
      P(25) => \int_mul_result__2_n_80\,
      P(24) => \int_mul_result__2_n_81\,
      P(23) => \int_mul_result__2_n_82\,
      P(22) => \int_mul_result__2_n_83\,
      P(21) => \int_mul_result__2_n_84\,
      P(20) => \int_mul_result__2_n_85\,
      P(19) => \int_mul_result__2_n_86\,
      P(18) => \int_mul_result__2_n_87\,
      P(17) => \int_mul_result__2_n_88\,
      P(16) => \int_mul_result__2_n_89\,
      P(15) => \int_mul_result__2_n_90\,
      P(14) => \int_mul_result__2_n_91\,
      P(13) => \int_mul_result__2_n_92\,
      P(12) => \int_mul_result__2_n_93\,
      P(11) => \int_mul_result__2_n_94\,
      P(10) => \int_mul_result__2_n_95\,
      P(9) => \int_mul_result__2_n_96\,
      P(8) => \int_mul_result__2_n_97\,
      P(7) => \int_mul_result__2_n_98\,
      P(6) => \int_mul_result__2_n_99\,
      P(5) => \int_mul_result__2_n_100\,
      P(4) => \int_mul_result__2_n_101\,
      P(3) => \int_mul_result__2_n_102\,
      P(2) => \int_mul_result__2_n_103\,
      P(1) => \int_mul_result__2_n_104\,
      P(0) => \int_mul_result__2_n_105\,
      PATTERNBDETECT => \NLW_int_mul_result__2_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_int_mul_result__2_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \int_mul_result__1_n_106\,
      PCIN(46) => \int_mul_result__1_n_107\,
      PCIN(45) => \int_mul_result__1_n_108\,
      PCIN(44) => \int_mul_result__1_n_109\,
      PCIN(43) => \int_mul_result__1_n_110\,
      PCIN(42) => \int_mul_result__1_n_111\,
      PCIN(41) => \int_mul_result__1_n_112\,
      PCIN(40) => \int_mul_result__1_n_113\,
      PCIN(39) => \int_mul_result__1_n_114\,
      PCIN(38) => \int_mul_result__1_n_115\,
      PCIN(37) => \int_mul_result__1_n_116\,
      PCIN(36) => \int_mul_result__1_n_117\,
      PCIN(35) => \int_mul_result__1_n_118\,
      PCIN(34) => \int_mul_result__1_n_119\,
      PCIN(33) => \int_mul_result__1_n_120\,
      PCIN(32) => \int_mul_result__1_n_121\,
      PCIN(31) => \int_mul_result__1_n_122\,
      PCIN(30) => \int_mul_result__1_n_123\,
      PCIN(29) => \int_mul_result__1_n_124\,
      PCIN(28) => \int_mul_result__1_n_125\,
      PCIN(27) => \int_mul_result__1_n_126\,
      PCIN(26) => \int_mul_result__1_n_127\,
      PCIN(25) => \int_mul_result__1_n_128\,
      PCIN(24) => \int_mul_result__1_n_129\,
      PCIN(23) => \int_mul_result__1_n_130\,
      PCIN(22) => \int_mul_result__1_n_131\,
      PCIN(21) => \int_mul_result__1_n_132\,
      PCIN(20) => \int_mul_result__1_n_133\,
      PCIN(19) => \int_mul_result__1_n_134\,
      PCIN(18) => \int_mul_result__1_n_135\,
      PCIN(17) => \int_mul_result__1_n_136\,
      PCIN(16) => \int_mul_result__1_n_137\,
      PCIN(15) => \int_mul_result__1_n_138\,
      PCIN(14) => \int_mul_result__1_n_139\,
      PCIN(13) => \int_mul_result__1_n_140\,
      PCIN(12) => \int_mul_result__1_n_141\,
      PCIN(11) => \int_mul_result__1_n_142\,
      PCIN(10) => \int_mul_result__1_n_143\,
      PCIN(9) => \int_mul_result__1_n_144\,
      PCIN(8) => \int_mul_result__1_n_145\,
      PCIN(7) => \int_mul_result__1_n_146\,
      PCIN(6) => \int_mul_result__1_n_147\,
      PCIN(5) => \int_mul_result__1_n_148\,
      PCIN(4) => \int_mul_result__1_n_149\,
      PCIN(3) => \int_mul_result__1_n_150\,
      PCIN(2) => \int_mul_result__1_n_151\,
      PCIN(1) => \int_mul_result__1_n_152\,
      PCIN(0) => \int_mul_result__1_n_153\,
      PCOUT(47) => \int_mul_result__2_n_106\,
      PCOUT(46) => \int_mul_result__2_n_107\,
      PCOUT(45) => \int_mul_result__2_n_108\,
      PCOUT(44) => \int_mul_result__2_n_109\,
      PCOUT(43) => \int_mul_result__2_n_110\,
      PCOUT(42) => \int_mul_result__2_n_111\,
      PCOUT(41) => \int_mul_result__2_n_112\,
      PCOUT(40) => \int_mul_result__2_n_113\,
      PCOUT(39) => \int_mul_result__2_n_114\,
      PCOUT(38) => \int_mul_result__2_n_115\,
      PCOUT(37) => \int_mul_result__2_n_116\,
      PCOUT(36) => \int_mul_result__2_n_117\,
      PCOUT(35) => \int_mul_result__2_n_118\,
      PCOUT(34) => \int_mul_result__2_n_119\,
      PCOUT(33) => \int_mul_result__2_n_120\,
      PCOUT(32) => \int_mul_result__2_n_121\,
      PCOUT(31) => \int_mul_result__2_n_122\,
      PCOUT(30) => \int_mul_result__2_n_123\,
      PCOUT(29) => \int_mul_result__2_n_124\,
      PCOUT(28) => \int_mul_result__2_n_125\,
      PCOUT(27) => \int_mul_result__2_n_126\,
      PCOUT(26) => \int_mul_result__2_n_127\,
      PCOUT(25) => \int_mul_result__2_n_128\,
      PCOUT(24) => \int_mul_result__2_n_129\,
      PCOUT(23) => \int_mul_result__2_n_130\,
      PCOUT(22) => \int_mul_result__2_n_131\,
      PCOUT(21) => \int_mul_result__2_n_132\,
      PCOUT(20) => \int_mul_result__2_n_133\,
      PCOUT(19) => \int_mul_result__2_n_134\,
      PCOUT(18) => \int_mul_result__2_n_135\,
      PCOUT(17) => \int_mul_result__2_n_136\,
      PCOUT(16) => \int_mul_result__2_n_137\,
      PCOUT(15) => \int_mul_result__2_n_138\,
      PCOUT(14) => \int_mul_result__2_n_139\,
      PCOUT(13) => \int_mul_result__2_n_140\,
      PCOUT(12) => \int_mul_result__2_n_141\,
      PCOUT(11) => \int_mul_result__2_n_142\,
      PCOUT(10) => \int_mul_result__2_n_143\,
      PCOUT(9) => \int_mul_result__2_n_144\,
      PCOUT(8) => \int_mul_result__2_n_145\,
      PCOUT(7) => \int_mul_result__2_n_146\,
      PCOUT(6) => \int_mul_result__2_n_147\,
      PCOUT(5) => \int_mul_result__2_n_148\,
      PCOUT(4) => \int_mul_result__2_n_149\,
      PCOUT(3) => \int_mul_result__2_n_150\,
      PCOUT(2) => \int_mul_result__2_n_151\,
      PCOUT(1) => \int_mul_result__2_n_152\,
      PCOUT(0) => \int_mul_result__2_n_153\,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_int_mul_result__2_UNDERFLOW_UNCONNECTED\
    );
\int_mul_result__3\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => doutb(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_int_mul_result__3_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 13) => B"00000",
      B(12 downto 0) => doutb(63 downto 51),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_int_mul_result__3_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_int_mul_result__3_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_int_mul_result__3_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => Q(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(1),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_int_mul_result__3_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_int_mul_result__3_OVERFLOW_UNCONNECTED\,
      P(47 downto 0) => \NLW_int_mul_result__3_P_UNCONNECTED\(47 downto 0),
      PATTERNBDETECT => \NLW_int_mul_result__3_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_int_mul_result__3_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \int_mul_result__2_n_106\,
      PCIN(46) => \int_mul_result__2_n_107\,
      PCIN(45) => \int_mul_result__2_n_108\,
      PCIN(44) => \int_mul_result__2_n_109\,
      PCIN(43) => \int_mul_result__2_n_110\,
      PCIN(42) => \int_mul_result__2_n_111\,
      PCIN(41) => \int_mul_result__2_n_112\,
      PCIN(40) => \int_mul_result__2_n_113\,
      PCIN(39) => \int_mul_result__2_n_114\,
      PCIN(38) => \int_mul_result__2_n_115\,
      PCIN(37) => \int_mul_result__2_n_116\,
      PCIN(36) => \int_mul_result__2_n_117\,
      PCIN(35) => \int_mul_result__2_n_118\,
      PCIN(34) => \int_mul_result__2_n_119\,
      PCIN(33) => \int_mul_result__2_n_120\,
      PCIN(32) => \int_mul_result__2_n_121\,
      PCIN(31) => \int_mul_result__2_n_122\,
      PCIN(30) => \int_mul_result__2_n_123\,
      PCIN(29) => \int_mul_result__2_n_124\,
      PCIN(28) => \int_mul_result__2_n_125\,
      PCIN(27) => \int_mul_result__2_n_126\,
      PCIN(26) => \int_mul_result__2_n_127\,
      PCIN(25) => \int_mul_result__2_n_128\,
      PCIN(24) => \int_mul_result__2_n_129\,
      PCIN(23) => \int_mul_result__2_n_130\,
      PCIN(22) => \int_mul_result__2_n_131\,
      PCIN(21) => \int_mul_result__2_n_132\,
      PCIN(20) => \int_mul_result__2_n_133\,
      PCIN(19) => \int_mul_result__2_n_134\,
      PCIN(18) => \int_mul_result__2_n_135\,
      PCIN(17) => \int_mul_result__2_n_136\,
      PCIN(16) => \int_mul_result__2_n_137\,
      PCIN(15) => \int_mul_result__2_n_138\,
      PCIN(14) => \int_mul_result__2_n_139\,
      PCIN(13) => \int_mul_result__2_n_140\,
      PCIN(12) => \int_mul_result__2_n_141\,
      PCIN(11) => \int_mul_result__2_n_142\,
      PCIN(10) => \int_mul_result__2_n_143\,
      PCIN(9) => \int_mul_result__2_n_144\,
      PCIN(8) => \int_mul_result__2_n_145\,
      PCIN(7) => \int_mul_result__2_n_146\,
      PCIN(6) => \int_mul_result__2_n_147\,
      PCIN(5) => \int_mul_result__2_n_148\,
      PCIN(4) => \int_mul_result__2_n_149\,
      PCIN(3) => \int_mul_result__2_n_150\,
      PCIN(2) => \int_mul_result__2_n_151\,
      PCIN(1) => \int_mul_result__2_n_152\,
      PCIN(0) => \int_mul_result__2_n_153\,
      PCOUT(47) => \int_mul_result__3_n_106\,
      PCOUT(46) => \int_mul_result__3_n_107\,
      PCOUT(45) => \int_mul_result__3_n_108\,
      PCOUT(44) => \int_mul_result__3_n_109\,
      PCOUT(43) => \int_mul_result__3_n_110\,
      PCOUT(42) => \int_mul_result__3_n_111\,
      PCOUT(41) => \int_mul_result__3_n_112\,
      PCOUT(40) => \int_mul_result__3_n_113\,
      PCOUT(39) => \int_mul_result__3_n_114\,
      PCOUT(38) => \int_mul_result__3_n_115\,
      PCOUT(37) => \int_mul_result__3_n_116\,
      PCOUT(36) => \int_mul_result__3_n_117\,
      PCOUT(35) => \int_mul_result__3_n_118\,
      PCOUT(34) => \int_mul_result__3_n_119\,
      PCOUT(33) => \int_mul_result__3_n_120\,
      PCOUT(32) => \int_mul_result__3_n_121\,
      PCOUT(31) => \int_mul_result__3_n_122\,
      PCOUT(30) => \int_mul_result__3_n_123\,
      PCOUT(29) => \int_mul_result__3_n_124\,
      PCOUT(28) => \int_mul_result__3_n_125\,
      PCOUT(27) => \int_mul_result__3_n_126\,
      PCOUT(26) => \int_mul_result__3_n_127\,
      PCOUT(25) => \int_mul_result__3_n_128\,
      PCOUT(24) => \int_mul_result__3_n_129\,
      PCOUT(23) => \int_mul_result__3_n_130\,
      PCOUT(22) => \int_mul_result__3_n_131\,
      PCOUT(21) => \int_mul_result__3_n_132\,
      PCOUT(20) => \int_mul_result__3_n_133\,
      PCOUT(19) => \int_mul_result__3_n_134\,
      PCOUT(18) => \int_mul_result__3_n_135\,
      PCOUT(17) => \int_mul_result__3_n_136\,
      PCOUT(16) => \int_mul_result__3_n_137\,
      PCOUT(15) => \int_mul_result__3_n_138\,
      PCOUT(14) => \int_mul_result__3_n_139\,
      PCOUT(13) => \int_mul_result__3_n_140\,
      PCOUT(12) => \int_mul_result__3_n_141\,
      PCOUT(11) => \int_mul_result__3_n_142\,
      PCOUT(10) => \int_mul_result__3_n_143\,
      PCOUT(9) => \int_mul_result__3_n_144\,
      PCOUT(8) => \int_mul_result__3_n_145\,
      PCOUT(7) => \int_mul_result__3_n_146\,
      PCOUT(6) => \int_mul_result__3_n_147\,
      PCOUT(5) => \int_mul_result__3_n_148\,
      PCOUT(4) => \int_mul_result__3_n_149\,
      PCOUT(3) => \int_mul_result__3_n_150\,
      PCOUT(2) => \int_mul_result__3_n_151\,
      PCOUT(1) => \int_mul_result__3_n_152\,
      PCOUT(0) => \int_mul_result__3_n_153\,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_int_mul_result__3_UNDERFLOW_UNCONNECTED\
    );
\int_mul_result__4\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => doutb(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_int_mul_result__4_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => doutb(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_int_mul_result__4_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_int_mul_result__4_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_int_mul_result__4_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => Q(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(1),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_int_mul_result__4_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_int_mul_result__4_OVERFLOW_UNCONNECTED\,
      P(47) => \int_mul_result__4_n_58\,
      P(46) => \int_mul_result__4_n_59\,
      P(45) => \int_mul_result__4_n_60\,
      P(44) => \int_mul_result__4_n_61\,
      P(43) => \int_mul_result__4_n_62\,
      P(42) => \int_mul_result__4_n_63\,
      P(41) => \int_mul_result__4_n_64\,
      P(40) => \int_mul_result__4_n_65\,
      P(39) => \int_mul_result__4_n_66\,
      P(38) => \int_mul_result__4_n_67\,
      P(37) => \int_mul_result__4_n_68\,
      P(36) => \int_mul_result__4_n_69\,
      P(35) => \int_mul_result__4_n_70\,
      P(34) => \int_mul_result__4_n_71\,
      P(33) => \int_mul_result__4_n_72\,
      P(32) => \int_mul_result__4_n_73\,
      P(31) => \int_mul_result__4_n_74\,
      P(30) => \int_mul_result__4_n_75\,
      P(29) => \int_mul_result__4_n_76\,
      P(28) => \int_mul_result__4_n_77\,
      P(27) => \int_mul_result__4_n_78\,
      P(26) => \int_mul_result__4_n_79\,
      P(25) => \int_mul_result__4_n_80\,
      P(24) => \int_mul_result__4_n_81\,
      P(23) => \int_mul_result__4_n_82\,
      P(22) => \int_mul_result__4_n_83\,
      P(21) => \int_mul_result__4_n_84\,
      P(20) => \int_mul_result__4_n_85\,
      P(19) => \int_mul_result__4_n_86\,
      P(18) => \int_mul_result__4_n_87\,
      P(17) => \int_mul_result__4_n_88\,
      P(16) => \int_mul_result__4_n_89\,
      P(15) => \int_mul_result__4_n_90\,
      P(14) => \int_mul_result__4_n_91\,
      P(13) => \int_mul_result__4_n_92\,
      P(12) => \int_mul_result__4_n_93\,
      P(11) => \int_mul_result__4_n_94\,
      P(10) => \int_mul_result__4_n_95\,
      P(9) => \int_mul_result__4_n_96\,
      P(8) => \int_mul_result__4_n_97\,
      P(7) => \int_mul_result__4_n_98\,
      P(6) => \int_mul_result__4_n_99\,
      P(5) => \int_mul_result__4_n_100\,
      P(4) => \int_mul_result__4_n_101\,
      P(3) => \int_mul_result__4_n_102\,
      P(2) => \int_mul_result__4_n_103\,
      P(1) => \int_mul_result__4_n_104\,
      P(0) => \int_mul_result__4_n_105\,
      PATTERNBDETECT => \NLW_int_mul_result__4_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_int_mul_result__4_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \int_mul_result__4_n_106\,
      PCOUT(46) => \int_mul_result__4_n_107\,
      PCOUT(45) => \int_mul_result__4_n_108\,
      PCOUT(44) => \int_mul_result__4_n_109\,
      PCOUT(43) => \int_mul_result__4_n_110\,
      PCOUT(42) => \int_mul_result__4_n_111\,
      PCOUT(41) => \int_mul_result__4_n_112\,
      PCOUT(40) => \int_mul_result__4_n_113\,
      PCOUT(39) => \int_mul_result__4_n_114\,
      PCOUT(38) => \int_mul_result__4_n_115\,
      PCOUT(37) => \int_mul_result__4_n_116\,
      PCOUT(36) => \int_mul_result__4_n_117\,
      PCOUT(35) => \int_mul_result__4_n_118\,
      PCOUT(34) => \int_mul_result__4_n_119\,
      PCOUT(33) => \int_mul_result__4_n_120\,
      PCOUT(32) => \int_mul_result__4_n_121\,
      PCOUT(31) => \int_mul_result__4_n_122\,
      PCOUT(30) => \int_mul_result__4_n_123\,
      PCOUT(29) => \int_mul_result__4_n_124\,
      PCOUT(28) => \int_mul_result__4_n_125\,
      PCOUT(27) => \int_mul_result__4_n_126\,
      PCOUT(26) => \int_mul_result__4_n_127\,
      PCOUT(25) => \int_mul_result__4_n_128\,
      PCOUT(24) => \int_mul_result__4_n_129\,
      PCOUT(23) => \int_mul_result__4_n_130\,
      PCOUT(22) => \int_mul_result__4_n_131\,
      PCOUT(21) => \int_mul_result__4_n_132\,
      PCOUT(20) => \int_mul_result__4_n_133\,
      PCOUT(19) => \int_mul_result__4_n_134\,
      PCOUT(18) => \int_mul_result__4_n_135\,
      PCOUT(17) => \int_mul_result__4_n_136\,
      PCOUT(16) => \int_mul_result__4_n_137\,
      PCOUT(15) => \int_mul_result__4_n_138\,
      PCOUT(14) => \int_mul_result__4_n_139\,
      PCOUT(13) => \int_mul_result__4_n_140\,
      PCOUT(12) => \int_mul_result__4_n_141\,
      PCOUT(11) => \int_mul_result__4_n_142\,
      PCOUT(10) => \int_mul_result__4_n_143\,
      PCOUT(9) => \int_mul_result__4_n_144\,
      PCOUT(8) => \int_mul_result__4_n_145\,
      PCOUT(7) => \int_mul_result__4_n_146\,
      PCOUT(6) => \int_mul_result__4_n_147\,
      PCOUT(5) => \int_mul_result__4_n_148\,
      PCOUT(4) => \int_mul_result__4_n_149\,
      PCOUT(3) => \int_mul_result__4_n_150\,
      PCOUT(2) => \int_mul_result__4_n_151\,
      PCOUT(1) => \int_mul_result__4_n_152\,
      PCOUT(0) => \int_mul_result__4_n_153\,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_int_mul_result__4_UNDERFLOW_UNCONNECTED\
    );
\int_mul_result__5\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => doutb(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_int_mul_result__5_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => doutb(33 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_int_mul_result__5_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_int_mul_result__5_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_int_mul_result__5_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => Q(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(1),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_int_mul_result__5_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_int_mul_result__5_OVERFLOW_UNCONNECTED\,
      P(47 downto 0) => \NLW_int_mul_result__5_P_UNCONNECTED\(47 downto 0),
      PATTERNBDETECT => \NLW_int_mul_result__5_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_int_mul_result__5_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \int_mul_result__4_n_106\,
      PCIN(46) => \int_mul_result__4_n_107\,
      PCIN(45) => \int_mul_result__4_n_108\,
      PCIN(44) => \int_mul_result__4_n_109\,
      PCIN(43) => \int_mul_result__4_n_110\,
      PCIN(42) => \int_mul_result__4_n_111\,
      PCIN(41) => \int_mul_result__4_n_112\,
      PCIN(40) => \int_mul_result__4_n_113\,
      PCIN(39) => \int_mul_result__4_n_114\,
      PCIN(38) => \int_mul_result__4_n_115\,
      PCIN(37) => \int_mul_result__4_n_116\,
      PCIN(36) => \int_mul_result__4_n_117\,
      PCIN(35) => \int_mul_result__4_n_118\,
      PCIN(34) => \int_mul_result__4_n_119\,
      PCIN(33) => \int_mul_result__4_n_120\,
      PCIN(32) => \int_mul_result__4_n_121\,
      PCIN(31) => \int_mul_result__4_n_122\,
      PCIN(30) => \int_mul_result__4_n_123\,
      PCIN(29) => \int_mul_result__4_n_124\,
      PCIN(28) => \int_mul_result__4_n_125\,
      PCIN(27) => \int_mul_result__4_n_126\,
      PCIN(26) => \int_mul_result__4_n_127\,
      PCIN(25) => \int_mul_result__4_n_128\,
      PCIN(24) => \int_mul_result__4_n_129\,
      PCIN(23) => \int_mul_result__4_n_130\,
      PCIN(22) => \int_mul_result__4_n_131\,
      PCIN(21) => \int_mul_result__4_n_132\,
      PCIN(20) => \int_mul_result__4_n_133\,
      PCIN(19) => \int_mul_result__4_n_134\,
      PCIN(18) => \int_mul_result__4_n_135\,
      PCIN(17) => \int_mul_result__4_n_136\,
      PCIN(16) => \int_mul_result__4_n_137\,
      PCIN(15) => \int_mul_result__4_n_138\,
      PCIN(14) => \int_mul_result__4_n_139\,
      PCIN(13) => \int_mul_result__4_n_140\,
      PCIN(12) => \int_mul_result__4_n_141\,
      PCIN(11) => \int_mul_result__4_n_142\,
      PCIN(10) => \int_mul_result__4_n_143\,
      PCIN(9) => \int_mul_result__4_n_144\,
      PCIN(8) => \int_mul_result__4_n_145\,
      PCIN(7) => \int_mul_result__4_n_146\,
      PCIN(6) => \int_mul_result__4_n_147\,
      PCIN(5) => \int_mul_result__4_n_148\,
      PCIN(4) => \int_mul_result__4_n_149\,
      PCIN(3) => \int_mul_result__4_n_150\,
      PCIN(2) => \int_mul_result__4_n_151\,
      PCIN(1) => \int_mul_result__4_n_152\,
      PCIN(0) => \int_mul_result__4_n_153\,
      PCOUT(47) => \int_mul_result__5_n_106\,
      PCOUT(46) => \int_mul_result__5_n_107\,
      PCOUT(45) => \int_mul_result__5_n_108\,
      PCOUT(44) => \int_mul_result__5_n_109\,
      PCOUT(43) => \int_mul_result__5_n_110\,
      PCOUT(42) => \int_mul_result__5_n_111\,
      PCOUT(41) => \int_mul_result__5_n_112\,
      PCOUT(40) => \int_mul_result__5_n_113\,
      PCOUT(39) => \int_mul_result__5_n_114\,
      PCOUT(38) => \int_mul_result__5_n_115\,
      PCOUT(37) => \int_mul_result__5_n_116\,
      PCOUT(36) => \int_mul_result__5_n_117\,
      PCOUT(35) => \int_mul_result__5_n_118\,
      PCOUT(34) => \int_mul_result__5_n_119\,
      PCOUT(33) => \int_mul_result__5_n_120\,
      PCOUT(32) => \int_mul_result__5_n_121\,
      PCOUT(31) => \int_mul_result__5_n_122\,
      PCOUT(30) => \int_mul_result__5_n_123\,
      PCOUT(29) => \int_mul_result__5_n_124\,
      PCOUT(28) => \int_mul_result__5_n_125\,
      PCOUT(27) => \int_mul_result__5_n_126\,
      PCOUT(26) => \int_mul_result__5_n_127\,
      PCOUT(25) => \int_mul_result__5_n_128\,
      PCOUT(24) => \int_mul_result__5_n_129\,
      PCOUT(23) => \int_mul_result__5_n_130\,
      PCOUT(22) => \int_mul_result__5_n_131\,
      PCOUT(21) => \int_mul_result__5_n_132\,
      PCOUT(20) => \int_mul_result__5_n_133\,
      PCOUT(19) => \int_mul_result__5_n_134\,
      PCOUT(18) => \int_mul_result__5_n_135\,
      PCOUT(17) => \int_mul_result__5_n_136\,
      PCOUT(16) => \int_mul_result__5_n_137\,
      PCOUT(15) => \int_mul_result__5_n_138\,
      PCOUT(14) => \int_mul_result__5_n_139\,
      PCOUT(13) => \int_mul_result__5_n_140\,
      PCOUT(12) => \int_mul_result__5_n_141\,
      PCOUT(11) => \int_mul_result__5_n_142\,
      PCOUT(10) => \int_mul_result__5_n_143\,
      PCOUT(9) => \int_mul_result__5_n_144\,
      PCOUT(8) => \int_mul_result__5_n_145\,
      PCOUT(7) => \int_mul_result__5_n_146\,
      PCOUT(6) => \int_mul_result__5_n_147\,
      PCOUT(5) => \int_mul_result__5_n_148\,
      PCOUT(4) => \int_mul_result__5_n_149\,
      PCOUT(3) => \int_mul_result__5_n_150\,
      PCOUT(2) => \int_mul_result__5_n_151\,
      PCOUT(1) => \int_mul_result__5_n_152\,
      PCOUT(0) => \int_mul_result__5_n_153\,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_int_mul_result__5_UNDERFLOW_UNCONNECTED\
    );
\int_mul_result__6\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => doutb(33 downto 17),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_int_mul_result__6_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => doutb(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_int_mul_result__6_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_int_mul_result__6_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_int_mul_result__6_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => Q(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(1),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_int_mul_result__6_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => \NLW_int_mul_result__6_OVERFLOW_UNCONNECTED\,
      P(47) => \int_mul_result__6_n_58\,
      P(46) => \int_mul_result__6_n_59\,
      P(45) => \int_mul_result__6_n_60\,
      P(44) => \int_mul_result__6_n_61\,
      P(43) => \int_mul_result__6_n_62\,
      P(42) => \int_mul_result__6_n_63\,
      P(41) => \int_mul_result__6_n_64\,
      P(40) => \int_mul_result__6_n_65\,
      P(39) => \int_mul_result__6_n_66\,
      P(38) => \int_mul_result__6_n_67\,
      P(37) => \int_mul_result__6_n_68\,
      P(36) => \int_mul_result__6_n_69\,
      P(35) => \int_mul_result__6_n_70\,
      P(34) => \int_mul_result__6_n_71\,
      P(33) => \int_mul_result__6_n_72\,
      P(32) => \int_mul_result__6_n_73\,
      P(31) => \int_mul_result__6_n_74\,
      P(30) => \int_mul_result__6_n_75\,
      P(29) => \int_mul_result__6_n_76\,
      P(28) => \int_mul_result__6_n_77\,
      P(27) => \int_mul_result__6_n_78\,
      P(26) => \int_mul_result__6_n_79\,
      P(25) => \int_mul_result__6_n_80\,
      P(24) => \int_mul_result__6_n_81\,
      P(23) => \int_mul_result__6_n_82\,
      P(22) => \int_mul_result__6_n_83\,
      P(21) => \int_mul_result__6_n_84\,
      P(20) => \int_mul_result__6_n_85\,
      P(19) => \int_mul_result__6_n_86\,
      P(18) => \int_mul_result__6_n_87\,
      P(17) => \int_mul_result__6_n_88\,
      P(16) => \int_mul_result__6_n_89\,
      P(15) => \int_mul_result__6_n_90\,
      P(14) => \int_mul_result__6_n_91\,
      P(13) => \int_mul_result__6_n_92\,
      P(12) => \int_mul_result__6_n_93\,
      P(11) => \int_mul_result__6_n_94\,
      P(10) => \int_mul_result__6_n_95\,
      P(9) => \int_mul_result__6_n_96\,
      P(8) => \int_mul_result__6_n_97\,
      P(7) => \int_mul_result__6_n_98\,
      P(6) => \int_mul_result__6_n_99\,
      P(5) => \int_mul_result__6_n_100\,
      P(4) => \int_mul_result__6_n_101\,
      P(3) => \int_mul_result__6_n_102\,
      P(2) => \int_mul_result__6_n_103\,
      P(1) => \int_mul_result__6_n_104\,
      P(0) => \int_mul_result__6_n_105\,
      PATTERNBDETECT => \NLW_int_mul_result__6_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_int_mul_result__6_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \int_mul_result__5_n_106\,
      PCIN(46) => \int_mul_result__5_n_107\,
      PCIN(45) => \int_mul_result__5_n_108\,
      PCIN(44) => \int_mul_result__5_n_109\,
      PCIN(43) => \int_mul_result__5_n_110\,
      PCIN(42) => \int_mul_result__5_n_111\,
      PCIN(41) => \int_mul_result__5_n_112\,
      PCIN(40) => \int_mul_result__5_n_113\,
      PCIN(39) => \int_mul_result__5_n_114\,
      PCIN(38) => \int_mul_result__5_n_115\,
      PCIN(37) => \int_mul_result__5_n_116\,
      PCIN(36) => \int_mul_result__5_n_117\,
      PCIN(35) => \int_mul_result__5_n_118\,
      PCIN(34) => \int_mul_result__5_n_119\,
      PCIN(33) => \int_mul_result__5_n_120\,
      PCIN(32) => \int_mul_result__5_n_121\,
      PCIN(31) => \int_mul_result__5_n_122\,
      PCIN(30) => \int_mul_result__5_n_123\,
      PCIN(29) => \int_mul_result__5_n_124\,
      PCIN(28) => \int_mul_result__5_n_125\,
      PCIN(27) => \int_mul_result__5_n_126\,
      PCIN(26) => \int_mul_result__5_n_127\,
      PCIN(25) => \int_mul_result__5_n_128\,
      PCIN(24) => \int_mul_result__5_n_129\,
      PCIN(23) => \int_mul_result__5_n_130\,
      PCIN(22) => \int_mul_result__5_n_131\,
      PCIN(21) => \int_mul_result__5_n_132\,
      PCIN(20) => \int_mul_result__5_n_133\,
      PCIN(19) => \int_mul_result__5_n_134\,
      PCIN(18) => \int_mul_result__5_n_135\,
      PCIN(17) => \int_mul_result__5_n_136\,
      PCIN(16) => \int_mul_result__5_n_137\,
      PCIN(15) => \int_mul_result__5_n_138\,
      PCIN(14) => \int_mul_result__5_n_139\,
      PCIN(13) => \int_mul_result__5_n_140\,
      PCIN(12) => \int_mul_result__5_n_141\,
      PCIN(11) => \int_mul_result__5_n_142\,
      PCIN(10) => \int_mul_result__5_n_143\,
      PCIN(9) => \int_mul_result__5_n_144\,
      PCIN(8) => \int_mul_result__5_n_145\,
      PCIN(7) => \int_mul_result__5_n_146\,
      PCIN(6) => \int_mul_result__5_n_147\,
      PCIN(5) => \int_mul_result__5_n_148\,
      PCIN(4) => \int_mul_result__5_n_149\,
      PCIN(3) => \int_mul_result__5_n_150\,
      PCIN(2) => \int_mul_result__5_n_151\,
      PCIN(1) => \int_mul_result__5_n_152\,
      PCIN(0) => \int_mul_result__5_n_153\,
      PCOUT(47) => \int_mul_result__6_n_106\,
      PCOUT(46) => \int_mul_result__6_n_107\,
      PCOUT(45) => \int_mul_result__6_n_108\,
      PCOUT(44) => \int_mul_result__6_n_109\,
      PCOUT(43) => \int_mul_result__6_n_110\,
      PCOUT(42) => \int_mul_result__6_n_111\,
      PCOUT(41) => \int_mul_result__6_n_112\,
      PCOUT(40) => \int_mul_result__6_n_113\,
      PCOUT(39) => \int_mul_result__6_n_114\,
      PCOUT(38) => \int_mul_result__6_n_115\,
      PCOUT(37) => \int_mul_result__6_n_116\,
      PCOUT(36) => \int_mul_result__6_n_117\,
      PCOUT(35) => \int_mul_result__6_n_118\,
      PCOUT(34) => \int_mul_result__6_n_119\,
      PCOUT(33) => \int_mul_result__6_n_120\,
      PCOUT(32) => \int_mul_result__6_n_121\,
      PCOUT(31) => \int_mul_result__6_n_122\,
      PCOUT(30) => \int_mul_result__6_n_123\,
      PCOUT(29) => \int_mul_result__6_n_124\,
      PCOUT(28) => \int_mul_result__6_n_125\,
      PCOUT(27) => \int_mul_result__6_n_126\,
      PCOUT(26) => \int_mul_result__6_n_127\,
      PCOUT(25) => \int_mul_result__6_n_128\,
      PCOUT(24) => \int_mul_result__6_n_129\,
      PCOUT(23) => \int_mul_result__6_n_130\,
      PCOUT(22) => \int_mul_result__6_n_131\,
      PCOUT(21) => \int_mul_result__6_n_132\,
      PCOUT(20) => \int_mul_result__6_n_133\,
      PCOUT(19) => \int_mul_result__6_n_134\,
      PCOUT(18) => \int_mul_result__6_n_135\,
      PCOUT(17) => \int_mul_result__6_n_136\,
      PCOUT(16) => \int_mul_result__6_n_137\,
      PCOUT(15) => \int_mul_result__6_n_138\,
      PCOUT(14) => \int_mul_result__6_n_139\,
      PCOUT(13) => \int_mul_result__6_n_140\,
      PCOUT(12) => \int_mul_result__6_n_141\,
      PCOUT(11) => \int_mul_result__6_n_142\,
      PCOUT(10) => \int_mul_result__6_n_143\,
      PCOUT(9) => \int_mul_result__6_n_144\,
      PCOUT(8) => \int_mul_result__6_n_145\,
      PCOUT(7) => \int_mul_result__6_n_146\,
      PCOUT(6) => \int_mul_result__6_n_147\,
      PCOUT(5) => \int_mul_result__6_n_148\,
      PCOUT(4) => \int_mul_result__6_n_149\,
      PCOUT(3) => \int_mul_result__6_n_150\,
      PCOUT(2) => \int_mul_result__6_n_151\,
      PCOUT(1) => \int_mul_result__6_n_152\,
      PCOUT(0) => \int_mul_result__6_n_153\,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_int_mul_result__6_UNDERFLOW_UNCONNECTED\
    );
r1_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => doutb(33 downto 17),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_r1_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => doutb(50 downto 34),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_r1_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_r1_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_r1_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => Q(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(1),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_r1_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => NLW_r1_reg_OVERFLOW_UNCONNECTED,
      P(47) => r1_reg_n_58,
      P(46) => r1_reg_n_59,
      P(45) => r1_reg_n_60,
      P(44) => r1_reg_n_61,
      P(43) => r1_reg_n_62,
      P(42) => r1_reg_n_63,
      P(41) => r1_reg_n_64,
      P(40) => r1_reg_n_65,
      P(39) => r1_reg_n_66,
      P(38) => r1_reg_n_67,
      P(37) => r1_reg_n_68,
      P(36) => r1_reg_n_69,
      P(35) => r1_reg_n_70,
      P(34) => r1_reg_n_71,
      P(33) => r1_reg_n_72,
      P(32) => r1_reg_n_73,
      P(31) => r1_reg_n_74,
      P(30) => r1_reg_n_75,
      P(29) => r1_reg_n_76,
      P(28) => r1_reg_n_77,
      P(27) => r1_reg_n_78,
      P(26) => r1_reg_n_79,
      P(25) => r1_reg_n_80,
      P(24) => r1_reg_n_81,
      P(23) => r1_reg_n_82,
      P(22) => r1_reg_n_83,
      P(21) => r1_reg_n_84,
      P(20) => r1_reg_n_85,
      P(19) => r1_reg_n_86,
      P(18) => r1_reg_n_87,
      P(17) => r1_reg_n_88,
      P(16) => r1_reg_n_89,
      P(15) => r1_reg_n_90,
      P(14) => r1_reg_n_91,
      P(13) => r1_reg_n_92,
      P(12) => r1_reg_n_93,
      P(11) => r1_reg_n_94,
      P(10) => r1_reg_n_95,
      P(9) => r1_reg_n_96,
      P(8) => r1_reg_n_97,
      P(7) => r1_reg_n_98,
      P(6) => r1_reg_n_99,
      P(5) => r1_reg_n_100,
      P(4) => r1_reg_n_101,
      P(3) => r1_reg_n_102,
      P(2) => r1_reg_n_103,
      P(1) => r1_reg_n_104,
      P(0) => r1_reg_n_105,
      PATTERNBDETECT => NLW_r1_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_r1_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => \int_mul_result__3_n_106\,
      PCIN(46) => \int_mul_result__3_n_107\,
      PCIN(45) => \int_mul_result__3_n_108\,
      PCIN(44) => \int_mul_result__3_n_109\,
      PCIN(43) => \int_mul_result__3_n_110\,
      PCIN(42) => \int_mul_result__3_n_111\,
      PCIN(41) => \int_mul_result__3_n_112\,
      PCIN(40) => \int_mul_result__3_n_113\,
      PCIN(39) => \int_mul_result__3_n_114\,
      PCIN(38) => \int_mul_result__3_n_115\,
      PCIN(37) => \int_mul_result__3_n_116\,
      PCIN(36) => \int_mul_result__3_n_117\,
      PCIN(35) => \int_mul_result__3_n_118\,
      PCIN(34) => \int_mul_result__3_n_119\,
      PCIN(33) => \int_mul_result__3_n_120\,
      PCIN(32) => \int_mul_result__3_n_121\,
      PCIN(31) => \int_mul_result__3_n_122\,
      PCIN(30) => \int_mul_result__3_n_123\,
      PCIN(29) => \int_mul_result__3_n_124\,
      PCIN(28) => \int_mul_result__3_n_125\,
      PCIN(27) => \int_mul_result__3_n_126\,
      PCIN(26) => \int_mul_result__3_n_127\,
      PCIN(25) => \int_mul_result__3_n_128\,
      PCIN(24) => \int_mul_result__3_n_129\,
      PCIN(23) => \int_mul_result__3_n_130\,
      PCIN(22) => \int_mul_result__3_n_131\,
      PCIN(21) => \int_mul_result__3_n_132\,
      PCIN(20) => \int_mul_result__3_n_133\,
      PCIN(19) => \int_mul_result__3_n_134\,
      PCIN(18) => \int_mul_result__3_n_135\,
      PCIN(17) => \int_mul_result__3_n_136\,
      PCIN(16) => \int_mul_result__3_n_137\,
      PCIN(15) => \int_mul_result__3_n_138\,
      PCIN(14) => \int_mul_result__3_n_139\,
      PCIN(13) => \int_mul_result__3_n_140\,
      PCIN(12) => \int_mul_result__3_n_141\,
      PCIN(11) => \int_mul_result__3_n_142\,
      PCIN(10) => \int_mul_result__3_n_143\,
      PCIN(9) => \int_mul_result__3_n_144\,
      PCIN(8) => \int_mul_result__3_n_145\,
      PCIN(7) => \int_mul_result__3_n_146\,
      PCIN(6) => \int_mul_result__3_n_147\,
      PCIN(5) => \int_mul_result__3_n_148\,
      PCIN(4) => \int_mul_result__3_n_149\,
      PCIN(3) => \int_mul_result__3_n_150\,
      PCIN(2) => \int_mul_result__3_n_151\,
      PCIN(1) => \int_mul_result__3_n_152\,
      PCIN(0) => \int_mul_result__3_n_153\,
      PCOUT(47 downto 0) => NLW_r1_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_r1_reg_UNDERFLOW_UNCONNECTED
    );
\r1_reg[0]__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__2_n_105\,
      Q => \r1_reg[0]__2_n_0\,
      R => '0'
    );
\r1_reg[0]__3\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__4_n_105\,
      Q => \r1_reg[0]__3_n_0\,
      R => '0'
    );
\r1_reg[0]__4\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__6_n_105\,
      Q => \r1_reg[0]__4_n_0\,
      R => '0'
    );
\r1_reg[10]__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__2_n_95\,
      Q => \r1_reg[10]__2_n_0\,
      R => '0'
    );
\r1_reg[10]__3\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__4_n_95\,
      Q => \r1_reg[10]__3_n_0\,
      R => '0'
    );
\r1_reg[10]__4\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__6_n_95\,
      Q => \r1_reg[10]__4_n_0\,
      R => '0'
    );
\r1_reg[11]__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__2_n_94\,
      Q => \r1_reg[11]__2_n_0\,
      R => '0'
    );
\r1_reg[11]__3\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__4_n_94\,
      Q => \r1_reg[11]__3_n_0\,
      R => '0'
    );
\r1_reg[11]__4\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__6_n_94\,
      Q => \r1_reg[11]__4_n_0\,
      R => '0'
    );
\r1_reg[12]__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__2_n_93\,
      Q => \r1_reg[12]__2_n_0\,
      R => '0'
    );
\r1_reg[12]__3\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__4_n_93\,
      Q => \r1_reg[12]__3_n_0\,
      R => '0'
    );
\r1_reg[12]__4\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__6_n_93\,
      Q => \r1_reg[12]__4_n_0\,
      R => '0'
    );
\r1_reg[13]__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__2_n_92\,
      Q => \r1_reg[13]__2_n_0\,
      R => '0'
    );
\r1_reg[13]__3\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__4_n_92\,
      Q => \r1_reg[13]__3_n_0\,
      R => '0'
    );
\r1_reg[13]__4\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__6_n_92\,
      Q => \r1_reg[13]__4_n_0\,
      R => '0'
    );
\r1_reg[14]__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__2_n_91\,
      Q => \r1_reg[14]__2_n_0\,
      R => '0'
    );
\r1_reg[14]__3\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__4_n_91\,
      Q => \r1_reg[14]__3_n_0\,
      R => '0'
    );
\r1_reg[14]__4\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__6_n_91\,
      Q => \r1_reg[14]__4_n_0\,
      R => '0'
    );
\r1_reg[15]__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__2_n_90\,
      Q => \r1_reg[15]__2_n_0\,
      R => '0'
    );
\r1_reg[15]__3\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__4_n_90\,
      Q => \r1_reg[15]__3_n_0\,
      R => '0'
    );
\r1_reg[15]__4\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__6_n_90\,
      Q => \r1_reg[15]__4_n_0\,
      R => '0'
    );
\r1_reg[16]__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__2_n_89\,
      Q => \r1_reg[16]__2_n_0\,
      R => '0'
    );
\r1_reg[16]__3\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__4_n_89\,
      Q => \r1_reg[16]__3_n_0\,
      R => '0'
    );
\r1_reg[16]__4\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__6_n_89\,
      Q => \r1_reg[16]__4_n_0\,
      R => '0'
    );
\r1_reg[1]__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__2_n_104\,
      Q => \r1_reg[1]__2_n_0\,
      R => '0'
    );
\r1_reg[1]__3\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__4_n_104\,
      Q => \r1_reg[1]__3_n_0\,
      R => '0'
    );
\r1_reg[1]__4\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__6_n_104\,
      Q => \r1_reg[1]__4_n_0\,
      R => '0'
    );
\r1_reg[2]__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__2_n_103\,
      Q => \r1_reg[2]__2_n_0\,
      R => '0'
    );
\r1_reg[2]__3\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__4_n_103\,
      Q => \r1_reg[2]__3_n_0\,
      R => '0'
    );
\r1_reg[2]__4\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__6_n_103\,
      Q => \r1_reg[2]__4_n_0\,
      R => '0'
    );
\r1_reg[3]__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__2_n_102\,
      Q => \r1_reg[3]__2_n_0\,
      R => '0'
    );
\r1_reg[3]__3\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__4_n_102\,
      Q => \r1_reg[3]__3_n_0\,
      R => '0'
    );
\r1_reg[3]__4\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__6_n_102\,
      Q => \r1_reg[3]__4_n_0\,
      R => '0'
    );
\r1_reg[4]__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__2_n_101\,
      Q => \r1_reg[4]__2_n_0\,
      R => '0'
    );
\r1_reg[4]__3\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__4_n_101\,
      Q => \r1_reg[4]__3_n_0\,
      R => '0'
    );
\r1_reg[4]__4\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__6_n_101\,
      Q => \r1_reg[4]__4_n_0\,
      R => '0'
    );
\r1_reg[5]__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__2_n_100\,
      Q => \r1_reg[5]__2_n_0\,
      R => '0'
    );
\r1_reg[5]__3\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__4_n_100\,
      Q => \r1_reg[5]__3_n_0\,
      R => '0'
    );
\r1_reg[5]__4\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__6_n_100\,
      Q => \r1_reg[5]__4_n_0\,
      R => '0'
    );
\r1_reg[6]__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__2_n_99\,
      Q => \r1_reg[6]__2_n_0\,
      R => '0'
    );
\r1_reg[6]__3\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__4_n_99\,
      Q => \r1_reg[6]__3_n_0\,
      R => '0'
    );
\r1_reg[6]__4\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__6_n_99\,
      Q => \r1_reg[6]__4_n_0\,
      R => '0'
    );
\r1_reg[7]__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__2_n_98\,
      Q => \r1_reg[7]__2_n_0\,
      R => '0'
    );
\r1_reg[7]__3\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__4_n_98\,
      Q => \r1_reg[7]__3_n_0\,
      R => '0'
    );
\r1_reg[7]__4\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__6_n_98\,
      Q => \r1_reg[7]__4_n_0\,
      R => '0'
    );
\r1_reg[8]__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__2_n_97\,
      Q => \r1_reg[8]__2_n_0\,
      R => '0'
    );
\r1_reg[8]__3\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__4_n_97\,
      Q => \r1_reg[8]__3_n_0\,
      R => '0'
    );
\r1_reg[8]__4\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__6_n_97\,
      Q => \r1_reg[8]__4_n_0\,
      R => '0'
    );
\r1_reg[9]__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__2_n_96\,
      Q => \r1_reg[9]__2_n_0\,
      R => '0'
    );
\r1_reg[9]__3\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__4_n_96\,
      Q => \r1_reg[9]__3_n_0\,
      R => '0'
    );
\r1_reg[9]__4\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \int_mul_result__6_n_96\,
      Q => \r1_reg[9]__4_n_0\,
      R => '0'
    );
\r1_reg__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => doutb(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_r1_reg__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => doutb(50 downto 34),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_r1_reg__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_r1_reg__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_r1_reg__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => Q(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => Q(1),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_r1_reg__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_r1_reg__0_OVERFLOW_UNCONNECTED\,
      P(47) => \r1_reg__0_n_58\,
      P(46) => \r1_reg__0_n_59\,
      P(45) => \r1_reg__0_n_60\,
      P(44) => \r1_reg__0_n_61\,
      P(43) => \r1_reg__0_n_62\,
      P(42) => \r1_reg__0_n_63\,
      P(41) => \r1_reg__0_n_64\,
      P(40) => \r1_reg__0_n_65\,
      P(39) => \r1_reg__0_n_66\,
      P(38) => \r1_reg__0_n_67\,
      P(37) => \r1_reg__0_n_68\,
      P(36) => \r1_reg__0_n_69\,
      P(35) => \r1_reg__0_n_70\,
      P(34) => \r1_reg__0_n_71\,
      P(33) => \r1_reg__0_n_72\,
      P(32) => \r1_reg__0_n_73\,
      P(31) => \r1_reg__0_n_74\,
      P(30) => \r1_reg__0_n_75\,
      P(29) => \r1_reg__0_n_76\,
      P(28) => \r1_reg__0_n_77\,
      P(27) => \r1_reg__0_n_78\,
      P(26) => \r1_reg__0_n_79\,
      P(25) => \r1_reg__0_n_80\,
      P(24) => \r1_reg__0_n_81\,
      P(23) => \r1_reg__0_n_82\,
      P(22) => \r1_reg__0_n_83\,
      P(21) => \r1_reg__0_n_84\,
      P(20) => \r1_reg__0_n_85\,
      P(19) => \r1_reg__0_n_86\,
      P(18) => \r1_reg__0_n_87\,
      P(17) => \r1_reg__0_n_88\,
      P(16) => \r1_reg__0_n_89\,
      P(15) => \r1_reg__0_n_90\,
      P(14) => \r1_reg__0_n_91\,
      P(13) => \r1_reg__0_n_92\,
      P(12) => \r1_reg__0_n_93\,
      P(11) => \r1_reg__0_n_94\,
      P(10) => \r1_reg__0_n_95\,
      P(9) => \r1_reg__0_n_96\,
      P(8) => \r1_reg__0_n_97\,
      P(7) => \r1_reg__0_n_98\,
      P(6) => \r1_reg__0_n_99\,
      P(5) => \r1_reg__0_n_100\,
      P(4) => \r1_reg__0_n_101\,
      P(3) => \r1_reg__0_n_102\,
      P(2) => \r1_reg__0_n_103\,
      P(1) => \r1_reg__0_n_104\,
      P(0) => \r1_reg__0_n_105\,
      PATTERNBDETECT => \NLW_r1_reg__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_r1_reg__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \int_mul_result__6_n_106\,
      PCIN(46) => \int_mul_result__6_n_107\,
      PCIN(45) => \int_mul_result__6_n_108\,
      PCIN(44) => \int_mul_result__6_n_109\,
      PCIN(43) => \int_mul_result__6_n_110\,
      PCIN(42) => \int_mul_result__6_n_111\,
      PCIN(41) => \int_mul_result__6_n_112\,
      PCIN(40) => \int_mul_result__6_n_113\,
      PCIN(39) => \int_mul_result__6_n_114\,
      PCIN(38) => \int_mul_result__6_n_115\,
      PCIN(37) => \int_mul_result__6_n_116\,
      PCIN(36) => \int_mul_result__6_n_117\,
      PCIN(35) => \int_mul_result__6_n_118\,
      PCIN(34) => \int_mul_result__6_n_119\,
      PCIN(33) => \int_mul_result__6_n_120\,
      PCIN(32) => \int_mul_result__6_n_121\,
      PCIN(31) => \int_mul_result__6_n_122\,
      PCIN(30) => \int_mul_result__6_n_123\,
      PCIN(29) => \int_mul_result__6_n_124\,
      PCIN(28) => \int_mul_result__6_n_125\,
      PCIN(27) => \int_mul_result__6_n_126\,
      PCIN(26) => \int_mul_result__6_n_127\,
      PCIN(25) => \int_mul_result__6_n_128\,
      PCIN(24) => \int_mul_result__6_n_129\,
      PCIN(23) => \int_mul_result__6_n_130\,
      PCIN(22) => \int_mul_result__6_n_131\,
      PCIN(21) => \int_mul_result__6_n_132\,
      PCIN(20) => \int_mul_result__6_n_133\,
      PCIN(19) => \int_mul_result__6_n_134\,
      PCIN(18) => \int_mul_result__6_n_135\,
      PCIN(17) => \int_mul_result__6_n_136\,
      PCIN(16) => \int_mul_result__6_n_137\,
      PCIN(15) => \int_mul_result__6_n_138\,
      PCIN(14) => \int_mul_result__6_n_139\,
      PCIN(13) => \int_mul_result__6_n_140\,
      PCIN(12) => \int_mul_result__6_n_141\,
      PCIN(11) => \int_mul_result__6_n_142\,
      PCIN(10) => \int_mul_result__6_n_143\,
      PCIN(9) => \int_mul_result__6_n_144\,
      PCIN(8) => \int_mul_result__6_n_145\,
      PCIN(7) => \int_mul_result__6_n_146\,
      PCIN(6) => \int_mul_result__6_n_147\,
      PCIN(5) => \int_mul_result__6_n_148\,
      PCIN(4) => \int_mul_result__6_n_149\,
      PCIN(3) => \int_mul_result__6_n_150\,
      PCIN(2) => \int_mul_result__6_n_151\,
      PCIN(1) => \int_mul_result__6_n_152\,
      PCIN(0) => \int_mul_result__6_n_153\,
      PCOUT(47 downto 0) => \NLW_r1_reg__0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_r1_reg__0_UNDERFLOW_UNCONNECTED\
    );
\r2[36]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r1_reg__0_n_103\,
      I1 => \r1_reg[2]__2_n_0\,
      O => \r2[36]_i_2_n_0\
    );
\r2[36]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r1_reg__0_n_104\,
      I1 => \r1_reg[1]__2_n_0\,
      O => \r2[36]_i_3_n_0\
    );
\r2[36]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r1_reg__0_n_105\,
      I1 => \r1_reg[0]__2_n_0\,
      O => \r2[36]_i_4_n_0\
    );
\r2[40]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r1_reg__0_n_99\,
      I1 => \r1_reg[6]__2_n_0\,
      O => \r2[40]_i_2_n_0\
    );
\r2[40]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r1_reg__0_n_100\,
      I1 => \r1_reg[5]__2_n_0\,
      O => \r2[40]_i_3_n_0\
    );
\r2[40]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r1_reg__0_n_101\,
      I1 => \r1_reg[4]__2_n_0\,
      O => \r2[40]_i_4_n_0\
    );
\r2[40]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r1_reg__0_n_102\,
      I1 => \r1_reg[3]__2_n_0\,
      O => \r2[40]_i_5_n_0\
    );
\r2[44]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r1_reg__0_n_95\,
      I1 => \r1_reg[10]__2_n_0\,
      O => \r2[44]_i_2_n_0\
    );
\r2[44]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r1_reg__0_n_96\,
      I1 => \r1_reg[9]__2_n_0\,
      O => \r2[44]_i_3_n_0\
    );
\r2[44]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r1_reg__0_n_97\,
      I1 => \r1_reg[8]__2_n_0\,
      O => \r2[44]_i_4_n_0\
    );
\r2[44]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r1_reg__0_n_98\,
      I1 => \r1_reg[7]__2_n_0\,
      O => \r2[44]_i_5_n_0\
    );
\r2[48]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r1_reg__0_n_91\,
      I1 => \r1_reg[14]__2_n_0\,
      O => \r2[48]_i_2_n_0\
    );
\r2[48]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r1_reg__0_n_92\,
      I1 => \r1_reg[13]__2_n_0\,
      O => \r2[48]_i_3_n_0\
    );
\r2[48]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r1_reg__0_n_93\,
      I1 => \r1_reg[12]__2_n_0\,
      O => \r2[48]_i_4_n_0\
    );
\r2[48]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r1_reg__0_n_94\,
      I1 => \r1_reg[11]__2_n_0\,
      O => \r2[48]_i_5_n_0\
    );
\r2[52]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \r1_reg__0_n_87\,
      I1 => \int_mul_result__0_n_104\,
      I2 => r1_reg_n_104,
      O => \r2[52]_i_2_n_0\
    );
\r2[52]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \int_mul_result__0_n_104\,
      I1 => r1_reg_n_104,
      I2 => \r1_reg__0_n_87\,
      I3 => r1_reg_n_105,
      I4 => \int_mul_result__0_n_105\,
      O => \r2[52]_i_3_n_0\
    );
\r2[52]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \int_mul_result__0_n_105\,
      I1 => r1_reg_n_105,
      I2 => \r1_reg__0_n_88\,
      O => \r2[52]_i_4_n_0\
    );
\r2[52]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r1_reg__0_n_89\,
      I1 => \r1_reg[16]__2_n_0\,
      O => \r2[52]_i_5_n_0\
    );
\r2[52]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r1_reg__0_n_90\,
      I1 => \r1_reg[15]__2_n_0\,
      O => \r2[52]_i_6_n_0\
    );
\r2[56]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \int_mul_result__0_n_101\,
      I1 => r1_reg_n_101,
      I2 => \r1_reg__0_n_84\,
      O => \r2[56]_i_2_n_0\
    );
\r2[56]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \int_mul_result__0_n_102\,
      I1 => r1_reg_n_102,
      I2 => \r1_reg__0_n_85\,
      O => \r2[56]_i_3_n_0\
    );
\r2[56]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \int_mul_result__0_n_103\,
      I1 => r1_reg_n_103,
      I2 => \r1_reg__0_n_86\,
      O => \r2[56]_i_4_n_0\
    );
\r2[56]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \int_mul_result__0_n_104\,
      I1 => r1_reg_n_104,
      I2 => \r1_reg__0_n_87\,
      O => \r2[56]_i_5_n_0\
    );
\r2[56]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \int_mul_result__0_n_100\,
      I1 => r1_reg_n_100,
      I2 => \r1_reg__0_n_83\,
      I3 => \r2[56]_i_2_n_0\,
      O => \r2[56]_i_6_n_0\
    );
\r2[56]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \int_mul_result__0_n_101\,
      I1 => r1_reg_n_101,
      I2 => \r1_reg__0_n_84\,
      I3 => \r2[56]_i_3_n_0\,
      O => \r2[56]_i_7_n_0\
    );
\r2[56]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \int_mul_result__0_n_102\,
      I1 => r1_reg_n_102,
      I2 => \r1_reg__0_n_85\,
      I3 => \r2[56]_i_4_n_0\,
      O => \r2[56]_i_8_n_0\
    );
\r2[56]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \int_mul_result__0_n_103\,
      I1 => r1_reg_n_103,
      I2 => \r1_reg__0_n_86\,
      I3 => \r2[56]_i_5_n_0\,
      O => \r2[56]_i_9_n_0\
    );
\r2[60]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \int_mul_result__0_n_97\,
      I1 => r1_reg_n_97,
      I2 => \r1_reg__0_n_80\,
      O => \r2[60]_i_2_n_0\
    );
\r2[60]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \int_mul_result__0_n_98\,
      I1 => r1_reg_n_98,
      I2 => \r1_reg__0_n_81\,
      O => \r2[60]_i_3_n_0\
    );
\r2[60]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \int_mul_result__0_n_99\,
      I1 => r1_reg_n_99,
      I2 => \r1_reg__0_n_82\,
      O => \r2[60]_i_4_n_0\
    );
\r2[60]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \int_mul_result__0_n_100\,
      I1 => r1_reg_n_100,
      I2 => \r1_reg__0_n_83\,
      O => \r2[60]_i_5_n_0\
    );
\r2[60]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \int_mul_result__0_n_96\,
      I1 => r1_reg_n_96,
      I2 => \r1_reg__0_n_79\,
      I3 => \r2[60]_i_2_n_0\,
      O => \r2[60]_i_6_n_0\
    );
\r2[60]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \int_mul_result__0_n_97\,
      I1 => r1_reg_n_97,
      I2 => \r1_reg__0_n_80\,
      I3 => \r2[60]_i_3_n_0\,
      O => \r2[60]_i_7_n_0\
    );
\r2[60]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \int_mul_result__0_n_98\,
      I1 => r1_reg_n_98,
      I2 => \r1_reg__0_n_81\,
      I3 => \r2[60]_i_4_n_0\,
      O => \r2[60]_i_8_n_0\
    );
\r2[60]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \int_mul_result__0_n_99\,
      I1 => r1_reg_n_99,
      I2 => \r1_reg__0_n_82\,
      I3 => \r2[60]_i_5_n_0\,
      O => \r2[60]_i_9_n_0\
    );
\r2[63]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \int_mul_result__0_n_95\,
      I1 => r1_reg_n_95,
      I2 => \r1_reg__0_n_78\,
      O => \r2[63]_i_2_n_0\
    );
\r2[63]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \int_mul_result__0_n_96\,
      I1 => r1_reg_n_96,
      I2 => \r1_reg__0_n_79\,
      O => \r2[63]_i_3_n_0\
    );
\r2[63]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \r1_reg__0_n_77\,
      I1 => r1_reg_n_94,
      I2 => \int_mul_result__0_n_94\,
      I3 => r1_reg_n_93,
      I4 => \int_mul_result__0_n_93\,
      I5 => \r1_reg__0_n_76\,
      O => \r2[63]_i_4_n_0\
    );
\r2[63]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \r2[63]_i_2_n_0\,
      I1 => r1_reg_n_94,
      I2 => \int_mul_result__0_n_94\,
      I3 => \r1_reg__0_n_77\,
      O => \r2[63]_i_5_n_0\
    );
\r2[63]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \int_mul_result__0_n_95\,
      I1 => r1_reg_n_95,
      I2 => \r1_reg__0_n_78\,
      I3 => \r2[63]_i_3_n_0\,
      O => \r2[63]_i_6_n_0\
    );
\r2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[0]__3_n_0\,
      Q => r2(0),
      R => '0'
    );
\r2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[10]__3_n_0\,
      Q => r2(10),
      R => '0'
    );
\r2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[11]__3_n_0\,
      Q => r2(11),
      R => '0'
    );
\r2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[12]__3_n_0\,
      Q => r2(12),
      R => '0'
    );
\r2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[13]__3_n_0\,
      Q => r2(13),
      R => '0'
    );
\r2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[14]__3_n_0\,
      Q => r2(14),
      R => '0'
    );
\r2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[15]__3_n_0\,
      Q => r2(15),
      R => '0'
    );
\r2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[16]__3_n_0\,
      Q => r2(16),
      R => '0'
    );
\r2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[0]__4_n_0\,
      Q => r2(17),
      R => '0'
    );
\r2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[1]__4_n_0\,
      Q => r2(18),
      R => '0'
    );
\r2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[2]__4_n_0\,
      Q => r2(19),
      R => '0'
    );
\r2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[1]__3_n_0\,
      Q => r2(1),
      R => '0'
    );
\r2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[3]__4_n_0\,
      Q => r2(20),
      R => '0'
    );
\r2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[4]__4_n_0\,
      Q => r2(21),
      R => '0'
    );
\r2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[5]__4_n_0\,
      Q => r2(22),
      R => '0'
    );
\r2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[6]__4_n_0\,
      Q => r2(23),
      R => '0'
    );
\r2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[7]__4_n_0\,
      Q => r2(24),
      R => '0'
    );
\r2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[8]__4_n_0\,
      Q => r2(25),
      R => '0'
    );
\r2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[9]__4_n_0\,
      Q => r2(26),
      R => '0'
    );
\r2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[10]__4_n_0\,
      Q => r2(27),
      R => '0'
    );
\r2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[11]__4_n_0\,
      Q => r2(28),
      R => '0'
    );
\r2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[12]__4_n_0\,
      Q => r2(29),
      R => '0'
    );
\r2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[2]__3_n_0\,
      Q => r2(2),
      R => '0'
    );
\r2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[13]__4_n_0\,
      Q => r2(30),
      R => '0'
    );
\r2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[14]__4_n_0\,
      Q => r2(31),
      R => '0'
    );
\r2_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[15]__4_n_0\,
      Q => r2(32),
      R => '0'
    );
\r2_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(33),
      Q => r2(33),
      R => '0'
    );
\r2_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(34),
      Q => r2(34),
      R => '0'
    );
\r2_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(35),
      Q => r2(35),
      R => '0'
    );
\r2_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(36),
      Q => r2(36),
      R => '0'
    );
\r2_reg[36]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r2_reg[36]_i_1_n_0\,
      CO(2) => \r2_reg[36]_i_1_n_1\,
      CO(1) => \r2_reg[36]_i_1_n_2\,
      CO(0) => \r2_reg[36]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \r1_reg__0_n_103\,
      DI(2) => \r1_reg__0_n_104\,
      DI(1) => \r1_reg__0_n_105\,
      DI(0) => '0',
      O(3 downto 0) => \r1_reg__3\(36 downto 33),
      S(3) => \r2[36]_i_2_n_0\,
      S(2) => \r2[36]_i_3_n_0\,
      S(1) => \r2[36]_i_4_n_0\,
      S(0) => \r1_reg[16]__4_n_0\
    );
\r2_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(37),
      Q => r2(37),
      R => '0'
    );
\r2_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(38),
      Q => r2(38),
      R => '0'
    );
\r2_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(39),
      Q => r2(39),
      R => '0'
    );
\r2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[3]__3_n_0\,
      Q => r2(3),
      R => '0'
    );
\r2_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(40),
      Q => r2(40),
      R => '0'
    );
\r2_reg[40]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r2_reg[36]_i_1_n_0\,
      CO(3) => \r2_reg[40]_i_1_n_0\,
      CO(2) => \r2_reg[40]_i_1_n_1\,
      CO(1) => \r2_reg[40]_i_1_n_2\,
      CO(0) => \r2_reg[40]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \r1_reg__0_n_99\,
      DI(2) => \r1_reg__0_n_100\,
      DI(1) => \r1_reg__0_n_101\,
      DI(0) => \r1_reg__0_n_102\,
      O(3 downto 0) => \r1_reg__3\(40 downto 37),
      S(3) => \r2[40]_i_2_n_0\,
      S(2) => \r2[40]_i_3_n_0\,
      S(1) => \r2[40]_i_4_n_0\,
      S(0) => \r2[40]_i_5_n_0\
    );
\r2_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(41),
      Q => r2(41),
      R => '0'
    );
\r2_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(42),
      Q => r2(42),
      R => '0'
    );
\r2_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(43),
      Q => r2(43),
      R => '0'
    );
\r2_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(44),
      Q => r2(44),
      R => '0'
    );
\r2_reg[44]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r2_reg[40]_i_1_n_0\,
      CO(3) => \r2_reg[44]_i_1_n_0\,
      CO(2) => \r2_reg[44]_i_1_n_1\,
      CO(1) => \r2_reg[44]_i_1_n_2\,
      CO(0) => \r2_reg[44]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \r1_reg__0_n_95\,
      DI(2) => \r1_reg__0_n_96\,
      DI(1) => \r1_reg__0_n_97\,
      DI(0) => \r1_reg__0_n_98\,
      O(3 downto 0) => \r1_reg__3\(44 downto 41),
      S(3) => \r2[44]_i_2_n_0\,
      S(2) => \r2[44]_i_3_n_0\,
      S(1) => \r2[44]_i_4_n_0\,
      S(0) => \r2[44]_i_5_n_0\
    );
\r2_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(45),
      Q => r2(45),
      R => '0'
    );
\r2_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(46),
      Q => r2(46),
      R => '0'
    );
\r2_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(47),
      Q => r2(47),
      R => '0'
    );
\r2_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(48),
      Q => r2(48),
      R => '0'
    );
\r2_reg[48]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r2_reg[44]_i_1_n_0\,
      CO(3) => \r2_reg[48]_i_1_n_0\,
      CO(2) => \r2_reg[48]_i_1_n_1\,
      CO(1) => \r2_reg[48]_i_1_n_2\,
      CO(0) => \r2_reg[48]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \r1_reg__0_n_91\,
      DI(2) => \r1_reg__0_n_92\,
      DI(1) => \r1_reg__0_n_93\,
      DI(0) => \r1_reg__0_n_94\,
      O(3 downto 0) => \r1_reg__3\(48 downto 45),
      S(3) => \r2[48]_i_2_n_0\,
      S(2) => \r2[48]_i_3_n_0\,
      S(1) => \r2[48]_i_4_n_0\,
      S(0) => \r2[48]_i_5_n_0\
    );
\r2_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(49),
      Q => r2(49),
      R => '0'
    );
\r2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[4]__3_n_0\,
      Q => r2(4),
      R => '0'
    );
\r2_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(50),
      Q => r2(50),
      R => '0'
    );
\r2_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(51),
      Q => r2(51),
      R => '0'
    );
\r2_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(52),
      Q => r2(52),
      R => '0'
    );
\r2_reg[52]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r2_reg[48]_i_1_n_0\,
      CO(3) => \r2_reg[52]_i_1_n_0\,
      CO(2) => \r2_reg[52]_i_1_n_1\,
      CO(1) => \r2_reg[52]_i_1_n_2\,
      CO(0) => \r2_reg[52]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \r2[52]_i_2_n_0\,
      DI(2) => \r1_reg__0_n_88\,
      DI(1) => \r1_reg__0_n_89\,
      DI(0) => \r1_reg__0_n_90\,
      O(3 downto 0) => \r1_reg__3\(52 downto 49),
      S(3) => \r2[52]_i_3_n_0\,
      S(2) => \r2[52]_i_4_n_0\,
      S(1) => \r2[52]_i_5_n_0\,
      S(0) => \r2[52]_i_6_n_0\
    );
\r2_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(53),
      Q => r2(53),
      R => '0'
    );
\r2_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(54),
      Q => r2(54),
      R => '0'
    );
\r2_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(55),
      Q => r2(55),
      R => '0'
    );
\r2_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(56),
      Q => r2(56),
      R => '0'
    );
\r2_reg[56]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r2_reg[52]_i_1_n_0\,
      CO(3) => \r2_reg[56]_i_1_n_0\,
      CO(2) => \r2_reg[56]_i_1_n_1\,
      CO(1) => \r2_reg[56]_i_1_n_2\,
      CO(0) => \r2_reg[56]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \r2[56]_i_2_n_0\,
      DI(2) => \r2[56]_i_3_n_0\,
      DI(1) => \r2[56]_i_4_n_0\,
      DI(0) => \r2[56]_i_5_n_0\,
      O(3 downto 0) => \r1_reg__3\(56 downto 53),
      S(3) => \r2[56]_i_6_n_0\,
      S(2) => \r2[56]_i_7_n_0\,
      S(1) => \r2[56]_i_8_n_0\,
      S(0) => \r2[56]_i_9_n_0\
    );
\r2_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(57),
      Q => r2(57),
      R => '0'
    );
\r2_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(58),
      Q => r2(58),
      R => '0'
    );
\r2_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(59),
      Q => r2(59),
      R => '0'
    );
\r2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[5]__3_n_0\,
      Q => r2(5),
      R => '0'
    );
\r2_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(60),
      Q => r2(60),
      R => '0'
    );
\r2_reg[60]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r2_reg[56]_i_1_n_0\,
      CO(3) => \r2_reg[60]_i_1_n_0\,
      CO(2) => \r2_reg[60]_i_1_n_1\,
      CO(1) => \r2_reg[60]_i_1_n_2\,
      CO(0) => \r2_reg[60]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \r2[60]_i_2_n_0\,
      DI(2) => \r2[60]_i_3_n_0\,
      DI(1) => \r2[60]_i_4_n_0\,
      DI(0) => \r2[60]_i_5_n_0\,
      O(3 downto 0) => \r1_reg__3\(60 downto 57),
      S(3) => \r2[60]_i_6_n_0\,
      S(2) => \r2[60]_i_7_n_0\,
      S(1) => \r2[60]_i_8_n_0\,
      S(0) => \r2[60]_i_9_n_0\
    );
\r2_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(61),
      Q => r2(61),
      R => '0'
    );
\r2_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(62),
      Q => r2(62),
      R => '0'
    );
\r2_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg__3\(63),
      Q => r2(63),
      R => '0'
    );
\r2_reg[63]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r2_reg[60]_i_1_n_0\,
      CO(3 downto 2) => \NLW_r2_reg[63]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r2_reg[63]_i_1_n_2\,
      CO(0) => \r2_reg[63]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \r2[63]_i_2_n_0\,
      DI(0) => \r2[63]_i_3_n_0\,
      O(3) => \NLW_r2_reg[63]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => \r1_reg__3\(63 downto 61),
      S(3) => '0',
      S(2) => \r2[63]_i_4_n_0\,
      S(1) => \r2[63]_i_5_n_0\,
      S(0) => \r2[63]_i_6_n_0\
    );
\r2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[6]__3_n_0\,
      Q => r2(6),
      R => '0'
    );
\r2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[7]__3_n_0\,
      Q => r2(7),
      R => '0'
    );
\r2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[8]__3_n_0\,
      Q => r2(8),
      R => '0'
    );
\r2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r1_reg[9]__3_n_0\,
      Q => r2(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_wrapper is
  port (
    doutb : out STD_LOGIC_VECTOR ( 35 downto 0 );
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 35 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_wrapper : entity is "blk_mem_gen_prim_wrapper";
end cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_wrapper;

architecture STRUCTURE of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_wrapper is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 5) => addrb(9 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 24) => dina(34 downto 27),
      DIADI(23 downto 16) => dina(25 downto 18),
      DIADI(15 downto 8) => dina(16 downto 9),
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3) => dina(35),
      DIPADIP(2) => dina(26),
      DIPADIP(1) => dina(17),
      DIPADIP(0) => dina(8),
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 24) => doutb(34 downto 27),
      DOBDO(23 downto 16) => doutb(25 downto 18),
      DOBDO(15 downto 8) => doutb(16 downto 9),
      DOBDO(7 downto 0) => doutb(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3) => doutb(35),
      DOPBDOP(2) => doutb(26),
      DOPBDOP(1) => doutb(17),
      DOPBDOP(0) => doutb(8),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => wea(0),
      ENBWREN => '1',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"1111",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_wrapper__parameterized0\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 27 downto 0 );
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 27 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_wrapper__parameterized0\ : entity is "blk_mem_gen_prim_wrapper";
end \cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_wrapper__parameterized0\;

architecture STRUCTURE of \cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_wrapper__parameterized0\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_36\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_44\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_52\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_60\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_72\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_73\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_74\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 5) => addrb(9 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30 downto 24) => dina(27 downto 21),
      DIADI(23) => '0',
      DIADI(22 downto 16) => dina(20 downto 14),
      DIADI(15) => '0',
      DIADI(14 downto 8) => dina(13 downto 7),
      DIADI(7) => '0',
      DIADI(6 downto 0) => dina(6 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_36\,
      DOBDO(30 downto 24) => doutb(27 downto 21),
      DOBDO(23) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_44\,
      DOBDO(22 downto 16) => doutb(20 downto 14),
      DOBDO(15) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_52\,
      DOBDO(14 downto 8) => doutb(13 downto 7),
      DOBDO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_60\,
      DOBDO(6 downto 0) => doutb(6 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_72\,
      DOPBDOP(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_73\,
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_74\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => wea(0),
      ENBWREN => '1',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"1111",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cryptoprocessor_ComputeCoreWrapper_0_0_sdpram is
  port (
    qdpo : out STD_LOGIC_VECTOR ( 36 downto 0 );
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 36 downto 0 );
    we : in STD_LOGIC;
    dpra : in STD_LOGIC_VECTOR ( 5 downto 0 );
    a : in STD_LOGIC_VECTOR ( 5 downto 0 );
    qdpo_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cryptoprocessor_ComputeCoreWrapper_0_0_sdpram : entity is "sdpram";
end cryptoprocessor_ComputeCoreWrapper_0_0_sdpram;

architecture STRUCTURE of cryptoprocessor_ComputeCoreWrapper_0_0_sdpram is
  signal qsdpo_int : STD_LOGIC_VECTOR ( 36 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of qsdpo_int : signal is "true";
  signal sdpo_int : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal NLW_ram_reg_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_63_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_63_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_63_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_63_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_63_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_63_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_63_30_32_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_63_33_35_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_63_36_36_DOB_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_63_36_36_DOC_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_63_36_36_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \qsdpo_int_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \qsdpo_int_reg[0]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[10]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[10]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[11]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[11]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[12]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[12]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[13]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[13]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[14]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[14]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[15]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[15]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[16]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[16]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[17]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[17]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[18]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[18]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[19]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[19]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[1]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[20]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[20]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[21]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[21]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[22]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[22]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[23]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[23]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[24]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[24]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[25]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[25]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[26]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[26]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[27]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[27]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[28]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[28]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[29]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[29]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[2]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[30]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[30]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[31]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[31]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[32]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[32]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[33]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[33]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[34]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[34]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[35]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[35]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[36]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[36]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[3]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[4]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[4]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[5]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[5]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[6]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[6]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[7]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[7]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[8]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[8]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[9]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[9]\ : label is "no";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_63_0_2 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg_0_63_0_2 : label is 2368;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg_0_63_0_2 : label is "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg_0_63_0_2 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg_0_63_0_2 : label is 63;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg_0_63_0_2 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg_0_63_0_2 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg_0_63_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_63_12_14 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_63_12_14 : label is 2368;
  attribute RTL_RAM_NAME of ram_reg_0_63_12_14 : label is "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_63_12_14 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_12_14 : label is 63;
  attribute ram_offset of ram_reg_0_63_12_14 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_12_14 : label is 12;
  attribute ram_slice_end of ram_reg_0_63_12_14 : label is 14;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_63_15_17 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_63_15_17 : label is 2368;
  attribute RTL_RAM_NAME of ram_reg_0_63_15_17 : label is "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_63_15_17 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_15_17 : label is 63;
  attribute ram_offset of ram_reg_0_63_15_17 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_15_17 : label is 15;
  attribute ram_slice_end of ram_reg_0_63_15_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_63_18_20 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_63_18_20 : label is 2368;
  attribute RTL_RAM_NAME of ram_reg_0_63_18_20 : label is "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_63_18_20 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_18_20 : label is 63;
  attribute ram_offset of ram_reg_0_63_18_20 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_18_20 : label is 18;
  attribute ram_slice_end of ram_reg_0_63_18_20 : label is 20;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_63_21_23 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_63_21_23 : label is 2368;
  attribute RTL_RAM_NAME of ram_reg_0_63_21_23 : label is "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_63_21_23 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_21_23 : label is 63;
  attribute ram_offset of ram_reg_0_63_21_23 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_21_23 : label is 21;
  attribute ram_slice_end of ram_reg_0_63_21_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_63_24_26 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_63_24_26 : label is 2368;
  attribute RTL_RAM_NAME of ram_reg_0_63_24_26 : label is "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_63_24_26 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_24_26 : label is 63;
  attribute ram_offset of ram_reg_0_63_24_26 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_24_26 : label is 24;
  attribute ram_slice_end of ram_reg_0_63_24_26 : label is 26;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_63_27_29 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_63_27_29 : label is 2368;
  attribute RTL_RAM_NAME of ram_reg_0_63_27_29 : label is "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_63_27_29 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_27_29 : label is 63;
  attribute ram_offset of ram_reg_0_63_27_29 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_27_29 : label is 27;
  attribute ram_slice_end of ram_reg_0_63_27_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_63_30_32 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_63_30_32 : label is 2368;
  attribute RTL_RAM_NAME of ram_reg_0_63_30_32 : label is "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_63_30_32 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_30_32 : label is 63;
  attribute ram_offset of ram_reg_0_63_30_32 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_30_32 : label is 30;
  attribute ram_slice_end of ram_reg_0_63_30_32 : label is 32;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_63_33_35 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_63_33_35 : label is 2368;
  attribute RTL_RAM_NAME of ram_reg_0_63_33_35 : label is "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_63_33_35 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_33_35 : label is 63;
  attribute ram_offset of ram_reg_0_63_33_35 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_33_35 : label is 33;
  attribute ram_slice_end of ram_reg_0_63_33_35 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_63_36_36 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_63_36_36 : label is 2368;
  attribute RTL_RAM_NAME of ram_reg_0_63_36_36 : label is "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_63_36_36 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_36_36 : label is 63;
  attribute ram_offset of ram_reg_0_63_36_36 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_36_36 : label is 36;
  attribute ram_slice_end of ram_reg_0_63_36_36 : label is 36;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_63_3_5 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_63_3_5 : label is 2368;
  attribute RTL_RAM_NAME of ram_reg_0_63_3_5 : label is "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_63_3_5 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_3_5 : label is 63;
  attribute ram_offset of ram_reg_0_63_3_5 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_3_5 : label is 3;
  attribute ram_slice_end of ram_reg_0_63_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_63_6_8 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_63_6_8 : label is 2368;
  attribute RTL_RAM_NAME of ram_reg_0_63_6_8 : label is "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_63_6_8 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_6_8 : label is 63;
  attribute ram_offset of ram_reg_0_63_6_8 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_6_8 : label is 6;
  attribute ram_slice_end of ram_reg_0_63_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_63_9_11 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_63_9_11 : label is 2368;
  attribute RTL_RAM_NAME of ram_reg_0_63_9_11 : label is "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_63_9_11 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_9_11 : label is 63;
  attribute ram_offset of ram_reg_0_63_9_11 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_9_11 : label is 9;
  attribute ram_slice_end of ram_reg_0_63_9_11 : label is 11;
begin
  qdpo(36 downto 0) <= qsdpo_int(36 downto 0);
\qsdpo_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(0),
      Q => qsdpo_int(0),
      R => '0'
    );
\qsdpo_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(10),
      Q => qsdpo_int(10),
      R => '0'
    );
\qsdpo_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(11),
      Q => qsdpo_int(11),
      R => '0'
    );
\qsdpo_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(12),
      Q => qsdpo_int(12),
      R => '0'
    );
\qsdpo_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(13),
      Q => qsdpo_int(13),
      R => '0'
    );
\qsdpo_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(14),
      Q => qsdpo_int(14),
      R => '0'
    );
\qsdpo_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(15),
      Q => qsdpo_int(15),
      R => '0'
    );
\qsdpo_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(16),
      Q => qsdpo_int(16),
      R => '0'
    );
\qsdpo_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(17),
      Q => qsdpo_int(17),
      R => '0'
    );
\qsdpo_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(18),
      Q => qsdpo_int(18),
      R => '0'
    );
\qsdpo_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(19),
      Q => qsdpo_int(19),
      R => '0'
    );
\qsdpo_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(1),
      Q => qsdpo_int(1),
      R => '0'
    );
\qsdpo_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(20),
      Q => qsdpo_int(20),
      R => '0'
    );
\qsdpo_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(21),
      Q => qsdpo_int(21),
      R => '0'
    );
\qsdpo_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(22),
      Q => qsdpo_int(22),
      R => '0'
    );
\qsdpo_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(23),
      Q => qsdpo_int(23),
      R => '0'
    );
\qsdpo_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(24),
      Q => qsdpo_int(24),
      R => '0'
    );
\qsdpo_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(25),
      Q => qsdpo_int(25),
      R => '0'
    );
\qsdpo_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(26),
      Q => qsdpo_int(26),
      R => '0'
    );
\qsdpo_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(27),
      Q => qsdpo_int(27),
      R => '0'
    );
\qsdpo_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(28),
      Q => qsdpo_int(28),
      R => '0'
    );
\qsdpo_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(29),
      Q => qsdpo_int(29),
      R => '0'
    );
\qsdpo_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(2),
      Q => qsdpo_int(2),
      R => '0'
    );
\qsdpo_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(30),
      Q => qsdpo_int(30),
      R => '0'
    );
\qsdpo_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(31),
      Q => qsdpo_int(31),
      R => '0'
    );
\qsdpo_int_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(32),
      Q => qsdpo_int(32),
      R => '0'
    );
\qsdpo_int_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(33),
      Q => qsdpo_int(33),
      R => '0'
    );
\qsdpo_int_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(34),
      Q => qsdpo_int(34),
      R => '0'
    );
\qsdpo_int_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(35),
      Q => qsdpo_int(35),
      R => '0'
    );
\qsdpo_int_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(36),
      Q => qsdpo_int(36),
      R => '0'
    );
\qsdpo_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(3),
      Q => qsdpo_int(3),
      R => '0'
    );
\qsdpo_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(4),
      Q => qsdpo_int(4),
      R => '0'
    );
\qsdpo_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(5),
      Q => qsdpo_int(5),
      R => '0'
    );
\qsdpo_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(6),
      Q => qsdpo_int(6),
      R => '0'
    );
\qsdpo_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(7),
      Q => qsdpo_int(7),
      R => '0'
    );
\qsdpo_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(8),
      Q => qsdpo_int(8),
      R => '0'
    );
\qsdpo_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(9),
      Q => qsdpo_int(9),
      R => '0'
    );
ram_reg_0_63_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => dpra(5 downto 0),
      ADDRB(5 downto 0) => dpra(5 downto 0),
      ADDRC(5 downto 0) => dpra(5 downto 0),
      ADDRD(5 downto 0) => a(5 downto 0),
      DIA => d(0),
      DIB => d(1),
      DIC => d(2),
      DID => '0',
      DOA => sdpo_int(0),
      DOB => sdpo_int(1),
      DOC => sdpo_int(2),
      DOD => NLW_ram_reg_0_63_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_12_14: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => dpra(5 downto 0),
      ADDRB(5 downto 0) => dpra(5 downto 0),
      ADDRC(5 downto 0) => dpra(5 downto 0),
      ADDRD(5 downto 0) => a(5 downto 0),
      DIA => d(12),
      DIB => d(13),
      DIC => d(14),
      DID => '0',
      DOA => sdpo_int(12),
      DOB => sdpo_int(13),
      DOC => sdpo_int(14),
      DOD => NLW_ram_reg_0_63_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_15_17: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => dpra(5 downto 0),
      ADDRB(5 downto 0) => dpra(5 downto 0),
      ADDRC(5 downto 0) => dpra(5 downto 0),
      ADDRD(5 downto 0) => a(5 downto 0),
      DIA => d(15),
      DIB => d(16),
      DIC => d(17),
      DID => '0',
      DOA => sdpo_int(15),
      DOB => sdpo_int(16),
      DOC => sdpo_int(17),
      DOD => NLW_ram_reg_0_63_15_17_DOD_UNCONNECTED,
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_18_20: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => dpra(5 downto 0),
      ADDRB(5 downto 0) => dpra(5 downto 0),
      ADDRC(5 downto 0) => dpra(5 downto 0),
      ADDRD(5 downto 0) => a(5 downto 0),
      DIA => d(18),
      DIB => d(19),
      DIC => d(20),
      DID => '0',
      DOA => sdpo_int(18),
      DOB => sdpo_int(19),
      DOC => sdpo_int(20),
      DOD => NLW_ram_reg_0_63_18_20_DOD_UNCONNECTED,
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_21_23: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => dpra(5 downto 0),
      ADDRB(5 downto 0) => dpra(5 downto 0),
      ADDRC(5 downto 0) => dpra(5 downto 0),
      ADDRD(5 downto 0) => a(5 downto 0),
      DIA => d(21),
      DIB => d(22),
      DIC => d(23),
      DID => '0',
      DOA => sdpo_int(21),
      DOB => sdpo_int(22),
      DOC => sdpo_int(23),
      DOD => NLW_ram_reg_0_63_21_23_DOD_UNCONNECTED,
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_24_26: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => dpra(5 downto 0),
      ADDRB(5 downto 0) => dpra(5 downto 0),
      ADDRC(5 downto 0) => dpra(5 downto 0),
      ADDRD(5 downto 0) => a(5 downto 0),
      DIA => d(24),
      DIB => d(25),
      DIC => d(26),
      DID => '0',
      DOA => sdpo_int(24),
      DOB => sdpo_int(25),
      DOC => sdpo_int(26),
      DOD => NLW_ram_reg_0_63_24_26_DOD_UNCONNECTED,
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_27_29: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => dpra(5 downto 0),
      ADDRB(5 downto 0) => dpra(5 downto 0),
      ADDRC(5 downto 0) => dpra(5 downto 0),
      ADDRD(5 downto 0) => a(5 downto 0),
      DIA => d(27),
      DIB => d(28),
      DIC => d(29),
      DID => '0',
      DOA => sdpo_int(27),
      DOB => sdpo_int(28),
      DOC => sdpo_int(29),
      DOD => NLW_ram_reg_0_63_27_29_DOD_UNCONNECTED,
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_30_32: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => dpra(5 downto 0),
      ADDRB(5 downto 0) => dpra(5 downto 0),
      ADDRC(5 downto 0) => dpra(5 downto 0),
      ADDRD(5 downto 0) => a(5 downto 0),
      DIA => d(30),
      DIB => d(31),
      DIC => d(32),
      DID => '0',
      DOA => sdpo_int(30),
      DOB => sdpo_int(31),
      DOC => sdpo_int(32),
      DOD => NLW_ram_reg_0_63_30_32_DOD_UNCONNECTED,
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_33_35: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => dpra(5 downto 0),
      ADDRB(5 downto 0) => dpra(5 downto 0),
      ADDRC(5 downto 0) => dpra(5 downto 0),
      ADDRD(5 downto 0) => a(5 downto 0),
      DIA => d(33),
      DIB => d(34),
      DIC => d(35),
      DID => '0',
      DOA => sdpo_int(33),
      DOB => sdpo_int(34),
      DOC => sdpo_int(35),
      DOD => NLW_ram_reg_0_63_33_35_DOD_UNCONNECTED,
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_36_36: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => dpra(5 downto 0),
      ADDRB(5 downto 0) => dpra(5 downto 0),
      ADDRC(5 downto 0) => dpra(5 downto 0),
      ADDRD(5 downto 0) => a(5 downto 0),
      DIA => d(36),
      DIB => '0',
      DIC => '0',
      DID => '0',
      DOA => sdpo_int(36),
      DOB => NLW_ram_reg_0_63_36_36_DOB_UNCONNECTED,
      DOC => NLW_ram_reg_0_63_36_36_DOC_UNCONNECTED,
      DOD => NLW_ram_reg_0_63_36_36_DOD_UNCONNECTED,
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => dpra(5 downto 0),
      ADDRB(5 downto 0) => dpra(5 downto 0),
      ADDRC(5 downto 0) => dpra(5 downto 0),
      ADDRD(5 downto 0) => a(5 downto 0),
      DIA => d(3),
      DIB => d(4),
      DIC => d(5),
      DID => '0',
      DOA => sdpo_int(3),
      DOB => sdpo_int(4),
      DOC => sdpo_int(5),
      DOD => NLW_ram_reg_0_63_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => dpra(5 downto 0),
      ADDRB(5 downto 0) => dpra(5 downto 0),
      ADDRC(5 downto 0) => dpra(5 downto 0),
      ADDRD(5 downto 0) => a(5 downto 0),
      DIA => d(6),
      DIB => d(7),
      DIC => d(8),
      DID => '0',
      DOA => sdpo_int(6),
      DOB => sdpo_int(7),
      DOC => sdpo_int(8),
      DOD => NLW_ram_reg_0_63_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => dpra(5 downto 0),
      ADDRB(5 downto 0) => dpra(5 downto 0),
      ADDRC(5 downto 0) => dpra(5 downto 0),
      ADDRD(5 downto 0) => a(5 downto 0),
      DIA => d(9),
      DIB => d(10),
      DIC => d(11),
      DID => '0',
      DOA => sdpo_int(9),
      DOB => sdpo_int(10),
      DOC => sdpo_int(11),
      DOD => NLW_ram_reg_0_63_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cryptoprocessor_ComputeCoreWrapper_0_0_polynomial_multiplication is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    dina : out STD_LOGIC_VECTOR ( 63 downto 0 );
    wea : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \command_reg0_reg[34]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    OP1_or_OP2 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \command_reg0_reg[28]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \command_reg0_reg[32]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \command_reg0_reg[8]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \command_reg0_reg[12]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    doutb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    d : in STD_LOGIC_VECTOR ( 36 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC;
    dina_ext_high_word : in STD_LOGIC_VECTOR ( 26 downto 0 );
    control_low_word : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC_VECTOR ( 34 downto 0 );
    \trng_rst__3\ : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cryptoprocessor_ComputeCoreWrapper_0_0_polynomial_multiplication : entity is "polynomial_multiplication";
end cryptoprocessor_ComputeCoreWrapper_0_0_polynomial_multiplication;

architecture STRUCTURE of cryptoprocessor_ComputeCoreWrapper_0_0_polynomial_multiplication is
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal Mult_n_64 : STD_LOGIC;
  signal Mult_n_65 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \addrb_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \addrb_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \addrb_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \addrb_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \addrb_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \addrb_carry__1_i_5_n_0\ : STD_LOGIC;
  signal addrb_carry_i_10_n_0 : STD_LOGIC;
  signal addrb_carry_i_11_n_0 : STD_LOGIC;
  signal addrb_carry_i_12_n_0 : STD_LOGIC;
  signal addrb_carry_i_13_n_0 : STD_LOGIC;
  signal en_reg_b : STD_LOGIC;
  signal mult_rst : STD_LOGIC;
  signal op2_sel : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal polymult_op2_sel : STD_LOGIC;
  signal polymult_wea : STD_LOGIC;
  signal rst_read_address_reg : STD_LOGIC;
  signal \write_address_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \write_address_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal write_address_reg_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_state[7]_i_2\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00010000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000010,iSTATE6:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00010000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000010,iSTATE6:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00010000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000010,iSTATE6:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00010000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000010,iSTATE6:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00010000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000010,iSTATE6:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00010000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000010,iSTATE6:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00010000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000010,iSTATE6:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00010000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000010,iSTATE6:10000000";
  attribute SOFT_HLUTNM of addrb_carry_i_12 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of addrb_carry_i_13 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \write_address_reg[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \write_address_reg[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \write_address_reg[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \write_address_reg[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \write_address_reg[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \write_address_reg[6]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \write_address_reg[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \write_address_reg[9]_i_2\ : label is "soft_lutpair1";
begin
  Q(0) <= \^q\(0);
BR_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF080808"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      I1 => control_low_word(10),
      I2 => control_low_word(11),
      I3 => polymult_wea,
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => wea(0)
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \FSM_onehot_state[7]_i_3_n_0\,
      I1 => polymult_wea,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDFF"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(1),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(4),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(0),
      O => mult_rst
    );
\FSM_onehot_state[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_state[7]_i_3_n_0\,
      I1 => polymult_wea,
      I2 => \^q\(0),
      O => \FSM_onehot_state[7]_i_2_n_0\
    );
\FSM_onehot_state[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \FSM_onehot_state[7]_i_4_n_0\,
      I1 => write_address_reg_reg(4),
      I2 => write_address_reg_reg(5),
      I3 => write_address_reg_reg(2),
      I4 => write_address_reg_reg(3),
      O => \FSM_onehot_state[7]_i_3_n_0\
    );
\FSM_onehot_state[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => write_address_reg_reg(6),
      I1 => write_address_reg_reg(7),
      I2 => write_address_reg_reg(8),
      I3 => write_address_reg_reg(9),
      I4 => write_address_reg_reg(0),
      I5 => write_address_reg_reg(1),
      O => \FSM_onehot_state[7]_i_4_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => mult_rst
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => mult_rst
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => polymult_op2_sel,
      R => mult_rst
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => polymult_op2_sel,
      Q => en_reg_b,
      R => mult_rst
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => en_reg_b,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => mult_rst
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => Mult_n_65,
      Q => \FSM_onehot_state_reg_n_0_[5]\,
      R => mult_rst
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => Mult_n_64,
      Q => polymult_wea,
      R => mult_rst
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[7]_i_2_n_0\,
      Q => \^q\(0),
      R => mult_rst
    );
Mult: entity work.cryptoprocessor_ComputeCoreWrapper_0_0_modular_multiplier
     port map (
      D(1) => Mult_n_64,
      D(0) => Mult_n_65,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      Q(3) => \FSM_onehot_state_reg_n_0_[5]\,
      Q(2) => \FSM_onehot_state_reg_n_0_[4]\,
      Q(1) => en_reg_b,
      Q(0) => polymult_op2_sel,
      clk => clk,
      \^d\(36 downto 0) => d(36 downto 0),
      dina(63 downto 0) => dina(63 downto 0),
      dina_ext_high_word(26 downto 0) => dina_ext_high_word(26 downto 0),
      doutb(63 downto 0) => doutb(63 downto 0)
    );
\addra_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"556A6A6AAAAAAAAA"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(32),
      I1 => control_low_word(7),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\,
      I3 => write_address_reg_reg(7),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      I5 => \trng_rst__3\,
      O => \command_reg0_reg[32]\(3)
    );
\addra_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"556A6A6AAAAAAAAA"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(31),
      I1 => control_low_word(6),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\,
      I3 => write_address_reg_reg(6),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      I5 => \trng_rst__3\,
      O => \command_reg0_reg[32]\(2)
    );
\addra_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"556A6A6AAAAAAAAA"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(30),
      I1 => control_low_word(5),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\,
      I3 => write_address_reg_reg(5),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      I5 => \trng_rst__3\,
      O => \command_reg0_reg[32]\(1)
    );
\addra_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"556A6A6AAAAAAAAA"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(29),
      I1 => control_low_word(4),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\,
      I3 => write_address_reg_reg(4),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      I5 => \trng_rst__3\,
      O => \command_reg0_reg[32]\(0)
    );
\addra_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"556A6A6AAAAAAAAA"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(34),
      I1 => control_low_word(9),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\,
      I3 => write_address_reg_reg(9),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      I5 => \trng_rst__3\,
      O => \command_reg0_reg[34]\(1)
    );
\addra_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"556A6A6AAAAAAAAA"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(33),
      I1 => control_low_word(8),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\,
      I3 => write_address_reg_reg(8),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      I5 => \trng_rst__3\,
      O => \command_reg0_reg[34]\(0)
    );
addra_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"556A6A6AAAAAAAAA"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(28),
      I1 => control_low_word(3),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\,
      I3 => write_address_reg_reg(3),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      I5 => \trng_rst__3\,
      O => \command_reg0_reg[28]\(3)
    );
addra_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"556A6A6AAAAAAAAA"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(27),
      I1 => control_low_word(2),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\,
      I3 => write_address_reg_reg(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      I5 => \trng_rst__3\,
      O => \command_reg0_reg[28]\(2)
    );
addra_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"556A6A6AAAAAAAAA"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(26),
      I1 => control_low_word(1),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\,
      I3 => write_address_reg_reg(1),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      I5 => \trng_rst__3\,
      O => \command_reg0_reg[28]\(1)
    );
addra_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"556A6A6AAAAAAAAA"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(25),
      I1 => control_low_word(0),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\,
      I3 => write_address_reg_reg(0),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      I5 => \trng_rst__3\,
      O => \command_reg0_reg[28]\(0)
    );
\addrb_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(22),
      I1 => op2_sel,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(12),
      O => OP1_or_OP2(7)
    );
\addrb_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => control_low_word(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\,
      I2 => write_address_reg_reg(6),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => \addrb_carry__0_i_10_n_0\
    );
\addrb_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => control_low_word(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\,
      I2 => write_address_reg_reg(5),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => \addrb_carry__0_i_11_n_0\
    );
\addrb_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => control_low_word(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\,
      I2 => write_address_reg_reg(4),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => \addrb_carry__0_i_12_n_0\
    );
\addrb_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(21),
      I1 => op2_sel,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(11),
      O => OP1_or_OP2(6)
    );
\addrb_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(20),
      I1 => op2_sel,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(10),
      O => OP1_or_OP2(5)
    );
\addrb_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(19),
      I1 => op2_sel,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(9),
      O => OP1_or_OP2(4)
    );
\addrb_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1DE2E2E2"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(12),
      I1 => op2_sel,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(22),
      I3 => \trng_rst__3\,
      I4 => \addrb_carry__0_i_9_n_0\,
      O => \command_reg0_reg[12]\(3)
    );
\addrb_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1DE2E2E2"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(11),
      I1 => op2_sel,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(21),
      I3 => \trng_rst__3\,
      I4 => \addrb_carry__0_i_10_n_0\,
      O => \command_reg0_reg[12]\(2)
    );
\addrb_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1DE2E2E2"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(10),
      I1 => op2_sel,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(20),
      I3 => \trng_rst__3\,
      I4 => \addrb_carry__0_i_11_n_0\,
      O => \command_reg0_reg[12]\(1)
    );
\addrb_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1DE2E2E2"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(9),
      I1 => op2_sel,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(19),
      I3 => \trng_rst__3\,
      I4 => \addrb_carry__0_i_12_n_0\,
      O => \command_reg0_reg[12]\(0)
    );
\addrb_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => control_low_word(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\,
      I2 => write_address_reg_reg(7),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => \addrb_carry__0_i_9_n_0\
    );
\addrb_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(23),
      I1 => op2_sel,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(13),
      O => OP1_or_OP2(8)
    );
\addrb_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1DE2E2E2"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(14),
      I1 => op2_sel,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(24),
      I3 => \trng_rst__3\,
      I4 => \addrb_carry__1_i_4_n_0\,
      O => S(1)
    );
\addrb_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1DE2E2E2"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(13),
      I1 => op2_sel,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(23),
      I3 => \trng_rst__3\,
      I4 => \addrb_carry__1_i_5_n_0\,
      O => S(0)
    );
\addrb_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => control_low_word(9),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\,
      I2 => write_address_reg_reg(9),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => \addrb_carry__1_i_4_n_0\
    );
\addrb_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => control_low_word(8),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\,
      I2 => write_address_reg_reg(8),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => \addrb_carry__1_i_5_n_0\
    );
addrb_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(18),
      I1 => op2_sel,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(8),
      O => OP1_or_OP2(3)
    );
addrb_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => control_low_word(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\,
      I2 => write_address_reg_reg(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => addrb_carry_i_10_n_0
    );
addrb_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => control_low_word(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\,
      I2 => write_address_reg_reg(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => addrb_carry_i_11_n_0
    );
addrb_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => control_low_word(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\,
      I2 => write_address_reg_reg(1),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => addrb_carry_i_12_n_0
    );
addrb_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => control_low_word(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\,
      I2 => write_address_reg_reg(0),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\,
      O => addrb_carry_i_13_n_0
    );
addrb_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(17),
      I1 => op2_sel,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(7),
      O => OP1_or_OP2(2)
    );
addrb_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(16),
      I1 => op2_sel,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(6),
      O => OP1_or_OP2(1)
    );
addrb_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(15),
      I1 => op2_sel,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(5),
      O => OP1_or_OP2(0)
    );
addrb_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1DE2E2E2"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(8),
      I1 => op2_sel,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(18),
      I3 => \trng_rst__3\,
      I4 => addrb_carry_i_10_n_0,
      O => \command_reg0_reg[8]\(3)
    );
addrb_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1DE2E2E2"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(7),
      I1 => op2_sel,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(17),
      I3 => \trng_rst__3\,
      I4 => addrb_carry_i_11_n_0,
      O => \command_reg0_reg[8]\(2)
    );
addrb_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1DE2E2E2"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(6),
      I1 => op2_sel,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(16),
      I3 => \trng_rst__3\,
      I4 => addrb_carry_i_12_n_0,
      O => \command_reg0_reg[8]\(1)
    );
addrb_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1DE2E2E2"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(5),
      I1 => op2_sel,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(15),
      I3 => \trng_rst__3\,
      I4 => addrb_carry_i_13_n_0,
      O => \command_reg0_reg[8]\(0)
    );
addrb_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => polymult_op2_sel,
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(1),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(0),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(2),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(4),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(3),
      O => op2_sel
    );
\write_address_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_address_reg_reg(0),
      O => p_0_in(0)
    );
\write_address_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_address_reg_reg(0),
      I1 => write_address_reg_reg(1),
      O => p_0_in(1)
    );
\write_address_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => write_address_reg_reg(0),
      I1 => write_address_reg_reg(1),
      I2 => write_address_reg_reg(2),
      O => p_0_in(2)
    );
\write_address_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => write_address_reg_reg(1),
      I1 => write_address_reg_reg(0),
      I2 => write_address_reg_reg(2),
      I3 => write_address_reg_reg(3),
      O => p_0_in(3)
    );
\write_address_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => write_address_reg_reg(2),
      I1 => write_address_reg_reg(0),
      I2 => write_address_reg_reg(1),
      I3 => write_address_reg_reg(3),
      I4 => write_address_reg_reg(4),
      O => p_0_in(4)
    );
\write_address_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => write_address_reg_reg(3),
      I1 => write_address_reg_reg(1),
      I2 => write_address_reg_reg(0),
      I3 => write_address_reg_reg(2),
      I4 => write_address_reg_reg(4),
      I5 => write_address_reg_reg(5),
      O => p_0_in(5)
    );
\write_address_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => write_address_reg_reg(4),
      I1 => write_address_reg_reg(2),
      I2 => \write_address_reg[6]_i_2_n_0\,
      I3 => write_address_reg_reg(3),
      I4 => write_address_reg_reg(5),
      I5 => write_address_reg_reg(6),
      O => p_0_in(6)
    );
\write_address_reg[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => write_address_reg_reg(1),
      I1 => write_address_reg_reg(0),
      O => \write_address_reg[6]_i_2_n_0\
    );
\write_address_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \write_address_reg[9]_i_3_n_0\,
      I1 => write_address_reg_reg(6),
      I2 => write_address_reg_reg(7),
      O => p_0_in(7)
    );
\write_address_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => write_address_reg_reg(6),
      I1 => \write_address_reg[9]_i_3_n_0\,
      I2 => write_address_reg_reg(7),
      I3 => write_address_reg_reg(8),
      O => p_0_in(8)
    );
\write_address_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \^q\(0),
      O => rst_read_address_reg
    );
\write_address_reg[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => write_address_reg_reg(7),
      I1 => \write_address_reg[9]_i_3_n_0\,
      I2 => write_address_reg_reg(6),
      I3 => write_address_reg_reg(8),
      I4 => write_address_reg_reg(9),
      O => p_0_in(9)
    );
\write_address_reg[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => write_address_reg_reg(5),
      I1 => write_address_reg_reg(3),
      I2 => write_address_reg_reg(1),
      I3 => write_address_reg_reg(0),
      I4 => write_address_reg_reg(2),
      I5 => write_address_reg_reg(4),
      O => \write_address_reg[9]_i_3_n_0\
    );
\write_address_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => polymult_wea,
      D => p_0_in(0),
      Q => write_address_reg_reg(0),
      R => rst_read_address_reg
    );
\write_address_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => polymult_wea,
      D => p_0_in(1),
      Q => write_address_reg_reg(1),
      R => rst_read_address_reg
    );
\write_address_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => polymult_wea,
      D => p_0_in(2),
      Q => write_address_reg_reg(2),
      R => rst_read_address_reg
    );
\write_address_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => polymult_wea,
      D => p_0_in(3),
      Q => write_address_reg_reg(3),
      R => rst_read_address_reg
    );
\write_address_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => polymult_wea,
      D => p_0_in(4),
      Q => write_address_reg_reg(4),
      R => rst_read_address_reg
    );
\write_address_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => polymult_wea,
      D => p_0_in(5),
      Q => write_address_reg_reg(5),
      R => rst_read_address_reg
    );
\write_address_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => polymult_wea,
      D => p_0_in(6),
      Q => write_address_reg_reg(6),
      R => rst_read_address_reg
    );
\write_address_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => polymult_wea,
      D => p_0_in(7),
      Q => write_address_reg_reg(7),
      R => rst_read_address_reg
    );
\write_address_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => polymult_wea,
      D => p_0_in(8),
      Q => write_address_reg_reg(8),
      R => rst_read_address_reg
    );
\write_address_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => polymult_wea,
      D => p_0_in(9),
      Q => write_address_reg_reg(9),
      R => rst_read_address_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_width is
  port (
    doutb : out STD_LOGIC_VECTOR ( 35 downto 0 );
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 35 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_width;

architecture STRUCTURE of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_width is
begin
\prim_noinit.ram\: entity work.cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_wrapper
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      addrb(9 downto 0) => addrb(9 downto 0),
      clka => clka,
      dina(35 downto 0) => dina(35 downto 0),
      doutb(35 downto 0) => doutb(35 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_width__parameterized0\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 27 downto 0 );
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 27 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_width__parameterized0\ is
begin
\prim_noinit.ram\: entity work.\cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_wrapper__parameterized0\
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      addrb(9 downto 0) => addrb(9 downto 0),
      clka => clka,
      dina(27 downto 0) => dina(27 downto 0),
      doutb(27 downto 0) => doutb(27 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13_synth is
  port (
    qdpo : out STD_LOGIC_VECTOR ( 36 downto 0 );
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 36 downto 0 );
    we : in STD_LOGIC;
    dpra : in STD_LOGIC_VECTOR ( 5 downto 0 );
    a : in STD_LOGIC_VECTOR ( 5 downto 0 );
    qdpo_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13_synth : entity is "dist_mem_gen_v8_0_13_synth";
end cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13_synth;

architecture STRUCTURE of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13_synth is
begin
\gen_sdp_ram.sdpram_inst\: entity work.cryptoprocessor_ComputeCoreWrapper_0_0_sdpram
     port map (
      a(5 downto 0) => a(5 downto 0),
      clk => clk,
      d(36 downto 0) => d(36 downto 0),
      dpra(5 downto 0) => dpra(5 downto 0),
      qdpo(36 downto 0) => qdpo(36 downto 0),
      qdpo_clk => qdpo_clk,
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_generic_cstr is
  port (
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_generic_cstr;

architecture STRUCTURE of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_width
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      addrb(9 downto 0) => addrb(9 downto 0),
      clka => clka,
      dina(35 downto 0) => dina(35 downto 0),
      doutb(35 downto 0) => doutb(35 downto 0),
      wea(0) => wea(0)
    );
\ramloop[1].ram.r\: entity work.\cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_prim_width__parameterized0\
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      addrb(9 downto 0) => addrb(9 downto 0),
      clka => clka,
      dina(27 downto 0) => dina(63 downto 36),
      doutb(27 downto 0) => doutb(63 downto 36),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 is
  port (
    a : in STD_LOGIC_VECTOR ( 5 downto 0 );
    d : in STD_LOGIC_VECTOR ( 36 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 5 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    i_ce : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    qdpo_ce : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qspo_rst : in STD_LOGIC;
    qdpo_rst : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 36 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 36 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 36 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 36 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 6;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 64;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is "zynq";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is "no_coe_file_loaded";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 4;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is 37;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 : entity is "dist_mem_gen_v8_0_13";
end cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13;

architecture STRUCTURE of cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13 is
  signal \<const0>\ : STD_LOGIC;
begin
  dpo(36) <= \<const0>\;
  dpo(35) <= \<const0>\;
  dpo(34) <= \<const0>\;
  dpo(33) <= \<const0>\;
  dpo(32) <= \<const0>\;
  dpo(31) <= \<const0>\;
  dpo(30) <= \<const0>\;
  dpo(29) <= \<const0>\;
  dpo(28) <= \<const0>\;
  dpo(27) <= \<const0>\;
  dpo(26) <= \<const0>\;
  dpo(25) <= \<const0>\;
  dpo(24) <= \<const0>\;
  dpo(23) <= \<const0>\;
  dpo(22) <= \<const0>\;
  dpo(21) <= \<const0>\;
  dpo(20) <= \<const0>\;
  dpo(19) <= \<const0>\;
  dpo(18) <= \<const0>\;
  dpo(17) <= \<const0>\;
  dpo(16) <= \<const0>\;
  dpo(15) <= \<const0>\;
  dpo(14) <= \<const0>\;
  dpo(13) <= \<const0>\;
  dpo(12) <= \<const0>\;
  dpo(11) <= \<const0>\;
  dpo(10) <= \<const0>\;
  dpo(9) <= \<const0>\;
  dpo(8) <= \<const0>\;
  dpo(7) <= \<const0>\;
  dpo(6) <= \<const0>\;
  dpo(5) <= \<const0>\;
  dpo(4) <= \<const0>\;
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  qspo(36) <= \<const0>\;
  qspo(35) <= \<const0>\;
  qspo(34) <= \<const0>\;
  qspo(33) <= \<const0>\;
  qspo(32) <= \<const0>\;
  qspo(31) <= \<const0>\;
  qspo(30) <= \<const0>\;
  qspo(29) <= \<const0>\;
  qspo(28) <= \<const0>\;
  qspo(27) <= \<const0>\;
  qspo(26) <= \<const0>\;
  qspo(25) <= \<const0>\;
  qspo(24) <= \<const0>\;
  qspo(23) <= \<const0>\;
  qspo(22) <= \<const0>\;
  qspo(21) <= \<const0>\;
  qspo(20) <= \<const0>\;
  qspo(19) <= \<const0>\;
  qspo(18) <= \<const0>\;
  qspo(17) <= \<const0>\;
  qspo(16) <= \<const0>\;
  qspo(15) <= \<const0>\;
  qspo(14) <= \<const0>\;
  qspo(13) <= \<const0>\;
  qspo(12) <= \<const0>\;
  qspo(11) <= \<const0>\;
  qspo(10) <= \<const0>\;
  qspo(9) <= \<const0>\;
  qspo(8) <= \<const0>\;
  qspo(7) <= \<const0>\;
  qspo(6) <= \<const0>\;
  qspo(5) <= \<const0>\;
  qspo(4) <= \<const0>\;
  qspo(3) <= \<const0>\;
  qspo(2) <= \<const0>\;
  qspo(1) <= \<const0>\;
  qspo(0) <= \<const0>\;
  spo(36) <= \<const0>\;
  spo(35) <= \<const0>\;
  spo(34) <= \<const0>\;
  spo(33) <= \<const0>\;
  spo(32) <= \<const0>\;
  spo(31) <= \<const0>\;
  spo(30) <= \<const0>\;
  spo(29) <= \<const0>\;
  spo(28) <= \<const0>\;
  spo(27) <= \<const0>\;
  spo(26) <= \<const0>\;
  spo(25) <= \<const0>\;
  spo(24) <= \<const0>\;
  spo(23) <= \<const0>\;
  spo(22) <= \<const0>\;
  spo(21) <= \<const0>\;
  spo(20) <= \<const0>\;
  spo(19) <= \<const0>\;
  spo(18) <= \<const0>\;
  spo(17) <= \<const0>\;
  spo(16) <= \<const0>\;
  spo(15) <= \<const0>\;
  spo(14) <= \<const0>\;
  spo(13) <= \<const0>\;
  spo(12) <= \<const0>\;
  spo(11) <= \<const0>\;
  spo(10) <= \<const0>\;
  spo(9) <= \<const0>\;
  spo(8) <= \<const0>\;
  spo(7) <= \<const0>\;
  spo(6) <= \<const0>\;
  spo(5) <= \<const0>\;
  spo(4) <= \<const0>\;
  spo(3) <= \<const0>\;
  spo(2) <= \<const0>\;
  spo(1) <= \<const0>\;
  spo(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\synth_options.dist_mem_inst\: entity work.cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13_synth
     port map (
      a(5 downto 0) => a(5 downto 0),
      clk => clk,
      d(36 downto 0) => d(36 downto 0),
      dpra(5 downto 0) => dpra(5 downto 0),
      qdpo(36 downto 0) => qdpo(36 downto 0),
      qdpo_clk => qdpo_clk,
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cryptoprocessor_ComputeCoreWrapper_0_0_INS_RAM is
  port (
    a : in STD_LOGIC_VECTOR ( 5 downto 0 );
    d : in STD_LOGIC_VECTOR ( 36 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 5 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qdpo : out STD_LOGIC_VECTOR ( 36 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cryptoprocessor_ComputeCoreWrapper_0_0_INS_RAM : entity is "INS_RAM,dist_mem_gen_v8_0_13,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of cryptoprocessor_ComputeCoreWrapper_0_0_INS_RAM : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cryptoprocessor_ComputeCoreWrapper_0_0_INS_RAM : entity is "INS_RAM";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of cryptoprocessor_ComputeCoreWrapper_0_0_INS_RAM : entity is "dist_mem_gen_v8_0_13,Vivado 2019.1";
end cryptoprocessor_ComputeCoreWrapper_0_0_INS_RAM;

architecture STRUCTURE of cryptoprocessor_ComputeCoreWrapper_0_0_INS_RAM is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal NLW_U0_spo_UNCONNECTED : STD_LOGIC_VECTOR ( 36 downto 0 );
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of U0 : label is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 1;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 1;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of U0 : label is 1;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of U0 : label is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of U0 : label is 1;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of U0 : label is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of U0 : label is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of U0 : label is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of U0 : label is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of U0 : label is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of U0 : label is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 4;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 6;
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 64;
  attribute c_has_i_ce : integer;
  attribute c_has_i_ce of U0 : label is 0;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "no_coe_file_loaded";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_pipeline_stages : integer;
  attribute c_pipeline_stages of U0 : label is 0;
  attribute c_qce_joined : integer;
  attribute c_qce_joined of U0 : label is 0;
  attribute c_qualify_we : integer;
  attribute c_qualify_we of U0 : label is 0;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 0;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 37;
begin
U0: entity work.cryptoprocessor_ComputeCoreWrapper_0_0_dist_mem_gen_v8_0_13
     port map (
      a(5 downto 0) => a(5 downto 0),
      clk => clk,
      d(36 downto 0) => d(36 downto 0),
      dpo(36 downto 0) => NLW_U0_dpo_UNCONNECTED(36 downto 0),
      dpra(5 downto 0) => dpra(5 downto 0),
      i_ce => '1',
      qdpo(36 downto 0) => qdpo(36 downto 0),
      qdpo_ce => '1',
      qdpo_clk => qdpo_clk,
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(36 downto 0) => NLW_U0_qspo_UNCONNECTED(36 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(36 downto 0) => NLW_U0_spo_UNCONNECTED(36 downto 0),
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_top is
  port (
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_top : entity is "blk_mem_gen_top";
end cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_top;

architecture STRUCTURE of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_top is
begin
\valid.cstr\: entity work.cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_generic_cstr
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      addrb(9 downto 0) => addrb(9 downto 0),
      clka => clka,
      dina(63 downto 0) => dina(63 downto 0),
      doutb(63 downto 0) => doutb(63 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cryptoprocessor_ComputeCoreWrapper_0_0_ISA_control is
  port (
    qdpo : out STD_LOGIC_VECTOR ( 35 downto 0 );
    D : out STD_LOGIC_VECTOR ( 30 downto 0 );
    control_low_word : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \^d\ : in STD_LOGIC_VECTOR ( 36 downto 0 );
    clk : in STD_LOGIC;
    control_high_word : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cryptoprocessor_ComputeCoreWrapper_0_0_ISA_control : entity is "ISA_control";
end cryptoprocessor_ComputeCoreWrapper_0_0_ISA_control;

architecture STRUCTURE of cryptoprocessor_ComputeCoreWrapper_0_0_ISA_control is
  signal \^d_1\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal IR_address0 : STD_LOGIC;
  signal IR_address_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal command_we1 : STD_LOGIC;
  signal \cycle_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal inc_IR_address : STD_LOGIC;
  signal \last_instruction__3\ : STD_LOGIC;
  signal \nextstate1__6\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^qdpo\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal wea_ext_ISA : STD_LOGIC;
  signal \NLW_cycle_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_cycle_count_reg[28]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair9";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "iSTATE:000,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:110,iSTATE5:001,iSTATE6:111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "iSTATE:000,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:110,iSTATE5:001,iSTATE6:111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "iSTATE:000,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:110,iSTATE5:001,iSTATE6:111";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of IR : label is "INS_RAM,dist_mem_gen_v8_0_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of IR : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of IR : label is "dist_mem_gen_v8_0_13,Vivado 2019.1";
  attribute SOFT_HLUTNM of \IR_address[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \IR_address[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \IR_address[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \IR_address[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \status[0]_i_1\ : label is "soft_lutpair9";
begin
  D(30 downto 0) <= \^d_1\(30 downto 0);
  qdpo(35 downto 0) <= \^qdpo\(35 downto 0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A2FF"
    )
        port map (
      I0 => state(2),
      I1 => \nextstate1__6\,
      I2 => state(1),
      I3 => state(0),
      I4 => control_high_word(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BB99C4C4"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => \nextstate1__6\,
      I3 => \last_instruction__3\,
      I4 => state(1),
      I5 => control_high_word(0),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_3_n_0\,
      I1 => \last_instruction__3\,
      I2 => Q(0),
      O => \nextstate1__6\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000001"
    )
        port map (
      I0 => \^qdpo\(3),
      I1 => \^qdpo\(4),
      I2 => \^qdpo\(2),
      I3 => \^qdpo\(1),
      I4 => \^qdpo\(0),
      I5 => command_we1,
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FD88"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => \last_instruction__3\,
      I3 => state(2),
      I4 => control_high_word(0),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^qdpo\(0),
      I1 => \^qdpo\(1),
      I2 => \^qdpo\(2),
      I3 => \^qdpo\(4),
      I4 => \^qdpo\(3),
      O => \last_instruction__3\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => '0'
    );
IR: entity work.cryptoprocessor_ComputeCoreWrapper_0_0_INS_RAM
     port map (
      a(5 downto 0) => control_low_word(5 downto 0),
      clk => clk,
      d(36 downto 0) => \^d\(36 downto 0),
      dpra(5 downto 0) => IR_address_reg(5 downto 0),
      qdpo(36) => command_we1,
      qdpo(35 downto 0) => \^qdpo\(35 downto 0),
      qdpo_clk => clk,
      we => wea_ext_ISA
    );
\IR_address[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => IR_address_reg(0),
      O => p_0_in(0)
    );
\IR_address[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => IR_address_reg(0),
      I1 => IR_address_reg(1),
      O => p_0_in(1)
    );
\IR_address[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => IR_address_reg(0),
      I1 => IR_address_reg(1),
      I2 => IR_address_reg(2),
      O => p_0_in(2)
    );
\IR_address[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => IR_address_reg(1),
      I1 => IR_address_reg(0),
      I2 => IR_address_reg(2),
      I3 => IR_address_reg(3),
      O => p_0_in(3)
    );
\IR_address[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => IR_address_reg(2),
      I1 => IR_address_reg(0),
      I2 => IR_address_reg(1),
      I3 => IR_address_reg(3),
      I4 => IR_address_reg(4),
      O => p_0_in(4)
    );
\IR_address[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => control_high_word(0),
      I1 => control_high_word(1),
      O => IR_address0
    );
\IR_address[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      O => inc_IR_address
    );
\IR_address[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => IR_address_reg(3),
      I1 => IR_address_reg(1),
      I2 => IR_address_reg(0),
      I3 => IR_address_reg(2),
      I4 => IR_address_reg(4),
      I5 => IR_address_reg(5),
      O => p_0_in(5)
    );
\IR_address_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inc_IR_address,
      D => p_0_in(0),
      Q => IR_address_reg(0),
      R => IR_address0
    );
\IR_address_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inc_IR_address,
      D => p_0_in(1),
      Q => IR_address_reg(1),
      R => IR_address0
    );
\IR_address_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inc_IR_address,
      D => p_0_in(2),
      Q => IR_address_reg(2),
      R => IR_address0
    );
\IR_address_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inc_IR_address,
      D => p_0_in(3),
      Q => IR_address_reg(3),
      R => IR_address0
    );
\IR_address_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inc_IR_address,
      D => p_0_in(4),
      Q => IR_address_reg(4),
      R => IR_address0
    );
\IR_address_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inc_IR_address,
      D => p_0_in(5),
      Q => IR_address_reg(5),
      R => IR_address0
    );
IR_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => control_low_word(6),
      I1 => control_low_word(7),
      O => wea_ext_ISA
    );
\cycle_count[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^d_1\(1),
      O => \cycle_count[0]_i_2_n_0\
    );
\cycle_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[0]_i_1_n_7\,
      Q => \^d_1\(1),
      R => control_high_word(0)
    );
\cycle_count_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cycle_count_reg[0]_i_1_n_0\,
      CO(2) => \cycle_count_reg[0]_i_1_n_1\,
      CO(1) => \cycle_count_reg[0]_i_1_n_2\,
      CO(0) => \cycle_count_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cycle_count_reg[0]_i_1_n_4\,
      O(2) => \cycle_count_reg[0]_i_1_n_5\,
      O(1) => \cycle_count_reg[0]_i_1_n_6\,
      O(0) => \cycle_count_reg[0]_i_1_n_7\,
      S(3 downto 1) => \^d_1\(4 downto 2),
      S(0) => \cycle_count[0]_i_2_n_0\
    );
\cycle_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[8]_i_1_n_5\,
      Q => \^d_1\(11),
      R => control_high_word(0)
    );
\cycle_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[8]_i_1_n_4\,
      Q => \^d_1\(12),
      R => control_high_word(0)
    );
\cycle_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[12]_i_1_n_7\,
      Q => \^d_1\(13),
      R => control_high_word(0)
    );
\cycle_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[8]_i_1_n_0\,
      CO(3) => \cycle_count_reg[12]_i_1_n_0\,
      CO(2) => \cycle_count_reg[12]_i_1_n_1\,
      CO(1) => \cycle_count_reg[12]_i_1_n_2\,
      CO(0) => \cycle_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cycle_count_reg[12]_i_1_n_4\,
      O(2) => \cycle_count_reg[12]_i_1_n_5\,
      O(1) => \cycle_count_reg[12]_i_1_n_6\,
      O(0) => \cycle_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => \^d_1\(16 downto 13)
    );
\cycle_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[12]_i_1_n_6\,
      Q => \^d_1\(14),
      R => control_high_word(0)
    );
\cycle_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[12]_i_1_n_5\,
      Q => \^d_1\(15),
      R => control_high_word(0)
    );
\cycle_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[12]_i_1_n_4\,
      Q => \^d_1\(16),
      R => control_high_word(0)
    );
\cycle_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[16]_i_1_n_7\,
      Q => \^d_1\(17),
      R => control_high_word(0)
    );
\cycle_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[12]_i_1_n_0\,
      CO(3) => \cycle_count_reg[16]_i_1_n_0\,
      CO(2) => \cycle_count_reg[16]_i_1_n_1\,
      CO(1) => \cycle_count_reg[16]_i_1_n_2\,
      CO(0) => \cycle_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cycle_count_reg[16]_i_1_n_4\,
      O(2) => \cycle_count_reg[16]_i_1_n_5\,
      O(1) => \cycle_count_reg[16]_i_1_n_6\,
      O(0) => \cycle_count_reg[16]_i_1_n_7\,
      S(3 downto 0) => \^d_1\(20 downto 17)
    );
\cycle_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[16]_i_1_n_6\,
      Q => \^d_1\(18),
      R => control_high_word(0)
    );
\cycle_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[16]_i_1_n_5\,
      Q => \^d_1\(19),
      R => control_high_word(0)
    );
\cycle_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[16]_i_1_n_4\,
      Q => \^d_1\(20),
      R => control_high_word(0)
    );
\cycle_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[0]_i_1_n_6\,
      Q => \^d_1\(2),
      R => control_high_word(0)
    );
\cycle_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[20]_i_1_n_7\,
      Q => \^d_1\(21),
      R => control_high_word(0)
    );
\cycle_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[16]_i_1_n_0\,
      CO(3) => \cycle_count_reg[20]_i_1_n_0\,
      CO(2) => \cycle_count_reg[20]_i_1_n_1\,
      CO(1) => \cycle_count_reg[20]_i_1_n_2\,
      CO(0) => \cycle_count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cycle_count_reg[20]_i_1_n_4\,
      O(2) => \cycle_count_reg[20]_i_1_n_5\,
      O(1) => \cycle_count_reg[20]_i_1_n_6\,
      O(0) => \cycle_count_reg[20]_i_1_n_7\,
      S(3 downto 0) => \^d_1\(24 downto 21)
    );
\cycle_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[20]_i_1_n_6\,
      Q => \^d_1\(22),
      R => control_high_word(0)
    );
\cycle_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[20]_i_1_n_5\,
      Q => \^d_1\(23),
      R => control_high_word(0)
    );
\cycle_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[20]_i_1_n_4\,
      Q => \^d_1\(24),
      R => control_high_word(0)
    );
\cycle_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[24]_i_1_n_7\,
      Q => \^d_1\(25),
      R => control_high_word(0)
    );
\cycle_count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[20]_i_1_n_0\,
      CO(3) => \cycle_count_reg[24]_i_1_n_0\,
      CO(2) => \cycle_count_reg[24]_i_1_n_1\,
      CO(1) => \cycle_count_reg[24]_i_1_n_2\,
      CO(0) => \cycle_count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cycle_count_reg[24]_i_1_n_4\,
      O(2) => \cycle_count_reg[24]_i_1_n_5\,
      O(1) => \cycle_count_reg[24]_i_1_n_6\,
      O(0) => \cycle_count_reg[24]_i_1_n_7\,
      S(3 downto 0) => \^d_1\(28 downto 25)
    );
\cycle_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[24]_i_1_n_6\,
      Q => \^d_1\(26),
      R => control_high_word(0)
    );
\cycle_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[24]_i_1_n_5\,
      Q => \^d_1\(27),
      R => control_high_word(0)
    );
\cycle_count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[24]_i_1_n_4\,
      Q => \^d_1\(28),
      R => control_high_word(0)
    );
\cycle_count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[28]_i_1_n_7\,
      Q => \^d_1\(29),
      R => control_high_word(0)
    );
\cycle_count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[24]_i_1_n_0\,
      CO(3 downto 1) => \NLW_cycle_count_reg[28]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \cycle_count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_cycle_count_reg[28]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \cycle_count_reg[28]_i_1_n_6\,
      O(0) => \cycle_count_reg[28]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => \^d_1\(30 downto 29)
    );
\cycle_count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[28]_i_1_n_6\,
      Q => \^d_1\(30),
      R => control_high_word(0)
    );
\cycle_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[0]_i_1_n_5\,
      Q => \^d_1\(3),
      R => control_high_word(0)
    );
\cycle_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[0]_i_1_n_4\,
      Q => \^d_1\(4),
      R => control_high_word(0)
    );
\cycle_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[4]_i_1_n_7\,
      Q => \^d_1\(5),
      R => control_high_word(0)
    );
\cycle_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[0]_i_1_n_0\,
      CO(3) => \cycle_count_reg[4]_i_1_n_0\,
      CO(2) => \cycle_count_reg[4]_i_1_n_1\,
      CO(1) => \cycle_count_reg[4]_i_1_n_2\,
      CO(0) => \cycle_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cycle_count_reg[4]_i_1_n_4\,
      O(2) => \cycle_count_reg[4]_i_1_n_5\,
      O(1) => \cycle_count_reg[4]_i_1_n_6\,
      O(0) => \cycle_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => \^d_1\(8 downto 5)
    );
\cycle_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[4]_i_1_n_6\,
      Q => \^d_1\(6),
      R => control_high_word(0)
    );
\cycle_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[4]_i_1_n_5\,
      Q => \^d_1\(7),
      R => control_high_word(0)
    );
\cycle_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[4]_i_1_n_4\,
      Q => \^d_1\(8),
      R => control_high_word(0)
    );
\cycle_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[8]_i_1_n_7\,
      Q => \^d_1\(9),
      R => control_high_word(0)
    );
\cycle_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[4]_i_1_n_0\,
      CO(3) => \cycle_count_reg[8]_i_1_n_0\,
      CO(2) => \cycle_count_reg[8]_i_1_n_1\,
      CO(1) => \cycle_count_reg[8]_i_1_n_2\,
      CO(0) => \cycle_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cycle_count_reg[8]_i_1_n_4\,
      O(2) => \cycle_count_reg[8]_i_1_n_5\,
      O(1) => \cycle_count_reg[8]_i_1_n_6\,
      O(0) => \cycle_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => \^d_1\(12 downto 9)
    );
\cycle_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[8]_i_1_n_6\,
      Q => \^d_1\(10),
      R => control_high_word(0)
    );
\status[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => \^d_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3_synth is
  port (
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3_synth : entity is "blk_mem_gen_v8_4_3_synth";
end cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3_synth;

architecture STRUCTURE of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_top
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      addrb(9 downto 0) => addrb(9 downto 0),
      clka => clka,
      dina(63 downto 0) => dina(63 downto 0),
      doutb(63 downto 0) => doutb(63 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 9 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 10;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 10;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is "2";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is "Estimated Power for IP     :     10.882749 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is "BRAM64_1024.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 1024;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 1024;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 64;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 64;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 1024;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 1024;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is "NO_CHANGE";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is "READ_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 64;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is 64;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is "zynq";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 : entity is "blk_mem_gen_v8_4_3";
end cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3;

architecture STRUCTURE of cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  douta(63) <= \<const0>\;
  douta(62) <= \<const0>\;
  douta(61) <= \<const0>\;
  douta(60) <= \<const0>\;
  douta(59) <= \<const0>\;
  douta(58) <= \<const0>\;
  douta(57) <= \<const0>\;
  douta(56) <= \<const0>\;
  douta(55) <= \<const0>\;
  douta(54) <= \<const0>\;
  douta(53) <= \<const0>\;
  douta(52) <= \<const0>\;
  douta(51) <= \<const0>\;
  douta(50) <= \<const0>\;
  douta(49) <= \<const0>\;
  douta(48) <= \<const0>\;
  douta(47) <= \<const0>\;
  douta(46) <= \<const0>\;
  douta(45) <= \<const0>\;
  douta(44) <= \<const0>\;
  douta(43) <= \<const0>\;
  douta(42) <= \<const0>\;
  douta(41) <= \<const0>\;
  douta(40) <= \<const0>\;
  douta(39) <= \<const0>\;
  douta(38) <= \<const0>\;
  douta(37) <= \<const0>\;
  douta(36) <= \<const0>\;
  douta(35) <= \<const0>\;
  douta(34) <= \<const0>\;
  douta(33) <= \<const0>\;
  douta(32) <= \<const0>\;
  douta(31) <= \<const0>\;
  douta(30) <= \<const0>\;
  douta(29) <= \<const0>\;
  douta(28) <= \<const0>\;
  douta(27) <= \<const0>\;
  douta(26) <= \<const0>\;
  douta(25) <= \<const0>\;
  douta(24) <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3_synth
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      addrb(9 downto 0) => addrb(9 downto 0),
      clka => clka,
      dina(63 downto 0) => dina(63 downto 0),
      doutb(63 downto 0) => doutb(63 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cryptoprocessor_ComputeCoreWrapper_0_0_BRAM64_1024 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 );
    clkb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cryptoprocessor_ComputeCoreWrapper_0_0_BRAM64_1024 : entity is "BRAM64_1024,blk_mem_gen_v8_4_3,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of cryptoprocessor_ComputeCoreWrapper_0_0_BRAM64_1024 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cryptoprocessor_ComputeCoreWrapper_0_0_BRAM64_1024 : entity is "BRAM64_1024";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of cryptoprocessor_ComputeCoreWrapper_0_0_BRAM64_1024 : entity is "blk_mem_gen_v8_4_3,Vivado 2019.1";
end cryptoprocessor_ComputeCoreWrapper_0_0_BRAM64_1024;

architecture STRUCTURE of cryptoprocessor_ComputeCoreWrapper_0_0_BRAM64_1024 is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_douta_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 10;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 10;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 1;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "2";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     10.882749 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "BRAM64_1024.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 1;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 1024;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 1024;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of U0 : label is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of U0 : label is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 64;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 64;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 1024;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 1024;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "NO_CHANGE";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "READ_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 64;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 64;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of clkb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK";
  attribute X_INTERFACE_PARAMETER of clkb : signal is "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute X_INTERFACE_INFO of addrb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR";
  attribute X_INTERFACE_INFO of dina : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
  attribute X_INTERFACE_INFO of doutb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT";
  attribute X_INTERFACE_INFO of wea : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
begin
U0: entity work.cryptoprocessor_ComputeCoreWrapper_0_0_blk_mem_gen_v8_4_3
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      addrb(9 downto 0) => addrb(9 downto 0),
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(63 downto 0) => dina(63 downto 0),
      dinb(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      douta(63 downto 0) => NLW_U0_douta_UNCONNECTED(63 downto 0),
      doutb(63 downto 0) => doutb(63 downto 0),
      eccpipece => '0',
      ena => '0',
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(9 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(9 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(9 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(9 downto 0),
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => wea(0),
      web(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cryptoprocessor_ComputeCoreWrapper_0_0_ComputeCore is
  port (
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 36 downto 0 );
    dina_ext_high_word : in STD_LOGIC_VECTOR ( 26 downto 0 );
    control_low_word : in STD_LOGIC_VECTOR ( 11 downto 0 );
    control_high_word : in STD_LOGIC_VECTOR ( 0 to 0 );
    qdpo : in STD_LOGIC_VECTOR ( 35 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cryptoprocessor_ComputeCoreWrapper_0_0_ComputeCore : entity is "ComputeCore";
end cryptoprocessor_ComputeCoreWrapper_0_0_ComputeCore;

architecture STRUCTURE of cryptoprocessor_ComputeCoreWrapper_0_0_ComputeCore is
  signal BR_i_66_n_0 : STD_LOGIC;
  signal BR_i_67_n_0 : STD_LOGIC;
  signal OP1_or_OP2 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal OP3 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal addra : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \addra_carry__0_n_0\ : STD_LOGIC;
  signal \addra_carry__0_n_1\ : STD_LOGIC;
  signal \addra_carry__0_n_2\ : STD_LOGIC;
  signal \addra_carry__0_n_3\ : STD_LOGIC;
  signal \addra_carry__1_n_3\ : STD_LOGIC;
  signal addra_carry_i_5_n_0 : STD_LOGIC;
  signal addra_carry_n_0 : STD_LOGIC;
  signal addra_carry_n_1 : STD_LOGIC;
  signal addra_carry_n_2 : STD_LOGIC;
  signal addra_carry_n_3 : STD_LOGIC;
  signal addrb : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \addrb_carry__0_n_0\ : STD_LOGIC;
  signal \addrb_carry__0_n_1\ : STD_LOGIC;
  signal \addrb_carry__0_n_2\ : STD_LOGIC;
  signal \addrb_carry__0_n_3\ : STD_LOGIC;
  signal \addrb_carry__1_n_3\ : STD_LOGIC;
  signal addrb_carry_n_0 : STD_LOGIC;
  signal addrb_carry_n_1 : STD_LOGIC;
  signal addrb_carry_n_2 : STD_LOGIC;
  signal addrb_carry_n_3 : STD_LOGIC;
  signal \command_reg0_reg_n_0_[0]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \command_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal dina : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^doutb\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal polymult_n_66 : STD_LOGIC;
  signal polymult_n_67 : STD_LOGIC;
  signal polymult_n_68 : STD_LOGIC;
  signal polymult_n_69 : STD_LOGIC;
  signal polymult_n_79 : STD_LOGIC;
  signal polymult_n_80 : STD_LOGIC;
  signal polymult_n_81 : STD_LOGIC;
  signal polymult_n_82 : STD_LOGIC;
  signal polymult_n_83 : STD_LOGIC;
  signal polymult_n_84 : STD_LOGIC;
  signal polymult_n_85 : STD_LOGIC;
  signal polymult_n_86 : STD_LOGIC;
  signal polymult_n_87 : STD_LOGIC;
  signal polymult_n_88 : STD_LOGIC;
  signal polymult_n_89 : STD_LOGIC;
  signal polymult_n_90 : STD_LOGIC;
  signal polymult_n_91 : STD_LOGIC;
  signal polymult_n_92 : STD_LOGIC;
  signal polymult_n_93 : STD_LOGIC;
  signal polymult_n_94 : STD_LOGIC;
  signal \trng_rst__3\ : STD_LOGIC;
  signal wea : STD_LOGIC;
  signal \NLW_addra_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_addra_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_addrb_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_addrb_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BR : label is "BRAM64_1024,blk_mem_gen_v8_4_3,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of BR : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of BR : label is "blk_mem_gen_v8_4_3,Vivado 2019.1";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of BR_i_66 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of BR_i_67 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of addra_carry_i_5 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of addra_carry_i_6 : label is "soft_lutpair8";
begin
  doutb(63 downto 0) <= \^doutb\(63 downto 0);
BR: entity work.cryptoprocessor_ComputeCoreWrapper_0_0_BRAM64_1024
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      addrb(9 downto 0) => addrb(9 downto 0),
      clka => clk,
      clkb => clk,
      dina(63 downto 0) => dina(63 downto 0),
      doutb(63 downto 0) => \^doutb\(63 downto 0),
      wea(0) => wea
    );
BR_i_66: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB33BF"
    )
        port map (
      I0 => \command_reg0_reg_n_0_[0]\,
      I1 => \command_reg0_reg_n_0_[4]\,
      I2 => \command_reg0_reg_n_0_[2]\,
      I3 => \command_reg0_reg_n_0_[1]\,
      I4 => \command_reg0_reg_n_0_[3]\,
      O => BR_i_66_n_0
    );
BR_i_67: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \command_reg0_reg_n_0_[0]\,
      I1 => \command_reg0_reg_n_0_[4]\,
      I2 => \command_reg0_reg_n_0_[2]\,
      I3 => \command_reg0_reg_n_0_[1]\,
      I4 => \command_reg0_reg_n_0_[3]\,
      O => BR_i_67_n_0
    );
addra_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => addra_carry_n_0,
      CO(2) => addra_carry_n_1,
      CO(1) => addra_carry_n_2,
      CO(0) => addra_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => OP3(3 downto 0),
      O(3 downto 0) => addra(3 downto 0),
      S(3) => polymult_n_79,
      S(2) => polymult_n_80,
      S(1) => polymult_n_81,
      S(0) => polymult_n_82
    );
\addra_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => addra_carry_n_0,
      CO(3) => \addra_carry__0_n_0\,
      CO(2) => \addra_carry__0_n_1\,
      CO(1) => \addra_carry__0_n_2\,
      CO(0) => \addra_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => OP3(7 downto 4),
      O(3 downto 0) => addra(7 downto 4),
      S(3) => polymult_n_83,
      S(2) => polymult_n_84,
      S(1) => polymult_n_85,
      S(0) => polymult_n_86
    );
\addra_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addra_carry__0_n_0\,
      CO(3 downto 1) => \NLW_addra_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \addra_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => OP3(8),
      O(3 downto 2) => \NLW_addra_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => addra(9 downto 8),
      S(3 downto 2) => B"00",
      S(1) => polymult_n_68,
      S(0) => polymult_n_69
    );
addra_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB37BF"
    )
        port map (
      I0 => \command_reg0_reg_n_0_[0]\,
      I1 => \command_reg0_reg_n_0_[4]\,
      I2 => \command_reg0_reg_n_0_[2]\,
      I3 => \command_reg0_reg_n_0_[1]\,
      I4 => \command_reg0_reg_n_0_[3]\,
      O => addra_carry_i_5_n_0
    );
addra_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDFF"
    )
        port map (
      I0 => \command_reg0_reg_n_0_[1]\,
      I1 => \command_reg0_reg_n_0_[0]\,
      I2 => \command_reg0_reg_n_0_[2]\,
      I3 => \command_reg0_reg_n_0_[4]\,
      I4 => \command_reg0_reg_n_0_[3]\,
      O => \trng_rst__3\
    );
addrb_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => addrb_carry_n_0,
      CO(2) => addrb_carry_n_1,
      CO(1) => addrb_carry_n_2,
      CO(0) => addrb_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => OP1_or_OP2(3 downto 0),
      O(3 downto 0) => addrb(3 downto 0),
      S(3) => polymult_n_87,
      S(2) => polymult_n_88,
      S(1) => polymult_n_89,
      S(0) => polymult_n_90
    );
\addrb_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => addrb_carry_n_0,
      CO(3) => \addrb_carry__0_n_0\,
      CO(2) => \addrb_carry__0_n_1\,
      CO(1) => \addrb_carry__0_n_2\,
      CO(0) => \addrb_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => OP1_or_OP2(7 downto 4),
      O(3 downto 0) => addrb(7 downto 4),
      S(3) => polymult_n_91,
      S(2) => polymult_n_92,
      S(1) => polymult_n_93,
      S(0) => polymult_n_94
    );
\addrb_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addrb_carry__0_n_0\,
      CO(3 downto 1) => \NLW_addrb_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \addrb_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => OP1_or_OP2(8),
      O(3 downto 2) => \NLW_addrb_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => addrb(9 downto 8),
      S(3 downto 2) => B"00",
      S(1) => polymult_n_66,
      S(0) => polymult_n_67
    );
\command_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(0),
      Q => \command_reg0_reg_n_0_[0]\,
      R => control_high_word(0)
    );
\command_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(10),
      Q => \command_reg0_reg_n_0_[10]\,
      R => control_high_word(0)
    );
\command_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(11),
      Q => \command_reg0_reg_n_0_[11]\,
      R => control_high_word(0)
    );
\command_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(12),
      Q => \command_reg0_reg_n_0_[12]\,
      R => control_high_word(0)
    );
\command_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(13),
      Q => \command_reg0_reg_n_0_[13]\,
      R => control_high_word(0)
    );
\command_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(14),
      Q => \command_reg0_reg_n_0_[14]\,
      R => control_high_word(0)
    );
\command_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(15),
      Q => \command_reg0_reg_n_0_[15]\,
      R => control_high_word(0)
    );
\command_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(16),
      Q => \command_reg0_reg_n_0_[16]\,
      R => control_high_word(0)
    );
\command_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(17),
      Q => \command_reg0_reg_n_0_[17]\,
      R => control_high_word(0)
    );
\command_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(18),
      Q => \command_reg0_reg_n_0_[18]\,
      R => control_high_word(0)
    );
\command_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(19),
      Q => \command_reg0_reg_n_0_[19]\,
      R => control_high_word(0)
    );
\command_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(1),
      Q => \command_reg0_reg_n_0_[1]\,
      R => control_high_word(0)
    );
\command_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(20),
      Q => \command_reg0_reg_n_0_[20]\,
      R => control_high_word(0)
    );
\command_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(21),
      Q => \command_reg0_reg_n_0_[21]\,
      R => control_high_word(0)
    );
\command_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(22),
      Q => \command_reg0_reg_n_0_[22]\,
      R => control_high_word(0)
    );
\command_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(23),
      Q => \command_reg0_reg_n_0_[23]\,
      R => control_high_word(0)
    );
\command_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(24),
      Q => \command_reg0_reg_n_0_[24]\,
      R => control_high_word(0)
    );
\command_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(25),
      Q => OP3(0),
      R => control_high_word(0)
    );
\command_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(26),
      Q => OP3(1),
      R => control_high_word(0)
    );
\command_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(27),
      Q => OP3(2),
      R => control_high_word(0)
    );
\command_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(28),
      Q => OP3(3),
      R => control_high_word(0)
    );
\command_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(29),
      Q => OP3(4),
      R => control_high_word(0)
    );
\command_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(2),
      Q => \command_reg0_reg_n_0_[2]\,
      R => control_high_word(0)
    );
\command_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(30),
      Q => OP3(5),
      R => control_high_word(0)
    );
\command_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(31),
      Q => OP3(6),
      R => control_high_word(0)
    );
\command_reg0_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(32),
      Q => OP3(7),
      R => control_high_word(0)
    );
\command_reg0_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(33),
      Q => OP3(8),
      R => control_high_word(0)
    );
\command_reg0_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(34),
      Q => OP3(9),
      R => control_high_word(0)
    );
\command_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(3),
      Q => \command_reg0_reg_n_0_[3]\,
      R => control_high_word(0)
    );
\command_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(4),
      Q => \command_reg0_reg_n_0_[4]\,
      R => control_high_word(0)
    );
\command_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(5),
      Q => \command_reg0_reg_n_0_[5]\,
      R => control_high_word(0)
    );
\command_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(6),
      Q => \command_reg0_reg_n_0_[6]\,
      R => control_high_word(0)
    );
\command_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(7),
      Q => \command_reg0_reg_n_0_[7]\,
      R => control_high_word(0)
    );
\command_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(8),
      Q => \command_reg0_reg_n_0_[8]\,
      R => control_high_word(0)
    );
\command_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => qdpo(35),
      D => qdpo(9),
      Q => \command_reg0_reg_n_0_[9]\,
      R => control_high_word(0)
    );
polymult: entity work.cryptoprocessor_ComputeCoreWrapper_0_0_polynomial_multiplication
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ => BR_i_66_n_0,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\ => BR_i_67_n_0,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(34 downto 25) => OP3(9 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(24) => \command_reg0_reg_n_0_[24]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(23) => \command_reg0_reg_n_0_[23]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(22) => \command_reg0_reg_n_0_[22]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(21) => \command_reg0_reg_n_0_[21]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(20) => \command_reg0_reg_n_0_[20]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(19) => \command_reg0_reg_n_0_[19]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(18) => \command_reg0_reg_n_0_[18]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(17) => \command_reg0_reg_n_0_[17]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(16) => \command_reg0_reg_n_0_[16]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(15) => \command_reg0_reg_n_0_[15]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(14) => \command_reg0_reg_n_0_[14]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(13) => \command_reg0_reg_n_0_[13]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(12) => \command_reg0_reg_n_0_[12]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(11) => \command_reg0_reg_n_0_[11]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(10) => \command_reg0_reg_n_0_[10]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(9) => \command_reg0_reg_n_0_[9]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(8) => \command_reg0_reg_n_0_[8]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(7) => \command_reg0_reg_n_0_[7]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(6) => \command_reg0_reg_n_0_[6]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(5) => \command_reg0_reg_n_0_[5]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(4) => \command_reg0_reg_n_0_[4]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(3) => \command_reg0_reg_n_0_[3]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(2) => \command_reg0_reg_n_0_[2]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(1) => \command_reg0_reg_n_0_[1]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(0) => \command_reg0_reg_n_0_[0]\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\ => addra_carry_i_5_n_0,
      OP1_or_OP2(8 downto 0) => OP1_or_OP2(8 downto 0),
      Q(0) => Q(0),
      S(1) => polymult_n_66,
      S(0) => polymult_n_67,
      clk => clk,
      \command_reg0_reg[12]\(3) => polymult_n_91,
      \command_reg0_reg[12]\(2) => polymult_n_92,
      \command_reg0_reg[12]\(1) => polymult_n_93,
      \command_reg0_reg[12]\(0) => polymult_n_94,
      \command_reg0_reg[28]\(3) => polymult_n_79,
      \command_reg0_reg[28]\(2) => polymult_n_80,
      \command_reg0_reg[28]\(1) => polymult_n_81,
      \command_reg0_reg[28]\(0) => polymult_n_82,
      \command_reg0_reg[32]\(3) => polymult_n_83,
      \command_reg0_reg[32]\(2) => polymult_n_84,
      \command_reg0_reg[32]\(1) => polymult_n_85,
      \command_reg0_reg[32]\(0) => polymult_n_86,
      \command_reg0_reg[34]\(1) => polymult_n_68,
      \command_reg0_reg[34]\(0) => polymult_n_69,
      \command_reg0_reg[8]\(3) => polymult_n_87,
      \command_reg0_reg[8]\(2) => polymult_n_88,
      \command_reg0_reg[8]\(1) => polymult_n_89,
      \command_reg0_reg[8]\(0) => polymult_n_90,
      control_low_word(11 downto 0) => control_low_word(11 downto 0),
      d(36 downto 0) => d(36 downto 0),
      dina(63 downto 0) => dina(63 downto 0),
      dina_ext_high_word(26 downto 0) => dina_ext_high_word(26 downto 0),
      doutb(63 downto 0) => \^doutb\(63 downto 0),
      \trng_rst__3\ => \trng_rst__3\,
      wea(0) => wea
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cryptoprocessor_ComputeCoreWrapper_0_0_ComputeCoreWrapper is
  port (
    clk : in STD_LOGIC;
    control_low_word : in STD_LOGIC_VECTOR ( 31 downto 0 );
    control_high_word : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina_ext_low_word : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina_ext_high_word : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dout_ext_low_word : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dout_ext_high_word : out STD_LOGIC_VECTOR ( 31 downto 0 );
    status : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cryptoprocessor_ComputeCoreWrapper_0_0_ComputeCoreWrapper : entity is "ComputeCoreWrapper";
end cryptoprocessor_ComputeCoreWrapper_0_0_ComputeCoreWrapper;

architecture STRUCTURE of cryptoprocessor_ComputeCoreWrapper_0_0_ComputeCoreWrapper is
  signal \<const0>\ : STD_LOGIC;
  signal command_in : STD_LOGIC_VECTOR ( 34 downto 0 );
  signal command_we0 : STD_LOGIC;
  signal cycle_count_reg : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal done_all_computation : STD_LOGIC;
  signal done_polymult : STD_LOGIC;
  signal \^status\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  status(31 downto 2) <= \^status\(31 downto 2);
  status(1) <= \<const0>\;
  status(0) <= \^status\(0);
CORE: entity work.cryptoprocessor_ComputeCoreWrapper_0_0_ComputeCore
     port map (
      Q(0) => done_polymult,
      clk => clk,
      control_high_word(0) => control_high_word(0),
      control_low_word(11 downto 0) => control_low_word(11 downto 0),
      d(36 downto 32) => dina_ext_high_word(4 downto 0),
      d(31 downto 0) => dina_ext_low_word(31 downto 0),
      dina_ext_high_word(26 downto 0) => dina_ext_high_word(31 downto 5),
      doutb(63 downto 32) => dout_ext_high_word(31 downto 0),
      doutb(31 downto 0) => dout_ext_low_word(31 downto 0),
      qdpo(35) => command_we0,
      qdpo(34 downto 0) => command_in(34 downto 0)
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
ISA_CTRL: entity work.cryptoprocessor_ComputeCoreWrapper_0_0_ISA_control
     port map (
      D(30 downto 1) => cycle_count_reg(29 downto 0),
      D(0) => done_all_computation,
      Q(0) => done_polymult,
      clk => clk,
      control_high_word(1 downto 0) => control_high_word(1 downto 0),
      control_low_word(7 downto 6) => control_low_word(11 downto 10),
      control_low_word(5 downto 0) => control_low_word(5 downto 0),
      \^d\(36 downto 32) => dina_ext_high_word(4 downto 0),
      \^d\(31 downto 0) => dina_ext_low_word(31 downto 0),
      qdpo(35) => command_we0,
      qdpo(34 downto 0) => command_in(34 downto 0)
    );
\status_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => done_all_computation,
      Q => \^status\(0),
      R => '0'
    );
\status_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(8),
      Q => \^status\(10),
      R => '0'
    );
\status_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(9),
      Q => \^status\(11),
      R => '0'
    );
\status_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(10),
      Q => \^status\(12),
      R => '0'
    );
\status_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(11),
      Q => \^status\(13),
      R => '0'
    );
\status_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(12),
      Q => \^status\(14),
      R => '0'
    );
\status_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(13),
      Q => \^status\(15),
      R => '0'
    );
\status_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(14),
      Q => \^status\(16),
      R => '0'
    );
\status_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(15),
      Q => \^status\(17),
      R => '0'
    );
\status_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(16),
      Q => \^status\(18),
      R => '0'
    );
\status_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(17),
      Q => \^status\(19),
      R => '0'
    );
\status_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(18),
      Q => \^status\(20),
      R => '0'
    );
\status_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(19),
      Q => \^status\(21),
      R => '0'
    );
\status_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(20),
      Q => \^status\(22),
      R => '0'
    );
\status_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(21),
      Q => \^status\(23),
      R => '0'
    );
\status_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(22),
      Q => \^status\(24),
      R => '0'
    );
\status_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(23),
      Q => \^status\(25),
      R => '0'
    );
\status_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(24),
      Q => \^status\(26),
      R => '0'
    );
\status_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(25),
      Q => \^status\(27),
      R => '0'
    );
\status_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(26),
      Q => \^status\(28),
      R => '0'
    );
\status_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(27),
      Q => \^status\(29),
      R => '0'
    );
\status_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(0),
      Q => \^status\(2),
      R => '0'
    );
\status_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(28),
      Q => \^status\(30),
      R => '0'
    );
\status_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(29),
      Q => \^status\(31),
      R => '0'
    );
\status_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(1),
      Q => \^status\(3),
      R => '0'
    );
\status_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(2),
      Q => \^status\(4),
      R => '0'
    );
\status_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(3),
      Q => \^status\(5),
      R => '0'
    );
\status_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(4),
      Q => \^status\(6),
      R => '0'
    );
\status_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(5),
      Q => \^status\(7),
      R => '0'
    );
\status_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(6),
      Q => \^status\(8),
      R => '0'
    );
\status_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cycle_count_reg(7),
      Q => \^status\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cryptoprocessor_ComputeCoreWrapper_0_0 is
  port (
    clk : in STD_LOGIC;
    control_low_word : in STD_LOGIC_VECTOR ( 31 downto 0 );
    control_high_word : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina_ext_low_word : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina_ext_high_word : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dout_ext_low_word : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dout_ext_high_word : out STD_LOGIC_VECTOR ( 31 downto 0 );
    status : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of cryptoprocessor_ComputeCoreWrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cryptoprocessor_ComputeCoreWrapper_0_0 : entity is "cryptoprocessor_ComputeCoreWrapper_0_0,ComputeCoreWrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of cryptoprocessor_ComputeCoreWrapper_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of cryptoprocessor_ComputeCoreWrapper_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of cryptoprocessor_ComputeCoreWrapper_0_0 : entity is "ComputeCoreWrapper,Vivado 2019.1";
end cryptoprocessor_ComputeCoreWrapper_0_0;

architecture STRUCTURE of cryptoprocessor_ComputeCoreWrapper_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN cryptoprocessor_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
inst: entity work.cryptoprocessor_ComputeCoreWrapper_0_0_ComputeCoreWrapper
     port map (
      clk => clk,
      control_high_word(31 downto 0) => control_high_word(31 downto 0),
      control_low_word(31 downto 0) => control_low_word(31 downto 0),
      dina_ext_high_word(31 downto 0) => dina_ext_high_word(31 downto 0),
      dina_ext_low_word(31 downto 0) => dina_ext_low_word(31 downto 0),
      dout_ext_high_word(31 downto 0) => dout_ext_high_word(31 downto 0),
      dout_ext_low_word(31 downto 0) => dout_ext_low_word(31 downto 0),
      status(31 downto 0) => status(31 downto 0)
    );
end STRUCTURE;
