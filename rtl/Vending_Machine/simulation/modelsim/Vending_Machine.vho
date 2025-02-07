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

-- DATE "02/07/2025 16:17:21"

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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Vending_Machine IS
    PORT (
	clk : IN std_logic;
	coin_inserted_more_coins : IN std_logic;
	product_chosen_not_more_coins : IN std_logic;
	coin_value : IN std_logic_vector(3 DOWNTO 0);
	product_selection : IN std_logic_vector(3 DOWNTO 0);
	retorna_troco : BUFFER std_logic;
	libera_produto : BUFFER std_logic;
	troco_total : BUFFER std_logic_vector(7 DOWNTO 0);
	valor_displays : BUFFER std_logic_vector(41 DOWNTO 0)
	);
END Vending_Machine;

-- Design Ports Information
-- retorna_troco	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- libera_produto	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_total[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_total[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_total[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_total[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_total[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_total[5]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_total[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_total[7]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[7]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[8]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[9]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[10]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[11]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[12]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[13]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[14]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[15]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[16]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[17]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[18]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[19]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[20]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[21]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[22]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[23]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[24]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[25]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[26]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[27]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[28]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[29]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[30]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[31]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[32]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[33]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[34]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[35]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[36]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[37]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[38]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[39]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[40]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[41]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_selection[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_selection[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_selection[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_selection[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_inserted_more_coins	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_chosen_not_more_coins	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_value[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_value[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_value[3]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_value[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Vending_Machine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_coin_inserted_more_coins : std_logic;
SIGNAL ww_product_chosen_not_more_coins : std_logic;
SIGNAL ww_coin_value : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_product_selection : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_retorna_troco : std_logic;
SIGNAL ww_libera_produto : std_logic;
SIGNAL ww_troco_total : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_valor_displays : std_logic_vector(41 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \maquinaEstados|reset~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \retorna_troco~output_o\ : std_logic;
SIGNAL \libera_produto~output_o\ : std_logic;
SIGNAL \troco_total[0]~output_o\ : std_logic;
SIGNAL \troco_total[1]~output_o\ : std_logic;
SIGNAL \troco_total[2]~output_o\ : std_logic;
SIGNAL \troco_total[3]~output_o\ : std_logic;
SIGNAL \troco_total[4]~output_o\ : std_logic;
SIGNAL \troco_total[5]~output_o\ : std_logic;
SIGNAL \troco_total[6]~output_o\ : std_logic;
SIGNAL \troco_total[7]~output_o\ : std_logic;
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
SIGNAL \valor_displays[24]~output_o\ : std_logic;
SIGNAL \valor_displays[25]~output_o\ : std_logic;
SIGNAL \valor_displays[26]~output_o\ : std_logic;
SIGNAL \valor_displays[27]~output_o\ : std_logic;
SIGNAL \valor_displays[28]~output_o\ : std_logic;
SIGNAL \valor_displays[29]~output_o\ : std_logic;
SIGNAL \valor_displays[30]~output_o\ : std_logic;
SIGNAL \valor_displays[31]~output_o\ : std_logic;
SIGNAL \valor_displays[32]~output_o\ : std_logic;
SIGNAL \valor_displays[33]~output_o\ : std_logic;
SIGNAL \valor_displays[34]~output_o\ : std_logic;
SIGNAL \valor_displays[35]~output_o\ : std_logic;
SIGNAL \valor_displays[36]~output_o\ : std_logic;
SIGNAL \valor_displays[37]~output_o\ : std_logic;
SIGNAL \valor_displays[38]~output_o\ : std_logic;
SIGNAL \valor_displays[39]~output_o\ : std_logic;
SIGNAL \valor_displays[40]~output_o\ : std_logic;
SIGNAL \valor_displays[41]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \product_chosen_not_more_coins~input_o\ : std_logic;
SIGNAL \coin_inserted_more_coins~input_o\ : std_logic;
SIGNAL \coin_value[3]~input_o\ : std_logic;
SIGNAL \coin_value[2]~input_o\ : std_logic;
SIGNAL \coin_value[1]~input_o\ : std_logic;
SIGNAL \coin_value[0]~input_o\ : std_logic;
SIGNAL \caminhoDados|reg_total_inserido|valor_armazenado[0]~8_combout\ : std_logic;
SIGNAL \maquinaEstados|Selector2~0_combout\ : std_logic;
SIGNAL \product_selection[3]~input_o\ : std_logic;
SIGNAL \product_selection[1]~input_o\ : std_logic;
SIGNAL \product_selection[0]~input_o\ : std_logic;
SIGNAL \product_selection[2]~input_o\ : std_logic;
SIGNAL \caminhoDados|decod_preco_prod|Mux0~0_combout\ : std_logic;
SIGNAL \caminhoDados|decod_preco_prod|Mux1~0_combout\ : std_logic;
SIGNAL \caminhoDados|decod_preco_prod|Mux2~0_combout\ : std_logic;
SIGNAL \caminhoDados|decod_preco_prod|Mux3~0_combout\ : std_logic;
SIGNAL \caminhoDados|decod_preco_prod|Mux4~0_combout\ : std_logic;
SIGNAL \caminhoDados|decod_preco_prod|Mux5~0_combout\ : std_logic;
SIGNAL \caminhoDados|decod_preco_prod|Mux6~0_combout\ : std_logic;
SIGNAL \caminhoDados|decod_preco_prod|Mux7~0_combout\ : std_logic;
SIGNAL \caminhoDados|comp_maior|LessThan0~1_cout\ : std_logic;
SIGNAL \caminhoDados|comp_maior|LessThan0~3_cout\ : std_logic;
SIGNAL \caminhoDados|comp_maior|LessThan0~5_cout\ : std_logic;
SIGNAL \caminhoDados|comp_maior|LessThan0~7_cout\ : std_logic;
SIGNAL \caminhoDados|comp_maior|LessThan0~9_cout\ : std_logic;
SIGNAL \caminhoDados|comp_maior|LessThan0~11_cout\ : std_logic;
SIGNAL \caminhoDados|comp_maior|LessThan0~13_cout\ : std_logic;
SIGNAL \caminhoDados|comp_maior|LessThan0~14_combout\ : std_logic;
SIGNAL \maquinaEstados|Selector2~1_combout\ : std_logic;
SIGNAL \maquinaEstados|reset~0_combout\ : std_logic;
SIGNAL \maquinaEstados|reset~0clkctrl_outclk\ : std_logic;
SIGNAL \maquinaEstados|estado_atual.FINALIZA_STATE~q\ : std_logic;
SIGNAL \caminhoDados|reg_total_inserido|valor_armazenado[0]~9\ : std_logic;
SIGNAL \caminhoDados|reg_total_inserido|valor_armazenado[1]~10_combout\ : std_logic;
SIGNAL \caminhoDados|reg_total_inserido|valor_armazenado[1]~11\ : std_logic;
SIGNAL \caminhoDados|reg_total_inserido|valor_armazenado[2]~12_combout\ : std_logic;
SIGNAL \caminhoDados|reg_total_inserido|valor_armazenado[2]~13\ : std_logic;
SIGNAL \caminhoDados|reg_total_inserido|valor_armazenado[3]~14_combout\ : std_logic;
SIGNAL \caminhoDados|reg_total_inserido|valor_armazenado[3]~15\ : std_logic;
SIGNAL \caminhoDados|reg_total_inserido|valor_armazenado[4]~16_combout\ : std_logic;
SIGNAL \caminhoDados|reg_total_inserido|valor_armazenado[4]~17\ : std_logic;
SIGNAL \caminhoDados|reg_total_inserido|valor_armazenado[5]~18_combout\ : std_logic;
SIGNAL \caminhoDados|reg_total_inserido|valor_armazenado[5]~19\ : std_logic;
SIGNAL \caminhoDados|reg_total_inserido|valor_armazenado[6]~20_combout\ : std_logic;
SIGNAL \caminhoDados|reg_total_inserido|valor_armazenado[6]~21\ : std_logic;
SIGNAL \caminhoDados|reg_total_inserido|valor_armazenado[7]~22_combout\ : std_logic;
SIGNAL \caminhoDados|comp_maior_igual|LessThan0~1_cout\ : std_logic;
SIGNAL \caminhoDados|comp_maior_igual|LessThan0~3_cout\ : std_logic;
SIGNAL \caminhoDados|comp_maior_igual|LessThan0~5_cout\ : std_logic;
SIGNAL \caminhoDados|comp_maior_igual|LessThan0~7_cout\ : std_logic;
SIGNAL \caminhoDados|comp_maior_igual|LessThan0~9_cout\ : std_logic;
SIGNAL \caminhoDados|comp_maior_igual|LessThan0~11_cout\ : std_logic;
SIGNAL \caminhoDados|comp_maior_igual|LessThan0~13_cout\ : std_logic;
SIGNAL \caminhoDados|comp_maior_igual|LessThan0~14_combout\ : std_logic;
SIGNAL \maquinaEstados|Selector1~0_combout\ : std_logic;
SIGNAL \maquinaEstados|Selector1~1_combout\ : std_logic;
SIGNAL \maquinaEstados|estado_atual.ERRO_VALOR_STATE~q\ : std_logic;
SIGNAL \maquinaEstados|proximo_estado.REGISTRA_MOEDA_STATE~0_combout\ : std_logic;
SIGNAL \maquinaEstados|estado_atual.REGISTRA_MOEDA_STATE~q\ : std_logic;
SIGNAL \maquinaEstados|Selector0~0_combout\ : std_logic;
SIGNAL \maquinaEstados|Selector0~1_combout\ : std_logic;
SIGNAL \maquinaEstados|estado_atual.ESPERA_STATE~q\ : std_logic;
SIGNAL \maquinaEstados|proximo_estado.VERIFICA_CREDITO_STATE~0_combout\ : std_logic;
SIGNAL \maquinaEstados|estado_atual.VERIFICA_CREDITO_STATE~q\ : std_logic;
SIGNAL \maquinaEstados|proximo_estado.LIBERA_PRODUTO_STATE~0_combout\ : std_logic;
SIGNAL \maquinaEstados|estado_atual.LIBERA_PRODUTO_STATE~q\ : std_logic;
SIGNAL \maquinaEstados|proximo_estado.CALCULA_TROCO_STATE~0_combout\ : std_logic;
SIGNAL \maquinaEstados|estado_atual.CALCULA_TROCO_STATE~q\ : std_logic;
SIGNAL \maquinaEstados|estado_atual.RETORNA_TROCO_STATE~feeder_combout\ : std_logic;
SIGNAL \maquinaEstados|estado_atual.RETORNA_TROCO_STATE~q\ : std_logic;
SIGNAL \caminhoDados|reg_troco|valor_armazenado[0]~8_combout\ : std_logic;
SIGNAL \caminhoDados|reg_troco|valor_armazenado[0]~9\ : std_logic;
SIGNAL \caminhoDados|reg_troco|valor_armazenado[1]~10_combout\ : std_logic;
SIGNAL \caminhoDados|reg_troco|valor_armazenado[1]~11\ : std_logic;
SIGNAL \caminhoDados|reg_troco|valor_armazenado[2]~12_combout\ : std_logic;
SIGNAL \caminhoDados|reg_troco|valor_armazenado[2]~13\ : std_logic;
SIGNAL \caminhoDados|reg_troco|valor_armazenado[3]~14_combout\ : std_logic;
SIGNAL \caminhoDados|reg_troco|valor_armazenado[3]~15\ : std_logic;
SIGNAL \caminhoDados|reg_troco|valor_armazenado[4]~16_combout\ : std_logic;
SIGNAL \caminhoDados|reg_troco|valor_armazenado[4]~17\ : std_logic;
SIGNAL \caminhoDados|reg_troco|valor_armazenado[5]~18_combout\ : std_logic;
SIGNAL \caminhoDados|reg_troco|valor_armazenado[5]~19\ : std_logic;
SIGNAL \caminhoDados|reg_troco|valor_armazenado[6]~20_combout\ : std_logic;
SIGNAL \caminhoDados|reg_troco|valor_armazenado[6]~21\ : std_logic;
SIGNAL \caminhoDados|reg_troco|valor_armazenado[7]~22_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|temp~3_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|temp~5_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|temp~4_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|LessThan2~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|LessThan3~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|temp~7_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|temp~10_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|temp~5_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|temp~4_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|temp~3_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|temp~7_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|temp~6_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|temp~8_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|temp~11_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux15~0_combout\ : std_logic;
SIGNAL \maquinaEstados|WideOr5~0_combout\ : std_logic;
SIGNAL \maquinaEstados|WideOr3~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux15~1_combout\ : std_logic;
SIGNAL \maquinaEstados|WideOr4~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux15~2_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|LessThan3~1_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add5~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add5~1_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add5~3_cout\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add5~4_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|temp~9_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|temp~10_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|LessThan5~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux13~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|temp~9_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|Add3~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|temp~6_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|temp~8_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|LessThan5~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux4~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux13~1_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux15~3_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux16~1_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux3~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux16~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux16~2_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux16~3_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux17~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux17~1_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add5~6_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add5~5\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add5~7_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux14~4_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux14~1_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux14~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux14~2_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux14~3_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux14~5_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux24~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux23~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux22~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux21~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux20~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux19~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux18~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|LessThan4~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|temp~15_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|temp~12_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add6~6_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|temp~14_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|LessThan4~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|temp~13_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add6~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|temp~14_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add6~1_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add6~3_cout\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add6~4_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add6~7_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|LessThan0~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|temp~16_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|temp~13_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|temp~2_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|temp~17_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|LessThan6~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|LessThan0~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|temp~15_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|temp~12_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|temp~2_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|temp~16_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|temp~11_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|LessThan6~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux9~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add6~8_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add5~9_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add5~8\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add5~10_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux13~2_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux13~3_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux13~4_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux13~5_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add6~9_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add6~5\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add6~10_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add6~12_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add6~13_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add6~14_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|bcd_out[5]~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux12~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux12~1_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux31~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux30~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux29~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux28~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux27~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux26~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux25~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux6~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux8~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|U1|LessThan4~1_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux8~1_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add6~15_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add6~11\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add6~16_combout\ : std_logic;
SIGNAL \caminhoDados|display|U3|Add6~18_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux38~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux37~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux36~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux35~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux33~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux32~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux52~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux52~1_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux3~1_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux48~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux54~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux56~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|Mux55~0_combout\ : std_logic;
SIGNAL \caminhoDados|reg_troco|valor_armazenado\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \caminhoDados|reg_total_inserido|valor_armazenado\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \maquinaEstados|ALT_INV_reset~0clkctrl_outclk\ : std_logic;
SIGNAL \caminhoDados|display|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \caminhoDados|display|ALT_INV_Mux52~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \caminhoDados|display|ALT_INV_Mux13~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_coin_inserted_more_coins <= coin_inserted_more_coins;
ww_product_chosen_not_more_coins <= product_chosen_not_more_coins;
ww_coin_value <= coin_value;
ww_product_selection <= product_selection;
retorna_troco <= ww_retorna_troco;
libera_produto <= ww_libera_produto;
troco_total <= ww_troco_total;
valor_displays <= ww_valor_displays;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\maquinaEstados|reset~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \maquinaEstados|reset~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\maquinaEstados|ALT_INV_reset~0clkctrl_outclk\ <= NOT \maquinaEstados|reset~0clkctrl_outclk\;
\caminhoDados|display|ALT_INV_Mux3~1_combout\ <= NOT \caminhoDados|display|Mux3~1_combout\;
\caminhoDados|display|ALT_INV_Mux52~0_combout\ <= NOT \caminhoDados|display|Mux52~0_combout\;
\caminhoDados|display|ALT_INV_Mux25~0_combout\ <= NOT \caminhoDados|display|Mux25~0_combout\;
\caminhoDados|display|ALT_INV_Mux18~0_combout\ <= NOT \caminhoDados|display|Mux18~0_combout\;
\caminhoDados|display|ALT_INV_Mux13~0_combout\ <= NOT \caminhoDados|display|Mux13~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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

-- Location: IOOBUF_X62_Y54_N30
\retorna_troco~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \maquinaEstados|estado_atual.RETORNA_TROCO_STATE~q\,
	devoe => ww_devoe,
	o => \retorna_troco~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\libera_produto~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \maquinaEstados|estado_atual.LIBERA_PRODUTO_STATE~q\,
	devoe => ww_devoe,
	o => \libera_produto~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\troco_total[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|reg_troco|valor_armazenado\(0),
	devoe => ww_devoe,
	o => \troco_total[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\troco_total[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|reg_troco|valor_armazenado\(1),
	devoe => ww_devoe,
	o => \troco_total[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\troco_total[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|reg_troco|valor_armazenado\(2),
	devoe => ww_devoe,
	o => \troco_total[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\troco_total[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|reg_troco|valor_armazenado\(3),
	devoe => ww_devoe,
	o => \troco_total[3]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\troco_total[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|reg_troco|valor_armazenado\(4),
	devoe => ww_devoe,
	o => \troco_total[4]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\troco_total[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|reg_troco|valor_armazenado\(5),
	devoe => ww_devoe,
	o => \troco_total[5]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\troco_total[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|reg_troco|valor_armazenado\(6),
	devoe => ww_devoe,
	o => \troco_total[6]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\troco_total[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|reg_troco|valor_armazenado\(7),
	devoe => ww_devoe,
	o => \troco_total[7]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\valor_displays[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux24~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[0]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\valor_displays[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux23~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[1]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\valor_displays[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux22~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[2]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\valor_displays[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux21~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[3]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\valor_displays[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux20~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[4]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\valor_displays[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux19~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[5]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\valor_displays[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|ALT_INV_Mux18~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\valor_displays[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\valor_displays[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux30~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[8]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\valor_displays[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux29~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[9]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\valor_displays[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[10]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\valor_displays[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux27~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[11]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\valor_displays[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux26~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[12]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\valor_displays[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|ALT_INV_Mux25~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[13]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\valor_displays[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux38~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[14]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\valor_displays[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux37~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[15]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\valor_displays[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux36~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[16]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\valor_displays[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux35~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[17]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\valor_displays[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|U3|Add6~18_combout\,
	devoe => ww_devoe,
	o => \valor_displays[18]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\valor_displays[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux33~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[19]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\valor_displays[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[20]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\valor_displays[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \valor_displays[21]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\valor_displays[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \valor_displays[22]~output_o\);

-- Location: IOOBUF_X78_Y25_N2
\valor_displays[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \valor_displays[23]~output_o\);

-- Location: IOOBUF_X0_Y3_N23
\valor_displays[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \valor_displays[24]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\valor_displays[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \valor_displays[25]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\valor_displays[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \valor_displays[26]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\valor_displays[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \valor_displays[27]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\valor_displays[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|ALT_INV_Mux52~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[28]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\valor_displays[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux52~1_combout\,
	devoe => ww_devoe,
	o => \valor_displays[29]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\valor_displays[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[30]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\valor_displays[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|ALT_INV_Mux3~1_combout\,
	devoe => ww_devoe,
	o => \valor_displays[31]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\valor_displays[32]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux48~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[32]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\valor_displays[33]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux48~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[33]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\valor_displays[34]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux52~1_combout\,
	devoe => ww_devoe,
	o => \valor_displays[34]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\valor_displays[35]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux54~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[35]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\valor_displays[36]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|ALT_INV_Mux3~1_combout\,
	devoe => ww_devoe,
	o => \valor_displays[36]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\valor_displays[37]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \valor_displays[37]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\valor_displays[38]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux56~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[38]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\valor_displays[39]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux55~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[39]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\valor_displays[40]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux55~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[40]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\valor_displays[41]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \caminhoDados|display|Mux55~0_combout\,
	devoe => ww_devoe,
	o => \valor_displays[41]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X56_Y54_N15
\product_chosen_not_more_coins~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_chosen_not_more_coins,
	o => \product_chosen_not_more_coins~input_o\);

-- Location: IOIBUF_X58_Y54_N15
\coin_inserted_more_coins~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_inserted_more_coins,
	o => \coin_inserted_more_coins~input_o\);

-- Location: IOIBUF_X60_Y54_N15
\coin_value[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_value(3),
	o => \coin_value[3]~input_o\);

-- Location: IOIBUF_X64_Y54_N1
\coin_value[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_value(2),
	o => \coin_value[2]~input_o\);

-- Location: IOIBUF_X60_Y54_N22
\coin_value[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_value(1),
	o => \coin_value[1]~input_o\);

-- Location: IOIBUF_X60_Y54_N1
\coin_value[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_value(0),
	o => \coin_value[0]~input_o\);

-- Location: LCCOMB_X56_Y50_N16
\caminhoDados|reg_total_inserido|valor_armazenado[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|reg_total_inserido|valor_armazenado[0]~8_combout\ = (\coin_value[0]~input_o\ & (\caminhoDados|reg_total_inserido|valor_armazenado\(0) $ (VCC))) # (!\coin_value[0]~input_o\ & (\caminhoDados|reg_total_inserido|valor_armazenado\(0) & VCC))
-- \caminhoDados|reg_total_inserido|valor_armazenado[0]~9\ = CARRY((\coin_value[0]~input_o\ & \caminhoDados|reg_total_inserido|valor_armazenado\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coin_value[0]~input_o\,
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(0),
	datad => VCC,
	combout => \caminhoDados|reg_total_inserido|valor_armazenado[0]~8_combout\,
	cout => \caminhoDados|reg_total_inserido|valor_armazenado[0]~9\);

-- Location: LCCOMB_X54_Y50_N6
\maquinaEstados|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \maquinaEstados|Selector2~0_combout\ = (\maquinaEstados|estado_atual.RETORNA_TROCO_STATE~q\) # ((\maquinaEstados|estado_atual.ERRO_VALOR_STATE~q\ & (\product_chosen_not_more_coins~input_o\ & !\coin_inserted_more_coins~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|estado_atual.RETORNA_TROCO_STATE~q\,
	datab => \maquinaEstados|estado_atual.ERRO_VALOR_STATE~q\,
	datac => \product_chosen_not_more_coins~input_o\,
	datad => \coin_inserted_more_coins~input_o\,
	combout => \maquinaEstados|Selector2~0_combout\);

-- Location: IOIBUF_X56_Y54_N8
\product_selection[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_selection(3),
	o => \product_selection[3]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\product_selection[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_selection(1),
	o => \product_selection[1]~input_o\);

-- Location: IOIBUF_X31_Y39_N22
\product_selection[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_selection(0),
	o => \product_selection[0]~input_o\);

-- Location: IOIBUF_X60_Y54_N8
\product_selection[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_selection(2),
	o => \product_selection[2]~input_o\);

-- Location: LCCOMB_X52_Y50_N10
\caminhoDados|decod_preco_prod|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|decod_preco_prod|Mux0~0_combout\ = (\product_selection[2]~input_o\ & (!\product_selection[3]~input_o\)) # (!\product_selection[2]~input_o\ & (\product_selection[0]~input_o\ & (\product_selection[3]~input_o\ $ 
-- (\product_selection[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_selection[3]~input_o\,
	datab => \product_selection[1]~input_o\,
	datac => \product_selection[0]~input_o\,
	datad => \product_selection[2]~input_o\,
	combout => \caminhoDados|decod_preco_prod|Mux0~0_combout\);

-- Location: LCCOMB_X52_Y50_N24
\caminhoDados|decod_preco_prod|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|decod_preco_prod|Mux1~0_combout\ = (\product_selection[0]~input_o\ & ((\product_selection[1]~input_o\ & ((!\product_selection[2]~input_o\) # (!\product_selection[3]~input_o\))) # (!\product_selection[1]~input_o\ & 
-- ((\product_selection[2]~input_o\))))) # (!\product_selection[0]~input_o\ & (\product_selection[3]~input_o\ $ (((\product_selection[1]~input_o\ & !\product_selection[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_selection[3]~input_o\,
	datab => \product_selection[1]~input_o\,
	datac => \product_selection[0]~input_o\,
	datad => \product_selection[2]~input_o\,
	combout => \caminhoDados|decod_preco_prod|Mux1~0_combout\);

-- Location: LCCOMB_X52_Y50_N6
\caminhoDados|decod_preco_prod|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|decod_preco_prod|Mux2~0_combout\ = (\product_selection[3]~input_o\ & (((\product_selection[2]~input_o\) # (!\product_selection[0]~input_o\)))) # (!\product_selection[3]~input_o\ & (!\product_selection[1]~input_o\ & 
-- ((\product_selection[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_selection[3]~input_o\,
	datab => \product_selection[1]~input_o\,
	datac => \product_selection[0]~input_o\,
	datad => \product_selection[2]~input_o\,
	combout => \caminhoDados|decod_preco_prod|Mux2~0_combout\);

-- Location: LCCOMB_X52_Y50_N8
\caminhoDados|decod_preco_prod|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|decod_preco_prod|Mux3~0_combout\ = (\product_selection[2]~input_o\ & (!\product_selection[1]~input_o\ & (\product_selection[3]~input_o\ $ (\product_selection[0]~input_o\)))) # (!\product_selection[2]~input_o\ & 
-- (\product_selection[3]~input_o\ & ((!\product_selection[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_selection[3]~input_o\,
	datab => \product_selection[1]~input_o\,
	datac => \product_selection[0]~input_o\,
	datad => \product_selection[2]~input_o\,
	combout => \caminhoDados|decod_preco_prod|Mux3~0_combout\);

-- Location: LCCOMB_X52_Y50_N18
\caminhoDados|decod_preco_prod|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|decod_preco_prod|Mux4~0_combout\ = (\product_selection[1]~input_o\ & ((\product_selection[0]~input_o\ $ (\product_selection[2]~input_o\)))) # (!\product_selection[1]~input_o\ & ((\product_selection[3]~input_o\ & 
-- ((!\product_selection[2]~input_o\))) # (!\product_selection[3]~input_o\ & (\product_selection[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_selection[3]~input_o\,
	datab => \product_selection[1]~input_o\,
	datac => \product_selection[0]~input_o\,
	datad => \product_selection[2]~input_o\,
	combout => \caminhoDados|decod_preco_prod|Mux4~0_combout\);

-- Location: LCCOMB_X52_Y50_N4
\caminhoDados|decod_preco_prod|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|decod_preco_prod|Mux5~0_combout\ = (\product_selection[0]~input_o\ & (((\product_selection[2]~input_o\)))) # (!\product_selection[0]~input_o\ & ((\product_selection[2]~input_o\ & ((!\product_selection[1]~input_o\))) # 
-- (!\product_selection[2]~input_o\ & (\product_selection[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_selection[3]~input_o\,
	datab => \product_selection[1]~input_o\,
	datac => \product_selection[0]~input_o\,
	datad => \product_selection[2]~input_o\,
	combout => \caminhoDados|decod_preco_prod|Mux5~0_combout\);

-- Location: LCCOMB_X52_Y50_N22
\caminhoDados|decod_preco_prod|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|decod_preco_prod|Mux6~0_combout\ = (\product_selection[1]~input_o\ & (((\product_selection[0]~input_o\)) # (!\product_selection[3]~input_o\))) # (!\product_selection[1]~input_o\ & (\product_selection[2]~input_o\ $ 
-- (((!\product_selection[3]~input_o\ & \product_selection[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_selection[3]~input_o\,
	datab => \product_selection[1]~input_o\,
	datac => \product_selection[0]~input_o\,
	datad => \product_selection[2]~input_o\,
	combout => \caminhoDados|decod_preco_prod|Mux6~0_combout\);

-- Location: LCCOMB_X52_Y50_N12
\caminhoDados|decod_preco_prod|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|decod_preco_prod|Mux7~0_combout\ = (\product_selection[1]~input_o\ & (((!\product_selection[3]~input_o\ & !\product_selection[2]~input_o\)) # (!\product_selection[0]~input_o\))) # (!\product_selection[1]~input_o\ & 
-- (((\product_selection[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_selection[3]~input_o\,
	datab => \product_selection[1]~input_o\,
	datac => \product_selection[0]~input_o\,
	datad => \product_selection[2]~input_o\,
	combout => \caminhoDados|decod_preco_prod|Mux7~0_combout\);

-- Location: LCCOMB_X54_Y50_N14
\caminhoDados|comp_maior|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|comp_maior|LessThan0~1_cout\ = CARRY((\caminhoDados|reg_total_inserido|valor_armazenado\(0) & !\caminhoDados|decod_preco_prod|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_total_inserido|valor_armazenado\(0),
	datab => \caminhoDados|decod_preco_prod|Mux7~0_combout\,
	datad => VCC,
	cout => \caminhoDados|comp_maior|LessThan0~1_cout\);

-- Location: LCCOMB_X54_Y50_N16
\caminhoDados|comp_maior|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|comp_maior|LessThan0~3_cout\ = CARRY((\caminhoDados|reg_total_inserido|valor_armazenado\(1) & (\caminhoDados|decod_preco_prod|Mux6~0_combout\ & !\caminhoDados|comp_maior|LessThan0~1_cout\)) # 
-- (!\caminhoDados|reg_total_inserido|valor_armazenado\(1) & ((\caminhoDados|decod_preco_prod|Mux6~0_combout\) # (!\caminhoDados|comp_maior|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_total_inserido|valor_armazenado\(1),
	datab => \caminhoDados|decod_preco_prod|Mux6~0_combout\,
	datad => VCC,
	cin => \caminhoDados|comp_maior|LessThan0~1_cout\,
	cout => \caminhoDados|comp_maior|LessThan0~3_cout\);

-- Location: LCCOMB_X54_Y50_N18
\caminhoDados|comp_maior|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|comp_maior|LessThan0~5_cout\ = CARRY((\caminhoDados|reg_total_inserido|valor_armazenado\(2) & ((!\caminhoDados|comp_maior|LessThan0~3_cout\) # (!\caminhoDados|decod_preco_prod|Mux5~0_combout\))) # 
-- (!\caminhoDados|reg_total_inserido|valor_armazenado\(2) & (!\caminhoDados|decod_preco_prod|Mux5~0_combout\ & !\caminhoDados|comp_maior|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_total_inserido|valor_armazenado\(2),
	datab => \caminhoDados|decod_preco_prod|Mux5~0_combout\,
	datad => VCC,
	cin => \caminhoDados|comp_maior|LessThan0~3_cout\,
	cout => \caminhoDados|comp_maior|LessThan0~5_cout\);

-- Location: LCCOMB_X54_Y50_N20
\caminhoDados|comp_maior|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|comp_maior|LessThan0~7_cout\ = CARRY((\caminhoDados|reg_total_inserido|valor_armazenado\(3) & (\caminhoDados|decod_preco_prod|Mux4~0_combout\ & !\caminhoDados|comp_maior|LessThan0~5_cout\)) # 
-- (!\caminhoDados|reg_total_inserido|valor_armazenado\(3) & ((\caminhoDados|decod_preco_prod|Mux4~0_combout\) # (!\caminhoDados|comp_maior|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_total_inserido|valor_armazenado\(3),
	datab => \caminhoDados|decod_preco_prod|Mux4~0_combout\,
	datad => VCC,
	cin => \caminhoDados|comp_maior|LessThan0~5_cout\,
	cout => \caminhoDados|comp_maior|LessThan0~7_cout\);

-- Location: LCCOMB_X54_Y50_N22
\caminhoDados|comp_maior|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|comp_maior|LessThan0~9_cout\ = CARRY((\caminhoDados|reg_total_inserido|valor_armazenado\(4) & ((!\caminhoDados|comp_maior|LessThan0~7_cout\) # (!\caminhoDados|decod_preco_prod|Mux3~0_combout\))) # 
-- (!\caminhoDados|reg_total_inserido|valor_armazenado\(4) & (!\caminhoDados|decod_preco_prod|Mux3~0_combout\ & !\caminhoDados|comp_maior|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_total_inserido|valor_armazenado\(4),
	datab => \caminhoDados|decod_preco_prod|Mux3~0_combout\,
	datad => VCC,
	cin => \caminhoDados|comp_maior|LessThan0~7_cout\,
	cout => \caminhoDados|comp_maior|LessThan0~9_cout\);

-- Location: LCCOMB_X54_Y50_N24
\caminhoDados|comp_maior|LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|comp_maior|LessThan0~11_cout\ = CARRY((\caminhoDados|decod_preco_prod|Mux2~0_combout\ & ((!\caminhoDados|comp_maior|LessThan0~9_cout\) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(5)))) # 
-- (!\caminhoDados|decod_preco_prod|Mux2~0_combout\ & (!\caminhoDados|reg_total_inserido|valor_armazenado\(5) & !\caminhoDados|comp_maior|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|decod_preco_prod|Mux2~0_combout\,
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(5),
	datad => VCC,
	cin => \caminhoDados|comp_maior|LessThan0~9_cout\,
	cout => \caminhoDados|comp_maior|LessThan0~11_cout\);

-- Location: LCCOMB_X54_Y50_N26
\caminhoDados|comp_maior|LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|comp_maior|LessThan0~13_cout\ = CARRY((\caminhoDados|decod_preco_prod|Mux1~0_combout\ & (\caminhoDados|reg_total_inserido|valor_armazenado\(6) & !\caminhoDados|comp_maior|LessThan0~11_cout\)) # 
-- (!\caminhoDados|decod_preco_prod|Mux1~0_combout\ & ((\caminhoDados|reg_total_inserido|valor_armazenado\(6)) # (!\caminhoDados|comp_maior|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|decod_preco_prod|Mux1~0_combout\,
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(6),
	datad => VCC,
	cin => \caminhoDados|comp_maior|LessThan0~11_cout\,
	cout => \caminhoDados|comp_maior|LessThan0~13_cout\);

-- Location: LCCOMB_X54_Y50_N28
\caminhoDados|comp_maior|LessThan0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|comp_maior|LessThan0~14_combout\ = (\caminhoDados|decod_preco_prod|Mux0~0_combout\ & (\caminhoDados|comp_maior|LessThan0~13_cout\ & \caminhoDados|reg_total_inserido|valor_armazenado\(7))) # (!\caminhoDados|decod_preco_prod|Mux0~0_combout\ & 
-- ((\caminhoDados|comp_maior|LessThan0~13_cout\) # (\caminhoDados|reg_total_inserido|valor_armazenado\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminhoDados|decod_preco_prod|Mux0~0_combout\,
	datad => \caminhoDados|reg_total_inserido|valor_armazenado\(7),
	cin => \caminhoDados|comp_maior|LessThan0~13_cout\,
	combout => \caminhoDados|comp_maior|LessThan0~14_combout\);

-- Location: LCCOMB_X55_Y50_N6
\maquinaEstados|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \maquinaEstados|Selector2~1_combout\ = (!\maquinaEstados|Selector2~0_combout\ & ((\caminhoDados|comp_maior|LessThan0~14_combout\) # (!\maquinaEstados|estado_atual.LIBERA_PRODUTO_STATE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquinaEstados|estado_atual.LIBERA_PRODUTO_STATE~q\,
	datac => \maquinaEstados|Selector2~0_combout\,
	datad => \caminhoDados|comp_maior|LessThan0~14_combout\,
	combout => \maquinaEstados|Selector2~1_combout\);

-- Location: LCCOMB_X54_Y50_N30
\maquinaEstados|reset~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \maquinaEstados|reset~0_combout\ = (\product_chosen_not_more_coins~input_o\ & \coin_inserted_more_coins~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \product_chosen_not_more_coins~input_o\,
	datad => \coin_inserted_more_coins~input_o\,
	combout => \maquinaEstados|reset~0_combout\);

-- Location: CLKCTRL_G12
\maquinaEstados|reset~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \maquinaEstados|reset~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \maquinaEstados|reset~0clkctrl_outclk\);

-- Location: FF_X55_Y50_N7
\maquinaEstados|estado_atual.FINALIZA_STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \maquinaEstados|Selector2~1_combout\,
	clrn => \maquinaEstados|ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquinaEstados|estado_atual.FINALIZA_STATE~q\);

-- Location: FF_X56_Y50_N17
\caminhoDados|reg_total_inserido|valor_armazenado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \caminhoDados|reg_total_inserido|valor_armazenado[0]~8_combout\,
	clrn => \maquinaEstados|estado_atual.FINALIZA_STATE~q\,
	ena => \maquinaEstados|estado_atual.REGISTRA_MOEDA_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \caminhoDados|reg_total_inserido|valor_armazenado\(0));

-- Location: LCCOMB_X56_Y50_N18
\caminhoDados|reg_total_inserido|valor_armazenado[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|reg_total_inserido|valor_armazenado[1]~10_combout\ = (\coin_value[1]~input_o\ & ((\caminhoDados|reg_total_inserido|valor_armazenado\(1) & (\caminhoDados|reg_total_inserido|valor_armazenado[0]~9\ & VCC)) # 
-- (!\caminhoDados|reg_total_inserido|valor_armazenado\(1) & (!\caminhoDados|reg_total_inserido|valor_armazenado[0]~9\)))) # (!\coin_value[1]~input_o\ & ((\caminhoDados|reg_total_inserido|valor_armazenado\(1) & 
-- (!\caminhoDados|reg_total_inserido|valor_armazenado[0]~9\)) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(1) & ((\caminhoDados|reg_total_inserido|valor_armazenado[0]~9\) # (GND)))))
-- \caminhoDados|reg_total_inserido|valor_armazenado[1]~11\ = CARRY((\coin_value[1]~input_o\ & (!\caminhoDados|reg_total_inserido|valor_armazenado\(1) & !\caminhoDados|reg_total_inserido|valor_armazenado[0]~9\)) # (!\coin_value[1]~input_o\ & 
-- ((!\caminhoDados|reg_total_inserido|valor_armazenado[0]~9\) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \coin_value[1]~input_o\,
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(1),
	datad => VCC,
	cin => \caminhoDados|reg_total_inserido|valor_armazenado[0]~9\,
	combout => \caminhoDados|reg_total_inserido|valor_armazenado[1]~10_combout\,
	cout => \caminhoDados|reg_total_inserido|valor_armazenado[1]~11\);

-- Location: FF_X56_Y50_N19
\caminhoDados|reg_total_inserido|valor_armazenado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \caminhoDados|reg_total_inserido|valor_armazenado[1]~10_combout\,
	clrn => \maquinaEstados|estado_atual.FINALIZA_STATE~q\,
	ena => \maquinaEstados|estado_atual.REGISTRA_MOEDA_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \caminhoDados|reg_total_inserido|valor_armazenado\(1));

-- Location: LCCOMB_X56_Y50_N20
\caminhoDados|reg_total_inserido|valor_armazenado[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|reg_total_inserido|valor_armazenado[2]~12_combout\ = ((\coin_value[2]~input_o\ $ (\caminhoDados|reg_total_inserido|valor_armazenado\(2) $ (!\caminhoDados|reg_total_inserido|valor_armazenado[1]~11\)))) # (GND)
-- \caminhoDados|reg_total_inserido|valor_armazenado[2]~13\ = CARRY((\coin_value[2]~input_o\ & ((\caminhoDados|reg_total_inserido|valor_armazenado\(2)) # (!\caminhoDados|reg_total_inserido|valor_armazenado[1]~11\))) # (!\coin_value[2]~input_o\ & 
-- (\caminhoDados|reg_total_inserido|valor_armazenado\(2) & !\caminhoDados|reg_total_inserido|valor_armazenado[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \coin_value[2]~input_o\,
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(2),
	datad => VCC,
	cin => \caminhoDados|reg_total_inserido|valor_armazenado[1]~11\,
	combout => \caminhoDados|reg_total_inserido|valor_armazenado[2]~12_combout\,
	cout => \caminhoDados|reg_total_inserido|valor_armazenado[2]~13\);

-- Location: FF_X56_Y50_N21
\caminhoDados|reg_total_inserido|valor_armazenado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \caminhoDados|reg_total_inserido|valor_armazenado[2]~12_combout\,
	clrn => \maquinaEstados|estado_atual.FINALIZA_STATE~q\,
	ena => \maquinaEstados|estado_atual.REGISTRA_MOEDA_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \caminhoDados|reg_total_inserido|valor_armazenado\(2));

-- Location: LCCOMB_X56_Y50_N22
\caminhoDados|reg_total_inserido|valor_armazenado[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|reg_total_inserido|valor_armazenado[3]~14_combout\ = (\caminhoDados|reg_total_inserido|valor_armazenado\(3) & ((\coin_value[3]~input_o\ & (\caminhoDados|reg_total_inserido|valor_armazenado[2]~13\ & VCC)) # (!\coin_value[3]~input_o\ & 
-- (!\caminhoDados|reg_total_inserido|valor_armazenado[2]~13\)))) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(3) & ((\coin_value[3]~input_o\ & (!\caminhoDados|reg_total_inserido|valor_armazenado[2]~13\)) # (!\coin_value[3]~input_o\ & 
-- ((\caminhoDados|reg_total_inserido|valor_armazenado[2]~13\) # (GND)))))
-- \caminhoDados|reg_total_inserido|valor_armazenado[3]~15\ = CARRY((\caminhoDados|reg_total_inserido|valor_armazenado\(3) & (!\coin_value[3]~input_o\ & !\caminhoDados|reg_total_inserido|valor_armazenado[2]~13\)) # 
-- (!\caminhoDados|reg_total_inserido|valor_armazenado\(3) & ((!\caminhoDados|reg_total_inserido|valor_armazenado[2]~13\) # (!\coin_value[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_total_inserido|valor_armazenado\(3),
	datab => \coin_value[3]~input_o\,
	datad => VCC,
	cin => \caminhoDados|reg_total_inserido|valor_armazenado[2]~13\,
	combout => \caminhoDados|reg_total_inserido|valor_armazenado[3]~14_combout\,
	cout => \caminhoDados|reg_total_inserido|valor_armazenado[3]~15\);

-- Location: FF_X56_Y50_N23
\caminhoDados|reg_total_inserido|valor_armazenado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \caminhoDados|reg_total_inserido|valor_armazenado[3]~14_combout\,
	clrn => \maquinaEstados|estado_atual.FINALIZA_STATE~q\,
	ena => \maquinaEstados|estado_atual.REGISTRA_MOEDA_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \caminhoDados|reg_total_inserido|valor_armazenado\(3));

-- Location: LCCOMB_X56_Y50_N24
\caminhoDados|reg_total_inserido|valor_armazenado[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|reg_total_inserido|valor_armazenado[4]~16_combout\ = (\caminhoDados|reg_total_inserido|valor_armazenado\(4) & (\caminhoDados|reg_total_inserido|valor_armazenado[3]~15\ $ (GND))) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(4) & 
-- (!\caminhoDados|reg_total_inserido|valor_armazenado[3]~15\ & VCC))
-- \caminhoDados|reg_total_inserido|valor_armazenado[4]~17\ = CARRY((\caminhoDados|reg_total_inserido|valor_armazenado\(4) & !\caminhoDados|reg_total_inserido|valor_armazenado[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(4),
	datad => VCC,
	cin => \caminhoDados|reg_total_inserido|valor_armazenado[3]~15\,
	combout => \caminhoDados|reg_total_inserido|valor_armazenado[4]~16_combout\,
	cout => \caminhoDados|reg_total_inserido|valor_armazenado[4]~17\);

-- Location: FF_X56_Y50_N25
\caminhoDados|reg_total_inserido|valor_armazenado[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \caminhoDados|reg_total_inserido|valor_armazenado[4]~16_combout\,
	clrn => \maquinaEstados|estado_atual.FINALIZA_STATE~q\,
	ena => \maquinaEstados|estado_atual.REGISTRA_MOEDA_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \caminhoDados|reg_total_inserido|valor_armazenado\(4));

-- Location: LCCOMB_X56_Y50_N26
\caminhoDados|reg_total_inserido|valor_armazenado[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|reg_total_inserido|valor_armazenado[5]~18_combout\ = (\caminhoDados|reg_total_inserido|valor_armazenado\(5) & (!\caminhoDados|reg_total_inserido|valor_armazenado[4]~17\)) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(5) & 
-- ((\caminhoDados|reg_total_inserido|valor_armazenado[4]~17\) # (GND)))
-- \caminhoDados|reg_total_inserido|valor_armazenado[5]~19\ = CARRY((!\caminhoDados|reg_total_inserido|valor_armazenado[4]~17\) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_total_inserido|valor_armazenado\(5),
	datad => VCC,
	cin => \caminhoDados|reg_total_inserido|valor_armazenado[4]~17\,
	combout => \caminhoDados|reg_total_inserido|valor_armazenado[5]~18_combout\,
	cout => \caminhoDados|reg_total_inserido|valor_armazenado[5]~19\);

-- Location: FF_X56_Y50_N27
\caminhoDados|reg_total_inserido|valor_armazenado[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \caminhoDados|reg_total_inserido|valor_armazenado[5]~18_combout\,
	clrn => \maquinaEstados|estado_atual.FINALIZA_STATE~q\,
	ena => \maquinaEstados|estado_atual.REGISTRA_MOEDA_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \caminhoDados|reg_total_inserido|valor_armazenado\(5));

-- Location: LCCOMB_X56_Y50_N28
\caminhoDados|reg_total_inserido|valor_armazenado[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|reg_total_inserido|valor_armazenado[6]~20_combout\ = (\caminhoDados|reg_total_inserido|valor_armazenado\(6) & (\caminhoDados|reg_total_inserido|valor_armazenado[5]~19\ $ (GND))) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(6) & 
-- (!\caminhoDados|reg_total_inserido|valor_armazenado[5]~19\ & VCC))
-- \caminhoDados|reg_total_inserido|valor_armazenado[6]~21\ = CARRY((\caminhoDados|reg_total_inserido|valor_armazenado\(6) & !\caminhoDados|reg_total_inserido|valor_armazenado[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(6),
	datad => VCC,
	cin => \caminhoDados|reg_total_inserido|valor_armazenado[5]~19\,
	combout => \caminhoDados|reg_total_inserido|valor_armazenado[6]~20_combout\,
	cout => \caminhoDados|reg_total_inserido|valor_armazenado[6]~21\);

-- Location: FF_X56_Y50_N29
\caminhoDados|reg_total_inserido|valor_armazenado[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \caminhoDados|reg_total_inserido|valor_armazenado[6]~20_combout\,
	clrn => \maquinaEstados|estado_atual.FINALIZA_STATE~q\,
	ena => \maquinaEstados|estado_atual.REGISTRA_MOEDA_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \caminhoDados|reg_total_inserido|valor_armazenado\(6));

-- Location: LCCOMB_X56_Y50_N30
\caminhoDados|reg_total_inserido|valor_armazenado[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|reg_total_inserido|valor_armazenado[7]~22_combout\ = \caminhoDados|reg_total_inserido|valor_armazenado\(7) $ (\caminhoDados|reg_total_inserido|valor_armazenado[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_total_inserido|valor_armazenado\(7),
	cin => \caminhoDados|reg_total_inserido|valor_armazenado[6]~21\,
	combout => \caminhoDados|reg_total_inserido|valor_armazenado[7]~22_combout\);

-- Location: FF_X56_Y50_N31
\caminhoDados|reg_total_inserido|valor_armazenado[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \caminhoDados|reg_total_inserido|valor_armazenado[7]~22_combout\,
	clrn => \maquinaEstados|estado_atual.FINALIZA_STATE~q\,
	ena => \maquinaEstados|estado_atual.REGISTRA_MOEDA_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \caminhoDados|reg_total_inserido|valor_armazenado\(7));

-- Location: LCCOMB_X56_Y50_N0
\caminhoDados|comp_maior_igual|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|comp_maior_igual|LessThan0~1_cout\ = CARRY((\caminhoDados|decod_preco_prod|Mux7~0_combout\ & !\caminhoDados|reg_total_inserido|valor_armazenado\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|decod_preco_prod|Mux7~0_combout\,
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(0),
	datad => VCC,
	cout => \caminhoDados|comp_maior_igual|LessThan0~1_cout\);

-- Location: LCCOMB_X56_Y50_N2
\caminhoDados|comp_maior_igual|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|comp_maior_igual|LessThan0~3_cout\ = CARRY((\caminhoDados|decod_preco_prod|Mux6~0_combout\ & (\caminhoDados|reg_total_inserido|valor_armazenado\(1) & !\caminhoDados|comp_maior_igual|LessThan0~1_cout\)) # 
-- (!\caminhoDados|decod_preco_prod|Mux6~0_combout\ & ((\caminhoDados|reg_total_inserido|valor_armazenado\(1)) # (!\caminhoDados|comp_maior_igual|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|decod_preco_prod|Mux6~0_combout\,
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(1),
	datad => VCC,
	cin => \caminhoDados|comp_maior_igual|LessThan0~1_cout\,
	cout => \caminhoDados|comp_maior_igual|LessThan0~3_cout\);

-- Location: LCCOMB_X56_Y50_N4
\caminhoDados|comp_maior_igual|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|comp_maior_igual|LessThan0~5_cout\ = CARRY((\caminhoDados|decod_preco_prod|Mux5~0_combout\ & ((!\caminhoDados|comp_maior_igual|LessThan0~3_cout\) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(2)))) # 
-- (!\caminhoDados|decod_preco_prod|Mux5~0_combout\ & (!\caminhoDados|reg_total_inserido|valor_armazenado\(2) & !\caminhoDados|comp_maior_igual|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|decod_preco_prod|Mux5~0_combout\,
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(2),
	datad => VCC,
	cin => \caminhoDados|comp_maior_igual|LessThan0~3_cout\,
	cout => \caminhoDados|comp_maior_igual|LessThan0~5_cout\);

-- Location: LCCOMB_X56_Y50_N6
\caminhoDados|comp_maior_igual|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|comp_maior_igual|LessThan0~7_cout\ = CARRY((\caminhoDados|reg_total_inserido|valor_armazenado\(3) & ((!\caminhoDados|comp_maior_igual|LessThan0~5_cout\) # (!\caminhoDados|decod_preco_prod|Mux4~0_combout\))) # 
-- (!\caminhoDados|reg_total_inserido|valor_armazenado\(3) & (!\caminhoDados|decod_preco_prod|Mux4~0_combout\ & !\caminhoDados|comp_maior_igual|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_total_inserido|valor_armazenado\(3),
	datab => \caminhoDados|decod_preco_prod|Mux4~0_combout\,
	datad => VCC,
	cin => \caminhoDados|comp_maior_igual|LessThan0~5_cout\,
	cout => \caminhoDados|comp_maior_igual|LessThan0~7_cout\);

-- Location: LCCOMB_X56_Y50_N8
\caminhoDados|comp_maior_igual|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|comp_maior_igual|LessThan0~9_cout\ = CARRY((\caminhoDados|decod_preco_prod|Mux3~0_combout\ & ((!\caminhoDados|comp_maior_igual|LessThan0~7_cout\) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(4)))) # 
-- (!\caminhoDados|decod_preco_prod|Mux3~0_combout\ & (!\caminhoDados|reg_total_inserido|valor_armazenado\(4) & !\caminhoDados|comp_maior_igual|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|decod_preco_prod|Mux3~0_combout\,
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(4),
	datad => VCC,
	cin => \caminhoDados|comp_maior_igual|LessThan0~7_cout\,
	cout => \caminhoDados|comp_maior_igual|LessThan0~9_cout\);

-- Location: LCCOMB_X56_Y50_N10
\caminhoDados|comp_maior_igual|LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|comp_maior_igual|LessThan0~11_cout\ = CARRY((\caminhoDados|reg_total_inserido|valor_armazenado\(5) & ((!\caminhoDados|comp_maior_igual|LessThan0~9_cout\) # (!\caminhoDados|decod_preco_prod|Mux2~0_combout\))) # 
-- (!\caminhoDados|reg_total_inserido|valor_armazenado\(5) & (!\caminhoDados|decod_preco_prod|Mux2~0_combout\ & !\caminhoDados|comp_maior_igual|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_total_inserido|valor_armazenado\(5),
	datab => \caminhoDados|decod_preco_prod|Mux2~0_combout\,
	datad => VCC,
	cin => \caminhoDados|comp_maior_igual|LessThan0~9_cout\,
	cout => \caminhoDados|comp_maior_igual|LessThan0~11_cout\);

-- Location: LCCOMB_X56_Y50_N12
\caminhoDados|comp_maior_igual|LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|comp_maior_igual|LessThan0~13_cout\ = CARRY((\caminhoDados|decod_preco_prod|Mux1~0_combout\ & ((!\caminhoDados|comp_maior_igual|LessThan0~11_cout\) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(6)))) # 
-- (!\caminhoDados|decod_preco_prod|Mux1~0_combout\ & (!\caminhoDados|reg_total_inserido|valor_armazenado\(6) & !\caminhoDados|comp_maior_igual|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|decod_preco_prod|Mux1~0_combout\,
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(6),
	datad => VCC,
	cin => \caminhoDados|comp_maior_igual|LessThan0~11_cout\,
	cout => \caminhoDados|comp_maior_igual|LessThan0~13_cout\);

-- Location: LCCOMB_X56_Y50_N14
\caminhoDados|comp_maior_igual|LessThan0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|comp_maior_igual|LessThan0~14_combout\ = (\caminhoDados|reg_total_inserido|valor_armazenado\(7) & (\caminhoDados|comp_maior_igual|LessThan0~13_cout\ & \caminhoDados|decod_preco_prod|Mux0~0_combout\)) # 
-- (!\caminhoDados|reg_total_inserido|valor_armazenado\(7) & ((\caminhoDados|comp_maior_igual|LessThan0~13_cout\) # (\caminhoDados|decod_preco_prod|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_total_inserido|valor_armazenado\(7),
	datad => \caminhoDados|decod_preco_prod|Mux0~0_combout\,
	cin => \caminhoDados|comp_maior_igual|LessThan0~13_cout\,
	combout => \caminhoDados|comp_maior_igual|LessThan0~14_combout\);

-- Location: LCCOMB_X55_Y50_N24
\maquinaEstados|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \maquinaEstados|Selector1~0_combout\ = (!\product_chosen_not_more_coins~input_o\ & (!\coin_inserted_more_coins~input_o\ & \maquinaEstados|estado_atual.ERRO_VALOR_STATE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_chosen_not_more_coins~input_o\,
	datac => \coin_inserted_more_coins~input_o\,
	datad => \maquinaEstados|estado_atual.ERRO_VALOR_STATE~q\,
	combout => \maquinaEstados|Selector1~0_combout\);

-- Location: LCCOMB_X55_Y50_N28
\maquinaEstados|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \maquinaEstados|Selector1~1_combout\ = (\maquinaEstados|Selector1~0_combout\) # ((\maquinaEstados|estado_atual.VERIFICA_CREDITO_STATE~q\ & \caminhoDados|comp_maior_igual|LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|estado_atual.VERIFICA_CREDITO_STATE~q\,
	datac => \caminhoDados|comp_maior_igual|LessThan0~14_combout\,
	datad => \maquinaEstados|Selector1~0_combout\,
	combout => \maquinaEstados|Selector1~1_combout\);

-- Location: FF_X55_Y50_N29
\maquinaEstados|estado_atual.ERRO_VALOR_STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \maquinaEstados|Selector1~1_combout\,
	clrn => \maquinaEstados|ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquinaEstados|estado_atual.ERRO_VALOR_STATE~q\);

-- Location: LCCOMB_X55_Y50_N30
\maquinaEstados|proximo_estado.REGISTRA_MOEDA_STATE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \maquinaEstados|proximo_estado.REGISTRA_MOEDA_STATE~0_combout\ = (\coin_inserted_more_coins~input_o\ & (\maquinaEstados|estado_atual.ESPERA_STATE~q\ & !\maquinaEstados|estado_atual.ERRO_VALOR_STATE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coin_inserted_more_coins~input_o\,
	datac => \maquinaEstados|estado_atual.ESPERA_STATE~q\,
	datad => \maquinaEstados|estado_atual.ERRO_VALOR_STATE~q\,
	combout => \maquinaEstados|proximo_estado.REGISTRA_MOEDA_STATE~0_combout\);

-- Location: FF_X55_Y50_N31
\maquinaEstados|estado_atual.REGISTRA_MOEDA_STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \maquinaEstados|proximo_estado.REGISTRA_MOEDA_STATE~0_combout\,
	clrn => \maquinaEstados|ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquinaEstados|estado_atual.REGISTRA_MOEDA_STATE~q\);

-- Location: LCCOMB_X54_Y50_N0
\maquinaEstados|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \maquinaEstados|Selector0~0_combout\ = (\coin_inserted_more_coins~input_o\ & (((\maquinaEstados|estado_atual.ERRO_VALOR_STATE~q\)))) # (!\coin_inserted_more_coins~input_o\ & (\maquinaEstados|estado_atual.ESPERA_STATE~q\ & 
-- ((\maquinaEstados|estado_atual.ERRO_VALOR_STATE~q\) # (!\product_chosen_not_more_coins~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|estado_atual.ESPERA_STATE~q\,
	datab => \maquinaEstados|estado_atual.ERRO_VALOR_STATE~q\,
	datac => \product_chosen_not_more_coins~input_o\,
	datad => \coin_inserted_more_coins~input_o\,
	combout => \maquinaEstados|Selector0~0_combout\);

-- Location: LCCOMB_X55_Y50_N4
\maquinaEstados|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \maquinaEstados|Selector0~1_combout\ = (\maquinaEstados|estado_atual.REGISTRA_MOEDA_STATE~q\) # ((\maquinaEstados|Selector0~0_combout\) # (!\maquinaEstados|estado_atual.FINALIZA_STATE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|estado_atual.REGISTRA_MOEDA_STATE~q\,
	datac => \maquinaEstados|Selector0~0_combout\,
	datad => \maquinaEstados|estado_atual.FINALIZA_STATE~q\,
	combout => \maquinaEstados|Selector0~1_combout\);

-- Location: FF_X55_Y50_N5
\maquinaEstados|estado_atual.ESPERA_STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \maquinaEstados|Selector0~1_combout\,
	clrn => \maquinaEstados|ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquinaEstados|estado_atual.ESPERA_STATE~q\);

-- Location: LCCOMB_X55_Y50_N26
\maquinaEstados|proximo_estado.VERIFICA_CREDITO_STATE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \maquinaEstados|proximo_estado.VERIFICA_CREDITO_STATE~0_combout\ = (\product_chosen_not_more_coins~input_o\ & (\maquinaEstados|estado_atual.ESPERA_STATE~q\ & (!\coin_inserted_more_coins~input_o\ & !\maquinaEstados|estado_atual.ERRO_VALOR_STATE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_chosen_not_more_coins~input_o\,
	datab => \maquinaEstados|estado_atual.ESPERA_STATE~q\,
	datac => \coin_inserted_more_coins~input_o\,
	datad => \maquinaEstados|estado_atual.ERRO_VALOR_STATE~q\,
	combout => \maquinaEstados|proximo_estado.VERIFICA_CREDITO_STATE~0_combout\);

-- Location: FF_X55_Y50_N27
\maquinaEstados|estado_atual.VERIFICA_CREDITO_STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \maquinaEstados|proximo_estado.VERIFICA_CREDITO_STATE~0_combout\,
	clrn => \maquinaEstados|ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquinaEstados|estado_atual.VERIFICA_CREDITO_STATE~q\);

-- Location: LCCOMB_X55_Y50_N0
\maquinaEstados|proximo_estado.LIBERA_PRODUTO_STATE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \maquinaEstados|proximo_estado.LIBERA_PRODUTO_STATE~0_combout\ = (\maquinaEstados|estado_atual.VERIFICA_CREDITO_STATE~q\ & !\caminhoDados|comp_maior_igual|LessThan0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|estado_atual.VERIFICA_CREDITO_STATE~q\,
	datac => \caminhoDados|comp_maior_igual|LessThan0~14_combout\,
	combout => \maquinaEstados|proximo_estado.LIBERA_PRODUTO_STATE~0_combout\);

-- Location: FF_X55_Y50_N1
\maquinaEstados|estado_atual.LIBERA_PRODUTO_STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \maquinaEstados|proximo_estado.LIBERA_PRODUTO_STATE~0_combout\,
	clrn => \maquinaEstados|ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquinaEstados|estado_atual.LIBERA_PRODUTO_STATE~q\);

-- Location: LCCOMB_X54_Y50_N4
\maquinaEstados|proximo_estado.CALCULA_TROCO_STATE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \maquinaEstados|proximo_estado.CALCULA_TROCO_STATE~0_combout\ = (\maquinaEstados|estado_atual.LIBERA_PRODUTO_STATE~q\ & \caminhoDados|comp_maior|LessThan0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maquinaEstados|estado_atual.LIBERA_PRODUTO_STATE~q\,
	datad => \caminhoDados|comp_maior|LessThan0~14_combout\,
	combout => \maquinaEstados|proximo_estado.CALCULA_TROCO_STATE~0_combout\);

-- Location: FF_X54_Y50_N5
\maquinaEstados|estado_atual.CALCULA_TROCO_STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \maquinaEstados|proximo_estado.CALCULA_TROCO_STATE~0_combout\,
	clrn => \maquinaEstados|ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquinaEstados|estado_atual.CALCULA_TROCO_STATE~q\);

-- Location: LCCOMB_X54_Y50_N8
\maquinaEstados|estado_atual.RETORNA_TROCO_STATE~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \maquinaEstados|estado_atual.RETORNA_TROCO_STATE~feeder_combout\ = \maquinaEstados|estado_atual.CALCULA_TROCO_STATE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maquinaEstados|estado_atual.CALCULA_TROCO_STATE~q\,
	combout => \maquinaEstados|estado_atual.RETORNA_TROCO_STATE~feeder_combout\);

-- Location: FF_X54_Y50_N9
\maquinaEstados|estado_atual.RETORNA_TROCO_STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \maquinaEstados|estado_atual.RETORNA_TROCO_STATE~feeder_combout\,
	clrn => \maquinaEstados|ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquinaEstados|estado_atual.RETORNA_TROCO_STATE~q\);

-- Location: LCCOMB_X55_Y50_N8
\caminhoDados|reg_troco|valor_armazenado[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|reg_troco|valor_armazenado[0]~8_combout\ = (\caminhoDados|decod_preco_prod|Mux7~0_combout\ & (\caminhoDados|reg_total_inserido|valor_armazenado\(0) $ (VCC))) # (!\caminhoDados|decod_preco_prod|Mux7~0_combout\ & 
-- ((\caminhoDados|reg_total_inserido|valor_armazenado\(0)) # (GND)))
-- \caminhoDados|reg_troco|valor_armazenado[0]~9\ = CARRY((\caminhoDados|reg_total_inserido|valor_armazenado\(0)) # (!\caminhoDados|decod_preco_prod|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|decod_preco_prod|Mux7~0_combout\,
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(0),
	datad => VCC,
	combout => \caminhoDados|reg_troco|valor_armazenado[0]~8_combout\,
	cout => \caminhoDados|reg_troco|valor_armazenado[0]~9\);

-- Location: FF_X55_Y50_N9
\caminhoDados|reg_troco|valor_armazenado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \caminhoDados|reg_troco|valor_armazenado[0]~8_combout\,
	clrn => \maquinaEstados|estado_atual.FINALIZA_STATE~q\,
	ena => \maquinaEstados|estado_atual.CALCULA_TROCO_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \caminhoDados|reg_troco|valor_armazenado\(0));

-- Location: LCCOMB_X55_Y50_N10
\caminhoDados|reg_troco|valor_armazenado[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|reg_troco|valor_armazenado[1]~10_combout\ = (\caminhoDados|decod_preco_prod|Mux6~0_combout\ & ((\caminhoDados|reg_total_inserido|valor_armazenado\(1) & (!\caminhoDados|reg_troco|valor_armazenado[0]~9\)) # 
-- (!\caminhoDados|reg_total_inserido|valor_armazenado\(1) & ((\caminhoDados|reg_troco|valor_armazenado[0]~9\) # (GND))))) # (!\caminhoDados|decod_preco_prod|Mux6~0_combout\ & ((\caminhoDados|reg_total_inserido|valor_armazenado\(1) & 
-- (\caminhoDados|reg_troco|valor_armazenado[0]~9\ & VCC)) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(1) & (!\caminhoDados|reg_troco|valor_armazenado[0]~9\))))
-- \caminhoDados|reg_troco|valor_armazenado[1]~11\ = CARRY((\caminhoDados|decod_preco_prod|Mux6~0_combout\ & ((!\caminhoDados|reg_troco|valor_armazenado[0]~9\) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(1)))) # 
-- (!\caminhoDados|decod_preco_prod|Mux6~0_combout\ & (!\caminhoDados|reg_total_inserido|valor_armazenado\(1) & !\caminhoDados|reg_troco|valor_armazenado[0]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|decod_preco_prod|Mux6~0_combout\,
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(1),
	datad => VCC,
	cin => \caminhoDados|reg_troco|valor_armazenado[0]~9\,
	combout => \caminhoDados|reg_troco|valor_armazenado[1]~10_combout\,
	cout => \caminhoDados|reg_troco|valor_armazenado[1]~11\);

-- Location: FF_X55_Y50_N11
\caminhoDados|reg_troco|valor_armazenado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \caminhoDados|reg_troco|valor_armazenado[1]~10_combout\,
	clrn => \maquinaEstados|estado_atual.FINALIZA_STATE~q\,
	ena => \maquinaEstados|estado_atual.CALCULA_TROCO_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \caminhoDados|reg_troco|valor_armazenado\(1));

-- Location: LCCOMB_X55_Y50_N12
\caminhoDados|reg_troco|valor_armazenado[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|reg_troco|valor_armazenado[2]~12_combout\ = ((\caminhoDados|reg_total_inserido|valor_armazenado\(2) $ (\caminhoDados|decod_preco_prod|Mux5~0_combout\ $ (\caminhoDados|reg_troco|valor_armazenado[1]~11\)))) # (GND)
-- \caminhoDados|reg_troco|valor_armazenado[2]~13\ = CARRY((\caminhoDados|reg_total_inserido|valor_armazenado\(2) & ((!\caminhoDados|reg_troco|valor_armazenado[1]~11\) # (!\caminhoDados|decod_preco_prod|Mux5~0_combout\))) # 
-- (!\caminhoDados|reg_total_inserido|valor_armazenado\(2) & (!\caminhoDados|decod_preco_prod|Mux5~0_combout\ & !\caminhoDados|reg_troco|valor_armazenado[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_total_inserido|valor_armazenado\(2),
	datab => \caminhoDados|decod_preco_prod|Mux5~0_combout\,
	datad => VCC,
	cin => \caminhoDados|reg_troco|valor_armazenado[1]~11\,
	combout => \caminhoDados|reg_troco|valor_armazenado[2]~12_combout\,
	cout => \caminhoDados|reg_troco|valor_armazenado[2]~13\);

-- Location: FF_X55_Y50_N13
\caminhoDados|reg_troco|valor_armazenado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \caminhoDados|reg_troco|valor_armazenado[2]~12_combout\,
	clrn => \maquinaEstados|estado_atual.FINALIZA_STATE~q\,
	ena => \maquinaEstados|estado_atual.CALCULA_TROCO_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \caminhoDados|reg_troco|valor_armazenado\(2));

-- Location: LCCOMB_X55_Y50_N14
\caminhoDados|reg_troco|valor_armazenado[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|reg_troco|valor_armazenado[3]~14_combout\ = (\caminhoDados|decod_preco_prod|Mux4~0_combout\ & ((\caminhoDados|reg_total_inserido|valor_armazenado\(3) & (!\caminhoDados|reg_troco|valor_armazenado[2]~13\)) # 
-- (!\caminhoDados|reg_total_inserido|valor_armazenado\(3) & ((\caminhoDados|reg_troco|valor_armazenado[2]~13\) # (GND))))) # (!\caminhoDados|decod_preco_prod|Mux4~0_combout\ & ((\caminhoDados|reg_total_inserido|valor_armazenado\(3) & 
-- (\caminhoDados|reg_troco|valor_armazenado[2]~13\ & VCC)) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(3) & (!\caminhoDados|reg_troco|valor_armazenado[2]~13\))))
-- \caminhoDados|reg_troco|valor_armazenado[3]~15\ = CARRY((\caminhoDados|decod_preco_prod|Mux4~0_combout\ & ((!\caminhoDados|reg_troco|valor_armazenado[2]~13\) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(3)))) # 
-- (!\caminhoDados|decod_preco_prod|Mux4~0_combout\ & (!\caminhoDados|reg_total_inserido|valor_armazenado\(3) & !\caminhoDados|reg_troco|valor_armazenado[2]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|decod_preco_prod|Mux4~0_combout\,
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(3),
	datad => VCC,
	cin => \caminhoDados|reg_troco|valor_armazenado[2]~13\,
	combout => \caminhoDados|reg_troco|valor_armazenado[3]~14_combout\,
	cout => \caminhoDados|reg_troco|valor_armazenado[3]~15\);

-- Location: FF_X55_Y50_N15
\caminhoDados|reg_troco|valor_armazenado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \caminhoDados|reg_troco|valor_armazenado[3]~14_combout\,
	clrn => \maquinaEstados|estado_atual.FINALIZA_STATE~q\,
	ena => \maquinaEstados|estado_atual.CALCULA_TROCO_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \caminhoDados|reg_troco|valor_armazenado\(3));

-- Location: LCCOMB_X55_Y50_N16
\caminhoDados|reg_troco|valor_armazenado[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|reg_troco|valor_armazenado[4]~16_combout\ = ((\caminhoDados|decod_preco_prod|Mux3~0_combout\ $ (\caminhoDados|reg_total_inserido|valor_armazenado\(4) $ (\caminhoDados|reg_troco|valor_armazenado[3]~15\)))) # (GND)
-- \caminhoDados|reg_troco|valor_armazenado[4]~17\ = CARRY((\caminhoDados|decod_preco_prod|Mux3~0_combout\ & (\caminhoDados|reg_total_inserido|valor_armazenado\(4) & !\caminhoDados|reg_troco|valor_armazenado[3]~15\)) # 
-- (!\caminhoDados|decod_preco_prod|Mux3~0_combout\ & ((\caminhoDados|reg_total_inserido|valor_armazenado\(4)) # (!\caminhoDados|reg_troco|valor_armazenado[3]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|decod_preco_prod|Mux3~0_combout\,
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(4),
	datad => VCC,
	cin => \caminhoDados|reg_troco|valor_armazenado[3]~15\,
	combout => \caminhoDados|reg_troco|valor_armazenado[4]~16_combout\,
	cout => \caminhoDados|reg_troco|valor_armazenado[4]~17\);

-- Location: FF_X55_Y50_N17
\caminhoDados|reg_troco|valor_armazenado[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \caminhoDados|reg_troco|valor_armazenado[4]~16_combout\,
	clrn => \maquinaEstados|estado_atual.FINALIZA_STATE~q\,
	ena => \maquinaEstados|estado_atual.CALCULA_TROCO_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \caminhoDados|reg_troco|valor_armazenado\(4));

-- Location: LCCOMB_X55_Y50_N18
\caminhoDados|reg_troco|valor_armazenado[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|reg_troco|valor_armazenado[5]~18_combout\ = (\caminhoDados|decod_preco_prod|Mux2~0_combout\ & ((\caminhoDados|reg_total_inserido|valor_armazenado\(5) & (!\caminhoDados|reg_troco|valor_armazenado[4]~17\)) # 
-- (!\caminhoDados|reg_total_inserido|valor_armazenado\(5) & ((\caminhoDados|reg_troco|valor_armazenado[4]~17\) # (GND))))) # (!\caminhoDados|decod_preco_prod|Mux2~0_combout\ & ((\caminhoDados|reg_total_inserido|valor_armazenado\(5) & 
-- (\caminhoDados|reg_troco|valor_armazenado[4]~17\ & VCC)) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(5) & (!\caminhoDados|reg_troco|valor_armazenado[4]~17\))))
-- \caminhoDados|reg_troco|valor_armazenado[5]~19\ = CARRY((\caminhoDados|decod_preco_prod|Mux2~0_combout\ & ((!\caminhoDados|reg_troco|valor_armazenado[4]~17\) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(5)))) # 
-- (!\caminhoDados|decod_preco_prod|Mux2~0_combout\ & (!\caminhoDados|reg_total_inserido|valor_armazenado\(5) & !\caminhoDados|reg_troco|valor_armazenado[4]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|decod_preco_prod|Mux2~0_combout\,
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(5),
	datad => VCC,
	cin => \caminhoDados|reg_troco|valor_armazenado[4]~17\,
	combout => \caminhoDados|reg_troco|valor_armazenado[5]~18_combout\,
	cout => \caminhoDados|reg_troco|valor_armazenado[5]~19\);

-- Location: FF_X55_Y50_N19
\caminhoDados|reg_troco|valor_armazenado[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \caminhoDados|reg_troco|valor_armazenado[5]~18_combout\,
	clrn => \maquinaEstados|estado_atual.FINALIZA_STATE~q\,
	ena => \maquinaEstados|estado_atual.CALCULA_TROCO_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \caminhoDados|reg_troco|valor_armazenado\(5));

-- Location: LCCOMB_X55_Y50_N20
\caminhoDados|reg_troco|valor_armazenado[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|reg_troco|valor_armazenado[6]~20_combout\ = ((\caminhoDados|decod_preco_prod|Mux1~0_combout\ $ (\caminhoDados|reg_total_inserido|valor_armazenado\(6) $ (\caminhoDados|reg_troco|valor_armazenado[5]~19\)))) # (GND)
-- \caminhoDados|reg_troco|valor_armazenado[6]~21\ = CARRY((\caminhoDados|decod_preco_prod|Mux1~0_combout\ & (\caminhoDados|reg_total_inserido|valor_armazenado\(6) & !\caminhoDados|reg_troco|valor_armazenado[5]~19\)) # 
-- (!\caminhoDados|decod_preco_prod|Mux1~0_combout\ & ((\caminhoDados|reg_total_inserido|valor_armazenado\(6)) # (!\caminhoDados|reg_troco|valor_armazenado[5]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|decod_preco_prod|Mux1~0_combout\,
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(6),
	datad => VCC,
	cin => \caminhoDados|reg_troco|valor_armazenado[5]~19\,
	combout => \caminhoDados|reg_troco|valor_armazenado[6]~20_combout\,
	cout => \caminhoDados|reg_troco|valor_armazenado[6]~21\);

-- Location: FF_X55_Y50_N21
\caminhoDados|reg_troco|valor_armazenado[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \caminhoDados|reg_troco|valor_armazenado[6]~20_combout\,
	clrn => \maquinaEstados|estado_atual.FINALIZA_STATE~q\,
	ena => \maquinaEstados|estado_atual.CALCULA_TROCO_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \caminhoDados|reg_troco|valor_armazenado\(6));

-- Location: LCCOMB_X55_Y50_N22
\caminhoDados|reg_troco|valor_armazenado[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|reg_troco|valor_armazenado[7]~22_combout\ = \caminhoDados|reg_total_inserido|valor_armazenado\(7) $ (\caminhoDados|decod_preco_prod|Mux0~0_combout\ $ (!\caminhoDados|reg_troco|valor_armazenado[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_total_inserido|valor_armazenado\(7),
	datab => \caminhoDados|decod_preco_prod|Mux0~0_combout\,
	cin => \caminhoDados|reg_troco|valor_armazenado[6]~21\,
	combout => \caminhoDados|reg_troco|valor_armazenado[7]~22_combout\);

-- Location: FF_X55_Y50_N23
\caminhoDados|reg_troco|valor_armazenado[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \caminhoDados|reg_troco|valor_armazenado[7]~22_combout\,
	clrn => \maquinaEstados|estado_atual.FINALIZA_STATE~q\,
	ena => \maquinaEstados|estado_atual.CALCULA_TROCO_STATE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \caminhoDados|reg_troco|valor_armazenado\(7));

-- Location: LCCOMB_X54_Y51_N24
\caminhoDados|display|U1|temp~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|temp~3_combout\ = (\caminhoDados|reg_total_inserido|valor_armazenado\(4) & (!\caminhoDados|reg_total_inserido|valor_armazenado\(5) & (!\caminhoDados|reg_total_inserido|valor_armazenado\(6) & 
-- \caminhoDados|reg_total_inserido|valor_armazenado\(7)))) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(4) & (\caminhoDados|reg_total_inserido|valor_armazenado\(6) & (\caminhoDados|reg_total_inserido|valor_armazenado\(5) $ 
-- (!\caminhoDados|reg_total_inserido|valor_armazenado\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_total_inserido|valor_armazenado\(4),
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(5),
	datac => \caminhoDados|reg_total_inserido|valor_armazenado\(6),
	datad => \caminhoDados|reg_total_inserido|valor_armazenado\(7),
	combout => \caminhoDados|display|U1|temp~3_combout\);

-- Location: LCCOMB_X54_Y51_N18
\caminhoDados|display|U1|temp~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|temp~5_combout\ = (\caminhoDados|reg_total_inserido|valor_armazenado\(4) & (\caminhoDados|reg_total_inserido|valor_armazenado\(6) $ (((\caminhoDados|reg_total_inserido|valor_armazenado\(5)) # 
-- (!\caminhoDados|reg_total_inserido|valor_armazenado\(7)))))) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(4) & ((\caminhoDados|reg_total_inserido|valor_armazenado\(5) & (\caminhoDados|reg_total_inserido|valor_armazenado\(6) & 
-- !\caminhoDados|reg_total_inserido|valor_armazenado\(7))) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(5) & (!\caminhoDados|reg_total_inserido|valor_armazenado\(6) & \caminhoDados|reg_total_inserido|valor_armazenado\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_total_inserido|valor_armazenado\(4),
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(5),
	datac => \caminhoDados|reg_total_inserido|valor_armazenado\(6),
	datad => \caminhoDados|reg_total_inserido|valor_armazenado\(7),
	combout => \caminhoDados|display|U1|temp~5_combout\);

-- Location: LCCOMB_X55_Y51_N16
\caminhoDados|display|U1|temp~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|temp~4_combout\ = (\caminhoDados|reg_total_inserido|valor_armazenado\(5) & (!\caminhoDados|reg_total_inserido|valor_armazenado\(7) & ((\caminhoDados|reg_total_inserido|valor_armazenado\(4)) # 
-- (!\caminhoDados|reg_total_inserido|valor_armazenado\(6))))) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(5) & (\caminhoDados|reg_total_inserido|valor_armazenado\(7) & ((\caminhoDados|reg_total_inserido|valor_armazenado\(6)) # 
-- (!\caminhoDados|reg_total_inserido|valor_armazenado\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_total_inserido|valor_armazenado\(5),
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(6),
	datac => \caminhoDados|reg_total_inserido|valor_armazenado\(7),
	datad => \caminhoDados|reg_total_inserido|valor_armazenado\(4),
	combout => \caminhoDados|display|U1|temp~4_combout\);

-- Location: LCCOMB_X54_Y49_N12
\caminhoDados|display|U1|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|LessThan2~0_combout\ = (\caminhoDados|display|U1|temp~3_combout\) # ((\caminhoDados|display|U1|temp~4_combout\ & ((\caminhoDados|display|U1|temp~5_combout\) # (\caminhoDados|reg_total_inserido|valor_armazenado\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U1|temp~3_combout\,
	datab => \caminhoDados|display|U1|temp~5_combout\,
	datac => \caminhoDados|reg_total_inserido|valor_armazenado\(3),
	datad => \caminhoDados|display|U1|temp~4_combout\,
	combout => \caminhoDados|display|U1|LessThan2~0_combout\);

-- Location: LCCOMB_X54_Y49_N26
\caminhoDados|display|U1|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|LessThan3~0_combout\ = (\caminhoDados|display|U1|LessThan2~0_combout\ & ((\caminhoDados|reg_total_inserido|valor_armazenado\(3) & (\caminhoDados|reg_total_inserido|valor_armazenado\(2) & \caminhoDados|display|U1|temp~5_combout\)) 
-- # (!\caminhoDados|reg_total_inserido|valor_armazenado\(3) & ((!\caminhoDados|display|U1|temp~5_combout\))))) # (!\caminhoDados|display|U1|LessThan2~0_combout\ & (\caminhoDados|display|U1|temp~5_combout\ & 
-- ((\caminhoDados|reg_total_inserido|valor_armazenado\(2)) # (\caminhoDados|reg_total_inserido|valor_armazenado\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U1|LessThan2~0_combout\,
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(2),
	datac => \caminhoDados|reg_total_inserido|valor_armazenado\(3),
	datad => \caminhoDados|display|U1|temp~5_combout\,
	combout => \caminhoDados|display|U1|LessThan3~0_combout\);

-- Location: LCCOMB_X54_Y49_N16
\caminhoDados|display|U1|temp~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|temp~7_combout\ = (\caminhoDados|display|U1|temp~4_combout\ & (((!\caminhoDados|display|U1|temp~5_combout\ & !\caminhoDados|reg_total_inserido|valor_armazenado\(3))))) # (!\caminhoDados|display|U1|temp~4_combout\ & 
-- (\caminhoDados|display|U1|temp~3_combout\ & ((\caminhoDados|display|U1|temp~5_combout\) # (\caminhoDados|reg_total_inserido|valor_armazenado\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U1|temp~3_combout\,
	datab => \caminhoDados|display|U1|temp~5_combout\,
	datac => \caminhoDados|reg_total_inserido|valor_armazenado\(3),
	datad => \caminhoDados|display|U1|temp~4_combout\,
	combout => \caminhoDados|display|U1|temp~7_combout\);

-- Location: LCCOMB_X54_Y49_N4
\caminhoDados|display|U1|temp~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|temp~10_combout\ = \caminhoDados|reg_total_inserido|valor_armazenado\(2) $ (((\caminhoDados|display|U1|LessThan3~0_combout\) # (\caminhoDados|display|U1|temp~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U1|LessThan3~0_combout\,
	datac => \caminhoDados|reg_total_inserido|valor_armazenado\(2),
	datad => \caminhoDados|display|U1|temp~7_combout\,
	combout => \caminhoDados|display|U1|temp~10_combout\);

-- Location: LCCOMB_X51_Y50_N24
\caminhoDados|display|U3|temp~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|temp~5_combout\ = (\caminhoDados|reg_troco|valor_armazenado\(5) & (!\caminhoDados|reg_troco|valor_armazenado\(7) & ((\caminhoDados|reg_troco|valor_armazenado\(4)) # (!\caminhoDados|reg_troco|valor_armazenado\(6))))) # 
-- (!\caminhoDados|reg_troco|valor_armazenado\(5) & (\caminhoDados|reg_troco|valor_armazenado\(7) & ((\caminhoDados|reg_troco|valor_armazenado\(6)) # (!\caminhoDados|reg_troco|valor_armazenado\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_troco|valor_armazenado\(5),
	datab => \caminhoDados|reg_troco|valor_armazenado\(7),
	datac => \caminhoDados|reg_troco|valor_armazenado\(6),
	datad => \caminhoDados|reg_troco|valor_armazenado\(4),
	combout => \caminhoDados|display|U3|temp~5_combout\);

-- Location: LCCOMB_X51_Y50_N30
\caminhoDados|display|U3|temp~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|temp~4_combout\ = (\caminhoDados|reg_troco|valor_armazenado\(6) & ((\caminhoDados|reg_troco|valor_armazenado\(5) & (!\caminhoDados|reg_troco|valor_armazenado\(7) & !\caminhoDados|reg_troco|valor_armazenado\(4))) # 
-- (!\caminhoDados|reg_troco|valor_armazenado\(5) & (\caminhoDados|reg_troco|valor_armazenado\(7) & \caminhoDados|reg_troco|valor_armazenado\(4))))) # (!\caminhoDados|reg_troco|valor_armazenado\(6) & (\caminhoDados|reg_troco|valor_armazenado\(4) $ 
-- (((!\caminhoDados|reg_troco|valor_armazenado\(5) & \caminhoDados|reg_troco|valor_armazenado\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_troco|valor_armazenado\(5),
	datab => \caminhoDados|reg_troco|valor_armazenado\(7),
	datac => \caminhoDados|reg_troco|valor_armazenado\(6),
	datad => \caminhoDados|reg_troco|valor_armazenado\(4),
	combout => \caminhoDados|display|U3|temp~4_combout\);

-- Location: LCCOMB_X51_Y50_N28
\caminhoDados|display|U3|temp~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|temp~3_combout\ = (\caminhoDados|reg_troco|valor_armazenado\(6) & (!\caminhoDados|reg_troco|valor_armazenado\(4) & (\caminhoDados|reg_troco|valor_armazenado\(5) $ (!\caminhoDados|reg_troco|valor_armazenado\(7))))) # 
-- (!\caminhoDados|reg_troco|valor_armazenado\(6) & (!\caminhoDados|reg_troco|valor_armazenado\(5) & (\caminhoDados|reg_troco|valor_armazenado\(7) & \caminhoDados|reg_troco|valor_armazenado\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_troco|valor_armazenado\(5),
	datab => \caminhoDados|reg_troco|valor_armazenado\(7),
	datac => \caminhoDados|reg_troco|valor_armazenado\(6),
	datad => \caminhoDados|reg_troco|valor_armazenado\(4),
	combout => \caminhoDados|display|U3|temp~3_combout\);

-- Location: LCCOMB_X51_Y50_N20
\caminhoDados|display|U3|temp~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|temp~7_combout\ = (\caminhoDados|reg_troco|valor_armazenado\(3) & (!\caminhoDados|display|U3|temp~5_combout\ & ((!\caminhoDados|display|U3|temp~3_combout\)))) # (!\caminhoDados|reg_troco|valor_armazenado\(3) & 
-- ((\caminhoDados|display|U3|temp~3_combout\) # ((\caminhoDados|display|U3|temp~5_combout\ & \caminhoDados|display|U3|temp~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_troco|valor_armazenado\(3),
	datab => \caminhoDados|display|U3|temp~5_combout\,
	datac => \caminhoDados|display|U3|temp~4_combout\,
	datad => \caminhoDados|display|U3|temp~3_combout\,
	combout => \caminhoDados|display|U3|temp~7_combout\);

-- Location: LCCOMB_X51_Y50_N6
\caminhoDados|display|U3|temp~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|temp~6_combout\ = (\caminhoDados|display|U3|temp~5_combout\ & (!\caminhoDados|reg_troco|valor_armazenado\(3) & (!\caminhoDados|display|U3|temp~4_combout\))) # (!\caminhoDados|display|U3|temp~5_combout\ & 
-- (\caminhoDados|display|U3|temp~3_combout\ & ((\caminhoDados|reg_troco|valor_armazenado\(3)) # (\caminhoDados|display|U3|temp~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_troco|valor_armazenado\(3),
	datab => \caminhoDados|display|U3|temp~5_combout\,
	datac => \caminhoDados|display|U3|temp~4_combout\,
	datad => \caminhoDados|display|U3|temp~3_combout\,
	combout => \caminhoDados|display|U3|temp~6_combout\);

-- Location: LCCOMB_X51_Y50_N2
\caminhoDados|display|U3|temp~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|temp~8_combout\ = (\caminhoDados|reg_troco|valor_armazenado\(3) & (((\caminhoDados|display|U3|temp~4_combout\)))) # (!\caminhoDados|reg_troco|valor_armazenado\(3) & ((\caminhoDados|display|U3|temp~4_combout\ & 
-- (!\caminhoDados|display|U3|temp~5_combout\ & !\caminhoDados|display|U3|temp~3_combout\)) # (!\caminhoDados|display|U3|temp~4_combout\ & ((\caminhoDados|display|U3|temp~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_troco|valor_armazenado\(3),
	datab => \caminhoDados|display|U3|temp~5_combout\,
	datac => \caminhoDados|display|U3|temp~4_combout\,
	datad => \caminhoDados|display|U3|temp~3_combout\,
	combout => \caminhoDados|display|U3|temp~8_combout\);

-- Location: LCCOMB_X52_Y49_N26
\caminhoDados|display|U3|temp~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|temp~11_combout\ = (\caminhoDados|reg_troco|valor_armazenado\(2) & (((!\caminhoDados|display|U3|temp~6_combout\ & !\caminhoDados|display|U3|temp~8_combout\)))) # (!\caminhoDados|reg_troco|valor_armazenado\(2) & 
-- ((\caminhoDados|display|U3|temp~6_combout\) # ((\caminhoDados|display|U3|temp~7_combout\ & \caminhoDados|display|U3|temp~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_troco|valor_armazenado\(2),
	datab => \caminhoDados|display|U3|temp~7_combout\,
	datac => \caminhoDados|display|U3|temp~6_combout\,
	datad => \caminhoDados|display|U3|temp~8_combout\,
	combout => \caminhoDados|display|U3|temp~11_combout\);

-- Location: LCCOMB_X52_Y49_N18
\caminhoDados|display|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux15~0_combout\ = (\product_selection[2]~input_o\ & ((\product_selection[1]~input_o\) # (!\product_selection[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_selection[3]~input_o\,
	datac => \product_selection[1]~input_o\,
	datad => \product_selection[2]~input_o\,
	combout => \caminhoDados|display|Mux15~0_combout\);

-- Location: LCCOMB_X54_Y50_N12
\maquinaEstados|WideOr5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \maquinaEstados|WideOr5~0_combout\ = (\maquinaEstados|estado_atual.ESPERA_STATE~q\) # ((\maquinaEstados|estado_atual.VERIFICA_CREDITO_STATE~q\) # ((\maquinaEstados|estado_atual.RETORNA_TROCO_STATE~q\) # (\maquinaEstados|estado_atual.ERRO_VALOR_STATE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|estado_atual.ESPERA_STATE~q\,
	datab => \maquinaEstados|estado_atual.VERIFICA_CREDITO_STATE~q\,
	datac => \maquinaEstados|estado_atual.RETORNA_TROCO_STATE~q\,
	datad => \maquinaEstados|estado_atual.ERRO_VALOR_STATE~q\,
	combout => \maquinaEstados|WideOr5~0_combout\);

-- Location: LCCOMB_X54_Y50_N2
\maquinaEstados|WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \maquinaEstados|WideOr3~0_combout\ = (\maquinaEstados|estado_atual.REGISTRA_MOEDA_STATE~q\) # ((\maquinaEstados|estado_atual.VERIFICA_CREDITO_STATE~q\) # ((\maquinaEstados|estado_atual.LIBERA_PRODUTO_STATE~q\) # 
-- (\maquinaEstados|estado_atual.ESPERA_STATE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|estado_atual.REGISTRA_MOEDA_STATE~q\,
	datab => \maquinaEstados|estado_atual.VERIFICA_CREDITO_STATE~q\,
	datac => \maquinaEstados|estado_atual.LIBERA_PRODUTO_STATE~q\,
	datad => \maquinaEstados|estado_atual.ESPERA_STATE~q\,
	combout => \maquinaEstados|WideOr3~0_combout\);

-- Location: LCCOMB_X52_Y49_N24
\caminhoDados|display|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux15~1_combout\ = (\maquinaEstados|WideOr5~0_combout\ & ((\caminhoDados|display|U3|temp~11_combout\) # ((\maquinaEstados|WideOr3~0_combout\)))) # (!\maquinaEstados|WideOr5~0_combout\ & (((\caminhoDados|display|Mux15~0_combout\) # 
-- (!\maquinaEstados|WideOr3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|temp~11_combout\,
	datab => \caminhoDados|display|Mux15~0_combout\,
	datac => \maquinaEstados|WideOr5~0_combout\,
	datad => \maquinaEstados|WideOr3~0_combout\,
	combout => \caminhoDados|display|Mux15~1_combout\);

-- Location: LCCOMB_X54_Y50_N10
\maquinaEstados|WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \maquinaEstados|WideOr4~0_combout\ = (\maquinaEstados|estado_atual.REGISTRA_MOEDA_STATE~q\) # ((\maquinaEstados|estado_atual.ERRO_VALOR_STATE~q\) # ((\maquinaEstados|estado_atual.CALCULA_TROCO_STATE~q\) # (\maquinaEstados|estado_atual.ESPERA_STATE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|estado_atual.REGISTRA_MOEDA_STATE~q\,
	datab => \maquinaEstados|estado_atual.ERRO_VALOR_STATE~q\,
	datac => \maquinaEstados|estado_atual.CALCULA_TROCO_STATE~q\,
	datad => \maquinaEstados|estado_atual.ESPERA_STATE~q\,
	combout => \maquinaEstados|WideOr4~0_combout\);

-- Location: LCCOMB_X51_Y49_N26
\caminhoDados|display|Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux15~2_combout\ = (\maquinaEstados|WideOr4~0_combout\ & ((\caminhoDados|display|U1|temp~10_combout\) # ((!\maquinaEstados|WideOr5~0_combout\)))) # (!\maquinaEstados|WideOr4~0_combout\ & (((\caminhoDados|display|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U1|temp~10_combout\,
	datab => \caminhoDados|display|Mux15~1_combout\,
	datac => \maquinaEstados|WideOr5~0_combout\,
	datad => \maquinaEstados|WideOr4~0_combout\,
	combout => \caminhoDados|display|Mux15~2_combout\);

-- Location: LCCOMB_X54_Y49_N20
\caminhoDados|display|U1|LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|LessThan3~1_combout\ = (\caminhoDados|display|U1|LessThan3~0_combout\) # (\caminhoDados|display|U1|temp~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminhoDados|display|U1|LessThan3~0_combout\,
	datad => \caminhoDados|display|U1|temp~7_combout\,
	combout => \caminhoDados|display|U1|LessThan3~1_combout\);

-- Location: LCCOMB_X54_Y49_N14
\caminhoDados|display|U3|Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|Add5~0_combout\ = (\maquinaEstados|WideOr4~0_combout\ & ((\caminhoDados|reg_total_inserido|valor_armazenado\(2) $ (\caminhoDados|display|U1|LessThan3~1_combout\)))) # (!\maquinaEstados|WideOr4~0_combout\ & 
-- (\caminhoDados|display|U3|temp~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|temp~11_combout\,
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(2),
	datac => \maquinaEstados|WideOr4~0_combout\,
	datad => \caminhoDados|display|U1|LessThan3~1_combout\,
	combout => \caminhoDados|display|U3|Add5~0_combout\);

-- Location: LCCOMB_X52_Y50_N20
\caminhoDados|display|U3|Add5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|Add5~1_combout\ = (\maquinaEstados|WideOr4~0_combout\ & (\caminhoDados|reg_total_inserido|valor_armazenado\(1))) # (!\maquinaEstados|WideOr4~0_combout\ & ((\caminhoDados|reg_troco|valor_armazenado\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_total_inserido|valor_armazenado\(1),
	datac => \maquinaEstados|WideOr4~0_combout\,
	datad => \caminhoDados|reg_troco|valor_armazenado\(1),
	combout => \caminhoDados|display|U3|Add5~1_combout\);

-- Location: LCCOMB_X51_Y49_N6
\caminhoDados|display|U3|Add5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|Add5~3_cout\ = CARRY((\maquinaEstados|WideOr5~0_combout\ & \caminhoDados|display|U3|Add5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|WideOr5~0_combout\,
	datab => \caminhoDados|display|U3|Add5~1_combout\,
	datad => VCC,
	cout => \caminhoDados|display|U3|Add5~3_cout\);

-- Location: LCCOMB_X51_Y49_N8
\caminhoDados|display|U3|Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|Add5~4_combout\ = (\maquinaEstados|WideOr5~0_combout\ & ((\caminhoDados|display|U3|Add5~0_combout\ & (\caminhoDados|display|U3|Add5~3_cout\ & VCC)) # (!\caminhoDados|display|U3|Add5~0_combout\ & 
-- (!\caminhoDados|display|U3|Add5~3_cout\)))) # (!\maquinaEstados|WideOr5~0_combout\ & ((\caminhoDados|display|U3|Add5~0_combout\ & (!\caminhoDados|display|U3|Add5~3_cout\)) # (!\caminhoDados|display|U3|Add5~0_combout\ & 
-- ((\caminhoDados|display|U3|Add5~3_cout\) # (GND)))))
-- \caminhoDados|display|U3|Add5~5\ = CARRY((\maquinaEstados|WideOr5~0_combout\ & (!\caminhoDados|display|U3|Add5~0_combout\ & !\caminhoDados|display|U3|Add5~3_cout\)) # (!\maquinaEstados|WideOr5~0_combout\ & ((!\caminhoDados|display|U3|Add5~3_cout\) # 
-- (!\caminhoDados|display|U3|Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|WideOr5~0_combout\,
	datab => \caminhoDados|display|U3|Add5~0_combout\,
	datad => VCC,
	cin => \caminhoDados|display|U3|Add5~3_cout\,
	combout => \caminhoDados|display|U3|Add5~4_combout\,
	cout => \caminhoDados|display|U3|Add5~5\);

-- Location: LCCOMB_X52_Y49_N10
\caminhoDados|display|U3|temp~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|temp~9_combout\ = (\caminhoDados|display|U3|temp~8_combout\ & (!\caminhoDados|reg_troco|valor_armazenado\(2) & (!\caminhoDados|display|U3|temp~7_combout\))) # (!\caminhoDados|display|U3|temp~8_combout\ & 
-- (\caminhoDados|display|U3|temp~6_combout\ & ((\caminhoDados|reg_troco|valor_armazenado\(2)) # (\caminhoDados|display|U3|temp~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_troco|valor_armazenado\(2),
	datab => \caminhoDados|display|U3|temp~7_combout\,
	datac => \caminhoDados|display|U3|temp~6_combout\,
	datad => \caminhoDados|display|U3|temp~8_combout\,
	combout => \caminhoDados|display|U3|temp~9_combout\);

-- Location: LCCOMB_X52_Y49_N8
\caminhoDados|display|U3|temp~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|temp~10_combout\ = (\caminhoDados|reg_troco|valor_armazenado\(2) & (\caminhoDados|display|U3|temp~7_combout\)) # (!\caminhoDados|reg_troco|valor_armazenado\(2) & ((\caminhoDados|display|U3|temp~7_combout\ & 
-- (!\caminhoDados|display|U3|temp~6_combout\ & !\caminhoDados|display|U3|temp~8_combout\)) # (!\caminhoDados|display|U3|temp~7_combout\ & (\caminhoDados|display|U3|temp~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_troco|valor_armazenado\(2),
	datab => \caminhoDados|display|U3|temp~7_combout\,
	datac => \caminhoDados|display|U3|temp~6_combout\,
	datad => \caminhoDados|display|U3|temp~8_combout\,
	combout => \caminhoDados|display|U3|temp~10_combout\);

-- Location: LCCOMB_X52_Y49_N20
\caminhoDados|display|U3|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|LessThan5~0_combout\ = (\caminhoDados|display|U3|temp~9_combout\) # ((\caminhoDados|display|U3|temp~10_combout\ & ((\caminhoDados|display|U3|temp~11_combout\) # (\caminhoDados|reg_troco|valor_armazenado\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|temp~11_combout\,
	datab => \caminhoDados|display|U3|temp~9_combout\,
	datac => \caminhoDados|display|U3|temp~10_combout\,
	datad => \caminhoDados|reg_troco|valor_armazenado\(1),
	combout => \caminhoDados|display|U3|LessThan5~0_combout\);

-- Location: LCCOMB_X50_Y50_N22
\caminhoDados|display|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux13~0_combout\ = (!\maquinaEstados|WideOr4~0_combout\ & (\maquinaEstados|WideOr5~0_combout\ & !\maquinaEstados|WideOr3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquinaEstados|WideOr4~0_combout\,
	datac => \maquinaEstados|WideOr5~0_combout\,
	datad => \maquinaEstados|WideOr3~0_combout\,
	combout => \caminhoDados|display|Mux13~0_combout\);

-- Location: LCCOMB_X54_Y49_N10
\caminhoDados|display|U1|temp~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|temp~9_combout\ = \caminhoDados|display|U1|LessThan2~0_combout\ $ (\caminhoDados|reg_total_inserido|valor_armazenado\(3) $ (((!\caminhoDados|reg_total_inserido|valor_armazenado\(2) & 
-- \caminhoDados|display|U1|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U1|LessThan2~0_combout\,
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(2),
	datac => \caminhoDados|reg_total_inserido|valor_armazenado\(3),
	datad => \caminhoDados|display|U1|LessThan3~1_combout\,
	combout => \caminhoDados|display|U1|temp~9_combout\);

-- Location: LCCOMB_X54_Y49_N18
\caminhoDados|display|U1|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|Add3~0_combout\ = \caminhoDados|display|U1|temp~5_combout\ $ (((\caminhoDados|display|U1|LessThan2~0_combout\ & (\caminhoDados|reg_total_inserido|valor_armazenado\(2) & \caminhoDados|reg_total_inserido|valor_armazenado\(3))) # 
-- (!\caminhoDados|display|U1|LessThan2~0_combout\ & ((\caminhoDados|reg_total_inserido|valor_armazenado\(2)) # (\caminhoDados|reg_total_inserido|valor_armazenado\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U1|LessThan2~0_combout\,
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(2),
	datac => \caminhoDados|reg_total_inserido|valor_armazenado\(3),
	datad => \caminhoDados|display|U1|temp~5_combout\,
	combout => \caminhoDados|display|U1|Add3~0_combout\);

-- Location: LCCOMB_X54_Y49_N8
\caminhoDados|display|U1|temp~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|temp~6_combout\ = (\caminhoDados|display|U1|temp~3_combout\ & (\caminhoDados|display|U1|temp~5_combout\ $ ((!\caminhoDados|reg_total_inserido|valor_armazenado\(3))))) # (!\caminhoDados|display|U1|temp~3_combout\ & 
-- (\caminhoDados|display|U1|temp~5_combout\ & ((\caminhoDados|reg_total_inserido|valor_armazenado\(3)) # (!\caminhoDados|display|U1|temp~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U1|temp~3_combout\,
	datab => \caminhoDados|display|U1|temp~5_combout\,
	datac => \caminhoDados|reg_total_inserido|valor_armazenado\(3),
	datad => \caminhoDados|display|U1|temp~4_combout\,
	combout => \caminhoDados|display|U1|temp~6_combout\);

-- Location: LCCOMB_X54_Y49_N30
\caminhoDados|display|U1|temp~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|temp~8_combout\ = (\caminhoDados|display|U1|LessThan3~0_combout\ & (\caminhoDados|display|U1|Add3~0_combout\)) # (!\caminhoDados|display|U1|LessThan3~0_combout\ & ((\caminhoDados|display|U1|temp~7_combout\ & 
-- (\caminhoDados|display|U1|Add3~0_combout\)) # (!\caminhoDados|display|U1|temp~7_combout\ & ((\caminhoDados|display|U1|temp~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U1|LessThan3~0_combout\,
	datab => \caminhoDados|display|U1|Add3~0_combout\,
	datac => \caminhoDados|display|U1|temp~6_combout\,
	datad => \caminhoDados|display|U1|temp~7_combout\,
	combout => \caminhoDados|display|U1|temp~8_combout\);

-- Location: LCCOMB_X51_Y49_N14
\caminhoDados|display|U1|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|LessThan5~0_combout\ = (\caminhoDados|display|U1|temp~8_combout\) # ((\caminhoDados|display|U1|temp~9_combout\ & ((\caminhoDados|display|U1|temp~10_combout\) # (\caminhoDados|reg_total_inserido|valor_armazenado\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U1|temp~10_combout\,
	datab => \caminhoDados|display|U1|temp~9_combout\,
	datac => \caminhoDados|display|U1|temp~8_combout\,
	datad => \caminhoDados|reg_total_inserido|valor_armazenado\(1),
	combout => \caminhoDados|display|U1|LessThan5~0_combout\);

-- Location: LCCOMB_X51_Y49_N20
\caminhoDados|display|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux4~0_combout\ = (\maquinaEstados|WideOr5~0_combout\ & \maquinaEstados|WideOr4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maquinaEstados|WideOr5~0_combout\,
	datad => \maquinaEstados|WideOr4~0_combout\,
	combout => \caminhoDados|display|Mux4~0_combout\);

-- Location: LCCOMB_X51_Y49_N24
\caminhoDados|display|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux13~1_combout\ = (\caminhoDados|display|U3|LessThan5~0_combout\ & ((\caminhoDados|display|Mux13~0_combout\) # ((\caminhoDados|display|U1|LessThan5~0_combout\ & \caminhoDados|display|Mux4~0_combout\)))) # 
-- (!\caminhoDados|display|U3|LessThan5~0_combout\ & (((\caminhoDados|display|U1|LessThan5~0_combout\ & \caminhoDados|display|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|LessThan5~0_combout\,
	datab => \caminhoDados|display|Mux13~0_combout\,
	datac => \caminhoDados|display|U1|LessThan5~0_combout\,
	datad => \caminhoDados|display|Mux4~0_combout\,
	combout => \caminhoDados|display|Mux13~1_combout\);

-- Location: LCCOMB_X51_Y49_N30
\caminhoDados|display|Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux15~3_combout\ = (\caminhoDados|display|Mux13~1_combout\ & ((\caminhoDados|display|U3|Add5~4_combout\))) # (!\caminhoDados|display|Mux13~1_combout\ & (\caminhoDados|display|Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|Mux15~2_combout\,
	datac => \caminhoDados|display|U3|Add5~4_combout\,
	datad => \caminhoDados|display|Mux13~1_combout\,
	combout => \caminhoDados|display|Mux15~3_combout\);

-- Location: LCCOMB_X52_Y49_N14
\caminhoDados|display|Mux16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux16~1_combout\ = (\maquinaEstados|WideOr3~0_combout\) # (\caminhoDados|display|U3|LessThan5~0_combout\ $ (\caminhoDados|reg_troco|valor_armazenado\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquinaEstados|WideOr3~0_combout\,
	datac => \caminhoDados|display|U3|LessThan5~0_combout\,
	datad => \caminhoDados|reg_troco|valor_armazenado\(1),
	combout => \caminhoDados|display|Mux16~1_combout\);

-- Location: LCCOMB_X50_Y50_N26
\caminhoDados|display|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux3~0_combout\ = (!\maquinaEstados|WideOr4~0_combout\ & \maquinaEstados|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maquinaEstados|WideOr4~0_combout\,
	datad => \maquinaEstados|WideOr3~0_combout\,
	combout => \caminhoDados|display|Mux3~0_combout\);

-- Location: LCCOMB_X52_Y49_N12
\caminhoDados|display|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux16~0_combout\ = ((\product_selection[1]~input_o\ & (!\product_selection[3]~input_o\)) # (!\product_selection[1]~input_o\ & (\product_selection[3]~input_o\ & \product_selection[2]~input_o\))) # 
-- (!\caminhoDados|display|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_selection[1]~input_o\,
	datab => \product_selection[3]~input_o\,
	datac => \caminhoDados|display|Mux3~0_combout\,
	datad => \product_selection[2]~input_o\,
	combout => \caminhoDados|display|Mux16~0_combout\);

-- Location: LCCOMB_X52_Y49_N16
\caminhoDados|display|Mux16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux16~2_combout\ = (\maquinaEstados|WideOr5~0_combout\ & (\caminhoDados|display|Mux16~1_combout\ & (!\maquinaEstados|WideOr4~0_combout\))) # (!\maquinaEstados|WideOr5~0_combout\ & (((\caminhoDados|display|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|WideOr5~0_combout\,
	datab => \caminhoDados|display|Mux16~1_combout\,
	datac => \maquinaEstados|WideOr4~0_combout\,
	datad => \caminhoDados|display|Mux16~0_combout\,
	combout => \caminhoDados|display|Mux16~2_combout\);

-- Location: LCCOMB_X51_Y49_N0
\caminhoDados|display|Mux16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux16~3_combout\ = (\caminhoDados|display|Mux16~2_combout\) # ((\caminhoDados|display|Mux4~0_combout\ & (\caminhoDados|display|U1|LessThan5~0_combout\ $ (\caminhoDados|reg_total_inserido|valor_armazenado\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|Mux16~2_combout\,
	datab => \caminhoDados|display|Mux4~0_combout\,
	datac => \caminhoDados|display|U1|LessThan5~0_combout\,
	datad => \caminhoDados|reg_total_inserido|valor_armazenado\(1),
	combout => \caminhoDados|display|Mux16~3_combout\);

-- Location: LCCOMB_X50_Y50_N28
\caminhoDados|display|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux17~0_combout\ = (\maquinaEstados|WideOr4~0_combout\ & (\caminhoDados|reg_total_inserido|valor_armazenado\(0))) # (!\maquinaEstados|WideOr4~0_combout\ & (((\caminhoDados|reg_troco|valor_armazenado\(0)) # 
-- (\maquinaEstados|WideOr3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_total_inserido|valor_armazenado\(0),
	datab => \maquinaEstados|WideOr4~0_combout\,
	datac => \caminhoDados|reg_troco|valor_armazenado\(0),
	datad => \maquinaEstados|WideOr3~0_combout\,
	combout => \caminhoDados|display|Mux17~0_combout\);

-- Location: LCCOMB_X50_Y50_N20
\caminhoDados|display|Mux17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux17~1_combout\ = (\maquinaEstados|WideOr5~0_combout\ & (((\caminhoDados|display|Mux17~0_combout\)))) # (!\maquinaEstados|WideOr5~0_combout\ & (((\product_selection[0]~input_o\)) # (!\caminhoDados|display|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|Mux3~0_combout\,
	datab => \product_selection[0]~input_o\,
	datac => \maquinaEstados|WideOr5~0_combout\,
	datad => \caminhoDados|display|Mux17~0_combout\,
	combout => \caminhoDados|display|Mux17~1_combout\);

-- Location: LCCOMB_X52_Y49_N4
\caminhoDados|display|U3|Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|Add5~6_combout\ = (\maquinaEstados|WideOr4~0_combout\ & ((\caminhoDados|display|U1|temp~9_combout\))) # (!\maquinaEstados|WideOr4~0_combout\ & (\caminhoDados|display|U3|temp~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|WideOr4~0_combout\,
	datac => \caminhoDados|display|U3|temp~10_combout\,
	datad => \caminhoDados|display|U1|temp~9_combout\,
	combout => \caminhoDados|display|U3|Add5~6_combout\);

-- Location: LCCOMB_X51_Y49_N10
\caminhoDados|display|U3|Add5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|Add5~7_combout\ = (\caminhoDados|display|U3|Add5~6_combout\ & (\caminhoDados|display|U3|Add5~5\ $ (GND))) # (!\caminhoDados|display|U3|Add5~6_combout\ & (!\caminhoDados|display|U3|Add5~5\ & VCC))
-- \caminhoDados|display|U3|Add5~8\ = CARRY((\caminhoDados|display|U3|Add5~6_combout\ & !\caminhoDados|display|U3|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|Add5~6_combout\,
	datad => VCC,
	cin => \caminhoDados|display|U3|Add5~5\,
	combout => \caminhoDados|display|U3|Add5~7_combout\,
	cout => \caminhoDados|display|U3|Add5~8\);

-- Location: LCCOMB_X51_Y49_N18
\caminhoDados|display|Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux14~4_combout\ = (\maquinaEstados|WideOr4~0_combout\ & ((\caminhoDados|display|U1|LessThan5~0_combout\))) # (!\maquinaEstados|WideOr4~0_combout\ & (\caminhoDados|display|U3|LessThan5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|LessThan5~0_combout\,
	datac => \caminhoDados|display|U1|LessThan5~0_combout\,
	datad => \maquinaEstados|WideOr4~0_combout\,
	combout => \caminhoDados|display|Mux14~4_combout\);

-- Location: LCCOMB_X52_Y49_N28
\caminhoDados|display|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux14~1_combout\ = (\maquinaEstados|WideOr3~0_combout\) # ((!\caminhoDados|display|U3|LessThan5~0_combout\ & \caminhoDados|display|U3|temp~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminhoDados|display|U3|LessThan5~0_combout\,
	datac => \caminhoDados|display|U3|temp~10_combout\,
	datad => \maquinaEstados|WideOr3~0_combout\,
	combout => \caminhoDados|display|Mux14~1_combout\);

-- Location: LCCOMB_X52_Y49_N22
\caminhoDados|display|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux14~0_combout\ = ((!\product_selection[1]~input_o\ & (\product_selection[3]~input_o\ & !\product_selection[2]~input_o\))) # (!\caminhoDados|display|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_selection[1]~input_o\,
	datab => \product_selection[3]~input_o\,
	datac => \caminhoDados|display|Mux3~0_combout\,
	datad => \product_selection[2]~input_o\,
	combout => \caminhoDados|display|Mux14~0_combout\);

-- Location: LCCOMB_X52_Y49_N6
\caminhoDados|display|Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux14~2_combout\ = (\maquinaEstados|WideOr5~0_combout\ & (\caminhoDados|display|Mux14~1_combout\ & (!\maquinaEstados|WideOr4~0_combout\))) # (!\maquinaEstados|WideOr5~0_combout\ & (((\caminhoDados|display|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|WideOr5~0_combout\,
	datab => \caminhoDados|display|Mux14~1_combout\,
	datac => \maquinaEstados|WideOr4~0_combout\,
	datad => \caminhoDados|display|Mux14~0_combout\,
	combout => \caminhoDados|display|Mux14~2_combout\);

-- Location: LCCOMB_X51_Y49_N28
\caminhoDados|display|Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux14~3_combout\ = (\caminhoDados|display|Mux14~2_combout\) # ((!\caminhoDados|display|U1|LessThan5~0_combout\ & (\caminhoDados|display|U1|temp~9_combout\ & \caminhoDados|display|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|Mux14~2_combout\,
	datab => \caminhoDados|display|U1|LessThan5~0_combout\,
	datac => \caminhoDados|display|U1|temp~9_combout\,
	datad => \caminhoDados|display|Mux4~0_combout\,
	combout => \caminhoDados|display|Mux14~3_combout\);

-- Location: LCCOMB_X51_Y49_N4
\caminhoDados|display|Mux14~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux14~5_combout\ = (\caminhoDados|display|Mux14~3_combout\) # ((\caminhoDados|display|U3|Add5~7_combout\ & (\caminhoDados|display|Mux14~4_combout\ & \maquinaEstados|WideOr5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|Add5~7_combout\,
	datab => \caminhoDados|display|Mux14~4_combout\,
	datac => \maquinaEstados|WideOr5~0_combout\,
	datad => \caminhoDados|display|Mux14~3_combout\,
	combout => \caminhoDados|display|Mux14~5_combout\);

-- Location: LCCOMB_X44_Y39_N20
\caminhoDados|display|Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux24~0_combout\ = (\caminhoDados|display|Mux16~3_combout\ & (\caminhoDados|display|Mux14~5_combout\ & ((\caminhoDados|display|Mux17~1_combout\) # (!\caminhoDados|display|Mux15~3_combout\)))) # 
-- (!\caminhoDados|display|Mux16~3_combout\ & (!\caminhoDados|display|Mux14~5_combout\ & (\caminhoDados|display|Mux15~3_combout\ $ (\caminhoDados|display|Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|Mux15~3_combout\,
	datab => \caminhoDados|display|Mux16~3_combout\,
	datac => \caminhoDados|display|Mux17~1_combout\,
	datad => \caminhoDados|display|Mux14~5_combout\,
	combout => \caminhoDados|display|Mux24~0_combout\);

-- Location: LCCOMB_X44_Y39_N14
\caminhoDados|display|Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux23~0_combout\ = (\caminhoDados|display|Mux15~3_combout\ & (\caminhoDados|display|Mux17~1_combout\ $ (((\caminhoDados|display|Mux16~3_combout\ & !\caminhoDados|display|Mux14~5_combout\))))) # 
-- (!\caminhoDados|display|Mux15~3_combout\ & (\caminhoDados|display|Mux16~3_combout\ & ((\caminhoDados|display|Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|Mux15~3_combout\,
	datab => \caminhoDados|display|Mux16~3_combout\,
	datac => \caminhoDados|display|Mux17~1_combout\,
	datad => \caminhoDados|display|Mux14~5_combout\,
	combout => \caminhoDados|display|Mux23~0_combout\);

-- Location: LCCOMB_X44_Y39_N8
\caminhoDados|display|Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux22~0_combout\ = (\caminhoDados|display|Mux16~3_combout\ & ((\caminhoDados|display|Mux17~1_combout\ & ((\caminhoDados|display|Mux14~5_combout\))) # (!\caminhoDados|display|Mux17~1_combout\ & 
-- (!\caminhoDados|display|Mux15~3_combout\)))) # (!\caminhoDados|display|Mux16~3_combout\ & (\caminhoDados|display|Mux15~3_combout\ & ((\caminhoDados|display|Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|Mux15~3_combout\,
	datab => \caminhoDados|display|Mux16~3_combout\,
	datac => \caminhoDados|display|Mux17~1_combout\,
	datad => \caminhoDados|display|Mux14~5_combout\,
	combout => \caminhoDados|display|Mux22~0_combout\);

-- Location: LCCOMB_X44_Y39_N10
\caminhoDados|display|Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux21~0_combout\ = (\caminhoDados|display|Mux15~3_combout\ & ((\caminhoDados|display|Mux16~3_combout\ & ((\caminhoDados|display|Mux17~1_combout\) # (\caminhoDados|display|Mux14~5_combout\))) # (!\caminhoDados|display|Mux16~3_combout\ 
-- & (!\caminhoDados|display|Mux17~1_combout\)))) # (!\caminhoDados|display|Mux15~3_combout\ & (!\caminhoDados|display|Mux16~3_combout\ & (\caminhoDados|display|Mux17~1_combout\ & !\caminhoDados|display|Mux14~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|Mux15~3_combout\,
	datab => \caminhoDados|display|Mux16~3_combout\,
	datac => \caminhoDados|display|Mux17~1_combout\,
	datad => \caminhoDados|display|Mux14~5_combout\,
	combout => \caminhoDados|display|Mux21~0_combout\);

-- Location: LCCOMB_X44_Y39_N24
\caminhoDados|display|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux20~0_combout\ = (\caminhoDados|display|Mux15~3_combout\ & ((\caminhoDados|display|Mux16~3_combout\ & (\caminhoDados|display|Mux17~1_combout\)) # (!\caminhoDados|display|Mux16~3_combout\ & 
-- ((!\caminhoDados|display|Mux14~5_combout\))))) # (!\caminhoDados|display|Mux15~3_combout\ & (\caminhoDados|display|Mux17~1_combout\ & ((!\caminhoDados|display|Mux14~5_combout\) # (!\caminhoDados|display|Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|Mux15~3_combout\,
	datab => \caminhoDados|display|Mux16~3_combout\,
	datac => \caminhoDados|display|Mux17~1_combout\,
	datad => \caminhoDados|display|Mux14~5_combout\,
	combout => \caminhoDados|display|Mux20~0_combout\);

-- Location: LCCOMB_X44_Y39_N22
\caminhoDados|display|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux19~0_combout\ = (\caminhoDados|display|Mux15~3_combout\ & (\caminhoDados|display|Mux16~3_combout\ & (\caminhoDados|display|Mux17~1_combout\))) # (!\caminhoDados|display|Mux15~3_combout\ & (!\caminhoDados|display|Mux14~5_combout\ & 
-- ((\caminhoDados|display|Mux16~3_combout\) # (\caminhoDados|display|Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|Mux15~3_combout\,
	datab => \caminhoDados|display|Mux16~3_combout\,
	datac => \caminhoDados|display|Mux17~1_combout\,
	datad => \caminhoDados|display|Mux14~5_combout\,
	combout => \caminhoDados|display|Mux19~0_combout\);

-- Location: LCCOMB_X44_Y39_N12
\caminhoDados|display|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux18~0_combout\ = (\caminhoDados|display|Mux15~3_combout\ & (((!\caminhoDados|display|Mux17~1_combout\)) # (!\caminhoDados|display|Mux16~3_combout\))) # (!\caminhoDados|display|Mux15~3_combout\ & 
-- ((\caminhoDados|display|Mux16~3_combout\ & ((\caminhoDados|display|Mux17~1_combout\) # (!\caminhoDados|display|Mux14~5_combout\))) # (!\caminhoDados|display|Mux16~3_combout\ & ((\caminhoDados|display|Mux14~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|Mux15~3_combout\,
	datab => \caminhoDados|display|Mux16~3_combout\,
	datac => \caminhoDados|display|Mux17~1_combout\,
	datad => \caminhoDados|display|Mux14~5_combout\,
	combout => \caminhoDados|display|Mux18~0_combout\);

-- Location: LCCOMB_X51_Y50_N12
\caminhoDados|display|U3|LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|LessThan4~0_combout\ = (\caminhoDados|reg_troco|valor_armazenado\(4)) # ((\caminhoDados|reg_troco|valor_armazenado\(5)) # (\caminhoDados|reg_troco|valor_armazenado\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_troco|valor_armazenado\(4),
	datac => \caminhoDados|reg_troco|valor_armazenado\(5),
	datad => \caminhoDados|reg_troco|valor_armazenado\(3),
	combout => \caminhoDados|display|U3|LessThan4~0_combout\);

-- Location: LCCOMB_X51_Y50_N10
\caminhoDados|display|U3|temp~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|temp~15_combout\ = \caminhoDados|display|U3|temp~3_combout\ $ ((((!\caminhoDados|reg_troco|valor_armazenado\(3) & !\caminhoDados|display|U3|temp~4_combout\)) # (!\caminhoDados|display|U3|temp~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_troco|valor_armazenado\(3),
	datab => \caminhoDados|display|U3|temp~5_combout\,
	datac => \caminhoDados|display|U3|temp~4_combout\,
	datad => \caminhoDados|display|U3|temp~3_combout\,
	combout => \caminhoDados|display|U3|temp~15_combout\);

-- Location: LCCOMB_X51_Y50_N26
\caminhoDados|display|U3|temp~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|temp~12_combout\ = \caminhoDados|display|U3|temp~15_combout\ $ (((\caminhoDados|display|U3|LessThan4~0_combout\ & (\caminhoDados|reg_troco|valor_armazenado\(7) & \caminhoDados|reg_troco|valor_armazenado\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|LessThan4~0_combout\,
	datab => \caminhoDados|reg_troco|valor_armazenado\(7),
	datac => \caminhoDados|reg_troco|valor_armazenado\(6),
	datad => \caminhoDados|display|U3|temp~15_combout\,
	combout => \caminhoDados|display|U3|temp~12_combout\);

-- Location: LCCOMB_X51_Y51_N22
\caminhoDados|display|U3|Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|Add6~6_combout\ = (!\maquinaEstados|WideOr4~0_combout\ & ((\maquinaEstados|WideOr3~0_combout\ & ((\maquinaEstados|WideOr5~0_combout\))) # (!\maquinaEstados|WideOr3~0_combout\ & ((!\maquinaEstados|WideOr5~0_combout\) # 
-- (!\caminhoDados|display|U3|temp~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|WideOr4~0_combout\,
	datab => \maquinaEstados|WideOr3~0_combout\,
	datac => \caminhoDados|display|U3|temp~12_combout\,
	datad => \maquinaEstados|WideOr5~0_combout\,
	combout => \caminhoDados|display|U3|Add6~6_combout\);

-- Location: LCCOMB_X54_Y51_N26
\caminhoDados|display|U1|temp~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|temp~14_combout\ = \caminhoDados|display|U1|temp~3_combout\ $ ((((!\caminhoDados|reg_total_inserido|valor_armazenado\(3) & !\caminhoDados|display|U1|temp~5_combout\)) # (!\caminhoDados|display|U1|temp~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U1|temp~4_combout\,
	datab => \caminhoDados|display|U1|temp~3_combout\,
	datac => \caminhoDados|reg_total_inserido|valor_armazenado\(3),
	datad => \caminhoDados|display|U1|temp~5_combout\,
	combout => \caminhoDados|display|U1|temp~14_combout\);

-- Location: LCCOMB_X54_Y51_N22
\caminhoDados|display|U1|LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|LessThan4~0_combout\ = (\caminhoDados|reg_total_inserido|valor_armazenado\(6) & ((\caminhoDados|reg_total_inserido|valor_armazenado\(5)) # ((\caminhoDados|reg_total_inserido|valor_armazenado\(3)) # 
-- (\caminhoDados|reg_total_inserido|valor_armazenado\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_total_inserido|valor_armazenado\(6),
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(5),
	datac => \caminhoDados|reg_total_inserido|valor_armazenado\(3),
	datad => \caminhoDados|reg_total_inserido|valor_armazenado\(4),
	combout => \caminhoDados|display|U1|LessThan4~0_combout\);

-- Location: LCCOMB_X54_Y51_N28
\caminhoDados|display|U1|temp~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|temp~13_combout\ = \caminhoDados|display|U1|temp~14_combout\ $ (((\caminhoDados|display|U1|LessThan4~0_combout\ & \caminhoDados|reg_total_inserido|valor_armazenado\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U1|temp~14_combout\,
	datac => \caminhoDados|display|U1|LessThan4~0_combout\,
	datad => \caminhoDados|reg_total_inserido|valor_armazenado\(7),
	combout => \caminhoDados|display|U1|temp~13_combout\);

-- Location: LCCOMB_X51_Y51_N28
\caminhoDados|display|U3|Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|Add6~0_combout\ = (\maquinaEstados|WideOr4~0_combout\ & (\caminhoDados|display|U1|temp~13_combout\)) # (!\maquinaEstados|WideOr4~0_combout\ & ((\caminhoDados|display|U3|temp~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|WideOr4~0_combout\,
	datac => \caminhoDados|display|U1|temp~13_combout\,
	datad => \caminhoDados|display|U3|temp~12_combout\,
	combout => \caminhoDados|display|U3|Add6~0_combout\);

-- Location: LCCOMB_X52_Y49_N2
\caminhoDados|display|U3|temp~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|temp~14_combout\ = \caminhoDados|display|U3|temp~6_combout\ $ ((((!\caminhoDados|reg_troco|valor_armazenado\(2) & !\caminhoDados|display|U3|temp~7_combout\)) # (!\caminhoDados|display|U3|temp~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_troco|valor_armazenado\(2),
	datab => \caminhoDados|display|U3|temp~7_combout\,
	datac => \caminhoDados|display|U3|temp~6_combout\,
	datad => \caminhoDados|display|U3|temp~8_combout\,
	combout => \caminhoDados|display|U3|temp~14_combout\);

-- Location: LCCOMB_X54_Y49_N22
\caminhoDados|display|U3|Add6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|Add6~1_combout\ = (\maquinaEstados|WideOr4~0_combout\ & (\caminhoDados|display|U1|LessThan3~0_combout\ $ (((!\caminhoDados|display|U1|temp~7_combout\))))) # (!\maquinaEstados|WideOr4~0_combout\ & 
-- (((\caminhoDados|display|U3|temp~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U1|LessThan3~0_combout\,
	datab => \caminhoDados|display|U3|temp~14_combout\,
	datac => \maquinaEstados|WideOr4~0_combout\,
	datad => \caminhoDados|display|U1|temp~7_combout\,
	combout => \caminhoDados|display|U3|Add6~1_combout\);

-- Location: LCCOMB_X51_Y51_N14
\caminhoDados|display|U3|Add6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|Add6~3_cout\ = CARRY((\maquinaEstados|WideOr5~0_combout\ & !\caminhoDados|display|U3|Add6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|WideOr5~0_combout\,
	datab => \caminhoDados|display|U3|Add6~1_combout\,
	datad => VCC,
	cout => \caminhoDados|display|U3|Add6~3_cout\);

-- Location: LCCOMB_X51_Y51_N16
\caminhoDados|display|U3|Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|Add6~4_combout\ = (\maquinaEstados|WideOr5~0_combout\ & ((\caminhoDados|display|U3|Add6~0_combout\ & (!\caminhoDados|display|U3|Add6~3_cout\)) # (!\caminhoDados|display|U3|Add6~0_combout\ & (\caminhoDados|display|U3|Add6~3_cout\ & 
-- VCC)))) # (!\maquinaEstados|WideOr5~0_combout\ & ((\caminhoDados|display|U3|Add6~0_combout\ & ((\caminhoDados|display|U3|Add6~3_cout\) # (GND))) # (!\caminhoDados|display|U3|Add6~0_combout\ & (!\caminhoDados|display|U3|Add6~3_cout\))))
-- \caminhoDados|display|U3|Add6~5\ = CARRY((\maquinaEstados|WideOr5~0_combout\ & (\caminhoDados|display|U3|Add6~0_combout\ & !\caminhoDados|display|U3|Add6~3_cout\)) # (!\maquinaEstados|WideOr5~0_combout\ & ((\caminhoDados|display|U3|Add6~0_combout\) # 
-- (!\caminhoDados|display|U3|Add6~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|WideOr5~0_combout\,
	datab => \caminhoDados|display|U3|Add6~0_combout\,
	datad => VCC,
	cin => \caminhoDados|display|U3|Add6~3_cout\,
	combout => \caminhoDados|display|U3|Add6~4_combout\,
	cout => \caminhoDados|display|U3|Add6~5\);

-- Location: LCCOMB_X51_Y51_N4
\caminhoDados|display|U3|Add6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|Add6~7_combout\ = (\maquinaEstados|WideOr4~0_combout\ & ((!\caminhoDados|display|U1|temp~13_combout\) # (!\maquinaEstados|WideOr5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|WideOr5~0_combout\,
	datac => \caminhoDados|display|U1|temp~13_combout\,
	datad => \maquinaEstados|WideOr4~0_combout\,
	combout => \caminhoDados|display|U3|Add6~7_combout\);

-- Location: LCCOMB_X51_Y50_N14
\caminhoDados|display|U3|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|LessThan0~0_combout\ = (\caminhoDados|reg_troco|valor_armazenado\(5)) # (\caminhoDados|reg_troco|valor_armazenado\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_troco|valor_armazenado\(5),
	datac => \caminhoDados|reg_troco|valor_armazenado\(6),
	combout => \caminhoDados|display|U3|LessThan0~0_combout\);

-- Location: LCCOMB_X51_Y50_N4
\caminhoDados|display|U3|temp~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|temp~16_combout\ = (\caminhoDados|reg_troco|valor_armazenado\(5) & (\caminhoDados|reg_troco|valor_armazenado\(6) & ((\caminhoDados|reg_troco|valor_armazenado\(4)) # (!\caminhoDados|reg_troco|valor_armazenado\(7))))) # 
-- (!\caminhoDados|reg_troco|valor_armazenado\(5) & ((\caminhoDados|reg_troco|valor_armazenado\(7) & (!\caminhoDados|reg_troco|valor_armazenado\(6))) # (!\caminhoDados|reg_troco|valor_armazenado\(7) & (\caminhoDados|reg_troco|valor_armazenado\(6) & 
-- \caminhoDados|reg_troco|valor_armazenado\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_troco|valor_armazenado\(5),
	datab => \caminhoDados|reg_troco|valor_armazenado\(7),
	datac => \caminhoDados|reg_troco|valor_armazenado\(6),
	datad => \caminhoDados|reg_troco|valor_armazenado\(4),
	combout => \caminhoDados|display|U3|temp~16_combout\);

-- Location: LCCOMB_X51_Y50_N16
\caminhoDados|display|U3|temp~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|temp~13_combout\ = (\caminhoDados|display|U3|temp~16_combout\ & (((!\caminhoDados|reg_troco|valor_armazenado\(7)) # (!\caminhoDados|display|U3|LessThan0~0_combout\)) # (!\caminhoDados|display|U3|temp~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|temp~15_combout\,
	datab => \caminhoDados|display|U3|LessThan0~0_combout\,
	datac => \caminhoDados|display|U3|temp~16_combout\,
	datad => \caminhoDados|reg_troco|valor_armazenado\(7),
	combout => \caminhoDados|display|U3|temp~13_combout\);

-- Location: LCCOMB_X51_Y50_N8
\caminhoDados|display|U3|temp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|temp~2_combout\ = (\caminhoDados|reg_troco|valor_armazenado\(6) & (!\caminhoDados|reg_troco|valor_armazenado\(4) & (!\caminhoDados|reg_troco|valor_armazenado\(5) & !\caminhoDados|reg_troco|valor_armazenado\(3)))) # 
-- (!\caminhoDados|reg_troco|valor_armazenado\(6) & (((\caminhoDados|reg_troco|valor_armazenado\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_troco|valor_armazenado\(4),
	datab => \caminhoDados|reg_troco|valor_armazenado\(6),
	datac => \caminhoDados|reg_troco|valor_armazenado\(5),
	datad => \caminhoDados|reg_troco|valor_armazenado\(3),
	combout => \caminhoDados|display|U3|temp~2_combout\);

-- Location: LCCOMB_X51_Y50_N22
\caminhoDados|display|U3|temp~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|temp~17_combout\ = (\caminhoDados|display|U3|temp~2_combout\ & \caminhoDados|reg_troco|valor_armazenado\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminhoDados|display|U3|temp~2_combout\,
	datad => \caminhoDados|reg_troco|valor_armazenado\(7),
	combout => \caminhoDados|display|U3|temp~17_combout\);

-- Location: LCCOMB_X51_Y51_N10
\caminhoDados|display|U3|LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|LessThan6~0_combout\ = (\caminhoDados|display|U3|temp~17_combout\) # ((\caminhoDados|display|U3|temp~13_combout\ & ((!\caminhoDados|display|U3|temp~14_combout\) # (!\caminhoDados|display|U3|temp~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|temp~13_combout\,
	datab => \caminhoDados|display|U3|temp~12_combout\,
	datac => \caminhoDados|display|U3|temp~17_combout\,
	datad => \caminhoDados|display|U3|temp~14_combout\,
	combout => \caminhoDados|display|U3|LessThan6~0_combout\);

-- Location: LCCOMB_X54_Y51_N12
\caminhoDados|display|U1|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|LessThan0~0_combout\ = (\caminhoDados|reg_total_inserido|valor_armazenado\(6)) # (\caminhoDados|reg_total_inserido|valor_armazenado\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_total_inserido|valor_armazenado\(6),
	datac => \caminhoDados|reg_total_inserido|valor_armazenado\(5),
	combout => \caminhoDados|display|U1|LessThan0~0_combout\);

-- Location: LCCOMB_X54_Y51_N16
\caminhoDados|display|U1|temp~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|temp~15_combout\ = (\caminhoDados|reg_total_inserido|valor_armazenado\(5) & (\caminhoDados|reg_total_inserido|valor_armazenado\(6) & ((\caminhoDados|reg_total_inserido|valor_armazenado\(4)) # 
-- (!\caminhoDados|reg_total_inserido|valor_armazenado\(7))))) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(5) & ((\caminhoDados|reg_total_inserido|valor_armazenado\(6) & (\caminhoDados|reg_total_inserido|valor_armazenado\(4) & 
-- !\caminhoDados|reg_total_inserido|valor_armazenado\(7))) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(6) & ((\caminhoDados|reg_total_inserido|valor_armazenado\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_total_inserido|valor_armazenado\(4),
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(5),
	datac => \caminhoDados|reg_total_inserido|valor_armazenado\(6),
	datad => \caminhoDados|reg_total_inserido|valor_armazenado\(7),
	combout => \caminhoDados|display|U1|temp~15_combout\);

-- Location: LCCOMB_X54_Y51_N20
\caminhoDados|display|U1|temp~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|temp~12_combout\ = (\caminhoDados|display|U1|temp~15_combout\ & (((!\caminhoDados|reg_total_inserido|valor_armazenado\(7)) # (!\caminhoDados|display|U1|temp~14_combout\)) # (!\caminhoDados|display|U1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U1|LessThan0~0_combout\,
	datab => \caminhoDados|display|U1|temp~15_combout\,
	datac => \caminhoDados|display|U1|temp~14_combout\,
	datad => \caminhoDados|reg_total_inserido|valor_armazenado\(7),
	combout => \caminhoDados|display|U1|temp~12_combout\);

-- Location: LCCOMB_X54_Y51_N10
\caminhoDados|display|U1|temp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|temp~2_combout\ = (\caminhoDados|reg_total_inserido|valor_armazenado\(6) & (!\caminhoDados|reg_total_inserido|valor_armazenado\(5) & (!\caminhoDados|reg_total_inserido|valor_armazenado\(3) & 
-- !\caminhoDados|reg_total_inserido|valor_armazenado\(4)))) # (!\caminhoDados|reg_total_inserido|valor_armazenado\(6) & (\caminhoDados|reg_total_inserido|valor_armazenado\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|reg_total_inserido|valor_armazenado\(6),
	datab => \caminhoDados|reg_total_inserido|valor_armazenado\(5),
	datac => \caminhoDados|reg_total_inserido|valor_armazenado\(3),
	datad => \caminhoDados|reg_total_inserido|valor_armazenado\(4),
	combout => \caminhoDados|display|U1|temp~2_combout\);

-- Location: LCCOMB_X54_Y51_N4
\caminhoDados|display|U1|temp~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|temp~16_combout\ = (\caminhoDados|display|U1|temp~2_combout\ & \caminhoDados|reg_total_inserido|valor_armazenado\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U1|temp~2_combout\,
	datad => \caminhoDados|reg_total_inserido|valor_armazenado\(7),
	combout => \caminhoDados|display|U1|temp~16_combout\);

-- Location: LCCOMB_X54_Y49_N24
\caminhoDados|display|U1|temp~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|temp~11_combout\ = \caminhoDados|display|U1|LessThan3~0_combout\ $ (!\caminhoDados|display|U1|temp~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminhoDados|display|U1|LessThan3~0_combout\,
	datad => \caminhoDados|display|U1|temp~7_combout\,
	combout => \caminhoDados|display|U1|temp~11_combout\);

-- Location: LCCOMB_X51_Y51_N0
\caminhoDados|display|U1|LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|LessThan6~0_combout\ = (\caminhoDados|display|U1|temp~16_combout\) # ((\caminhoDados|display|U1|temp~12_combout\ & ((!\caminhoDados|display|U1|temp~11_combout\) # (!\caminhoDados|display|U1|temp~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U1|temp~13_combout\,
	datab => \caminhoDados|display|U1|temp~12_combout\,
	datac => \caminhoDados|display|U1|temp~16_combout\,
	datad => \caminhoDados|display|U1|temp~11_combout\,
	combout => \caminhoDados|display|U1|LessThan6~0_combout\);

-- Location: LCCOMB_X51_Y51_N24
\caminhoDados|display|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux9~0_combout\ = (\caminhoDados|display|U3|LessThan6~0_combout\ & ((\caminhoDados|display|Mux13~0_combout\) # ((\caminhoDados|display|U1|LessThan6~0_combout\ & \caminhoDados|display|Mux4~0_combout\)))) # 
-- (!\caminhoDados|display|U3|LessThan6~0_combout\ & (\caminhoDados|display|U1|LessThan6~0_combout\ & (\caminhoDados|display|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|LessThan6~0_combout\,
	datab => \caminhoDados|display|U1|LessThan6~0_combout\,
	datac => \caminhoDados|display|Mux4~0_combout\,
	datad => \caminhoDados|display|Mux13~0_combout\,
	combout => \caminhoDados|display|Mux9~0_combout\);

-- Location: LCCOMB_X51_Y51_N2
\caminhoDados|display|U3|Add6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|Add6~8_combout\ = (\caminhoDados|display|Mux9~0_combout\ & (((\caminhoDados|display|U3|Add6~4_combout\)))) # (!\caminhoDados|display|Mux9~0_combout\ & ((\caminhoDados|display|U3|Add6~6_combout\) # 
-- ((\caminhoDados|display|U3|Add6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|Add6~6_combout\,
	datab => \caminhoDados|display|U3|Add6~4_combout\,
	datac => \caminhoDados|display|U3|Add6~7_combout\,
	datad => \caminhoDados|display|Mux9~0_combout\,
	combout => \caminhoDados|display|U3|Add6~8_combout\);

-- Location: LCCOMB_X51_Y49_N22
\caminhoDados|display|U3|Add5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|Add5~9_combout\ = (\maquinaEstados|WideOr4~0_combout\ & (\caminhoDados|display|U1|temp~8_combout\)) # (!\maquinaEstados|WideOr4~0_combout\ & ((\caminhoDados|display|U3|temp~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U1|temp~8_combout\,
	datac => \caminhoDados|display|U3|temp~9_combout\,
	datad => \maquinaEstados|WideOr4~0_combout\,
	combout => \caminhoDados|display|U3|Add5~9_combout\);

-- Location: LCCOMB_X51_Y49_N12
\caminhoDados|display|U3|Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|Add5~10_combout\ = \caminhoDados|display|U3|Add5~9_combout\ $ (\caminhoDados|display|U3|Add5~8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|Add5~9_combout\,
	cin => \caminhoDados|display|U3|Add5~8\,
	combout => \caminhoDados|display|U3|Add5~10_combout\);

-- Location: LCCOMB_X52_Y49_N30
\caminhoDados|display|Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux13~2_combout\ = (\product_selection[3]~input_o\ & ((\product_selection[1]~input_o\) # (\product_selection[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_selection[3]~input_o\,
	datac => \product_selection[1]~input_o\,
	datad => \product_selection[2]~input_o\,
	combout => \caminhoDados|display|Mux13~2_combout\);

-- Location: LCCOMB_X52_Y49_N0
\caminhoDados|display|Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux13~3_combout\ = (\maquinaEstados|WideOr5~0_combout\ & ((\caminhoDados|display|U3|temp~9_combout\) # ((\maquinaEstados|WideOr3~0_combout\)))) # (!\maquinaEstados|WideOr5~0_combout\ & (((\caminhoDados|display|Mux13~2_combout\) # 
-- (!\maquinaEstados|WideOr3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|WideOr5~0_combout\,
	datab => \caminhoDados|display|U3|temp~9_combout\,
	datac => \caminhoDados|display|Mux13~2_combout\,
	datad => \maquinaEstados|WideOr3~0_combout\,
	combout => \caminhoDados|display|Mux13~3_combout\);

-- Location: LCCOMB_X51_Y49_N16
\caminhoDados|display|Mux13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux13~4_combout\ = (\maquinaEstados|WideOr4~0_combout\ & ((\caminhoDados|display|U1|temp~8_combout\) # ((!\maquinaEstados|WideOr5~0_combout\)))) # (!\maquinaEstados|WideOr4~0_combout\ & (((\caminhoDados|display|Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U1|temp~8_combout\,
	datab => \caminhoDados|display|Mux13~3_combout\,
	datac => \maquinaEstados|WideOr5~0_combout\,
	datad => \maquinaEstados|WideOr4~0_combout\,
	combout => \caminhoDados|display|Mux13~4_combout\);

-- Location: LCCOMB_X51_Y49_N2
\caminhoDados|display|Mux13~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux13~5_combout\ = (\caminhoDados|display|Mux13~1_combout\ & (\caminhoDados|display|U3|Add5~10_combout\)) # (!\caminhoDados|display|Mux13~1_combout\ & ((\caminhoDados|display|Mux13~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|Add5~10_combout\,
	datab => \caminhoDados|display|Mux13~1_combout\,
	datad => \caminhoDados|display|Mux13~4_combout\,
	combout => \caminhoDados|display|Mux13~5_combout\);

-- Location: LCCOMB_X51_Y51_N12
\caminhoDados|display|U3|Add6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|Add6~9_combout\ = (\maquinaEstados|WideOr4~0_combout\ & ((\caminhoDados|display|U1|temp~12_combout\))) # (!\maquinaEstados|WideOr4~0_combout\ & (\caminhoDados|display|U3|temp~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|WideOr4~0_combout\,
	datac => \caminhoDados|display|U3|temp~13_combout\,
	datad => \caminhoDados|display|U1|temp~12_combout\,
	combout => \caminhoDados|display|U3|Add6~9_combout\);

-- Location: LCCOMB_X51_Y51_N18
\caminhoDados|display|U3|Add6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|Add6~10_combout\ = (\caminhoDados|display|U3|Add6~9_combout\ & (\caminhoDados|display|U3|Add6~5\ $ (GND))) # (!\caminhoDados|display|U3|Add6~9_combout\ & (!\caminhoDados|display|U3|Add6~5\ & VCC))
-- \caminhoDados|display|U3|Add6~11\ = CARRY((\caminhoDados|display|U3|Add6~9_combout\ & !\caminhoDados|display|U3|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|Add6~9_combout\,
	datad => VCC,
	cin => \caminhoDados|display|U3|Add6~5\,
	combout => \caminhoDados|display|U3|Add6~10_combout\,
	cout => \caminhoDados|display|U3|Add6~11\);

-- Location: LCCOMB_X51_Y51_N26
\caminhoDados|display|U3|Add6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|Add6~12_combout\ = (!\maquinaEstados|WideOr4~0_combout\ & ((\maquinaEstados|WideOr5~0_combout\ & ((\maquinaEstados|WideOr3~0_combout\) # (\caminhoDados|display|U3|temp~13_combout\))) # (!\maquinaEstados|WideOr5~0_combout\ & 
-- (!\maquinaEstados|WideOr3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|WideOr5~0_combout\,
	datab => \maquinaEstados|WideOr3~0_combout\,
	datac => \caminhoDados|display|U3|temp~13_combout\,
	datad => \maquinaEstados|WideOr4~0_combout\,
	combout => \caminhoDados|display|U3|Add6~12_combout\);

-- Location: LCCOMB_X51_Y51_N8
\caminhoDados|display|U3|Add6~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|Add6~13_combout\ = (\caminhoDados|display|U3|Add6~12_combout\) # ((\maquinaEstados|WideOr4~0_combout\ & ((\caminhoDados|display|U1|temp~12_combout\) # (!\maquinaEstados|WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|WideOr5~0_combout\,
	datab => \caminhoDados|display|U1|temp~12_combout\,
	datac => \caminhoDados|display|U3|Add6~12_combout\,
	datad => \maquinaEstados|WideOr4~0_combout\,
	combout => \caminhoDados|display|U3|Add6~13_combout\);

-- Location: LCCOMB_X51_Y51_N6
\caminhoDados|display|U3|Add6~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|Add6~14_combout\ = (\caminhoDados|display|Mux9~0_combout\ & (\caminhoDados|display|U3|Add6~10_combout\)) # (!\caminhoDados|display|Mux9~0_combout\ & ((\caminhoDados|display|U3|Add6~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \caminhoDados|display|U3|Add6~10_combout\,
	datac => \caminhoDados|display|U3|Add6~13_combout\,
	datad => \caminhoDados|display|Mux9~0_combout\,
	combout => \caminhoDados|display|U3|Add6~14_combout\);

-- Location: LCCOMB_X51_Y50_N18
\caminhoDados|display|U3|bcd_out[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|bcd_out[5]~0_combout\ = (\caminhoDados|display|U3|temp~17_combout\ & (((!\caminhoDados|display|U3|temp~14_combout\)))) # (!\caminhoDados|display|U3|temp~17_combout\ & ((\caminhoDados|display|U3|temp~13_combout\ & 
-- ((\caminhoDados|display|U3|temp~12_combout\) # (!\caminhoDados|display|U3|temp~14_combout\))) # (!\caminhoDados|display|U3|temp~13_combout\ & (\caminhoDados|display|U3|temp~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|temp~17_combout\,
	datab => \caminhoDados|display|U3|temp~13_combout\,
	datac => \caminhoDados|display|U3|temp~14_combout\,
	datad => \caminhoDados|display|U3|temp~12_combout\,
	combout => \caminhoDados|display|U3|bcd_out[5]~0_combout\);

-- Location: LCCOMB_X50_Y50_N16
\caminhoDados|display|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux12~0_combout\ = (\maquinaEstados|WideOr5~0_combout\ & (!\maquinaEstados|WideOr4~0_combout\ & ((\maquinaEstados|WideOr3~0_combout\) # (!\caminhoDados|display|U3|bcd_out[5]~0_combout\)))) # (!\maquinaEstados|WideOr5~0_combout\ & 
-- (((\maquinaEstados|WideOr4~0_combout\) # (!\maquinaEstados|WideOr3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|WideOr5~0_combout\,
	datab => \caminhoDados|display|U3|bcd_out[5]~0_combout\,
	datac => \maquinaEstados|WideOr4~0_combout\,
	datad => \maquinaEstados|WideOr3~0_combout\,
	combout => \caminhoDados|display|Mux12~0_combout\);

-- Location: LCCOMB_X51_Y51_N30
\caminhoDados|display|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux12~1_combout\ = (\caminhoDados|display|Mux12~0_combout\) # ((\caminhoDados|display|Mux4~0_combout\ & (\caminhoDados|display|U1|temp~11_combout\ $ (!\caminhoDados|display|U1|LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U1|temp~11_combout\,
	datab => \caminhoDados|display|Mux4~0_combout\,
	datac => \caminhoDados|display|Mux12~0_combout\,
	datad => \caminhoDados|display|U1|LessThan6~0_combout\,
	combout => \caminhoDados|display|Mux12~1_combout\);

-- Location: LCCOMB_X52_Y51_N8
\caminhoDados|display|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux31~0_combout\ = (\caminhoDados|display|U3|Add6~14_combout\ & (\caminhoDados|display|Mux12~1_combout\ & ((\caminhoDados|display|Mux13~5_combout\) # (!\caminhoDados|display|U3|Add6~8_combout\)))) # 
-- (!\caminhoDados|display|U3|Add6~14_combout\ & (!\caminhoDados|display|Mux12~1_combout\ & (\caminhoDados|display|U3|Add6~8_combout\ $ (\caminhoDados|display|Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|Add6~8_combout\,
	datab => \caminhoDados|display|Mux13~5_combout\,
	datac => \caminhoDados|display|U3|Add6~14_combout\,
	datad => \caminhoDados|display|Mux12~1_combout\,
	combout => \caminhoDados|display|Mux31~0_combout\);

-- Location: LCCOMB_X52_Y51_N10
\caminhoDados|display|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux30~0_combout\ = (\caminhoDados|display|U3|Add6~8_combout\ & (\caminhoDados|display|Mux13~5_combout\ $ (((!\caminhoDados|display|U3|Add6~14_combout\ & \caminhoDados|display|Mux12~1_combout\))))) # 
-- (!\caminhoDados|display|U3|Add6~8_combout\ & (((\caminhoDados|display|U3|Add6~14_combout\ & \caminhoDados|display|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|Add6~8_combout\,
	datab => \caminhoDados|display|Mux13~5_combout\,
	datac => \caminhoDados|display|U3|Add6~14_combout\,
	datad => \caminhoDados|display|Mux12~1_combout\,
	combout => \caminhoDados|display|Mux30~0_combout\);

-- Location: LCCOMB_X52_Y51_N4
\caminhoDados|display|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux29~0_combout\ = (\caminhoDados|display|Mux12~1_combout\ & ((\caminhoDados|display|Mux13~5_combout\ & ((\caminhoDados|display|U3|Add6~14_combout\))) # (!\caminhoDados|display|Mux13~5_combout\ & 
-- (!\caminhoDados|display|U3|Add6~8_combout\)))) # (!\caminhoDados|display|Mux12~1_combout\ & (\caminhoDados|display|U3|Add6~8_combout\ & ((\caminhoDados|display|U3|Add6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|Add6~8_combout\,
	datab => \caminhoDados|display|Mux13~5_combout\,
	datac => \caminhoDados|display|U3|Add6~14_combout\,
	datad => \caminhoDados|display|Mux12~1_combout\,
	combout => \caminhoDados|display|Mux29~0_combout\);

-- Location: LCCOMB_X52_Y51_N18
\caminhoDados|display|Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux28~0_combout\ = (\caminhoDados|display|U3|Add6~8_combout\ & ((\caminhoDados|display|Mux13~5_combout\ & ((\caminhoDados|display|Mux12~1_combout\))) # (!\caminhoDados|display|Mux13~5_combout\ & 
-- ((\caminhoDados|display|U3|Add6~14_combout\) # (!\caminhoDados|display|Mux12~1_combout\))))) # (!\caminhoDados|display|U3|Add6~8_combout\ & (\caminhoDados|display|Mux13~5_combout\ & (!\caminhoDados|display|U3|Add6~14_combout\ & 
-- !\caminhoDados|display|Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|Add6~8_combout\,
	datab => \caminhoDados|display|Mux13~5_combout\,
	datac => \caminhoDados|display|U3|Add6~14_combout\,
	datad => \caminhoDados|display|Mux12~1_combout\,
	combout => \caminhoDados|display|Mux28~0_combout\);

-- Location: LCCOMB_X52_Y51_N12
\caminhoDados|display|Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux27~0_combout\ = (\caminhoDados|display|U3|Add6~8_combout\ & ((\caminhoDados|display|Mux12~1_combout\ & (\caminhoDados|display|Mux13~5_combout\)) # (!\caminhoDados|display|Mux12~1_combout\ & 
-- ((!\caminhoDados|display|U3|Add6~14_combout\))))) # (!\caminhoDados|display|U3|Add6~8_combout\ & (\caminhoDados|display|Mux13~5_combout\ & ((!\caminhoDados|display|Mux12~1_combout\) # (!\caminhoDados|display|U3|Add6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|Add6~8_combout\,
	datab => \caminhoDados|display|Mux13~5_combout\,
	datac => \caminhoDados|display|U3|Add6~14_combout\,
	datad => \caminhoDados|display|Mux12~1_combout\,
	combout => \caminhoDados|display|Mux27~0_combout\);

-- Location: LCCOMB_X52_Y51_N22
\caminhoDados|display|Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux26~0_combout\ = (\caminhoDados|display|U3|Add6~8_combout\ & (\caminhoDados|display|Mux13~5_combout\ & ((\caminhoDados|display|Mux12~1_combout\)))) # (!\caminhoDados|display|U3|Add6~8_combout\ & 
-- (!\caminhoDados|display|U3|Add6~14_combout\ & ((\caminhoDados|display|Mux13~5_combout\) # (\caminhoDados|display|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|Add6~8_combout\,
	datab => \caminhoDados|display|Mux13~5_combout\,
	datac => \caminhoDados|display|U3|Add6~14_combout\,
	datad => \caminhoDados|display|Mux12~1_combout\,
	combout => \caminhoDados|display|Mux26~0_combout\);

-- Location: LCCOMB_X52_Y51_N20
\caminhoDados|display|Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux25~0_combout\ = (\caminhoDados|display|U3|Add6~8_combout\ & (((!\caminhoDados|display|Mux12~1_combout\)) # (!\caminhoDados|display|Mux13~5_combout\))) # (!\caminhoDados|display|U3|Add6~8_combout\ & 
-- ((\caminhoDados|display|U3|Add6~14_combout\ & ((\caminhoDados|display|Mux13~5_combout\) # (!\caminhoDados|display|Mux12~1_combout\))) # (!\caminhoDados|display|U3|Add6~14_combout\ & ((\caminhoDados|display|Mux12~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|Add6~8_combout\,
	datab => \caminhoDados|display|Mux13~5_combout\,
	datac => \caminhoDados|display|U3|Add6~14_combout\,
	datad => \caminhoDados|display|Mux12~1_combout\,
	combout => \caminhoDados|display|Mux25~0_combout\);

-- Location: LCCOMB_X50_Y51_N26
\caminhoDados|display|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux6~0_combout\ = (\maquinaEstados|WideOr5~0_combout\ & ((\maquinaEstados|WideOr4~0_combout\) # (!\maquinaEstados|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|WideOr4~0_combout\,
	datac => \maquinaEstados|WideOr5~0_combout\,
	datad => \maquinaEstados|WideOr3~0_combout\,
	combout => \caminhoDados|display|Mux6~0_combout\);

-- Location: LCCOMB_X51_Y50_N0
\caminhoDados|display|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux8~0_combout\ = (\maquinaEstados|WideOr3~0_combout\) # ((\caminhoDados|display|U3|LessThan4~0_combout\ & (\caminhoDados|reg_troco|valor_armazenado\(6) & \caminhoDados|reg_troco|valor_armazenado\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|U3|LessThan4~0_combout\,
	datab => \maquinaEstados|WideOr3~0_combout\,
	datac => \caminhoDados|reg_troco|valor_armazenado\(6),
	datad => \caminhoDados|reg_troco|valor_armazenado\(7),
	combout => \caminhoDados|display|Mux8~0_combout\);

-- Location: LCCOMB_X54_Y51_N6
\caminhoDados|display|U1|LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U1|LessThan4~1_combout\ = (\caminhoDados|display|U1|LessThan4~0_combout\ & \caminhoDados|reg_total_inserido|valor_armazenado\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \caminhoDados|display|U1|LessThan4~0_combout\,
	datad => \caminhoDados|reg_total_inserido|valor_armazenado\(7),
	combout => \caminhoDados|display|U1|LessThan4~1_combout\);

-- Location: LCCOMB_X50_Y51_N22
\caminhoDados|display|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux8~1_combout\ = ((\maquinaEstados|WideOr4~0_combout\ & ((\caminhoDados|display|U1|LessThan4~1_combout\))) # (!\maquinaEstados|WideOr4~0_combout\ & (\caminhoDados|display|Mux8~0_combout\))) # (!\maquinaEstados|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|WideOr4~0_combout\,
	datab => \maquinaEstados|WideOr5~0_combout\,
	datac => \caminhoDados|display|Mux8~0_combout\,
	datad => \caminhoDados|display|U1|LessThan4~1_combout\,
	combout => \caminhoDados|display|Mux8~1_combout\);

-- Location: LCCOMB_X50_Y51_N20
\caminhoDados|display|U3|Add6~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|Add6~15_combout\ = (\maquinaEstados|WideOr4~0_combout\ & ((\caminhoDados|display|U1|temp~16_combout\))) # (!\maquinaEstados|WideOr4~0_combout\ & (\caminhoDados|display|U3|temp~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstados|WideOr4~0_combout\,
	datac => \caminhoDados|display|U3|temp~17_combout\,
	datad => \caminhoDados|display|U1|temp~16_combout\,
	combout => \caminhoDados|display|U3|Add6~15_combout\);

-- Location: LCCOMB_X51_Y51_N20
\caminhoDados|display|U3|Add6~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|Add6~16_combout\ = \caminhoDados|display|U3|Add6~11\ $ (\caminhoDados|display|U3|Add6~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \caminhoDados|display|U3|Add6~15_combout\,
	cin => \caminhoDados|display|U3|Add6~11\,
	combout => \caminhoDados|display|U3|Add6~16_combout\);

-- Location: LCCOMB_X50_Y51_N12
\caminhoDados|display|U3|Add6~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|U3|Add6~18_combout\ = (\caminhoDados|display|Mux9~0_combout\ & (((\caminhoDados|display|U3|Add6~16_combout\)))) # (!\caminhoDados|display|Mux9~0_combout\ & (((\caminhoDados|display|U3|Add6~15_combout\)) # 
-- (!\caminhoDados|display|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|Mux6~0_combout\,
	datab => \caminhoDados|display|U3|Add6~15_combout\,
	datac => \caminhoDados|display|U3|Add6~16_combout\,
	datad => \caminhoDados|display|Mux9~0_combout\,
	combout => \caminhoDados|display|U3|Add6~18_combout\);

-- Location: LCCOMB_X50_Y51_N4
\caminhoDados|display|Mux38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux38~0_combout\ = (\caminhoDados|display|U3|Add6~18_combout\ & (\caminhoDados|display|Mux6~0_combout\ $ (\caminhoDados|display|Mux8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|Mux6~0_combout\,
	datac => \caminhoDados|display|Mux8~1_combout\,
	datad => \caminhoDados|display|U3|Add6~18_combout\,
	combout => \caminhoDados|display|Mux38~0_combout\);

-- Location: LCCOMB_X50_Y51_N6
\caminhoDados|display|Mux37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux37~0_combout\ = (!\caminhoDados|display|Mux6~0_combout\ & ((\caminhoDados|display|U3|Add6~16_combout\) # (!\caminhoDados|display|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|Mux6~0_combout\,
	datac => \caminhoDados|display|U3|Add6~16_combout\,
	datad => \caminhoDados|display|Mux9~0_combout\,
	combout => \caminhoDados|display|Mux37~0_combout\);

-- Location: LCCOMB_X50_Y51_N28
\caminhoDados|display|Mux36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux36~0_combout\ = \caminhoDados|display|Mux6~0_combout\ $ (((\caminhoDados|display|U3|Add6~18_combout\) # (!\caminhoDados|display|Mux8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|Mux6~0_combout\,
	datac => \caminhoDados|display|Mux8~1_combout\,
	datad => \caminhoDados|display|U3|Add6~18_combout\,
	combout => \caminhoDados|display|Mux36~0_combout\);

-- Location: LCCOMB_X50_Y51_N10
\caminhoDados|display|Mux35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux35~0_combout\ = \caminhoDados|display|Mux6~0_combout\ $ (((\caminhoDados|display|Mux8~1_combout\) # (!\caminhoDados|display|U3|Add6~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|Mux6~0_combout\,
	datac => \caminhoDados|display|Mux8~1_combout\,
	datad => \caminhoDados|display|U3|Add6~18_combout\,
	combout => \caminhoDados|display|Mux35~0_combout\);

-- Location: LCCOMB_X50_Y51_N16
\caminhoDados|display|Mux33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux33~0_combout\ = (\caminhoDados|display|U3|Add6~18_combout\) # ((\caminhoDados|display|Mux6~0_combout\ & \caminhoDados|display|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|Mux6~0_combout\,
	datac => \caminhoDados|display|Mux8~1_combout\,
	datad => \caminhoDados|display|U3|Add6~18_combout\,
	combout => \caminhoDados|display|Mux33~0_combout\);

-- Location: LCCOMB_X50_Y51_N18
\caminhoDados|display|Mux32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux32~0_combout\ = (\caminhoDados|display|Mux6~0_combout\ & (!\caminhoDados|display|Mux8~1_combout\)) # (!\caminhoDados|display|Mux6~0_combout\ & (\caminhoDados|display|Mux8~1_combout\ & \caminhoDados|display|U3|Add6~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caminhoDados|display|Mux6~0_combout\,
	datac => \caminhoDados|display|Mux8~1_combout\,
	datad => \caminhoDados|display|U3|Add6~18_combout\,
	combout => \caminhoDados|display|Mux32~0_combout\);

-- Location: LCCOMB_X50_Y50_N14
\caminhoDados|display|Mux52~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux52~0_combout\ = (\maquinaEstados|WideOr5~0_combout\ & (\maquinaEstados|WideOr4~0_combout\ $ (!\maquinaEstados|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquinaEstados|WideOr4~0_combout\,
	datac => \maquinaEstados|WideOr5~0_combout\,
	datad => \maquinaEstados|WideOr3~0_combout\,
	combout => \caminhoDados|display|Mux52~0_combout\);

-- Location: LCCOMB_X50_Y50_N4
\caminhoDados|display|Mux52~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux52~1_combout\ = (\maquinaEstados|WideOr4~0_combout\ $ (\maquinaEstados|WideOr3~0_combout\)) # (!\maquinaEstados|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquinaEstados|WideOr4~0_combout\,
	datac => \maquinaEstados|WideOr5~0_combout\,
	datad => \maquinaEstados|WideOr3~0_combout\,
	combout => \caminhoDados|display|Mux52~1_combout\);

-- Location: LCCOMB_X50_Y50_N30
\caminhoDados|display|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux3~1_combout\ = (!\maquinaEstados|WideOr4~0_combout\ & (!\maquinaEstados|WideOr5~0_combout\ & \maquinaEstados|WideOr3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquinaEstados|WideOr4~0_combout\,
	datac => \maquinaEstados|WideOr5~0_combout\,
	datad => \maquinaEstados|WideOr3~0_combout\,
	combout => \caminhoDados|display|Mux3~1_combout\);

-- Location: LCCOMB_X50_Y50_N12
\caminhoDados|display|Mux48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux48~0_combout\ = (\maquinaEstados|WideOr4~0_combout\ & ((!\maquinaEstados|WideOr3~0_combout\) # (!\maquinaEstados|WideOr5~0_combout\))) # (!\maquinaEstados|WideOr4~0_combout\ & (\maquinaEstados|WideOr5~0_combout\ $ 
-- (!\maquinaEstados|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquinaEstados|WideOr4~0_combout\,
	datac => \maquinaEstados|WideOr5~0_combout\,
	datad => \maquinaEstados|WideOr3~0_combout\,
	combout => \caminhoDados|display|Mux48~0_combout\);

-- Location: LCCOMB_X50_Y50_N10
\caminhoDados|display|Mux54~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux54~0_combout\ = (\maquinaEstados|WideOr4~0_combout\ & (!\maquinaEstados|WideOr5~0_combout\)) # (!\maquinaEstados|WideOr4~0_combout\ & ((\maquinaEstados|WideOr5~0_combout\) # (!\maquinaEstados|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquinaEstados|WideOr4~0_combout\,
	datac => \maquinaEstados|WideOr5~0_combout\,
	datad => \maquinaEstados|WideOr3~0_combout\,
	combout => \caminhoDados|display|Mux54~0_combout\);

-- Location: LCCOMB_X50_Y50_N24
\caminhoDados|display|Mux56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux56~0_combout\ = ((!\maquinaEstados|WideOr4~0_combout\ & \maquinaEstados|WideOr3~0_combout\)) # (!\maquinaEstados|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquinaEstados|WideOr4~0_combout\,
	datac => \maquinaEstados|WideOr5~0_combout\,
	datad => \maquinaEstados|WideOr3~0_combout\,
	combout => \caminhoDados|display|Mux56~0_combout\);

-- Location: LCCOMB_X50_Y50_N2
\caminhoDados|display|Mux55~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \caminhoDados|display|Mux55~0_combout\ = \maquinaEstados|WideOr5~0_combout\ $ (((\maquinaEstados|WideOr4~0_combout\) # (!\maquinaEstados|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquinaEstados|WideOr4~0_combout\,
	datac => \maquinaEstados|WideOr5~0_combout\,
	datad => \maquinaEstados|WideOr3~0_combout\,
	combout => \caminhoDados|display|Mux55~0_combout\);

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

ww_retorna_troco <= \retorna_troco~output_o\;

ww_libera_produto <= \libera_produto~output_o\;

ww_troco_total(0) <= \troco_total[0]~output_o\;

ww_troco_total(1) <= \troco_total[1]~output_o\;

ww_troco_total(2) <= \troco_total[2]~output_o\;

ww_troco_total(3) <= \troco_total[3]~output_o\;

ww_troco_total(4) <= \troco_total[4]~output_o\;

ww_troco_total(5) <= \troco_total[5]~output_o\;

ww_troco_total(6) <= \troco_total[6]~output_o\;

ww_troco_total(7) <= \troco_total[7]~output_o\;

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

ww_valor_displays(24) <= \valor_displays[24]~output_o\;

ww_valor_displays(25) <= \valor_displays[25]~output_o\;

ww_valor_displays(26) <= \valor_displays[26]~output_o\;

ww_valor_displays(27) <= \valor_displays[27]~output_o\;

ww_valor_displays(28) <= \valor_displays[28]~output_o\;

ww_valor_displays(29) <= \valor_displays[29]~output_o\;

ww_valor_displays(30) <= \valor_displays[30]~output_o\;

ww_valor_displays(31) <= \valor_displays[31]~output_o\;

ww_valor_displays(32) <= \valor_displays[32]~output_o\;

ww_valor_displays(33) <= \valor_displays[33]~output_o\;

ww_valor_displays(34) <= \valor_displays[34]~output_o\;

ww_valor_displays(35) <= \valor_displays[35]~output_o\;

ww_valor_displays(36) <= \valor_displays[36]~output_o\;

ww_valor_displays(37) <= \valor_displays[37]~output_o\;

ww_valor_displays(38) <= \valor_displays[38]~output_o\;

ww_valor_displays(39) <= \valor_displays[39]~output_o\;

ww_valor_displays(40) <= \valor_displays[40]~output_o\;

ww_valor_displays(41) <= \valor_displays[41]~output_o\;
END structure;


