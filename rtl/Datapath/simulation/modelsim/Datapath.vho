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

-- DATE "02/05/2025 16:27:16"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Datapath IS
    PORT (
	clk : IN std_logic;
	coin_value : IN std_logic_vector(3 DOWNTO 0);
	product_selection : IN std_logic_vector(3 DOWNTO 0);
	load_acumulador : IN std_logic;
	clear_acumulador : IN std_logic;
	load_troco : IN std_logic;
	clear_troco : IN std_logic;
	estado_fsm : IN std_logic_vector(2 DOWNTO 0);
	valor_displays : BUFFER std_logic_vector(23 DOWNTO 0);
	display_segments : BUFFER std_logic_vector(6 DOWNTO 0);
	display_anodes : BUFFER std_logic_vector(5 DOWNTO 0);
	tem_troco : BUFFER std_logic
	);
END Datapath;

-- Design Ports Information
-- valor_displays[0]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[1]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[4]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[5]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[6]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[7]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[8]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[9]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[10]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[11]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[12]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[13]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[14]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[15]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[16]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[17]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[18]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[19]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[20]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[21]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[22]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[23]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[0]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[1]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[2]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[3]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[4]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[5]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_segments[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_anodes[0]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_anodes[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_anodes[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_anodes[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_anodes[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_anodes[5]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tem_troco	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_selection[0]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_selection[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_selection[2]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_selection[3]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_fsm[2]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_fsm[0]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_fsm[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_acumulador	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_acumulador	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_troco	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_troco	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_value[0]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_value[1]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_value[2]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_value[3]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Datapath IS
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
SIGNAL ww_coin_value : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_product_selection : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_load_acumulador : std_logic;
SIGNAL ww_clear_acumulador : std_logic;
SIGNAL ww_load_troco : std_logic;
SIGNAL ww_clear_troco : std_logic;
SIGNAL ww_estado_fsm : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_valor_displays : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_display_segments : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_anodes : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_tem_troco : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \estado_fsm[1]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \product_selection[0]~input_o\ : std_logic;
SIGNAL \product_selection[2]~input_o\ : std_logic;
SIGNAL \product_selection[1]~input_o\ : std_logic;
SIGNAL \product_selection[3]~input_o\ : std_logic;
SIGNAL \U4|Mux7~0_combout\ : std_logic;
SIGNAL \coin_value[0]~input_o\ : std_logic;
SIGNAL \U1|Add0~1_sumout\ : std_logic;
SIGNAL \clear_acumulador~input_o\ : std_logic;
SIGNAL \load_acumulador~input_o\ : std_logic;
SIGNAL \U6|troco[0]~1_sumout\ : std_logic;
SIGNAL \clear_troco~input_o\ : std_logic;
SIGNAL \load_troco~input_o\ : std_logic;
SIGNAL \estado_fsm[0]~input_o\ : std_logic;
SIGNAL \U9|Mux18~1_combout\ : std_logic;
SIGNAL \U9|Mux18~0_combout\ : std_logic;
SIGNAL \estado_fsm[2]~input_o\ : std_logic;
SIGNAL \U9|Mux18~2_combout\ : std_logic;
SIGNAL \U4|Mux6~0_combout\ : std_logic;
SIGNAL \coin_value[1]~input_o\ : std_logic;
SIGNAL \U1|Add0~2\ : std_logic;
SIGNAL \U1|Add0~5_sumout\ : std_logic;
SIGNAL \U6|troco[0]~2\ : std_logic;
SIGNAL \U6|troco[0]~3\ : std_logic;
SIGNAL \U6|troco[1]~5_sumout\ : std_logic;
SIGNAL \U4|Mux2~0_combout\ : std_logic;
SIGNAL \coin_value[3]~input_o\ : std_logic;
SIGNAL \coin_value[2]~input_o\ : std_logic;
SIGNAL \U1|Add0~6\ : std_logic;
SIGNAL \U1|Add0~9_sumout\ : std_logic;
SIGNAL \U1|Add0~10\ : std_logic;
SIGNAL \U1|Add0~13_sumout\ : std_logic;
SIGNAL \U1|Add0~14\ : std_logic;
SIGNAL \U1|Add0~17_sumout\ : std_logic;
SIGNAL \U1|Add0~18\ : std_logic;
SIGNAL \U1|Add0~21_sumout\ : std_logic;
SIGNAL \U4|Mux3~0_combout\ : std_logic;
SIGNAL \U4|Mux4~0_combout\ : std_logic;
SIGNAL \U4|Mux5~0_combout\ : std_logic;
SIGNAL \U6|troco[1]~6\ : std_logic;
SIGNAL \U6|troco[1]~7\ : std_logic;
SIGNAL \U6|troco[2]~10\ : std_logic;
SIGNAL \U6|troco[2]~11\ : std_logic;
SIGNAL \U6|troco[3]~14\ : std_logic;
SIGNAL \U6|troco[3]~15\ : std_logic;
SIGNAL \U6|troco[4]~18\ : std_logic;
SIGNAL \U6|troco[4]~19\ : std_logic;
SIGNAL \U6|troco[5]~21_sumout\ : std_logic;
SIGNAL \U4|Mux0~0_combout\ : std_logic;
SIGNAL \U1|Add0~22\ : std_logic;
SIGNAL \U1|Add0~29_sumout\ : std_logic;
SIGNAL \U1|Add0~30\ : std_logic;
SIGNAL \U1|Add0~25_sumout\ : std_logic;
SIGNAL \U4|Mux1~0_combout\ : std_logic;
SIGNAL \U6|troco[5]~22\ : std_logic;
SIGNAL \U6|troco[5]~23\ : std_logic;
SIGNAL \U6|troco[6]~30\ : std_logic;
SIGNAL \U6|troco[6]~31\ : std_logic;
SIGNAL \U6|troco[7]~25_sumout\ : std_logic;
SIGNAL \U6|troco[3]~13_sumout\ : std_logic;
SIGNAL \U6|troco[4]~17_sumout\ : std_logic;
SIGNAL \U6|troco[6]~29_sumout\ : std_logic;
SIGNAL \U6|troco[2]~9_sumout\ : std_logic;
SIGNAL \U9|U3|temp~1_combout\ : std_logic;
SIGNAL \U9|U3|temp~0_combout\ : std_logic;
SIGNAL \U9|U3|LessThan5~0_combout\ : std_logic;
SIGNAL \U9|U3|bcd_out[1]~0_combout\ : std_logic;
SIGNAL \U9|U1|temp~1_combout\ : std_logic;
SIGNAL \U9|U1|LessThan5~0_combout\ : std_logic;
SIGNAL \U9|U1|temp~0_combout\ : std_logic;
SIGNAL \U9|U1|bcd_out[1]~0_combout\ : std_logic;
SIGNAL \U9|Mux17~0_combout\ : std_logic;
SIGNAL \U9|Mux16~0_combout\ : std_logic;
SIGNAL \U9|Mux17~2_combout\ : std_logic;
SIGNAL \U9|Mux17~1_combout\ : std_logic;
SIGNAL \U9|U1|LessThan5~1_combout\ : std_logic;
SIGNAL \U9|U3|LessThan5~1_combout\ : std_logic;
SIGNAL \U9|Mux16~1_combout\ : std_logic;
SIGNAL \U9|Mux16~7_combout\ : std_logic;
SIGNAL \U9|Mux16~2_combout\ : std_logic;
SIGNAL \U9|U2|temp~5_combout\ : std_logic;
SIGNAL \U9|Mux16~3_combout\ : std_logic;
SIGNAL \U9|U3|Add5~0_combout\ : std_logic;
SIGNAL \U9|U3|Add5~1_combout\ : std_logic;
SIGNAL \U9|Mux16~4_combout\ : std_logic;
SIGNAL \U9|U2|temp~4_combout\ : std_logic;
SIGNAL \U9|Mux15~0_combout\ : std_logic;
SIGNAL \U9|Mux15~1_combout\ : std_logic;
SIGNAL \U9|U3|Add5~3_combout\ : std_logic;
SIGNAL \U9|U3|Add5~2_combout\ : std_logic;
SIGNAL \U9|U3|Add5~6_combout\ : std_logic;
SIGNAL \U9|Mux15~2_combout\ : std_logic;
SIGNAL \U9|U3|Add5~4_combout\ : std_logic;
SIGNAL \U9|U2|temp~2_combout\ : std_logic;
SIGNAL \U9|U2|temp~6_combout\ : std_logic;
SIGNAL \U9|U2|temp~7_combout\ : std_logic;
SIGNAL \U9|U3|Add5~5_combout\ : std_logic;
SIGNAL \U9|Mux14~0_combout\ : std_logic;
SIGNAL \U9|U2|bcd_out[5]~0_combout\ : std_logic;
SIGNAL \U9|U3|bcd_out[5]~1_combout\ : std_logic;
SIGNAL \U9|U1|bcd_out[5]~1_combout\ : std_logic;
SIGNAL \U9|Mux13~0_combout\ : std_logic;
SIGNAL \U9|U1|temp~2_combout\ : std_logic;
SIGNAL \U9|U3|temp~2_combout\ : std_logic;
SIGNAL \U9|Mux10~1_combout\ : std_logic;
SIGNAL \U9|U2|temp~3_combout\ : std_logic;
SIGNAL \U9|Mux12~0_combout\ : std_logic;
SIGNAL \U9|U3|Add6~0_combout\ : std_logic;
SIGNAL \U9|U3|LessThan6~0_combout\ : std_logic;
SIGNAL \U9|U2|LessThan6~0_combout\ : std_logic;
SIGNAL \U9|U1|LessThan6~0_combout\ : std_logic;
SIGNAL \U9|Mux10~0_combout\ : std_logic;
SIGNAL \U9|U3|temp~3_combout\ : std_logic;
SIGNAL \U9|U1|temp~3_combout\ : std_logic;
SIGNAL \U9|U3|Add6~1_combout\ : std_logic;
SIGNAL \U9|Mux0~0_combout\ : std_logic;
SIGNAL \U9|Mux12~1_combout\ : std_logic;
SIGNAL \U9|U1|temp~4_combout\ : std_logic;
SIGNAL \U9|U3|temp~4_combout\ : std_logic;
SIGNAL \U9|U2|temp~0_combout\ : std_logic;
SIGNAL \U9|Mux11~0_combout\ : std_logic;
SIGNAL \U9|U3|Add6~2_combout\ : std_logic;
SIGNAL \U9|Mux11~1_combout\ : std_logic;
SIGNAL \U9|U3|Add6~3_combout\ : std_logic;
SIGNAL \U9|U3|Add6~4_combout\ : std_logic;
SIGNAL \U9|U3|Add6~5_combout\ : std_logic;
SIGNAL \U9|U2|temp~1_combout\ : std_logic;
SIGNAL \U9|U3|temp~5_combout\ : std_logic;
SIGNAL \U9|U1|temp~5_combout\ : std_logic;
SIGNAL \U9|U3|Add6~6_combout\ : std_logic;
SIGNAL \U9|Mux10~2_combout\ : std_logic;
SIGNAL \U9|Mux10~3_combout\ : std_logic;
SIGNAL \U9|Mux9~1_combout\ : std_logic;
SIGNAL \U9|Mux9~2_combout\ : std_logic;
SIGNAL \U9|Mux9~4_combout\ : std_logic;
SIGNAL \U9|Mux9~0_combout\ : std_logic;
SIGNAL \U9|Mux9~3_combout\ : std_logic;
SIGNAL \U9|Mux16~5_combout\ : std_logic;
SIGNAL \U9|Mux5~0_combout\ : std_logic;
SIGNAL \U9|Mux4~0_combout\ : std_logic;
SIGNAL \U9|Mux2~0_combout\ : std_logic;
SIGNAL \U9|Mux1~0_combout\ : std_logic;
SIGNAL \U9|Mux0~1_combout\ : std_logic;
SIGNAL \U7|display_counter[0]~2_combout\ : std_logic;
SIGNAL \U7|display_counter~0_combout\ : std_logic;
SIGNAL \U7|display_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \U7|display_counter~1_combout\ : std_logic;
SIGNAL \U7|Mux3~1_combout\ : std_logic;
SIGNAL \U7|Mux3~2_combout\ : std_logic;
SIGNAL \U7|Mux3~4_combout\ : std_logic;
SIGNAL \U7|Mux3~3_combout\ : std_logic;
SIGNAL \U7|Mux3~0_combout\ : std_logic;
SIGNAL \U7|Mux3~5_combout\ : std_logic;
SIGNAL \U7|Mux2~0_combout\ : std_logic;
SIGNAL \U7|Mux2~1_combout\ : std_logic;
SIGNAL \U7|Mux2~2_combout\ : std_logic;
SIGNAL \U7|Mux1~1_combout\ : std_logic;
SIGNAL \U7|Mux1~0_combout\ : std_logic;
SIGNAL \U7|Mux1~2_combout\ : std_logic;
SIGNAL \U9|Mux16~6_combout\ : std_logic;
SIGNAL \U7|Mux1~3_combout\ : std_logic;
SIGNAL \U7|Mux0~0_combout\ : std_logic;
SIGNAL \U7|Mux10~0_combout\ : std_logic;
SIGNAL \U7|Mux9~0_combout\ : std_logic;
SIGNAL \U7|Mux8~0_combout\ : std_logic;
SIGNAL \U7|Mux7~0_combout\ : std_logic;
SIGNAL \U7|Mux6~0_combout\ : std_logic;
SIGNAL \U7|Mux5~0_combout\ : std_logic;
SIGNAL \U7|Mux4~0_combout\ : std_logic;
SIGNAL \U7|Mux14~0_combout\ : std_logic;
SIGNAL \U7|Mux13~0_combout\ : std_logic;
SIGNAL \U7|Mux12~0_combout\ : std_logic;
SIGNAL \U7|Mux12~1_combout\ : std_logic;
SIGNAL \U3|LessThan0~2_combout\ : std_logic;
SIGNAL \U3|LessThan0~1_combout\ : std_logic;
SIGNAL \U3|LessThan0~3_combout\ : std_logic;
SIGNAL \U3|LessThan0~0_combout\ : std_logic;
SIGNAL \U3|LessThan0~4_combout\ : std_logic;
SIGNAL \U5|valor_armazenado\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U8|valor_armazenado\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U7|display_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U9|ALT_INV_Mux18~1_combout\ : std_logic;
SIGNAL \U8|ALT_INV_valor_armazenado\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U5|ALT_INV_valor_armazenado\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U9|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \U4|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_Add5~6_combout\ : std_logic;
SIGNAL \U7|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U9|U2|ALT_INV_temp~2_combout\ : std_logic;
SIGNAL \U9|U2|ALT_INV_temp~1_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux9~4_combout\ : std_logic;
SIGNAL \U3|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \U3|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \U3|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \U3|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \U7|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \U7|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \U7|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \U7|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \U7|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \U7|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux16~6_combout\ : std_logic;
SIGNAL \U7|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \U7|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \U7|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \U7|ALT_INV_Mux3~5_combout\ : std_logic;
SIGNAL \U7|ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \U7|ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \U7|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \U7|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \U7|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \U7|ALT_INV_display_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U9|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux16~5_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_Add6~6_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_temp~5_combout\ : std_logic;
SIGNAL \U9|U1|ALT_INV_temp~5_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_Add6~5_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_Add6~4_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_Add6~3_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_Add6~2_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_temp~4_combout\ : std_logic;
SIGNAL \U9|U1|ALT_INV_temp~4_combout\ : std_logic;
SIGNAL \U9|U2|ALT_INV_temp~0_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_Add6~1_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_temp~3_combout\ : std_logic;
SIGNAL \U9|U1|ALT_INV_temp~3_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \U9|U1|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_Add6~0_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_temp~2_combout\ : std_logic;
SIGNAL \U9|U1|ALT_INV_temp~2_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_bcd_out[5]~1_combout\ : std_logic;
SIGNAL \U9|U1|ALT_INV_bcd_out[5]~1_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_Add5~5_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_Add5~4_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_Add5~3_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_Add5~2_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux16~3_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux16~2_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_Add5~1_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_Add5~0_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux16~1_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \U9|U1|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_bcd_out[1]~0_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_temp~1_combout\ : std_logic;
SIGNAL \U9|U3|ALT_INV_temp~0_combout\ : std_logic;
SIGNAL \U9|U1|ALT_INV_bcd_out[1]~0_combout\ : std_logic;
SIGNAL \U9|U1|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \U9|U1|ALT_INV_temp~1_combout\ : std_logic;
SIGNAL \U9|U1|ALT_INV_temp~0_combout\ : std_logic;
SIGNAL \U4|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \U4|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \U4|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \U4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U4|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \U4|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \U4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \U7|ALT_INV_display_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_coin_value[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_coin_value[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_coin_value[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_coin_value[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_clear_troco~input_o\ : std_logic;
SIGNAL \ALT_INV_clear_acumulador~input_o\ : std_logic;
SIGNAL \ALT_INV_estado_fsm[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_estado_fsm[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_estado_fsm[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_product_selection[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_product_selection[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_product_selection[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_product_selection[0]~input_o\ : std_logic;
SIGNAL \U9|U2|ALT_INV_temp~7_combout\ : std_logic;
SIGNAL \U9|U2|ALT_INV_temp~6_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux17~2_combout\ : std_logic;
SIGNAL \U9|ALT_INV_Mux16~7_combout\ : std_logic;
SIGNAL \U9|U2|ALT_INV_temp~5_combout\ : std_logic;
SIGNAL \U9|U2|ALT_INV_temp~4_combout\ : std_logic;
SIGNAL \U9|U2|ALT_INV_bcd_out[5]~0_combout\ : std_logic;
SIGNAL \U9|U2|ALT_INV_temp~3_combout\ : std_logic;
SIGNAL \U9|U2|ALT_INV_LessThan6~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_coin_value <= coin_value;
ww_product_selection <= product_selection;
ww_load_acumulador <= load_acumulador;
ww_clear_acumulador <= clear_acumulador;
ww_load_troco <= load_troco;
ww_clear_troco <= clear_troco;
ww_estado_fsm <= estado_fsm;
valor_displays <= ww_valor_displays;
display_segments <= ww_display_segments;
display_anodes <= ww_display_anodes;
tem_troco <= ww_tem_troco;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U9|ALT_INV_Mux18~1_combout\ <= NOT \U9|Mux18~1_combout\;
\U8|ALT_INV_valor_armazenado\(0) <= NOT \U8|valor_armazenado\(0);
\U5|ALT_INV_valor_armazenado\(0) <= NOT \U5|valor_armazenado\(0);
\U9|ALT_INV_Mux18~0_combout\ <= NOT \U9|Mux18~0_combout\;
\U4|ALT_INV_Mux7~0_combout\ <= NOT \U4|Mux7~0_combout\;
\U9|U3|ALT_INV_Add5~6_combout\ <= NOT \U9|U3|Add5~6_combout\;
\U7|ALT_INV_Mux0~0_combout\ <= NOT \U7|Mux0~0_combout\;
\U9|U2|ALT_INV_temp~2_combout\ <= NOT \U9|U2|temp~2_combout\;
\U9|U2|ALT_INV_temp~1_combout\ <= NOT \U9|U2|temp~1_combout\;
\U9|ALT_INV_Mux9~4_combout\ <= NOT \U9|Mux9~4_combout\;
\U3|ALT_INV_LessThan0~3_combout\ <= NOT \U3|LessThan0~3_combout\;
\U3|ALT_INV_LessThan0~2_combout\ <= NOT \U3|LessThan0~2_combout\;
\U3|ALT_INV_LessThan0~1_combout\ <= NOT \U3|LessThan0~1_combout\;
\U3|ALT_INV_LessThan0~0_combout\ <= NOT \U3|LessThan0~0_combout\;
\U7|ALT_INV_Mux12~1_combout\ <= NOT \U7|Mux12~1_combout\;
\U7|ALT_INV_Mux4~0_combout\ <= NOT \U7|Mux4~0_combout\;
\U7|ALT_INV_Mux1~3_combout\ <= NOT \U7|Mux1~3_combout\;
\U7|ALT_INV_Mux1~2_combout\ <= NOT \U7|Mux1~2_combout\;
\U7|ALT_INV_Mux1~1_combout\ <= NOT \U7|Mux1~1_combout\;
\U7|ALT_INV_Mux1~0_combout\ <= NOT \U7|Mux1~0_combout\;
\U9|ALT_INV_Mux16~6_combout\ <= NOT \U9|Mux16~6_combout\;
\U7|ALT_INV_Mux2~2_combout\ <= NOT \U7|Mux2~2_combout\;
\U7|ALT_INV_Mux2~1_combout\ <= NOT \U7|Mux2~1_combout\;
\U7|ALT_INV_Mux2~0_combout\ <= NOT \U7|Mux2~0_combout\;
\U7|ALT_INV_Mux3~5_combout\ <= NOT \U7|Mux3~5_combout\;
\U7|ALT_INV_Mux3~4_combout\ <= NOT \U7|Mux3~4_combout\;
\U7|ALT_INV_Mux3~3_combout\ <= NOT \U7|Mux3~3_combout\;
\U7|ALT_INV_Mux3~2_combout\ <= NOT \U7|Mux3~2_combout\;
\U7|ALT_INV_Mux3~1_combout\ <= NOT \U7|Mux3~1_combout\;
\U7|ALT_INV_Mux3~0_combout\ <= NOT \U7|Mux3~0_combout\;
\U7|ALT_INV_display_counter\(2) <= NOT \U7|display_counter\(2);
\U7|ALT_INV_display_counter\(1) <= NOT \U7|display_counter\(1);
\U7|ALT_INV_display_counter\(0) <= NOT \U7|display_counter\(0);
\U9|ALT_INV_Mux0~1_combout\ <= NOT \U9|Mux0~1_combout\;
\U9|ALT_INV_Mux1~0_combout\ <= NOT \U9|Mux1~0_combout\;
\U9|ALT_INV_Mux2~0_combout\ <= NOT \U9|Mux2~0_combout\;
\U9|ALT_INV_Mux4~0_combout\ <= NOT \U9|Mux4~0_combout\;
\U9|ALT_INV_Mux16~5_combout\ <= NOT \U9|Mux16~5_combout\;
\U9|ALT_INV_Mux9~2_combout\ <= NOT \U9|Mux9~2_combout\;
\U9|ALT_INV_Mux9~1_combout\ <= NOT \U9|Mux9~1_combout\;
\U9|ALT_INV_Mux9~0_combout\ <= NOT \U9|Mux9~0_combout\;
\U9|ALT_INV_Mux10~3_combout\ <= NOT \U9|Mux10~3_combout\;
\U9|ALT_INV_Mux10~2_combout\ <= NOT \U9|Mux10~2_combout\;
\U9|U3|ALT_INV_Add6~6_combout\ <= NOT \U9|U3|Add6~6_combout\;
\U9|U3|ALT_INV_temp~5_combout\ <= NOT \U9|U3|temp~5_combout\;
\U9|U1|ALT_INV_temp~5_combout\ <= NOT \U9|U1|temp~5_combout\;
\U9|U3|ALT_INV_Add6~5_combout\ <= NOT \U9|U3|Add6~5_combout\;
\U9|U3|ALT_INV_Add6~4_combout\ <= NOT \U9|U3|Add6~4_combout\;
\U9|U3|ALT_INV_Add6~3_combout\ <= NOT \U9|U3|Add6~3_combout\;
\U9|ALT_INV_Mux11~1_combout\ <= NOT \U9|Mux11~1_combout\;
\U9|ALT_INV_Mux11~0_combout\ <= NOT \U9|Mux11~0_combout\;
\U9|U3|ALT_INV_Add6~2_combout\ <= NOT \U9|U3|Add6~2_combout\;
\U9|U3|ALT_INV_temp~4_combout\ <= NOT \U9|U3|temp~4_combout\;
\U9|U1|ALT_INV_temp~4_combout\ <= NOT \U9|U1|temp~4_combout\;
\U9|U2|ALT_INV_temp~0_combout\ <= NOT \U9|U2|temp~0_combout\;
\U9|ALT_INV_Mux12~0_combout\ <= NOT \U9|Mux12~0_combout\;
\U9|ALT_INV_Mux10~1_combout\ <= NOT \U9|Mux10~1_combout\;
\U9|U3|ALT_INV_Add6~1_combout\ <= NOT \U9|U3|Add6~1_combout\;
\U9|U3|ALT_INV_temp~3_combout\ <= NOT \U9|U3|temp~3_combout\;
\U9|U1|ALT_INV_temp~3_combout\ <= NOT \U9|U1|temp~3_combout\;
\U9|ALT_INV_Mux10~0_combout\ <= NOT \U9|Mux10~0_combout\;
\U9|U3|ALT_INV_LessThan6~0_combout\ <= NOT \U9|U3|LessThan6~0_combout\;
\U9|U1|ALT_INV_LessThan6~0_combout\ <= NOT \U9|U1|LessThan6~0_combout\;
\U9|U3|ALT_INV_Add6~0_combout\ <= NOT \U9|U3|Add6~0_combout\;
\U9|U3|ALT_INV_temp~2_combout\ <= NOT \U9|U3|temp~2_combout\;
\U9|U1|ALT_INV_temp~2_combout\ <= NOT \U9|U1|temp~2_combout\;
\U9|ALT_INV_Mux13~0_combout\ <= NOT \U9|Mux13~0_combout\;
\U9|U3|ALT_INV_bcd_out[5]~1_combout\ <= NOT \U9|U3|bcd_out[5]~1_combout\;
\U9|U1|ALT_INV_bcd_out[5]~1_combout\ <= NOT \U9|U1|bcd_out[5]~1_combout\;
\U9|ALT_INV_Mux14~0_combout\ <= NOT \U9|Mux14~0_combout\;
\U9|U3|ALT_INV_Add5~5_combout\ <= NOT \U9|U3|Add5~5_combout\;
\U9|U3|ALT_INV_Add5~4_combout\ <= NOT \U9|U3|Add5~4_combout\;
\U9|ALT_INV_Mux15~2_combout\ <= NOT \U9|Mux15~2_combout\;
\U9|ALT_INV_Mux15~1_combout\ <= NOT \U9|Mux15~1_combout\;
\U9|ALT_INV_Mux15~0_combout\ <= NOT \U9|Mux15~0_combout\;
\U9|U3|ALT_INV_Add5~3_combout\ <= NOT \U9|U3|Add5~3_combout\;
\U9|U3|ALT_INV_Add5~2_combout\ <= NOT \U9|U3|Add5~2_combout\;
\U9|ALT_INV_Mux0~0_combout\ <= NOT \U9|Mux0~0_combout\;
\U9|ALT_INV_Mux16~3_combout\ <= NOT \U9|Mux16~3_combout\;
\U9|ALT_INV_Mux16~2_combout\ <= NOT \U9|Mux16~2_combout\;
\U9|U3|ALT_INV_Add5~1_combout\ <= NOT \U9|U3|Add5~1_combout\;
\U9|U3|ALT_INV_Add5~0_combout\ <= NOT \U9|U3|Add5~0_combout\;
\U9|ALT_INV_Mux16~1_combout\ <= NOT \U9|Mux16~1_combout\;
\U9|U3|ALT_INV_LessThan5~1_combout\ <= NOT \U9|U3|LessThan5~1_combout\;
\U9|U1|ALT_INV_LessThan5~1_combout\ <= NOT \U9|U1|LessThan5~1_combout\;
\U9|ALT_INV_Mux17~0_combout\ <= NOT \U9|Mux17~0_combout\;
\U9|U3|ALT_INV_bcd_out[1]~0_combout\ <= NOT \U9|U3|bcd_out[1]~0_combout\;
\U9|U3|ALT_INV_LessThan5~0_combout\ <= NOT \U9|U3|LessThan5~0_combout\;
\U9|U3|ALT_INV_temp~1_combout\ <= NOT \U9|U3|temp~1_combout\;
\U9|U3|ALT_INV_temp~0_combout\ <= NOT \U9|U3|temp~0_combout\;
\U8|ALT_INV_valor_armazenado\(6) <= NOT \U8|valor_armazenado\(6);
\U8|ALT_INV_valor_armazenado\(7) <= NOT \U8|valor_armazenado\(7);
\U8|ALT_INV_valor_armazenado\(5) <= NOT \U8|valor_armazenado\(5);
\U8|ALT_INV_valor_armazenado\(4) <= NOT \U8|valor_armazenado\(4);
\U8|ALT_INV_valor_armazenado\(3) <= NOT \U8|valor_armazenado\(3);
\U8|ALT_INV_valor_armazenado\(2) <= NOT \U8|valor_armazenado\(2);
\U8|ALT_INV_valor_armazenado\(1) <= NOT \U8|valor_armazenado\(1);
\U9|U1|ALT_INV_bcd_out[1]~0_combout\ <= NOT \U9|U1|bcd_out[1]~0_combout\;
\U9|U1|ALT_INV_LessThan5~0_combout\ <= NOT \U9|U1|LessThan5~0_combout\;
\U9|U1|ALT_INV_temp~1_combout\ <= NOT \U9|U1|temp~1_combout\;
\U9|U1|ALT_INV_temp~0_combout\ <= NOT \U9|U1|temp~0_combout\;
\U5|ALT_INV_valor_armazenado\(6) <= NOT \U5|valor_armazenado\(6);
\U5|ALT_INV_valor_armazenado\(7) <= NOT \U5|valor_armazenado\(7);
\U5|ALT_INV_valor_armazenado\(5) <= NOT \U5|valor_armazenado\(5);
\U5|ALT_INV_valor_armazenado\(4) <= NOT \U5|valor_armazenado\(4);
\U5|ALT_INV_valor_armazenado\(3) <= NOT \U5|valor_armazenado\(3);
\U5|ALT_INV_valor_armazenado\(2) <= NOT \U5|valor_armazenado\(2);
\U5|ALT_INV_valor_armazenado\(1) <= NOT \U5|valor_armazenado\(1);
\U4|ALT_INV_Mux5~0_combout\ <= NOT \U4|Mux5~0_combout\;
\U4|ALT_INV_Mux4~0_combout\ <= NOT \U4|Mux4~0_combout\;
\U4|ALT_INV_Mux3~0_combout\ <= NOT \U4|Mux3~0_combout\;
\U4|ALT_INV_Mux0~0_combout\ <= NOT \U4|Mux0~0_combout\;
\U4|ALT_INV_Mux1~0_combout\ <= NOT \U4|Mux1~0_combout\;
\U4|ALT_INV_Mux2~0_combout\ <= NOT \U4|Mux2~0_combout\;
\U4|ALT_INV_Mux6~0_combout\ <= NOT \U4|Mux6~0_combout\;
\U9|ALT_INV_Mux16~0_combout\ <= NOT \U9|Mux16~0_combout\;
\U7|ALT_INV_display_counter[1]~DUPLICATE_q\ <= NOT \U7|display_counter[1]~DUPLICATE_q\;
\ALT_INV_coin_value[3]~input_o\ <= NOT \coin_value[3]~input_o\;
\ALT_INV_coin_value[2]~input_o\ <= NOT \coin_value[2]~input_o\;
\ALT_INV_coin_value[1]~input_o\ <= NOT \coin_value[1]~input_o\;
\ALT_INV_coin_value[0]~input_o\ <= NOT \coin_value[0]~input_o\;
\ALT_INV_clear_troco~input_o\ <= NOT \clear_troco~input_o\;
\ALT_INV_clear_acumulador~input_o\ <= NOT \clear_acumulador~input_o\;
\ALT_INV_estado_fsm[1]~input_o\ <= NOT \estado_fsm[1]~input_o\;
\ALT_INV_estado_fsm[0]~input_o\ <= NOT \estado_fsm[0]~input_o\;
\ALT_INV_estado_fsm[2]~input_o\ <= NOT \estado_fsm[2]~input_o\;
\ALT_INV_product_selection[3]~input_o\ <= NOT \product_selection[3]~input_o\;
\ALT_INV_product_selection[2]~input_o\ <= NOT \product_selection[2]~input_o\;
\ALT_INV_product_selection[1]~input_o\ <= NOT \product_selection[1]~input_o\;
\ALT_INV_product_selection[0]~input_o\ <= NOT \product_selection[0]~input_o\;
\U9|U2|ALT_INV_temp~7_combout\ <= NOT \U9|U2|temp~7_combout\;
\U9|U2|ALT_INV_temp~6_combout\ <= NOT \U9|U2|temp~6_combout\;
\U9|ALT_INV_Mux17~2_combout\ <= NOT \U9|Mux17~2_combout\;
\U9|ALT_INV_Mux16~7_combout\ <= NOT \U9|Mux16~7_combout\;
\U9|U2|ALT_INV_temp~5_combout\ <= NOT \U9|U2|temp~5_combout\;
\U9|U2|ALT_INV_temp~4_combout\ <= NOT \U9|U2|temp~4_combout\;
\U9|U2|ALT_INV_bcd_out[5]~0_combout\ <= NOT \U9|U2|bcd_out[5]~0_combout\;
\U9|U2|ALT_INV_temp~3_combout\ <= NOT \U9|U2|temp~3_combout\;
\U9|U2|ALT_INV_LessThan6~0_combout\ <= NOT \U9|U2|LessThan6~0_combout\;

-- Location: IOOBUF_X62_Y0_N53
\valor_displays[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|Mux18~2_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(0));

-- Location: IOOBUF_X62_Y0_N19
\valor_displays[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|Mux17~1_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(1));

-- Location: IOOBUF_X52_Y0_N19
\valor_displays[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|Mux16~4_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(2));

-- Location: IOOBUF_X66_Y0_N76
\valor_displays[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|Mux15~2_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(3));

-- Location: IOOBUF_X66_Y0_N42
\valor_displays[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|Mux14~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(4));

-- Location: IOOBUF_X64_Y0_N19
\valor_displays[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(5));

-- Location: IOOBUF_X56_Y0_N2
\valor_displays[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|Mux12~1_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(6));

-- Location: IOOBUF_X64_Y0_N2
\valor_displays[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|Mux11~1_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(7));

-- Location: IOOBUF_X64_Y0_N53
\valor_displays[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|Mux10~3_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(8));

-- Location: IOOBUF_X72_Y0_N19
\valor_displays[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|Mux9~3_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(9));

-- Location: IOOBUF_X74_Y81_N76
\valor_displays[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_valor_displays(10));

-- Location: IOOBUF_X70_Y81_N53
\valor_displays[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_valor_displays(11));

-- Location: IOOBUF_X70_Y81_N19
\valor_displays[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_valor_displays(12));

-- Location: IOOBUF_X52_Y0_N2
\valor_displays[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_valor_displays(13));

-- Location: IOOBUF_X60_Y81_N2
\valor_displays[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_valor_displays(14));

-- Location: IOOBUF_X8_Y0_N19
\valor_displays[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_valor_displays(15));

-- Location: IOOBUF_X56_Y0_N19
\valor_displays[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|Mux16~5_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(16));

-- Location: IOOBUF_X58_Y0_N42
\valor_displays[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(17));

-- Location: IOOBUF_X68_Y0_N36
\valor_displays[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(18));

-- Location: IOOBUF_X56_Y0_N36
\valor_displays[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|Mux16~5_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(19));

-- Location: IOOBUF_X62_Y0_N36
\valor_displays[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(20));

-- Location: IOOBUF_X68_Y0_N53
\valor_displays[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_estado_fsm[1]~input_o\,
	devoe => ww_devoe,
	o => ww_valor_displays(21));

-- Location: IOOBUF_X64_Y0_N36
\valor_displays[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(22));

-- Location: IOOBUF_X58_Y0_N59
\valor_displays[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|ALT_INV_Mux0~1_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(23));

-- Location: IOOBUF_X58_Y0_N93
\display_segments[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_display_segments(0));

-- Location: IOOBUF_X60_Y0_N2
\display_segments[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_display_segments(1));

-- Location: IOOBUF_X58_Y0_N76
\display_segments[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_display_segments(2));

-- Location: IOOBUF_X54_Y0_N2
\display_segments[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_display_segments(3));

-- Location: IOOBUF_X60_Y0_N36
\display_segments[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_display_segments(4));

-- Location: IOOBUF_X60_Y0_N19
\display_segments[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_display_segments(5));

-- Location: IOOBUF_X60_Y0_N53
\display_segments[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_display_segments(6));

-- Location: IOOBUF_X62_Y0_N2
\display_anodes[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_display_anodes(0));

-- Location: IOOBUF_X56_Y0_N53
\display_anodes[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|ALT_INV_Mux3~3_combout\,
	devoe => ww_devoe,
	o => ww_display_anodes(1));

-- Location: IOOBUF_X52_Y0_N53
\display_anodes[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|Mux14~0_combout\,
	devoe => ww_devoe,
	o => ww_display_anodes(2));

-- Location: IOOBUF_X54_Y0_N36
\display_anodes[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_display_anodes(3));

-- Location: IOOBUF_X54_Y0_N53
\display_anodes[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_display_anodes(4));

-- Location: IOOBUF_X54_Y0_N19
\display_anodes[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|ALT_INV_Mux12~1_combout\,
	devoe => ww_devoe,
	o => ww_display_anodes(5));

-- Location: IOOBUF_X89_Y6_N39
\tem_troco~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|LessThan0~4_combout\,
	devoe => ww_devoe,
	o => ww_tem_troco);

-- Location: IOIBUF_X68_Y0_N1
\estado_fsm[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estado_fsm(1),
	o => \estado_fsm[1]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X70_Y0_N18
\product_selection[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_selection(0),
	o => \product_selection[0]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\product_selection[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_selection(2),
	o => \product_selection[2]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\product_selection[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_selection(1),
	o => \product_selection[1]~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\product_selection[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_selection(3),
	o => \product_selection[3]~input_o\);

-- Location: MLABCELL_X72_Y3_N0
\U4|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|Mux7~0_combout\ = ( \product_selection[3]~input_o\ & ( (!\product_selection[1]~input_o\ & ((\product_selection[2]~input_o\))) # (\product_selection[1]~input_o\ & (!\product_selection[0]~input_o\)) ) ) # ( !\product_selection[3]~input_o\ & ( 
-- (!\product_selection[2]~input_o\ & ((\product_selection[1]~input_o\))) # (\product_selection[2]~input_o\ & ((!\product_selection[0]~input_o\) # (!\product_selection[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111000111110001110100011101000111110001111100011101000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datab => \ALT_INV_product_selection[2]~input_o\,
	datac => \ALT_INV_product_selection[1]~input_o\,
	datae => \ALT_INV_product_selection[3]~input_o\,
	combout => \U4|Mux7~0_combout\);

-- Location: IOIBUF_X89_Y4_N44
\coin_value[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_value(0),
	o => \coin_value[0]~input_o\);

-- Location: LABCELL_X75_Y3_N0
\U1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~1_sumout\ = SUM(( \U5|valor_armazenado\(0) ) + ( \coin_value[0]~input_o\ ) + ( !VCC ))
-- \U1|Add0~2\ = CARRY(( \U5|valor_armazenado\(0) ) + ( \coin_value[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_coin_value[0]~input_o\,
	datad => \U5|ALT_INV_valor_armazenado\(0),
	cin => GND,
	sumout => \U1|Add0~1_sumout\,
	cout => \U1|Add0~2\);

-- Location: IOIBUF_X89_Y4_N78
\clear_acumulador~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear_acumulador,
	o => \clear_acumulador~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\load_acumulador~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_acumulador,
	o => \load_acumulador~input_o\);

-- Location: FF_X75_Y3_N2
\U5|valor_armazenado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|Add0~1_sumout\,
	clrn => \ALT_INV_clear_acumulador~input_o\,
	ena => \load_acumulador~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|valor_armazenado\(0));

-- Location: LABCELL_X74_Y3_N30
\U6|troco[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|troco[0]~1_sumout\ = SUM(( !\U4|Mux7~0_combout\ $ (!\U5|valor_armazenado\(0)) ) + ( !VCC ) + ( !VCC ))
-- \U6|troco[0]~2\ = CARRY(( !\U4|Mux7~0_combout\ $ (!\U5|valor_armazenado\(0)) ) + ( !VCC ) + ( !VCC ))
-- \U6|troco[0]~3\ = SHARE((!\U4|Mux7~0_combout\) # (\U5|valor_armazenado\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \U4|ALT_INV_Mux7~0_combout\,
	datad => \U5|ALT_INV_valor_armazenado\(0),
	cin => GND,
	sharein => GND,
	sumout => \U6|troco[0]~1_sumout\,
	cout => \U6|troco[0]~2\,
	shareout => \U6|troco[0]~3\);

-- Location: IOIBUF_X68_Y0_N18
\clear_troco~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear_troco,
	o => \clear_troco~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\load_troco~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_troco,
	o => \load_troco~input_o\);

-- Location: FF_X74_Y3_N31
\U8|valor_armazenado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U6|troco[0]~1_sumout\,
	clrn => \ALT_INV_clear_troco~input_o\,
	ena => \load_troco~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|valor_armazenado\(0));

-- Location: IOIBUF_X66_Y0_N58
\estado_fsm[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estado_fsm(0),
	o => \estado_fsm[0]~input_o\);

-- Location: LABCELL_X70_Y3_N0
\U9|Mux18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux18~1_combout\ = ( \U5|valor_armazenado\(0) & ( \product_selection[0]~input_o\ & ( (!\estado_fsm[1]~input_o\) # ((\estado_fsm[0]~input_o\) # (\U8|valor_armazenado\(0))) ) ) ) # ( !\U5|valor_armazenado\(0) & ( \product_selection[0]~input_o\ & ( 
-- (\estado_fsm[1]~input_o\ & ((\estado_fsm[0]~input_o\) # (\U8|valor_armazenado\(0)))) ) ) ) # ( \U5|valor_armazenado\(0) & ( !\product_selection[0]~input_o\ & ( (!\estado_fsm[1]~input_o\) # ((\U8|valor_armazenado\(0) & !\estado_fsm[0]~input_o\)) ) ) ) # ( 
-- !\U5|valor_armazenado\(0) & ( !\product_selection[0]~input_o\ & ( (\estado_fsm[1]~input_o\ & (\U8|valor_armazenado\(0) & !\estado_fsm[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000101110101011101000010101000101011011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[1]~input_o\,
	datab => \U8|ALT_INV_valor_armazenado\(0),
	datac => \ALT_INV_estado_fsm[0]~input_o\,
	datae => \U5|ALT_INV_valor_armazenado\(0),
	dataf => \ALT_INV_product_selection[0]~input_o\,
	combout => \U9|Mux18~1_combout\);

-- Location: LABCELL_X68_Y3_N15
\U9|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux18~0_combout\ = ( !\estado_fsm[0]~input_o\ & ( \estado_fsm[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado_fsm[1]~input_o\,
	dataf => \ALT_INV_estado_fsm[0]~input_o\,
	combout => \U9|Mux18~0_combout\);

-- Location: IOIBUF_X66_Y0_N92
\estado_fsm[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estado_fsm(2),
	o => \estado_fsm[2]~input_o\);

-- Location: LABCELL_X67_Y3_N15
\U9|Mux18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux18~2_combout\ = ( \estado_fsm[2]~input_o\ & ( (\U4|Mux7~0_combout\ & \U9|Mux18~0_combout\) ) ) # ( !\estado_fsm[2]~input_o\ & ( \U9|Mux18~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U9|ALT_INV_Mux18~1_combout\,
	datab => \U4|ALT_INV_Mux7~0_combout\,
	datad => \U9|ALT_INV_Mux18~0_combout\,
	dataf => \ALT_INV_estado_fsm[2]~input_o\,
	combout => \U9|Mux18~2_combout\);

-- Location: MLABCELL_X72_Y3_N21
\U4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|Mux6~0_combout\ = ( \product_selection[1]~input_o\ & ( (!\product_selection[3]~input_o\) # (\product_selection[0]~input_o\) ) ) # ( !\product_selection[1]~input_o\ & ( !\product_selection[2]~input_o\ $ (((!\product_selection[0]~input_o\) # 
-- (\product_selection[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001101100011011000110110001111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datab => \ALT_INV_product_selection[2]~input_o\,
	datac => \ALT_INV_product_selection[3]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \U4|Mux6~0_combout\);

-- Location: IOIBUF_X72_Y0_N1
\coin_value[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_value(1),
	o => \coin_value[1]~input_o\);

-- Location: LABCELL_X75_Y3_N3
\U1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~5_sumout\ = SUM(( \U5|valor_armazenado\(1) ) + ( \coin_value[1]~input_o\ ) + ( \U1|Add0~2\ ))
-- \U1|Add0~6\ = CARRY(( \U5|valor_armazenado\(1) ) + ( \coin_value[1]~input_o\ ) + ( \U1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_coin_value[1]~input_o\,
	datad => \U5|ALT_INV_valor_armazenado\(1),
	cin => \U1|Add0~2\,
	sumout => \U1|Add0~5_sumout\,
	cout => \U1|Add0~6\);

-- Location: FF_X75_Y3_N5
\U5|valor_armazenado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|Add0~5_sumout\,
	clrn => \ALT_INV_clear_acumulador~input_o\,
	ena => \load_acumulador~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|valor_armazenado\(1));

-- Location: LABCELL_X74_Y3_N33
\U6|troco[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|troco[1]~5_sumout\ = SUM(( !\U4|Mux6~0_combout\ $ (\U5|valor_armazenado\(1)) ) + ( \U6|troco[0]~3\ ) + ( \U6|troco[0]~2\ ))
-- \U6|troco[1]~6\ = CARRY(( !\U4|Mux6~0_combout\ $ (\U5|valor_armazenado\(1)) ) + ( \U6|troco[0]~3\ ) + ( \U6|troco[0]~2\ ))
-- \U6|troco[1]~7\ = SHARE((!\U4|Mux6~0_combout\ & \U5|valor_armazenado\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \U4|ALT_INV_Mux6~0_combout\,
	datad => \U5|ALT_INV_valor_armazenado\(1),
	cin => \U6|troco[0]~2\,
	sharein => \U6|troco[0]~3\,
	sumout => \U6|troco[1]~5_sumout\,
	cout => \U6|troco[1]~6\,
	shareout => \U6|troco[1]~7\);

-- Location: FF_X74_Y3_N35
\U8|valor_armazenado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U6|troco[1]~5_sumout\,
	clrn => \ALT_INV_clear_troco~input_o\,
	ena => \load_troco~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|valor_armazenado\(1));

-- Location: MLABCELL_X72_Y3_N36
\U4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|Mux2~0_combout\ = ( \product_selection[1]~input_o\ & ( (\product_selection[3]~input_o\ & ((!\product_selection[0]~input_o\) # (\product_selection[2]~input_o\))) ) ) # ( !\product_selection[1]~input_o\ & ( ((!\product_selection[0]~input_o\ & 
-- \product_selection[3]~input_o\)) # (\product_selection[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110111011001100111011101100000000101110110000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datab => \ALT_INV_product_selection[2]~input_o\,
	datad => \ALT_INV_product_selection[3]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \U4|Mux2~0_combout\);

-- Location: IOIBUF_X72_Y0_N35
\coin_value[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_value(3),
	o => \coin_value[3]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\coin_value[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_value(2),
	o => \coin_value[2]~input_o\);

-- Location: LABCELL_X75_Y3_N6
\U1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~9_sumout\ = SUM(( \U5|valor_armazenado\(2) ) + ( \coin_value[2]~input_o\ ) + ( \U1|Add0~6\ ))
-- \U1|Add0~10\ = CARRY(( \U5|valor_armazenado\(2) ) + ( \coin_value[2]~input_o\ ) + ( \U1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_coin_value[2]~input_o\,
	datad => \U5|ALT_INV_valor_armazenado\(2),
	cin => \U1|Add0~6\,
	sumout => \U1|Add0~9_sumout\,
	cout => \U1|Add0~10\);

-- Location: FF_X75_Y3_N8
\U5|valor_armazenado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|Add0~9_sumout\,
	clrn => \ALT_INV_clear_acumulador~input_o\,
	ena => \load_acumulador~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|valor_armazenado\(2));

-- Location: LABCELL_X75_Y3_N9
\U1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~13_sumout\ = SUM(( \U5|valor_armazenado\(3) ) + ( \coin_value[3]~input_o\ ) + ( \U1|Add0~10\ ))
-- \U1|Add0~14\ = CARRY(( \U5|valor_armazenado\(3) ) + ( \coin_value[3]~input_o\ ) + ( \U1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_coin_value[3]~input_o\,
	datad => \U5|ALT_INV_valor_armazenado\(3),
	cin => \U1|Add0~10\,
	sumout => \U1|Add0~13_sumout\,
	cout => \U1|Add0~14\);

-- Location: FF_X75_Y3_N11
\U5|valor_armazenado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|Add0~13_sumout\,
	clrn => \ALT_INV_clear_acumulador~input_o\,
	ena => \load_acumulador~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|valor_armazenado\(3));

-- Location: LABCELL_X75_Y3_N12
\U1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~17_sumout\ = SUM(( \U5|valor_armazenado\(4) ) + ( GND ) + ( \U1|Add0~14\ ))
-- \U1|Add0~18\ = CARRY(( \U5|valor_armazenado\(4) ) + ( GND ) + ( \U1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U5|ALT_INV_valor_armazenado\(4),
	cin => \U1|Add0~14\,
	sumout => \U1|Add0~17_sumout\,
	cout => \U1|Add0~18\);

-- Location: FF_X75_Y3_N14
\U5|valor_armazenado[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|Add0~17_sumout\,
	clrn => \ALT_INV_clear_acumulador~input_o\,
	ena => \load_acumulador~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|valor_armazenado\(4));

-- Location: LABCELL_X75_Y3_N15
\U1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~21_sumout\ = SUM(( \U5|valor_armazenado\(5) ) + ( GND ) + ( \U1|Add0~18\ ))
-- \U1|Add0~22\ = CARRY(( \U5|valor_armazenado\(5) ) + ( GND ) + ( \U1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U5|ALT_INV_valor_armazenado\(5),
	cin => \U1|Add0~18\,
	sumout => \U1|Add0~21_sumout\,
	cout => \U1|Add0~22\);

-- Location: FF_X75_Y3_N17
\U5|valor_armazenado[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|Add0~21_sumout\,
	clrn => \ALT_INV_clear_acumulador~input_o\,
	ena => \load_acumulador~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|valor_armazenado\(5));

-- Location: MLABCELL_X72_Y3_N45
\U4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|Mux3~0_combout\ = ( \product_selection[1]~input_o\ & ( (!\product_selection[0]~input_o\ & (!\product_selection[2]~input_o\ & \product_selection[3]~input_o\)) ) ) # ( !\product_selection[1]~input_o\ & ( (!\product_selection[0]~input_o\ & 
-- ((\product_selection[3]~input_o\))) # (\product_selection[0]~input_o\ & (\product_selection[2]~input_o\ & !\product_selection[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101000011010000110100001101000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datab => \ALT_INV_product_selection[2]~input_o\,
	datac => \ALT_INV_product_selection[3]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \U4|Mux3~0_combout\);

-- Location: MLABCELL_X72_Y3_N24
\U4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|Mux4~0_combout\ = ( \product_selection[1]~input_o\ & ( !\product_selection[0]~input_o\ $ (!\product_selection[2]~input_o\) ) ) # ( !\product_selection[1]~input_o\ & ( (!\product_selection[3]~input_o\ & (\product_selection[0]~input_o\)) # 
-- (\product_selection[3]~input_o\ & ((!\product_selection[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111001100010101011100110001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datab => \ALT_INV_product_selection[2]~input_o\,
	datad => \ALT_INV_product_selection[3]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \U4|Mux4~0_combout\);

-- Location: MLABCELL_X72_Y3_N54
\U4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|Mux5~0_combout\ = ( \product_selection[1]~input_o\ & ( (!\product_selection[0]~input_o\ & (!\product_selection[2]~input_o\ & \product_selection[3]~input_o\)) # (\product_selection[0]~input_o\ & (\product_selection[2]~input_o\)) ) ) # ( 
-- !\product_selection[1]~input_o\ & ( ((!\product_selection[0]~input_o\ & \product_selection[3]~input_o\)) # (\product_selection[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110111011001100111011101100010001100110010001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datab => \ALT_INV_product_selection[2]~input_o\,
	datad => \ALT_INV_product_selection[3]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \U4|Mux5~0_combout\);

-- Location: LABCELL_X74_Y3_N36
\U6|troco[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|troco[2]~9_sumout\ = SUM(( !\U4|Mux5~0_combout\ $ (\U5|valor_armazenado\(2)) ) + ( \U6|troco[1]~7\ ) + ( \U6|troco[1]~6\ ))
-- \U6|troco[2]~10\ = CARRY(( !\U4|Mux5~0_combout\ $ (\U5|valor_armazenado\(2)) ) + ( \U6|troco[1]~7\ ) + ( \U6|troco[1]~6\ ))
-- \U6|troco[2]~11\ = SHARE((!\U4|Mux5~0_combout\ & \U5|valor_armazenado\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \U4|ALT_INV_Mux5~0_combout\,
	datad => \U5|ALT_INV_valor_armazenado\(2),
	cin => \U6|troco[1]~6\,
	sharein => \U6|troco[1]~7\,
	sumout => \U6|troco[2]~9_sumout\,
	cout => \U6|troco[2]~10\,
	shareout => \U6|troco[2]~11\);

-- Location: LABCELL_X74_Y3_N39
\U6|troco[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|troco[3]~13_sumout\ = SUM(( !\U4|Mux4~0_combout\ $ (\U5|valor_armazenado\(3)) ) + ( \U6|troco[2]~11\ ) + ( \U6|troco[2]~10\ ))
-- \U6|troco[3]~14\ = CARRY(( !\U4|Mux4~0_combout\ $ (\U5|valor_armazenado\(3)) ) + ( \U6|troco[2]~11\ ) + ( \U6|troco[2]~10\ ))
-- \U6|troco[3]~15\ = SHARE((!\U4|Mux4~0_combout\ & \U5|valor_armazenado\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \U4|ALT_INV_Mux4~0_combout\,
	datad => \U5|ALT_INV_valor_armazenado\(3),
	cin => \U6|troco[2]~10\,
	sharein => \U6|troco[2]~11\,
	sumout => \U6|troco[3]~13_sumout\,
	cout => \U6|troco[3]~14\,
	shareout => \U6|troco[3]~15\);

-- Location: LABCELL_X74_Y3_N42
\U6|troco[4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|troco[4]~17_sumout\ = SUM(( !\U5|valor_armazenado\(4) $ (\U4|Mux3~0_combout\) ) + ( \U6|troco[3]~15\ ) + ( \U6|troco[3]~14\ ))
-- \U6|troco[4]~18\ = CARRY(( !\U5|valor_armazenado\(4) $ (\U4|Mux3~0_combout\) ) + ( \U6|troco[3]~15\ ) + ( \U6|troco[3]~14\ ))
-- \U6|troco[4]~19\ = SHARE((\U5|valor_armazenado\(4) & !\U4|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \U5|ALT_INV_valor_armazenado\(4),
	datac => \U4|ALT_INV_Mux3~0_combout\,
	cin => \U6|troco[3]~14\,
	sharein => \U6|troco[3]~15\,
	sumout => \U6|troco[4]~17_sumout\,
	cout => \U6|troco[4]~18\,
	shareout => \U6|troco[4]~19\);

-- Location: LABCELL_X74_Y3_N45
\U6|troco[5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|troco[5]~21_sumout\ = SUM(( !\U4|Mux2~0_combout\ $ (\U5|valor_armazenado\(5)) ) + ( \U6|troco[4]~19\ ) + ( \U6|troco[4]~18\ ))
-- \U6|troco[5]~22\ = CARRY(( !\U4|Mux2~0_combout\ $ (\U5|valor_armazenado\(5)) ) + ( \U6|troco[4]~19\ ) + ( \U6|troco[4]~18\ ))
-- \U6|troco[5]~23\ = SHARE((!\U4|Mux2~0_combout\ & \U5|valor_armazenado\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \U4|ALT_INV_Mux2~0_combout\,
	datad => \U5|ALT_INV_valor_armazenado\(5),
	cin => \U6|troco[4]~18\,
	sharein => \U6|troco[4]~19\,
	sumout => \U6|troco[5]~21_sumout\,
	cout => \U6|troco[5]~22\,
	shareout => \U6|troco[5]~23\);

-- Location: FF_X74_Y3_N47
\U8|valor_armazenado[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U6|troco[5]~21_sumout\,
	clrn => \ALT_INV_clear_troco~input_o\,
	ena => \load_troco~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|valor_armazenado\(5));

-- Location: MLABCELL_X72_Y3_N42
\U4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|Mux0~0_combout\ = ( \product_selection[1]~input_o\ & ( (!\product_selection[3]~input_o\ & ((\product_selection[2]~input_o\) # (\product_selection[0]~input_o\))) ) ) # ( !\product_selection[1]~input_o\ & ( (!\product_selection[2]~input_o\ & 
-- (\product_selection[0]~input_o\ & \product_selection[3]~input_o\)) # (\product_selection[2]~input_o\ & ((!\product_selection[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101000100001100110100010001110111000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datab => \ALT_INV_product_selection[2]~input_o\,
	datad => \ALT_INV_product_selection[3]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \U4|Mux0~0_combout\);

-- Location: LABCELL_X75_Y3_N18
\U1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~29_sumout\ = SUM(( \U5|valor_armazenado\(6) ) + ( GND ) + ( \U1|Add0~22\ ))
-- \U1|Add0~30\ = CARRY(( \U5|valor_armazenado\(6) ) + ( GND ) + ( \U1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U5|ALT_INV_valor_armazenado\(6),
	cin => \U1|Add0~22\,
	sumout => \U1|Add0~29_sumout\,
	cout => \U1|Add0~30\);

-- Location: FF_X75_Y3_N20
\U5|valor_armazenado[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|Add0~29_sumout\,
	clrn => \ALT_INV_clear_acumulador~input_o\,
	ena => \load_acumulador~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|valor_armazenado\(6));

-- Location: LABCELL_X75_Y3_N21
\U1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~25_sumout\ = SUM(( \U5|valor_armazenado\(7) ) + ( GND ) + ( \U1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U5|ALT_INV_valor_armazenado\(7),
	cin => \U1|Add0~30\,
	sumout => \U1|Add0~25_sumout\);

-- Location: FF_X75_Y3_N23
\U5|valor_armazenado[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|Add0~25_sumout\,
	clrn => \ALT_INV_clear_acumulador~input_o\,
	ena => \load_acumulador~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|valor_armazenado\(7));

-- Location: MLABCELL_X72_Y3_N39
\U4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|Mux1~0_combout\ = ( \product_selection[1]~input_o\ & ( (!\product_selection[0]~input_o\ & (!\product_selection[2]~input_o\ $ (\product_selection[3]~input_o\))) # (\product_selection[0]~input_o\ & ((!\product_selection[2]~input_o\) # 
-- (!\product_selection[3]~input_o\))) ) ) # ( !\product_selection[1]~input_o\ & ( (!\product_selection[0]~input_o\ & ((\product_selection[3]~input_o\))) # (\product_selection[0]~input_o\ & (\product_selection[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101111010110110101101101011011010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datab => \ALT_INV_product_selection[2]~input_o\,
	datac => \ALT_INV_product_selection[3]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \U4|Mux1~0_combout\);

-- Location: LABCELL_X74_Y3_N48
\U6|troco[6]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|troco[6]~29_sumout\ = SUM(( !\U5|valor_armazenado\(6) $ (\U4|Mux1~0_combout\) ) + ( \U6|troco[5]~23\ ) + ( \U6|troco[5]~22\ ))
-- \U6|troco[6]~30\ = CARRY(( !\U5|valor_armazenado\(6) $ (\U4|Mux1~0_combout\) ) + ( \U6|troco[5]~23\ ) + ( \U6|troco[5]~22\ ))
-- \U6|troco[6]~31\ = SHARE((\U5|valor_armazenado\(6) & !\U4|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \U5|ALT_INV_valor_armazenado\(6),
	datac => \U4|ALT_INV_Mux1~0_combout\,
	cin => \U6|troco[5]~22\,
	sharein => \U6|troco[5]~23\,
	sumout => \U6|troco[6]~29_sumout\,
	cout => \U6|troco[6]~30\,
	shareout => \U6|troco[6]~31\);

-- Location: LABCELL_X74_Y3_N51
\U6|troco[7]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|troco[7]~25_sumout\ = SUM(( !\U4|Mux0~0_combout\ $ (\U5|valor_armazenado\(7)) ) + ( \U6|troco[6]~31\ ) + ( \U6|troco[6]~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ALT_INV_Mux0~0_combout\,
	datad => \U5|ALT_INV_valor_armazenado\(7),
	cin => \U6|troco[6]~30\,
	sharein => \U6|troco[6]~31\,
	sumout => \U6|troco[7]~25_sumout\);

-- Location: FF_X74_Y3_N53
\U8|valor_armazenado[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U6|troco[7]~25_sumout\,
	clrn => \ALT_INV_clear_troco~input_o\,
	ena => \load_troco~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|valor_armazenado\(7));

-- Location: FF_X74_Y3_N41
\U8|valor_armazenado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U6|troco[3]~13_sumout\,
	clrn => \ALT_INV_clear_troco~input_o\,
	ena => \load_troco~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|valor_armazenado\(3));

-- Location: FF_X74_Y3_N44
\U8|valor_armazenado[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U6|troco[4]~17_sumout\,
	clrn => \ALT_INV_clear_troco~input_o\,
	ena => \load_troco~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|valor_armazenado\(4));

-- Location: FF_X74_Y3_N50
\U8|valor_armazenado[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U6|troco[6]~29_sumout\,
	clrn => \ALT_INV_clear_troco~input_o\,
	ena => \load_troco~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|valor_armazenado\(6));

-- Location: FF_X74_Y3_N38
\U8|valor_armazenado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U6|troco[2]~9_sumout\,
	clrn => \ALT_INV_clear_troco~input_o\,
	ena => \load_troco~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|valor_armazenado\(2));

-- Location: LABCELL_X73_Y3_N36
\U9|U3|temp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|temp~1_combout\ = ( \U8|valor_armazenado\(6) & ( \U8|valor_armazenado\(2) & ( (!\U8|valor_armazenado\(5) & (!\U8|valor_armazenado\(4) $ (((!\U8|valor_armazenado\(7)) # (!\U8|valor_armazenado\(3)))))) # (\U8|valor_armazenado\(5) & 
-- (\U8|valor_armazenado\(4) & ((\U8|valor_armazenado\(3)) # (\U8|valor_armazenado\(7))))) ) ) ) # ( !\U8|valor_armazenado\(6) & ( \U8|valor_armazenado\(2) & ( (!\U8|valor_armazenado\(5) & (!\U8|valor_armazenado\(4) & ((!\U8|valor_armazenado\(7)) # 
-- (!\U8|valor_armazenado\(3))))) # (\U8|valor_armazenado\(5) & (!\U8|valor_armazenado\(4) $ (((!\U8|valor_armazenado\(7) & !\U8|valor_armazenado\(3)))))) ) ) ) # ( \U8|valor_armazenado\(6) & ( !\U8|valor_armazenado\(2) & ( (!\U8|valor_armazenado\(5) & 
-- (!\U8|valor_armazenado\(4) & ((!\U8|valor_armazenado\(7)) # (!\U8|valor_armazenado\(3))))) # (\U8|valor_armazenado\(5) & (!\U8|valor_armazenado\(4) $ (((!\U8|valor_armazenado\(7) & !\U8|valor_armazenado\(3)))))) ) ) ) # ( !\U8|valor_armazenado\(6) & ( 
-- !\U8|valor_armazenado\(2) & ( (!\U8|valor_armazenado\(5) & (\U8|valor_armazenado\(4) & ((\U8|valor_armazenado\(3)) # (\U8|valor_armazenado\(7))))) # (\U8|valor_armazenado\(5) & ((!\U8|valor_armazenado\(7) & (!\U8|valor_armazenado\(3) & 
-- !\U8|valor_armazenado\(4))) # (\U8|valor_armazenado\(7) & (\U8|valor_armazenado\(3) & \U8|valor_armazenado\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000101011101111010100000010111101010000000000001010111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U8|ALT_INV_valor_armazenado\(5),
	datab => \U8|ALT_INV_valor_armazenado\(7),
	datac => \U8|ALT_INV_valor_armazenado\(3),
	datad => \U8|ALT_INV_valor_armazenado\(4),
	datae => \U8|ALT_INV_valor_armazenado\(6),
	dataf => \U8|ALT_INV_valor_armazenado\(2),
	combout => \U9|U3|temp~1_combout\);

-- Location: LABCELL_X74_Y3_N0
\U9|U3|temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|temp~0_combout\ = ( \U8|valor_armazenado\(5) & ( \U8|valor_armazenado\(6) & ( (!\U8|valor_armazenado\(3) & ((!\U8|valor_armazenado\(2) & (!\U8|valor_armazenado\(7) & \U8|valor_armazenado\(4))) # (\U8|valor_armazenado\(2) & (\U8|valor_armazenado\(7) 
-- & !\U8|valor_armazenado\(4))))) # (\U8|valor_armazenado\(3) & (!\U8|valor_armazenado\(7) $ (((!\U8|valor_armazenado\(2)) # (\U8|valor_armazenado\(4)))))) ) ) ) # ( !\U8|valor_armazenado\(5) & ( \U8|valor_armazenado\(6) & ( (!\U8|valor_armazenado\(3) & 
-- (!\U8|valor_armazenado\(7) $ (((!\U8|valor_armazenado\(2)) # (\U8|valor_armazenado\(4)))))) # (\U8|valor_armazenado\(3) & (!\U8|valor_armazenado\(7) & ((!\U8|valor_armazenado\(2)) # (\U8|valor_armazenado\(4))))) ) ) ) # ( \U8|valor_armazenado\(5) & ( 
-- !\U8|valor_armazenado\(6) & ( (!\U8|valor_armazenado\(3) & (!\U8|valor_armazenado\(7) & ((!\U8|valor_armazenado\(2)) # (\U8|valor_armazenado\(4))))) # (\U8|valor_armazenado\(3) & (\U8|valor_armazenado\(7) & ((!\U8|valor_armazenado\(4)) # 
-- (\U8|valor_armazenado\(2))))) ) ) ) # ( !\U8|valor_armazenado\(5) & ( !\U8|valor_armazenado\(6) & ( (!\U8|valor_armazenado\(3) & (\U8|valor_armazenado\(7) & ((!\U8|valor_armazenado\(4)) # (\U8|valor_armazenado\(2))))) # (\U8|valor_armazenado\(3) & 
-- (!\U8|valor_armazenado\(7) $ (((!\U8|valor_armazenado\(2) & \U8|valor_armazenado\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000010110100000111100000101101000001111000001011010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U8|ALT_INV_valor_armazenado\(2),
	datab => \U8|ALT_INV_valor_armazenado\(3),
	datac => \U8|ALT_INV_valor_armazenado\(7),
	datad => \U8|ALT_INV_valor_armazenado\(4),
	datae => \U8|ALT_INV_valor_armazenado\(5),
	dataf => \U8|ALT_INV_valor_armazenado\(6),
	combout => \U9|U3|temp~0_combout\);

-- Location: LABCELL_X73_Y3_N30
\U9|U3|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|LessThan5~0_combout\ = ( \U8|valor_armazenado\(6) & ( \U8|valor_armazenado\(2) & ( (!\U8|valor_armazenado\(5) & (!\U8|valor_armazenado\(4) & (!\U8|valor_armazenado\(7) $ (!\U8|valor_armazenado\(3))))) # (\U8|valor_armazenado\(5) & 
-- ((!\U8|valor_armazenado\(7) & (!\U8|valor_armazenado\(3) & \U8|valor_armazenado\(4))) # (\U8|valor_armazenado\(7) & (\U8|valor_armazenado\(3) & !\U8|valor_armazenado\(4))))) ) ) ) # ( !\U8|valor_armazenado\(6) & ( \U8|valor_armazenado\(2) & ( 
-- (!\U8|valor_armazenado\(5) & (\U8|valor_armazenado\(7) & (\U8|valor_armazenado\(3) & \U8|valor_armazenado\(4)))) # (\U8|valor_armazenado\(5) & (!\U8|valor_armazenado\(7) & (!\U8|valor_armazenado\(3) & !\U8|valor_armazenado\(4)))) ) ) ) # ( 
-- \U8|valor_armazenado\(6) & ( !\U8|valor_armazenado\(2) & ( (!\U8|valor_armazenado\(5) & (\U8|valor_armazenado\(7) & (\U8|valor_armazenado\(3) & \U8|valor_armazenado\(4)))) # (\U8|valor_armazenado\(5) & (!\U8|valor_armazenado\(7) & 
-- (!\U8|valor_armazenado\(3) & !\U8|valor_armazenado\(4)))) ) ) ) # ( !\U8|valor_armazenado\(6) & ( !\U8|valor_armazenado\(2) & ( (!\U8|valor_armazenado\(5) & ((!\U8|valor_armazenado\(7) & (!\U8|valor_armazenado\(3) & \U8|valor_armazenado\(4))) # 
-- (\U8|valor_armazenado\(7) & (\U8|valor_armazenado\(3) & !\U8|valor_armazenado\(4))))) # (\U8|valor_armazenado\(5) & (\U8|valor_armazenado\(4) & (!\U8|valor_armazenado\(7) $ (!\U8|valor_armazenado\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010010100010000000000001001000000000000100010100101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U8|ALT_INV_valor_armazenado\(5),
	datab => \U8|ALT_INV_valor_armazenado\(7),
	datac => \U8|ALT_INV_valor_armazenado\(3),
	datad => \U8|ALT_INV_valor_armazenado\(4),
	datae => \U8|ALT_INV_valor_armazenado\(6),
	dataf => \U8|ALT_INV_valor_armazenado\(2),
	combout => \U9|U3|LessThan5~0_combout\);

-- Location: LABCELL_X70_Y3_N18
\U9|U3|bcd_out[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|bcd_out[1]~0_combout\ = ( \U9|U3|temp~0_combout\ & ( \U9|U3|LessThan5~0_combout\ & ( !\U8|valor_armazenado\(1) ) ) ) # ( !\U9|U3|temp~0_combout\ & ( \U9|U3|LessThan5~0_combout\ & ( !\U8|valor_armazenado\(1) ) ) ) # ( \U9|U3|temp~0_combout\ & ( 
-- !\U9|U3|LessThan5~0_combout\ & ( (!\U8|valor_armazenado\(1) & \U9|U3|temp~1_combout\) ) ) ) # ( !\U9|U3|temp~0_combout\ & ( !\U9|U3|LessThan5~0_combout\ & ( \U8|valor_armazenado\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001000100010001010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U8|ALT_INV_valor_armazenado\(1),
	datab => \U9|U3|ALT_INV_temp~1_combout\,
	datae => \U9|U3|ALT_INV_temp~0_combout\,
	dataf => \U9|U3|ALT_INV_LessThan5~0_combout\,
	combout => \U9|U3|bcd_out[1]~0_combout\);

-- Location: LABCELL_X75_Y3_N42
\U9|U1|temp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U1|temp~1_combout\ = ( \U5|valor_armazenado\(7) & ( \U5|valor_armazenado\(3) & ( (!\U5|valor_armazenado\(5) & ((!\U5|valor_armazenado\(4) & (\U5|valor_armazenado\(6) & \U5|valor_armazenado\(2))) # (\U5|valor_armazenado\(4) & (!\U5|valor_armazenado\(6) 
-- & !\U5|valor_armazenado\(2))))) # (\U5|valor_armazenado\(5) & (!\U5|valor_armazenado\(4) $ (!\U5|valor_armazenado\(6) $ (\U5|valor_armazenado\(2))))) ) ) ) # ( !\U5|valor_armazenado\(7) & ( \U5|valor_armazenado\(3) & ( (!\U5|valor_armazenado\(4) & 
-- ((!\U5|valor_armazenado\(6) $ (!\U5|valor_armazenado\(2))))) # (\U5|valor_armazenado\(4) & ((!\U5|valor_armazenado\(6) & (!\U5|valor_armazenado\(5) & !\U5|valor_armazenado\(2))) # (\U5|valor_armazenado\(6) & ((\U5|valor_armazenado\(2)))))) ) ) ) # ( 
-- \U5|valor_armazenado\(7) & ( !\U5|valor_armazenado\(3) & ( (!\U5|valor_armazenado\(4) & ((!\U5|valor_armazenado\(6) $ (!\U5|valor_armazenado\(2))))) # (\U5|valor_armazenado\(4) & ((!\U5|valor_armazenado\(6) & (!\U5|valor_armazenado\(5) & 
-- !\U5|valor_armazenado\(2))) # (\U5|valor_armazenado\(6) & ((\U5|valor_armazenado\(2)))))) ) ) ) # ( !\U5|valor_armazenado\(7) & ( !\U5|valor_armazenado\(3) & ( (!\U5|valor_armazenado\(5) & ((!\U5|valor_armazenado\(4) & (!\U5|valor_armazenado\(6) $ 
-- (!\U5|valor_armazenado\(2)))) # (\U5|valor_armazenado\(4) & (\U5|valor_armazenado\(6) & \U5|valor_armazenado\(2))))) # (\U5|valor_armazenado\(5) & ((!\U5|valor_armazenado\(4) & (!\U5|valor_armazenado\(6) & !\U5|valor_armazenado\(2))) # 
-- (\U5|valor_armazenado\(4) & (!\U5|valor_armazenado\(6) $ (!\U5|valor_armazenado\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100110010010001011001100001100101100110000110011010001001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U5|ALT_INV_valor_armazenado\(5),
	datab => \U5|ALT_INV_valor_armazenado\(4),
	datac => \U5|ALT_INV_valor_armazenado\(6),
	datad => \U5|ALT_INV_valor_armazenado\(2),
	datae => \U5|ALT_INV_valor_armazenado\(7),
	dataf => \U5|ALT_INV_valor_armazenado\(3),
	combout => \U9|U1|temp~1_combout\);

-- Location: LABCELL_X75_Y3_N48
\U9|U1|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U1|LessThan5~0_combout\ = ( \U5|valor_armazenado\(7) & ( \U5|valor_armazenado\(3) & ( (!\U5|valor_armazenado\(5) & ((!\U5|valor_armazenado\(4) & (!\U5|valor_armazenado\(6) & !\U5|valor_armazenado\(2))) # (\U5|valor_armazenado\(4) & 
-- (!\U5|valor_armazenado\(6) $ (!\U5|valor_armazenado\(2)))))) # (\U5|valor_armazenado\(5) & (!\U5|valor_armazenado\(4) & (\U5|valor_armazenado\(6) & \U5|valor_armazenado\(2)))) ) ) ) # ( !\U5|valor_armazenado\(7) & ( \U5|valor_armazenado\(3) & ( 
-- (!\U5|valor_armazenado\(5) & (!\U5|valor_armazenado\(4) & (\U5|valor_armazenado\(6) & \U5|valor_armazenado\(2)))) # (\U5|valor_armazenado\(5) & (\U5|valor_armazenado\(4) & (!\U5|valor_armazenado\(6) & !\U5|valor_armazenado\(2)))) ) ) ) # ( 
-- \U5|valor_armazenado\(7) & ( !\U5|valor_armazenado\(3) & ( (!\U5|valor_armazenado\(5) & (!\U5|valor_armazenado\(4) & (\U5|valor_armazenado\(6) & \U5|valor_armazenado\(2)))) # (\U5|valor_armazenado\(5) & (\U5|valor_armazenado\(4) & 
-- (!\U5|valor_armazenado\(6) & !\U5|valor_armazenado\(2)))) ) ) ) # ( !\U5|valor_armazenado\(7) & ( !\U5|valor_armazenado\(3) & ( (!\U5|valor_armazenado\(5) & (\U5|valor_armazenado\(4) & (!\U5|valor_armazenado\(6) & !\U5|valor_armazenado\(2)))) # 
-- (\U5|valor_armazenado\(5) & ((!\U5|valor_armazenado\(4) & (!\U5|valor_armazenado\(6) $ (!\U5|valor_armazenado\(2)))) # (\U5|valor_armazenado\(4) & (\U5|valor_armazenado\(6) & \U5|valor_armazenado\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001000001000100000000100000010000000010001000001000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U5|ALT_INV_valor_armazenado\(5),
	datab => \U5|ALT_INV_valor_armazenado\(4),
	datac => \U5|ALT_INV_valor_armazenado\(6),
	datad => \U5|ALT_INV_valor_armazenado\(2),
	datae => \U5|ALT_INV_valor_armazenado\(7),
	dataf => \U5|ALT_INV_valor_armazenado\(3),
	combout => \U9|U1|LessThan5~0_combout\);

-- Location: LABCELL_X75_Y3_N24
\U9|U1|temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U1|temp~0_combout\ = ( \U5|valor_armazenado\(7) & ( \U5|valor_armazenado\(3) & ( (!\U5|valor_armazenado\(4) & (\U5|valor_armazenado\(5) & ((!\U5|valor_armazenado\(6)) # (!\U5|valor_armazenado\(2))))) # (\U5|valor_armazenado\(4) & 
-- (!\U5|valor_armazenado\(5) $ (((\U5|valor_armazenado\(2)) # (\U5|valor_armazenado\(6)))))) ) ) ) # ( !\U5|valor_armazenado\(7) & ( \U5|valor_armazenado\(3) & ( (!\U5|valor_armazenado\(4) & (!\U5|valor_armazenado\(5) $ (((\U5|valor_armazenado\(6) & 
-- \U5|valor_armazenado\(2)))))) # (\U5|valor_armazenado\(4) & (!\U5|valor_armazenado\(5) & ((\U5|valor_armazenado\(2)) # (\U5|valor_armazenado\(6))))) ) ) ) # ( \U5|valor_armazenado\(7) & ( !\U5|valor_armazenado\(3) & ( (!\U5|valor_armazenado\(4) & 
-- (!\U5|valor_armazenado\(5) $ (((\U5|valor_armazenado\(6) & \U5|valor_armazenado\(2)))))) # (\U5|valor_armazenado\(4) & (!\U5|valor_armazenado\(5) & ((\U5|valor_armazenado\(2)) # (\U5|valor_armazenado\(6))))) ) ) ) # ( !\U5|valor_armazenado\(7) & ( 
-- !\U5|valor_armazenado\(3) & ( (!\U5|valor_armazenado\(5) & (!\U5|valor_armazenado\(4) & (\U5|valor_armazenado\(6) & \U5|valor_armazenado\(2)))) # (\U5|valor_armazenado\(5) & ((!\U5|valor_armazenado\(4) & (!\U5|valor_armazenado\(6) & 
-- !\U5|valor_armazenado\(2))) # (\U5|valor_armazenado\(4) & ((!\U5|valor_armazenado\(6)) # (!\U5|valor_armazenado\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000100011000100010101010011010001010101001100110010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U5|ALT_INV_valor_armazenado\(5),
	datab => \U5|ALT_INV_valor_armazenado\(4),
	datac => \U5|ALT_INV_valor_armazenado\(6),
	datad => \U5|ALT_INV_valor_armazenado\(2),
	datae => \U5|ALT_INV_valor_armazenado\(7),
	dataf => \U5|ALT_INV_valor_armazenado\(3),
	combout => \U9|U1|temp~0_combout\);

-- Location: LABCELL_X71_Y3_N18
\U9|U1|bcd_out[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U1|bcd_out[1]~0_combout\ = ( \U9|U1|temp~0_combout\ & ( (!\U5|valor_armazenado\(1) & ((\U9|U1|LessThan5~0_combout\) # (\U9|U1|temp~1_combout\))) ) ) # ( !\U9|U1|temp~0_combout\ & ( !\U9|U1|LessThan5~0_combout\ $ (!\U5|valor_armazenado\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U9|U1|ALT_INV_temp~1_combout\,
	datac => \U9|U1|ALT_INV_LessThan5~0_combout\,
	datad => \U5|ALT_INV_valor_armazenado\(1),
	dataf => \U9|U1|ALT_INV_temp~0_combout\,
	combout => \U9|U1|bcd_out[1]~0_combout\);

-- Location: LABCELL_X70_Y3_N24
\U9|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux17~0_combout\ = ( \product_selection[1]~input_o\ & ( \estado_fsm[0]~input_o\ & ( (!\estado_fsm[2]~input_o\ & ((\U9|U1|bcd_out[1]~0_combout\) # (\estado_fsm[1]~input_o\))) ) ) ) # ( !\product_selection[1]~input_o\ & ( \estado_fsm[0]~input_o\ & ( 
-- (!\estado_fsm[1]~input_o\ & (!\estado_fsm[2]~input_o\ & \U9|U1|bcd_out[1]~0_combout\)) ) ) ) # ( \product_selection[1]~input_o\ & ( !\estado_fsm[0]~input_o\ & ( (!\estado_fsm[2]~input_o\ & ((!\estado_fsm[1]~input_o\ & ((\U9|U1|bcd_out[1]~0_combout\))) # 
-- (\estado_fsm[1]~input_o\ & (\U9|U3|bcd_out[1]~0_combout\)))) ) ) ) # ( !\product_selection[1]~input_o\ & ( !\estado_fsm[0]~input_o\ & ( (!\estado_fsm[2]~input_o\ & ((!\estado_fsm[1]~input_o\ & ((\U9|U1|bcd_out[1]~0_combout\))) # (\estado_fsm[1]~input_o\ & 
-- (\U9|U3|bcd_out[1]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000000100010000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[1]~input_o\,
	datab => \ALT_INV_estado_fsm[2]~input_o\,
	datac => \U9|U3|ALT_INV_bcd_out[1]~0_combout\,
	datad => \U9|U1|ALT_INV_bcd_out[1]~0_combout\,
	datae => \ALT_INV_product_selection[1]~input_o\,
	dataf => \ALT_INV_estado_fsm[0]~input_o\,
	combout => \U9|Mux17~0_combout\);

-- Location: LABCELL_X71_Y3_N21
\U9|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux16~0_combout\ = ( \estado_fsm[1]~input_o\ & ( (!\estado_fsm[0]~input_o\ & \estado_fsm[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[0]~input_o\,
	datad => \ALT_INV_estado_fsm[2]~input_o\,
	dataf => \ALT_INV_estado_fsm[1]~input_o\,
	combout => \U9|Mux16~0_combout\);

-- Location: MLABCELL_X72_Y3_N33
\U9|Mux17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux17~2_combout\ = ( \product_selection[1]~input_o\ & ( (!\product_selection[2]~input_o\ & (\U9|Mux16~0_combout\ & ((!\product_selection[0]~input_o\) # (!\product_selection[3]~input_o\)))) ) ) # ( !\product_selection[1]~input_o\ & ( 
-- (\U9|Mux16~0_combout\ & ((!\product_selection[3]~input_o\ & ((\product_selection[2]~input_o\))) # (\product_selection[3]~input_o\ & (\product_selection[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000000000011010100000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datab => \ALT_INV_product_selection[2]~input_o\,
	datac => \ALT_INV_product_selection[3]~input_o\,
	datad => \U9|ALT_INV_Mux16~0_combout\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \U9|Mux17~2_combout\);

-- Location: LABCELL_X67_Y3_N33
\U9|Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux17~1_combout\ = ( \U9|Mux17~2_combout\ ) # ( !\U9|Mux17~2_combout\ & ( \U9|Mux17~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U9|ALT_INV_Mux17~0_combout\,
	datae => \U9|ALT_INV_Mux17~2_combout\,
	combout => \U9|Mux17~1_combout\);

-- Location: LABCELL_X71_Y3_N39
\U9|U1|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U1|LessThan5~1_combout\ = ( \U9|U1|temp~0_combout\ & ( (!\U9|U1|LessThan5~0_combout\ & (!\U9|U1|temp~1_combout\ & !\U5|valor_armazenado\(1))) ) ) # ( !\U9|U1|temp~0_combout\ & ( !\U9|U1|LessThan5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U9|U1|ALT_INV_LessThan5~0_combout\,
	datac => \U9|U1|ALT_INV_temp~1_combout\,
	datad => \U5|ALT_INV_valor_armazenado\(1),
	dataf => \U9|U1|ALT_INV_temp~0_combout\,
	combout => \U9|U1|LessThan5~1_combout\);

-- Location: LABCELL_X70_Y3_N42
\U9|U3|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|LessThan5~1_combout\ = ( \U8|valor_armazenado\(1) & ( (!\U9|U3|LessThan5~0_combout\ & !\U9|U3|temp~0_combout\) ) ) # ( !\U8|valor_armazenado\(1) & ( (!\U9|U3|LessThan5~0_combout\ & ((!\U9|U3|temp~1_combout\) # (!\U9|U3|temp~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U9|U3|ALT_INV_temp~1_combout\,
	datac => \U9|U3|ALT_INV_LessThan5~0_combout\,
	datad => \U9|U3|ALT_INV_temp~0_combout\,
	dataf => \U8|ALT_INV_valor_armazenado\(1),
	combout => \U9|U3|LessThan5~1_combout\);

-- Location: LABCELL_X71_Y3_N54
\U9|Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux16~1_combout\ = ( \estado_fsm[1]~input_o\ & ( (!\estado_fsm[0]~input_o\ & (!\estado_fsm[2]~input_o\ & !\U9|U3|LessThan5~1_combout\)) ) ) # ( !\estado_fsm[1]~input_o\ & ( (!\U9|U1|LessThan5~1_combout\ & !\estado_fsm[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[0]~input_o\,
	datab => \U9|U1|ALT_INV_LessThan5~1_combout\,
	datac => \ALT_INV_estado_fsm[2]~input_o\,
	datad => \U9|U3|ALT_INV_LessThan5~1_combout\,
	dataf => \ALT_INV_estado_fsm[1]~input_o\,
	combout => \U9|Mux16~1_combout\);

-- Location: MLABCELL_X72_Y3_N30
\U9|Mux16~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux16~7_combout\ = ( \product_selection[1]~input_o\ & ( (\U9|Mux16~0_combout\ & ((!\product_selection[2]~input_o\ & ((\product_selection[3]~input_o\))) # (\product_selection[2]~input_o\ & ((!\product_selection[3]~input_o\) # 
-- (\product_selection[0]~input_o\))))) ) ) # ( !\product_selection[1]~input_o\ & ( (\U9|Mux16~0_combout\ & (!\product_selection[0]~input_o\ $ (((!\product_selection[2]~input_o\) # (!\product_selection[3]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000110000001010000011000000011000011010000001100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datab => \ALT_INV_product_selection[2]~input_o\,
	datac => \U9|ALT_INV_Mux16~0_combout\,
	datad => \ALT_INV_product_selection[3]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \U9|Mux16~7_combout\);

-- Location: LABCELL_X70_Y3_N6
\U9|Mux16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux16~2_combout\ = ( \U9|U3|temp~1_combout\ & ( \U9|U1|temp~1_combout\ & ( (!\estado_fsm[2]~input_o\ & ((!\estado_fsm[1]~input_o\) # ((!\estado_fsm[0]~input_o\) # (\product_selection[2]~input_o\)))) ) ) ) # ( !\U9|U3|temp~1_combout\ & ( 
-- \U9|U1|temp~1_combout\ & ( (!\estado_fsm[2]~input_o\ & ((!\estado_fsm[1]~input_o\) # ((\product_selection[2]~input_o\ & \estado_fsm[0]~input_o\)))) ) ) ) # ( \U9|U3|temp~1_combout\ & ( !\U9|U1|temp~1_combout\ & ( (\estado_fsm[1]~input_o\ & 
-- (!\estado_fsm[2]~input_o\ & ((!\estado_fsm[0]~input_o\) # (\product_selection[2]~input_o\)))) ) ) ) # ( !\U9|U3|temp~1_combout\ & ( !\U9|U1|temp~1_combout\ & ( (\estado_fsm[1]~input_o\ & (\product_selection[2]~input_o\ & (\estado_fsm[0]~input_o\ & 
-- !\estado_fsm[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000010100010000000010101011000000001111101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[1]~input_o\,
	datab => \ALT_INV_product_selection[2]~input_o\,
	datac => \ALT_INV_estado_fsm[0]~input_o\,
	datad => \ALT_INV_estado_fsm[2]~input_o\,
	datae => \U9|U3|ALT_INV_temp~1_combout\,
	dataf => \U9|U1|ALT_INV_temp~1_combout\,
	combout => \U9|Mux16~2_combout\);

-- Location: MLABCELL_X72_Y3_N18
\U9|U2|temp~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U2|temp~5_combout\ = ( \product_selection[1]~input_o\ & ( (!\product_selection[0]~input_o\ & ((!\product_selection[2]~input_o\) # (\product_selection[3]~input_o\))) # (\product_selection[0]~input_o\ & (!\product_selection[2]~input_o\ & 
-- \product_selection[3]~input_o\)) ) ) # ( !\product_selection[1]~input_o\ & ( (!\product_selection[2]~input_o\ & (!\product_selection[0]~input_o\ & \product_selection[3]~input_o\)) # (\product_selection[2]~input_o\ & ((!\product_selection[3]~input_o\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110001000001100111000100010001000111011101000100011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datab => \ALT_INV_product_selection[2]~input_o\,
	datad => \ALT_INV_product_selection[3]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \U9|U2|temp~5_combout\);

-- Location: LABCELL_X71_Y3_N57
\U9|Mux16~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux16~3_combout\ = ( \U9|U2|temp~5_combout\ & ( (!\U9|Mux16~2_combout\ & !\U9|Mux16~0_combout\) ) ) # ( !\U9|U2|temp~5_combout\ & ( !\U9|Mux16~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U9|ALT_INV_Mux16~2_combout\,
	datad => \U9|ALT_INV_Mux16~0_combout\,
	dataf => \U9|U2|ALT_INV_temp~5_combout\,
	combout => \U9|Mux16~3_combout\);

-- Location: LABCELL_X70_Y3_N48
\U9|U3|Add5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|Add5~0_combout\ = ( \estado_fsm[0]~input_o\ & ( \U8|valor_armazenado\(1) & ( (!\estado_fsm[1]~input_o\ & ((!\estado_fsm[2]~input_o\ & (!\U5|valor_armazenado\(1))) # (\estado_fsm[2]~input_o\ & ((!\U4|Mux6~0_combout\))))) ) ) ) # ( 
-- !\estado_fsm[0]~input_o\ & ( \U8|valor_armazenado\(1) & ( (!\estado_fsm[2]~input_o\ & (!\U5|valor_armazenado\(1) & ((!\estado_fsm[1]~input_o\)))) # (\estado_fsm[2]~input_o\ & (((!\U4|Mux6~0_combout\)))) ) ) ) # ( \estado_fsm[0]~input_o\ & ( 
-- !\U8|valor_armazenado\(1) & ( (!\estado_fsm[1]~input_o\ & ((!\estado_fsm[2]~input_o\ & (!\U5|valor_armazenado\(1))) # (\estado_fsm[2]~input_o\ & ((!\U4|Mux6~0_combout\))))) ) ) ) # ( !\estado_fsm[0]~input_o\ & ( !\U8|valor_armazenado\(1) & ( 
-- (!\estado_fsm[2]~input_o\ & ((!\U5|valor_armazenado\(1)) # ((\estado_fsm[1]~input_o\)))) # (\estado_fsm[2]~input_o\ & (((!\U4|Mux6~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100011111100101110000000000010111000001100001011100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U5|ALT_INV_valor_armazenado\(1),
	datab => \ALT_INV_estado_fsm[2]~input_o\,
	datac => \U4|ALT_INV_Mux6~0_combout\,
	datad => \ALT_INV_estado_fsm[1]~input_o\,
	datae => \ALT_INV_estado_fsm[0]~input_o\,
	dataf => \U8|ALT_INV_valor_armazenado\(1),
	combout => \U9|U3|Add5~0_combout\);

-- Location: LABCELL_X71_Y3_N24
\U9|U3|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|Add5~1_combout\ = ( \U9|U3|Add5~0_combout\ & ( \U9|U1|temp~1_combout\ & ( (!\estado_fsm[2]~input_o\ & (((!\estado_fsm[1]~input_o\)) # (\U9|U3|temp~1_combout\))) # (\estado_fsm[2]~input_o\ & (((\U9|U2|temp~5_combout\)))) ) ) ) # ( 
-- !\U9|U3|Add5~0_combout\ & ( \U9|U1|temp~1_combout\ & ( (!\estado_fsm[2]~input_o\ & (!\U9|U3|temp~1_combout\ & ((\estado_fsm[1]~input_o\)))) # (\estado_fsm[2]~input_o\ & (((!\U9|U2|temp~5_combout\)))) ) ) ) # ( \U9|U3|Add5~0_combout\ & ( 
-- !\U9|U1|temp~1_combout\ & ( (!\estado_fsm[2]~input_o\ & (\U9|U3|temp~1_combout\ & ((\estado_fsm[1]~input_o\)))) # (\estado_fsm[2]~input_o\ & (((\U9|U2|temp~5_combout\)))) ) ) ) # ( !\U9|U3|Add5~0_combout\ & ( !\U9|U1|temp~1_combout\ & ( 
-- (!\estado_fsm[2]~input_o\ & ((!\U9|U3|temp~1_combout\) # ((!\estado_fsm[1]~input_o\)))) # (\estado_fsm[2]~input_o\ & (((!\U9|U2|temp~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110010101100000000110101001100001100101011001111001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U9|U3|ALT_INV_temp~1_combout\,
	datab => \U9|U2|ALT_INV_temp~5_combout\,
	datac => \ALT_INV_estado_fsm[2]~input_o\,
	datad => \ALT_INV_estado_fsm[1]~input_o\,
	datae => \U9|U3|ALT_INV_Add5~0_combout\,
	dataf => \U9|U1|ALT_INV_temp~1_combout\,
	combout => \U9|U3|Add5~1_combout\);

-- Location: LABCELL_X71_Y3_N6
\U9|Mux16~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux16~4_combout\ = ( \U9|U3|Add5~1_combout\ & ( (!\U9|Mux16~1_combout\ & (!\U9|Mux16~7_combout\ & !\U9|Mux16~3_combout\)) ) ) # ( !\U9|U3|Add5~1_combout\ & ( ((!\U9|Mux16~3_combout\) # (\U9|Mux16~7_combout\)) # (\U9|Mux16~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101011111111111110101111110100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U9|ALT_INV_Mux16~1_combout\,
	datac => \U9|ALT_INV_Mux16~7_combout\,
	datad => \U9|ALT_INV_Mux16~3_combout\,
	dataf => \U9|U3|ALT_INV_Add5~1_combout\,
	combout => \U9|Mux16~4_combout\);

-- Location: LABCELL_X70_Y3_N57
\U9|U2|temp~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U2|temp~4_combout\ = ( \product_selection[0]~input_o\ & ( (!\product_selection[3]~input_o\ & ((!\product_selection[1]~input_o\))) # (\product_selection[3]~input_o\ & (!\product_selection[2]~input_o\ & \product_selection[1]~input_o\)) ) ) # ( 
-- !\product_selection[0]~input_o\ & ( (\product_selection[3]~input_o\ & (!\product_selection[2]~input_o\ & \product_selection[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010100100101001001010010010100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[3]~input_o\,
	datab => \ALT_INV_product_selection[2]~input_o\,
	datac => \ALT_INV_product_selection[1]~input_o\,
	dataf => \ALT_INV_product_selection[0]~input_o\,
	combout => \U9|U2|temp~4_combout\);

-- Location: LABCELL_X70_Y3_N30
\U9|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux15~0_combout\ = ( \U9|U3|temp~0_combout\ & ( \estado_fsm[0]~input_o\ & ( (!\estado_fsm[2]~input_o\ & ((!\estado_fsm[1]~input_o\ & ((\U9|U1|temp~0_combout\))) # (\estado_fsm[1]~input_o\ & (\product_selection[3]~input_o\)))) ) ) ) # ( 
-- !\U9|U3|temp~0_combout\ & ( \estado_fsm[0]~input_o\ & ( (!\estado_fsm[2]~input_o\ & ((!\estado_fsm[1]~input_o\ & ((\U9|U1|temp~0_combout\))) # (\estado_fsm[1]~input_o\ & (\product_selection[3]~input_o\)))) ) ) ) # ( \U9|U3|temp~0_combout\ & ( 
-- !\estado_fsm[0]~input_o\ & ( (!\estado_fsm[2]~input_o\ & ((\U9|U1|temp~0_combout\) # (\estado_fsm[1]~input_o\))) ) ) ) # ( !\U9|U3|temp~0_combout\ & ( !\estado_fsm[0]~input_o\ & ( (!\estado_fsm[1]~input_o\ & (!\estado_fsm[2]~input_o\ & 
-- \U9|U1|temp~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000010001001100110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[1]~input_o\,
	datab => \ALT_INV_estado_fsm[2]~input_o\,
	datac => \ALT_INV_product_selection[3]~input_o\,
	datad => \U9|U1|ALT_INV_temp~0_combout\,
	datae => \U9|U3|ALT_INV_temp~0_combout\,
	dataf => \ALT_INV_estado_fsm[0]~input_o\,
	combout => \U9|Mux15~0_combout\);

-- Location: LABCELL_X71_Y3_N12
\U9|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux15~1_combout\ = (!\U9|Mux15~0_combout\ & ((!\U9|U2|temp~4_combout\) # (!\U9|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000011110000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U9|U2|ALT_INV_temp~4_combout\,
	datac => \U9|ALT_INV_Mux15~0_combout\,
	datad => \U9|ALT_INV_Mux16~0_combout\,
	combout => \U9|Mux15~1_combout\);

-- Location: LABCELL_X71_Y3_N15
\U9|U3|Add5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|Add5~3_combout\ = ( \U9|U1|temp~0_combout\ & ( (!\estado_fsm[2]~input_o\ & ((!\estado_fsm[1]~input_o\) # ((\U9|U3|temp~0_combout\)))) # (\estado_fsm[2]~input_o\ & (((\U9|U2|temp~4_combout\)))) ) ) # ( !\U9|U1|temp~0_combout\ & ( 
-- (!\estado_fsm[2]~input_o\ & (\estado_fsm[1]~input_o\ & ((\U9|U3|temp~0_combout\)))) # (\estado_fsm[2]~input_o\ & (((\U9|U2|temp~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110011000001010011001110101111001100111010111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[1]~input_o\,
	datab => \U9|U2|ALT_INV_temp~4_combout\,
	datac => \U9|U3|ALT_INV_temp~0_combout\,
	datad => \ALT_INV_estado_fsm[2]~input_o\,
	dataf => \U9|U1|ALT_INV_temp~0_combout\,
	combout => \U9|U3|Add5~3_combout\);

-- Location: LABCELL_X70_Y3_N12
\U9|U3|Add5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|Add5~2_combout\ = ( \estado_fsm[1]~input_o\ & ( \U8|valor_armazenado\(1) & ( (!\estado_fsm[2]~input_o\) # (\U4|Mux6~0_combout\) ) ) ) # ( !\estado_fsm[1]~input_o\ & ( \U8|valor_armazenado\(1) & ( (!\estado_fsm[2]~input_o\ & 
-- ((\U5|valor_armazenado\(1)))) # (\estado_fsm[2]~input_o\ & (\U4|Mux6~0_combout\)) ) ) ) # ( \estado_fsm[1]~input_o\ & ( !\U8|valor_armazenado\(1) & ( (\U4|Mux6~0_combout\ & \estado_fsm[2]~input_o\) ) ) ) # ( !\estado_fsm[1]~input_o\ & ( 
-- !\U8|valor_armazenado\(1) & ( (!\estado_fsm[2]~input_o\ & ((\U5|valor_armazenado\(1)))) # (\estado_fsm[2]~input_o\ & (\U4|Mux6~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000100010001000100011101000111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ALT_INV_Mux6~0_combout\,
	datab => \ALT_INV_estado_fsm[2]~input_o\,
	datac => \U5|ALT_INV_valor_armazenado\(1),
	datae => \ALT_INV_estado_fsm[1]~input_o\,
	dataf => \U8|ALT_INV_valor_armazenado\(1),
	combout => \U9|U3|Add5~2_combout\);

-- Location: LABCELL_X71_Y3_N0
\U9|U3|Add5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|Add5~6_combout\ = ( !\estado_fsm[1]~input_o\ & ( ((!\estado_fsm[2]~input_o\ & (((\U9|U1|temp~1_combout\)))) # (\estado_fsm[2]~input_o\ & (\U9|U2|temp~5_combout\))) # (\U9|U3|Add5~2_combout\) ) ) # ( \estado_fsm[1]~input_o\ & ( 
-- (!\estado_fsm[0]~input_o\ & (((!\estado_fsm[2]~input_o\ & ((\U9|U3|temp~1_combout\))) # (\estado_fsm[2]~input_o\ & (\U9|U2|temp~5_combout\))) # (\U9|U3|Add5~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101111111111000100001111000000011011111111111011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[2]~input_o\,
	datab => \U9|U2|ALT_INV_temp~5_combout\,
	datac => \ALT_INV_estado_fsm[0]~input_o\,
	datad => \U9|U3|ALT_INV_Add5~2_combout\,
	datae => \ALT_INV_estado_fsm[1]~input_o\,
	dataf => \U9|U3|ALT_INV_temp~1_combout\,
	datag => \U9|U1|ALT_INV_temp~1_combout\,
	combout => \U9|U3|Add5~6_combout\);

-- Location: LABCELL_X71_Y3_N9
\U9|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux15~2_combout\ = ( \U9|Mux16~7_combout\ & ( !\U9|U3|Add5~3_combout\ $ (!\U9|U3|Add5~6_combout\) ) ) # ( !\U9|Mux16~7_combout\ & ( (!\U9|Mux16~1_combout\ & (!\U9|Mux15~1_combout\)) # (\U9|Mux16~1_combout\ & ((!\U9|U3|Add5~3_combout\ $ 
-- (!\U9|U3|Add5~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110111011000100011011101100000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U9|ALT_INV_Mux16~1_combout\,
	datab => \U9|ALT_INV_Mux15~1_combout\,
	datac => \U9|U3|ALT_INV_Add5~3_combout\,
	datad => \U9|U3|ALT_INV_Add5~6_combout\,
	dataf => \U9|ALT_INV_Mux16~7_combout\,
	combout => \U9|Mux15~2_combout\);

-- Location: LABCELL_X71_Y3_N36
\U9|U3|Add5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|Add5~4_combout\ = ( \U9|U3|LessThan5~0_combout\ & ( (!\estado_fsm[2]~input_o\ & ((\estado_fsm[1]~input_o\) # (\U9|U1|LessThan5~0_combout\))) ) ) # ( !\U9|U3|LessThan5~0_combout\ & ( (\U9|U1|LessThan5~0_combout\ & (!\estado_fsm[1]~input_o\ & 
-- !\estado_fsm[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U9|U1|ALT_INV_LessThan5~0_combout\,
	datac => \ALT_INV_estado_fsm[1]~input_o\,
	datad => \ALT_INV_estado_fsm[2]~input_o\,
	dataf => \U9|U3|ALT_INV_LessThan5~0_combout\,
	combout => \U9|U3|Add5~4_combout\);

-- Location: MLABCELL_X72_Y3_N51
\U9|U2|temp~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U2|temp~2_combout\ = ( \product_selection[1]~input_o\ & ( (!\product_selection[0]~input_o\ & (!\product_selection[2]~input_o\ $ (\product_selection[3]~input_o\))) # (\product_selection[0]~input_o\ & ((\product_selection[3]~input_o\) # 
-- (\product_selection[2]~input_o\))) ) ) # ( !\product_selection[1]~input_o\ & ( (\product_selection[2]~input_o\ & \product_selection[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001110010111100101111001011110010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datab => \ALT_INV_product_selection[2]~input_o\,
	datac => \ALT_INV_product_selection[3]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \U9|U2|temp~2_combout\);

-- Location: MLABCELL_X72_Y3_N57
\U9|U2|temp~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U2|temp~6_combout\ = ( \product_selection[1]~input_o\ & ( (!\product_selection[0]~input_o\ & ((!\product_selection[3]~input_o\) # (\product_selection[2]~input_o\))) ) ) # ( !\product_selection[1]~input_o\ & ( (\product_selection[0]~input_o\ & 
-- \product_selection[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110100010101000101010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datab => \ALT_INV_product_selection[2]~input_o\,
	datac => \ALT_INV_product_selection[3]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \U9|U2|temp~6_combout\);

-- Location: MLABCELL_X72_Y3_N48
\U9|U2|temp~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U2|temp~7_combout\ = ( \product_selection[1]~input_o\ & ( (!\product_selection[0]~input_o\ & ((!\product_selection[2]~input_o\) # (\product_selection[3]~input_o\))) ) ) # ( !\product_selection[1]~input_o\ & ( (\product_selection[0]~input_o\ & 
-- !\product_selection[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000010001000101010101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datab => \ALT_INV_product_selection[2]~input_o\,
	datad => \ALT_INV_product_selection[3]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \U9|U2|temp~7_combout\);

-- Location: MLABCELL_X72_Y3_N12
\U9|U3|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|Add5~5_combout\ = ( \U4|Mux5~0_combout\ & ( \U9|U2|temp~7_combout\ & ( (\estado_fsm[2]~input_o\ & (!\U9|U2|temp~2_combout\ $ (!\U9|U2|temp~6_combout\))) ) ) ) # ( !\U4|Mux5~0_combout\ & ( \U9|U2|temp~7_combout\ & ( (\estado_fsm[2]~input_o\ & 
-- (!\U9|U2|temp~2_combout\ $ (!\U9|U2|temp~6_combout\))) ) ) ) # ( \U4|Mux5~0_combout\ & ( !\U9|U2|temp~7_combout\ & ( (\estado_fsm[2]~input_o\ & (!\U9|U2|temp~2_combout\ $ (!\U9|U2|temp~6_combout\))) ) ) ) # ( !\U4|Mux5~0_combout\ & ( 
-- !\U9|U2|temp~7_combout\ & ( (\U9|U2|temp~6_combout\ & \estado_fsm[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000110011000000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U9|U2|ALT_INV_temp~2_combout\,
	datab => \U9|U2|ALT_INV_temp~6_combout\,
	datad => \ALT_INV_estado_fsm[2]~input_o\,
	datae => \U4|ALT_INV_Mux5~0_combout\,
	dataf => \U9|U2|ALT_INV_temp~7_combout\,
	combout => \U9|U3|Add5~5_combout\);

-- Location: LABCELL_X71_Y3_N30
\U9|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux14~0_combout\ = ( \U9|Mux16~1_combout\ & ( \U9|Mux16~7_combout\ & ( (!\U9|U3|Add5~4_combout\ & (!\U9|U3|Add5~5_combout\ $ (((!\U9|U3|Add5~3_combout\) # (!\U9|U3|Add5~6_combout\))))) # (\U9|U3|Add5~4_combout\ & ((!\U9|U3|Add5~3_combout\) # 
-- ((!\U9|U3|Add5~6_combout\)))) ) ) ) # ( !\U9|Mux16~1_combout\ & ( \U9|Mux16~7_combout\ & ( (!\U9|U3|Add5~4_combout\ & (!\U9|U3|Add5~5_combout\ $ (((!\U9|U3|Add5~3_combout\) # (!\U9|U3|Add5~6_combout\))))) # (\U9|U3|Add5~4_combout\ & 
-- ((!\U9|U3|Add5~3_combout\) # ((!\U9|U3|Add5~6_combout\)))) ) ) ) # ( \U9|Mux16~1_combout\ & ( !\U9|Mux16~7_combout\ & ( (!\U9|U3|Add5~4_combout\ & (!\U9|U3|Add5~5_combout\ $ (((!\U9|U3|Add5~3_combout\) # (!\U9|U3|Add5~6_combout\))))) # 
-- (\U9|U3|Add5~4_combout\ & ((!\U9|U3|Add5~3_combout\) # ((!\U9|U3|Add5~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101111110001010110111111000101011011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U9|U3|ALT_INV_Add5~4_combout\,
	datab => \U9|U3|ALT_INV_Add5~3_combout\,
	datac => \U9|U3|ALT_INV_Add5~6_combout\,
	datad => \U9|U3|ALT_INV_Add5~5_combout\,
	datae => \U9|ALT_INV_Mux16~1_combout\,
	dataf => \U9|ALT_INV_Mux16~7_combout\,
	combout => \U9|Mux14~0_combout\);

-- Location: LABCELL_X70_Y3_N54
\U9|U2|bcd_out[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U2|bcd_out[5]~0_combout\ = ( \product_selection[0]~input_o\ & ( (\product_selection[3]~input_o\ & ((!\product_selection[2]~input_o\) # (\product_selection[1]~input_o\))) ) ) # ( !\product_selection[0]~input_o\ & ( !\product_selection[3]~input_o\ $ 
-- (((!\product_selection[2]~input_o\ & !\product_selection[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010101010011001101010101001000100010101010100010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[3]~input_o\,
	datab => \ALT_INV_product_selection[2]~input_o\,
	datad => \ALT_INV_product_selection[1]~input_o\,
	dataf => \ALT_INV_product_selection[0]~input_o\,
	combout => \U9|U2|bcd_out[5]~0_combout\);

-- Location: LABCELL_X73_Y3_N12
\U9|U3|bcd_out[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|bcd_out[5]~1_combout\ = ( \U8|valor_armazenado\(6) & ( \U8|valor_armazenado\(2) & ( (!\U8|valor_armazenado\(4) & (!\U8|valor_armazenado\(5) $ ((\U8|valor_armazenado\(7))))) # (\U8|valor_armazenado\(4) & (\U8|valor_armazenado\(3) & 
-- (!\U8|valor_armazenado\(5) $ (!\U8|valor_armazenado\(7))))) ) ) ) # ( !\U8|valor_armazenado\(6) & ( \U8|valor_armazenado\(2) & ( (!\U8|valor_armazenado\(7) & (!\U8|valor_armazenado\(4) $ (((!\U8|valor_armazenado\(5)) # (\U8|valor_armazenado\(3)))))) # 
-- (\U8|valor_armazenado\(7) & (!\U8|valor_armazenado\(4) & ((!\U8|valor_armazenado\(3)) # (\U8|valor_armazenado\(5))))) ) ) ) # ( \U8|valor_armazenado\(6) & ( !\U8|valor_armazenado\(2) & ( (!\U8|valor_armazenado\(4) & (!\U8|valor_armazenado\(5) $ 
-- ((\U8|valor_armazenado\(7))))) # (\U8|valor_armazenado\(4) & (\U8|valor_armazenado\(5) & (!\U8|valor_armazenado\(7) & \U8|valor_armazenado\(3)))) ) ) ) # ( !\U8|valor_armazenado\(6) & ( !\U8|valor_armazenado\(2) & ( (!\U8|valor_armazenado\(7) & 
-- ((!\U8|valor_armazenado\(5) & (\U8|valor_armazenado\(3) & \U8|valor_armazenado\(4))) # (\U8|valor_armazenado\(5) & (!\U8|valor_armazenado\(3) & !\U8|valor_armazenado\(4))))) # (\U8|valor_armazenado\(7) & ((!\U8|valor_armazenado\(4)) # 
-- ((\U8|valor_armazenado\(5) & !\U8|valor_armazenado\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100011000100110010000010001110001100011001001100100000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U8|ALT_INV_valor_armazenado\(5),
	datab => \U8|ALT_INV_valor_armazenado\(7),
	datac => \U8|ALT_INV_valor_armazenado\(3),
	datad => \U8|ALT_INV_valor_armazenado\(4),
	datae => \U8|ALT_INV_valor_armazenado\(6),
	dataf => \U8|ALT_INV_valor_armazenado\(2),
	combout => \U9|U3|bcd_out[5]~1_combout\);

-- Location: LABCELL_X75_Y3_N30
\U9|U1|bcd_out[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U1|bcd_out[5]~1_combout\ = ( \U5|valor_armazenado\(7) & ( \U5|valor_armazenado\(3) & ( (!\U5|valor_armazenado\(5) & ((!\U5|valor_armazenado\(4) & (!\U5|valor_armazenado\(6) & !\U5|valor_armazenado\(2))) # (\U5|valor_armazenado\(4) & 
-- (\U5|valor_armazenado\(6) & \U5|valor_armazenado\(2))))) # (\U5|valor_armazenado\(5) & (!\U5|valor_armazenado\(4))) ) ) ) # ( !\U5|valor_armazenado\(7) & ( \U5|valor_armazenado\(3) & ( (!\U5|valor_armazenado\(5) & (!\U5|valor_armazenado\(4) $ 
-- ((!\U5|valor_armazenado\(6))))) # (\U5|valor_armazenado\(5) & (\U5|valor_armazenado\(4) & ((\U5|valor_armazenado\(2)) # (\U5|valor_armazenado\(6))))) ) ) ) # ( \U5|valor_armazenado\(7) & ( !\U5|valor_armazenado\(3) & ( (!\U5|valor_armazenado\(5) & 
-- (!\U5|valor_armazenado\(4) & (!\U5|valor_armazenado\(6)))) # (\U5|valor_armazenado\(5) & ((!\U5|valor_armazenado\(4)) # ((!\U5|valor_armazenado\(6) & !\U5|valor_armazenado\(2))))) ) ) ) # ( !\U5|valor_armazenado\(7) & ( !\U5|valor_armazenado\(3) & ( 
-- (!\U5|valor_armazenado\(4) & (!\U5|valor_armazenado\(5) $ ((!\U5|valor_armazenado\(6))))) # (\U5|valor_armazenado\(4) & (!\U5|valor_armazenado\(5) & (!\U5|valor_armazenado\(6) & \U5|valor_armazenado\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001101000110101001100010000101001001110011100010001000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U5|ALT_INV_valor_armazenado\(5),
	datab => \U5|ALT_INV_valor_armazenado\(4),
	datac => \U5|ALT_INV_valor_armazenado\(6),
	datad => \U5|ALT_INV_valor_armazenado\(2),
	datae => \U5|ALT_INV_valor_armazenado\(7),
	dataf => \U5|ALT_INV_valor_armazenado\(3),
	combout => \U9|U1|bcd_out[5]~1_combout\);

-- Location: LABCELL_X71_Y3_N48
\U9|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux13~0_combout\ = ( \U9|U3|bcd_out[5]~1_combout\ & ( \U9|U1|bcd_out[5]~1_combout\ & ( (!\estado_fsm[1]~input_o\ & (!\estado_fsm[2]~input_o\)) # (\estado_fsm[1]~input_o\ & (!\estado_fsm[0]~input_o\ & ((!\estado_fsm[2]~input_o\) # 
-- (\U9|U2|bcd_out[5]~0_combout\)))) ) ) ) # ( !\U9|U3|bcd_out[5]~1_combout\ & ( \U9|U1|bcd_out[5]~1_combout\ & ( (!\estado_fsm[2]~input_o\ & (((!\estado_fsm[1]~input_o\)))) # (\estado_fsm[2]~input_o\ & (!\estado_fsm[0]~input_o\ & 
-- (\U9|U2|bcd_out[5]~0_combout\ & \estado_fsm[1]~input_o\))) ) ) ) # ( \U9|U3|bcd_out[5]~1_combout\ & ( !\U9|U1|bcd_out[5]~1_combout\ & ( (!\estado_fsm[0]~input_o\ & (\estado_fsm[1]~input_o\ & ((!\estado_fsm[2]~input_o\) # (\U9|U2|bcd_out[5]~0_combout\)))) 
-- ) ) ) # ( !\U9|U3|bcd_out[5]~1_combout\ & ( !\U9|U1|bcd_out[5]~1_combout\ & ( (\estado_fsm[2]~input_o\ & (!\estado_fsm[0]~input_o\ & (\U9|U2|bcd_out[5]~0_combout\ & \estado_fsm[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000001000110010101010000001001010101010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[2]~input_o\,
	datab => \ALT_INV_estado_fsm[0]~input_o\,
	datac => \U9|U2|ALT_INV_bcd_out[5]~0_combout\,
	datad => \ALT_INV_estado_fsm[1]~input_o\,
	datae => \U9|U3|ALT_INV_bcd_out[5]~1_combout\,
	dataf => \U9|U1|ALT_INV_bcd_out[5]~1_combout\,
	combout => \U9|Mux13~0_combout\);

-- Location: LABCELL_X73_Y3_N45
\U9|U1|temp~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U1|temp~2_combout\ = ( \U5|valor_armazenado\(7) & ( (!\U5|valor_armazenado\(5) & ((!\U5|valor_armazenado\(6)))) # (\U5|valor_armazenado\(5) & (\U5|valor_armazenado\(4) & \U5|valor_armazenado\(6))) ) ) # ( !\U5|valor_armazenado\(7) & ( 
-- (!\U5|valor_armazenado\(5) & (((!\U5|valor_armazenado\(4) & \U5|valor_armazenado\(6))))) # (\U5|valor_armazenado\(5) & ((!\U5|valor_armazenado\(3) & (\U5|valor_armazenado\(4) & !\U5|valor_armazenado\(6))) # (\U5|valor_armazenado\(3) & 
-- ((!\U5|valor_armazenado\(6)) # (\U5|valor_armazenado\(4)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010110100001000101011010000110101010000001011010101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U5|ALT_INV_valor_armazenado\(5),
	datab => \U5|ALT_INV_valor_armazenado\(3),
	datac => \U5|ALT_INV_valor_armazenado\(4),
	datad => \U5|ALT_INV_valor_armazenado\(6),
	dataf => \U5|ALT_INV_valor_armazenado\(7),
	combout => \U9|U1|temp~2_combout\);

-- Location: LABCELL_X73_Y3_N24
\U9|U3|temp~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|temp~2_combout\ = ( \U8|valor_armazenado\(7) & ( (!\U8|valor_armazenado\(6) & (!\U8|valor_armazenado\(5))) # (\U8|valor_armazenado\(6) & (\U8|valor_armazenado\(5) & \U8|valor_armazenado\(4))) ) ) # ( !\U8|valor_armazenado\(7) & ( 
-- (!\U8|valor_armazenado\(6) & (\U8|valor_armazenado\(5) & ((\U8|valor_armazenado\(4)) # (\U8|valor_armazenado\(3))))) # (\U8|valor_armazenado\(6) & ((!\U8|valor_armazenado\(5) & ((!\U8|valor_armazenado\(4)))) # (\U8|valor_armazenado\(5) & 
-- (\U8|valor_armazenado\(3) & \U8|valor_armazenado\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010000001101001101000000110111000000110000111100000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U8|ALT_INV_valor_armazenado\(3),
	datab => \U8|ALT_INV_valor_armazenado\(6),
	datac => \U8|ALT_INV_valor_armazenado\(5),
	datad => \U8|ALT_INV_valor_armazenado\(4),
	dataf => \U8|ALT_INV_valor_armazenado\(7),
	combout => \U9|U3|temp~2_combout\);

-- Location: LABCELL_X68_Y3_N9
\U9|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux10~1_combout\ = ( \estado_fsm[0]~input_o\ & ( (!\estado_fsm[1]~input_o\ & !\estado_fsm[2]~input_o\) ) ) # ( !\estado_fsm[0]~input_o\ & ( !\estado_fsm[1]~input_o\ $ (\estado_fsm[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado_fsm[1]~input_o\,
	datad => \ALT_INV_estado_fsm[2]~input_o\,
	dataf => \ALT_INV_estado_fsm[0]~input_o\,
	combout => \U9|Mux10~1_combout\);

-- Location: LABCELL_X70_Y3_N45
\U9|U2|temp~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U2|temp~3_combout\ = ( \product_selection[3]~input_o\ & ( !\product_selection[2]~input_o\ ) ) # ( !\product_selection[3]~input_o\ & ( (!\product_selection[0]~input_o\ & ((\product_selection[1]~input_o\))) # (\product_selection[0]~input_o\ & 
-- (\product_selection[2]~input_o\ & !\product_selection[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101010000001011010101011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datac => \ALT_INV_product_selection[2]~input_o\,
	datad => \ALT_INV_product_selection[1]~input_o\,
	dataf => \ALT_INV_product_selection[3]~input_o\,
	combout => \U9|U2|temp~3_combout\);

-- Location: LABCELL_X68_Y3_N39
\U9|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux12~0_combout\ = ( \U9|U2|temp~3_combout\ & ( (!\U9|Mux18~0_combout\ & (\U9|U1|temp~2_combout\ & ((\U9|Mux10~1_combout\)))) # (\U9|Mux18~0_combout\ & (((\U9|Mux10~1_combout\) # (\U9|U3|temp~2_combout\)))) ) ) # ( !\U9|U2|temp~3_combout\ & ( 
-- (!\U9|Mux18~0_combout\ & (\U9|U1|temp~2_combout\ & ((\U9|Mux10~1_combout\)))) # (\U9|Mux18~0_combout\ & (((\U9|U3|temp~2_combout\ & !\U9|Mux10~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000000000110101000000000011010111110000001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U9|U1|ALT_INV_temp~2_combout\,
	datab => \U9|U3|ALT_INV_temp~2_combout\,
	datac => \U9|ALT_INV_Mux18~0_combout\,
	datad => \U9|ALT_INV_Mux10~1_combout\,
	dataf => \U9|U2|ALT_INV_temp~3_combout\,
	combout => \U9|Mux12~0_combout\);

-- Location: LABCELL_X68_Y3_N36
\U9|U3|Add6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|Add6~0_combout\ = ( \estado_fsm[2]~input_o\ & ( \U9|U2|temp~3_combout\ ) ) # ( !\estado_fsm[2]~input_o\ & ( (!\estado_fsm[1]~input_o\ & (\U9|U1|temp~2_combout\)) # (\estado_fsm[1]~input_o\ & ((\U9|U3|temp~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U9|U1|ALT_INV_temp~2_combout\,
	datab => \U9|U3|ALT_INV_temp~2_combout\,
	datac => \U9|U2|ALT_INV_temp~3_combout\,
	datad => \ALT_INV_estado_fsm[1]~input_o\,
	dataf => \ALT_INV_estado_fsm[2]~input_o\,
	combout => \U9|U3|Add6~0_combout\);

-- Location: LABCELL_X74_Y3_N6
\U9|U3|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|LessThan6~0_combout\ = ( \U8|valor_armazenado\(5) & ( \U8|valor_armazenado\(6) & ( (!\U8|valor_armazenado\(7) & (((\U8|valor_armazenado\(4)) # (\U8|valor_armazenado\(3))) # (\U8|valor_armazenado\(2)))) ) ) ) # ( !\U8|valor_armazenado\(5) & ( 
-- \U8|valor_armazenado\(6) & ( (!\U8|valor_armazenado\(3) & (\U8|valor_armazenado\(7) & !\U8|valor_armazenado\(4))) ) ) ) # ( \U8|valor_armazenado\(5) & ( !\U8|valor_armazenado\(6) & ( \U8|valor_armazenado\(7) ) ) ) # ( !\U8|valor_armazenado\(5) & ( 
-- !\U8|valor_armazenado\(6) & ( \U8|valor_armazenado\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001100000000000111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U8|ALT_INV_valor_armazenado\(2),
	datab => \U8|ALT_INV_valor_armazenado\(3),
	datac => \U8|ALT_INV_valor_armazenado\(7),
	datad => \U8|ALT_INV_valor_armazenado\(4),
	datae => \U8|ALT_INV_valor_armazenado\(5),
	dataf => \U8|ALT_INV_valor_armazenado\(6),
	combout => \U9|U3|LessThan6~0_combout\);

-- Location: MLABCELL_X72_Y3_N27
\U9|U2|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U2|LessThan6~0_combout\ = ( \product_selection[1]~input_o\ & ( (\product_selection[2]~input_o\ & ((!\product_selection[0]~input_o\) # (!\product_selection[3]~input_o\))) ) ) # ( !\product_selection[1]~input_o\ & ( ((!\product_selection[0]~input_o\ & 
-- \product_selection[2]~input_o\)) # (\product_selection[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100110010001100100011001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datab => \ALT_INV_product_selection[2]~input_o\,
	datac => \ALT_INV_product_selection[3]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \U9|U2|LessThan6~0_combout\);

-- Location: LABCELL_X75_Y3_N36
\U9|U1|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U1|LessThan6~0_combout\ = ( \U5|valor_armazenado\(7) & ( \U5|valor_armazenado\(3) & ( !\U5|valor_armazenado\(6) ) ) ) # ( !\U5|valor_armazenado\(7) & ( \U5|valor_armazenado\(3) & ( (\U5|valor_armazenado\(5) & \U5|valor_armazenado\(6)) ) ) ) # ( 
-- \U5|valor_armazenado\(7) & ( !\U5|valor_armazenado\(3) & ( (!\U5|valor_armazenado\(6)) # ((!\U5|valor_armazenado\(5) & !\U5|valor_armazenado\(4))) ) ) ) # ( !\U5|valor_armazenado\(7) & ( !\U5|valor_armazenado\(3) & ( (\U5|valor_armazenado\(5) & 
-- (\U5|valor_armazenado\(6) & ((\U5|valor_armazenado\(2)) # (\U5|valor_armazenado\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101111110001111100000000101000001011111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U5|ALT_INV_valor_armazenado\(5),
	datab => \U5|ALT_INV_valor_armazenado\(4),
	datac => \U5|ALT_INV_valor_armazenado\(6),
	datad => \U5|ALT_INV_valor_armazenado\(2),
	datae => \U5|ALT_INV_valor_armazenado\(7),
	dataf => \U5|ALT_INV_valor_armazenado\(3),
	combout => \U9|U1|LessThan6~0_combout\);

-- Location: LABCELL_X68_Y3_N45
\U9|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux10~0_combout\ = ( !\estado_fsm[2]~input_o\ & ( \estado_fsm[0]~input_o\ & ( (!\estado_fsm[1]~input_o\ & \U9|U1|LessThan6~0_combout\) ) ) ) # ( \estado_fsm[2]~input_o\ & ( !\estado_fsm[0]~input_o\ & ( (\estado_fsm[1]~input_o\ & 
-- \U9|U2|LessThan6~0_combout\) ) ) ) # ( !\estado_fsm[2]~input_o\ & ( !\estado_fsm[0]~input_o\ & ( (!\estado_fsm[1]~input_o\ & ((\U9|U1|LessThan6~0_combout\))) # (\estado_fsm[1]~input_o\ & (\U9|U3|LessThan6~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000001010000010100000000101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[1]~input_o\,
	datab => \U9|U3|ALT_INV_LessThan6~0_combout\,
	datac => \U9|U2|ALT_INV_LessThan6~0_combout\,
	datad => \U9|U1|ALT_INV_LessThan6~0_combout\,
	datae => \ALT_INV_estado_fsm[2]~input_o\,
	dataf => \ALT_INV_estado_fsm[0]~input_o\,
	combout => \U9|Mux10~0_combout\);

-- Location: LABCELL_X73_Y3_N54
\U9|U3|temp~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|temp~3_combout\ = ( \U8|valor_armazenado\(6) & ( \U8|valor_armazenado\(2) & ( (!\U8|valor_armazenado\(5) & (!\U8|valor_armazenado\(4) $ (((\U8|valor_armazenado\(7) & \U8|valor_armazenado\(3)))))) # (\U8|valor_armazenado\(5) & 
-- ((!\U8|valor_armazenado\(4)) # ((!\U8|valor_armazenado\(7) & !\U8|valor_armazenado\(3))))) ) ) ) # ( !\U8|valor_armazenado\(6) & ( \U8|valor_armazenado\(2) & ( (!\U8|valor_armazenado\(5) & (((\U8|valor_armazenado\(7) & \U8|valor_armazenado\(3))) # 
-- (\U8|valor_armazenado\(4)))) # (\U8|valor_armazenado\(5) & (!\U8|valor_armazenado\(4) $ (((\U8|valor_armazenado\(3)) # (\U8|valor_armazenado\(7)))))) ) ) ) # ( \U8|valor_armazenado\(6) & ( !\U8|valor_armazenado\(2) & ( (!\U8|valor_armazenado\(5) & 
-- (!\U8|valor_armazenado\(4) & ((!\U8|valor_armazenado\(7)) # (!\U8|valor_armazenado\(3))))) # (\U8|valor_armazenado\(5) & (!\U8|valor_armazenado\(4) $ (((!\U8|valor_armazenado\(7) & !\U8|valor_armazenado\(3)))))) ) ) ) # ( !\U8|valor_armazenado\(6) & ( 
-- !\U8|valor_armazenado\(2) & ( (!\U8|valor_armazenado\(5) & (\U8|valor_armazenado\(4) & ((\U8|valor_armazenado\(3)) # (\U8|valor_armazenado\(7))))) # (\U8|valor_armazenado\(5) & ((!\U8|valor_armazenado\(7) & (!\U8|valor_armazenado\(3) & 
-- !\U8|valor_armazenado\(4))) # (\U8|valor_armazenado\(7) & (\U8|valor_armazenado\(3) & \U8|valor_armazenado\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000101011101111010100000001000010101111111111110101000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U8|ALT_INV_valor_armazenado\(5),
	datab => \U8|ALT_INV_valor_armazenado\(7),
	datac => \U8|ALT_INV_valor_armazenado\(3),
	datad => \U8|ALT_INV_valor_armazenado\(4),
	datae => \U8|ALT_INV_valor_armazenado\(6),
	dataf => \U8|ALT_INV_valor_armazenado\(2),
	combout => \U9|U3|temp~3_combout\);

-- Location: LABCELL_X75_Y3_N54
\U9|U1|temp~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U1|temp~3_combout\ = ( \U5|valor_armazenado\(7) & ( \U5|valor_armazenado\(3) & ( (!\U5|valor_armazenado\(5) & ((!\U5|valor_armazenado\(4) & (!\U5|valor_armazenado\(6) & \U5|valor_armazenado\(2))) # (\U5|valor_armazenado\(4) & 
-- ((!\U5|valor_armazenado\(6)) # (\U5|valor_armazenado\(2)))))) # (\U5|valor_armazenado\(5) & (!\U5|valor_armazenado\(4) $ ((!\U5|valor_armazenado\(6))))) ) ) ) # ( !\U5|valor_armazenado\(7) & ( \U5|valor_armazenado\(3) & ( (!\U5|valor_armazenado\(4) & 
-- (((\U5|valor_armazenado\(6))))) # (\U5|valor_armazenado\(4) & (!\U5|valor_armazenado\(6) & ((!\U5|valor_armazenado\(5)) # (\U5|valor_armazenado\(2))))) ) ) ) # ( \U5|valor_armazenado\(7) & ( !\U5|valor_armazenado\(3) & ( (!\U5|valor_armazenado\(4) & 
-- (((\U5|valor_armazenado\(6))))) # (\U5|valor_armazenado\(4) & (!\U5|valor_armazenado\(6) & ((!\U5|valor_armazenado\(5)) # (\U5|valor_armazenado\(2))))) ) ) ) # ( !\U5|valor_armazenado\(7) & ( !\U5|valor_armazenado\(3) & ( (!\U5|valor_armazenado\(5) & 
-- ((!\U5|valor_armazenado\(4) & (\U5|valor_armazenado\(6))) # (\U5|valor_armazenado\(4) & (!\U5|valor_armazenado\(6) & \U5|valor_armazenado\(2))))) # (\U5|valor_armazenado\(5) & ((!\U5|valor_armazenado\(4) & ((!\U5|valor_armazenado\(6)) # 
-- (\U5|valor_armazenado\(2)))) # (\U5|valor_armazenado\(4) & (\U5|valor_armazenado\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101101101001011000011110000101100001111000011010010110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U5|ALT_INV_valor_armazenado\(5),
	datab => \U5|ALT_INV_valor_armazenado\(4),
	datac => \U5|ALT_INV_valor_armazenado\(6),
	datad => \U5|ALT_INV_valor_armazenado\(2),
	datae => \U5|ALT_INV_valor_armazenado\(7),
	dataf => \U5|ALT_INV_valor_armazenado\(3),
	combout => \U9|U1|temp~3_combout\);

-- Location: LABCELL_X68_Y3_N48
\U9|U3|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|Add6~1_combout\ = ( \U9|U1|temp~3_combout\ & ( \estado_fsm[0]~input_o\ & ( (!\estado_fsm[1]~input_o\ & ((!\estado_fsm[2]~input_o\) # (\U9|U2|temp~2_combout\))) ) ) ) # ( !\U9|U1|temp~3_combout\ & ( \estado_fsm[0]~input_o\ & ( 
-- (!\estado_fsm[1]~input_o\ & (\U9|U2|temp~2_combout\ & \estado_fsm[2]~input_o\)) ) ) ) # ( \U9|U1|temp~3_combout\ & ( !\estado_fsm[0]~input_o\ & ( (!\estado_fsm[2]~input_o\ & ((!\estado_fsm[1]~input_o\) # ((\U9|U3|temp~3_combout\)))) # 
-- (\estado_fsm[2]~input_o\ & (((\U9|U2|temp~2_combout\)))) ) ) ) # ( !\U9|U1|temp~3_combout\ & ( !\estado_fsm[0]~input_o\ & ( (!\estado_fsm[2]~input_o\ & (\estado_fsm[1]~input_o\ & ((\U9|U3|temp~3_combout\)))) # (\estado_fsm[2]~input_o\ & 
-- (((\U9|U2|temp~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110011101011110011001100000000001000101010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[1]~input_o\,
	datab => \U9|U2|ALT_INV_temp~2_combout\,
	datac => \U9|U3|ALT_INV_temp~3_combout\,
	datad => \ALT_INV_estado_fsm[2]~input_o\,
	datae => \U9|U1|ALT_INV_temp~3_combout\,
	dataf => \ALT_INV_estado_fsm[0]~input_o\,
	combout => \U9|U3|Add6~1_combout\);

-- Location: LABCELL_X68_Y3_N18
\U9|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux0~0_combout\ = ( \estado_fsm[0]~input_o\ & ( \estado_fsm[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[1]~input_o\,
	dataf => \ALT_INV_estado_fsm[0]~input_o\,
	combout => \U9|Mux0~0_combout\);

-- Location: LABCELL_X67_Y3_N48
\U9|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux12~1_combout\ = ( \U9|Mux0~0_combout\ & ( (!\U9|Mux10~0_combout\ & (\U9|Mux12~0_combout\)) # (\U9|Mux10~0_combout\ & ((!\U9|U3|Add6~0_combout\ $ (!\U9|U3|Add6~1_combout\)))) ) ) # ( !\U9|Mux0~0_combout\ & ( (!\U9|Mux10~0_combout\ & 
-- (\U9|Mux12~0_combout\)) # (\U9|Mux10~0_combout\ & ((!\U9|U3|Add6~0_combout\ $ (\U9|U3|Add6~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110001010011010111000101001101010011010111000101001101011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U9|ALT_INV_Mux12~0_combout\,
	datab => \U9|U3|ALT_INV_Add6~0_combout\,
	datac => \U9|ALT_INV_Mux10~0_combout\,
	datad => \U9|U3|ALT_INV_Add6~1_combout\,
	dataf => \U9|ALT_INV_Mux0~0_combout\,
	combout => \U9|Mux12~1_combout\);

-- Location: LABCELL_X73_Y3_N51
\U9|U1|temp~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U1|temp~4_combout\ = ( \U5|valor_armazenado\(7) & ( (!\U5|valor_armazenado\(5) & !\U5|valor_armazenado\(6)) ) ) # ( !\U5|valor_armazenado\(7) & ( (\U5|valor_armazenado\(6) & ((\U5|valor_armazenado\(4)) # (\U5|valor_armazenado\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111110101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U5|ALT_INV_valor_armazenado\(5),
	datac => \U5|ALT_INV_valor_armazenado\(4),
	datad => \U5|ALT_INV_valor_armazenado\(6),
	dataf => \U5|ALT_INV_valor_armazenado\(7),
	combout => \U9|U1|temp~4_combout\);

-- Location: LABCELL_X74_Y3_N15
\U9|U3|temp~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|temp~4_combout\ = ( \U8|valor_armazenado\(6) & ( (!\U8|valor_armazenado\(7) & ((\U8|valor_armazenado\(5)) # (\U8|valor_armazenado\(4)))) ) ) # ( !\U8|valor_armazenado\(6) & ( (\U8|valor_armazenado\(7) & !\U8|valor_armazenado\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U8|ALT_INV_valor_armazenado\(7),
	datac => \U8|ALT_INV_valor_armazenado\(4),
	datad => \U8|ALT_INV_valor_armazenado\(5),
	dataf => \U8|ALT_INV_valor_armazenado\(6),
	combout => \U9|U3|temp~4_combout\);

-- Location: LABCELL_X74_Y3_N12
\U9|U2|temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U2|temp~0_combout\ = ( \U4|Mux3~0_combout\ & ( (!\U4|Mux0~0_combout\ & ((\U4|Mux1~0_combout\))) # (\U4|Mux0~0_combout\ & (!\U4|Mux2~0_combout\ & !\U4|Mux1~0_combout\)) ) ) # ( !\U4|Mux3~0_combout\ & ( (!\U4|Mux2~0_combout\ & (\U4|Mux0~0_combout\ & 
-- !\U4|Mux1~0_combout\)) # (\U4|Mux2~0_combout\ & (!\U4|Mux0~0_combout\ & \U4|Mux1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110000000011000011000000001100111100000000110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U4|ALT_INV_Mux2~0_combout\,
	datac => \U4|ALT_INV_Mux0~0_combout\,
	datad => \U4|ALT_INV_Mux1~0_combout\,
	dataf => \U4|ALT_INV_Mux3~0_combout\,
	combout => \U9|U2|temp~0_combout\);

-- Location: LABCELL_X68_Y3_N33
\U9|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux11~0_combout\ = ( \U9|Mux10~1_combout\ & ( (!\U9|Mux18~0_combout\ & (\U9|U1|temp~4_combout\)) # (\U9|Mux18~0_combout\ & ((\U9|U2|temp~0_combout\))) ) ) # ( !\U9|Mux10~1_combout\ & ( (\U9|Mux18~0_combout\ & \U9|U3|temp~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U9|U1|ALT_INV_temp~4_combout\,
	datab => \U9|ALT_INV_Mux18~0_combout\,
	datac => \U9|U3|ALT_INV_temp~4_combout\,
	datad => \U9|U2|ALT_INV_temp~0_combout\,
	dataf => \U9|ALT_INV_Mux10~1_combout\,
	combout => \U9|Mux11~0_combout\);

-- Location: LABCELL_X68_Y3_N24
\U9|U3|Add6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|Add6~2_combout\ = ( \U9|U3|temp~4_combout\ & ( (!\estado_fsm[2]~input_o\ & (((\U9|U1|temp~4_combout\)) # (\estado_fsm[1]~input_o\))) # (\estado_fsm[2]~input_o\ & (((\U9|U2|temp~0_combout\)))) ) ) # ( !\U9|U3|temp~4_combout\ & ( 
-- (!\estado_fsm[2]~input_o\ & (!\estado_fsm[1]~input_o\ & (\U9|U1|temp~4_combout\))) # (\estado_fsm[2]~input_o\ & (((\U9|U2|temp~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[1]~input_o\,
	datab => \ALT_INV_estado_fsm[2]~input_o\,
	datac => \U9|U1|ALT_INV_temp~4_combout\,
	datad => \U9|U2|ALT_INV_temp~0_combout\,
	dataf => \U9|U3|ALT_INV_temp~4_combout\,
	combout => \U9|U3|Add6~2_combout\);

-- Location: LABCELL_X68_Y3_N0
\U9|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux11~1_combout\ = ( \U9|Mux10~0_combout\ & ( \U9|Mux0~0_combout\ & ( !\U9|U3|Add6~2_combout\ $ (((!\U9|U3|Add6~1_combout\) # (!\U9|U3|Add6~0_combout\))) ) ) ) # ( !\U9|Mux10~0_combout\ & ( \U9|Mux0~0_combout\ & ( \U9|Mux11~0_combout\ ) ) ) # ( 
-- \U9|Mux10~0_combout\ & ( !\U9|Mux0~0_combout\ & ( !\U9|U3|Add6~2_combout\ $ (((!\U9|U3|Add6~1_combout\ & !\U9|U3|Add6~0_combout\))) ) ) ) # ( !\U9|Mux10~0_combout\ & ( !\U9|Mux0~0_combout\ & ( \U9|Mux11~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001111001111000001010101010101010000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U9|ALT_INV_Mux11~0_combout\,
	datab => \U9|U3|ALT_INV_Add6~1_combout\,
	datac => \U9|U3|ALT_INV_Add6~2_combout\,
	datad => \U9|U3|ALT_INV_Add6~0_combout\,
	datae => \U9|ALT_INV_Mux10~0_combout\,
	dataf => \U9|ALT_INV_Mux0~0_combout\,
	combout => \U9|Mux11~1_combout\);

-- Location: LABCELL_X68_Y3_N21
\U9|U3|Add6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|Add6~3_combout\ = ( \U9|U3|temp~3_combout\ & ( (!\estado_fsm[1]~input_o\ & !\U9|U1|temp~3_combout\) ) ) # ( !\U9|U3|temp~3_combout\ & ( (!\U9|U1|temp~3_combout\) # (\estado_fsm[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010110100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[1]~input_o\,
	datac => \U9|U1|ALT_INV_temp~3_combout\,
	dataf => \U9|U3|ALT_INV_temp~3_combout\,
	combout => \U9|U3|Add6~3_combout\);

-- Location: LABCELL_X68_Y3_N30
\U9|U3|Add6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|Add6~4_combout\ = ( \U9|U1|temp~2_combout\ & ( (!\estado_fsm[1]~input_o\) # (\U9|U3|temp~2_combout\) ) ) # ( !\U9|U1|temp~2_combout\ & ( (\estado_fsm[1]~input_o\ & \U9|U3|temp~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado_fsm[1]~input_o\,
	datad => \U9|U3|ALT_INV_temp~2_combout\,
	dataf => \U9|U1|ALT_INV_temp~2_combout\,
	combout => \U9|U3|Add6~4_combout\);

-- Location: LABCELL_X68_Y3_N54
\U9|U3|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|Add6~5_combout\ = ( \estado_fsm[2]~input_o\ & ( \U9|U3|Add6~4_combout\ & ( (!\U9|Mux0~0_combout\ & ((\U9|U2|temp~2_combout\) # (\U9|U2|temp~3_combout\))) ) ) ) # ( !\estado_fsm[2]~input_o\ & ( \U9|U3|Add6~4_combout\ & ( !\U9|Mux0~0_combout\ ) ) ) # 
-- ( \estado_fsm[2]~input_o\ & ( !\U9|U3|Add6~4_combout\ & ( (!\U9|Mux0~0_combout\ & ((\U9|U2|temp~2_combout\) # (\U9|U2|temp~3_combout\))) ) ) ) # ( !\estado_fsm[2]~input_o\ & ( !\U9|U3|Add6~4_combout\ & ( (!\U9|U3|Add6~3_combout\ & !\U9|Mux0~0_combout\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000010100001111000011110000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U9|U2|ALT_INV_temp~3_combout\,
	datab => \U9|U3|ALT_INV_Add6~3_combout\,
	datac => \U9|ALT_INV_Mux0~0_combout\,
	datad => \U9|U2|ALT_INV_temp~2_combout\,
	datae => \ALT_INV_estado_fsm[2]~input_o\,
	dataf => \U9|U3|ALT_INV_Add6~4_combout\,
	combout => \U9|U3|Add6~5_combout\);

-- Location: LABCELL_X70_Y3_N36
\U9|U2|temp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U2|temp~1_combout\ = ( !\product_selection[3]~input_o\ & ( (\product_selection[2]~input_o\ & (!\product_selection[1]~input_o\ $ (\product_selection[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000011000000001100001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_product_selection[1]~input_o\,
	datac => \ALT_INV_product_selection[0]~input_o\,
	datad => \ALT_INV_product_selection[2]~input_o\,
	dataf => \ALT_INV_product_selection[3]~input_o\,
	combout => \U9|U2|temp~1_combout\);

-- Location: LABCELL_X73_Y3_N27
\U9|U3|temp~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|temp~5_combout\ = ( \U8|valor_armazenado\(5) & ( (!\U8|valor_armazenado\(6) & \U8|valor_armazenado\(7)) ) ) # ( !\U8|valor_armazenado\(5) & ( (!\U8|valor_armazenado\(3) & (\U8|valor_armazenado\(6) & (\U8|valor_armazenado\(7) & 
-- !\U8|valor_armazenado\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U8|ALT_INV_valor_armazenado\(3),
	datab => \U8|ALT_INV_valor_armazenado\(6),
	datac => \U8|ALT_INV_valor_armazenado\(7),
	datad => \U8|ALT_INV_valor_armazenado\(4),
	dataf => \U8|ALT_INV_valor_armazenado\(5),
	combout => \U9|U3|temp~5_combout\);

-- Location: LABCELL_X73_Y3_N48
\U9|U1|temp~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U1|temp~5_combout\ = ( \U5|valor_armazenado\(3) & ( (\U5|valor_armazenado\(5) & (\U5|valor_armazenado\(7) & !\U5|valor_armazenado\(6))) ) ) # ( !\U5|valor_armazenado\(3) & ( (\U5|valor_armazenado\(7) & ((!\U5|valor_armazenado\(5) & 
-- (!\U5|valor_armazenado\(4) & \U5|valor_armazenado\(6))) # (\U5|valor_armazenado\(5) & ((!\U5|valor_armazenado\(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001000000001010000100000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U5|ALT_INV_valor_armazenado\(5),
	datab => \U5|ALT_INV_valor_armazenado\(4),
	datac => \U5|ALT_INV_valor_armazenado\(7),
	datad => \U5|ALT_INV_valor_armazenado\(6),
	dataf => \U5|ALT_INV_valor_armazenado\(3),
	combout => \U9|U1|temp~5_combout\);

-- Location: LABCELL_X68_Y3_N27
\U9|U3|Add6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|U3|Add6~6_combout\ = ( \U9|U1|temp~5_combout\ & ( (!\estado_fsm[2]~input_o\ & ((!\estado_fsm[1]~input_o\) # ((\U9|U3|temp~5_combout\)))) # (\estado_fsm[2]~input_o\ & (((\U9|U2|temp~1_combout\)))) ) ) # ( !\U9|U1|temp~5_combout\ & ( 
-- (!\estado_fsm[2]~input_o\ & (\estado_fsm[1]~input_o\ & ((\U9|U3|temp~5_combout\)))) # (\estado_fsm[2]~input_o\ & (((\U9|U2|temp~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[1]~input_o\,
	datab => \ALT_INV_estado_fsm[2]~input_o\,
	datac => \U9|U2|ALT_INV_temp~1_combout\,
	datad => \U9|U3|ALT_INV_temp~5_combout\,
	dataf => \U9|U1|ALT_INV_temp~5_combout\,
	combout => \U9|U3|Add6~6_combout\);

-- Location: LABCELL_X68_Y3_N6
\U9|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux10~2_combout\ = ( \U9|U1|temp~5_combout\ & ( (!\U9|Mux18~0_combout\ & (((\U9|Mux10~1_combout\)))) # (\U9|Mux18~0_combout\ & ((!\U9|Mux10~1_combout\ & (\U9|U3|temp~5_combout\)) # (\U9|Mux10~1_combout\ & ((\U9|U2|temp~1_combout\))))) ) ) # ( 
-- !\U9|U1|temp~5_combout\ & ( (\U9|Mux18~0_combout\ & ((!\U9|Mux10~1_combout\ & (\U9|U3|temp~5_combout\)) # (\U9|Mux10~1_combout\ & ((\U9|U2|temp~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000100000001001100011100000111110001110000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U9|U3|ALT_INV_temp~5_combout\,
	datab => \U9|ALT_INV_Mux18~0_combout\,
	datac => \U9|ALT_INV_Mux10~1_combout\,
	datad => \U9|U2|ALT_INV_temp~1_combout\,
	dataf => \U9|U1|ALT_INV_temp~5_combout\,
	combout => \U9|Mux10~2_combout\);

-- Location: LABCELL_X68_Y3_N12
\U9|Mux10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux10~3_combout\ = ( \U9|Mux10~2_combout\ & ( (!\U9|Mux10~0_combout\) # (!\U9|U3|Add6~6_combout\ $ (((!\U9|U3|Add6~2_combout\) # (!\U9|U3|Add6~5_combout\)))) ) ) # ( !\U9|Mux10~2_combout\ & ( (\U9|Mux10~0_combout\ & (!\U9|U3|Add6~6_combout\ $ 
-- (((!\U9|U3|Add6~2_combout\) # (!\U9|U3|Add6~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110010000000010011001011001101111111101100110111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U9|U3|ALT_INV_Add6~2_combout\,
	datab => \U9|ALT_INV_Mux10~0_combout\,
	datac => \U9|U3|ALT_INV_Add6~5_combout\,
	datad => \U9|U3|ALT_INV_Add6~6_combout\,
	dataf => \U9|ALT_INV_Mux10~2_combout\,
	combout => \U9|Mux10~3_combout\);

-- Location: LABCELL_X73_Y3_N0
\U9|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux9~1_combout\ = ( !\U5|valor_armazenado\(3) & ( (!\U5|valor_armazenado\(4) & !\U5|valor_armazenado\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U5|ALT_INV_valor_armazenado\(4),
	datac => \U5|ALT_INV_valor_armazenado\(5),
	dataf => \U5|ALT_INV_valor_armazenado\(3),
	combout => \U9|Mux9~1_combout\);

-- Location: LABCELL_X73_Y3_N18
\U9|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux9~2_combout\ = ( \U5|valor_armazenado\(7) & ( (!\estado_fsm[1]~input_o\ & (!\estado_fsm[2]~input_o\ & (!\U9|Mux9~1_combout\ & \U5|valor_armazenado\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[1]~input_o\,
	datab => \ALT_INV_estado_fsm[2]~input_o\,
	datac => \U9|ALT_INV_Mux9~1_combout\,
	datad => \U5|ALT_INV_valor_armazenado\(6),
	dataf => \U5|ALT_INV_valor_armazenado\(7),
	combout => \U9|Mux9~2_combout\);

-- Location: MLABCELL_X72_Y3_N9
\U9|Mux9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux9~4_combout\ = ( \estado_fsm[2]~input_o\ & ( \product_selection[1]~input_o\ & ( (\product_selection[0]~input_o\ & (!\product_selection[2]~input_o\ & !\product_selection[3]~input_o\)) ) ) ) # ( \estado_fsm[2]~input_o\ & ( 
-- !\product_selection[1]~input_o\ & ( (\product_selection[0]~input_o\ & (\product_selection[2]~input_o\ & !\product_selection[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000001000000000000000000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datab => \ALT_INV_product_selection[2]~input_o\,
	datac => \ALT_INV_product_selection[3]~input_o\,
	datae => \ALT_INV_estado_fsm[2]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \U9|Mux9~4_combout\);

-- Location: LABCELL_X73_Y3_N6
\U9|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux9~0_combout\ = ( \U8|valor_armazenado\(6) & ( \U8|valor_armazenado\(3) & ( (\U8|valor_armazenado\(7) & !\estado_fsm[2]~input_o\) ) ) ) # ( \U8|valor_armazenado\(6) & ( !\U8|valor_armazenado\(3) & ( (\U8|valor_armazenado\(7) & 
-- (!\estado_fsm[2]~input_o\ & ((\U8|valor_armazenado\(4)) # (\U8|valor_armazenado\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001110000000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U8|ALT_INV_valor_armazenado\(5),
	datab => \U8|ALT_INV_valor_armazenado\(4),
	datac => \U8|ALT_INV_valor_armazenado\(7),
	datad => \ALT_INV_estado_fsm[2]~input_o\,
	datae => \U8|ALT_INV_valor_armazenado\(6),
	dataf => \U8|ALT_INV_valor_armazenado\(3),
	combout => \U9|Mux9~0_combout\);

-- Location: LABCELL_X73_Y3_N3
\U9|Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux9~3_combout\ = ( \U9|Mux9~0_combout\ & ( (\U9|Mux18~0_combout\) # (\U9|Mux9~2_combout\) ) ) # ( !\U9|Mux9~0_combout\ & ( ((\U9|Mux9~4_combout\ & \U9|Mux18~0_combout\)) # (\U9|Mux9~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U9|ALT_INV_Mux9~2_combout\,
	datac => \U9|ALT_INV_Mux9~4_combout\,
	datad => \U9|ALT_INV_Mux18~0_combout\,
	dataf => \U9|ALT_INV_Mux9~0_combout\,
	combout => \U9|Mux9~3_combout\);

-- Location: LABCELL_X66_Y3_N12
\U9|Mux16~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux16~5_combout\ = ( !\estado_fsm[2]~input_o\ & ( (!\estado_fsm[1]~input_o\) # (\estado_fsm[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado_fsm[0]~input_o\,
	datad => \ALT_INV_estado_fsm[1]~input_o\,
	dataf => \ALT_INV_estado_fsm[2]~input_o\,
	combout => \U9|Mux16~5_combout\);

-- Location: LABCELL_X66_Y1_N51
\U9|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux5~0_combout\ = ( !\estado_fsm[2]~input_o\ & ( \estado_fsm[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado_fsm[0]~input_o\,
	dataf => \ALT_INV_estado_fsm[2]~input_o\,
	combout => \U9|Mux5~0_combout\);

-- Location: LABCELL_X70_Y3_N39
\U9|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux4~0_combout\ = ( !\estado_fsm[1]~input_o\ & ( (!\estado_fsm[0]~input_o\ & !\estado_fsm[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[0]~input_o\,
	datac => \ALT_INV_estado_fsm[2]~input_o\,
	dataf => \ALT_INV_estado_fsm[1]~input_o\,
	combout => \U9|Mux4~0_combout\);

-- Location: LABCELL_X66_Y1_N33
\U9|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux2~0_combout\ = ( \estado_fsm[1]~input_o\ & ( !\estado_fsm[2]~input_o\ $ (!\estado_fsm[0]~input_o\) ) ) # ( !\estado_fsm[1]~input_o\ & ( (\estado_fsm[2]~input_o\ & \estado_fsm[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_estado_fsm[2]~input_o\,
	datac => \ALT_INV_estado_fsm[0]~input_o\,
	dataf => \ALT_INV_estado_fsm[1]~input_o\,
	combout => \U9|Mux2~0_combout\);

-- Location: LABCELL_X66_Y1_N15
\U9|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux1~0_combout\ = ( \estado_fsm[1]~input_o\ & ( (!\estado_fsm[2]~input_o\) # (!\estado_fsm[0]~input_o\) ) ) # ( !\estado_fsm[1]~input_o\ & ( (!\estado_fsm[0]~input_o\) # (\estado_fsm[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001111111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_estado_fsm[2]~input_o\,
	datac => \ALT_INV_estado_fsm[0]~input_o\,
	dataf => \ALT_INV_estado_fsm[1]~input_o\,
	combout => \U9|Mux1~0_combout\);

-- Location: LABCELL_X66_Y3_N24
\U9|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux0~1_combout\ = ( \estado_fsm[2]~input_o\ & ( (\estado_fsm[0]~input_o\ & \estado_fsm[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado_fsm[0]~input_o\,
	datad => \ALT_INV_estado_fsm[1]~input_o\,
	dataf => \ALT_INV_estado_fsm[2]~input_o\,
	combout => \U9|Mux0~1_combout\);

-- Location: LABCELL_X66_Y3_N15
\U7|display_counter[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|display_counter[0]~2_combout\ = !\U7|display_counter\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U7|ALT_INV_display_counter\(0),
	combout => \U7|display_counter[0]~2_combout\);

-- Location: FF_X66_Y3_N17
\U7|display_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U7|display_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|display_counter\(0));

-- Location: FF_X66_Y3_N56
\U7|display_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U7|display_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|display_counter\(1));

-- Location: LABCELL_X66_Y3_N54
\U7|display_counter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|display_counter~0_combout\ = ( \U7|display_counter\(0) & ( (!\U7|display_counter\(2) & !\U7|display_counter\(1)) ) ) # ( !\U7|display_counter\(0) & ( \U7|display_counter\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U7|ALT_INV_display_counter\(2),
	datad => \U7|ALT_INV_display_counter\(1),
	dataf => \U7|ALT_INV_display_counter\(0),
	combout => \U7|display_counter~0_combout\);

-- Location: FF_X66_Y3_N55
\U7|display_counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U7|display_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|display_counter[1]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y3_N27
\U7|display_counter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|display_counter~1_combout\ = ( \U7|display_counter[1]~DUPLICATE_q\ & ( !\U7|display_counter\(0) $ (!\U7|display_counter\(2)) ) ) # ( !\U7|display_counter[1]~DUPLICATE_q\ & ( (!\U7|display_counter\(0) & \U7|display_counter\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U7|ALT_INV_display_counter\(0),
	datad => \U7|ALT_INV_display_counter\(2),
	dataf => \U7|ALT_INV_display_counter[1]~DUPLICATE_q\,
	combout => \U7|display_counter~1_combout\);

-- Location: FF_X66_Y3_N29
\U7|display_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U7|display_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|display_counter\(2));

-- Location: LABCELL_X67_Y3_N51
\U7|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux3~1_combout\ = ( !\U7|display_counter\(1) & ( (!\U7|display_counter\(2) & !\U7|display_counter\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U7|ALT_INV_display_counter\(2),
	datad => \U7|ALT_INV_display_counter\(0),
	dataf => \U7|ALT_INV_display_counter\(1),
	combout => \U7|Mux3~1_combout\);

-- Location: LABCELL_X67_Y3_N12
\U7|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux3~2_combout\ = ( \estado_fsm[2]~input_o\ & ( (\U4|Mux7~0_combout\ & (\U7|Mux3~1_combout\ & \U9|Mux18~0_combout\)) ) ) # ( !\estado_fsm[2]~input_o\ & ( (\U9|Mux18~1_combout\ & \U7|Mux3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U9|ALT_INV_Mux18~1_combout\,
	datab => \U4|ALT_INV_Mux7~0_combout\,
	datac => \U7|ALT_INV_Mux3~1_combout\,
	datad => \U9|ALT_INV_Mux18~0_combout\,
	dataf => \ALT_INV_estado_fsm[2]~input_o\,
	combout => \U7|Mux3~2_combout\);

-- Location: LABCELL_X66_Y3_N0
\U7|Mux3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux3~4_combout\ = ( \U7|display_counter\(0) & ( (\U7|display_counter\(2) & \U9|Mux2~0_combout\) ) ) # ( !\U7|display_counter\(0) & ( (\U9|Mux16~5_combout\ & \U7|display_counter\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U9|ALT_INV_Mux16~5_combout\,
	datac => \U7|ALT_INV_display_counter\(2),
	datad => \U9|ALT_INV_Mux2~0_combout\,
	dataf => \U7|ALT_INV_display_counter\(0),
	combout => \U7|Mux3~4_combout\);

-- Location: LABCELL_X67_Y3_N9
\U7|Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux3~3_combout\ = ( \U7|display_counter\(0) & ( (!\U7|display_counter\(1) & !\U7|display_counter\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U7|ALT_INV_display_counter\(1),
	datab => \U7|ALT_INV_display_counter\(2),
	dataf => \U7|ALT_INV_display_counter\(0),
	combout => \U7|Mux3~3_combout\);

-- Location: LABCELL_X67_Y3_N6
\U7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux3~0_combout\ = ( !\U7|display_counter\(0) & ( (\U7|display_counter\(1) & !\U7|display_counter\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U7|ALT_INV_display_counter\(1),
	datab => \U7|ALT_INV_display_counter\(2),
	dataf => \U7|ALT_INV_display_counter\(0),
	combout => \U7|Mux3~0_combout\);

-- Location: LABCELL_X67_Y3_N0
\U7|Mux3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux3~5_combout\ = ( \U7|Mux3~3_combout\ & ( \U7|Mux3~0_combout\ & ( (!\U9|Mux14~0_combout\ & (!\U7|Mux3~2_combout\ & (!\U9|Mux10~3_combout\ & !\U7|Mux3~4_combout\))) ) ) ) # ( !\U7|Mux3~3_combout\ & ( \U7|Mux3~0_combout\ & ( (!\U7|Mux3~2_combout\ & 
-- (!\U9|Mux10~3_combout\ & !\U7|Mux3~4_combout\)) ) ) ) # ( \U7|Mux3~3_combout\ & ( !\U7|Mux3~0_combout\ & ( (!\U9|Mux14~0_combout\ & (!\U7|Mux3~2_combout\ & !\U7|Mux3~4_combout\)) ) ) ) # ( !\U7|Mux3~3_combout\ & ( !\U7|Mux3~0_combout\ & ( 
-- (!\U7|Mux3~2_combout\ & !\U7|Mux3~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000100010000000000011000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U9|ALT_INV_Mux14~0_combout\,
	datab => \U7|ALT_INV_Mux3~2_combout\,
	datac => \U9|ALT_INV_Mux10~3_combout\,
	datad => \U7|ALT_INV_Mux3~4_combout\,
	datae => \U7|ALT_INV_Mux3~3_combout\,
	dataf => \U7|ALT_INV_Mux3~0_combout\,
	combout => \U7|Mux3~5_combout\);

-- Location: LABCELL_X66_Y3_N18
\U7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux2~0_combout\ = ( \estado_fsm[2]~input_o\ & ( (\U7|display_counter\(2) & (\U7|display_counter\(0) & !\estado_fsm[1]~input_o\)) ) ) # ( !\estado_fsm[2]~input_o\ & ( (\U7|display_counter\(2) & ((!\U7|display_counter\(0) & (\estado_fsm[0]~input_o\)) # 
-- (\U7|display_counter\(0) & ((!\estado_fsm[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000100000101010000010000010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U7|ALT_INV_display_counter\(2),
	datab => \U7|ALT_INV_display_counter\(0),
	datac => \ALT_INV_estado_fsm[0]~input_o\,
	datad => \ALT_INV_estado_fsm[1]~input_o\,
	dataf => \ALT_INV_estado_fsm[2]~input_o\,
	combout => \U7|Mux2~0_combout\);

-- Location: LABCELL_X67_Y3_N18
\U7|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux2~1_combout\ = ( \U9|Mux18~0_combout\ & ( \U9|Mux9~4_combout\ & ( (!\U7|Mux2~0_combout\ & !\U7|Mux3~0_combout\) ) ) ) # ( !\U9|Mux18~0_combout\ & ( \U9|Mux9~4_combout\ & ( (!\U7|Mux2~0_combout\ & ((!\U9|Mux9~2_combout\) # (!\U7|Mux3~0_combout\))) ) 
-- ) ) # ( \U9|Mux18~0_combout\ & ( !\U9|Mux9~4_combout\ & ( (!\U7|Mux2~0_combout\ & ((!\U7|Mux3~0_combout\) # ((!\U9|Mux9~2_combout\ & !\U9|Mux9~0_combout\)))) ) ) ) # ( !\U9|Mux18~0_combout\ & ( !\U9|Mux9~4_combout\ & ( (!\U7|Mux2~0_combout\ & 
-- ((!\U9|Mux9~2_combout\) # (!\U7|Mux3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010001000110011001000000011001100100010001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U9|ALT_INV_Mux9~2_combout\,
	datab => \U7|ALT_INV_Mux2~0_combout\,
	datac => \U9|ALT_INV_Mux9~0_combout\,
	datad => \U7|ALT_INV_Mux3~0_combout\,
	datae => \U9|ALT_INV_Mux18~0_combout\,
	dataf => \U9|ALT_INV_Mux9~4_combout\,
	combout => \U7|Mux2~1_combout\);

-- Location: LABCELL_X67_Y3_N24
\U7|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux2~2_combout\ = ( \U7|Mux3~3_combout\ & ( \U7|Mux3~1_combout\ & ( (!\U9|Mux13~0_combout\ & (!\U9|Mux17~2_combout\ & (\U7|Mux2~1_combout\ & !\U9|Mux17~0_combout\))) ) ) ) # ( !\U7|Mux3~3_combout\ & ( \U7|Mux3~1_combout\ & ( (!\U9|Mux17~2_combout\ & 
-- (\U7|Mux2~1_combout\ & !\U9|Mux17~0_combout\)) ) ) ) # ( \U7|Mux3~3_combout\ & ( !\U7|Mux3~1_combout\ & ( (!\U9|Mux13~0_combout\ & \U7|Mux2~1_combout\) ) ) ) # ( !\U7|Mux3~3_combout\ & ( !\U7|Mux3~1_combout\ & ( \U7|Mux2~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000010100000101000001100000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U9|ALT_INV_Mux13~0_combout\,
	datab => \U9|ALT_INV_Mux17~2_combout\,
	datac => \U7|ALT_INV_Mux2~1_combout\,
	datad => \U9|ALT_INV_Mux17~0_combout\,
	datae => \U7|ALT_INV_Mux3~3_combout\,
	dataf => \U7|ALT_INV_Mux3~1_combout\,
	combout => \U7|Mux2~2_combout\);

-- Location: LABCELL_X67_Y3_N36
\U7|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux1~1_combout\ = ( \U9|U3|Add6~0_combout\ & ( \U9|Mux0~0_combout\ & ( (\U7|Mux3~3_combout\ & ((!\U9|Mux10~0_combout\ & ((\U9|Mux12~0_combout\))) # (\U9|Mux10~0_combout\ & (!\U9|U3|Add6~1_combout\)))) ) ) ) # ( !\U9|U3|Add6~0_combout\ & ( 
-- \U9|Mux0~0_combout\ & ( (\U7|Mux3~3_combout\ & ((!\U9|Mux10~0_combout\ & ((\U9|Mux12~0_combout\))) # (\U9|Mux10~0_combout\ & (\U9|U3|Add6~1_combout\)))) ) ) ) # ( \U9|U3|Add6~0_combout\ & ( !\U9|Mux0~0_combout\ & ( (\U7|Mux3~3_combout\ & 
-- ((!\U9|Mux10~0_combout\ & ((\U9|Mux12~0_combout\))) # (\U9|Mux10~0_combout\ & (\U9|U3|Add6~1_combout\)))) ) ) ) # ( !\U9|U3|Add6~0_combout\ & ( !\U9|Mux0~0_combout\ & ( (\U7|Mux3~3_combout\ & ((!\U9|Mux10~0_combout\ & ((\U9|Mux12~0_combout\))) # 
-- (\U9|Mux10~0_combout\ & (!\U9|U3|Add6~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001110000000000001101100000000000110110000000001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U9|ALT_INV_Mux10~0_combout\,
	datab => \U9|U3|ALT_INV_Add6~1_combout\,
	datac => \U9|ALT_INV_Mux12~0_combout\,
	datad => \U7|ALT_INV_Mux3~3_combout\,
	datae => \U9|U3|ALT_INV_Add6~0_combout\,
	dataf => \U9|ALT_INV_Mux0~0_combout\,
	combout => \U7|Mux1~1_combout\);

-- Location: LABCELL_X67_Y3_N42
\U7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux1~0_combout\ = ( \U7|display_counter\(1) ) # ( !\U7|display_counter\(1) & ( (\U7|display_counter\(2)) # (\U7|display_counter\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U7|ALT_INV_display_counter\(0),
	datab => \U7|ALT_INV_display_counter\(2),
	dataf => \U7|ALT_INV_display_counter\(1),
	combout => \U7|Mux1~0_combout\);

-- Location: LABCELL_X67_Y3_N45
\U7|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux1~2_combout\ = ( \U9|Mux1~0_combout\ & ( (\U7|display_counter\(2) & ((\U9|Mux4~0_combout\) # (\U7|display_counter\(0)))) ) ) # ( !\U9|Mux1~0_combout\ & ( (!\U7|display_counter\(0) & (\U7|display_counter\(2) & \U9|Mux4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U7|ALT_INV_display_counter\(0),
	datab => \U7|ALT_INV_display_counter\(2),
	datac => \U9|ALT_INV_Mux4~0_combout\,
	dataf => \U9|ALT_INV_Mux1~0_combout\,
	combout => \U7|Mux1~2_combout\);

-- Location: LABCELL_X71_Y3_N42
\U9|Mux16~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|Mux16~6_combout\ = ( \U9|U3|LessThan5~1_combout\ & ( !\U9|Mux16~7_combout\ & ( ((\estado_fsm[1]~input_o\) # (\estado_fsm[2]~input_o\)) # (\U9|U1|LessThan5~1_combout\) ) ) ) # ( !\U9|U3|LessThan5~1_combout\ & ( !\U9|Mux16~7_combout\ & ( 
-- ((!\estado_fsm[1]~input_o\ & ((\U9|U1|LessThan5~1_combout\))) # (\estado_fsm[1]~input_o\ & (\estado_fsm[0]~input_o\))) # (\estado_fsm[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111101011111001111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[0]~input_o\,
	datab => \U9|U1|ALT_INV_LessThan5~1_combout\,
	datac => \ALT_INV_estado_fsm[2]~input_o\,
	datad => \ALT_INV_estado_fsm[1]~input_o\,
	datae => \U9|U3|ALT_INV_LessThan5~1_combout\,
	dataf => \U9|ALT_INV_Mux16~7_combout\,
	combout => \U9|Mux16~6_combout\);

-- Location: LABCELL_X67_Y3_N54
\U7|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux1~3_combout\ = ( \U9|Mux16~3_combout\ & ( \U9|Mux16~6_combout\ & ( (!\U7|Mux1~1_combout\ & !\U7|Mux1~2_combout\) ) ) ) # ( !\U9|Mux16~3_combout\ & ( \U9|Mux16~6_combout\ & ( (!\U7|Mux1~1_combout\ & (\U7|Mux1~0_combout\ & !\U7|Mux1~2_combout\)) ) ) 
-- ) # ( \U9|Mux16~3_combout\ & ( !\U9|Mux16~6_combout\ & ( (!\U7|Mux1~1_combout\ & (!\U7|Mux1~2_combout\ & ((\U9|U3|Add5~1_combout\) # (\U7|Mux1~0_combout\)))) ) ) ) # ( !\U9|Mux16~3_combout\ & ( !\U9|Mux16~6_combout\ & ( (!\U7|Mux1~1_combout\ & 
-- (!\U7|Mux1~2_combout\ & ((\U9|U3|Add5~1_combout\) # (\U7|Mux1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000000001010100000000000100010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U7|ALT_INV_Mux1~1_combout\,
	datab => \U7|ALT_INV_Mux1~0_combout\,
	datac => \U9|U3|ALT_INV_Add5~1_combout\,
	datad => \U7|ALT_INV_Mux1~2_combout\,
	datae => \U9|ALT_INV_Mux16~3_combout\,
	dataf => \U9|ALT_INV_Mux16~6_combout\,
	combout => \U7|Mux1~3_combout\);

-- Location: LABCELL_X66_Y3_N30
\U7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux0~0_combout\ = ( !\U7|display_counter\(2) & ( ((!\U7|display_counter\(1) & ((!\U7|display_counter\(0) & (\U9|Mux15~2_combout\)) # (\U7|display_counter\(0) & ((\U9|Mux11~1_combout\)))))) ) ) # ( \U7|display_counter\(2) & ( 
-- (((!\U7|display_counter\(0) & ((\U9|Mux16~5_combout\))) # (\U7|display_counter\(0) & (!\U9|Mux0~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011000000110000000011110000111100000000111100001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U9|ALT_INV_Mux0~1_combout\,
	datab => \U9|ALT_INV_Mux15~2_combout\,
	datac => \U9|ALT_INV_Mux16~5_combout\,
	datad => \U9|ALT_INV_Mux11~1_combout\,
	datae => \U7|ALT_INV_display_counter\(2),
	dataf => \U7|ALT_INV_display_counter\(0),
	datag => \U7|ALT_INV_display_counter\(1),
	combout => \U7|Mux0~0_combout\);

-- Location: LABCELL_X66_Y3_N9
\U7|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux10~0_combout\ = ( \U7|Mux0~0_combout\ & ( (!\U7|Mux3~5_combout\ & (!\U7|Mux2~2_combout\ & \U7|Mux1~3_combout\)) # (\U7|Mux3~5_combout\ & (\U7|Mux2~2_combout\ & !\U7|Mux1~3_combout\)) ) ) # ( !\U7|Mux0~0_combout\ & ( (\U7|Mux2~2_combout\ & 
-- (!\U7|Mux3~5_combout\ $ (!\U7|Mux1~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000011000000110000001100000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U7|ALT_INV_Mux3~5_combout\,
	datab => \U7|ALT_INV_Mux2~2_combout\,
	datac => \U7|ALT_INV_Mux1~3_combout\,
	dataf => \U7|ALT_INV_Mux0~0_combout\,
	combout => \U7|Mux10~0_combout\);

-- Location: LABCELL_X66_Y3_N57
\U7|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux9~0_combout\ = ( \U7|Mux0~0_combout\ & ( (!\U7|Mux2~2_combout\) # ((\U7|Mux3~5_combout\ & !\U7|Mux1~3_combout\)) ) ) # ( !\U7|Mux0~0_combout\ & ( (!\U7|Mux1~3_combout\ & (!\U7|Mux3~5_combout\ $ (!\U7|Mux2~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000011011100110111001101110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U7|ALT_INV_Mux3~5_combout\,
	datab => \U7|ALT_INV_Mux2~2_combout\,
	datac => \U7|ALT_INV_Mux1~3_combout\,
	dataf => \U7|ALT_INV_Mux0~0_combout\,
	combout => \U7|Mux9~0_combout\);

-- Location: LABCELL_X66_Y3_N48
\U7|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux8~0_combout\ = ( \U7|Mux2~2_combout\ & ( (\U7|Mux0~0_combout\ & !\U7|Mux1~3_combout\) ) ) # ( !\U7|Mux2~2_combout\ & ( !\U7|Mux0~0_combout\ $ (((!\U7|Mux3~5_combout\) # (!\U7|Mux1~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U7|ALT_INV_Mux0~0_combout\,
	datac => \U7|ALT_INV_Mux3~5_combout\,
	datad => \U7|ALT_INV_Mux1~3_combout\,
	dataf => \U7|ALT_INV_Mux2~2_combout\,
	combout => \U7|Mux8~0_combout\);

-- Location: LABCELL_X66_Y3_N3
\U7|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux7~0_combout\ = ( \U7|Mux0~0_combout\ & ( (!\U7|Mux3~5_combout\ & !\U7|Mux1~3_combout\) ) ) # ( !\U7|Mux0~0_combout\ & ( (!\U7|Mux3~5_combout\ & (!\U7|Mux2~2_combout\ $ (\U7|Mux1~3_combout\))) # (\U7|Mux3~5_combout\ & (\U7|Mux2~2_combout\ & 
-- !\U7|Mux1~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100001010101001010000101010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U7|ALT_INV_Mux3~5_combout\,
	datac => \U7|ALT_INV_Mux2~2_combout\,
	datad => \U7|ALT_INV_Mux1~3_combout\,
	dataf => \U7|ALT_INV_Mux0~0_combout\,
	combout => \U7|Mux7~0_combout\);

-- Location: LABCELL_X66_Y3_N6
\U7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux6~0_combout\ = ( \U7|Mux0~0_combout\ & ( (\U7|Mux1~3_combout\ & (!\U7|Mux2~2_combout\ $ (!\U7|Mux3~5_combout\))) ) ) # ( !\U7|Mux0~0_combout\ & ( (!\U7|Mux3~5_combout\) # ((\U7|Mux2~2_combout\ & !\U7|Mux1~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110000111100111111000000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U7|ALT_INV_Mux2~2_combout\,
	datac => \U7|ALT_INV_Mux3~5_combout\,
	datad => \U7|ALT_INV_Mux1~3_combout\,
	dataf => \U7|ALT_INV_Mux0~0_combout\,
	combout => \U7|Mux6~0_combout\);

-- Location: LABCELL_X66_Y3_N42
\U7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux5~0_combout\ = ( !\U7|Mux0~0_combout\ & ( (!\U7|Mux2~2_combout\ & ((!\U7|Mux3~5_combout\) # (\U7|Mux1~3_combout\))) # (\U7|Mux2~2_combout\ & (!\U7|Mux3~5_combout\ & \U7|Mux1~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011111100110000001111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U7|ALT_INV_Mux2~2_combout\,
	datac => \U7|ALT_INV_Mux3~5_combout\,
	datad => \U7|ALT_INV_Mux1~3_combout\,
	dataf => \U7|ALT_INV_Mux0~0_combout\,
	combout => \U7|Mux5~0_combout\);

-- Location: LABCELL_X66_Y3_N45
\U7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux4~0_combout\ = ( \U7|Mux0~0_combout\ & ( ((!\U7|Mux1~3_combout\) # (\U7|Mux2~2_combout\)) # (\U7|Mux3~5_combout\) ) ) # ( !\U7|Mux0~0_combout\ & ( (!\U7|Mux2~2_combout\ & ((\U7|Mux1~3_combout\) # (\U7|Mux3~5_combout\))) # (\U7|Mux2~2_combout\ & 
-- ((!\U7|Mux1~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111110001111100011111000111110011110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U7|ALT_INV_Mux3~5_combout\,
	datab => \U7|ALT_INV_Mux2~2_combout\,
	datac => \U7|ALT_INV_Mux1~3_combout\,
	dataf => \U7|ALT_INV_Mux0~0_combout\,
	combout => \U7|Mux4~0_combout\);

-- Location: LABCELL_X66_Y3_N36
\U7|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux14~0_combout\ = ( \U7|display_counter\(0) ) # ( !\U7|display_counter\(0) & ( !\U7|display_counter\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U7|ALT_INV_display_counter\(1),
	dataf => \U7|ALT_INV_display_counter\(0),
	combout => \U7|Mux14~0_combout\);

-- Location: LABCELL_X66_Y3_N39
\U7|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux13~0_combout\ = ( \U7|display_counter\(0) & ( !\U7|display_counter\(1) ) ) # ( !\U7|display_counter\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U7|ALT_INV_display_counter\(1),
	dataf => \U7|ALT_INV_display_counter\(0),
	combout => \U7|Mux13~0_combout\);

-- Location: LABCELL_X66_Y3_N21
\U7|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux12~0_combout\ = (!\U7|display_counter\(2)) # (\U7|display_counter\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U7|ALT_INV_display_counter\(2),
	datab => \U7|ALT_INV_display_counter\(0),
	combout => \U7|Mux12~0_combout\);

-- Location: LABCELL_X66_Y3_N51
\U7|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|Mux12~1_combout\ = ( \U7|display_counter\(0) & ( \U7|display_counter\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U7|ALT_INV_display_counter\(2),
	dataf => \U7|ALT_INV_display_counter\(0),
	combout => \U7|Mux12~1_combout\);

-- Location: LABCELL_X74_Y3_N54
\U3|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|LessThan0~2_combout\ = ( \U4|Mux7~0_combout\ & ( \U4|Mux5~0_combout\ & ( (\U5|valor_armazenado\(1) & (\U5|valor_armazenado\(2) & !\U4|Mux6~0_combout\)) ) ) ) # ( !\U4|Mux7~0_combout\ & ( \U4|Mux5~0_combout\ & ( (\U5|valor_armazenado\(2) & 
-- ((!\U5|valor_armazenado\(0) & (\U5|valor_armazenado\(1) & !\U4|Mux6~0_combout\)) # (\U5|valor_armazenado\(0) & ((!\U4|Mux6~0_combout\) # (\U5|valor_armazenado\(1)))))) ) ) ) # ( \U4|Mux7~0_combout\ & ( !\U4|Mux5~0_combout\ & ( ((\U5|valor_armazenado\(1) & 
-- !\U4|Mux6~0_combout\)) # (\U5|valor_armazenado\(2)) ) ) ) # ( !\U4|Mux7~0_combout\ & ( !\U4|Mux5~0_combout\ & ( ((!\U5|valor_armazenado\(0) & (\U5|valor_armazenado\(1) & !\U4|Mux6~0_combout\)) # (\U5|valor_armazenado\(0) & ((!\U4|Mux6~0_combout\) # 
-- (\U5|valor_armazenado\(1))))) # (\U5|valor_armazenado\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100011111001111110000111100000111000000010000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U5|ALT_INV_valor_armazenado\(0),
	datab => \U5|ALT_INV_valor_armazenado\(1),
	datac => \U5|ALT_INV_valor_armazenado\(2),
	datad => \U4|ALT_INV_Mux6~0_combout\,
	datae => \U4|ALT_INV_Mux7~0_combout\,
	dataf => \U4|ALT_INV_Mux5~0_combout\,
	combout => \U3|LessThan0~2_combout\);

-- Location: LABCELL_X73_Y3_N42
\U3|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|LessThan0~1_combout\ = !\U5|valor_armazenado\(5) $ (!\U4|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U5|ALT_INV_valor_armazenado\(5),
	datac => \U4|ALT_INV_Mux2~0_combout\,
	combout => \U3|LessThan0~1_combout\);

-- Location: LABCELL_X74_Y3_N24
\U3|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|LessThan0~3_combout\ = ( \U5|valor_armazenado\(3) & ( !\U3|LessThan0~1_combout\ & ( (!\U4|Mux3~0_combout\ & (((!\U4|Mux4~0_combout\) # (\U3|LessThan0~2_combout\)) # (\U5|valor_armazenado\(4)))) # (\U4|Mux3~0_combout\ & (\U5|valor_armazenado\(4) & 
-- ((!\U4|Mux4~0_combout\) # (\U3|LessThan0~2_combout\)))) ) ) ) # ( !\U5|valor_armazenado\(3) & ( !\U3|LessThan0~1_combout\ & ( (!\U4|Mux3~0_combout\ & (((\U3|LessThan0~2_combout\ & !\U4|Mux4~0_combout\)) # (\U5|valor_armazenado\(4)))) # 
-- (\U4|Mux3~0_combout\ & (\U5|valor_armazenado\(4) & (\U3|LessThan0~2_combout\ & !\U4|Mux4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100100010101110110010101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ALT_INV_Mux3~0_combout\,
	datab => \U5|ALT_INV_valor_armazenado\(4),
	datac => \U3|ALT_INV_LessThan0~2_combout\,
	datad => \U4|ALT_INV_Mux4~0_combout\,
	datae => \U5|ALT_INV_valor_armazenado\(3),
	dataf => \U3|ALT_INV_LessThan0~1_combout\,
	combout => \U3|LessThan0~3_combout\);

-- Location: LABCELL_X73_Y3_N21
\U3|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|LessThan0~0_combout\ = ( !\U4|Mux2~0_combout\ & ( \U5|valor_armazenado\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U5|ALT_INV_valor_armazenado\(5),
	dataf => \U4|ALT_INV_Mux2~0_combout\,
	combout => \U3|LessThan0~0_combout\);

-- Location: LABCELL_X74_Y3_N18
\U3|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|LessThan0~4_combout\ = ( \U5|valor_armazenado\(7) & ( \U4|Mux0~0_combout\ & ( (!\U4|Mux1~0_combout\ & (((\U5|valor_armazenado\(6)) # (\U3|LessThan0~0_combout\)) # (\U3|LessThan0~3_combout\))) # (\U4|Mux1~0_combout\ & (\U5|valor_armazenado\(6) & 
-- ((\U3|LessThan0~0_combout\) # (\U3|LessThan0~3_combout\)))) ) ) ) # ( \U5|valor_armazenado\(7) & ( !\U4|Mux0~0_combout\ ) ) # ( !\U5|valor_armazenado\(7) & ( !\U4|Mux0~0_combout\ & ( (!\U4|Mux1~0_combout\ & (((\U5|valor_armazenado\(6)) # 
-- (\U3|LessThan0~0_combout\)) # (\U3|LessThan0~3_combout\))) # (\U4|Mux1~0_combout\ & (\U5|valor_armazenado\(6) & ((\U3|LessThan0~0_combout\) # (\U3|LessThan0~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010111111111111111111111100000000000000000010101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ALT_INV_Mux1~0_combout\,
	datab => \U3|ALT_INV_LessThan0~3_combout\,
	datac => \U3|ALT_INV_LessThan0~0_combout\,
	datad => \U5|ALT_INV_valor_armazenado\(6),
	datae => \U5|ALT_INV_valor_armazenado\(7),
	dataf => \U4|ALT_INV_Mux0~0_combout\,
	combout => \U3|LessThan0~4_combout\);

-- Location: MLABCELL_X34_Y39_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


