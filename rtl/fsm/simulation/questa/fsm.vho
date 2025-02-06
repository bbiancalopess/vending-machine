-- Copyright (C) 2024  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Standard Edition"

-- DATE "02/05/2025 23:40:36"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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

ENTITY 	fsm IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	coin_inserted : IN std_logic;
	product_selected : IN std_logic;
	saldo_insuficiente : IN std_logic;
	tem_troco : IN std_logic;
	estado_fsm : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END fsm;

-- Design Ports Information
-- product_selected	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_fsm[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_fsm[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_fsm[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_insuficiente	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_inserted	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tem_troco	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fsm IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_coin_inserted : std_logic;
SIGNAL ww_product_selected : std_logic;
SIGNAL ww_saldo_insuficiente : std_logic;
SIGNAL ww_tem_troco : std_logic;
SIGNAL ww_estado_fsm : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \product_selected~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \estado_fsm[0]~output_o\ : std_logic;
SIGNAL \estado_fsm[1]~output_o\ : std_logic;
SIGNAL \estado_fsm[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \coin_inserted~input_o\ : std_logic;
SIGNAL \saldo_insuficiente~input_o\ : std_logic;
SIGNAL \proximo_estado.ERRO_VALOR~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \estado_atual.ERRO_VALOR~q\ : std_logic;
SIGNAL \tem_troco~input_o\ : std_logic;
SIGNAL \proximo_estado.LIBERA_PRODUTO~0_combout\ : std_logic;
SIGNAL \estado_atual.LIBERA_PRODUTO~q\ : std_logic;
SIGNAL \proximo_estado.CALCULA_TROCO~0_combout\ : std_logic;
SIGNAL \estado_atual.CALCULA_TROCO~q\ : std_logic;
SIGNAL \estado_atual.RETORNA_TROCO~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \estado_atual.FINALIZA~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \estado_atual.ESPERA~q\ : std_logic;
SIGNAL \proximo_estado.REGISTRA_MOEDA~0_combout\ : std_logic;
SIGNAL \estado_atual.REGISTRA_MOEDA~q\ : std_logic;
SIGNAL \estado_atual.VERIFICA_CREDITO~feeder_combout\ : std_logic;
SIGNAL \estado_atual.VERIFICA_CREDITO~q\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_coin_inserted <= coin_inserted;
ww_product_selected <= product_selected;
ww_saldo_insuficiente <= saldo_insuficiente;
ww_tem_troco <= tem_troco;
estado_fsm <= ww_estado_fsm;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_WideOr2~0_combout\ <= NOT \WideOr2~0_combout\;
\ALT_INV_WideOr3~0_combout\ <= NOT \WideOr3~0_combout\;
\ALT_INV_WideOr4~0_combout\ <= NOT \WideOr4~0_combout\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
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

-- Location: IOOBUF_X54_Y54_N9
\estado_fsm[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \estado_fsm[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\estado_fsm[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \estado_fsm[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\estado_fsm[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \estado_fsm[2]~output_o\);

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

-- Location: IOIBUF_X56_Y54_N1
\coin_inserted~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_inserted,
	o => \coin_inserted~input_o\);

-- Location: IOIBUF_X56_Y54_N22
\saldo_insuficiente~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_insuficiente,
	o => \saldo_insuficiente~input_o\);

-- Location: LCCOMB_X55_Y53_N28
\proximo_estado.ERRO_VALOR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \proximo_estado.ERRO_VALOR~0_combout\ = (\saldo_insuficiente~input_o\ & \estado_atual.VERIFICA_CREDITO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \saldo_insuficiente~input_o\,
	datad => \estado_atual.VERIFICA_CREDITO~q\,
	combout => \proximo_estado.ERRO_VALOR~0_combout\);

-- Location: IOIBUF_X0_Y18_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X55_Y53_N29
\estado_atual.ERRO_VALOR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \proximo_estado.ERRO_VALOR~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.ERRO_VALOR~q\);

-- Location: IOIBUF_X56_Y54_N29
\tem_troco~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tem_troco,
	o => \tem_troco~input_o\);

-- Location: LCCOMB_X55_Y53_N6
\proximo_estado.LIBERA_PRODUTO~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \proximo_estado.LIBERA_PRODUTO~0_combout\ = (!\saldo_insuficiente~input_o\ & \estado_atual.VERIFICA_CREDITO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \saldo_insuficiente~input_o\,
	datad => \estado_atual.VERIFICA_CREDITO~q\,
	combout => \proximo_estado.LIBERA_PRODUTO~0_combout\);

-- Location: FF_X55_Y53_N7
\estado_atual.LIBERA_PRODUTO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \proximo_estado.LIBERA_PRODUTO~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.LIBERA_PRODUTO~q\);

-- Location: LCCOMB_X55_Y53_N30
\proximo_estado.CALCULA_TROCO~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \proximo_estado.CALCULA_TROCO~0_combout\ = (\tem_troco~input_o\ & \estado_atual.LIBERA_PRODUTO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tem_troco~input_o\,
	datad => \estado_atual.LIBERA_PRODUTO~q\,
	combout => \proximo_estado.CALCULA_TROCO~0_combout\);

-- Location: FF_X55_Y53_N31
\estado_atual.CALCULA_TROCO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \proximo_estado.CALCULA_TROCO~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.CALCULA_TROCO~q\);

-- Location: FF_X55_Y53_N5
\estado_atual.RETORNA_TROCO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \estado_atual.CALCULA_TROCO~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.RETORNA_TROCO~q\);

-- Location: LCCOMB_X55_Y53_N18
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\estado_atual.RETORNA_TROCO~q\) # ((!\tem_troco~input_o\ & \estado_atual.LIBERA_PRODUTO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tem_troco~input_o\,
	datac => \estado_atual.RETORNA_TROCO~q\,
	datad => \estado_atual.LIBERA_PRODUTO~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X55_Y53_N19
\estado_atual.FINALIZA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.FINALIZA~q\);

-- Location: LCCOMB_X55_Y53_N2
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\estado_atual.FINALIZA~q\ & ((\coin_inserted~input_o\) # ((\estado_atual.ESPERA~q\ & !\estado_atual.ERRO_VALOR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coin_inserted~input_o\,
	datab => \estado_atual.FINALIZA~q\,
	datac => \estado_atual.ESPERA~q\,
	datad => \estado_atual.ERRO_VALOR~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X55_Y53_N3
\estado_atual.ESPERA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.ESPERA~q\);

-- Location: LCCOMB_X55_Y53_N16
\proximo_estado.REGISTRA_MOEDA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \proximo_estado.REGISTRA_MOEDA~0_combout\ = (\coin_inserted~input_o\ & ((\estado_atual.ERRO_VALOR~q\) # (!\estado_atual.ESPERA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coin_inserted~input_o\,
	datab => \estado_atual.ERRO_VALOR~q\,
	datad => \estado_atual.ESPERA~q\,
	combout => \proximo_estado.REGISTRA_MOEDA~0_combout\);

-- Location: FF_X55_Y53_N17
\estado_atual.REGISTRA_MOEDA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \proximo_estado.REGISTRA_MOEDA~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.REGISTRA_MOEDA~q\);

-- Location: LCCOMB_X55_Y53_N10
\estado_atual.VERIFICA_CREDITO~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual.VERIFICA_CREDITO~feeder_combout\ = \estado_atual.REGISTRA_MOEDA~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_atual.REGISTRA_MOEDA~q\,
	combout => \estado_atual.VERIFICA_CREDITO~feeder_combout\);

-- Location: FF_X55_Y53_N11
\estado_atual.VERIFICA_CREDITO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_atual.VERIFICA_CREDITO~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.VERIFICA_CREDITO~q\);

-- Location: LCCOMB_X55_Y53_N4
\WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\estado_atual.VERIFICA_CREDITO~q\) # (((\estado_atual.RETORNA_TROCO~q\) # (\estado_atual.ERRO_VALOR~q\)) # (!\estado_atual.ESPERA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.VERIFICA_CREDITO~q\,
	datab => \estado_atual.ESPERA~q\,
	datac => \estado_atual.RETORNA_TROCO~q\,
	datad => \estado_atual.ERRO_VALOR~q\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X55_Y53_N20
\WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\estado_atual.REGISTRA_MOEDA~q\) # ((\estado_atual.ERRO_VALOR~q\) # ((\estado_atual.CALCULA_TROCO~q\) # (!\estado_atual.ESPERA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.REGISTRA_MOEDA~q\,
	datab => \estado_atual.ERRO_VALOR~q\,
	datac => \estado_atual.CALCULA_TROCO~q\,
	datad => \estado_atual.ESPERA~q\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X55_Y53_N8
\WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\estado_atual.VERIFICA_CREDITO~q\) # (((\estado_atual.REGISTRA_MOEDA~q\) # (\estado_atual.LIBERA_PRODUTO~q\)) # (!\estado_atual.ESPERA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.VERIFICA_CREDITO~q\,
	datab => \estado_atual.ESPERA~q\,
	datac => \estado_atual.REGISTRA_MOEDA~q\,
	datad => \estado_atual.LIBERA_PRODUTO~q\,
	combout => \WideOr2~0_combout\);

-- Location: IOIBUF_X46_Y54_N8
\product_selected~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_selected,
	o => \product_selected~input_o\);

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

ww_estado_fsm(0) <= \estado_fsm[0]~output_o\;

ww_estado_fsm(1) <= \estado_fsm[1]~output_o\;

ww_estado_fsm(2) <= \estado_fsm[2]~output_o\;
END structure;


