-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "02/06/2025 19:32:36"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Display_Controller IS
    PORT (
	estado_fsm : IN std_logic_vector(2 DOWNTO 0);
	total_inserido : IN std_logic_vector(7 DOWNTO 0);
	troco_armazenado : IN std_logic_vector(7 DOWNTO 0);
	produto_escolhido : IN std_logic_vector(3 DOWNTO 0);
	preco_produto : IN std_logic_vector(7 DOWNTO 0);
	display_segments : OUT std_logic_vector(41 DOWNTO 0)
	);
END Display_Controller;

-- Design Ports Information
-- preco_produto[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preco_produto[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preco_produto[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preco_produto[3]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preco_produto[4]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preco_produto[5]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preco_produto[6]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preco_produto[7]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[7]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[8]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[9]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[10]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[11]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[12]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[13]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[14]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[15]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[16]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[17]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[18]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[19]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[20]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[21]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[22]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[23]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[24]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[25]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[26]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[27]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[28]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[29]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[30]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[31]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[32]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[33]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[34]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[35]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[36]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[37]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[38]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[39]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[40]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[41]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_fsm[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_inserido[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_fsm[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- produto_escolhido[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_fsm[2]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_armazenado[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_inserido[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_inserido[7]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_inserido[6]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_inserido[5]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_inserido[4]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_inserido[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_inserido[2]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_armazenado[1]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_armazenado[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_armazenado[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_armazenado[5]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_armazenado[4]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_armazenado[3]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_armazenado[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- produto_escolhido[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- produto_escolhido[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- produto_escolhido[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Display_Controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_estado_fsm : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_total_inserido : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_troco_armazenado : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_produto_escolhido : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_preco_produto : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_display_segments : std_logic_vector(41 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \preco_produto[0]~input_o\ : std_logic;
SIGNAL \preco_produto[1]~input_o\ : std_logic;
SIGNAL \preco_produto[2]~input_o\ : std_logic;
SIGNAL \preco_produto[3]~input_o\ : std_logic;
SIGNAL \preco_produto[4]~input_o\ : std_logic;
SIGNAL \preco_produto[5]~input_o\ : std_logic;
SIGNAL \preco_produto[6]~input_o\ : std_logic;
SIGNAL \preco_produto[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \display_segments[0]~output_o\ : std_logic;
SIGNAL \display_segments[1]~output_o\ : std_logic;
SIGNAL \display_segments[2]~output_o\ : std_logic;
SIGNAL \display_segments[3]~output_o\ : std_logic;
SIGNAL \display_segments[4]~output_o\ : std_logic;
SIGNAL \display_segments[5]~output_o\ : std_logic;
SIGNAL \display_segments[6]~output_o\ : std_logic;
SIGNAL \display_segments[7]~output_o\ : std_logic;
SIGNAL \display_segments[8]~output_o\ : std_logic;
SIGNAL \display_segments[9]~output_o\ : std_logic;
SIGNAL \display_segments[10]~output_o\ : std_logic;
SIGNAL \display_segments[11]~output_o\ : std_logic;
SIGNAL \display_segments[12]~output_o\ : std_logic;
SIGNAL \display_segments[13]~output_o\ : std_logic;
SIGNAL \display_segments[14]~output_o\ : std_logic;
SIGNAL \display_segments[15]~output_o\ : std_logic;
SIGNAL \display_segments[16]~output_o\ : std_logic;
SIGNAL \display_segments[17]~output_o\ : std_logic;
SIGNAL \display_segments[18]~output_o\ : std_logic;
SIGNAL \display_segments[19]~output_o\ : std_logic;
SIGNAL \display_segments[20]~output_o\ : std_logic;
SIGNAL \display_segments[21]~output_o\ : std_logic;
SIGNAL \display_segments[22]~output_o\ : std_logic;
SIGNAL \display_segments[23]~output_o\ : std_logic;
SIGNAL \display_segments[24]~output_o\ : std_logic;
SIGNAL \display_segments[25]~output_o\ : std_logic;
SIGNAL \display_segments[26]~output_o\ : std_logic;
SIGNAL \display_segments[27]~output_o\ : std_logic;
SIGNAL \display_segments[28]~output_o\ : std_logic;
SIGNAL \display_segments[29]~output_o\ : std_logic;
SIGNAL \display_segments[30]~output_o\ : std_logic;
SIGNAL \display_segments[31]~output_o\ : std_logic;
SIGNAL \display_segments[32]~output_o\ : std_logic;
SIGNAL \display_segments[33]~output_o\ : std_logic;
SIGNAL \display_segments[34]~output_o\ : std_logic;
SIGNAL \display_segments[35]~output_o\ : std_logic;
SIGNAL \display_segments[36]~output_o\ : std_logic;
SIGNAL \display_segments[37]~output_o\ : std_logic;
SIGNAL \display_segments[38]~output_o\ : std_logic;
SIGNAL \display_segments[39]~output_o\ : std_logic;
SIGNAL \display_segments[40]~output_o\ : std_logic;
SIGNAL \display_segments[41]~output_o\ : std_logic;
SIGNAL \estado_fsm[0]~input_o\ : std_logic;
SIGNAL \troco_armazenado[2]~input_o\ : std_logic;
SIGNAL \troco_armazenado[5]~input_o\ : std_logic;
SIGNAL \troco_armazenado[4]~input_o\ : std_logic;
SIGNAL \troco_armazenado[6]~input_o\ : std_logic;
SIGNAL \troco_armazenado[7]~input_o\ : std_logic;
SIGNAL \U3|temp~4_combout\ : std_logic;
SIGNAL \U3|temp~5_combout\ : std_logic;
SIGNAL \U3|temp~3_combout\ : std_logic;
SIGNAL \troco_armazenado[3]~input_o\ : std_logic;
SIGNAL \U3|temp~7_combout\ : std_logic;
SIGNAL \U3|temp~6_combout\ : std_logic;
SIGNAL \U3|temp~8_combout\ : std_logic;
SIGNAL \U3|temp~11_combout\ : std_logic;
SIGNAL \total_inserido[6]~input_o\ : std_logic;
SIGNAL \total_inserido[4]~input_o\ : std_logic;
SIGNAL \total_inserido[7]~input_o\ : std_logic;
SIGNAL \total_inserido[5]~input_o\ : std_logic;
SIGNAL \U1|temp~8_combout\ : std_logic;
SIGNAL \U1|temp~7_combout\ : std_logic;
SIGNAL \U1|temp~9_combout\ : std_logic;
SIGNAL \total_inserido[3]~input_o\ : std_logic;
SIGNAL \U1|temp~10_combout\ : std_logic;
SIGNAL \U1|temp~11_combout\ : std_logic;
SIGNAL \U1|temp~12_combout\ : std_logic;
SIGNAL \total_inserido[2]~input_o\ : std_logic;
SIGNAL \U1|temp~14_combout\ : std_logic;
SIGNAL \estado_fsm[1]~input_o\ : std_logic;
SIGNAL \U3|Add5~0_combout\ : std_logic;
SIGNAL \total_inserido[1]~input_o\ : std_logic;
SIGNAL \troco_armazenado[1]~input_o\ : std_logic;
SIGNAL \U3|Add5~1_combout\ : std_logic;
SIGNAL \U3|Add5~3_cout\ : std_logic;
SIGNAL \U3|Add5~4_combout\ : std_logic;
SIGNAL \U3|temp~9_combout\ : std_logic;
SIGNAL \U3|temp~10_combout\ : std_logic;
SIGNAL \U3|LessThan5~0_combout\ : std_logic;
SIGNAL \U1|temp~13_combout\ : std_logic;
SIGNAL \U1|LessThan5~0_combout\ : std_logic;
SIGNAL \U1|LessThan5~1_combout\ : std_logic;
SIGNAL \estado_fsm[2]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \produto_escolhido[1]~input_o\ : std_logic;
SIGNAL \produto_escolhido[3]~input_o\ : std_logic;
SIGNAL \produto_escolhido[2]~input_o\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \U3|Add5~6_combout\ : std_logic;
SIGNAL \U3|Add5~5\ : std_logic;
SIGNAL \U3|Add5~7_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \total_inserido[0]~input_o\ : std_logic;
SIGNAL \troco_armazenado[0]~input_o\ : std_logic;
SIGNAL \produto_escolhido[0]~input_o\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \U3|temp~12_combout\ : std_logic;
SIGNAL \U3|temp~16_combout\ : std_logic;
SIGNAL \U3|temp~15_combout\ : std_logic;
SIGNAL \U3|LessThan0~0_combout\ : std_logic;
SIGNAL \U3|temp~13_combout\ : std_logic;
SIGNAL \U3|temp~2_combout\ : std_logic;
SIGNAL \U3|temp~17_combout\ : std_logic;
SIGNAL \U3|LessThan4~0_combout\ : std_logic;
SIGNAL \U3|temp~14_combout\ : std_logic;
SIGNAL \U3|LessThan6~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \U1|LessThan2~0_combout\ : std_logic;
SIGNAL \U1|LessThan4~0_combout\ : std_logic;
SIGNAL \U1|temp~16_combout\ : std_logic;
SIGNAL \U1|temp~5_combout\ : std_logic;
SIGNAL \U1|temp~15_combout\ : std_logic;
SIGNAL \U1|temp~2_combout\ : std_logic;
SIGNAL \U1|temp~17_combout\ : std_logic;
SIGNAL \U1|LessThan6~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \U1|LessThan3~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \U3|Add5~9_combout\ : std_logic;
SIGNAL \U3|Add5~8\ : std_logic;
SIGNAL \U3|Add5~10_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \U3|Add6~6_combout\ : std_logic;
SIGNAL \U3|Add6~0_combout\ : std_logic;
SIGNAL \U3|Add6~1_combout\ : std_logic;
SIGNAL \U3|Add6~3_cout\ : std_logic;
SIGNAL \U3|Add6~5\ : std_logic;
SIGNAL \U3|Add6~7_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \U3|Add6~4_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \U3|Add6~9_combout\ : std_logic;
SIGNAL \U3|Add6~8\ : std_logic;
SIGNAL \U3|Add6~10_combout\ : std_logic;
SIGNAL \U3|Add6~12_combout\ : std_logic;
SIGNAL \U3|Add6~13_combout\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \Mux35~2_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Mux52~1_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux37~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux50~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux52~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_estado_fsm <= estado_fsm;
ww_total_inserido <= total_inserido;
ww_troco_armazenado <= troco_armazenado;
ww_produto_escolhido <= produto_escolhido;
ww_preco_produto <= preco_produto;
display_segments <= ww_display_segments;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_Mux35~2_combout\ <= NOT \Mux35~2_combout\;
\ALT_INV_Mux36~2_combout\ <= NOT \Mux36~2_combout\;
\ALT_INV_Mux37~2_combout\ <= NOT \Mux37~2_combout\;
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_Mux50~0_combout\ <= NOT \Mux50~0_combout\;
\ALT_INV_Mux52~0_combout\ <= NOT \Mux52~0_combout\;
\ALT_INV_Mux32~0_combout\ <= NOT \Mux32~0_combout\;
\ALT_INV_Mux34~0_combout\ <= NOT \Mux34~0_combout\;
\ALT_INV_Mux25~0_combout\ <= NOT \Mux25~0_combout\;
\ALT_INV_Mux18~0_combout\ <= NOT \Mux18~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y46_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N30
\display_segments[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\display_segments[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\display_segments[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\display_segments[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[3]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\display_segments[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\display_segments[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[5]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\display_segments[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux18~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\display_segments[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[7]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\display_segments[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[8]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\display_segments[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[9]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\display_segments[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[10]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\display_segments[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[11]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\display_segments[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[12]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\display_segments[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux25~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[13]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\display_segments[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux38~2_combout\,
	devoe => ww_devoe,
	o => \display_segments[14]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\display_segments[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux37~2_combout\,
	devoe => ww_devoe,
	o => \display_segments[15]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\display_segments[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux36~2_combout\,
	devoe => ww_devoe,
	o => \display_segments[16]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\display_segments[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux35~2_combout\,
	devoe => ww_devoe,
	o => \display_segments[17]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\display_segments[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux34~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[18]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\display_segments[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[19]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\display_segments[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux32~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[20]~output_o\);

-- Location: IOOBUF_X78_Y42_N23
\display_segments[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_segments[21]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\display_segments[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_segments[22]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\display_segments[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_segments[23]~output_o\);

-- Location: IOOBUF_X78_Y21_N16
\display_segments[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_segments[24]~output_o\);

-- Location: IOOBUF_X78_Y31_N9
\display_segments[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_segments[25]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\display_segments[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_segments[26]~output_o\);

-- Location: IOOBUF_X78_Y3_N9
\display_segments[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_segments[27]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\display_segments[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux52~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[28]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\display_segments[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux52~1_combout\,
	devoe => ww_devoe,
	o => \display_segments[29]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\display_segments[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux50~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[30]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\display_segments[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux3~1_combout\,
	devoe => ww_devoe,
	o => \display_segments[31]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\display_segments[32]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux48~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[32]~output_o\);

-- Location: IOOBUF_X78_Y44_N16
\display_segments[33]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux48~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[33]~output_o\);

-- Location: IOOBUF_X78_Y45_N16
\display_segments[34]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux52~1_combout\,
	devoe => ww_devoe,
	o => \display_segments[34]~output_o\);

-- Location: IOOBUF_X78_Y45_N2
\display_segments[35]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux54~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[35]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\display_segments[36]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux3~1_combout\,
	devoe => ww_devoe,
	o => \display_segments[36]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\display_segments[37]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_segments[37]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\display_segments[38]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux56~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[38]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\display_segments[39]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux55~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[39]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\display_segments[40]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux55~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[40]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\display_segments[41]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux55~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[41]~output_o\);

-- Location: IOIBUF_X66_Y54_N22
\estado_fsm[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estado_fsm(0),
	o => \estado_fsm[0]~input_o\);

-- Location: IOIBUF_X49_Y54_N29
\troco_armazenado[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_troco_armazenado(2),
	o => \troco_armazenado[2]~input_o\);

-- Location: IOIBUF_X46_Y54_N22
\troco_armazenado[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_troco_armazenado(5),
	o => \troco_armazenado[5]~input_o\);

-- Location: IOIBUF_X66_Y54_N1
\troco_armazenado[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_troco_armazenado(4),
	o => \troco_armazenado[4]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\troco_armazenado[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_troco_armazenado(6),
	o => \troco_armazenado[6]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\troco_armazenado[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_troco_armazenado(7),
	o => \troco_armazenado[7]~input_o\);

-- Location: LCCOMB_X54_Y50_N26
\U3|temp~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~4_combout\ = (\troco_armazenado[4]~input_o\ & (\troco_armazenado[6]~input_o\ $ (((\troco_armazenado[5]~input_o\) # (!\troco_armazenado[7]~input_o\))))) # (!\troco_armazenado[4]~input_o\ & ((\troco_armazenado[5]~input_o\ & 
-- (\troco_armazenado[6]~input_o\ & !\troco_armazenado[7]~input_o\)) # (!\troco_armazenado[5]~input_o\ & (!\troco_armazenado[6]~input_o\ & \troco_armazenado[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \troco_armazenado[5]~input_o\,
	datab => \troco_armazenado[4]~input_o\,
	datac => \troco_armazenado[6]~input_o\,
	datad => \troco_armazenado[7]~input_o\,
	combout => \U3|temp~4_combout\);

-- Location: LCCOMB_X54_Y50_N28
\U3|temp~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~5_combout\ = (\troco_armazenado[5]~input_o\ & (!\troco_armazenado[7]~input_o\ & ((\troco_armazenado[4]~input_o\) # (!\troco_armazenado[6]~input_o\)))) # (!\troco_armazenado[5]~input_o\ & (\troco_armazenado[7]~input_o\ & 
-- ((\troco_armazenado[6]~input_o\) # (!\troco_armazenado[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \troco_armazenado[5]~input_o\,
	datab => \troco_armazenado[4]~input_o\,
	datac => \troco_armazenado[6]~input_o\,
	datad => \troco_armazenado[7]~input_o\,
	combout => \U3|temp~5_combout\);

-- Location: LCCOMB_X54_Y50_N8
\U3|temp~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~3_combout\ = (\troco_armazenado[4]~input_o\ & (!\troco_armazenado[5]~input_o\ & (!\troco_armazenado[6]~input_o\ & \troco_armazenado[7]~input_o\))) # (!\troco_armazenado[4]~input_o\ & (\troco_armazenado[6]~input_o\ & (\troco_armazenado[5]~input_o\ 
-- $ (!\troco_armazenado[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \troco_armazenado[5]~input_o\,
	datab => \troco_armazenado[4]~input_o\,
	datac => \troco_armazenado[6]~input_o\,
	datad => \troco_armazenado[7]~input_o\,
	combout => \U3|temp~3_combout\);

-- Location: IOIBUF_X54_Y54_N8
\troco_armazenado[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_troco_armazenado(3),
	o => \troco_armazenado[3]~input_o\);

-- Location: LCCOMB_X54_Y50_N16
\U3|temp~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~7_combout\ = (\U3|temp~5_combout\ & (!\troco_armazenado[3]~input_o\ & ((\U3|temp~4_combout\) # (\U3|temp~3_combout\)))) # (!\U3|temp~5_combout\ & ((\U3|temp~3_combout\ $ (\troco_armazenado[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~4_combout\,
	datab => \U3|temp~5_combout\,
	datac => \U3|temp~3_combout\,
	datad => \troco_armazenado[3]~input_o\,
	combout => \U3|temp~7_combout\);

-- Location: LCCOMB_X54_Y50_N14
\U3|temp~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~6_combout\ = (\U3|temp~5_combout\ & (!\U3|temp~4_combout\ & ((!\troco_armazenado[3]~input_o\)))) # (!\U3|temp~5_combout\ & (\U3|temp~3_combout\ & ((\U3|temp~4_combout\) # (\troco_armazenado[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~4_combout\,
	datab => \U3|temp~5_combout\,
	datac => \U3|temp~3_combout\,
	datad => \troco_armazenado[3]~input_o\,
	combout => \U3|temp~6_combout\);

-- Location: LCCOMB_X54_Y50_N18
\U3|temp~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~8_combout\ = (\U3|temp~4_combout\ & ((\troco_armazenado[3]~input_o\) # ((!\U3|temp~5_combout\ & !\U3|temp~3_combout\)))) # (!\U3|temp~4_combout\ & (((\U3|temp~3_combout\ & !\troco_armazenado[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~4_combout\,
	datab => \U3|temp~5_combout\,
	datac => \U3|temp~3_combout\,
	datad => \troco_armazenado[3]~input_o\,
	combout => \U3|temp~8_combout\);

-- Location: LCCOMB_X54_Y50_N0
\U3|temp~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~11_combout\ = (\troco_armazenado[2]~input_o\ & (((!\U3|temp~6_combout\ & !\U3|temp~8_combout\)))) # (!\troco_armazenado[2]~input_o\ & ((\U3|temp~6_combout\) # ((\U3|temp~7_combout\ & \U3|temp~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \troco_armazenado[2]~input_o\,
	datab => \U3|temp~7_combout\,
	datac => \U3|temp~6_combout\,
	datad => \U3|temp~8_combout\,
	combout => \U3|temp~11_combout\);

-- Location: IOIBUF_X56_Y54_N1
\total_inserido[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_inserido(6),
	o => \total_inserido[6]~input_o\);

-- Location: IOIBUF_X58_Y54_N15
\total_inserido[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_inserido(4),
	o => \total_inserido[4]~input_o\);

-- Location: IOIBUF_X62_Y54_N29
\total_inserido[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_inserido(7),
	o => \total_inserido[7]~input_o\);

-- Location: IOIBUF_X64_Y54_N1
\total_inserido[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_inserido(5),
	o => \total_inserido[5]~input_o\);

-- Location: LCCOMB_X60_Y50_N10
\U1|temp~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~8_combout\ = (\total_inserido[6]~input_o\ & ((\total_inserido[4]~input_o\ & (\total_inserido[7]~input_o\ & !\total_inserido[5]~input_o\)) # (!\total_inserido[4]~input_o\ & (!\total_inserido[7]~input_o\ & \total_inserido[5]~input_o\)))) # 
-- (!\total_inserido[6]~input_o\ & (\total_inserido[4]~input_o\ $ (((\total_inserido[7]~input_o\ & !\total_inserido[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[6]~input_o\,
	datab => \total_inserido[4]~input_o\,
	datac => \total_inserido[7]~input_o\,
	datad => \total_inserido[5]~input_o\,
	combout => \U1|temp~8_combout\);

-- Location: LCCOMB_X60_Y50_N24
\U1|temp~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~7_combout\ = (\total_inserido[6]~input_o\ & (!\total_inserido[4]~input_o\ & (\total_inserido[7]~input_o\ $ (!\total_inserido[5]~input_o\)))) # (!\total_inserido[6]~input_o\ & (\total_inserido[4]~input_o\ & (\total_inserido[7]~input_o\ & 
-- !\total_inserido[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[6]~input_o\,
	datab => \total_inserido[4]~input_o\,
	datac => \total_inserido[7]~input_o\,
	datad => \total_inserido[5]~input_o\,
	combout => \U1|temp~7_combout\);

-- Location: LCCOMB_X60_Y50_N20
\U1|temp~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~9_combout\ = (\total_inserido[7]~input_o\ & (!\total_inserido[5]~input_o\ & ((\total_inserido[6]~input_o\) # (!\total_inserido[4]~input_o\)))) # (!\total_inserido[7]~input_o\ & (\total_inserido[5]~input_o\ & ((\total_inserido[4]~input_o\) # 
-- (!\total_inserido[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[6]~input_o\,
	datab => \total_inserido[4]~input_o\,
	datac => \total_inserido[7]~input_o\,
	datad => \total_inserido[5]~input_o\,
	combout => \U1|temp~9_combout\);

-- Location: IOIBUF_X60_Y54_N8
\total_inserido[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_inserido(3),
	o => \total_inserido[3]~input_o\);

-- Location: LCCOMB_X60_Y50_N6
\U1|temp~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~10_combout\ = (\U1|temp~9_combout\ & (!\U1|temp~8_combout\ & ((!\total_inserido[3]~input_o\)))) # (!\U1|temp~9_combout\ & (\U1|temp~7_combout\ & ((\U1|temp~8_combout\) # (\total_inserido[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|temp~8_combout\,
	datab => \U1|temp~7_combout\,
	datac => \U1|temp~9_combout\,
	datad => \total_inserido[3]~input_o\,
	combout => \U1|temp~10_combout\);

-- Location: LCCOMB_X60_Y50_N0
\U1|temp~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~11_combout\ = (\U1|temp~7_combout\ & (((!\total_inserido[3]~input_o\)))) # (!\U1|temp~7_combout\ & ((\U1|temp~9_combout\ & (\U1|temp~8_combout\ & !\total_inserido[3]~input_o\)) # (!\U1|temp~9_combout\ & ((\total_inserido[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|temp~8_combout\,
	datab => \U1|temp~7_combout\,
	datac => \U1|temp~9_combout\,
	datad => \total_inserido[3]~input_o\,
	combout => \U1|temp~11_combout\);

-- Location: LCCOMB_X60_Y50_N26
\U1|temp~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~12_combout\ = (\U1|temp~8_combout\ & ((\total_inserido[3]~input_o\) # ((!\U1|temp~7_combout\ & !\U1|temp~9_combout\)))) # (!\U1|temp~8_combout\ & (\U1|temp~7_combout\ & ((!\total_inserido[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|temp~8_combout\,
	datab => \U1|temp~7_combout\,
	datac => \U1|temp~9_combout\,
	datad => \total_inserido[3]~input_o\,
	combout => \U1|temp~12_combout\);

-- Location: IOIBUF_X66_Y54_N29
\total_inserido[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_inserido(2),
	o => \total_inserido[2]~input_o\);

-- Location: LCCOMB_X60_Y50_N16
\U1|temp~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~14_combout\ = (\U1|temp~10_combout\ & (((!\total_inserido[2]~input_o\)))) # (!\U1|temp~10_combout\ & ((\U1|temp~12_combout\ & (\U1|temp~11_combout\ & !\total_inserido[2]~input_o\)) # (!\U1|temp~12_combout\ & ((\total_inserido[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|temp~10_combout\,
	datab => \U1|temp~11_combout\,
	datac => \U1|temp~12_combout\,
	datad => \total_inserido[2]~input_o\,
	combout => \U1|temp~14_combout\);

-- Location: IOIBUF_X78_Y49_N22
\estado_fsm[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estado_fsm(1),
	o => \estado_fsm[1]~input_o\);

-- Location: LCCOMB_X56_Y50_N14
\U3|Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add5~0_combout\ = (\estado_fsm[1]~input_o\ & (\U3|temp~11_combout\)) # (!\estado_fsm[1]~input_o\ & ((\U1|temp~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~11_combout\,
	datab => \U1|temp~14_combout\,
	datad => \estado_fsm[1]~input_o\,
	combout => \U3|Add5~0_combout\);

-- Location: IOIBUF_X56_Y54_N15
\total_inserido[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_inserido(1),
	o => \total_inserido[1]~input_o\);

-- Location: IOIBUF_X49_Y54_N22
\troco_armazenado[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_troco_armazenado(1),
	o => \troco_armazenado[1]~input_o\);

-- Location: LCCOMB_X55_Y50_N28
\U3|Add5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add5~1_combout\ = (\estado_fsm[1]~input_o\ & ((\troco_armazenado[1]~input_o\))) # (!\estado_fsm[1]~input_o\ & (\total_inserido[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[1]~input_o\,
	datab => \troco_armazenado[1]~input_o\,
	datac => \estado_fsm[1]~input_o\,
	combout => \U3|Add5~1_combout\);

-- Location: LCCOMB_X56_Y50_N16
\U3|Add5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add5~3_cout\ = CARRY((!\estado_fsm[0]~input_o\ & \U3|Add5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[0]~input_o\,
	datab => \U3|Add5~1_combout\,
	datad => VCC,
	cout => \U3|Add5~3_cout\);

-- Location: LCCOMB_X56_Y50_N18
\U3|Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add5~4_combout\ = (\estado_fsm[0]~input_o\ & ((\U3|Add5~0_combout\ & (!\U3|Add5~3_cout\)) # (!\U3|Add5~0_combout\ & ((\U3|Add5~3_cout\) # (GND))))) # (!\estado_fsm[0]~input_o\ & ((\U3|Add5~0_combout\ & (\U3|Add5~3_cout\ & VCC)) # (!\U3|Add5~0_combout\ 
-- & (!\U3|Add5~3_cout\))))
-- \U3|Add5~5\ = CARRY((\estado_fsm[0]~input_o\ & ((!\U3|Add5~3_cout\) # (!\U3|Add5~0_combout\))) # (!\estado_fsm[0]~input_o\ & (!\U3|Add5~0_combout\ & !\U3|Add5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[0]~input_o\,
	datab => \U3|Add5~0_combout\,
	datad => VCC,
	cin => \U3|Add5~3_cout\,
	combout => \U3|Add5~4_combout\,
	cout => \U3|Add5~5\);

-- Location: LCCOMB_X54_Y50_N20
\U3|temp~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~9_combout\ = (\U3|temp~8_combout\ & (!\troco_armazenado[2]~input_o\ & (!\U3|temp~7_combout\))) # (!\U3|temp~8_combout\ & (\U3|temp~6_combout\ & ((\troco_armazenado[2]~input_o\) # (\U3|temp~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \troco_armazenado[2]~input_o\,
	datab => \U3|temp~7_combout\,
	datac => \U3|temp~6_combout\,
	datad => \U3|temp~8_combout\,
	combout => \U3|temp~9_combout\);

-- Location: LCCOMB_X54_Y50_N6
\U3|temp~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~10_combout\ = (\troco_armazenado[2]~input_o\ & (\U3|temp~7_combout\)) # (!\troco_armazenado[2]~input_o\ & ((\U3|temp~7_combout\ & (!\U3|temp~6_combout\ & !\U3|temp~8_combout\)) # (!\U3|temp~7_combout\ & (\U3|temp~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \troco_armazenado[2]~input_o\,
	datab => \U3|temp~7_combout\,
	datac => \U3|temp~6_combout\,
	datad => \U3|temp~8_combout\,
	combout => \U3|temp~10_combout\);

-- Location: LCCOMB_X56_Y50_N12
\U3|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|LessThan5~0_combout\ = (\U3|temp~9_combout\) # ((\U3|temp~10_combout\ & ((\U3|temp~11_combout\) # (\troco_armazenado[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~11_combout\,
	datab => \U3|temp~9_combout\,
	datac => \troco_armazenado[1]~input_o\,
	datad => \U3|temp~10_combout\,
	combout => \U3|LessThan5~0_combout\);

-- Location: LCCOMB_X60_Y50_N14
\U1|temp~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~13_combout\ = (\U1|temp~10_combout\ & (\U1|temp~11_combout\ $ (((!\total_inserido[2]~input_o\))))) # (!\U1|temp~10_combout\ & (\U1|temp~11_combout\ & ((\total_inserido[2]~input_o\) # (!\U1|temp~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|temp~10_combout\,
	datab => \U1|temp~11_combout\,
	datac => \U1|temp~12_combout\,
	datad => \total_inserido[2]~input_o\,
	combout => \U1|temp~13_combout\);

-- Location: LCCOMB_X60_Y50_N4
\U1|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan5~0_combout\ = (\U1|temp~12_combout\ & (((!\U1|temp~11_combout\ & !\total_inserido[2]~input_o\)))) # (!\U1|temp~12_combout\ & (\U1|temp~10_combout\ & ((\U1|temp~11_combout\) # (\total_inserido[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|temp~10_combout\,
	datab => \U1|temp~11_combout\,
	datac => \U1|temp~12_combout\,
	datad => \total_inserido[2]~input_o\,
	combout => \U1|LessThan5~0_combout\);

-- Location: LCCOMB_X56_Y50_N8
\U1|LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan5~1_combout\ = (\U1|LessThan5~0_combout\) # ((\U1|temp~13_combout\ & ((\total_inserido[1]~input_o\) # (\U1|temp~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[1]~input_o\,
	datab => \U1|temp~13_combout\,
	datac => \U1|LessThan5~0_combout\,
	datad => \U1|temp~14_combout\,
	combout => \U1|LessThan5~1_combout\);

-- Location: IOIBUF_X71_Y54_N29
\estado_fsm[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estado_fsm(2),
	o => \estado_fsm[2]~input_o\);

-- Location: LCCOMB_X56_Y50_N26
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\estado_fsm[1]~input_o\ & (\U3|LessThan5~0_combout\ & ((\estado_fsm[2]~input_o\)))) # (!\estado_fsm[1]~input_o\ & (((\U1|LessThan5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|LessThan5~0_combout\,
	datab => \U1|LessThan5~1_combout\,
	datac => \estado_fsm[2]~input_o\,
	datad => \estado_fsm[1]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X56_Y50_N0
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\estado_fsm[1]~input_o\ & ((\U3|temp~11_combout\) # ((!\estado_fsm[2]~input_o\)))) # (!\estado_fsm[1]~input_o\ & (((\U1|temp~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~11_combout\,
	datab => \U1|temp~14_combout\,
	datac => \estado_fsm[2]~input_o\,
	datad => \estado_fsm[1]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X56_Y50_N4
\Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (!\estado_fsm[0]~input_o\ & ((\Mux13~0_combout\ & (\U3|Add5~4_combout\)) # (!\Mux13~0_combout\ & ((\Mux15~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[0]~input_o\,
	datab => \U3|Add5~4_combout\,
	datac => \Mux13~0_combout\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: IOIBUF_X56_Y54_N22
\produto_escolhido[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_produto_escolhido(1),
	o => \produto_escolhido[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\produto_escolhido[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_produto_escolhido(3),
	o => \produto_escolhido[3]~input_o\);

-- Location: IOIBUF_X56_Y54_N29
\produto_escolhido[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_produto_escolhido(2),
	o => \produto_escolhido[2]~input_o\);

-- Location: LCCOMB_X55_Y50_N14
\Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\produto_escolhido[2]~input_o\ & ((\produto_escolhido[1]~input_o\) # (!\produto_escolhido[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \produto_escolhido[1]~input_o\,
	datac => \produto_escolhido[3]~input_o\,
	datad => \produto_escolhido[2]~input_o\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X59_Y50_N0
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\estado_fsm[2]~input_o\ & \estado_fsm[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_fsm[2]~input_o\,
	datac => \estado_fsm[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X55_Y50_N24
\Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux15~1_combout\) # ((\estado_fsm[0]~input_o\ & ((\Mux15~2_combout\) # (!\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \Mux15~2_combout\,
	datac => \Mux3~0_combout\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X56_Y50_N2
\Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (!\estado_fsm[0]~input_o\ & (!\estado_fsm[1]~input_o\ & (\U1|LessThan5~1_combout\ $ (\total_inserido[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[0]~input_o\,
	datab => \U1|LessThan5~1_combout\,
	datac => \total_inserido[1]~input_o\,
	datad => \estado_fsm[1]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X55_Y50_N16
\Mux16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = ((\produto_escolhido[1]~input_o\ & (!\produto_escolhido[3]~input_o\)) # (!\produto_escolhido[1]~input_o\ & (\produto_escolhido[3]~input_o\ & \produto_escolhido[2]~input_o\))) # (!\Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \produto_escolhido[1]~input_o\,
	datac => \produto_escolhido[3]~input_o\,
	datad => \produto_escolhido[2]~input_o\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X55_Y50_N12
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\estado_fsm[1]~input_o\ & !\estado_fsm[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_fsm[1]~input_o\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X55_Y50_N22
\Mux16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux0~0_combout\ & ((\troco_armazenado[1]~input_o\ $ (\U3|LessThan5~0_combout\)) # (!\estado_fsm[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \troco_armazenado[1]~input_o\,
	datac => \U3|LessThan5~0_combout\,
	datad => \estado_fsm[2]~input_o\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X55_Y50_N26
\Mux16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\Mux16~0_combout\) # ((\Mux16~1_combout\) # ((\Mux16~2_combout\ & \estado_fsm[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datab => \Mux16~2_combout\,
	datac => \Mux16~1_combout\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X56_Y50_N6
\U3|Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add5~6_combout\ = (\estado_fsm[1]~input_o\ & (\U3|temp~10_combout\)) # (!\estado_fsm[1]~input_o\ & ((\U1|temp~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~10_combout\,
	datac => \U1|temp~13_combout\,
	datad => \estado_fsm[1]~input_o\,
	combout => \U3|Add5~6_combout\);

-- Location: LCCOMB_X56_Y50_N20
\U3|Add5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add5~7_combout\ = (\U3|Add5~6_combout\ & (\U3|Add5~5\ $ (GND))) # (!\U3|Add5~6_combout\ & (!\U3|Add5~5\ & VCC))
-- \U3|Add5~8\ = CARRY((\U3|Add5~6_combout\ & !\U3|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Add5~6_combout\,
	datad => VCC,
	cin => \U3|Add5~5\,
	combout => \U3|Add5~7_combout\,
	cout => \U3|Add5~8\);

-- Location: LCCOMB_X56_Y50_N24
\Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\estado_fsm[1]~input_o\ & (((\U3|Add5~7_combout\)))) # (!\estado_fsm[1]~input_o\ & ((\U1|LessThan5~1_combout\ & ((\U3|Add5~7_combout\))) # (!\U1|LessThan5~1_combout\ & (\U1|temp~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[1]~input_o\,
	datab => \U1|LessThan5~1_combout\,
	datac => \U1|temp~13_combout\,
	datad => \U3|Add5~7_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X55_Y50_N6
\Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux14~2_combout\ & ((\U3|LessThan5~0_combout\) # (!\estado_fsm[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|LessThan5~0_combout\,
	datac => \estado_fsm[1]~input_o\,
	datad => \Mux14~2_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X55_Y50_N20
\Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux0~0_combout\ & (((\U3|temp~10_combout\ & !\U3|LessThan5~0_combout\)) # (!\estado_fsm[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \U3|temp~10_combout\,
	datac => \U3|LessThan5~0_combout\,
	datad => \estado_fsm[2]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X55_Y50_N10
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ((!\produto_escolhido[1]~input_o\ & (\produto_escolhido[3]~input_o\ & !\produto_escolhido[2]~input_o\))) # (!\Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \produto_escolhido[1]~input_o\,
	datac => \produto_escolhido[3]~input_o\,
	datad => \produto_escolhido[2]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X55_Y50_N8
\Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\Mux14~1_combout\) # ((\estado_fsm[0]~input_o\ & ((\Mux14~0_combout\))) # (!\estado_fsm[0]~input_o\ & (\Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~3_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux14~0_combout\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux14~4_combout\);

-- Location: IOIBUF_X54_Y54_N1
\total_inserido[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_inserido(0),
	o => \total_inserido[0]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\troco_armazenado[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_troco_armazenado(0),
	o => \troco_armazenado[0]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\produto_escolhido[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_produto_escolhido(0),
	o => \produto_escolhido[0]~input_o\);

-- Location: LCCOMB_X55_Y50_N0
\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\estado_fsm[0]~input_o\ & (((\produto_escolhido[0]~input_o\) # (\estado_fsm[2]~input_o\)))) # (!\estado_fsm[0]~input_o\ & (!\troco_armazenado[0]~input_o\ & ((\estado_fsm[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[0]~input_o\,
	datab => \troco_armazenado[0]~input_o\,
	datac => \produto_escolhido[0]~input_o\,
	datad => \estado_fsm[2]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X55_Y50_N18
\Mux17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\estado_fsm[1]~input_o\ & (\estado_fsm[0]~input_o\ $ (((!\Mux17~0_combout\))))) # (!\estado_fsm[1]~input_o\ & ((\estado_fsm[0]~input_o\) # ((\total_inserido[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[0]~input_o\,
	datab => \total_inserido[0]~input_o\,
	datac => \estado_fsm[1]~input_o\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X51_Y53_N0
\Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\Mux16~3_combout\ & (\Mux14~4_combout\ & ((\Mux17~1_combout\) # (!\Mux15~3_combout\)))) # (!\Mux16~3_combout\ & (!\Mux14~4_combout\ & (\Mux15~3_combout\ $ (\Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~3_combout\,
	datab => \Mux16~3_combout\,
	datac => \Mux14~4_combout\,
	datad => \Mux17~1_combout\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X51_Y53_N18
\Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\Mux15~3_combout\ & (\Mux17~1_combout\ $ (((\Mux16~3_combout\ & !\Mux14~4_combout\))))) # (!\Mux15~3_combout\ & (\Mux16~3_combout\ & (\Mux14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~3_combout\,
	datab => \Mux16~3_combout\,
	datac => \Mux14~4_combout\,
	datad => \Mux17~1_combout\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X51_Y53_N4
\Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Mux16~3_combout\ & ((\Mux17~1_combout\ & ((\Mux14~4_combout\))) # (!\Mux17~1_combout\ & (!\Mux15~3_combout\)))) # (!\Mux16~3_combout\ & (\Mux15~3_combout\ & (\Mux14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~3_combout\,
	datab => \Mux16~3_combout\,
	datac => \Mux14~4_combout\,
	datad => \Mux17~1_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X51_Y53_N14
\Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Mux15~3_combout\ & ((\Mux16~3_combout\ & ((\Mux14~4_combout\) # (\Mux17~1_combout\))) # (!\Mux16~3_combout\ & ((!\Mux17~1_combout\))))) # (!\Mux15~3_combout\ & (!\Mux16~3_combout\ & (!\Mux14~4_combout\ & \Mux17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~3_combout\,
	datab => \Mux16~3_combout\,
	datac => \Mux14~4_combout\,
	datad => \Mux17~1_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X51_Y53_N8
\Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mux15~3_combout\ & ((\Mux16~3_combout\ & ((\Mux17~1_combout\))) # (!\Mux16~3_combout\ & (!\Mux14~4_combout\)))) # (!\Mux15~3_combout\ & (\Mux17~1_combout\ & ((!\Mux14~4_combout\) # (!\Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~3_combout\,
	datab => \Mux16~3_combout\,
	datac => \Mux14~4_combout\,
	datad => \Mux17~1_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X51_Y53_N26
\Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Mux15~3_combout\ & (\Mux16~3_combout\ & ((\Mux17~1_combout\)))) # (!\Mux15~3_combout\ & (!\Mux14~4_combout\ & ((\Mux16~3_combout\) # (\Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~3_combout\,
	datab => \Mux16~3_combout\,
	datac => \Mux14~4_combout\,
	datad => \Mux17~1_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X51_Y53_N28
\Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux15~3_combout\ & (((!\Mux17~1_combout\)) # (!\Mux16~3_combout\))) # (!\Mux15~3_combout\ & ((\Mux16~3_combout\ & ((\Mux17~1_combout\) # (!\Mux14~4_combout\))) # (!\Mux16~3_combout\ & (\Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~3_combout\,
	datab => \Mux16~3_combout\,
	datac => \Mux14~4_combout\,
	datad => \Mux17~1_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X54_Y50_N10
\U3|temp~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~12_combout\ = \U3|temp~6_combout\ $ ((((!\troco_armazenado[2]~input_o\ & !\U3|temp~7_combout\)) # (!\U3|temp~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \troco_armazenado[2]~input_o\,
	datab => \U3|temp~7_combout\,
	datac => \U3|temp~6_combout\,
	datad => \U3|temp~8_combout\,
	combout => \U3|temp~12_combout\);

-- Location: LCCOMB_X54_Y50_N12
\U3|temp~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~16_combout\ = (\troco_armazenado[5]~input_o\ & (\troco_armazenado[6]~input_o\ & ((\troco_armazenado[4]~input_o\) # (!\troco_armazenado[7]~input_o\)))) # (!\troco_armazenado[5]~input_o\ & ((\troco_armazenado[6]~input_o\ & 
-- (\troco_armazenado[4]~input_o\ & !\troco_armazenado[7]~input_o\)) # (!\troco_armazenado[6]~input_o\ & ((\troco_armazenado[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \troco_armazenado[5]~input_o\,
	datab => \troco_armazenado[4]~input_o\,
	datac => \troco_armazenado[6]~input_o\,
	datad => \troco_armazenado[7]~input_o\,
	combout => \U3|temp~16_combout\);

-- Location: LCCOMB_X54_Y50_N2
\U3|temp~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~15_combout\ = \U3|temp~3_combout\ $ ((((!\U3|temp~4_combout\ & !\troco_armazenado[3]~input_o\)) # (!\U3|temp~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~4_combout\,
	datab => \U3|temp~5_combout\,
	datac => \U3|temp~3_combout\,
	datad => \troco_armazenado[3]~input_o\,
	combout => \U3|temp~15_combout\);

-- Location: LCCOMB_X54_Y50_N24
\U3|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|LessThan0~0_combout\ = (\troco_armazenado[5]~input_o\) # (\troco_armazenado[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \troco_armazenado[5]~input_o\,
	datac => \troco_armazenado[6]~input_o\,
	combout => \U3|LessThan0~0_combout\);

-- Location: LCCOMB_X54_Y50_N4
\U3|temp~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~13_combout\ = (\U3|temp~16_combout\ & (((!\troco_armazenado[7]~input_o\) # (!\U3|LessThan0~0_combout\)) # (!\U3|temp~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~16_combout\,
	datab => \U3|temp~15_combout\,
	datac => \U3|LessThan0~0_combout\,
	datad => \troco_armazenado[7]~input_o\,
	combout => \U3|temp~13_combout\);

-- Location: LCCOMB_X54_Y50_N22
\U3|temp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~2_combout\ = (\troco_armazenado[5]~input_o\ & (!\troco_armazenado[6]~input_o\)) # (!\troco_armazenado[5]~input_o\ & (\troco_armazenado[6]~input_o\ & (!\troco_armazenado[4]~input_o\ & !\troco_armazenado[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \troco_armazenado[5]~input_o\,
	datab => \troco_armazenado[6]~input_o\,
	datac => \troco_armazenado[4]~input_o\,
	datad => \troco_armazenado[3]~input_o\,
	combout => \U3|temp~2_combout\);

-- Location: LCCOMB_X57_Y50_N16
\U3|temp~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~17_combout\ = (\U3|temp~2_combout\ & \troco_armazenado[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|temp~2_combout\,
	datac => \troco_armazenado[7]~input_o\,
	combout => \U3|temp~17_combout\);

-- Location: LCCOMB_X54_Y50_N30
\U3|LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|LessThan4~0_combout\ = (\troco_armazenado[6]~input_o\ & ((\troco_armazenado[5]~input_o\) # ((\troco_armazenado[4]~input_o\) # (\troco_armazenado[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \troco_armazenado[5]~input_o\,
	datab => \troco_armazenado[6]~input_o\,
	datac => \troco_armazenado[4]~input_o\,
	datad => \troco_armazenado[3]~input_o\,
	combout => \U3|LessThan4~0_combout\);

-- Location: LCCOMB_X57_Y50_N8
\U3|temp~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~14_combout\ = \U3|temp~15_combout\ $ (((\U3|LessThan4~0_combout\ & \troco_armazenado[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~15_combout\,
	datab => \U3|LessThan4~0_combout\,
	datac => \troco_armazenado[7]~input_o\,
	combout => \U3|temp~14_combout\);

-- Location: LCCOMB_X58_Y50_N2
\U3|LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|LessThan6~0_combout\ = (\U3|temp~17_combout\) # ((\U3|temp~13_combout\ & ((!\U3|temp~14_combout\) # (!\U3|temp~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~13_combout\,
	datab => \U3|temp~12_combout\,
	datac => \U3|temp~17_combout\,
	datad => \U3|temp~14_combout\,
	combout => \U3|LessThan6~0_combout\);

-- Location: LCCOMB_X59_Y50_N24
\Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux0~0_combout\ & ((\U3|temp~12_combout\ $ (!\U3|LessThan6~0_combout\)) # (!\estado_fsm[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~12_combout\,
	datab => \Mux0~0_combout\,
	datac => \estado_fsm[2]~input_o\,
	datad => \U3|LessThan6~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X60_Y50_N2
\U1|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan2~0_combout\ = (\U1|temp~9_combout\ & ((\U1|temp~8_combout\) # (\total_inserido[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|temp~8_combout\,
	datab => \U1|temp~9_combout\,
	datad => \total_inserido[3]~input_o\,
	combout => \U1|LessThan2~0_combout\);

-- Location: LCCOMB_X60_Y50_N18
\U1|LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan4~0_combout\ = (\total_inserido[6]~input_o\ & ((\total_inserido[3]~input_o\) # ((\total_inserido[4]~input_o\) # (\total_inserido[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[3]~input_o\,
	datab => \total_inserido[4]~input_o\,
	datac => \total_inserido[6]~input_o\,
	datad => \total_inserido[5]~input_o\,
	combout => \U1|LessThan4~0_combout\);

-- Location: LCCOMB_X60_Y50_N12
\U1|temp~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~16_combout\ = \U1|LessThan2~0_combout\ $ (\U1|temp~7_combout\ $ (((!\U1|LessThan4~0_combout\) # (!\total_inserido[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan2~0_combout\,
	datab => \U1|temp~7_combout\,
	datac => \total_inserido[7]~input_o\,
	datad => \U1|LessThan4~0_combout\,
	combout => \U1|temp~16_combout\);

-- Location: LCCOMB_X57_Y50_N30
\U1|temp~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~5_combout\ = (\total_inserido[6]~input_o\ & (!\total_inserido[7]~input_o\ & ((\total_inserido[4]~input_o\) # (\total_inserido[5]~input_o\)))) # (!\total_inserido[6]~input_o\ & (((!\total_inserido[5]~input_o\ & \total_inserido[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[6]~input_o\,
	datab => \total_inserido[4]~input_o\,
	datac => \total_inserido[5]~input_o\,
	datad => \total_inserido[7]~input_o\,
	combout => \U1|temp~5_combout\);

-- Location: LCCOMB_X60_Y50_N8
\U1|temp~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~15_combout\ = \U1|temp~10_combout\ $ ((((!\U1|temp~11_combout\ & !\total_inserido[2]~input_o\)) # (!\U1|temp~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|temp~10_combout\,
	datab => \U1|temp~11_combout\,
	datac => \U1|temp~12_combout\,
	datad => \total_inserido[2]~input_o\,
	combout => \U1|temp~15_combout\);

-- Location: LCCOMB_X60_Y50_N30
\U1|temp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~2_combout\ = (\total_inserido[6]~input_o\ & (!\total_inserido[3]~input_o\ & (!\total_inserido[4]~input_o\ & !\total_inserido[5]~input_o\))) # (!\total_inserido[6]~input_o\ & (((\total_inserido[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[3]~input_o\,
	datab => \total_inserido[4]~input_o\,
	datac => \total_inserido[6]~input_o\,
	datad => \total_inserido[5]~input_o\,
	combout => \U1|temp~2_combout\);

-- Location: LCCOMB_X57_Y50_N20
\U1|temp~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~17_combout\ = (\U1|temp~2_combout\ & \total_inserido[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|temp~2_combout\,
	datad => \total_inserido[7]~input_o\,
	combout => \U1|temp~17_combout\);

-- Location: LCCOMB_X58_Y50_N8
\U1|LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan6~0_combout\ = (\U1|temp~17_combout\) # ((\U1|temp~5_combout\ & ((!\U1|temp~15_combout\) # (!\U1|temp~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|temp~16_combout\,
	datab => \U1|temp~5_combout\,
	datac => \U1|temp~15_combout\,
	datad => \U1|temp~17_combout\,
	combout => \U1|LessThan6~0_combout\);

-- Location: LCCOMB_X59_Y50_N22
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\estado_fsm[1]~input_o\ & (!\estado_fsm[0]~input_o\ & (\U1|LessThan6~0_combout\ $ (!\U1|temp~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan6~0_combout\,
	datab => \U1|temp~15_combout\,
	datac => \estado_fsm[1]~input_o\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X59_Y50_N10
\Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux12~1_combout\) # ((\Mux12~0_combout\) # ((!\Mux3~0_combout\ & \estado_fsm[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux12~0_combout\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X59_Y50_N18
\Mux13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\produto_escolhido[3]~input_o\ & ((\produto_escolhido[1]~input_o\) # (\produto_escolhido[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \produto_escolhido[1]~input_o\,
	datac => \produto_escolhido[3]~input_o\,
	datad => \produto_escolhido[2]~input_o\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X60_Y50_N28
\U1|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan3~0_combout\ = (\total_inserido[2]~input_o\) # (\total_inserido[3]~input_o\ $ (((\U1|temp~7_combout\) # (\U1|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[3]~input_o\,
	datab => \U1|temp~7_combout\,
	datac => \U1|LessThan2~0_combout\,
	datad => \total_inserido[2]~input_o\,
	combout => \U1|LessThan3~0_combout\);

-- Location: LCCOMB_X60_Y50_N22
\Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (!\estado_fsm[1]~input_o\ & ((\U1|LessThan3~0_combout\ & (\U1|temp~10_combout\ & !\U1|temp~12_combout\)) # (!\U1|LessThan3~0_combout\ & ((\U1|temp~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|temp~10_combout\,
	datab => \U1|LessThan3~0_combout\,
	datac => \U1|temp~12_combout\,
	datad => \estado_fsm[1]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X56_Y50_N10
\U3|Add5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add5~9_combout\ = (\Mux13~1_combout\) # ((\U3|temp~9_combout\ & \estado_fsm[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|temp~9_combout\,
	datac => \Mux13~1_combout\,
	datad => \estado_fsm[1]~input_o\,
	combout => \U3|Add5~9_combout\);

-- Location: LCCOMB_X56_Y50_N22
\U3|Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add5~10_combout\ = \U3|Add5~8\ $ (\U3|Add5~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U3|Add5~9_combout\,
	cin => \U3|Add5~8\,
	combout => \U3|Add5~10_combout\);

-- Location: LCCOMB_X56_Y50_N28
\Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux13~1_combout\) # ((\estado_fsm[1]~input_o\ & ((\U3|temp~9_combout\) # (!\estado_fsm[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \U3|temp~9_combout\,
	datac => \estado_fsm[2]~input_o\,
	datad => \estado_fsm[1]~input_o\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X56_Y50_N30
\Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (!\estado_fsm[0]~input_o\ & ((\Mux13~0_combout\ & (\U3|Add5~10_combout\)) # (!\Mux13~0_combout\ & ((\Mux13~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Add5~10_combout\,
	datab => \Mux13~2_combout\,
	datac => \Mux13~0_combout\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X59_Y50_N20
\Mux13~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\Mux13~3_combout\) # ((\estado_fsm[0]~input_o\ & ((\Mux13~4_combout\) # (!\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~4_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux13~3_combout\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X58_Y50_N6
\Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\estado_fsm[1]~input_o\ & ((\U3|temp~13_combout\) # ((!\estado_fsm[2]~input_o\)))) # (!\estado_fsm[1]~input_o\ & (((\U1|temp~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~13_combout\,
	datab => \estado_fsm[2]~input_o\,
	datac => \estado_fsm[1]~input_o\,
	datad => \U1|temp~5_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X58_Y50_N4
\U3|Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add6~6_combout\ = (\estado_fsm[1]~input_o\ & (\U3|temp~13_combout\)) # (!\estado_fsm[1]~input_o\ & ((\U1|temp~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~13_combout\,
	datac => \estado_fsm[1]~input_o\,
	datad => \U1|temp~5_combout\,
	combout => \U3|Add6~6_combout\);

-- Location: LCCOMB_X58_Y50_N12
\U3|Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add6~0_combout\ = (\estado_fsm[1]~input_o\ & (\U3|temp~14_combout\)) # (!\estado_fsm[1]~input_o\ & ((\U1|temp~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~14_combout\,
	datac => \estado_fsm[1]~input_o\,
	datad => \U1|temp~16_combout\,
	combout => \U3|Add6~0_combout\);

-- Location: LCCOMB_X59_Y50_N4
\U3|Add6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add6~1_combout\ = (\estado_fsm[1]~input_o\ & (\U3|temp~12_combout\)) # (!\estado_fsm[1]~input_o\ & ((\U1|temp~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~12_combout\,
	datab => \U1|temp~15_combout\,
	datac => \estado_fsm[1]~input_o\,
	combout => \U3|Add6~1_combout\);

-- Location: LCCOMB_X58_Y50_N20
\U3|Add6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add6~3_cout\ = CARRY((!\U3|Add6~1_combout\ & !\estado_fsm[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Add6~1_combout\,
	datab => \estado_fsm[0]~input_o\,
	datad => VCC,
	cout => \U3|Add6~3_cout\);

-- Location: LCCOMB_X58_Y50_N22
\U3|Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add6~4_combout\ = (\U3|Add6~0_combout\ & ((\estado_fsm[0]~input_o\ & ((\U3|Add6~3_cout\) # (GND))) # (!\estado_fsm[0]~input_o\ & (!\U3|Add6~3_cout\)))) # (!\U3|Add6~0_combout\ & ((\estado_fsm[0]~input_o\ & (!\U3|Add6~3_cout\)) # 
-- (!\estado_fsm[0]~input_o\ & (\U3|Add6~3_cout\ & VCC))))
-- \U3|Add6~5\ = CARRY((\U3|Add6~0_combout\ & ((\estado_fsm[0]~input_o\) # (!\U3|Add6~3_cout\))) # (!\U3|Add6~0_combout\ & (\estado_fsm[0]~input_o\ & !\U3|Add6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Add6~0_combout\,
	datab => \estado_fsm[0]~input_o\,
	datad => VCC,
	cin => \U3|Add6~3_cout\,
	combout => \U3|Add6~4_combout\,
	cout => \U3|Add6~5\);

-- Location: LCCOMB_X58_Y50_N24
\U3|Add6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add6~7_combout\ = (\U3|Add6~6_combout\ & (\U3|Add6~5\ $ (GND))) # (!\U3|Add6~6_combout\ & (!\U3|Add6~5\ & VCC))
-- \U3|Add6~8\ = CARRY((\U3|Add6~6_combout\ & !\U3|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|Add6~6_combout\,
	datad => VCC,
	cin => \U3|Add6~5\,
	combout => \U3|Add6~7_combout\,
	cout => \U3|Add6~8\);

-- Location: LCCOMB_X58_Y50_N0
\Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\estado_fsm[1]~input_o\ & (((\estado_fsm[2]~input_o\ & \U3|LessThan6~0_combout\)))) # (!\estado_fsm[1]~input_o\ & (\U1|LessThan6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan6~0_combout\,
	datab => \estado_fsm[2]~input_o\,
	datac => \estado_fsm[1]~input_o\,
	datad => \U3|LessThan6~0_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X58_Y50_N16
\Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (!\estado_fsm[0]~input_o\ & ((\Mux11~3_combout\ & ((\U3|Add6~7_combout\))) # (!\Mux11~3_combout\ & (\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \U3|Add6~7_combout\,
	datac => \estado_fsm[0]~input_o\,
	datad => \Mux11~3_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X59_Y50_N30
\Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux10~3_combout\) # ((\estado_fsm[0]~input_o\ & ((\estado_fsm[2]~input_o\) # (!\estado_fsm[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~3_combout\,
	datab => \estado_fsm[2]~input_o\,
	datac => \estado_fsm[1]~input_o\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X58_Y50_N30
\Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\estado_fsm[1]~input_o\ & (((!\estado_fsm[2]~input_o\)) # (!\U3|temp~14_combout\))) # (!\estado_fsm[1]~input_o\ & (((!\U1|temp~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~14_combout\,
	datab => \estado_fsm[2]~input_o\,
	datac => \estado_fsm[1]~input_o\,
	datad => \U1|temp~16_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X58_Y50_N10
\Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (!\estado_fsm[0]~input_o\ & ((\Mux11~3_combout\ & ((\U3|Add6~4_combout\))) # (!\Mux11~3_combout\ & (\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~2_combout\,
	datab => \Mux11~3_combout\,
	datac => \U3|Add6~4_combout\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X59_Y50_N12
\Mux11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\Mux11~4_combout\) # ((\estado_fsm[0]~input_o\ & ((\estado_fsm[2]~input_o\) # (!\estado_fsm[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~4_combout\,
	datab => \estado_fsm[2]~input_o\,
	datac => \estado_fsm[1]~input_o\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X59_Y50_N6
\Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\Mux12~2_combout\ & (\Mux10~4_combout\ & ((\Mux13~5_combout\) # (!\Mux11~5_combout\)))) # (!\Mux12~2_combout\ & (!\Mux10~4_combout\ & (\Mux13~5_combout\ $ (\Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Mux13~5_combout\,
	datac => \Mux10~4_combout\,
	datad => \Mux11~5_combout\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X59_Y50_N16
\Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\Mux12~2_combout\ & (\Mux10~4_combout\ $ (((!\Mux13~5_combout\ & \Mux11~5_combout\))))) # (!\Mux12~2_combout\ & (\Mux13~5_combout\ & ((\Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Mux13~5_combout\,
	datac => \Mux10~4_combout\,
	datad => \Mux11~5_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X59_Y50_N26
\Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\Mux12~2_combout\ & ((\Mux13~5_combout\ & (\Mux10~4_combout\)) # (!\Mux13~5_combout\ & ((!\Mux11~5_combout\))))) # (!\Mux12~2_combout\ & (((\Mux10~4_combout\ & \Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Mux13~5_combout\,
	datac => \Mux10~4_combout\,
	datad => \Mux11~5_combout\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X59_Y50_N28
\Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\Mux12~2_combout\ & (\Mux11~5_combout\ & ((\Mux13~5_combout\) # (\Mux10~4_combout\)))) # (!\Mux12~2_combout\ & ((\Mux13~5_combout\ & (!\Mux10~4_combout\ & !\Mux11~5_combout\)) # (!\Mux13~5_combout\ & ((\Mux11~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Mux13~5_combout\,
	datac => \Mux10~4_combout\,
	datad => \Mux11~5_combout\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X59_Y50_N14
\Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Mux12~2_combout\ & (\Mux13~5_combout\ & ((\Mux11~5_combout\) # (!\Mux10~4_combout\)))) # (!\Mux12~2_combout\ & ((\Mux11~5_combout\ & ((!\Mux10~4_combout\))) # (!\Mux11~5_combout\ & (\Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Mux13~5_combout\,
	datac => \Mux10~4_combout\,
	datad => \Mux11~5_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X59_Y50_N8
\Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\Mux11~5_combout\ & (\Mux12~2_combout\ & (\Mux13~5_combout\))) # (!\Mux11~5_combout\ & (!\Mux10~4_combout\ & ((\Mux12~2_combout\) # (\Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Mux13~5_combout\,
	datac => \Mux10~4_combout\,
	datad => \Mux11~5_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X59_Y50_N2
\Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Mux12~2_combout\ & ((\Mux13~5_combout\ & ((!\Mux11~5_combout\))) # (!\Mux13~5_combout\ & ((\Mux11~5_combout\) # (!\Mux10~4_combout\))))) # (!\Mux12~2_combout\ & (((\Mux10~4_combout\) # (\Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Mux13~5_combout\,
	datac => \Mux10~4_combout\,
	datad => \Mux11~5_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X57_Y50_N10
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\estado_fsm[1]~input_o\ & (((\troco_armazenado[7]~input_o\ & \U3|LessThan4~0_combout\)) # (!\estado_fsm[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \troco_armazenado[7]~input_o\,
	datab => \U3|LessThan4~0_combout\,
	datac => \estado_fsm[1]~input_o\,
	datad => \estado_fsm[2]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X57_Y50_N12
\Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\) # ((\U1|LessThan4~0_combout\ & (!\estado_fsm[1]~input_o\ & \total_inserido[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \U1|LessThan4~0_combout\,
	datac => \estado_fsm[1]~input_o\,
	datad => \total_inserido[7]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X58_Y50_N18
\U3|Add6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add6~9_combout\ = (\estado_fsm[1]~input_o\ & (\U3|temp~17_combout\)) # (!\estado_fsm[1]~input_o\ & ((\U1|temp~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~17_combout\,
	datac => \estado_fsm[1]~input_o\,
	datad => \U1|temp~17_combout\,
	combout => \U3|Add6~9_combout\);

-- Location: LCCOMB_X58_Y50_N26
\U3|Add6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add6~10_combout\ = \U3|Add6~8\ $ (\U3|Add6~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U3|Add6~9_combout\,
	cin => \U3|Add6~8\,
	combout => \U3|Add6~10_combout\);

-- Location: LCCOMB_X58_Y50_N28
\U3|Add6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add6~12_combout\ = (\estado_fsm[1]~input_o\ & ((\U3|temp~17_combout\) # ((!\estado_fsm[2]~input_o\)))) # (!\estado_fsm[1]~input_o\ & (((\U1|temp~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~17_combout\,
	datab => \estado_fsm[2]~input_o\,
	datac => \estado_fsm[1]~input_o\,
	datad => \U1|temp~17_combout\,
	combout => \U3|Add6~12_combout\);

-- Location: LCCOMB_X58_Y50_N14
\U3|Add6~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add6~13_combout\ = (\Mux11~3_combout\ & (\U3|Add6~10_combout\)) # (!\Mux11~3_combout\ & ((\U3|Add6~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~3_combout\,
	datac => \U3|Add6~10_combout\,
	datad => \U3|Add6~12_combout\,
	combout => \U3|Add6~13_combout\);

-- Location: LCCOMB_X57_Y50_N28
\Mux38~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux38~2_combout\ = (\estado_fsm[0]~input_o\) # ((\U3|Add6~13_combout\ & (\Mux8~1_combout\ $ (!\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \U3|Add6~13_combout\,
	datac => \Mux3~0_combout\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux38~2_combout\);

-- Location: LCCOMB_X57_Y50_N14
\Mux37~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = (!\estado_fsm[0]~input_o\ & ((\estado_fsm[2]~input_o\) # ((!\estado_fsm[1]~input_o\) # (!\U3|Add6~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[2]~input_o\,
	datab => \U3|Add6~13_combout\,
	datac => \estado_fsm[1]~input_o\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux37~2_combout\);

-- Location: LCCOMB_X57_Y50_N24
\Mux36~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = (!\estado_fsm[0]~input_o\ & (\Mux3~0_combout\ $ (((\U3|Add6~13_combout\) # (!\Mux8~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \U3|Add6~13_combout\,
	datac => \Mux3~0_combout\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux36~2_combout\);

-- Location: LCCOMB_X57_Y50_N18
\Mux35~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux35~2_combout\ = (!\estado_fsm[0]~input_o\ & (\Mux3~0_combout\ $ (((\Mux8~1_combout\) # (!\U3|Add6~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \U3|Add6~13_combout\,
	datac => \Mux3~0_combout\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux35~2_combout\);

-- Location: LCCOMB_X57_Y50_N22
\Mux34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (!\estado_fsm[0]~input_o\ & (((!\Mux8~1_combout\ & \Mux3~0_combout\)) # (!\U3|Add6~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \U3|Add6~13_combout\,
	datac => \Mux3~0_combout\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X57_Y50_N0
\Mux33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\estado_fsm[0]~input_o\) # ((\Mux8~1_combout\ & ((\U3|Add6~13_combout\) # (!\Mux3~0_combout\))) # (!\Mux8~1_combout\ & (\U3|Add6~13_combout\ & !\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \U3|Add6~13_combout\,
	datac => \Mux3~0_combout\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X57_Y50_N26
\Mux32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (!\estado_fsm[0]~input_o\ & ((\Mux8~1_combout\ & ((!\Mux3~0_combout\) # (!\U3|Add6~13_combout\))) # (!\Mux8~1_combout\ & ((\Mux3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \U3|Add6~13_combout\,
	datac => \Mux3~0_combout\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X77_Y49_N16
\Mux52~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (!\estado_fsm[0]~input_o\ & (\estado_fsm[2]~input_o\ $ (!\estado_fsm[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_fsm[0]~input_o\,
	datac => \estado_fsm[2]~input_o\,
	datad => \estado_fsm[1]~input_o\,
	combout => \Mux52~0_combout\);

-- Location: LCCOMB_X77_Y49_N18
\Mux52~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux52~1_combout\ = (\estado_fsm[0]~input_o\) # (\estado_fsm[2]~input_o\ $ (\estado_fsm[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_fsm[0]~input_o\,
	datac => \estado_fsm[2]~input_o\,
	datad => \estado_fsm[1]~input_o\,
	combout => \Mux52~1_combout\);

-- Location: LCCOMB_X77_Y49_N4
\Mux50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (!\estado_fsm[0]~input_o\ & (\estado_fsm[2]~input_o\ & \estado_fsm[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_fsm[0]~input_o\,
	datac => \estado_fsm[2]~input_o\,
	datad => \estado_fsm[1]~input_o\,
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X77_Y49_N30
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\estado_fsm[0]~input_o\ & (!\estado_fsm[2]~input_o\ & \estado_fsm[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_fsm[0]~input_o\,
	datac => \estado_fsm[2]~input_o\,
	datad => \estado_fsm[1]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X77_Y49_N8
\Mux48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (\estado_fsm[0]~input_o\ & ((\estado_fsm[2]~input_o\) # (!\estado_fsm[1]~input_o\))) # (!\estado_fsm[0]~input_o\ & (\estado_fsm[2]~input_o\ $ (\estado_fsm[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_fsm[0]~input_o\,
	datac => \estado_fsm[2]~input_o\,
	datad => \estado_fsm[1]~input_o\,
	combout => \Mux48~0_combout\);

-- Location: LCCOMB_X77_Y49_N26
\Mux54~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (\estado_fsm[0]~input_o\ & ((\estado_fsm[2]~input_o\) # (!\estado_fsm[1]~input_o\))) # (!\estado_fsm[0]~input_o\ & ((\estado_fsm[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_fsm[0]~input_o\,
	datac => \estado_fsm[2]~input_o\,
	datad => \estado_fsm[1]~input_o\,
	combout => \Mux54~0_combout\);

-- Location: LCCOMB_X77_Y49_N12
\Mux56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\estado_fsm[0]~input_o\) # ((!\estado_fsm[2]~input_o\ & \estado_fsm[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_fsm[0]~input_o\,
	datac => \estado_fsm[2]~input_o\,
	datad => \estado_fsm[1]~input_o\,
	combout => \Mux56~0_combout\);

-- Location: LCCOMB_X77_Y49_N22
\Mux55~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = \estado_fsm[0]~input_o\ $ (((!\estado_fsm[2]~input_o\ & \estado_fsm[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_fsm[0]~input_o\,
	datac => \estado_fsm[2]~input_o\,
	datad => \estado_fsm[1]~input_o\,
	combout => \Mux55~0_combout\);

-- Location: IOIBUF_X78_Y44_N23
\preco_produto[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_preco_produto(0),
	o => \preco_produto[0]~input_o\);

-- Location: IOIBUF_X26_Y39_N1
\preco_produto[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_preco_produto(1),
	o => \preco_produto[1]~input_o\);

-- Location: IOIBUF_X0_Y13_N15
\preco_produto[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_preco_produto(2),
	o => \preco_produto[2]~input_o\);

-- Location: IOIBUF_X0_Y36_N8
\preco_produto[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_preco_produto(3),
	o => \preco_produto[3]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\preco_produto[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_preco_produto(4),
	o => \preco_produto[4]~input_o\);

-- Location: IOIBUF_X31_Y0_N29
\preco_produto[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_preco_produto(5),
	o => \preco_produto[5]~input_o\);

-- Location: IOIBUF_X0_Y36_N1
\preco_produto[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_preco_produto(6),
	o => \preco_produto[6]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\preco_produto[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_preco_produto(7),
	o => \preco_produto[7]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_display_segments(0) <= \display_segments[0]~output_o\;

ww_display_segments(1) <= \display_segments[1]~output_o\;

ww_display_segments(2) <= \display_segments[2]~output_o\;

ww_display_segments(3) <= \display_segments[3]~output_o\;

ww_display_segments(4) <= \display_segments[4]~output_o\;

ww_display_segments(5) <= \display_segments[5]~output_o\;

ww_display_segments(6) <= \display_segments[6]~output_o\;

ww_display_segments(7) <= \display_segments[7]~output_o\;

ww_display_segments(8) <= \display_segments[8]~output_o\;

ww_display_segments(9) <= \display_segments[9]~output_o\;

ww_display_segments(10) <= \display_segments[10]~output_o\;

ww_display_segments(11) <= \display_segments[11]~output_o\;

ww_display_segments(12) <= \display_segments[12]~output_o\;

ww_display_segments(13) <= \display_segments[13]~output_o\;

ww_display_segments(14) <= \display_segments[14]~output_o\;

ww_display_segments(15) <= \display_segments[15]~output_o\;

ww_display_segments(16) <= \display_segments[16]~output_o\;

ww_display_segments(17) <= \display_segments[17]~output_o\;

ww_display_segments(18) <= \display_segments[18]~output_o\;

ww_display_segments(19) <= \display_segments[19]~output_o\;

ww_display_segments(20) <= \display_segments[20]~output_o\;

ww_display_segments(21) <= \display_segments[21]~output_o\;

ww_display_segments(22) <= \display_segments[22]~output_o\;

ww_display_segments(23) <= \display_segments[23]~output_o\;

ww_display_segments(24) <= \display_segments[24]~output_o\;

ww_display_segments(25) <= \display_segments[25]~output_o\;

ww_display_segments(26) <= \display_segments[26]~output_o\;

ww_display_segments(27) <= \display_segments[27]~output_o\;

ww_display_segments(28) <= \display_segments[28]~output_o\;

ww_display_segments(29) <= \display_segments[29]~output_o\;

ww_display_segments(30) <= \display_segments[30]~output_o\;

ww_display_segments(31) <= \display_segments[31]~output_o\;

ww_display_segments(32) <= \display_segments[32]~output_o\;

ww_display_segments(33) <= \display_segments[33]~output_o\;

ww_display_segments(34) <= \display_segments[34]~output_o\;

ww_display_segments(35) <= \display_segments[35]~output_o\;

ww_display_segments(36) <= \display_segments[36]~output_o\;

ww_display_segments(37) <= \display_segments[37]~output_o\;

ww_display_segments(38) <= \display_segments[38]~output_o\;

ww_display_segments(39) <= \display_segments[39]~output_o\;

ww_display_segments(40) <= \display_segments[40]~output_o\;

ww_display_segments(41) <= \display_segments[41]~output_o\;
END structure;


