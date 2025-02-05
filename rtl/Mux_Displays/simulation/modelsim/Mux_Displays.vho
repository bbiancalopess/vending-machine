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

-- DATE "02/04/2025 19:47:56"

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

ENTITY 	Mux_Displays IS
    PORT (
	clk : IN std_logic;
	valor : IN std_logic_vector(23 DOWNTO 0);
	display_segments : OUT std_logic_vector(6 DOWNTO 0);
	display_anodes : OUT std_logic_vector(5 DOWNTO 0)
	);
END Mux_Displays;

-- Design Ports Information
-- display_segments[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[2]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[3]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[4]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[5]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_anodes[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_anodes[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_anodes[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_anodes[3]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_anodes[4]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_anodes[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[20]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[16]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[8]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[4]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[0]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[12]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[21]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[17]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[9]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[5]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[13]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[22]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[18]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[10]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[6]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[14]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[23]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[19]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[11]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[7]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[15]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Mux_Displays IS
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
SIGNAL ww_valor : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_display_segments : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_anodes : std_logic_vector(5 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \display_anodes[0]~output_o\ : std_logic;
SIGNAL \display_anodes[1]~output_o\ : std_logic;
SIGNAL \display_anodes[2]~output_o\ : std_logic;
SIGNAL \display_anodes[3]~output_o\ : std_logic;
SIGNAL \display_anodes[4]~output_o\ : std_logic;
SIGNAL \display_anodes[5]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \display_counter[0]~3_combout\ : std_logic;
SIGNAL \display_counter~2_combout\ : std_logic;
SIGNAL \display_counter~1_combout\ : std_logic;
SIGNAL \valor[11]~input_o\ : std_logic;
SIGNAL \valor[3]~input_o\ : std_logic;
SIGNAL \valor[7]~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \valor[15]~input_o\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \valor[23]~input_o\ : std_logic;
SIGNAL \valor[19]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \valor[1]~input_o\ : std_logic;
SIGNAL \valor[5]~input_o\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \valor[13]~input_o\ : std_logic;
SIGNAL \valor[9]~input_o\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \valor[17]~input_o\ : std_logic;
SIGNAL \valor[21]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \valor[14]~input_o\ : std_logic;
SIGNAL \valor[10]~input_o\ : std_logic;
SIGNAL \valor[2]~input_o\ : std_logic;
SIGNAL \valor[6]~input_o\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \valor[22]~input_o\ : std_logic;
SIGNAL \valor[18]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \valor[4]~input_o\ : std_logic;
SIGNAL \valor[0]~input_o\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \valor[8]~input_o\ : std_logic;
SIGNAL \valor[12]~input_o\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \valor[20]~input_o\ : std_logic;
SIGNAL \valor[16]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \display_counter~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL display_counter : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_display_counter~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_valor <= valor;
display_segments <= ww_display_segments;
display_anodes <= ww_display_anodes;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_display_counter~0_combout\ <= NOT \display_counter~0_combout\;
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
\ALT_INV_Mux16~0_combout\ <= NOT \Mux16~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
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

-- Location: IOOBUF_X60_Y54_N23
\display_segments[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\display_segments[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\display_segments[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\display_segments[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\display_segments[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[4]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\display_segments[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\display_segments[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \display_segments[6]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\display_anodes[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux16~0_combout\,
	devoe => ww_devoe,
	o => \display_anodes[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\display_anodes[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux15~0_combout\,
	devoe => ww_devoe,
	o => \display_anodes[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\display_anodes[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => \display_anodes[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\display_anodes[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_display_counter~0_combout\,
	devoe => ww_devoe,
	o => \display_anodes[3]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\display_anodes[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \display_anodes[4]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\display_anodes[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \display_anodes[5]~output_o\);

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

-- Location: LCCOMB_X54_Y53_N2
\display_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_counter[0]~3_combout\ = !display_counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => display_counter(0),
	combout => \display_counter[0]~3_combout\);

-- Location: FF_X54_Y53_N3
\display_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_counter(0));

-- Location: LCCOMB_X54_Y53_N24
\display_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_counter~2_combout\ = (display_counter(1) & ((!display_counter(0)))) # (!display_counter(1) & (!display_counter(2) & display_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => display_counter(2),
	datac => display_counter(1),
	datad => display_counter(0),
	combout => \display_counter~2_combout\);

-- Location: FF_X54_Y53_N25
\display_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_counter(1));

-- Location: LCCOMB_X54_Y53_N0
\display_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_counter~1_combout\ = (display_counter(2) & ((!display_counter(0)))) # (!display_counter(2) & (display_counter(1) & display_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => display_counter(1),
	datac => display_counter(2),
	datad => display_counter(0),
	combout => \display_counter~1_combout\);

-- Location: FF_X54_Y53_N1
\display_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_counter(2));

-- Location: IOIBUF_X54_Y54_N29
\valor[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(11),
	o => \valor[11]~input_o\);

-- Location: IOIBUF_X56_Y54_N22
\valor[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(3),
	o => \valor[3]~input_o\);

-- Location: IOIBUF_X49_Y54_N22
\valor[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(7),
	o => \valor[7]~input_o\);

-- Location: LCCOMB_X54_Y53_N12
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (display_counter(0) & (((\valor[7]~input_o\) # (display_counter(1))))) # (!display_counter(0) & (\valor[3]~input_o\ & ((!display_counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor[3]~input_o\,
	datab => display_counter(0),
	datac => \valor[7]~input_o\,
	datad => display_counter(1),
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X51_Y54_N8
\valor[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(15),
	o => \valor[15]~input_o\);

-- Location: LCCOMB_X54_Y53_N30
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux0~1_combout\ & (((\valor[15]~input_o\) # (!display_counter(1))))) # (!\Mux0~1_combout\ & (\valor[11]~input_o\ & ((display_counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor[11]~input_o\,
	datab => \Mux0~1_combout\,
	datac => \valor[15]~input_o\,
	datad => display_counter(1),
	combout => \Mux0~2_combout\);

-- Location: IOIBUF_X54_Y54_N1
\valor[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(23),
	o => \valor[23]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\valor[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(19),
	o => \valor[19]~input_o\);

-- Location: LCCOMB_X54_Y53_N10
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (display_counter(2) & ((display_counter(0) & (\valor[23]~input_o\)) # (!display_counter(0) & ((\valor[19]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor[23]~input_o\,
	datab => \valor[19]~input_o\,
	datac => display_counter(0),
	datad => display_counter(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X54_Y53_N20
\Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~0_combout\) # ((!display_counter(2) & \Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display_counter(2),
	datac => \Mux0~2_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~3_combout\);

-- Location: IOIBUF_X60_Y54_N29
\valor[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(1),
	o => \valor[1]~input_o\);

-- Location: IOIBUF_X66_Y54_N15
\valor[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(5),
	o => \valor[5]~input_o\);

-- Location: LCCOMB_X58_Y53_N10
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (display_counter(1) & (((display_counter(0))))) # (!display_counter(1) & ((display_counter(0) & ((\valor[5]~input_o\))) # (!display_counter(0) & (\valor[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor[1]~input_o\,
	datab => display_counter(1),
	datac => display_counter(0),
	datad => \valor[5]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: IOIBUF_X58_Y54_N8
\valor[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(13),
	o => \valor[13]~input_o\);

-- Location: IOIBUF_X58_Y54_N15
\valor[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(9),
	o => \valor[9]~input_o\);

-- Location: LCCOMB_X58_Y53_N12
\Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux2~1_combout\ & ((\valor[13]~input_o\) # ((!display_counter(1))))) # (!\Mux2~1_combout\ & (((display_counter(1) & \valor[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \valor[13]~input_o\,
	datac => display_counter(1),
	datad => \valor[9]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: IOIBUF_X58_Y54_N1
\valor[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(17),
	o => \valor[17]~input_o\);

-- Location: IOIBUF_X64_Y54_N1
\valor[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(21),
	o => \valor[21]~input_o\);

-- Location: LCCOMB_X58_Y53_N16
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (display_counter(2) & ((display_counter(0) & ((\valor[21]~input_o\))) # (!display_counter(0) & (\valor[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor[17]~input_o\,
	datab => display_counter(2),
	datac => display_counter(0),
	datad => \valor[21]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X58_Y53_N14
\Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~0_combout\) # ((\Mux2~2_combout\ & !display_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datac => display_counter(2),
	datad => \Mux2~0_combout\,
	combout => \Mux2~3_combout\);

-- Location: IOIBUF_X56_Y54_N29
\valor[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(14),
	o => \valor[14]~input_o\);

-- Location: IOIBUF_X54_Y54_N8
\valor[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(10),
	o => \valor[10]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\valor[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(2),
	o => \valor[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\valor[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(6),
	o => \valor[6]~input_o\);

-- Location: LCCOMB_X54_Y53_N8
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (display_counter(0) & (((\valor[6]~input_o\) # (display_counter(1))))) # (!display_counter(0) & (\valor[2]~input_o\ & ((!display_counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor[2]~input_o\,
	datab => display_counter(0),
	datac => \valor[6]~input_o\,
	datad => display_counter(1),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X54_Y53_N14
\Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux1~1_combout\ & ((\valor[14]~input_o\) # ((!display_counter(1))))) # (!\Mux1~1_combout\ & (((\valor[10]~input_o\ & display_counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor[14]~input_o\,
	datab => \valor[10]~input_o\,
	datac => \Mux1~1_combout\,
	datad => display_counter(1),
	combout => \Mux1~2_combout\);

-- Location: IOIBUF_X54_Y54_N22
\valor[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(22),
	o => \valor[22]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\valor[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(18),
	o => \valor[18]~input_o\);

-- Location: LCCOMB_X54_Y53_N26
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (display_counter(2) & ((display_counter(0) & (\valor[22]~input_o\)) # (!display_counter(0) & ((\valor[18]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor[22]~input_o\,
	datab => \valor[18]~input_o\,
	datac => display_counter(0),
	datad => display_counter(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X54_Y53_N4
\Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~0_combout\) # ((!display_counter(2) & \Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display_counter(2),
	datab => \Mux1~2_combout\,
	datac => \Mux1~0_combout\,
	combout => \Mux1~3_combout\);

-- Location: IOIBUF_X66_Y54_N1
\valor[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(4),
	o => \valor[4]~input_o\);

-- Location: IOIBUF_X66_Y54_N8
\valor[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(0),
	o => \valor[0]~input_o\);

-- Location: LCCOMB_X58_Y53_N6
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (display_counter(1) & (((display_counter(0))))) # (!display_counter(1) & ((display_counter(0) & (\valor[4]~input_o\)) # (!display_counter(0) & ((\valor[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor[4]~input_o\,
	datab => display_counter(1),
	datac => display_counter(0),
	datad => \valor[0]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: IOIBUF_X58_Y54_N29
\valor[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(8),
	o => \valor[8]~input_o\);

-- Location: IOIBUF_X60_Y54_N8
\valor[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(12),
	o => \valor[12]~input_o\);

-- Location: LCCOMB_X58_Y53_N20
\Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux3~1_combout\ & (((\valor[12]~input_o\) # (!display_counter(1))))) # (!\Mux3~1_combout\ & (\valor[8]~input_o\ & (display_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \valor[8]~input_o\,
	datac => display_counter(1),
	datad => \valor[12]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: IOIBUF_X58_Y54_N22
\valor[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(20),
	o => \valor[20]~input_o\);

-- Location: IOIBUF_X60_Y54_N1
\valor[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor(16),
	o => \valor[16]~input_o\);

-- Location: LCCOMB_X58_Y53_N0
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (display_counter(2) & ((display_counter(0) & (\valor[20]~input_o\)) # (!display_counter(0) & ((\valor[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor[20]~input_o\,
	datab => display_counter(2),
	datac => display_counter(0),
	datad => \valor[16]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X58_Y53_N18
\Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~0_combout\) # ((\Mux3~2_combout\ & !display_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~2_combout\,
	datac => display_counter(2),
	datad => \Mux3~0_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X58_Y53_N24
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Mux0~3_combout\ & (\Mux2~3_combout\ & ((\Mux3~3_combout\)))) # (!\Mux0~3_combout\ & (!\Mux2~3_combout\ & (\Mux1~3_combout\ $ (\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Mux2~3_combout\,
	datac => \Mux1~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X58_Y53_N30
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Mux1~3_combout\ & ((\Mux0~3_combout\ & ((\Mux2~3_combout\) # (!\Mux3~3_combout\))) # (!\Mux0~3_combout\ & (\Mux2~3_combout\ $ (\Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Mux2~3_combout\,
	datac => \Mux1~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X58_Y53_N28
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Mux0~3_combout\ & (((\Mux1~3_combout\)))) # (!\Mux0~3_combout\ & (\Mux2~3_combout\ & (!\Mux1~3_combout\ & !\Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Mux2~3_combout\,
	datac => \Mux1~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X58_Y53_N2
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux1~3_combout\ & (\Mux3~3_combout\ $ (((!\Mux0~3_combout\ & !\Mux2~3_combout\))))) # (!\Mux1~3_combout\ & ((\Mux0~3_combout\ & (\Mux2~3_combout\ & !\Mux3~3_combout\)) # (!\Mux0~3_combout\ & (!\Mux2~3_combout\ & \Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Mux2~3_combout\,
	datac => \Mux1~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X58_Y53_N8
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux0~3_combout\ & (\Mux3~3_combout\ & (\Mux2~3_combout\ $ (!\Mux1~3_combout\)))) # (!\Mux0~3_combout\ & ((\Mux3~3_combout\) # ((!\Mux2~3_combout\ & \Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Mux2~3_combout\,
	datac => \Mux1~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X58_Y53_N22
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux1~3_combout\ & (((\Mux2~3_combout\ & \Mux3~3_combout\)))) # (!\Mux1~3_combout\ & (!\Mux0~3_combout\ & ((\Mux2~3_combout\) # (\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Mux2~3_combout\,
	datac => \Mux1~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X58_Y53_N4
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux3~3_combout\ & (\Mux2~3_combout\ $ (((\Mux0~3_combout\) # (\Mux1~3_combout\))))) # (!\Mux3~3_combout\ & ((\Mux2~3_combout\) # (\Mux0~3_combout\ $ (\Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Mux2~3_combout\,
	datac => \Mux1~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X54_Y53_N6
\Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (!display_counter(1) & (!display_counter(0) & !display_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => display_counter(1),
	datac => display_counter(0),
	datad => display_counter(2),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X54_Y53_N28
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!display_counter(1) & (display_counter(0) & !display_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => display_counter(1),
	datac => display_counter(0),
	datad => display_counter(2),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X54_Y53_N22
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (display_counter(0)) # (!display_counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => display_counter(0),
	datad => display_counter(1),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X58_Y53_N26
\display_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_counter~0_combout\ = (display_counter(0) & display_counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => display_counter(0),
	datad => display_counter(1),
	combout => \display_counter~0_combout\);

-- Location: LCCOMB_X54_Y53_N16
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (display_counter(0)) # (!display_counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => display_counter(0),
	datad => display_counter(2),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X54_Y53_N18
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (display_counter(0) & display_counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => display_counter(0),
	datad => display_counter(2),
	combout => \Equal0~0_combout\);

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

ww_display_anodes(0) <= \display_anodes[0]~output_o\;

ww_display_anodes(1) <= \display_anodes[1]~output_o\;

ww_display_anodes(2) <= \display_anodes[2]~output_o\;

ww_display_anodes(3) <= \display_anodes[3]~output_o\;

ww_display_anodes(4) <= \display_anodes[4]~output_o\;

ww_display_anodes(5) <= \display_anodes[5]~output_o\;
END structure;


