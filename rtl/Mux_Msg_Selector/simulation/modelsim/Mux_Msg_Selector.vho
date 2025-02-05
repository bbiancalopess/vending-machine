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

-- DATE "02/04/2025 23:47:02"

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

ENTITY 	Mux_Msg_Selector IS
    PORT (
	estado_fsm : IN std_logic_vector(2 DOWNTO 0);
	total_inserido : IN std_logic_vector(7 DOWNTO 0);
	troco_armazenado : IN std_logic_vector(7 DOWNTO 0);
	produto_escolhido : IN std_logic_vector(3 DOWNTO 0);
	preco_produto : IN std_logic_vector(7 DOWNTO 0);
	valor_displays : BUFFER std_logic_vector(23 DOWNTO 0)
	);
END Mux_Msg_Selector;

-- Design Ports Information
-- valor_displays[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[4]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[6]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[8]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[9]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[10]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[11]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[12]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[13]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[14]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[15]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[16]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[17]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[18]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[19]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[20]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[21]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[22]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[23]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_fsm[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- produto_escolhido[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_armazenado[0]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_fsm[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_inserido[0]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_fsm[2]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preco_produto[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preco_produto[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preco_produto[4]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preco_produto[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preco_produto[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preco_produto[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preco_produto[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preco_produto[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_inserido[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_inserido[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_inserido[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_inserido[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_inserido[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_inserido[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_inserido[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- produto_escolhido[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_armazenado[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_armazenado[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_armazenado[7]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_armazenado[5]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_armazenado[6]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_armazenado[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_armazenado[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- produto_escolhido[2]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- produto_escolhido[3]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Mux_Msg_Selector IS
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
SIGNAL ww_valor_displays : std_logic_vector(23 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \valor_displays[0]~output_o\ : std_logic;
SIGNAL \valor_displays[1]~output_o\ : std_logic;
SIGNAL \valor_displays[2]~output_o\ : std_logic;
SIGNAL \valor_displays[3]~output_o\ : std_logic;
SIGNAL \valor_displays[4]~output_o\ : std_logic;
SIGNAL \valor_displays[5]~output_o\ : std_logic;
SIGNAL \valor_displays[6]~output_o\ : std_logic;
SIGNAL \valor_displays[7]~output_o\ : std_logic;
SIGNAL \valor_displays[8]~output_o\ : std_logic;
SIGNAL \valor_displays[9]~output_o\ : std_logic;
SIGNAL \valor_displays[10]~output_o\ : std_logic;
SIGNAL \valor_displays[11]~output_o\ : std_logic;
SIGNAL \valor_displays[12]~output_o\ : std_logic;
SIGNAL \valor_displays[13]~output_o\ : std_logic;
SIGNAL \valor_displays[14]~output_o\ : std_logic;
SIGNAL \valor_displays[15]~output_o\ : std_logic;
SIGNAL \valor_displays[16]~output_o\ : std_logic;
SIGNAL \valor_displays[17]~output_o\ : std_logic;
SIGNAL \valor_displays[18]~output_o\ : std_logic;
SIGNAL \valor_displays[19]~output_o\ : std_logic;
SIGNAL \valor_displays[20]~output_o\ : std_logic;
SIGNAL \valor_displays[21]~output_o\ : std_logic;
SIGNAL \valor_displays[22]~output_o\ : std_logic;
SIGNAL \valor_displays[23]~output_o\ : std_logic;
SIGNAL \estado_fsm[1]~input_o\ : std_logic;
SIGNAL \estado_fsm[2]~input_o\ : std_logic;
SIGNAL \total_inserido[0]~input_o\ : std_logic;
SIGNAL \produto_escolhido[0]~input_o\ : std_logic;
SIGNAL \troco_armazenado[0]~input_o\ : std_logic;
SIGNAL \estado_fsm[0]~input_o\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \preco_produto[0]~input_o\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \preco_produto[3]~input_o\ : std_logic;
SIGNAL \preco_produto[6]~input_o\ : std_logic;
SIGNAL \preco_produto[5]~input_o\ : std_logic;
SIGNAL \preco_produto[7]~input_o\ : std_logic;
SIGNAL \preco_produto[4]~input_o\ : std_logic;
SIGNAL \U2|temp~5_combout\ : std_logic;
SIGNAL \U2|temp~4_combout\ : std_logic;
SIGNAL \U2|temp~3_combout\ : std_logic;
SIGNAL \U2|temp~8_combout\ : std_logic;
SIGNAL \preco_produto[2]~input_o\ : std_logic;
SIGNAL \U2|temp~6_combout\ : std_logic;
SIGNAL \U2|temp~7_combout\ : std_logic;
SIGNAL \U2|temp~10_combout\ : std_logic;
SIGNAL \U2|temp~9_combout\ : std_logic;
SIGNAL \preco_produto[1]~input_o\ : std_logic;
SIGNAL \U2|LessThan5~0_combout\ : std_logic;
SIGNAL \U2|LessThan5~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \troco_armazenado[4]~input_o\ : std_logic;
SIGNAL \troco_armazenado[6]~input_o\ : std_logic;
SIGNAL \troco_armazenado[5]~input_o\ : std_logic;
SIGNAL \troco_armazenado[7]~input_o\ : std_logic;
SIGNAL \U3|temp~1_combout\ : std_logic;
SIGNAL \U3|temp~2_combout\ : std_logic;
SIGNAL \troco_armazenado[3]~input_o\ : std_logic;
SIGNAL \U3|temp~0_combout\ : std_logic;
SIGNAL \U3|temp~3_combout\ : std_logic;
SIGNAL \U3|temp~5_combout\ : std_logic;
SIGNAL \troco_armazenado[2]~input_o\ : std_logic;
SIGNAL \U3|temp~4_combout\ : std_logic;
SIGNAL \U3|temp~7_combout\ : std_logic;
SIGNAL \U3|LessThan5~0_combout\ : std_logic;
SIGNAL \troco_armazenado[1]~input_o\ : std_logic;
SIGNAL \U3|temp~6_combout\ : std_logic;
SIGNAL \U3|LessThan5~1_combout\ : std_logic;
SIGNAL \produto_escolhido[1]~input_o\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \total_inserido[3]~input_o\ : std_logic;
SIGNAL \total_inserido[6]~input_o\ : std_logic;
SIGNAL \total_inserido[5]~input_o\ : std_logic;
SIGNAL \total_inserido[4]~input_o\ : std_logic;
SIGNAL \total_inserido[7]~input_o\ : std_logic;
SIGNAL \U1|temp~5_combout\ : std_logic;
SIGNAL \U1|temp~4_combout\ : std_logic;
SIGNAL \U1|temp~3_combout\ : std_logic;
SIGNAL \U1|temp~6_combout\ : std_logic;
SIGNAL \U1|temp~8_combout\ : std_logic;
SIGNAL \U1|temp~7_combout\ : std_logic;
SIGNAL \total_inserido[2]~input_o\ : std_logic;
SIGNAL \U1|LessThan5~0_combout\ : std_logic;
SIGNAL \U1|temp~9_combout\ : std_logic;
SIGNAL \U1|temp~10_combout\ : std_logic;
SIGNAL \total_inserido[1]~input_o\ : std_logic;
SIGNAL \U1|LessThan5~1_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \produto_escolhido[2]~input_o\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \Mux16~7_combout\ : std_logic;
SIGNAL \Mux16~10_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux16~8_combout\ : std_logic;
SIGNAL \U3|Add5~4_combout\ : std_logic;
SIGNAL \U3|Add5~18_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \U3|Add5~5_combout\ : std_logic;
SIGNAL \U3|Add5~6_combout\ : std_logic;
SIGNAL \U3|Add5~8_cout\ : std_logic;
SIGNAL \U3|Add5~9_combout\ : std_logic;
SIGNAL \Mux16~9_combout\ : std_logic;
SIGNAL \produto_escolhido[3]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \U3|Add5~11_combout\ : std_logic;
SIGNAL \U3|Add5~19_combout\ : std_logic;
SIGNAL \U3|Add5~10\ : std_logic;
SIGNAL \U3|Add5~12_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \U3|Add5~14_combout\ : std_logic;
SIGNAL \U3|Add5~15_combout\ : std_logic;
SIGNAL \U3|Add5~13\ : std_logic;
SIGNAL \U3|Add5~16_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \U2|temp~16_combout\ : std_logic;
SIGNAL \U2|temp~14_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \U2|temp~12_combout\ : std_logic;
SIGNAL \U2|temp~15_combout\ : std_logic;
SIGNAL \U2|temp~11_combout\ : std_logic;
SIGNAL \U2|temp~13_combout\ : std_logic;
SIGNAL \U2|temp~2_combout\ : std_logic;
SIGNAL \U2|temp~17_combout\ : std_logic;
SIGNAL \U2|bcd_out[5]~0_combout\ : std_logic;
SIGNAL \U1|temp~13_combout\ : std_logic;
SIGNAL \U1|LessThan0~0_combout\ : std_logic;
SIGNAL \U1|temp~15_combout\ : std_logic;
SIGNAL \U1|temp~14_combout\ : std_logic;
SIGNAL \U1|temp~2_combout\ : std_logic;
SIGNAL \U1|temp~17_combout\ : std_logic;
SIGNAL \U1|temp~11_combout\ : std_logic;
SIGNAL \U1|temp~16_combout\ : std_logic;
SIGNAL \U1|temp~12_combout\ : std_logic;
SIGNAL \U1|LessThan6~0_combout\ : std_logic;
SIGNAL \U3|temp~8_combout\ : std_logic;
SIGNAL \U3|temp~9_combout\ : std_logic;
SIGNAL \U3|temp~13_combout\ : std_logic;
SIGNAL \U3|LessThan0~0_combout\ : std_logic;
SIGNAL \U3|temp~14_combout\ : std_logic;
SIGNAL \U3|temp~10_combout\ : std_logic;
SIGNAL \U3|temp~11_combout\ : std_logic;
SIGNAL \U3|temp~12_combout\ : std_logic;
SIGNAL \U3|LessThan6~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \U2|LessThan6~0_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \U3|Add6~0_combout\ : std_logic;
SIGNAL \U3|Add6~1_combout\ : std_logic;
SIGNAL \U3|Add6~2_combout\ : std_logic;
SIGNAL \U3|Add6~3_combout\ : std_logic;
SIGNAL \U3|Add6~5_cout\ : std_logic;
SIGNAL \U3|Add6~6_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux10~11_combout\ : std_logic;
SIGNAL \Mux12~combout\ : std_logic;
SIGNAL \U3|Add6~8_combout\ : std_logic;
SIGNAL \U3|Add6~9_combout\ : std_logic;
SIGNAL \U3|Add6~7\ : std_logic;
SIGNAL \U3|Add6~10_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \U3|Add6~12_combout\ : std_logic;
SIGNAL \U3|Add6~13_combout\ : std_logic;
SIGNAL \U3|Add6~11\ : std_logic;
SIGNAL \U3|Add6~14_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \Mux10~10_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_estado_fsm[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

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
valor_displays <= ww_valor_displays;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_estado_fsm[1]~input_o\ <= NOT \estado_fsm[1]~input_o\;
\ALT_INV_Mux0~1_combout\ <= NOT \Mux0~1_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N8
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

-- Location: IOOBUF_X66_Y54_N16
\valor_displays[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~2_combout\,
	devoe => ww_devoe,
	o => \valor_displays[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\valor_displays[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~4_combout\,
	devoe => ww_devoe,
	o => \valor_displays[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\valor_displays[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~9_combout\,
	devoe => ww_devoe,
	o => \valor_displays[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\valor_displays[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~2_combout\,
	devoe => ww_devoe,
	o => \valor_displays[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\valor_displays[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~2_combout\,
	devoe => ww_devoe,
	o => \valor_displays[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\valor_displays[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~3_combout\,
	devoe => ww_devoe,
	o => \valor_displays[5]~output_o\);

-- Location: IOOBUF_X71_Y54_N30
\valor_displays[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~combout\,
	devoe => ww_devoe,
	o => \valor_displays[6]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\valor_displays[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~combout\,
	devoe => ww_devoe,
	o => \valor_displays[7]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\valor_displays[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~10_combout\,
	devoe => ww_devoe,
	o => \valor_displays[8]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\valor_displays[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~5_combout\,
	devoe => ww_devoe,
	o => \valor_displays[9]~output_o\);

-- Location: IOOBUF_X78_Y29_N16
\valor_displays[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_displays[10]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\valor_displays[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_displays[11]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\valor_displays[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_displays[12]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\valor_displays[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_displays[13]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\valor_displays[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_displays[14]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\valor_displays[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_displays[15]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\valor_displays[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[16]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\valor_displays[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[17]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\valor_displays[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \valor_displays[18]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\valor_displays[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[19]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\valor_displays[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[20]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\valor_displays[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_estado_fsm[1]~input_o\,
	devoe => ww_devoe,
	o => \valor_displays[21]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\valor_displays[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[22]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\valor_displays[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~1_combout\,
	devoe => ww_devoe,
	o => \valor_displays[23]~output_o\);

-- Location: IOIBUF_X36_Y39_N15
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

-- Location: IOIBUF_X58_Y54_N8
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

-- Location: IOIBUF_X64_Y54_N1
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

-- Location: IOIBUF_X60_Y54_N29
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

-- Location: IOIBUF_X60_Y54_N8
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

-- Location: IOIBUF_X60_Y54_N15
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

-- Location: LCCOMB_X60_Y51_N16
\Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\estado_fsm[1]~input_o\ & ((\estado_fsm[0]~input_o\ & (\produto_escolhido[0]~input_o\)) # (!\estado_fsm[0]~input_o\ & ((\troco_armazenado[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \produto_escolhido[0]~input_o\,
	datab => \troco_armazenado[0]~input_o\,
	datac => \estado_fsm[1]~input_o\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X60_Y51_N10
\Mux18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (!\estado_fsm[2]~input_o\ & ((\Mux18~0_combout\) # ((!\estado_fsm[1]~input_o\ & \total_inserido[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[1]~input_o\,
	datab => \estado_fsm[2]~input_o\,
	datac => \total_inserido[0]~input_o\,
	datad => \Mux18~0_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X60_Y51_N20
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\estado_fsm[2]~input_o\ & (\estado_fsm[1]~input_o\ & !\estado_fsm[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_fsm[2]~input_o\,
	datac => \estado_fsm[1]~input_o\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: IOIBUF_X66_Y54_N29
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

-- Location: LCCOMB_X60_Y51_N6
\Mux18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux18~1_combout\) # ((\Mux13~0_combout\ & \preco_produto[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~1_combout\,
	datab => \Mux13~0_combout\,
	datac => \preco_produto[0]~input_o\,
	combout => \Mux18~2_combout\);

-- Location: IOIBUF_X49_Y54_N1
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

-- Location: IOIBUF_X56_Y54_N22
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

-- Location: IOIBUF_X54_Y54_N29
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

-- Location: IOIBUF_X56_Y54_N29
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

-- Location: IOIBUF_X54_Y54_N8
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

-- Location: LCCOMB_X57_Y51_N28
\U2|temp~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|temp~5_combout\ = (\preco_produto[5]~input_o\ & (!\preco_produto[7]~input_o\ & ((\preco_produto[4]~input_o\) # (!\preco_produto[6]~input_o\)))) # (!\preco_produto[5]~input_o\ & (\preco_produto[7]~input_o\ & ((\preco_produto[6]~input_o\) # 
-- (!\preco_produto[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \preco_produto[6]~input_o\,
	datab => \preco_produto[5]~input_o\,
	datac => \preco_produto[7]~input_o\,
	datad => \preco_produto[4]~input_o\,
	combout => \U2|temp~5_combout\);

-- Location: LCCOMB_X57_Y51_N26
\U2|temp~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|temp~4_combout\ = (\preco_produto[6]~input_o\ & (!\preco_produto[4]~input_o\ & (\preco_produto[5]~input_o\ $ (!\preco_produto[7]~input_o\)))) # (!\preco_produto[6]~input_o\ & (!\preco_produto[5]~input_o\ & (\preco_produto[7]~input_o\ & 
-- \preco_produto[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \preco_produto[6]~input_o\,
	datab => \preco_produto[5]~input_o\,
	datac => \preco_produto[7]~input_o\,
	datad => \preco_produto[4]~input_o\,
	combout => \U2|temp~4_combout\);

-- Location: LCCOMB_X57_Y51_N16
\U2|temp~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|temp~3_combout\ = (\preco_produto[6]~input_o\ & ((\preco_produto[5]~input_o\ & (!\preco_produto[7]~input_o\ & !\preco_produto[4]~input_o\)) # (!\preco_produto[5]~input_o\ & (\preco_produto[7]~input_o\ & \preco_produto[4]~input_o\)))) # 
-- (!\preco_produto[6]~input_o\ & (\preco_produto[4]~input_o\ $ (((!\preco_produto[5]~input_o\ & \preco_produto[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \preco_produto[6]~input_o\,
	datab => \preco_produto[5]~input_o\,
	datac => \preco_produto[7]~input_o\,
	datad => \preco_produto[4]~input_o\,
	combout => \U2|temp~3_combout\);

-- Location: LCCOMB_X57_Y51_N10
\U2|temp~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|temp~8_combout\ = (\preco_produto[3]~input_o\ & (((\U2|temp~3_combout\)))) # (!\preco_produto[3]~input_o\ & ((\U2|temp~4_combout\ & ((!\U2|temp~3_combout\))) # (!\U2|temp~4_combout\ & (!\U2|temp~5_combout\ & \U2|temp~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \preco_produto[3]~input_o\,
	datab => \U2|temp~5_combout\,
	datac => \U2|temp~4_combout\,
	datad => \U2|temp~3_combout\,
	combout => \U2|temp~8_combout\);

-- Location: IOIBUF_X54_Y54_N22
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

-- Location: LCCOMB_X57_Y51_N22
\U2|temp~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|temp~6_combout\ = (\preco_produto[3]~input_o\ & (!\U2|temp~5_combout\ & (!\U2|temp~4_combout\))) # (!\preco_produto[3]~input_o\ & ((\U2|temp~4_combout\) # ((\U2|temp~5_combout\ & \U2|temp~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \preco_produto[3]~input_o\,
	datab => \U2|temp~5_combout\,
	datac => \U2|temp~4_combout\,
	datad => \U2|temp~3_combout\,
	combout => \U2|temp~6_combout\);

-- Location: LCCOMB_X57_Y51_N0
\U2|temp~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|temp~7_combout\ = (\U2|temp~5_combout\ & (!\preco_produto[3]~input_o\ & ((!\U2|temp~3_combout\)))) # (!\U2|temp~5_combout\ & (\U2|temp~4_combout\ & ((\preco_produto[3]~input_o\) # (\U2|temp~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \preco_produto[3]~input_o\,
	datab => \U2|temp~5_combout\,
	datac => \U2|temp~4_combout\,
	datad => \U2|temp~3_combout\,
	combout => \U2|temp~7_combout\);

-- Location: LCCOMB_X57_Y51_N30
\U2|temp~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|temp~10_combout\ = (\U2|temp~8_combout\ & (!\preco_produto[2]~input_o\ & ((\U2|temp~6_combout\) # (\U2|temp~7_combout\)))) # (!\U2|temp~8_combout\ & (\preco_produto[2]~input_o\ $ (((\U2|temp~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|temp~8_combout\,
	datab => \preco_produto[2]~input_o\,
	datac => \U2|temp~6_combout\,
	datad => \U2|temp~7_combout\,
	combout => \U2|temp~10_combout\);

-- Location: LCCOMB_X57_Y51_N12
\U2|temp~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|temp~9_combout\ = (\preco_produto[2]~input_o\ & (((\U2|temp~6_combout\)))) # (!\preco_produto[2]~input_o\ & ((\U2|temp~6_combout\ & (!\U2|temp~8_combout\ & !\U2|temp~7_combout\)) # (!\U2|temp~6_combout\ & ((\U2|temp~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|temp~8_combout\,
	datab => \preco_produto[2]~input_o\,
	datac => \U2|temp~6_combout\,
	datad => \U2|temp~7_combout\,
	combout => \U2|temp~9_combout\);

-- Location: IOIBUF_X60_Y54_N1
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

-- Location: LCCOMB_X57_Y51_N8
\U2|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|LessThan5~0_combout\ = (\U2|temp~8_combout\ & ((\preco_produto[2]~input_o\) # ((\U2|temp~6_combout\)))) # (!\U2|temp~8_combout\ & (((!\preco_produto[2]~input_o\ & !\U2|temp~6_combout\)) # (!\U2|temp~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|temp~8_combout\,
	datab => \preco_produto[2]~input_o\,
	datac => \U2|temp~6_combout\,
	datad => \U2|temp~7_combout\,
	combout => \U2|LessThan5~0_combout\);

-- Location: LCCOMB_X57_Y51_N18
\U2|LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|LessThan5~1_combout\ = ((\U2|temp~9_combout\ & ((\U2|temp~10_combout\) # (\preco_produto[1]~input_o\)))) # (!\U2|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|temp~10_combout\,
	datab => \U2|temp~9_combout\,
	datac => \preco_produto[1]~input_o\,
	datad => \U2|LessThan5~0_combout\,
	combout => \U2|LessThan5~1_combout\);

-- Location: LCCOMB_X58_Y50_N8
\Mux17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux13~0_combout\ & (\U2|LessThan5~1_combout\ $ (\preco_produto[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|LessThan5~1_combout\,
	datac => \Mux13~0_combout\,
	datad => \preco_produto[1]~input_o\,
	combout => \Mux17~2_combout\);

-- Location: IOIBUF_X69_Y54_N8
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

-- Location: IOIBUF_X66_Y54_N1
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

-- Location: IOIBUF_X69_Y54_N22
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

-- Location: IOIBUF_X69_Y54_N29
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

-- Location: LCCOMB_X62_Y51_N10
\U3|temp~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~1_combout\ = (\troco_armazenado[4]~input_o\ & (!\troco_armazenado[6]~input_o\ & (!\troco_armazenado[5]~input_o\ & \troco_armazenado[7]~input_o\))) # (!\troco_armazenado[4]~input_o\ & (\troco_armazenado[6]~input_o\ & (\troco_armazenado[5]~input_o\ 
-- $ (!\troco_armazenado[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \troco_armazenado[4]~input_o\,
	datab => \troco_armazenado[6]~input_o\,
	datac => \troco_armazenado[5]~input_o\,
	datad => \troco_armazenado[7]~input_o\,
	combout => \U3|temp~1_combout\);

-- Location: LCCOMB_X62_Y51_N20
\U3|temp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~2_combout\ = (\troco_armazenado[5]~input_o\ & (!\troco_armazenado[7]~input_o\ & ((\troco_armazenado[4]~input_o\) # (!\troco_armazenado[6]~input_o\)))) # (!\troco_armazenado[5]~input_o\ & (\troco_armazenado[7]~input_o\ & 
-- ((\troco_armazenado[6]~input_o\) # (!\troco_armazenado[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \troco_armazenado[4]~input_o\,
	datab => \troco_armazenado[6]~input_o\,
	datac => \troco_armazenado[5]~input_o\,
	datad => \troco_armazenado[7]~input_o\,
	combout => \U3|temp~2_combout\);

-- Location: IOIBUF_X69_Y54_N1
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

-- Location: LCCOMB_X62_Y51_N0
\U3|temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~0_combout\ = (\troco_armazenado[4]~input_o\ & (\troco_armazenado[6]~input_o\ $ (((\troco_armazenado[5]~input_o\) # (!\troco_armazenado[7]~input_o\))))) # (!\troco_armazenado[4]~input_o\ & ((\troco_armazenado[6]~input_o\ & 
-- (\troco_armazenado[5]~input_o\ & !\troco_armazenado[7]~input_o\)) # (!\troco_armazenado[6]~input_o\ & (!\troco_armazenado[5]~input_o\ & \troco_armazenado[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \troco_armazenado[4]~input_o\,
	datab => \troco_armazenado[6]~input_o\,
	datac => \troco_armazenado[5]~input_o\,
	datad => \troco_armazenado[7]~input_o\,
	combout => \U3|temp~0_combout\);

-- Location: LCCOMB_X62_Y51_N6
\U3|temp~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~3_combout\ = (\U3|temp~1_combout\ & (((!\troco_armazenado[3]~input_o\)))) # (!\U3|temp~1_combout\ & ((\U3|temp~2_combout\ & (!\troco_armazenado[3]~input_o\ & \U3|temp~0_combout\)) # (!\U3|temp~2_combout\ & (\troco_armazenado[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~1_combout\,
	datab => \U3|temp~2_combout\,
	datac => \troco_armazenado[3]~input_o\,
	datad => \U3|temp~0_combout\,
	combout => \U3|temp~3_combout\);

-- Location: LCCOMB_X62_Y51_N18
\U3|temp~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~5_combout\ = (\U3|temp~1_combout\ & ((\troco_armazenado[3]~input_o\ $ (!\U3|temp~0_combout\)))) # (!\U3|temp~1_combout\ & (\U3|temp~0_combout\ & ((\troco_armazenado[3]~input_o\) # (!\U3|temp~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~1_combout\,
	datab => \U3|temp~2_combout\,
	datac => \troco_armazenado[3]~input_o\,
	datad => \U3|temp~0_combout\,
	combout => \U3|temp~5_combout\);

-- Location: IOIBUF_X69_Y54_N15
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

-- Location: LCCOMB_X62_Y51_N24
\U3|temp~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~4_combout\ = (\U3|temp~2_combout\ & (((!\troco_armazenado[3]~input_o\ & !\U3|temp~0_combout\)))) # (!\U3|temp~2_combout\ & (\U3|temp~1_combout\ & ((\troco_armazenado[3]~input_o\) # (\U3|temp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~1_combout\,
	datab => \U3|temp~2_combout\,
	datac => \troco_armazenado[3]~input_o\,
	datad => \U3|temp~0_combout\,
	combout => \U3|temp~4_combout\);

-- Location: LCCOMB_X62_Y51_N30
\U3|temp~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~7_combout\ = (\U3|temp~5_combout\ & (!\troco_armazenado[2]~input_o\ & ((\U3|temp~3_combout\) # (\U3|temp~4_combout\)))) # (!\U3|temp~5_combout\ & ((\troco_armazenado[2]~input_o\ $ (\U3|temp~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~3_combout\,
	datab => \U3|temp~5_combout\,
	datac => \troco_armazenado[2]~input_o\,
	datad => \U3|temp~4_combout\,
	combout => \U3|temp~7_combout\);

-- Location: LCCOMB_X62_Y51_N16
\U3|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|LessThan5~0_combout\ = (\U3|temp~5_combout\ & ((\U3|temp~3_combout\) # ((\troco_armazenado[2]~input_o\)))) # (!\U3|temp~5_combout\ & (((!\U3|temp~3_combout\ & !\troco_armazenado[2]~input_o\)) # (!\U3|temp~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~3_combout\,
	datab => \U3|temp~5_combout\,
	datac => \troco_armazenado[2]~input_o\,
	datad => \U3|temp~4_combout\,
	combout => \U3|LessThan5~0_combout\);

-- Location: IOIBUF_X51_Y54_N8
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

-- Location: LCCOMB_X62_Y51_N4
\U3|temp~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~6_combout\ = (\U3|temp~3_combout\ & ((\troco_armazenado[2]~input_o\) # ((!\U3|temp~5_combout\ & !\U3|temp~4_combout\)))) # (!\U3|temp~3_combout\ & (((!\troco_armazenado[2]~input_o\ & \U3|temp~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~3_combout\,
	datab => \U3|temp~5_combout\,
	datac => \troco_armazenado[2]~input_o\,
	datad => \U3|temp~4_combout\,
	combout => \U3|temp~6_combout\);

-- Location: LCCOMB_X58_Y50_N26
\U3|LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|LessThan5~1_combout\ = ((\U3|temp~6_combout\ & ((\U3|temp~7_combout\) # (\troco_armazenado[1]~input_o\)))) # (!\U3|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~7_combout\,
	datab => \U3|LessThan5~0_combout\,
	datac => \troco_armazenado[1]~input_o\,
	datad => \U3|temp~6_combout\,
	combout => \U3|LessThan5~1_combout\);

-- Location: IOIBUF_X51_Y54_N22
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

-- Location: LCCOMB_X58_Y50_N28
\Mux17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\estado_fsm[0]~input_o\ & (((\produto_escolhido[1]~input_o\)))) # (!\estado_fsm[0]~input_o\ & (\U3|LessThan5~1_combout\ $ ((\troco_armazenado[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|LessThan5~1_combout\,
	datab => \troco_armazenado[1]~input_o\,
	datac => \estado_fsm[0]~input_o\,
	datad => \produto_escolhido[1]~input_o\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X57_Y50_N0
\Mux16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\estado_fsm[1]~input_o\ & !\estado_fsm[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_fsm[1]~input_o\,
	datac => \estado_fsm[2]~input_o\,
	combout => \Mux16~2_combout\);

-- Location: IOIBUF_X46_Y54_N22
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

-- Location: IOIBUF_X51_Y54_N1
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

-- Location: IOIBUF_X49_Y54_N29
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

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: IOIBUF_X51_Y54_N15
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

-- Location: LCCOMB_X55_Y51_N4
\U1|temp~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~5_combout\ = (\total_inserido[5]~input_o\ & (!\total_inserido[7]~input_o\ & ((\total_inserido[4]~input_o\) # (!\total_inserido[6]~input_o\)))) # (!\total_inserido[5]~input_o\ & (\total_inserido[7]~input_o\ & ((\total_inserido[6]~input_o\) # 
-- (!\total_inserido[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[6]~input_o\,
	datab => \total_inserido[5]~input_o\,
	datac => \total_inserido[4]~input_o\,
	datad => \total_inserido[7]~input_o\,
	combout => \U1|temp~5_combout\);

-- Location: LCCOMB_X55_Y51_N26
\U1|temp~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~4_combout\ = (\total_inserido[6]~input_o\ & (!\total_inserido[4]~input_o\ & (\total_inserido[5]~input_o\ $ (!\total_inserido[7]~input_o\)))) # (!\total_inserido[6]~input_o\ & (!\total_inserido[5]~input_o\ & (\total_inserido[4]~input_o\ & 
-- \total_inserido[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[6]~input_o\,
	datab => \total_inserido[5]~input_o\,
	datac => \total_inserido[4]~input_o\,
	datad => \total_inserido[7]~input_o\,
	combout => \U1|temp~4_combout\);

-- Location: LCCOMB_X55_Y51_N16
\U1|temp~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~3_combout\ = (\total_inserido[6]~input_o\ & ((\total_inserido[5]~input_o\ & (!\total_inserido[4]~input_o\ & !\total_inserido[7]~input_o\)) # (!\total_inserido[5]~input_o\ & (\total_inserido[4]~input_o\ & \total_inserido[7]~input_o\)))) # 
-- (!\total_inserido[6]~input_o\ & (\total_inserido[4]~input_o\ $ (((!\total_inserido[5]~input_o\ & \total_inserido[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[6]~input_o\,
	datab => \total_inserido[5]~input_o\,
	datac => \total_inserido[4]~input_o\,
	datad => \total_inserido[7]~input_o\,
	combout => \U1|temp~3_combout\);

-- Location: LCCOMB_X55_Y51_N30
\U1|temp~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~6_combout\ = (\total_inserido[3]~input_o\ & (!\U1|temp~5_combout\ & (!\U1|temp~4_combout\))) # (!\total_inserido[3]~input_o\ & ((\U1|temp~4_combout\) # ((\U1|temp~5_combout\ & \U1|temp~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[3]~input_o\,
	datab => \U1|temp~5_combout\,
	datac => \U1|temp~4_combout\,
	datad => \U1|temp~3_combout\,
	combout => \U1|temp~6_combout\);

-- Location: LCCOMB_X55_Y51_N2
\U1|temp~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~8_combout\ = (\total_inserido[3]~input_o\ & (((\U1|temp~3_combout\)))) # (!\total_inserido[3]~input_o\ & ((\U1|temp~4_combout\ & ((!\U1|temp~3_combout\))) # (!\U1|temp~4_combout\ & (!\U1|temp~5_combout\ & \U1|temp~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[3]~input_o\,
	datab => \U1|temp~5_combout\,
	datac => \U1|temp~4_combout\,
	datad => \U1|temp~3_combout\,
	combout => \U1|temp~8_combout\);

-- Location: LCCOMB_X55_Y51_N24
\U1|temp~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~7_combout\ = (\U1|temp~5_combout\ & (!\total_inserido[3]~input_o\ & ((!\U1|temp~3_combout\)))) # (!\U1|temp~5_combout\ & (\U1|temp~4_combout\ & ((\total_inserido[3]~input_o\) # (\U1|temp~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[3]~input_o\,
	datab => \U1|temp~5_combout\,
	datac => \U1|temp~4_combout\,
	datad => \U1|temp~3_combout\,
	combout => \U1|temp~7_combout\);

-- Location: IOIBUF_X58_Y54_N22
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

-- Location: LCCOMB_X58_Y50_N6
\U1|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan5~0_combout\ = (\U1|temp~8_combout\ & ((\U1|temp~6_combout\) # ((\total_inserido[2]~input_o\)))) # (!\U1|temp~8_combout\ & (((!\U1|temp~6_combout\ & !\total_inserido[2]~input_o\)) # (!\U1|temp~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|temp~6_combout\,
	datab => \U1|temp~8_combout\,
	datac => \U1|temp~7_combout\,
	datad => \total_inserido[2]~input_o\,
	combout => \U1|LessThan5~0_combout\);

-- Location: LCCOMB_X58_Y50_N2
\U1|temp~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~9_combout\ = (\U1|temp~6_combout\ & ((\total_inserido[2]~input_o\) # ((!\U1|temp~8_combout\ & !\U1|temp~7_combout\)))) # (!\U1|temp~6_combout\ & (((\U1|temp~7_combout\ & !\total_inserido[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|temp~6_combout\,
	datab => \U1|temp~8_combout\,
	datac => \U1|temp~7_combout\,
	datad => \total_inserido[2]~input_o\,
	combout => \U1|temp~9_combout\);

-- Location: LCCOMB_X58_Y50_N4
\U1|temp~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~10_combout\ = (\U1|temp~8_combout\ & (!\total_inserido[2]~input_o\ & ((\U1|temp~6_combout\) # (\U1|temp~7_combout\)))) # (!\U1|temp~8_combout\ & ((\U1|temp~7_combout\ $ (\total_inserido[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|temp~6_combout\,
	datab => \U1|temp~8_combout\,
	datac => \U1|temp~7_combout\,
	datad => \total_inserido[2]~input_o\,
	combout => \U1|temp~10_combout\);

-- Location: IOIBUF_X58_Y54_N29
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

-- Location: LCCOMB_X58_Y50_N24
\U1|LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan5~1_combout\ = ((\U1|temp~9_combout\ & ((\U1|temp~10_combout\) # (\total_inserido[1]~input_o\)))) # (!\U1|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan5~0_combout\,
	datab => \U1|temp~9_combout\,
	datac => \U1|temp~10_combout\,
	datad => \total_inserido[1]~input_o\,
	combout => \U1|LessThan5~1_combout\);

-- Location: LCCOMB_X58_Y50_N18
\Mux17~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (!\estado_fsm[2]~input_o\ & (!\estado_fsm[1]~input_o\ & (\U1|LessThan5~1_combout\ $ (\total_inserido[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[2]~input_o\,
	datab => \U1|LessThan5~1_combout\,
	datac => \estado_fsm[1]~input_o\,
	datad => \total_inserido[1]~input_o\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X58_Y50_N22
\Mux17~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\Mux17~2_combout\) # ((\Mux17~5_combout\) # ((\Mux17~3_combout\ & \Mux16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~2_combout\,
	datab => \Mux17~3_combout\,
	datac => \Mux16~2_combout\,
	datad => \Mux17~5_combout\,
	combout => \Mux17~4_combout\);

-- Location: IOIBUF_X46_Y54_N29
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

-- Location: LCCOMB_X57_Y50_N30
\Mux16~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\estado_fsm[2]~input_o\) # ((\estado_fsm[0]~input_o\ & \estado_fsm[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[0]~input_o\,
	datab => \estado_fsm[1]~input_o\,
	datac => \estado_fsm[2]~input_o\,
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X57_Y50_N12
\Mux16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\estado_fsm[1]~input_o\ & (!\estado_fsm[0]~input_o\ & \estado_fsm[2]~input_o\)) # (!\estado_fsm[1]~input_o\ & ((!\estado_fsm[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[0]~input_o\,
	datab => \estado_fsm[1]~input_o\,
	datac => \estado_fsm[2]~input_o\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X57_Y50_N24
\Mux16~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (\Mux16~4_combout\ & (\Mux16~3_combout\ & (\U2|temp~10_combout\))) # (!\Mux16~4_combout\ & (((\U1|temp~10_combout\)) # (!\Mux16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~4_combout\,
	datab => \Mux16~3_combout\,
	datac => \U2|temp~10_combout\,
	datad => \U1|temp~10_combout\,
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X57_Y50_N10
\Mux16~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (\Mux16~5_combout\ & (((\U3|temp~7_combout\) # (!\Mux16~2_combout\)))) # (!\Mux16~5_combout\ & (\produto_escolhido[2]~input_o\ & ((\Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \produto_escolhido[2]~input_o\,
	datab => \Mux16~5_combout\,
	datac => \U3|temp~7_combout\,
	datad => \Mux16~2_combout\,
	combout => \Mux16~6_combout\);

-- Location: LCCOMB_X58_Y50_N10
\Mux16~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~7_combout\ = (\U3|LessThan5~1_combout\ & (\estado_fsm[1]~input_o\ & (!\estado_fsm[0]~input_o\ & !\estado_fsm[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|LessThan5~1_combout\,
	datab => \estado_fsm[1]~input_o\,
	datac => \estado_fsm[0]~input_o\,
	datad => \estado_fsm[2]~input_o\,
	combout => \Mux16~7_combout\);

-- Location: LCCOMB_X58_Y50_N12
\Mux16~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~10_combout\ = (\estado_fsm[1]~input_o\ & (\U2|LessThan5~1_combout\ & (!\estado_fsm[0]~input_o\ & \estado_fsm[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[1]~input_o\,
	datab => \U2|LessThan5~1_combout\,
	datac => \estado_fsm[0]~input_o\,
	datad => \estado_fsm[2]~input_o\,
	combout => \Mux16~10_combout\);

-- Location: LCCOMB_X60_Y51_N24
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\estado_fsm[1]~input_o\ & !\estado_fsm[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_fsm[1]~input_o\,
	datad => \estado_fsm[2]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X58_Y50_N20
\Mux16~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~8_combout\ = (\Mux16~7_combout\) # ((\Mux16~10_combout\) # ((\U1|LessThan5~1_combout\ & \Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~7_combout\,
	datab => \U1|LessThan5~1_combout\,
	datac => \Mux16~10_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux16~8_combout\);

-- Location: LCCOMB_X57_Y50_N26
\U3|Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add5~4_combout\ = (\estado_fsm[2]~input_o\ & (\U2|temp~10_combout\)) # (!\estado_fsm[2]~input_o\ & (((\U3|temp~7_combout\ & \estado_fsm[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|temp~10_combout\,
	datab => \estado_fsm[2]~input_o\,
	datac => \U3|temp~7_combout\,
	datad => \estado_fsm[1]~input_o\,
	combout => \U3|Add5~4_combout\);

-- Location: LCCOMB_X57_Y50_N4
\U3|Add5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add5~18_combout\ = (\U3|Add5~4_combout\) # ((!\estado_fsm[1]~input_o\ & (!\estado_fsm[2]~input_o\ & \U1|temp~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Add5~4_combout\,
	datab => \estado_fsm[1]~input_o\,
	datac => \estado_fsm[2]~input_o\,
	datad => \U1|temp~10_combout\,
	combout => \U3|Add5~18_combout\);

-- Location: LCCOMB_X59_Y50_N0
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\estado_fsm[0]~input_o\ & \estado_fsm[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[0]~input_o\,
	datac => \estado_fsm[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X58_Y50_N16
\U3|Add5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add5~5_combout\ = (!\estado_fsm[2]~input_o\ & ((\estado_fsm[1]~input_o\ & (\troco_armazenado[1]~input_o\)) # (!\estado_fsm[1]~input_o\ & ((\total_inserido[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[2]~input_o\,
	datab => \troco_armazenado[1]~input_o\,
	datac => \estado_fsm[1]~input_o\,
	datad => \total_inserido[1]~input_o\,
	combout => \U3|Add5~5_combout\);

-- Location: LCCOMB_X59_Y50_N10
\U3|Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add5~6_combout\ = (\U3|Add5~5_combout\) # ((\estado_fsm[2]~input_o\ & \preco_produto[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[2]~input_o\,
	datac => \U3|Add5~5_combout\,
	datad => \preco_produto[1]~input_o\,
	combout => \U3|Add5~6_combout\);

-- Location: LCCOMB_X59_Y50_N16
\U3|Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add5~8_cout\ = CARRY((\U3|Add5~6_combout\ & !\Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Add5~6_combout\,
	datab => \Mux0~0_combout\,
	datad => VCC,
	cout => \U3|Add5~8_cout\);

-- Location: LCCOMB_X59_Y50_N18
\U3|Add5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add5~9_combout\ = (\U3|Add5~18_combout\ & ((\Mux0~0_combout\ & (!\U3|Add5~8_cout\)) # (!\Mux0~0_combout\ & (\U3|Add5~8_cout\ & VCC)))) # (!\U3|Add5~18_combout\ & ((\Mux0~0_combout\ & ((\U3|Add5~8_cout\) # (GND))) # (!\Mux0~0_combout\ & 
-- (!\U3|Add5~8_cout\))))
-- \U3|Add5~10\ = CARRY((\U3|Add5~18_combout\ & (\Mux0~0_combout\ & !\U3|Add5~8_cout\)) # (!\U3|Add5~18_combout\ & ((\Mux0~0_combout\) # (!\U3|Add5~8_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Add5~18_combout\,
	datab => \Mux0~0_combout\,
	datad => VCC,
	cin => \U3|Add5~8_cout\,
	combout => \U3|Add5~9_combout\,
	cout => \U3|Add5~10\);

-- Location: LCCOMB_X57_Y50_N20
\Mux16~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~9_combout\ = (\Mux16~8_combout\ & ((\U3|Add5~9_combout\))) # (!\Mux16~8_combout\ & (\Mux16~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~6_combout\,
	datac => \Mux16~8_combout\,
	datad => \U3|Add5~9_combout\,
	combout => \Mux16~9_combout\);

-- Location: IOIBUF_X49_Y54_N22
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

-- Location: LCCOMB_X57_Y50_N16
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Mux16~3_combout\ & ((\Mux16~4_combout\ & (\U2|temp~9_combout\)) # (!\Mux16~4_combout\ & ((\U1|temp~9_combout\))))) # (!\Mux16~3_combout\ & (((!\Mux16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~3_combout\,
	datab => \U2|temp~9_combout\,
	datac => \Mux16~4_combout\,
	datad => \U1|temp~9_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X57_Y50_N2
\Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux15~0_combout\ & (((\U3|temp~6_combout\) # (!\Mux16~2_combout\)))) # (!\Mux15~0_combout\ & (\produto_escolhido[3]~input_o\ & ((\Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \produto_escolhido[3]~input_o\,
	datab => \Mux15~0_combout\,
	datac => \U3|temp~6_combout\,
	datad => \Mux16~2_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X57_Y50_N14
\U3|Add5~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add5~11_combout\ = (\estado_fsm[2]~input_o\ & (((\U2|temp~9_combout\)))) # (!\estado_fsm[2]~input_o\ & (\U3|temp~6_combout\ & (\estado_fsm[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~6_combout\,
	datab => \estado_fsm[1]~input_o\,
	datac => \estado_fsm[2]~input_o\,
	datad => \U2|temp~9_combout\,
	combout => \U3|Add5~11_combout\);

-- Location: LCCOMB_X57_Y50_N6
\U3|Add5~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add5~19_combout\ = (\U3|Add5~11_combout\) # ((\U1|temp~9_combout\ & (!\estado_fsm[2]~input_o\ & !\estado_fsm[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|temp~9_combout\,
	datab => \U3|Add5~11_combout\,
	datac => \estado_fsm[2]~input_o\,
	datad => \estado_fsm[1]~input_o\,
	combout => \U3|Add5~19_combout\);

-- Location: LCCOMB_X59_Y50_N20
\U3|Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add5~12_combout\ = (\U3|Add5~19_combout\ & (\U3|Add5~10\ $ (GND))) # (!\U3|Add5~19_combout\ & (!\U3|Add5~10\ & VCC))
-- \U3|Add5~13\ = CARRY((\U3|Add5~19_combout\ & !\U3|Add5~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|Add5~19_combout\,
	datad => VCC,
	cin => \U3|Add5~10\,
	combout => \U3|Add5~12_combout\,
	cout => \U3|Add5~13\);

-- Location: LCCOMB_X57_Y50_N28
\Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux16~8_combout\ & ((\U3|Add5~12_combout\))) # (!\Mux16~8_combout\ & (\Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux15~1_combout\,
	datac => \Mux16~8_combout\,
	datad => \U3|Add5~12_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X58_Y50_N30
\U3|Add5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add5~14_combout\ = (!\estado_fsm[2]~input_o\ & ((\estado_fsm[1]~input_o\ & ((!\U3|LessThan5~0_combout\))) # (!\estado_fsm[1]~input_o\ & (!\U1|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan5~0_combout\,
	datab => \U3|LessThan5~0_combout\,
	datac => \estado_fsm[1]~input_o\,
	datad => \estado_fsm[2]~input_o\,
	combout => \U3|Add5~14_combout\);

-- Location: LCCOMB_X59_Y50_N4
\U3|Add5~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add5~15_combout\ = (\U3|Add5~14_combout\) # ((\estado_fsm[2]~input_o\ & !\U2|LessThan5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[2]~input_o\,
	datab => \U3|Add5~14_combout\,
	datac => \U2|LessThan5~0_combout\,
	combout => \U3|Add5~15_combout\);

-- Location: LCCOMB_X59_Y50_N22
\U3|Add5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add5~16_combout\ = \U3|Add5~15_combout\ $ (\U3|Add5~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|Add5~15_combout\,
	cin => \U3|Add5~13\,
	combout => \U3|Add5~16_combout\);

-- Location: LCCOMB_X58_Y50_N14
\Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\estado_fsm[1]~input_o\ & (\U3|LessThan5~1_combout\ & ((!\estado_fsm[0]~input_o\)))) # (!\estado_fsm[1]~input_o\ & (((\U1|LessThan5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|LessThan5~1_combout\,
	datab => \U1|LessThan5~1_combout\,
	datac => \estado_fsm[0]~input_o\,
	datad => \estado_fsm[1]~input_o\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X59_Y50_N6
\Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\U3|Add5~16_combout\ & ((\Mux16~10_combout\) # ((!\estado_fsm[2]~input_o\ & \Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[2]~input_o\,
	datab => \Mux16~10_combout\,
	datac => \U3|Add5~16_combout\,
	datad => \Mux14~3_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X57_Y51_N4
\U2|temp~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|temp~16_combout\ = \U2|temp~7_combout\ $ ((((!\preco_produto[2]~input_o\ & !\U2|temp~6_combout\)) # (!\U2|temp~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|temp~8_combout\,
	datab => \preco_produto[2]~input_o\,
	datac => \U2|temp~6_combout\,
	datad => \U2|temp~7_combout\,
	combout => \U2|temp~16_combout\);

-- Location: LCCOMB_X57_Y51_N2
\U2|temp~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|temp~14_combout\ = (\preco_produto[6]~input_o\ & (\preco_produto[5]~input_o\ & (\preco_produto[7]~input_o\ & \preco_produto[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \preco_produto[6]~input_o\,
	datab => \preco_produto[5]~input_o\,
	datac => \preco_produto[7]~input_o\,
	datad => \preco_produto[4]~input_o\,
	combout => \U2|temp~14_combout\);

-- Location: LCCOMB_X57_Y51_N24
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\preco_produto[7]~input_o\ & ((\preco_produto[6]~input_o\) # (\preco_produto[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \preco_produto[6]~input_o\,
	datab => \preco_produto[5]~input_o\,
	datac => \preco_produto[7]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X57_Y51_N14
\U2|temp~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|temp~12_combout\ = \U2|temp~4_combout\ $ ((((!\preco_produto[3]~input_o\ & !\U2|temp~3_combout\)) # (!\U2|temp~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \preco_produto[3]~input_o\,
	datab => \U2|temp~5_combout\,
	datac => \U2|temp~4_combout\,
	datad => \U2|temp~3_combout\,
	combout => \U2|temp~12_combout\);

-- Location: LCCOMB_X58_Y51_N20
\U2|temp~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|temp~15_combout\ = (\U2|temp~14_combout\) # ((!\Mux9~0_combout\ & !\U2|temp~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|temp~14_combout\,
	datab => \Mux9~0_combout\,
	datad => \U2|temp~12_combout\,
	combout => \U2|temp~15_combout\);

-- Location: LCCOMB_X57_Y51_N20
\U2|temp~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|temp~11_combout\ = (\preco_produto[6]~input_o\ & ((\preco_produto[5]~input_o\ & ((\preco_produto[4]~input_o\) # (!\preco_produto[7]~input_o\))) # (!\preco_produto[5]~input_o\ & (!\preco_produto[7]~input_o\ & \preco_produto[4]~input_o\)))) # 
-- (!\preco_produto[6]~input_o\ & (!\preco_produto[5]~input_o\ & (\preco_produto[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \preco_produto[6]~input_o\,
	datab => \preco_produto[5]~input_o\,
	datac => \preco_produto[7]~input_o\,
	datad => \preco_produto[4]~input_o\,
	combout => \U2|temp~11_combout\);

-- Location: LCCOMB_X58_Y51_N18
\U2|temp~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|temp~13_combout\ = (\U2|temp~11_combout\ & ((!\Mux9~0_combout\) # (!\U2|temp~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|temp~12_combout\,
	datab => \Mux9~0_combout\,
	datad => \U2|temp~11_combout\,
	combout => \U2|temp~13_combout\);

-- Location: LCCOMB_X57_Y51_N6
\U2|temp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|temp~2_combout\ = (\preco_produto[5]~input_o\ & (((!\preco_produto[6]~input_o\)))) # (!\preco_produto[5]~input_o\ & (!\preco_produto[4]~input_o\ & (\preco_produto[6]~input_o\ & !\preco_produto[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \preco_produto[4]~input_o\,
	datab => \preco_produto[5]~input_o\,
	datac => \preco_produto[6]~input_o\,
	datad => \preco_produto[3]~input_o\,
	combout => \U2|temp~2_combout\);

-- Location: LCCOMB_X59_Y51_N14
\U2|temp~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|temp~17_combout\ = (\U2|temp~2_combout\ & \preco_produto[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|temp~2_combout\,
	datac => \preco_produto[7]~input_o\,
	combout => \U2|temp~17_combout\);

-- Location: LCCOMB_X60_Y51_N30
\U2|bcd_out[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|bcd_out[5]~0_combout\ = (\U2|temp~16_combout\ & (!\U2|temp~17_combout\ & ((!\U2|temp~13_combout\) # (!\U2|temp~15_combout\)))) # (!\U2|temp~16_combout\ & (((\U2|temp~13_combout\) # (\U2|temp~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|temp~16_combout\,
	datab => \U2|temp~15_combout\,
	datac => \U2|temp~13_combout\,
	datad => \U2|temp~17_combout\,
	combout => \U2|bcd_out[5]~0_combout\);

-- Location: LCCOMB_X55_Y51_N14
\U1|temp~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~13_combout\ = (\total_inserido[6]~input_o\ & (\total_inserido[5]~input_o\ & (\total_inserido[4]~input_o\ & \total_inserido[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[6]~input_o\,
	datab => \total_inserido[5]~input_o\,
	datac => \total_inserido[4]~input_o\,
	datad => \total_inserido[7]~input_o\,
	combout => \U1|temp~13_combout\);

-- Location: LCCOMB_X55_Y51_N22
\U1|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan0~0_combout\ = (\total_inserido[5]~input_o\) # (\total_inserido[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[5]~input_o\,
	datad => \total_inserido[6]~input_o\,
	combout => \U1|LessThan0~0_combout\);

-- Location: LCCOMB_X55_Y51_N0
\U1|temp~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~15_combout\ = \U1|temp~4_combout\ $ ((((!\total_inserido[3]~input_o\ & !\U1|temp~3_combout\)) # (!\U1|temp~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[3]~input_o\,
	datab => \U1|temp~5_combout\,
	datac => \U1|temp~4_combout\,
	datad => \U1|temp~3_combout\,
	combout => \U1|temp~15_combout\);

-- Location: LCCOMB_X55_Y51_N8
\U1|temp~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~14_combout\ = (\U1|temp~13_combout\) # ((!\U1|temp~15_combout\ & ((!\U1|LessThan0~0_combout\) # (!\total_inserido[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[7]~input_o\,
	datab => \U1|temp~13_combout\,
	datac => \U1|LessThan0~0_combout\,
	datad => \U1|temp~15_combout\,
	combout => \U1|temp~14_combout\);

-- Location: LCCOMB_X55_Y51_N20
\U1|temp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~2_combout\ = (\total_inserido[5]~input_o\ & (((!\total_inserido[6]~input_o\)))) # (!\total_inserido[5]~input_o\ & (!\total_inserido[3]~input_o\ & (!\total_inserido[4]~input_o\ & \total_inserido[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[5]~input_o\,
	datab => \total_inserido[3]~input_o\,
	datac => \total_inserido[4]~input_o\,
	datad => \total_inserido[6]~input_o\,
	combout => \U1|temp~2_combout\);

-- Location: LCCOMB_X55_Y51_N6
\U1|temp~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~17_combout\ = (\total_inserido[7]~input_o\ & \U1|temp~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[7]~input_o\,
	datad => \U1|temp~2_combout\,
	combout => \U1|temp~17_combout\);

-- Location: LCCOMB_X58_Y50_N0
\U1|temp~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~11_combout\ = \U1|temp~7_combout\ $ ((((!\U1|temp~6_combout\ & !\total_inserido[2]~input_o\)) # (!\U1|temp~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|temp~6_combout\,
	datab => \U1|temp~8_combout\,
	datac => \U1|temp~7_combout\,
	datad => \total_inserido[2]~input_o\,
	combout => \U1|temp~11_combout\);

-- Location: LCCOMB_X55_Y51_N18
\U1|temp~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~16_combout\ = (\total_inserido[6]~input_o\ & ((\total_inserido[5]~input_o\ & ((\total_inserido[4]~input_o\) # (!\total_inserido[7]~input_o\))) # (!\total_inserido[5]~input_o\ & (\total_inserido[4]~input_o\ & !\total_inserido[7]~input_o\)))) # 
-- (!\total_inserido[6]~input_o\ & (!\total_inserido[5]~input_o\ & ((\total_inserido[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[6]~input_o\,
	datab => \total_inserido[5]~input_o\,
	datac => \total_inserido[4]~input_o\,
	datad => \total_inserido[7]~input_o\,
	combout => \U1|temp~16_combout\);

-- Location: LCCOMB_X55_Y51_N28
\U1|temp~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|temp~12_combout\ = (\U1|temp~16_combout\ & (((!\U1|temp~15_combout\) # (!\U1|LessThan0~0_combout\)) # (!\total_inserido[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[7]~input_o\,
	datab => \U1|temp~16_combout\,
	datac => \U1|LessThan0~0_combout\,
	datad => \U1|temp~15_combout\,
	combout => \U1|temp~12_combout\);

-- Location: LCCOMB_X56_Y51_N8
\U1|LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan6~0_combout\ = (\U1|temp~17_combout\) # ((\U1|temp~12_combout\ & ((\U1|temp~14_combout\) # (!\U1|temp~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|temp~14_combout\,
	datab => \U1|temp~17_combout\,
	datac => \U1|temp~11_combout\,
	datad => \U1|temp~12_combout\,
	combout => \U1|LessThan6~0_combout\);

-- Location: LCCOMB_X62_Y51_N2
\U3|temp~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~8_combout\ = \U3|temp~4_combout\ $ ((((!\U3|temp~3_combout\ & !\troco_armazenado[2]~input_o\)) # (!\U3|temp~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~3_combout\,
	datab => \U3|temp~5_combout\,
	datac => \troco_armazenado[2]~input_o\,
	datad => \U3|temp~4_combout\,
	combout => \U3|temp~8_combout\);

-- Location: LCCOMB_X62_Y51_N22
\U3|temp~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~9_combout\ = \U3|temp~1_combout\ $ ((((!\troco_armazenado[3]~input_o\ & !\U3|temp~0_combout\)) # (!\U3|temp~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~1_combout\,
	datab => \U3|temp~2_combout\,
	datac => \troco_armazenado[3]~input_o\,
	datad => \U3|temp~0_combout\,
	combout => \U3|temp~9_combout\);

-- Location: LCCOMB_X62_Y51_N26
\U3|temp~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~13_combout\ = (\troco_armazenado[4]~input_o\ & (\troco_armazenado[6]~input_o\ & (\troco_armazenado[5]~input_o\ & \troco_armazenado[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \troco_armazenado[4]~input_o\,
	datab => \troco_armazenado[6]~input_o\,
	datac => \troco_armazenado[5]~input_o\,
	datad => \troco_armazenado[7]~input_o\,
	combout => \U3|temp~13_combout\);

-- Location: LCCOMB_X62_Y51_N28
\U3|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|LessThan0~0_combout\ = (\troco_armazenado[7]~input_o\ & ((\troco_armazenado[6]~input_o\) # (\troco_armazenado[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \troco_armazenado[6]~input_o\,
	datac => \troco_armazenado[5]~input_o\,
	datad => \troco_armazenado[7]~input_o\,
	combout => \U3|LessThan0~0_combout\);

-- Location: LCCOMB_X59_Y51_N12
\U3|temp~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~14_combout\ = (\U3|temp~13_combout\) # ((!\U3|temp~9_combout\ & !\U3|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|temp~9_combout\,
	datac => \U3|temp~13_combout\,
	datad => \U3|LessThan0~0_combout\,
	combout => \U3|temp~14_combout\);

-- Location: LCCOMB_X62_Y51_N8
\U3|temp~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~10_combout\ = (\troco_armazenado[6]~input_o\ & ((\troco_armazenado[4]~input_o\ & ((\troco_armazenado[5]~input_o\) # (!\troco_armazenado[7]~input_o\))) # (!\troco_armazenado[4]~input_o\ & (\troco_armazenado[5]~input_o\ & 
-- !\troco_armazenado[7]~input_o\)))) # (!\troco_armazenado[6]~input_o\ & (((!\troco_armazenado[5]~input_o\ & \troco_armazenado[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \troco_armazenado[4]~input_o\,
	datab => \troco_armazenado[6]~input_o\,
	datac => \troco_armazenado[5]~input_o\,
	datad => \troco_armazenado[7]~input_o\,
	combout => \U3|temp~10_combout\);

-- Location: LCCOMB_X59_Y51_N16
\U3|temp~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~11_combout\ = (!\U3|temp~10_combout\ & (\U3|temp~9_combout\ & \U3|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~10_combout\,
	datab => \U3|temp~9_combout\,
	datad => \U3|LessThan0~0_combout\,
	combout => \U3|temp~11_combout\);

-- Location: LCCOMB_X59_Y51_N18
\U3|temp~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|temp~12_combout\ = (\U3|temp~10_combout\ & ((!\U3|LessThan0~0_combout\) # (!\U3|temp~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~10_combout\,
	datab => \U3|temp~9_combout\,
	datad => \U3|LessThan0~0_combout\,
	combout => \U3|temp~12_combout\);

-- Location: LCCOMB_X59_Y51_N22
\U3|LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|LessThan6~0_combout\ = (\U3|temp~11_combout\) # ((\U3|temp~12_combout\ & ((\U3|temp~14_combout\) # (!\U3|temp~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~14_combout\,
	datab => \U3|temp~11_combout\,
	datac => \U3|temp~8_combout\,
	datad => \U3|temp~12_combout\,
	combout => \U3|LessThan6~0_combout\);

-- Location: LCCOMB_X60_Y51_N18
\Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\estado_fsm[1]~input_o\ & ((\estado_fsm[0]~input_o\) # (\U3|temp~8_combout\ $ (\U3|LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~8_combout\,
	datab => \U3|LessThan6~0_combout\,
	datac => \estado_fsm[1]~input_o\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X60_Y51_N4
\Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (!\Mux13~1_combout\ & ((\estado_fsm[1]~input_o\) # (\U1|LessThan6~0_combout\ $ (!\U1|temp~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan6~0_combout\,
	datab => \U1|temp~11_combout\,
	datac => \estado_fsm[1]~input_o\,
	datad => \Mux13~1_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X60_Y51_N0
\Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\U2|bcd_out[5]~0_combout\ & (!\estado_fsm[2]~input_o\ & (\Mux13~2_combout\))) # (!\U2|bcd_out[5]~0_combout\ & ((\Mux13~0_combout\) # ((!\estado_fsm[2]~input_o\ & \Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|bcd_out[5]~0_combout\,
	datab => \estado_fsm[2]~input_o\,
	datac => \Mux13~2_combout\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X60_Y51_N2
\Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\estado_fsm[1]~input_o\ & (((\U3|LessThan6~0_combout\ & !\estado_fsm[0]~input_o\)))) # (!\estado_fsm[1]~input_o\ & (\U1|LessThan6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan6~0_combout\,
	datab => \U3|LessThan6~0_combout\,
	datac => \estado_fsm[1]~input_o\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X58_Y51_N30
\Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux10~2_combout\) # (\estado_fsm[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux10~2_combout\,
	datac => \estado_fsm[2]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X60_Y51_N28
\U2|LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|LessThan6~0_combout\ = (\U2|temp~17_combout\) # ((\U2|temp~13_combout\ & ((\U2|temp~15_combout\) # (!\U2|temp~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|temp~16_combout\,
	datab => \U2|temp~15_combout\,
	datac => \U2|temp~13_combout\,
	datad => \U2|temp~17_combout\,
	combout => \U2|LessThan6~0_combout\);

-- Location: LCCOMB_X60_Y51_N14
\Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\U1|LessThan6~0_combout\ & ((\Mux4~0_combout\) # ((\U2|LessThan6~0_combout\ & \Mux13~0_combout\)))) # (!\U1|LessThan6~0_combout\ & (((\U2|LessThan6~0_combout\ & \Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan6~0_combout\,
	datab => \Mux4~0_combout\,
	datac => \U2|LessThan6~0_combout\,
	datad => \Mux13~0_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X60_Y51_N8
\Mux10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (!\estado_fsm[2]~input_o\ & (((\U3|LessThan6~0_combout\ & !\estado_fsm[0]~input_o\)) # (!\Mux10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[2]~input_o\,
	datab => \U3|LessThan6~0_combout\,
	datac => \Mux10~2_combout\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X58_Y51_N8
\Mux10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\Mux10~3_combout\ & ((\Mux10~4_combout\) # ((\estado_fsm[1]~input_o\ & \Mux10~5_combout\)))) # (!\Mux10~3_combout\ & (((\estado_fsm[1]~input_o\ & \Mux10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~3_combout\,
	datab => \Mux10~4_combout\,
	datac => \estado_fsm[1]~input_o\,
	datad => \Mux10~5_combout\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X59_Y51_N24
\U3|Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add6~0_combout\ = (!\estado_fsm[2]~input_o\ & ((\estado_fsm[1]~input_o\ & ((\U3|temp~14_combout\))) # (!\estado_fsm[1]~input_o\ & (\U1|temp~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|temp~14_combout\,
	datab => \estado_fsm[2]~input_o\,
	datac => \estado_fsm[1]~input_o\,
	datad => \U3|temp~14_combout\,
	combout => \U3|Add6~0_combout\);

-- Location: LCCOMB_X59_Y50_N8
\U3|Add6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add6~1_combout\ = (\U3|Add6~0_combout\) # ((\estado_fsm[2]~input_o\ & \U2|temp~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[2]~input_o\,
	datac => \U2|temp~15_combout\,
	datad => \U3|Add6~0_combout\,
	combout => \U3|Add6~1_combout\);

-- Location: LCCOMB_X60_Y51_N26
\U3|Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add6~2_combout\ = (\estado_fsm[2]~input_o\ & (\U2|temp~16_combout\)) # (!\estado_fsm[2]~input_o\ & (((\estado_fsm[1]~input_o\ & \U3|temp~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|temp~16_combout\,
	datab => \estado_fsm[2]~input_o\,
	datac => \estado_fsm[1]~input_o\,
	datad => \U3|temp~8_combout\,
	combout => \U3|Add6~2_combout\);

-- Location: LCCOMB_X59_Y50_N2
\U3|Add6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add6~3_combout\ = (\U3|Add6~2_combout\) # ((!\estado_fsm[2]~input_o\ & (\U1|temp~11_combout\ & !\estado_fsm[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[2]~input_o\,
	datab => \U1|temp~11_combout\,
	datac => \estado_fsm[1]~input_o\,
	datad => \U3|Add6~2_combout\,
	combout => \U3|Add6~3_combout\);

-- Location: LCCOMB_X59_Y50_N24
\U3|Add6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add6~5_cout\ = CARRY((!\U3|Add6~3_combout\ & !\Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Add6~3_combout\,
	datab => \Mux0~0_combout\,
	datad => VCC,
	cout => \U3|Add6~5_cout\);

-- Location: LCCOMB_X59_Y50_N26
\U3|Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add6~6_combout\ = (\U3|Add6~1_combout\ & ((\Mux0~0_combout\ & (!\U3|Add6~5_cout\)) # (!\Mux0~0_combout\ & (\U3|Add6~5_cout\ & VCC)))) # (!\U3|Add6~1_combout\ & ((\Mux0~0_combout\ & ((\U3|Add6~5_cout\) # (GND))) # (!\Mux0~0_combout\ & 
-- (!\U3|Add6~5_cout\))))
-- \U3|Add6~7\ = CARRY((\U3|Add6~1_combout\ & (\Mux0~0_combout\ & !\U3|Add6~5_cout\)) # (!\U3|Add6~1_combout\ & ((\Mux0~0_combout\) # (!\U3|Add6~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Add6~1_combout\,
	datab => \Mux0~0_combout\,
	datad => VCC,
	cin => \U3|Add6~5_cout\,
	combout => \U3|Add6~6_combout\,
	cout => \U3|Add6~7\);

-- Location: LCCOMB_X58_Y51_N0
\Mux18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\estado_fsm[1]~input_o\ & !\estado_fsm[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_fsm[1]~input_o\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X58_Y51_N26
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Mux18~3_combout\ & ((\U2|temp~14_combout\) # ((!\U2|temp~12_combout\ & !\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|temp~12_combout\,
	datab => \Mux18~3_combout\,
	datac => \Mux9~0_combout\,
	datad => \U2|temp~14_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X58_Y51_N12
\Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux10~3_combout\ & ((\Mux10~6_combout\ & (\U3|Add6~6_combout\)) # (!\Mux10~6_combout\ & ((\Mux12~0_combout\))))) # (!\Mux10~3_combout\ & (!\Mux10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~3_combout\,
	datab => \Mux10~6_combout\,
	datac => \U3|Add6~6_combout\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X58_Y51_N14
\Mux10~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~11_combout\ = (!\estado_fsm[2]~input_o\ & (!\Mux10~2_combout\ & ((!\estado_fsm[0]~input_o\) # (!\Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[2]~input_o\,
	datab => \Mux10~6_combout\,
	datac => \Mux10~2_combout\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux10~11_combout\);

-- Location: LCCOMB_X59_Y51_N10
Mux12 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~combout\ = (\Mux12~1_combout\ & ((\U1|temp~14_combout\) # ((!\Mux10~11_combout\)))) # (!\Mux12~1_combout\ & (((\U3|temp~14_combout\ & \Mux10~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|temp~14_combout\,
	datab => \U3|temp~14_combout\,
	datac => \Mux12~1_combout\,
	datad => \Mux10~11_combout\,
	combout => \Mux12~combout\);

-- Location: LCCOMB_X58_Y51_N22
\U3|Add6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add6~8_combout\ = (!\estado_fsm[2]~input_o\ & ((\estado_fsm[1]~input_o\ & ((\U3|temp~12_combout\))) # (!\estado_fsm[1]~input_o\ & (\U1|temp~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[2]~input_o\,
	datab => \U1|temp~12_combout\,
	datac => \estado_fsm[1]~input_o\,
	datad => \U3|temp~12_combout\,
	combout => \U3|Add6~8_combout\);

-- Location: LCCOMB_X58_Y51_N16
\U3|Add6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add6~9_combout\ = (\U3|Add6~8_combout\) # ((\estado_fsm[2]~input_o\ & \U2|temp~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[2]~input_o\,
	datab => \U2|temp~13_combout\,
	datac => \U3|Add6~8_combout\,
	combout => \U3|Add6~9_combout\);

-- Location: LCCOMB_X59_Y50_N28
\U3|Add6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add6~10_combout\ = (\U3|Add6~9_combout\ & (\U3|Add6~7\ $ (GND))) # (!\U3|Add6~9_combout\ & (!\U3|Add6~7\ & VCC))
-- \U3|Add6~11\ = CARRY((\U3|Add6~9_combout\ & !\U3|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|Add6~9_combout\,
	datad => VCC,
	cin => \U3|Add6~7\,
	combout => \U3|Add6~10_combout\,
	cout => \U3|Add6~11\);

-- Location: LCCOMB_X58_Y51_N10
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\U2|temp~11_combout\ & (\Mux18~3_combout\ & ((!\Mux9~0_combout\) # (!\U2|temp~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|temp~12_combout\,
	datab => \U2|temp~11_combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux18~3_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X58_Y51_N28
\Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux10~3_combout\ & ((\Mux10~6_combout\ & (\U3|Add6~10_combout\)) # (!\Mux10~6_combout\ & ((\Mux11~0_combout\))))) # (!\Mux10~3_combout\ & (!\Mux10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~3_combout\,
	datab => \Mux10~6_combout\,
	datac => \U3|Add6~10_combout\,
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X58_Y51_N6
Mux11 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~combout\ = (\Mux11~1_combout\ & ((\U1|temp~12_combout\) # ((!\Mux10~11_combout\)))) # (!\Mux11~1_combout\ & (((\Mux10~11_combout\ & \U3|temp~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|temp~12_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux10~11_combout\,
	datad => \U3|temp~12_combout\,
	combout => \Mux11~combout\);

-- Location: LCCOMB_X60_Y51_N12
\Mux10~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (\U2|temp~17_combout\ & (\estado_fsm[1]~input_o\ & !\estado_fsm[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|temp~17_combout\,
	datac => \estado_fsm[1]~input_o\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X59_Y51_N28
\U3|Add6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add6~12_combout\ = (!\estado_fsm[2]~input_o\ & ((\estado_fsm[1]~input_o\ & ((\U3|temp~11_combout\))) # (!\estado_fsm[1]~input_o\ & (\U1|temp~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|temp~17_combout\,
	datab => \estado_fsm[2]~input_o\,
	datac => \estado_fsm[1]~input_o\,
	datad => \U3|temp~11_combout\,
	combout => \U3|Add6~12_combout\);

-- Location: LCCOMB_X59_Y51_N30
\U3|Add6~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add6~13_combout\ = (\U3|Add6~12_combout\) # ((\estado_fsm[2]~input_o\ & \U2|temp~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_fsm[2]~input_o\,
	datac => \U2|temp~17_combout\,
	datad => \U3|Add6~12_combout\,
	combout => \U3|Add6~13_combout\);

-- Location: LCCOMB_X59_Y50_N30
\U3|Add6~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Add6~14_combout\ = \U3|Add6~13_combout\ $ (\U3|Add6~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Add6~13_combout\,
	cin => \U3|Add6~11\,
	combout => \U3|Add6~14_combout\);

-- Location: LCCOMB_X58_Y51_N24
\Mux10~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (\Mux10~6_combout\ & (((\Mux10~3_combout\ & \U3|Add6~14_combout\)))) # (!\Mux10~6_combout\ & ((\Mux10~7_combout\) # ((!\Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~7_combout\,
	datab => \Mux10~6_combout\,
	datac => \Mux10~3_combout\,
	datad => \U3|Add6~14_combout\,
	combout => \Mux10~8_combout\);

-- Location: LCCOMB_X59_Y51_N8
\Mux10~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~9_combout\ = (!\U3|temp~10_combout\ & (!\Mux10~8_combout\ & (\U3|temp~9_combout\ & \U3|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~10_combout\,
	datab => \Mux10~8_combout\,
	datac => \U3|temp~9_combout\,
	datad => \U3|LessThan0~0_combout\,
	combout => \Mux10~9_combout\);

-- Location: LCCOMB_X59_Y51_N26
\Mux10~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~10_combout\ = (\Mux10~11_combout\ & ((\Mux10~9_combout\) # ((\U1|temp~17_combout\ & \Mux10~8_combout\)))) # (!\Mux10~11_combout\ & (((\Mux10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|temp~17_combout\,
	datab => \Mux10~8_combout\,
	datac => \Mux10~9_combout\,
	datad => \Mux10~11_combout\,
	combout => \Mux10~10_combout\);

-- Location: LCCOMB_X58_Y51_N2
\Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & (\Mux13~0_combout\ & ((\U2|temp~11_combout\) # (!\U2|temp~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|temp~12_combout\,
	datab => \U2|temp~11_combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux13~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X55_Y51_N10
\Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (!\estado_fsm[1]~input_o\ & ((\total_inserido[3]~input_o\) # ((\total_inserido[4]~input_o\) # (\total_inserido[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[3]~input_o\,
	datab => \estado_fsm[1]~input_o\,
	datac => \total_inserido[4]~input_o\,
	datad => \total_inserido[5]~input_o\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X59_Y51_N20
\Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux18~3_combout\ & (\U3|LessThan0~0_combout\ & ((\U3|temp~10_combout\) # (!\U3|temp~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|temp~10_combout\,
	datab => \U3|temp~9_combout\,
	datac => \Mux18~3_combout\,
	datad => \U3|LessThan0~0_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X55_Y51_N12
\Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Mux9~2_combout\) # ((\total_inserido[7]~input_o\ & (\Mux9~3_combout\ & \total_inserido[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_inserido[7]~input_o\,
	datab => \Mux9~3_combout\,
	datac => \Mux9~2_combout\,
	datad => \total_inserido[6]~input_o\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X58_Y51_N4
\Mux9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux9~1_combout\) # ((!\estado_fsm[2]~input_o\ & \Mux9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[2]~input_o\,
	datab => \Mux9~1_combout\,
	datac => \Mux9~4_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X57_Y50_N22
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\estado_fsm[2]~input_o\) # ((!\estado_fsm[0]~input_o\ & \estado_fsm[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[0]~input_o\,
	datab => \estado_fsm[1]~input_o\,
	datac => \estado_fsm[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X60_Y51_N22
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\estado_fsm[2]~input_o\ & \estado_fsm[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_fsm[2]~input_o\,
	datad => \estado_fsm[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X59_Y50_N12
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (!\estado_fsm[2]~input_o\ & (!\estado_fsm[1]~input_o\ & !\estado_fsm[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[2]~input_o\,
	datab => \estado_fsm[1]~input_o\,
	datac => \estado_fsm[0]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X57_Y50_N8
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\estado_fsm[0]~input_o\ & (\estado_fsm[1]~input_o\ $ (\estado_fsm[2]~input_o\))) # (!\estado_fsm[0]~input_o\ & (\estado_fsm[1]~input_o\ & \estado_fsm[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[0]~input_o\,
	datab => \estado_fsm[1]~input_o\,
	datac => \estado_fsm[2]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X57_Y50_N18
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\estado_fsm[1]~input_o\ $ (\estado_fsm[2]~input_o\)) # (!\estado_fsm[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[0]~input_o\,
	datab => \estado_fsm[1]~input_o\,
	datac => \estado_fsm[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X59_Y50_N14
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\estado_fsm[2]~input_o\ & (\estado_fsm[1]~input_o\ & \estado_fsm[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_fsm[2]~input_o\,
	datab => \estado_fsm[1]~input_o\,
	datac => \estado_fsm[0]~input_o\,
	combout => \Mux0~1_combout\);

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

ww_valor_displays(0) <= \valor_displays[0]~output_o\;

ww_valor_displays(1) <= \valor_displays[1]~output_o\;

ww_valor_displays(2) <= \valor_displays[2]~output_o\;

ww_valor_displays(3) <= \valor_displays[3]~output_o\;

ww_valor_displays(4) <= \valor_displays[4]~output_o\;

ww_valor_displays(5) <= \valor_displays[5]~output_o\;

ww_valor_displays(6) <= \valor_displays[6]~output_o\;

ww_valor_displays(7) <= \valor_displays[7]~output_o\;

ww_valor_displays(8) <= \valor_displays[8]~output_o\;

ww_valor_displays(9) <= \valor_displays[9]~output_o\;

ww_valor_displays(10) <= \valor_displays[10]~output_o\;

ww_valor_displays(11) <= \valor_displays[11]~output_o\;

ww_valor_displays(12) <= \valor_displays[12]~output_o\;

ww_valor_displays(13) <= \valor_displays[13]~output_o\;

ww_valor_displays(14) <= \valor_displays[14]~output_o\;

ww_valor_displays(15) <= \valor_displays[15]~output_o\;

ww_valor_displays(16) <= \valor_displays[16]~output_o\;

ww_valor_displays(17) <= \valor_displays[17]~output_o\;

ww_valor_displays(18) <= \valor_displays[18]~output_o\;

ww_valor_displays(19) <= \valor_displays[19]~output_o\;

ww_valor_displays(20) <= \valor_displays[20]~output_o\;

ww_valor_displays(21) <= \valor_displays[21]~output_o\;

ww_valor_displays(22) <= \valor_displays[22]~output_o\;

ww_valor_displays(23) <= \valor_displays[23]~output_o\;
END structure;


