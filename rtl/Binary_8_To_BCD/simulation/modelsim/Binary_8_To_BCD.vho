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

-- DATE "02/06/2025 12:54:15"

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

ENTITY 	Binary_8_to_BCD IS
    PORT (
	binary_in : IN std_logic_vector(7 DOWNTO 0);
	bcd_out : OUT std_logic_vector(11 DOWNTO 0)
	);
END Binary_8_to_BCD;

-- Design Ports Information
-- bcd_out[0]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[1]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[2]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[3]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[4]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[5]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[6]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[7]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[8]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[9]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[10]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[11]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_in[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_in[4]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_in[7]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_in[5]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_in[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_in[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_in[2]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_in[1]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Binary_8_to_BCD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_binary_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_bcd_out : std_logic_vector(11 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \bcd_out[0]~output_o\ : std_logic;
SIGNAL \bcd_out[1]~output_o\ : std_logic;
SIGNAL \bcd_out[2]~output_o\ : std_logic;
SIGNAL \bcd_out[3]~output_o\ : std_logic;
SIGNAL \bcd_out[4]~output_o\ : std_logic;
SIGNAL \bcd_out[5]~output_o\ : std_logic;
SIGNAL \bcd_out[6]~output_o\ : std_logic;
SIGNAL \bcd_out[7]~output_o\ : std_logic;
SIGNAL \bcd_out[8]~output_o\ : std_logic;
SIGNAL \bcd_out[9]~output_o\ : std_logic;
SIGNAL \bcd_out[10]~output_o\ : std_logic;
SIGNAL \bcd_out[11]~output_o\ : std_logic;
SIGNAL \binary_in[0]~input_o\ : std_logic;
SIGNAL \binary_in[5]~input_o\ : std_logic;
SIGNAL \binary_in[6]~input_o\ : std_logic;
SIGNAL \binary_in[7]~input_o\ : std_logic;
SIGNAL \binary_in[4]~input_o\ : std_logic;
SIGNAL \temp~4_combout\ : std_logic;
SIGNAL \binary_in[3]~input_o\ : std_logic;
SIGNAL \temp~3_combout\ : std_logic;
SIGNAL \temp~2_combout\ : std_logic;
SIGNAL \temp~6_combout\ : std_logic;
SIGNAL \temp~5_combout\ : std_logic;
SIGNAL \temp~7_combout\ : std_logic;
SIGNAL \binary_in[2]~input_o\ : std_logic;
SIGNAL \temp~10_combout\ : std_logic;
SIGNAL \temp~9_combout\ : std_logic;
SIGNAL \temp~8_combout\ : std_logic;
SIGNAL \binary_in[1]~input_o\ : std_logic;
SIGNAL \temp~11_combout\ : std_logic;
SIGNAL \temp~12_combout\ : std_logic;
SIGNAL \temp~13_combout\ : std_logic;
SIGNAL \temp~14_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \temp~18_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \temp~16_combout\ : std_logic;
SIGNAL \temp~25_combout\ : std_logic;
SIGNAL \temp~15_combout\ : std_logic;
SIGNAL \temp~17_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \temp~19_combout\ : std_logic;
SIGNAL \temp~20_combout\ : std_logic;
SIGNAL \temp~21_combout\ : std_logic;
SIGNAL \temp~22_combout\ : std_logic;
SIGNAL \temp~23_combout\ : std_logic;
SIGNAL \temp~24_combout\ : std_logic;
SIGNAL \ALT_INV_temp~22_combout\ : std_logic;
SIGNAL \ALT_INV_temp~19_combout\ : std_logic;
SIGNAL \ALT_INV_temp~14_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_binary_in <= binary_in;
bcd_out <= ww_bcd_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_temp~22_combout\ <= NOT \temp~22_combout\;
\ALT_INV_temp~19_combout\ <= NOT \temp~19_combout\;
\ALT_INV_temp~14_combout\ <= NOT \temp~14_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y44_N16
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

-- Location: IOOBUF_X51_Y0_N30
\bcd_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_in[0]~input_o\,
	devoe => ww_devoe,
	o => \bcd_out[0]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\bcd_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~11_combout\,
	devoe => ww_devoe,
	o => \bcd_out[1]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\bcd_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~12_combout\,
	devoe => ww_devoe,
	o => \bcd_out[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\bcd_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~13_combout\,
	devoe => ww_devoe,
	o => \bcd_out[3]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\bcd_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_temp~14_combout\,
	devoe => ww_devoe,
	o => \bcd_out[4]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\bcd_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_temp~19_combout\,
	devoe => ww_devoe,
	o => \bcd_out[5]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\bcd_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~20_combout\,
	devoe => ww_devoe,
	o => \bcd_out[6]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\bcd_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~21_combout\,
	devoe => ww_devoe,
	o => \bcd_out[7]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\bcd_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_temp~22_combout\,
	devoe => ww_devoe,
	o => \bcd_out[8]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\bcd_out[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~24_combout\,
	devoe => ww_devoe,
	o => \bcd_out[9]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\bcd_out[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd_out[10]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\bcd_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd_out[11]~output_o\);

-- Location: IOIBUF_X51_Y0_N15
\binary_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binary_in(0),
	o => \binary_in[0]~input_o\);

-- Location: IOIBUF_X22_Y39_N29
\binary_in[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binary_in(5),
	o => \binary_in[5]~input_o\);

-- Location: IOIBUF_X22_Y39_N22
\binary_in[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binary_in(6),
	o => \binary_in[6]~input_o\);

-- Location: IOIBUF_X22_Y39_N15
\binary_in[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binary_in(7),
	o => \binary_in[7]~input_o\);

-- Location: IOIBUF_X26_Y39_N22
\binary_in[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binary_in(4),
	o => \binary_in[4]~input_o\);

-- Location: LCCOMB_X22_Y35_N12
\temp~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~4_combout\ = (\binary_in[5]~input_o\ & (!\binary_in[7]~input_o\ & ((\binary_in[4]~input_o\) # (!\binary_in[6]~input_o\)))) # (!\binary_in[5]~input_o\ & (\binary_in[7]~input_o\ & ((\binary_in[6]~input_o\) # (!\binary_in[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_in[5]~input_o\,
	datab => \binary_in[6]~input_o\,
	datac => \binary_in[7]~input_o\,
	datad => \binary_in[4]~input_o\,
	combout => \temp~4_combout\);

-- Location: IOIBUF_X26_Y39_N8
\binary_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binary_in(3),
	o => \binary_in[3]~input_o\);

-- Location: LCCOMB_X22_Y35_N26
\temp~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~3_combout\ = (\binary_in[6]~input_o\ & (!\binary_in[4]~input_o\ & (\binary_in[5]~input_o\ $ (!\binary_in[7]~input_o\)))) # (!\binary_in[6]~input_o\ & (!\binary_in[5]~input_o\ & (\binary_in[7]~input_o\ & \binary_in[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_in[5]~input_o\,
	datab => \binary_in[6]~input_o\,
	datac => \binary_in[7]~input_o\,
	datad => \binary_in[4]~input_o\,
	combout => \temp~3_combout\);

-- Location: LCCOMB_X22_Y35_N8
\temp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~2_combout\ = (\binary_in[6]~input_o\ & ((\binary_in[5]~input_o\ & (!\binary_in[7]~input_o\ & !\binary_in[4]~input_o\)) # (!\binary_in[5]~input_o\ & (\binary_in[7]~input_o\ & \binary_in[4]~input_o\)))) # (!\binary_in[6]~input_o\ & 
-- (\binary_in[4]~input_o\ $ (((!\binary_in[5]~input_o\ & \binary_in[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_in[5]~input_o\,
	datab => \binary_in[6]~input_o\,
	datac => \binary_in[7]~input_o\,
	datad => \binary_in[4]~input_o\,
	combout => \temp~2_combout\);

-- Location: LCCOMB_X23_Y35_N2
\temp~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~6_combout\ = (\temp~4_combout\ & (!\binary_in[3]~input_o\ & ((!\temp~2_combout\)))) # (!\temp~4_combout\ & (\temp~3_combout\ & ((\binary_in[3]~input_o\) # (\temp~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~4_combout\,
	datab => \binary_in[3]~input_o\,
	datac => \temp~3_combout\,
	datad => \temp~2_combout\,
	combout => \temp~6_combout\);

-- Location: LCCOMB_X23_Y35_N8
\temp~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~5_combout\ = (\temp~4_combout\ & (!\binary_in[3]~input_o\ & ((\temp~3_combout\) # (\temp~2_combout\)))) # (!\temp~4_combout\ & (\binary_in[3]~input_o\ $ ((\temp~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~4_combout\,
	datab => \binary_in[3]~input_o\,
	datac => \temp~3_combout\,
	datad => \temp~2_combout\,
	combout => \temp~5_combout\);

-- Location: LCCOMB_X23_Y35_N4
\temp~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~7_combout\ = (\binary_in[3]~input_o\ & (((\temp~2_combout\)))) # (!\binary_in[3]~input_o\ & ((\temp~3_combout\ & ((!\temp~2_combout\))) # (!\temp~3_combout\ & (!\temp~4_combout\ & \temp~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~4_combout\,
	datab => \binary_in[3]~input_o\,
	datac => \temp~3_combout\,
	datad => \temp~2_combout\,
	combout => \temp~7_combout\);

-- Location: IOIBUF_X24_Y39_N1
\binary_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binary_in(2),
	o => \binary_in[2]~input_o\);

-- Location: LCCOMB_X23_Y35_N26
\temp~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~10_combout\ = (\temp~6_combout\ & (\temp~5_combout\ $ (((!\binary_in[2]~input_o\))))) # (!\temp~6_combout\ & (\temp~5_combout\ & ((\binary_in[2]~input_o\) # (!\temp~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~6_combout\,
	datab => \temp~5_combout\,
	datac => \temp~7_combout\,
	datad => \binary_in[2]~input_o\,
	combout => \temp~10_combout\);

-- Location: LCCOMB_X23_Y35_N0
\temp~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~9_combout\ = (\temp~7_combout\ & (((!\temp~5_combout\ & !\binary_in[2]~input_o\)))) # (!\temp~7_combout\ & (\temp~6_combout\ & ((\temp~5_combout\) # (\binary_in[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~6_combout\,
	datab => \temp~5_combout\,
	datac => \temp~7_combout\,
	datad => \binary_in[2]~input_o\,
	combout => \temp~9_combout\);

-- Location: LCCOMB_X23_Y35_N30
\temp~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~8_combout\ = (\temp~6_combout\ & (((!\binary_in[2]~input_o\)))) # (!\temp~6_combout\ & ((\temp~7_combout\ & (\temp~5_combout\ & !\binary_in[2]~input_o\)) # (!\temp~7_combout\ & ((\binary_in[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~6_combout\,
	datab => \temp~5_combout\,
	datac => \temp~7_combout\,
	datad => \binary_in[2]~input_o\,
	combout => \temp~8_combout\);

-- Location: IOIBUF_X24_Y39_N15
\binary_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binary_in(1),
	o => \binary_in[1]~input_o\);

-- Location: LCCOMB_X23_Y35_N20
\temp~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~11_combout\ = (\temp~10_combout\ & (!\binary_in[1]~input_o\ & ((\temp~9_combout\) # (\temp~8_combout\)))) # (!\temp~10_combout\ & (\temp~9_combout\ $ (((\binary_in[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~10_combout\,
	datab => \temp~9_combout\,
	datac => \temp~8_combout\,
	datad => \binary_in[1]~input_o\,
	combout => \temp~11_combout\);

-- Location: LCCOMB_X23_Y35_N22
\temp~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~12_combout\ = (\temp~9_combout\ & ((\temp~8_combout\ $ (!\binary_in[1]~input_o\)))) # (!\temp~9_combout\ & (\temp~8_combout\ & ((\binary_in[1]~input_o\) # (!\temp~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~10_combout\,
	datab => \temp~9_combout\,
	datac => \temp~8_combout\,
	datad => \binary_in[1]~input_o\,
	combout => \temp~12_combout\);

-- Location: LCCOMB_X23_Y35_N16
\temp~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~13_combout\ = (\temp~10_combout\ & (((!\temp~8_combout\ & !\binary_in[1]~input_o\)))) # (!\temp~10_combout\ & (\temp~9_combout\ & ((\temp~8_combout\) # (\binary_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~10_combout\,
	datab => \temp~9_combout\,
	datac => \temp~8_combout\,
	datad => \binary_in[1]~input_o\,
	combout => \temp~13_combout\);

-- Location: LCCOMB_X23_Y35_N10
\temp~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~14_combout\ = \temp~9_combout\ $ ((((!\temp~8_combout\ & !\binary_in[1]~input_o\)) # (!\temp~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~10_combout\,
	datab => \temp~9_combout\,
	datac => \temp~8_combout\,
	datad => \binary_in[1]~input_o\,
	combout => \temp~14_combout\);

-- Location: LCCOMB_X23_Y35_N28
\LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\temp~3_combout\) # ((\temp~4_combout\ & ((\binary_in[3]~input_o\) # (\temp~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~4_combout\,
	datab => \binary_in[3]~input_o\,
	datac => \temp~3_combout\,
	datad => \temp~2_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X23_Y35_N6
\LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (\temp~2_combout\ & ((\binary_in[2]~input_o\ & ((\binary_in[3]~input_o\) # (!\LessThan2~0_combout\))) # (!\binary_in[2]~input_o\ & (!\LessThan2~0_combout\ & \binary_in[3]~input_o\)))) # (!\temp~2_combout\ & (((\LessThan2~0_combout\ 
-- & !\binary_in[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~2_combout\,
	datab => \binary_in[2]~input_o\,
	datac => \LessThan2~0_combout\,
	datad => \binary_in[3]~input_o\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X22_Y35_N6
\temp~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~18_combout\ = (\binary_in[5]~input_o\ & (\binary_in[6]~input_o\ & ((\binary_in[4]~input_o\) # (!\binary_in[7]~input_o\)))) # (!\binary_in[5]~input_o\ & ((\binary_in[6]~input_o\ & (!\binary_in[7]~input_o\ & \binary_in[4]~input_o\)) # 
-- (!\binary_in[6]~input_o\ & (\binary_in[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_in[5]~input_o\,
	datab => \binary_in[6]~input_o\,
	datac => \binary_in[7]~input_o\,
	datad => \binary_in[4]~input_o\,
	combout => \temp~18_combout\);

-- Location: LCCOMB_X22_Y35_N16
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\binary_in[6]~input_o\) # (\binary_in[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \binary_in[6]~input_o\,
	datac => \binary_in[5]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y35_N24
\temp~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~16_combout\ = \temp~3_combout\ $ ((((!\binary_in[3]~input_o\ & !\temp~2_combout\)) # (!\temp~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~4_combout\,
	datab => \binary_in[3]~input_o\,
	datac => \temp~3_combout\,
	datad => \temp~2_combout\,
	combout => \temp~16_combout\);

-- Location: LCCOMB_X22_Y35_N30
\temp~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~25_combout\ = (\binary_in[7]~input_o\ & (\temp~16_combout\ & ((\binary_in[5]~input_o\) # (\binary_in[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_in[5]~input_o\,
	datab => \binary_in[6]~input_o\,
	datac => \binary_in[7]~input_o\,
	datad => \temp~16_combout\,
	combout => \temp~25_combout\);

-- Location: LCCOMB_X22_Y35_N22
\temp~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~15_combout\ = (\binary_in[5]~input_o\ & (\binary_in[6]~input_o\ & (\binary_in[7]~input_o\ & \binary_in[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_in[5]~input_o\,
	datab => \binary_in[6]~input_o\,
	datac => \binary_in[7]~input_o\,
	datad => \binary_in[4]~input_o\,
	combout => \temp~15_combout\);

-- Location: LCCOMB_X22_Y35_N10
\temp~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~17_combout\ = (\temp~15_combout\) # ((!\temp~16_combout\ & ((!\LessThan0~0_combout\) # (!\binary_in[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_in[7]~input_o\,
	datab => \LessThan0~0_combout\,
	datac => \temp~15_combout\,
	datad => \temp~16_combout\,
	combout => \temp~17_combout\);

-- Location: LCCOMB_X22_Y35_N28
\LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (\temp~17_combout\) # (\LessThan3~0_combout\ $ (\temp~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datac => \temp~17_combout\,
	datad => \temp~6_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X22_Y35_N24
\LessThan6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = (\temp~18_combout\ & (\LessThan6~0_combout\ & ((!\temp~25_combout\) # (!\LessThan0~0_combout\)))) # (!\temp~18_combout\ & (((\temp~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~18_combout\,
	datab => \LessThan0~0_combout\,
	datac => \temp~25_combout\,
	datad => \LessThan6~0_combout\,
	combout => \LessThan6~1_combout\);

-- Location: LCCOMB_X22_Y35_N2
\temp~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~19_combout\ = \LessThan3~0_combout\ $ (\LessThan6~1_combout\ $ (!\temp~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \LessThan6~1_combout\,
	datad => \temp~6_combout\,
	combout => \temp~19_combout\);

-- Location: LCCOMB_X22_Y35_N20
\temp~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~20_combout\ = \temp~17_combout\ $ (((\LessThan6~1_combout\ & (\LessThan3~0_combout\ $ (!\temp~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \LessThan6~1_combout\,
	datac => \temp~17_combout\,
	datad => \temp~6_combout\,
	combout => \temp~20_combout\);

-- Location: LCCOMB_X22_Y35_N14
\temp~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~21_combout\ = (\temp~18_combout\ & (!\LessThan6~0_combout\ & ((!\temp~25_combout\) # (!\LessThan0~0_combout\)))) # (!\temp~18_combout\ & (((\temp~25_combout\ & \LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~18_combout\,
	datab => \LessThan0~0_combout\,
	datac => \temp~25_combout\,
	datad => \LessThan6~0_combout\,
	combout => \temp~21_combout\);

-- Location: LCCOMB_X22_Y35_N0
\temp~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~22_combout\ = (\temp~18_combout\ & (((\LessThan0~0_combout\ & \temp~25_combout\)) # (!\LessThan6~0_combout\))) # (!\temp~18_combout\ & (((!\temp~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~18_combout\,
	datab => \LessThan0~0_combout\,
	datac => \temp~25_combout\,
	datad => \LessThan6~0_combout\,
	combout => \temp~22_combout\);

-- Location: LCCOMB_X22_Y35_N18
\temp~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~23_combout\ = (\binary_in[7]~input_o\ & \binary_in[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \binary_in[7]~input_o\,
	datad => \binary_in[6]~input_o\,
	combout => \temp~23_combout\);

-- Location: LCCOMB_X22_Y35_N4
\temp~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~24_combout\ = (\temp~23_combout\ & ((\binary_in[3]~input_o\) # ((\binary_in[5]~input_o\) # (\binary_in[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_in[3]~input_o\,
	datab => \temp~23_combout\,
	datac => \binary_in[5]~input_o\,
	datad => \binary_in[4]~input_o\,
	combout => \temp~24_combout\);

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

ww_bcd_out(0) <= \bcd_out[0]~output_o\;

ww_bcd_out(1) <= \bcd_out[1]~output_o\;

ww_bcd_out(2) <= \bcd_out[2]~output_o\;

ww_bcd_out(3) <= \bcd_out[3]~output_o\;

ww_bcd_out(4) <= \bcd_out[4]~output_o\;

ww_bcd_out(5) <= \bcd_out[5]~output_o\;

ww_bcd_out(6) <= \bcd_out[6]~output_o\;

ww_bcd_out(7) <= \bcd_out[7]~output_o\;

ww_bcd_out(8) <= \bcd_out[8]~output_o\;

ww_bcd_out(9) <= \bcd_out[9]~output_o\;

ww_bcd_out(10) <= \bcd_out[10]~output_o\;

ww_bcd_out(11) <= \bcd_out[11]~output_o\;
END structure;


