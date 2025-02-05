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

-- DATE "02/04/2025 18:07:12"

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

ENTITY 	Registrador IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	load : IN std_logic;
	dado : IN std_logic_vector(7 DOWNTO 0);
	valor_armazenado : OUT std_logic_vector(7 DOWNTO 0)
	);
END Registrador;

-- Design Ports Information
-- valor_armazenado[0]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_armazenado[1]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_armazenado[2]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_armazenado[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_armazenado[4]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_armazenado[5]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_armazenado[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_armazenado[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[0]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[3]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[4]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[5]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[7]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Registrador IS
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
SIGNAL ww_load : std_logic;
SIGNAL ww_dado : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_valor_armazenado : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \valor_armazenado[0]~output_o\ : std_logic;
SIGNAL \valor_armazenado[1]~output_o\ : std_logic;
SIGNAL \valor_armazenado[2]~output_o\ : std_logic;
SIGNAL \valor_armazenado[3]~output_o\ : std_logic;
SIGNAL \valor_armazenado[4]~output_o\ : std_logic;
SIGNAL \valor_armazenado[5]~output_o\ : std_logic;
SIGNAL \valor_armazenado[6]~output_o\ : std_logic;
SIGNAL \valor_armazenado[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \dado[0]~input_o\ : std_logic;
SIGNAL \valor_armazenado[0]~reg0feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \valor_armazenado[0]~reg0_q\ : std_logic;
SIGNAL \dado[1]~input_o\ : std_logic;
SIGNAL \valor_armazenado[1]~reg0feeder_combout\ : std_logic;
SIGNAL \valor_armazenado[1]~reg0_q\ : std_logic;
SIGNAL \dado[2]~input_o\ : std_logic;
SIGNAL \valor_armazenado[2]~reg0_q\ : std_logic;
SIGNAL \dado[3]~input_o\ : std_logic;
SIGNAL \valor_armazenado[3]~reg0feeder_combout\ : std_logic;
SIGNAL \valor_armazenado[3]~reg0_q\ : std_logic;
SIGNAL \dado[4]~input_o\ : std_logic;
SIGNAL \valor_armazenado[4]~reg0feeder_combout\ : std_logic;
SIGNAL \valor_armazenado[4]~reg0_q\ : std_logic;
SIGNAL \dado[5]~input_o\ : std_logic;
SIGNAL \valor_armazenado[5]~reg0feeder_combout\ : std_logic;
SIGNAL \valor_armazenado[5]~reg0_q\ : std_logic;
SIGNAL \dado[6]~input_o\ : std_logic;
SIGNAL \valor_armazenado[6]~reg0_q\ : std_logic;
SIGNAL \dado[7]~input_o\ : std_logic;
SIGNAL \valor_armazenado[7]~reg0_q\ : std_logic;
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
ww_load <= load;
ww_dado <= dado;
valor_armazenado <= ww_valor_armazenado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N16
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

-- Location: IOOBUF_X26_Y39_N23
\valor_armazenado[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \valor_armazenado[0]~reg0_q\,
	devoe => ww_devoe,
	o => \valor_armazenado[0]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\valor_armazenado[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \valor_armazenado[1]~reg0_q\,
	devoe => ww_devoe,
	o => \valor_armazenado[1]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\valor_armazenado[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \valor_armazenado[2]~reg0_q\,
	devoe => ww_devoe,
	o => \valor_armazenado[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\valor_armazenado[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \valor_armazenado[3]~reg0_q\,
	devoe => ww_devoe,
	o => \valor_armazenado[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\valor_armazenado[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \valor_armazenado[4]~reg0_q\,
	devoe => ww_devoe,
	o => \valor_armazenado[4]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\valor_armazenado[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \valor_armazenado[5]~reg0_q\,
	devoe => ww_devoe,
	o => \valor_armazenado[5]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\valor_armazenado[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \valor_armazenado[6]~reg0_q\,
	devoe => ww_devoe,
	o => \valor_armazenado[6]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\valor_armazenado[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \valor_armazenado[7]~reg0_q\,
	devoe => ww_devoe,
	o => \valor_armazenado[7]~output_o\);

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

-- Location: IOIBUF_X24_Y39_N29
\dado[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(0),
	o => \dado[0]~input_o\);

-- Location: LCCOMB_X25_Y38_N24
\valor_armazenado[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_armazenado[0]~reg0feeder_combout\ = \dado[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[0]~input_o\,
	combout => \valor_armazenado[0]~reg0feeder_combout\);

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

-- Location: IOIBUF_X24_Y39_N22
\load~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: FF_X25_Y38_N25
\valor_armazenado[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_armazenado[0]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \valor_armazenado[0]~reg0_q\);

-- Location: IOIBUF_X26_Y39_N1
\dado[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(1),
	o => \dado[1]~input_o\);

-- Location: LCCOMB_X25_Y38_N10
\valor_armazenado[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_armazenado[1]~reg0feeder_combout\ = \dado[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[1]~input_o\,
	combout => \valor_armazenado[1]~reg0feeder_combout\);

-- Location: FF_X25_Y38_N11
\valor_armazenado[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_armazenado[1]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \valor_armazenado[1]~reg0_q\);

-- Location: IOIBUF_X29_Y39_N8
\dado[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(2),
	o => \dado[2]~input_o\);

-- Location: FF_X25_Y38_N29
\valor_armazenado[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \valor_armazenado[2]~reg0_q\);

-- Location: IOIBUF_X26_Y39_N29
\dado[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(3),
	o => \dado[3]~input_o\);

-- Location: LCCOMB_X25_Y38_N30
\valor_armazenado[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_armazenado[3]~reg0feeder_combout\ = \dado[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[3]~input_o\,
	combout => \valor_armazenado[3]~reg0feeder_combout\);

-- Location: FF_X25_Y38_N31
\valor_armazenado[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_armazenado[3]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \valor_armazenado[3]~reg0_q\);

-- Location: IOIBUF_X26_Y39_N15
\dado[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(4),
	o => \dado[4]~input_o\);

-- Location: LCCOMB_X25_Y38_N0
\valor_armazenado[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_armazenado[4]~reg0feeder_combout\ = \dado[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[4]~input_o\,
	combout => \valor_armazenado[4]~reg0feeder_combout\);

-- Location: FF_X25_Y38_N1
\valor_armazenado[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_armazenado[4]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \valor_armazenado[4]~reg0_q\);

-- Location: IOIBUF_X29_Y39_N15
\dado[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(5),
	o => \dado[5]~input_o\);

-- Location: LCCOMB_X25_Y38_N26
\valor_armazenado[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_armazenado[5]~reg0feeder_combout\ = \dado[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[5]~input_o\,
	combout => \valor_armazenado[5]~reg0feeder_combout\);

-- Location: FF_X25_Y38_N27
\valor_armazenado[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_armazenado[5]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \valor_armazenado[5]~reg0_q\);

-- Location: IOIBUF_X26_Y39_N8
\dado[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(6),
	o => \dado[6]~input_o\);

-- Location: FF_X25_Y38_N5
\valor_armazenado[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \valor_armazenado[6]~reg0_q\);

-- Location: IOIBUF_X29_Y39_N1
\dado[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(7),
	o => \dado[7]~input_o\);

-- Location: FF_X25_Y38_N23
\valor_armazenado[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \valor_armazenado[7]~reg0_q\);

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

ww_valor_armazenado(0) <= \valor_armazenado[0]~output_o\;

ww_valor_armazenado(1) <= \valor_armazenado[1]~output_o\;

ww_valor_armazenado(2) <= \valor_armazenado[2]~output_o\;

ww_valor_armazenado(3) <= \valor_armazenado[3]~output_o\;

ww_valor_armazenado(4) <= \valor_armazenado[4]~output_o\;

ww_valor_armazenado(5) <= \valor_armazenado[5]~output_o\;

ww_valor_armazenado(6) <= \valor_armazenado[6]~output_o\;

ww_valor_armazenado(7) <= \valor_armazenado[7]~output_o\;
END structure;


