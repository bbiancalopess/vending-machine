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

-- DATE "02/06/2025 22:45:31"

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
	coin_inserted_more_coins : IN std_logic;
	product_chosen_not_more_coins : IN std_logic;
	select_demux : IN std_logic;
	load_saldo : IN std_logic;
	clear_saldo : IN std_logic;
	load_troco_reg : IN std_logic;
	clear_troco_reg : IN std_logic;
	coin_value : IN std_logic_vector(3 DOWNTO 0);
	product_selection : IN std_logic_vector(3 DOWNTO 0);
	estado_fsm : IN std_logic_vector(2 DOWNTO 0);
	coin_inserted : BUFFER std_logic;
	insert_more_coins : BUFFER std_logic;
	product_chosen : BUFFER std_logic;
	dont_insert_more_coins : BUFFER std_logic;
	compare_maior_igual : BUFFER std_logic;
	compare_maior : BUFFER std_logic;
	troco_total : BUFFER std_logic_vector(7 DOWNTO 0);
	valor_displays : BUFFER std_logic_vector(41 DOWNTO 0)
	);
END Datapath;

-- Design Ports Information
-- coin_inserted	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- insert_more_coins	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_chosen	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dont_insert_more_coins	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- compare_maior_igual	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- compare_maior	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_total[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_total[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_total[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_total[3]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_total[4]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_total[5]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_total[6]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- troco_total[7]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[1]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[2]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[4]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[6]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[7]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[8]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[9]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[10]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[11]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[12]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[13]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[14]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[15]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[16]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[17]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[18]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[19]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[20]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[21]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[22]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[23]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[24]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[25]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[26]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[27]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[28]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[29]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[30]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[31]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[32]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[33]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[34]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[35]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[36]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[37]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[38]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[39]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[40]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_displays[41]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_inserted_more_coins	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- select_demux	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_chosen_not_more_coins	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_selection[0]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_selection[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_selection[2]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_selection[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_fsm[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_fsm[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_fsm[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_saldo	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_saldo	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_troco_reg	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_troco_reg	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_value[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_value[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_value[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_value[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_coin_inserted_more_coins : std_logic;
SIGNAL ww_product_chosen_not_more_coins : std_logic;
SIGNAL ww_select_demux : std_logic;
SIGNAL ww_load_saldo : std_logic;
SIGNAL ww_clear_saldo : std_logic;
SIGNAL ww_load_troco_reg : std_logic;
SIGNAL ww_clear_troco_reg : std_logic;
SIGNAL ww_coin_value : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_product_selection : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_estado_fsm : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_coin_inserted : std_logic;
SIGNAL ww_insert_more_coins : std_logic;
SIGNAL ww_product_chosen : std_logic;
SIGNAL ww_dont_insert_more_coins : std_logic;
SIGNAL ww_compare_maior_igual : std_logic;
SIGNAL ww_compare_maior : std_logic;
SIGNAL ww_troco_total : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_valor_displays : std_logic_vector(41 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \select_demux~input_o\ : std_logic;
SIGNAL \coin_inserted_more_coins~input_o\ : std_logic;
SIGNAL \demux_coin_and_more_coins|saida0~0_combout\ : std_logic;
SIGNAL \demux_coin_and_more_coins|saida1~0_combout\ : std_logic;
SIGNAL \product_chosen_not_more_coins~input_o\ : std_logic;
SIGNAL \demux_product_and_not_more_coins|saida0~0_combout\ : std_logic;
SIGNAL \demux_product_and_not_more_coins|saida1~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \coin_value[3]~input_o\ : std_logic;
SIGNAL \coin_value[2]~input_o\ : std_logic;
SIGNAL \coin_value[1]~input_o\ : std_logic;
SIGNAL \coin_value[0]~input_o\ : std_logic;
SIGNAL \soma|Add0~29_sumout\ : std_logic;
SIGNAL \clear_saldo~input_o\ : std_logic;
SIGNAL \load_saldo~input_o\ : std_logic;
SIGNAL \soma|Add0~30\ : std_logic;
SIGNAL \soma|Add0~25_sumout\ : std_logic;
SIGNAL \soma|Add0~26\ : std_logic;
SIGNAL \soma|Add0~21_sumout\ : std_logic;
SIGNAL \soma|Add0~22\ : std_logic;
SIGNAL \soma|Add0~17_sumout\ : std_logic;
SIGNAL \soma|Add0~18\ : std_logic;
SIGNAL \soma|Add0~13_sumout\ : std_logic;
SIGNAL \soma|Add0~14\ : std_logic;
SIGNAL \soma|Add0~9_sumout\ : std_logic;
SIGNAL \soma|Add0~10\ : std_logic;
SIGNAL \soma|Add0~5_sumout\ : std_logic;
SIGNAL \soma|Add0~6\ : std_logic;
SIGNAL \soma|Add0~1_sumout\ : std_logic;
SIGNAL \product_selection[0]~input_o\ : std_logic;
SIGNAL \product_selection[3]~input_o\ : std_logic;
SIGNAL \product_selection[2]~input_o\ : std_logic;
SIGNAL \product_selection[1]~input_o\ : std_logic;
SIGNAL \decod_preco_prod|Mux7~0_combout\ : std_logic;
SIGNAL \decod_preco_prod|Mux5~0_combout\ : std_logic;
SIGNAL \decod_preco_prod|Mux6~0_combout\ : std_logic;
SIGNAL \comp_maior_igual|LessThan0~2_combout\ : std_logic;
SIGNAL \decod_preco_prod|Mux4~0_combout\ : std_logic;
SIGNAL \decod_preco_prod|Mux3~0_combout\ : std_logic;
SIGNAL \decod_preco_prod|Mux2~0_combout\ : std_logic;
SIGNAL \comp_maior_igual|LessThan0~1_combout\ : std_logic;
SIGNAL \comp_maior_igual|LessThan0~3_combout\ : std_logic;
SIGNAL \comp_maior_igual|LessThan0~0_combout\ : std_logic;
SIGNAL \decod_preco_prod|Mux1~0_combout\ : std_logic;
SIGNAL \decod_preco_prod|Mux0~0_combout\ : std_logic;
SIGNAL \comp_maior_igual|LessThan0~4_combout\ : std_logic;
SIGNAL \comp_maior|LessThan0~0_combout\ : std_logic;
SIGNAL \comp_maior|LessThan0~1_combout\ : std_logic;
SIGNAL \comp_maior|LessThan0~2_combout\ : std_logic;
SIGNAL \comp_maior|LessThan0~3_combout\ : std_logic;
SIGNAL \subtracao|troco[0]~1_sumout\ : std_logic;
SIGNAL \clear_troco_reg~input_o\ : std_logic;
SIGNAL \load_troco_reg~input_o\ : std_logic;
SIGNAL \subtracao|troco[0]~2\ : std_logic;
SIGNAL \subtracao|troco[0]~3\ : std_logic;
SIGNAL \subtracao|troco[1]~5_sumout\ : std_logic;
SIGNAL \subtracao|troco[1]~6\ : std_logic;
SIGNAL \subtracao|troco[1]~7\ : std_logic;
SIGNAL \subtracao|troco[2]~9_sumout\ : std_logic;
SIGNAL \subtracao|troco[2]~10\ : std_logic;
SIGNAL \subtracao|troco[2]~11\ : std_logic;
SIGNAL \subtracao|troco[3]~13_sumout\ : std_logic;
SIGNAL \subtracao|troco[3]~14\ : std_logic;
SIGNAL \subtracao|troco[3]~15\ : std_logic;
SIGNAL \subtracao|troco[4]~17_sumout\ : std_logic;
SIGNAL \subtracao|troco[4]~18\ : std_logic;
SIGNAL \subtracao|troco[4]~19\ : std_logic;
SIGNAL \subtracao|troco[5]~21_sumout\ : std_logic;
SIGNAL \subtracao|troco[5]~22\ : std_logic;
SIGNAL \subtracao|troco[5]~23\ : std_logic;
SIGNAL \subtracao|troco[6]~25_sumout\ : std_logic;
SIGNAL \subtracao|troco[6]~26\ : std_logic;
SIGNAL \subtracao|troco[6]~27\ : std_logic;
SIGNAL \subtracao|troco[7]~29_sumout\ : std_logic;
SIGNAL \estado_fsm[2]~input_o\ : std_logic;
SIGNAL \estado_fsm[1]~input_o\ : std_logic;
SIGNAL \display|Mux15~0_combout\ : std_logic;
SIGNAL \display|U1|temp~0_combout\ : std_logic;
SIGNAL \estado_fsm[0]~input_o\ : std_logic;
SIGNAL \display|U1|temp~1_combout\ : std_logic;
SIGNAL \display|U1|temp~2_combout\ : std_logic;
SIGNAL \display|Mux14~1_combout\ : std_logic;
SIGNAL \display|U3|LessThan3~0_combout\ : std_logic;
SIGNAL \display|U3|temp~1_combout\ : std_logic;
SIGNAL \display|U3|temp~0_combout\ : std_logic;
SIGNAL \display|Mux14~0_combout\ : std_logic;
SIGNAL \display|Mux13~0_combout\ : std_logic;
SIGNAL \display|U3|Add5~0_combout\ : std_logic;
SIGNAL \display|Mux15~2_combout\ : std_logic;
SIGNAL \display|Mux13~1_combout\ : std_logic;
SIGNAL \display|Mux15~1_combout\ : std_logic;
SIGNAL \display|Mux14~2_combout\ : std_logic;
SIGNAL \display|Mux14~4_combout\ : std_logic;
SIGNAL \display|Mux14~3_combout\ : std_logic;
SIGNAL \display|Mux14~5_combout\ : std_logic;
SIGNAL \display|Mux16~0_combout\ : std_logic;
SIGNAL \display|Mux16~1_combout\ : std_logic;
SIGNAL \display|Mux16~2_combout\ : std_logic;
SIGNAL \display|Mux17~0_combout\ : std_logic;
SIGNAL \display|Mux24~0_combout\ : std_logic;
SIGNAL \display|Mux23~0_combout\ : std_logic;
SIGNAL \display|Mux22~0_combout\ : std_logic;
SIGNAL \display|Mux21~0_combout\ : std_logic;
SIGNAL \display|Mux20~0_combout\ : std_logic;
SIGNAL \display|Mux19~0_combout\ : std_logic;
SIGNAL \display|Mux18~0_combout\ : std_logic;
SIGNAL \display|U1|bcd_out[5]~0_combout\ : std_logic;
SIGNAL \display|U3|LessThan6~0_combout\ : std_logic;
SIGNAL \display|Mux12~0_combout\ : std_logic;
SIGNAL \display|Mux13~3_combout\ : std_logic;
SIGNAL \display|U1|Add5~0_combout\ : std_logic;
SIGNAL \display|Mux13~2_combout\ : std_logic;
SIGNAL \display|U3|Add5~1_combout\ : std_logic;
SIGNAL \display|Mux13~4_combout\ : std_logic;
SIGNAL \display|U1|temp~5_combout\ : std_logic;
SIGNAL \display|Mux10~0_combout\ : std_logic;
SIGNAL \display|U3|temp~3_combout\ : std_logic;
SIGNAL \display|Mux9~2_combout\ : std_logic;
SIGNAL \display|Mux9~0_combout\ : std_logic;
SIGNAL \display|Mux9~1_combout\ : std_logic;
SIGNAL \display|U1|temp~4_combout\ : std_logic;
SIGNAL \display|U1|temp~3_combout\ : std_logic;
SIGNAL \display|U3|temp~2_combout\ : std_logic;
SIGNAL \display|U3|Add6~2_combout\ : std_logic;
SIGNAL \display|Mux10~1_combout\ : std_logic;
SIGNAL \display|U3|Add6~0_combout\ : std_logic;
SIGNAL \display|Mux11~0_combout\ : std_logic;
SIGNAL \display|Mux31~0_combout\ : std_logic;
SIGNAL \display|Mux30~0_combout\ : std_logic;
SIGNAL \display|Mux29~0_combout\ : std_logic;
SIGNAL \display|Mux28~0_combout\ : std_logic;
SIGNAL \display|Mux27~0_combout\ : std_logic;
SIGNAL \display|Mux26~0_combout\ : std_logic;
SIGNAL \display|Mux25~0_combout\ : std_logic;
SIGNAL \display|U3|Add6~1_combout\ : std_logic;
SIGNAL \display|U3|temp~4_combout\ : std_logic;
SIGNAL \display|U1|temp~7_combout\ : std_logic;
SIGNAL \display|U3|Add6~3_combout\ : std_logic;
SIGNAL \display|Mux9~3_combout\ : std_logic;
SIGNAL \display|Mux9~4_combout\ : std_logic;
SIGNAL \display|Mux8~0_combout\ : std_logic;
SIGNAL \display|Mux8~1_combout\ : std_logic;
SIGNAL \display|U1|temp~6_combout\ : std_logic;
SIGNAL \display|Mux38~0_combout\ : std_logic;
SIGNAL \display|Mux38~1_combout\ : std_logic;
SIGNAL \display|Mux6~0_combout\ : std_logic;
SIGNAL \display|Mux37~0_combout\ : std_logic;
SIGNAL \display|Mux9~5_combout\ : std_logic;
SIGNAL \display|Mux8~2_combout\ : std_logic;
SIGNAL \display|Mux36~0_combout\ : std_logic;
SIGNAL \display|Mux35~0_combout\ : std_logic;
SIGNAL \display|Mux33~0_combout\ : std_logic;
SIGNAL \display|Mux32~0_combout\ : std_logic;
SIGNAL \display|Mux52~0_combout\ : std_logic;
SIGNAL \display|Mux52~1_combout\ : std_logic;
SIGNAL \display|Mux50~0_combout\ : std_logic;
SIGNAL \display|Mux48~0_combout\ : std_logic;
SIGNAL \display|Mux54~0_combout\ : std_logic;
SIGNAL \display|Mux56~0_combout\ : std_logic;
SIGNAL \display|Mux55~0_combout\ : std_logic;
SIGNAL \reg_total_inserido|valor_armazenado\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_troco|valor_armazenado\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_coin_value[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_coin_value[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_coin_value[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_coin_value[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_clear_troco_reg~input_o\ : std_logic;
SIGNAL \ALT_INV_clear_saldo~input_o\ : std_logic;
SIGNAL \ALT_INV_estado_fsm[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_estado_fsm[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_estado_fsm[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_product_selection[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_product_selection[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_product_selection[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_product_selection[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_product_chosen_not_more_coins~input_o\ : std_logic;
SIGNAL \ALT_INV_select_demux~input_o\ : std_logic;
SIGNAL \ALT_INV_coin_inserted_more_coins~input_o\ : std_logic;
SIGNAL \display|ALT_INV_Mux50~0_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux52~0_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux9~5_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux9~4_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \display|U3|ALT_INV_Add6~3_combout\ : std_logic;
SIGNAL \display|U3|ALT_INV_temp~4_combout\ : std_logic;
SIGNAL \display|U1|ALT_INV_temp~7_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux38~0_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \display|U1|ALT_INV_temp~6_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \display|U3|ALT_INV_Add6~2_combout\ : std_logic;
SIGNAL \display|U3|ALT_INV_Add6~1_combout\ : std_logic;
SIGNAL \display|U3|ALT_INV_temp~3_combout\ : std_logic;
SIGNAL \display|U1|ALT_INV_temp~5_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \display|U3|ALT_INV_Add6~0_combout\ : std_logic;
SIGNAL \display|U3|ALT_INV_temp~2_combout\ : std_logic;
SIGNAL \display|U1|ALT_INV_temp~4_combout\ : std_logic;
SIGNAL \display|U1|ALT_INV_temp~3_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \display|U3|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \display|U1|ALT_INV_bcd_out[5]~0_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux13~4_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \display|U3|ALT_INV_Add5~1_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \display|U1|ALT_INV_Add5~0_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux14~5_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux14~4_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \display|U3|ALT_INV_Add5~0_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux16~2_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \display|U1|ALT_INV_temp~2_combout\ : std_logic;
SIGNAL \display|U1|ALT_INV_temp~1_combout\ : std_logic;
SIGNAL \display|U1|ALT_INV_temp~0_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux16~1_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \display|U3|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \display|U3|ALT_INV_temp~1_combout\ : std_logic;
SIGNAL \display|U3|ALT_INV_temp~0_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \reg_troco|ALT_INV_valor_armazenado\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comp_maior|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \comp_maior|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \comp_maior|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \comp_maior_igual|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \comp_maior_igual|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \comp_maior_igual|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \decod_preco_prod|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \reg_total_inserido|ALT_INV_valor_armazenado\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \decod_preco_prod|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \decod_preco_prod|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \decod_preco_prod|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \decod_preco_prod|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \comp_maior_igual|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \comp_maior_igual|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \decod_preco_prod|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \decod_preco_prod|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \decod_preco_prod|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux10~1_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_coin_inserted_more_coins <= coin_inserted_more_coins;
ww_product_chosen_not_more_coins <= product_chosen_not_more_coins;
ww_select_demux <= select_demux;
ww_load_saldo <= load_saldo;
ww_clear_saldo <= clear_saldo;
ww_load_troco_reg <= load_troco_reg;
ww_clear_troco_reg <= clear_troco_reg;
ww_coin_value <= coin_value;
ww_product_selection <= product_selection;
ww_estado_fsm <= estado_fsm;
coin_inserted <= ww_coin_inserted;
insert_more_coins <= ww_insert_more_coins;
product_chosen <= ww_product_chosen;
dont_insert_more_coins <= ww_dont_insert_more_coins;
compare_maior_igual <= ww_compare_maior_igual;
compare_maior <= ww_compare_maior;
troco_total <= ww_troco_total;
valor_displays <= ww_valor_displays;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_coin_value[0]~input_o\ <= NOT \coin_value[0]~input_o\;
\ALT_INV_coin_value[1]~input_o\ <= NOT \coin_value[1]~input_o\;
\ALT_INV_coin_value[2]~input_o\ <= NOT \coin_value[2]~input_o\;
\ALT_INV_coin_value[3]~input_o\ <= NOT \coin_value[3]~input_o\;
\ALT_INV_clear_troco_reg~input_o\ <= NOT \clear_troco_reg~input_o\;
\ALT_INV_clear_saldo~input_o\ <= NOT \clear_saldo~input_o\;
\ALT_INV_estado_fsm[2]~input_o\ <= NOT \estado_fsm[2]~input_o\;
\ALT_INV_estado_fsm[1]~input_o\ <= NOT \estado_fsm[1]~input_o\;
\ALT_INV_estado_fsm[0]~input_o\ <= NOT \estado_fsm[0]~input_o\;
\ALT_INV_product_selection[3]~input_o\ <= NOT \product_selection[3]~input_o\;
\ALT_INV_product_selection[2]~input_o\ <= NOT \product_selection[2]~input_o\;
\ALT_INV_product_selection[1]~input_o\ <= NOT \product_selection[1]~input_o\;
\ALT_INV_product_selection[0]~input_o\ <= NOT \product_selection[0]~input_o\;
\ALT_INV_product_chosen_not_more_coins~input_o\ <= NOT \product_chosen_not_more_coins~input_o\;
\ALT_INV_select_demux~input_o\ <= NOT \select_demux~input_o\;
\ALT_INV_coin_inserted_more_coins~input_o\ <= NOT \coin_inserted_more_coins~input_o\;
\display|ALT_INV_Mux50~0_combout\ <= NOT \display|Mux50~0_combout\;
\display|ALT_INV_Mux52~0_combout\ <= NOT \display|Mux52~0_combout\;
\display|ALT_INV_Mux9~5_combout\ <= NOT \display|Mux9~5_combout\;
\display|ALT_INV_Mux8~2_combout\ <= NOT \display|Mux8~2_combout\;
\display|ALT_INV_Mux6~0_combout\ <= NOT \display|Mux6~0_combout\;
\display|ALT_INV_Mux9~4_combout\ <= NOT \display|Mux9~4_combout\;
\display|ALT_INV_Mux9~3_combout\ <= NOT \display|Mux9~3_combout\;
\display|U3|ALT_INV_Add6~3_combout\ <= NOT \display|U3|Add6~3_combout\;
\display|U3|ALT_INV_temp~4_combout\ <= NOT \display|U3|temp~4_combout\;
\display|U1|ALT_INV_temp~7_combout\ <= NOT \display|U1|temp~7_combout\;
\display|ALT_INV_Mux38~0_combout\ <= NOT \display|Mux38~0_combout\;
\display|ALT_INV_Mux8~1_combout\ <= NOT \display|Mux8~1_combout\;
\display|ALT_INV_Mux8~0_combout\ <= NOT \display|Mux8~0_combout\;
\display|U1|ALT_INV_temp~6_combout\ <= NOT \display|U1|temp~6_combout\;
\display|ALT_INV_Mux25~0_combout\ <= NOT \display|Mux25~0_combout\;
\display|U3|ALT_INV_Add6~2_combout\ <= NOT \display|U3|Add6~2_combout\;
\display|U3|ALT_INV_Add6~1_combout\ <= NOT \display|U3|Add6~1_combout\;
\display|U3|ALT_INV_temp~3_combout\ <= NOT \display|U3|temp~3_combout\;
\display|U1|ALT_INV_temp~5_combout\ <= NOT \display|U1|temp~5_combout\;
\display|ALT_INV_Mux11~0_combout\ <= NOT \display|Mux11~0_combout\;
\display|ALT_INV_Mux9~2_combout\ <= NOT \display|Mux9~2_combout\;
\display|ALT_INV_Mux9~1_combout\ <= NOT \display|Mux9~1_combout\;
\display|ALT_INV_Mux9~0_combout\ <= NOT \display|Mux9~0_combout\;
\display|ALT_INV_Mux10~0_combout\ <= NOT \display|Mux10~0_combout\;
\display|U3|ALT_INV_Add6~0_combout\ <= NOT \display|U3|Add6~0_combout\;
\display|U3|ALT_INV_temp~2_combout\ <= NOT \display|U3|temp~2_combout\;
\display|U1|ALT_INV_temp~4_combout\ <= NOT \display|U1|temp~4_combout\;
\display|U1|ALT_INV_temp~3_combout\ <= NOT \display|U1|temp~3_combout\;
\display|ALT_INV_Mux12~0_combout\ <= NOT \display|Mux12~0_combout\;
\display|U3|ALT_INV_LessThan6~0_combout\ <= NOT \display|U3|LessThan6~0_combout\;
\display|U1|ALT_INV_bcd_out[5]~0_combout\ <= NOT \display|U1|bcd_out[5]~0_combout\;
\display|ALT_INV_Mux13~4_combout\ <= NOT \display|Mux13~4_combout\;
\display|ALT_INV_Mux13~3_combout\ <= NOT \display|Mux13~3_combout\;
\display|U3|ALT_INV_Add5~1_combout\ <= NOT \display|U3|Add5~1_combout\;
\display|ALT_INV_Mux13~2_combout\ <= NOT \display|Mux13~2_combout\;
\display|U1|ALT_INV_Add5~0_combout\ <= NOT \display|U1|Add5~0_combout\;
\display|ALT_INV_Mux18~0_combout\ <= NOT \display|Mux18~0_combout\;
\display|ALT_INV_Mux14~5_combout\ <= NOT \display|Mux14~5_combout\;
\display|ALT_INV_Mux14~4_combout\ <= NOT \display|Mux14~4_combout\;
\display|ALT_INV_Mux14~3_combout\ <= NOT \display|Mux14~3_combout\;
\display|ALT_INV_Mux14~2_combout\ <= NOT \display|Mux14~2_combout\;
\display|ALT_INV_Mux15~1_combout\ <= NOT \display|Mux15~1_combout\;
\display|ALT_INV_Mux15~0_combout\ <= NOT \display|Mux15~0_combout\;
\display|U3|ALT_INV_Add5~0_combout\ <= NOT \display|U3|Add5~0_combout\;
\display|ALT_INV_Mux16~2_combout\ <= NOT \display|Mux16~2_combout\;
\display|ALT_INV_Mux13~1_combout\ <= NOT \display|Mux13~1_combout\;
\display|ALT_INV_Mux13~0_combout\ <= NOT \display|Mux13~0_combout\;
\display|ALT_INV_Mux14~1_combout\ <= NOT \display|Mux14~1_combout\;
\display|U1|ALT_INV_temp~2_combout\ <= NOT \display|U1|temp~2_combout\;
\display|U1|ALT_INV_temp~1_combout\ <= NOT \display|U1|temp~1_combout\;
\display|U1|ALT_INV_temp~0_combout\ <= NOT \display|U1|temp~0_combout\;
\display|ALT_INV_Mux16~1_combout\ <= NOT \display|Mux16~1_combout\;
\display|ALT_INV_Mux16~0_combout\ <= NOT \display|Mux16~0_combout\;
\display|ALT_INV_Mux14~0_combout\ <= NOT \display|Mux14~0_combout\;
\display|U3|ALT_INV_LessThan3~0_combout\ <= NOT \display|U3|LessThan3~0_combout\;
\display|U3|ALT_INV_temp~1_combout\ <= NOT \display|U3|temp~1_combout\;
\display|U3|ALT_INV_temp~0_combout\ <= NOT \display|U3|temp~0_combout\;
\display|ALT_INV_Mux17~0_combout\ <= NOT \display|Mux17~0_combout\;
\reg_troco|ALT_INV_valor_armazenado\(7) <= NOT \reg_troco|valor_armazenado\(7);
\reg_troco|ALT_INV_valor_armazenado\(6) <= NOT \reg_troco|valor_armazenado\(6);
\reg_troco|ALT_INV_valor_armazenado\(5) <= NOT \reg_troco|valor_armazenado\(5);
\reg_troco|ALT_INV_valor_armazenado\(4) <= NOT \reg_troco|valor_armazenado\(4);
\reg_troco|ALT_INV_valor_armazenado\(3) <= NOT \reg_troco|valor_armazenado\(3);
\reg_troco|ALT_INV_valor_armazenado\(2) <= NOT \reg_troco|valor_armazenado\(2);
\reg_troco|ALT_INV_valor_armazenado\(1) <= NOT \reg_troco|valor_armazenado\(1);
\reg_troco|ALT_INV_valor_armazenado\(0) <= NOT \reg_troco|valor_armazenado\(0);
\comp_maior|ALT_INV_LessThan0~2_combout\ <= NOT \comp_maior|LessThan0~2_combout\;
\comp_maior|ALT_INV_LessThan0~1_combout\ <= NOT \comp_maior|LessThan0~1_combout\;
\comp_maior|ALT_INV_LessThan0~0_combout\ <= NOT \comp_maior|LessThan0~0_combout\;
\comp_maior_igual|ALT_INV_LessThan0~4_combout\ <= NOT \comp_maior_igual|LessThan0~4_combout\;
\comp_maior_igual|ALT_INV_LessThan0~3_combout\ <= NOT \comp_maior_igual|LessThan0~3_combout\;
\comp_maior_igual|ALT_INV_LessThan0~2_combout\ <= NOT \comp_maior_igual|LessThan0~2_combout\;
\decod_preco_prod|ALT_INV_Mux7~0_combout\ <= NOT \decod_preco_prod|Mux7~0_combout\;
\reg_total_inserido|ALT_INV_valor_armazenado\(0) <= NOT \reg_total_inserido|valor_armazenado\(0);
\decod_preco_prod|ALT_INV_Mux6~0_combout\ <= NOT \decod_preco_prod|Mux6~0_combout\;
\reg_total_inserido|ALT_INV_valor_armazenado\(1) <= NOT \reg_total_inserido|valor_armazenado\(1);
\decod_preco_prod|ALT_INV_Mux5~0_combout\ <= NOT \decod_preco_prod|Mux5~0_combout\;
\reg_total_inserido|ALT_INV_valor_armazenado\(2) <= NOT \reg_total_inserido|valor_armazenado\(2);
\decod_preco_prod|ALT_INV_Mux4~0_combout\ <= NOT \decod_preco_prod|Mux4~0_combout\;
\reg_total_inserido|ALT_INV_valor_armazenado\(3) <= NOT \reg_total_inserido|valor_armazenado\(3);
\decod_preco_prod|ALT_INV_Mux3~0_combout\ <= NOT \decod_preco_prod|Mux3~0_combout\;
\reg_total_inserido|ALT_INV_valor_armazenado\(4) <= NOT \reg_total_inserido|valor_armazenado\(4);
\comp_maior_igual|ALT_INV_LessThan0~1_combout\ <= NOT \comp_maior_igual|LessThan0~1_combout\;
\comp_maior_igual|ALT_INV_LessThan0~0_combout\ <= NOT \comp_maior_igual|LessThan0~0_combout\;
\decod_preco_prod|ALT_INV_Mux2~0_combout\ <= NOT \decod_preco_prod|Mux2~0_combout\;
\reg_total_inserido|ALT_INV_valor_armazenado\(5) <= NOT \reg_total_inserido|valor_armazenado\(5);
\decod_preco_prod|ALT_INV_Mux1~0_combout\ <= NOT \decod_preco_prod|Mux1~0_combout\;
\reg_total_inserido|ALT_INV_valor_armazenado\(6) <= NOT \reg_total_inserido|valor_armazenado\(6);
\decod_preco_prod|ALT_INV_Mux0~0_combout\ <= NOT \decod_preco_prod|Mux0~0_combout\;
\reg_total_inserido|ALT_INV_valor_armazenado\(7) <= NOT \reg_total_inserido|valor_armazenado\(7);
\display|ALT_INV_Mux15~2_combout\ <= NOT \display|Mux15~2_combout\;
\display|ALT_INV_Mux10~1_combout\ <= NOT \display|Mux10~1_combout\;

-- Location: IOOBUF_X2_Y0_N76
\coin_inserted~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \demux_coin_and_more_coins|saida0~0_combout\,
	devoe => ww_devoe,
	o => ww_coin_inserted);

-- Location: IOOBUF_X4_Y0_N53
\insert_more_coins~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \demux_coin_and_more_coins|saida1~0_combout\,
	devoe => ww_devoe,
	o => ww_insert_more_coins);

-- Location: IOOBUF_X4_Y0_N36
\product_chosen~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \demux_product_and_not_more_coins|saida0~0_combout\,
	devoe => ww_devoe,
	o => ww_product_chosen);

-- Location: IOOBUF_X6_Y0_N53
\dont_insert_more_coins~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \demux_product_and_not_more_coins|saida1~0_combout\,
	devoe => ww_devoe,
	o => ww_dont_insert_more_coins);

-- Location: IOOBUF_X6_Y0_N36
\compare_maior_igual~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_maior_igual|ALT_INV_LessThan0~4_combout\,
	devoe => ww_devoe,
	o => ww_compare_maior_igual);

-- Location: IOOBUF_X52_Y0_N53
\compare_maior~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_maior|LessThan0~3_combout\,
	devoe => ww_devoe,
	o => ww_compare_maior);

-- Location: IOOBUF_X28_Y0_N19
\troco_total[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_troco|valor_armazenado\(0),
	devoe => ww_devoe,
	o => ww_troco_total(0));

-- Location: IOOBUF_X28_Y0_N53
\troco_total[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_troco|valor_armazenado\(1),
	devoe => ww_devoe,
	o => ww_troco_total(1));

-- Location: IOOBUF_X28_Y0_N2
\troco_total[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_troco|valor_armazenado\(2),
	devoe => ww_devoe,
	o => ww_troco_total(2));

-- Location: IOOBUF_X28_Y0_N36
\troco_total[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_troco|valor_armazenado\(3),
	devoe => ww_devoe,
	o => ww_troco_total(3));

-- Location: IOOBUF_X30_Y0_N53
\troco_total[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_troco|valor_armazenado\(4),
	devoe => ww_devoe,
	o => ww_troco_total(4));

-- Location: IOOBUF_X26_Y0_N93
\troco_total[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_troco|valor_armazenado\(5),
	devoe => ww_devoe,
	o => ww_troco_total(5));

-- Location: IOOBUF_X30_Y0_N19
\troco_total[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_troco|valor_armazenado\(6),
	devoe => ww_devoe,
	o => ww_troco_total(6));

-- Location: IOOBUF_X30_Y0_N2
\troco_total[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_troco|valor_armazenado\(7),
	devoe => ww_devoe,
	o => ww_troco_total(7));

-- Location: IOOBUF_X54_Y0_N36
\valor_displays[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux24~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(0));

-- Location: IOOBUF_X52_Y0_N19
\valor_displays[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux23~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(1));

-- Location: IOOBUF_X54_Y0_N2
\valor_displays[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux22~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(2));

-- Location: IOOBUF_X58_Y0_N42
\valor_displays[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux21~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(3));

-- Location: IOOBUF_X54_Y0_N19
\valor_displays[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux20~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(4));

-- Location: IOOBUF_X54_Y0_N53
\valor_displays[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux19~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(5));

-- Location: IOOBUF_X58_Y0_N59
\valor_displays[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|ALT_INV_Mux18~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(6));

-- Location: IOOBUF_X38_Y0_N36
\valor_displays[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux31~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(7));

-- Location: IOOBUF_X40_Y0_N53
\valor_displays[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux30~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(8));

-- Location: IOOBUF_X40_Y0_N19
\valor_displays[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux29~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(9));

-- Location: IOOBUF_X40_Y0_N36
\valor_displays[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux28~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(10));

-- Location: IOOBUF_X34_Y0_N42
\valor_displays[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux27~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(11));

-- Location: IOOBUF_X52_Y0_N2
\valor_displays[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux26~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(12));

-- Location: IOOBUF_X52_Y0_N36
\valor_displays[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|ALT_INV_Mux25~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(13));

-- Location: IOOBUF_X50_Y0_N42
\valor_displays[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux38~1_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(14));

-- Location: IOOBUF_X38_Y0_N19
\valor_displays[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux37~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(15));

-- Location: IOOBUF_X38_Y0_N53
\valor_displays[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux36~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(16));

-- Location: IOOBUF_X38_Y0_N2
\valor_displays[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux35~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(17));

-- Location: IOOBUF_X36_Y0_N19
\valor_displays[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux9~5_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(18));

-- Location: IOOBUF_X50_Y0_N93
\valor_displays[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux33~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(19));

-- Location: IOOBUF_X36_Y0_N36
\valor_displays[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux32~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(20));

-- Location: IOOBUF_X70_Y0_N19
\valor_displays[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_valor_displays(21));

-- Location: IOOBUF_X34_Y81_N42
\valor_displays[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_valor_displays(22));

-- Location: IOOBUF_X89_Y38_N56
\valor_displays[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_valor_displays(23));

-- Location: IOOBUF_X32_Y81_N36
\valor_displays[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_valor_displays(24));

-- Location: IOOBUF_X28_Y81_N2
\valor_displays[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_valor_displays(25));

-- Location: IOOBUF_X58_Y81_N59
\valor_displays[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_valor_displays(26));

-- Location: IOOBUF_X40_Y81_N53
\valor_displays[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_valor_displays(27));

-- Location: IOOBUF_X34_Y0_N93
\valor_displays[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|ALT_INV_Mux52~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(28));

-- Location: IOOBUF_X56_Y0_N36
\valor_displays[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux52~1_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(29));

-- Location: IOOBUF_X40_Y0_N2
\valor_displays[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|ALT_INV_Mux50~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(30));

-- Location: IOOBUF_X36_Y0_N2
\valor_displays[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(31));

-- Location: IOOBUF_X56_Y0_N2
\valor_displays[32]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux48~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(32));

-- Location: IOOBUF_X56_Y0_N19
\valor_displays[33]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux48~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(33));

-- Location: IOOBUF_X56_Y0_N53
\valor_displays[34]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux52~1_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(34));

-- Location: IOOBUF_X34_Y0_N76
\valor_displays[35]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux54~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(35));

-- Location: IOOBUF_X36_Y0_N53
\valor_displays[36]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(36));

-- Location: IOOBUF_X88_Y81_N37
\valor_displays[37]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_valor_displays(37));

-- Location: IOOBUF_X34_Y0_N59
\valor_displays[38]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux56~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(38));

-- Location: IOOBUF_X66_Y0_N93
\valor_displays[39]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux55~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(39));

-- Location: IOOBUF_X66_Y0_N42
\valor_displays[40]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux55~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(40));

-- Location: IOOBUF_X62_Y0_N2
\valor_displays[41]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|Mux55~0_combout\,
	devoe => ww_devoe,
	o => ww_valor_displays(41));

-- Location: IOIBUF_X2_Y0_N58
\select_demux~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_select_demux,
	o => \select_demux~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\coin_inserted_more_coins~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_inserted_more_coins,
	o => \coin_inserted_more_coins~input_o\);

-- Location: LABCELL_X4_Y1_N48
\demux_coin_and_more_coins|saida0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \demux_coin_and_more_coins|saida0~0_combout\ = ( !\select_demux~input_o\ & ( \coin_inserted_more_coins~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_select_demux~input_o\,
	dataf => \ALT_INV_coin_inserted_more_coins~input_o\,
	combout => \demux_coin_and_more_coins|saida0~0_combout\);

-- Location: LABCELL_X4_Y1_N45
\demux_coin_and_more_coins|saida1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \demux_coin_and_more_coins|saida1~0_combout\ = ( \select_demux~input_o\ & ( \coin_inserted_more_coins~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_select_demux~input_o\,
	dataf => \ALT_INV_coin_inserted_more_coins~input_o\,
	combout => \demux_coin_and_more_coins|saida1~0_combout\);

-- Location: IOIBUF_X4_Y0_N18
\product_chosen_not_more_coins~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_chosen_not_more_coins,
	o => \product_chosen_not_more_coins~input_o\);

-- Location: LABCELL_X4_Y1_N0
\demux_product_and_not_more_coins|saida0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \demux_product_and_not_more_coins|saida0~0_combout\ = ( !\select_demux~input_o\ & ( \product_chosen_not_more_coins~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_select_demux~input_o\,
	dataf => \ALT_INV_product_chosen_not_more_coins~input_o\,
	combout => \demux_product_and_not_more_coins|saida0~0_combout\);

-- Location: LABCELL_X4_Y1_N33
\demux_product_and_not_more_coins|saida1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \demux_product_and_not_more_coins|saida1~0_combout\ = ( \select_demux~input_o\ & ( \product_chosen_not_more_coins~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_select_demux~input_o\,
	dataf => \ALT_INV_product_chosen_not_more_coins~input_o\,
	combout => \demux_product_and_not_more_coins|saida1~0_combout\);

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

-- Location: IOIBUF_X26_Y0_N41
\coin_value[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_value(3),
	o => \coin_value[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\coin_value[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_value(2),
	o => \coin_value[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\coin_value[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_value(1),
	o => \coin_value[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\coin_value[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_value(0),
	o => \coin_value[0]~input_o\);

-- Location: MLABCELL_X25_Y3_N0
\soma|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma|Add0~29_sumout\ = SUM(( \reg_total_inserido|valor_armazenado\(0) ) + ( \coin_value[0]~input_o\ ) + ( !VCC ))
-- \soma|Add0~30\ = CARRY(( \reg_total_inserido|valor_armazenado\(0) ) + ( \coin_value[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_coin_value[0]~input_o\,
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(0),
	cin => GND,
	sumout => \soma|Add0~29_sumout\,
	cout => \soma|Add0~30\);

-- Location: IOIBUF_X8_Y0_N35
\clear_saldo~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear_saldo,
	o => \clear_saldo~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\load_saldo~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_saldo,
	o => \load_saldo~input_o\);

-- Location: FF_X25_Y3_N2
\reg_total_inserido|valor_armazenado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \soma|Add0~29_sumout\,
	clrn => \ALT_INV_clear_saldo~input_o\,
	ena => \load_saldo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_total_inserido|valor_armazenado\(0));

-- Location: MLABCELL_X25_Y3_N3
\soma|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma|Add0~25_sumout\ = SUM(( \reg_total_inserido|valor_armazenado\(1) ) + ( \coin_value[1]~input_o\ ) + ( \soma|Add0~30\ ))
-- \soma|Add0~26\ = CARRY(( \reg_total_inserido|valor_armazenado\(1) ) + ( \coin_value[1]~input_o\ ) + ( \soma|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_coin_value[1]~input_o\,
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(1),
	cin => \soma|Add0~30\,
	sumout => \soma|Add0~25_sumout\,
	cout => \soma|Add0~26\);

-- Location: FF_X25_Y3_N5
\reg_total_inserido|valor_armazenado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \soma|Add0~25_sumout\,
	clrn => \ALT_INV_clear_saldo~input_o\,
	ena => \load_saldo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_total_inserido|valor_armazenado\(1));

-- Location: MLABCELL_X25_Y3_N6
\soma|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma|Add0~21_sumout\ = SUM(( \reg_total_inserido|valor_armazenado\(2) ) + ( \coin_value[2]~input_o\ ) + ( \soma|Add0~26\ ))
-- \soma|Add0~22\ = CARRY(( \reg_total_inserido|valor_armazenado\(2) ) + ( \coin_value[2]~input_o\ ) + ( \soma|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_coin_value[2]~input_o\,
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(2),
	cin => \soma|Add0~26\,
	sumout => \soma|Add0~21_sumout\,
	cout => \soma|Add0~22\);

-- Location: FF_X25_Y3_N8
\reg_total_inserido|valor_armazenado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \soma|Add0~21_sumout\,
	clrn => \ALT_INV_clear_saldo~input_o\,
	ena => \load_saldo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_total_inserido|valor_armazenado\(2));

-- Location: MLABCELL_X25_Y3_N9
\soma|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma|Add0~17_sumout\ = SUM(( \reg_total_inserido|valor_armazenado\(3) ) + ( \coin_value[3]~input_o\ ) + ( \soma|Add0~22\ ))
-- \soma|Add0~18\ = CARRY(( \reg_total_inserido|valor_armazenado\(3) ) + ( \coin_value[3]~input_o\ ) + ( \soma|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_coin_value[3]~input_o\,
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(3),
	cin => \soma|Add0~22\,
	sumout => \soma|Add0~17_sumout\,
	cout => \soma|Add0~18\);

-- Location: FF_X25_Y3_N11
\reg_total_inserido|valor_armazenado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \soma|Add0~17_sumout\,
	clrn => \ALT_INV_clear_saldo~input_o\,
	ena => \load_saldo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_total_inserido|valor_armazenado\(3));

-- Location: MLABCELL_X25_Y3_N12
\soma|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma|Add0~13_sumout\ = SUM(( \reg_total_inserido|valor_armazenado\(4) ) + ( GND ) + ( \soma|Add0~18\ ))
-- \soma|Add0~14\ = CARRY(( \reg_total_inserido|valor_armazenado\(4) ) + ( GND ) + ( \soma|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(4),
	cin => \soma|Add0~18\,
	sumout => \soma|Add0~13_sumout\,
	cout => \soma|Add0~14\);

-- Location: FF_X25_Y3_N14
\reg_total_inserido|valor_armazenado[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \soma|Add0~13_sumout\,
	clrn => \ALT_INV_clear_saldo~input_o\,
	ena => \load_saldo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_total_inserido|valor_armazenado\(4));

-- Location: MLABCELL_X25_Y3_N15
\soma|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma|Add0~9_sumout\ = SUM(( \reg_total_inserido|valor_armazenado\(5) ) + ( GND ) + ( \soma|Add0~14\ ))
-- \soma|Add0~10\ = CARRY(( \reg_total_inserido|valor_armazenado\(5) ) + ( GND ) + ( \soma|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(5),
	cin => \soma|Add0~14\,
	sumout => \soma|Add0~9_sumout\,
	cout => \soma|Add0~10\);

-- Location: FF_X25_Y3_N17
\reg_total_inserido|valor_armazenado[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \soma|Add0~9_sumout\,
	clrn => \ALT_INV_clear_saldo~input_o\,
	ena => \load_saldo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_total_inserido|valor_armazenado\(5));

-- Location: MLABCELL_X25_Y3_N18
\soma|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma|Add0~5_sumout\ = SUM(( \reg_total_inserido|valor_armazenado\(6) ) + ( GND ) + ( \soma|Add0~10\ ))
-- \soma|Add0~6\ = CARRY(( \reg_total_inserido|valor_armazenado\(6) ) + ( GND ) + ( \soma|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(6),
	cin => \soma|Add0~10\,
	sumout => \soma|Add0~5_sumout\,
	cout => \soma|Add0~6\);

-- Location: FF_X25_Y3_N20
\reg_total_inserido|valor_armazenado[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \soma|Add0~5_sumout\,
	clrn => \ALT_INV_clear_saldo~input_o\,
	ena => \load_saldo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_total_inserido|valor_armazenado\(6));

-- Location: MLABCELL_X25_Y3_N21
\soma|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma|Add0~1_sumout\ = SUM(( \reg_total_inserido|valor_armazenado\(7) ) + ( GND ) + ( \soma|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(7),
	cin => \soma|Add0~6\,
	sumout => \soma|Add0~1_sumout\);

-- Location: FF_X25_Y3_N23
\reg_total_inserido|valor_armazenado[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \soma|Add0~1_sumout\,
	clrn => \ALT_INV_clear_saldo~input_o\,
	ena => \load_saldo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_total_inserido|valor_armazenado\(7));

-- Location: IOIBUF_X32_Y0_N35
\product_selection[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_selection(0),
	o => \product_selection[0]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\product_selection[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_selection(3),
	o => \product_selection[3]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\product_selection[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_selection(2),
	o => \product_selection[2]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\product_selection[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_product_selection(1),
	o => \product_selection[1]~input_o\);

-- Location: LABCELL_X27_Y3_N15
\decod_preco_prod|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decod_preco_prod|Mux7~0_combout\ = ( \product_selection[1]~input_o\ & ( (!\product_selection[0]~input_o\) # ((!\product_selection[3]~input_o\ & !\product_selection[2]~input_o\)) ) ) # ( !\product_selection[1]~input_o\ & ( \product_selection[2]~input_o\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111101110101010101110111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datab => \ALT_INV_product_selection[3]~input_o\,
	datad => \ALT_INV_product_selection[2]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \decod_preco_prod|Mux7~0_combout\);

-- Location: LABCELL_X27_Y3_N21
\decod_preco_prod|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decod_preco_prod|Mux5~0_combout\ = ( \product_selection[1]~input_o\ & ( (!\product_selection[0]~input_o\ & (\product_selection[3]~input_o\ & !\product_selection[2]~input_o\)) # (\product_selection[0]~input_o\ & ((\product_selection[2]~input_o\))) ) ) # ( 
-- !\product_selection[1]~input_o\ & ( ((!\product_selection[0]~input_o\ & \product_selection[3]~input_o\)) # (\product_selection[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011111111001000101111111100100010010101010010001001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datab => \ALT_INV_product_selection[3]~input_o\,
	datad => \ALT_INV_product_selection[2]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \decod_preco_prod|Mux5~0_combout\);

-- Location: LABCELL_X27_Y3_N12
\decod_preco_prod|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decod_preco_prod|Mux6~0_combout\ = ( \product_selection[1]~input_o\ & ( (!\product_selection[3]~input_o\) # (\product_selection[0]~input_o\) ) ) # ( !\product_selection[1]~input_o\ & ( !\product_selection[2]~input_o\ $ (((!\product_selection[0]~input_o\) 
-- # (\product_selection[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101101001011010010110100101111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datab => \ALT_INV_product_selection[3]~input_o\,
	datac => \ALT_INV_product_selection[2]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \decod_preco_prod|Mux6~0_combout\);

-- Location: LABCELL_X27_Y3_N30
\comp_maior_igual|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_maior_igual|LessThan0~2_combout\ = ( \decod_preco_prod|Mux5~0_combout\ & ( \decod_preco_prod|Mux6~0_combout\ & ( (!\reg_total_inserido|valor_armazenado\(2)) # ((!\reg_total_inserido|valor_armazenado\(1)) # ((\decod_preco_prod|Mux7~0_combout\ & 
-- !\reg_total_inserido|valor_armazenado\(0)))) ) ) ) # ( !\decod_preco_prod|Mux5~0_combout\ & ( \decod_preco_prod|Mux6~0_combout\ & ( (!\reg_total_inserido|valor_armazenado\(2) & ((!\reg_total_inserido|valor_armazenado\(1)) # 
-- ((\decod_preco_prod|Mux7~0_combout\ & !\reg_total_inserido|valor_armazenado\(0))))) ) ) ) # ( \decod_preco_prod|Mux5~0_combout\ & ( !\decod_preco_prod|Mux6~0_combout\ & ( (!\reg_total_inserido|valor_armazenado\(2)) # ((\decod_preco_prod|Mux7~0_combout\ & 
-- (!\reg_total_inserido|valor_armazenado\(0) & !\reg_total_inserido|valor_armazenado\(1)))) ) ) ) # ( !\decod_preco_prod|Mux5~0_combout\ & ( !\decod_preco_prod|Mux6~0_combout\ & ( (\decod_preco_prod|Mux7~0_combout\ & 
-- (!\reg_total_inserido|valor_armazenado\(0) & (!\reg_total_inserido|valor_armazenado\(2) & !\reg_total_inserido|valor_armazenado\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000111101001111000011110000010000001111111111110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decod_preco_prod|ALT_INV_Mux7~0_combout\,
	datab => \reg_total_inserido|ALT_INV_valor_armazenado\(0),
	datac => \reg_total_inserido|ALT_INV_valor_armazenado\(2),
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(1),
	datae => \decod_preco_prod|ALT_INV_Mux5~0_combout\,
	dataf => \decod_preco_prod|ALT_INV_Mux6~0_combout\,
	combout => \comp_maior_igual|LessThan0~2_combout\);

-- Location: LABCELL_X27_Y3_N9
\decod_preco_prod|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decod_preco_prod|Mux4~0_combout\ = ( \product_selection[1]~input_o\ & ( !\product_selection[0]~input_o\ $ (!\product_selection[2]~input_o\) ) ) # ( !\product_selection[1]~input_o\ & ( (!\product_selection[3]~input_o\ & (\product_selection[0]~input_o\)) # 
-- (\product_selection[3]~input_o\ & ((!\product_selection[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101000100011101110100010001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datab => \ALT_INV_product_selection[3]~input_o\,
	datad => \ALT_INV_product_selection[2]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \decod_preco_prod|Mux4~0_combout\);

-- Location: LABCELL_X27_Y3_N6
\decod_preco_prod|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decod_preco_prod|Mux3~0_combout\ = ( \product_selection[1]~input_o\ & ( (\product_selection[3]~input_o\ & (!\product_selection[0]~input_o\ & !\product_selection[2]~input_o\)) ) ) # ( !\product_selection[1]~input_o\ & ( (!\product_selection[3]~input_o\ & 
-- (\product_selection[0]~input_o\ & \product_selection[2]~input_o\)) # (\product_selection[3]~input_o\ & (!\product_selection[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111100001100000011110000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_product_selection[3]~input_o\,
	datac => \ALT_INV_product_selection[0]~input_o\,
	datad => \ALT_INV_product_selection[2]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \decod_preco_prod|Mux3~0_combout\);

-- Location: LABCELL_X27_Y3_N18
\decod_preco_prod|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decod_preco_prod|Mux2~0_combout\ = ( \product_selection[1]~input_o\ & ( (\product_selection[3]~input_o\ & ((!\product_selection[0]~input_o\) # (\product_selection[2]~input_o\))) ) ) # ( !\product_selection[1]~input_o\ & ( 
-- ((!\product_selection[0]~input_o\ & \product_selection[3]~input_o\)) # (\product_selection[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datab => \ALT_INV_product_selection[3]~input_o\,
	datac => \ALT_INV_product_selection[2]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \decod_preco_prod|Mux2~0_combout\);

-- Location: LABCELL_X27_Y3_N36
\comp_maior_igual|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_maior_igual|LessThan0~1_combout\ = ( \decod_preco_prod|Mux2~0_combout\ & ( !\reg_total_inserido|valor_armazenado\(5) ) ) # ( !\decod_preco_prod|Mux2~0_combout\ & ( \reg_total_inserido|valor_armazenado\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_total_inserido|ALT_INV_valor_armazenado\(5),
	dataf => \decod_preco_prod|ALT_INV_Mux2~0_combout\,
	combout => \comp_maior_igual|LessThan0~1_combout\);

-- Location: LABCELL_X24_Y3_N12
\comp_maior_igual|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_maior_igual|LessThan0~3_combout\ = ( \decod_preco_prod|Mux3~0_combout\ & ( !\comp_maior_igual|LessThan0~1_combout\ & ( (!\reg_total_inserido|valor_armazenado\(4)) # ((!\comp_maior_igual|LessThan0~2_combout\ & (\decod_preco_prod|Mux4~0_combout\ & 
-- !\reg_total_inserido|valor_armazenado\(3))) # (\comp_maior_igual|LessThan0~2_combout\ & ((!\reg_total_inserido|valor_armazenado\(3)) # (\decod_preco_prod|Mux4~0_combout\)))) ) ) ) # ( !\decod_preco_prod|Mux3~0_combout\ & ( 
-- !\comp_maior_igual|LessThan0~1_combout\ & ( (!\reg_total_inserido|valor_armazenado\(4) & ((!\comp_maior_igual|LessThan0~2_combout\ & (\decod_preco_prod|Mux4~0_combout\ & !\reg_total_inserido|valor_armazenado\(3))) # (\comp_maior_igual|LessThan0~2_combout\ 
-- & ((!\reg_total_inserido|valor_armazenado\(3)) # (\decod_preco_prod|Mux4~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000000111111110111000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_maior_igual|ALT_INV_LessThan0~2_combout\,
	datab => \decod_preco_prod|ALT_INV_Mux4~0_combout\,
	datac => \reg_total_inserido|ALT_INV_valor_armazenado\(3),
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(4),
	datae => \decod_preco_prod|ALT_INV_Mux3~0_combout\,
	dataf => \comp_maior_igual|ALT_INV_LessThan0~1_combout\,
	combout => \comp_maior_igual|LessThan0~3_combout\);

-- Location: MLABCELL_X25_Y3_N39
\comp_maior_igual|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_maior_igual|LessThan0~0_combout\ = (!\reg_total_inserido|valor_armazenado\(5) & \decod_preco_prod|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_total_inserido|ALT_INV_valor_armazenado\(5),
	datac => \decod_preco_prod|ALT_INV_Mux2~0_combout\,
	combout => \comp_maior_igual|LessThan0~0_combout\);

-- Location: LABCELL_X27_Y3_N27
\decod_preco_prod|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decod_preco_prod|Mux1~0_combout\ = ( \product_selection[1]~input_o\ & ( (!\product_selection[0]~input_o\ & (!\product_selection[3]~input_o\ $ (\product_selection[2]~input_o\))) # (\product_selection[0]~input_o\ & ((!\product_selection[3]~input_o\) # 
-- (!\product_selection[2]~input_o\))) ) ) # ( !\product_selection[1]~input_o\ & ( (!\product_selection[0]~input_o\ & (\product_selection[3]~input_o\)) # (\product_selection[0]~input_o\ & ((\product_selection[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011111011101011001101101110101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datab => \ALT_INV_product_selection[3]~input_o\,
	datad => \ALT_INV_product_selection[2]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \decod_preco_prod|Mux1~0_combout\);

-- Location: LABCELL_X27_Y3_N24
\decod_preco_prod|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decod_preco_prod|Mux0~0_combout\ = ( \product_selection[1]~input_o\ & ( (!\product_selection[3]~input_o\ & ((\product_selection[2]~input_o\) # (\product_selection[0]~input_o\))) ) ) # ( !\product_selection[1]~input_o\ & ( (!\product_selection[3]~input_o\ 
-- & ((\product_selection[2]~input_o\))) # (\product_selection[3]~input_o\ & (\product_selection[0]~input_o\ & !\product_selection[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110000011100000111000001110001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[0]~input_o\,
	datab => \ALT_INV_product_selection[3]~input_o\,
	datac => \ALT_INV_product_selection[2]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \decod_preco_prod|Mux0~0_combout\);

-- Location: LABCELL_X24_Y3_N18
\comp_maior_igual|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_maior_igual|LessThan0~4_combout\ = ( \reg_total_inserido|valor_armazenado\(6) & ( \decod_preco_prod|Mux0~0_combout\ & ( (!\reg_total_inserido|valor_armazenado\(7)) # ((\decod_preco_prod|Mux1~0_combout\ & ((\comp_maior_igual|LessThan0~0_combout\) # 
-- (\comp_maior_igual|LessThan0~3_combout\)))) ) ) ) # ( !\reg_total_inserido|valor_armazenado\(6) & ( \decod_preco_prod|Mux0~0_combout\ & ( (!\reg_total_inserido|valor_armazenado\(7)) # (((\decod_preco_prod|Mux1~0_combout\) # 
-- (\comp_maior_igual|LessThan0~0_combout\)) # (\comp_maior_igual|LessThan0~3_combout\)) ) ) ) # ( \reg_total_inserido|valor_armazenado\(6) & ( !\decod_preco_prod|Mux0~0_combout\ & ( (!\reg_total_inserido|valor_armazenado\(7) & 
-- (\decod_preco_prod|Mux1~0_combout\ & ((\comp_maior_igual|LessThan0~0_combout\) # (\comp_maior_igual|LessThan0~3_combout\)))) ) ) ) # ( !\reg_total_inserido|valor_armazenado\(6) & ( !\decod_preco_prod|Mux0~0_combout\ & ( 
-- (!\reg_total_inserido|valor_armazenado\(7) & (((\decod_preco_prod|Mux1~0_combout\) # (\comp_maior_igual|LessThan0~0_combout\)) # (\comp_maior_igual|LessThan0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010000000000010101010111111111111111010101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_total_inserido|ALT_INV_valor_armazenado\(7),
	datab => \comp_maior_igual|ALT_INV_LessThan0~3_combout\,
	datac => \comp_maior_igual|ALT_INV_LessThan0~0_combout\,
	datad => \decod_preco_prod|ALT_INV_Mux1~0_combout\,
	datae => \reg_total_inserido|ALT_INV_valor_armazenado\(6),
	dataf => \decod_preco_prod|ALT_INV_Mux0~0_combout\,
	combout => \comp_maior_igual|LessThan0~4_combout\);

-- Location: LABCELL_X29_Y3_N3
\comp_maior|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_maior|LessThan0~0_combout\ = ( !\decod_preco_prod|Mux2~0_combout\ & ( \reg_total_inserido|valor_armazenado\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \decod_preco_prod|ALT_INV_Mux2~0_combout\,
	dataf => \reg_total_inserido|ALT_INV_valor_armazenado\(5),
	combout => \comp_maior|LessThan0~0_combout\);

-- Location: LABCELL_X27_Y3_N0
\comp_maior|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_maior|LessThan0~1_combout\ = ( \decod_preco_prod|Mux5~0_combout\ & ( \decod_preco_prod|Mux6~0_combout\ & ( (!\decod_preco_prod|Mux7~0_combout\ & (\reg_total_inserido|valor_armazenado\(0) & (\reg_total_inserido|valor_armazenado\(2) & 
-- \reg_total_inserido|valor_armazenado\(1)))) ) ) ) # ( !\decod_preco_prod|Mux5~0_combout\ & ( \decod_preco_prod|Mux6~0_combout\ & ( ((!\decod_preco_prod|Mux7~0_combout\ & (\reg_total_inserido|valor_armazenado\(0) & 
-- \reg_total_inserido|valor_armazenado\(1)))) # (\reg_total_inserido|valor_armazenado\(2)) ) ) ) # ( \decod_preco_prod|Mux5~0_combout\ & ( !\decod_preco_prod|Mux6~0_combout\ & ( (\reg_total_inserido|valor_armazenado\(2) & 
-- (((!\decod_preco_prod|Mux7~0_combout\ & \reg_total_inserido|valor_armazenado\(0))) # (\reg_total_inserido|valor_armazenado\(1)))) ) ) ) # ( !\decod_preco_prod|Mux5~0_combout\ & ( !\decod_preco_prod|Mux6~0_combout\ & ( (((!\decod_preco_prod|Mux7~0_combout\ 
-- & \reg_total_inserido|valor_armazenado\(0))) # (\reg_total_inserido|valor_armazenado\(1))) # (\reg_total_inserido|valor_armazenado\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111111111111000000100000111100001111001011110000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decod_preco_prod|ALT_INV_Mux7~0_combout\,
	datab => \reg_total_inserido|ALT_INV_valor_armazenado\(0),
	datac => \reg_total_inserido|ALT_INV_valor_armazenado\(2),
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(1),
	datae => \decod_preco_prod|ALT_INV_Mux5~0_combout\,
	dataf => \decod_preco_prod|ALT_INV_Mux6~0_combout\,
	combout => \comp_maior|LessThan0~1_combout\);

-- Location: LABCELL_X27_Y3_N54
\comp_maior|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_maior|LessThan0~2_combout\ = ( \comp_maior|LessThan0~1_combout\ & ( \decod_preco_prod|Mux4~0_combout\ & ( (!\comp_maior_igual|LessThan0~1_combout\ & ((!\reg_total_inserido|valor_armazenado\(4) & (\reg_total_inserido|valor_armazenado\(3) & 
-- !\decod_preco_prod|Mux3~0_combout\)) # (\reg_total_inserido|valor_armazenado\(4) & ((!\decod_preco_prod|Mux3~0_combout\) # (\reg_total_inserido|valor_armazenado\(3)))))) ) ) ) # ( !\comp_maior|LessThan0~1_combout\ & ( \decod_preco_prod|Mux4~0_combout\ & ( 
-- (!\comp_maior_igual|LessThan0~1_combout\ & (\reg_total_inserido|valor_armazenado\(4) & !\decod_preco_prod|Mux3~0_combout\)) ) ) ) # ( \comp_maior|LessThan0~1_combout\ & ( !\decod_preco_prod|Mux4~0_combout\ & ( (!\comp_maior_igual|LessThan0~1_combout\ & 
-- ((!\decod_preco_prod|Mux3~0_combout\) # (\reg_total_inserido|valor_armazenado\(4)))) ) ) ) # ( !\comp_maior|LessThan0~1_combout\ & ( !\decod_preco_prod|Mux4~0_combout\ & ( (!\comp_maior_igual|LessThan0~1_combout\ & 
-- ((!\reg_total_inserido|valor_armazenado\(4) & (\reg_total_inserido|valor_armazenado\(3) & !\decod_preco_prod|Mux3~0_combout\)) # (\reg_total_inserido|valor_armazenado\(4) & ((!\decod_preco_prod|Mux3~0_combout\) # 
-- (\reg_total_inserido|valor_armazenado\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000010101010100010001000100010000000000010101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_maior_igual|ALT_INV_LessThan0~1_combout\,
	datab => \reg_total_inserido|ALT_INV_valor_armazenado\(4),
	datac => \reg_total_inserido|ALT_INV_valor_armazenado\(3),
	datad => \decod_preco_prod|ALT_INV_Mux3~0_combout\,
	datae => \comp_maior|ALT_INV_LessThan0~1_combout\,
	dataf => \decod_preco_prod|ALT_INV_Mux4~0_combout\,
	combout => \comp_maior|LessThan0~2_combout\);

-- Location: LABCELL_X29_Y3_N54
\comp_maior|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_maior|LessThan0~3_combout\ = ( \comp_maior|LessThan0~0_combout\ & ( \comp_maior|LessThan0~2_combout\ & ( (!\reg_total_inserido|valor_armazenado\(7) & (!\decod_preco_prod|Mux0~0_combout\ & ((!\decod_preco_prod|Mux1~0_combout\) # 
-- (\reg_total_inserido|valor_armazenado\(6))))) # (\reg_total_inserido|valor_armazenado\(7) & (((!\decod_preco_prod|Mux1~0_combout\) # (!\decod_preco_prod|Mux0~0_combout\)) # (\reg_total_inserido|valor_armazenado\(6)))) ) ) ) # ( 
-- !\comp_maior|LessThan0~0_combout\ & ( \comp_maior|LessThan0~2_combout\ & ( (!\reg_total_inserido|valor_armazenado\(7) & (!\decod_preco_prod|Mux0~0_combout\ & ((!\decod_preco_prod|Mux1~0_combout\) # (\reg_total_inserido|valor_armazenado\(6))))) # 
-- (\reg_total_inserido|valor_armazenado\(7) & (((!\decod_preco_prod|Mux1~0_combout\) # (!\decod_preco_prod|Mux0~0_combout\)) # (\reg_total_inserido|valor_armazenado\(6)))) ) ) ) # ( \comp_maior|LessThan0~0_combout\ & ( !\comp_maior|LessThan0~2_combout\ & ( 
-- (!\reg_total_inserido|valor_armazenado\(7) & (!\decod_preco_prod|Mux0~0_combout\ & ((!\decod_preco_prod|Mux1~0_combout\) # (\reg_total_inserido|valor_armazenado\(6))))) # (\reg_total_inserido|valor_armazenado\(7) & (((!\decod_preco_prod|Mux1~0_combout\) # 
-- (!\decod_preco_prod|Mux0~0_combout\)) # (\reg_total_inserido|valor_armazenado\(6)))) ) ) ) # ( !\comp_maior|LessThan0~0_combout\ & ( !\comp_maior|LessThan0~2_combout\ & ( (!\reg_total_inserido|valor_armazenado\(7) & 
-- (\reg_total_inserido|valor_armazenado\(6) & (!\decod_preco_prod|Mux1~0_combout\ & !\decod_preco_prod|Mux0~0_combout\))) # (\reg_total_inserido|valor_armazenado\(7) & ((!\decod_preco_prod|Mux0~0_combout\) # ((\reg_total_inserido|valor_armazenado\(6) & 
-- !\decod_preco_prod|Mux1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100000100110111110000110111011111000011011101111100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_total_inserido|ALT_INV_valor_armazenado\(6),
	datab => \decod_preco_prod|ALT_INV_Mux1~0_combout\,
	datac => \reg_total_inserido|ALT_INV_valor_armazenado\(7),
	datad => \decod_preco_prod|ALT_INV_Mux0~0_combout\,
	datae => \comp_maior|ALT_INV_LessThan0~0_combout\,
	dataf => \comp_maior|ALT_INV_LessThan0~2_combout\,
	combout => \comp_maior|LessThan0~3_combout\);

-- Location: LABCELL_X24_Y3_N30
\subtracao|troco[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \subtracao|troco[0]~1_sumout\ = SUM(( !\decod_preco_prod|Mux7~0_combout\ $ (!\reg_total_inserido|valor_armazenado\(0)) ) + ( !VCC ) + ( !VCC ))
-- \subtracao|troco[0]~2\ = CARRY(( !\decod_preco_prod|Mux7~0_combout\ $ (!\reg_total_inserido|valor_armazenado\(0)) ) + ( !VCC ) + ( !VCC ))
-- \subtracao|troco[0]~3\ = SHARE((!\decod_preco_prod|Mux7~0_combout\) # (\reg_total_inserido|valor_armazenado\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001111111100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \decod_preco_prod|ALT_INV_Mux7~0_combout\,
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(0),
	cin => GND,
	sharein => GND,
	sumout => \subtracao|troco[0]~1_sumout\,
	cout => \subtracao|troco[0]~2\,
	shareout => \subtracao|troco[0]~3\);

-- Location: IOIBUF_X8_Y0_N18
\clear_troco_reg~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear_troco_reg,
	o => \clear_troco_reg~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\load_troco_reg~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_troco_reg,
	o => \load_troco_reg~input_o\);

-- Location: FF_X24_Y3_N32
\reg_troco|valor_armazenado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \subtracao|troco[0]~1_sumout\,
	clrn => \ALT_INV_clear_troco_reg~input_o\,
	ena => \load_troco_reg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_troco|valor_armazenado\(0));

-- Location: LABCELL_X24_Y3_N33
\subtracao|troco[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \subtracao|troco[1]~5_sumout\ = SUM(( !\decod_preco_prod|Mux6~0_combout\ $ (\reg_total_inserido|valor_armazenado\(1)) ) + ( \subtracao|troco[0]~3\ ) + ( \subtracao|troco[0]~2\ ))
-- \subtracao|troco[1]~6\ = CARRY(( !\decod_preco_prod|Mux6~0_combout\ $ (\reg_total_inserido|valor_armazenado\(1)) ) + ( \subtracao|troco[0]~3\ ) + ( \subtracao|troco[0]~2\ ))
-- \subtracao|troco[1]~7\ = SHARE((!\decod_preco_prod|Mux6~0_combout\ & \reg_total_inserido|valor_armazenado\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \decod_preco_prod|ALT_INV_Mux6~0_combout\,
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(1),
	cin => \subtracao|troco[0]~2\,
	sharein => \subtracao|troco[0]~3\,
	sumout => \subtracao|troco[1]~5_sumout\,
	cout => \subtracao|troco[1]~6\,
	shareout => \subtracao|troco[1]~7\);

-- Location: FF_X24_Y3_N35
\reg_troco|valor_armazenado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \subtracao|troco[1]~5_sumout\,
	clrn => \ALT_INV_clear_troco_reg~input_o\,
	ena => \load_troco_reg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_troco|valor_armazenado\(1));

-- Location: LABCELL_X24_Y3_N36
\subtracao|troco[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \subtracao|troco[2]~9_sumout\ = SUM(( !\decod_preco_prod|Mux5~0_combout\ $ (\reg_total_inserido|valor_armazenado\(2)) ) + ( \subtracao|troco[1]~7\ ) + ( \subtracao|troco[1]~6\ ))
-- \subtracao|troco[2]~10\ = CARRY(( !\decod_preco_prod|Mux5~0_combout\ $ (\reg_total_inserido|valor_armazenado\(2)) ) + ( \subtracao|troco[1]~7\ ) + ( \subtracao|troco[1]~6\ ))
-- \subtracao|troco[2]~11\ = SHARE((!\decod_preco_prod|Mux5~0_combout\ & \reg_total_inserido|valor_armazenado\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \decod_preco_prod|ALT_INV_Mux5~0_combout\,
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(2),
	cin => \subtracao|troco[1]~6\,
	sharein => \subtracao|troco[1]~7\,
	sumout => \subtracao|troco[2]~9_sumout\,
	cout => \subtracao|troco[2]~10\,
	shareout => \subtracao|troco[2]~11\);

-- Location: FF_X24_Y3_N38
\reg_troco|valor_armazenado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \subtracao|troco[2]~9_sumout\,
	clrn => \ALT_INV_clear_troco_reg~input_o\,
	ena => \load_troco_reg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_troco|valor_armazenado\(2));

-- Location: LABCELL_X24_Y3_N39
\subtracao|troco[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \subtracao|troco[3]~13_sumout\ = SUM(( !\decod_preco_prod|Mux4~0_combout\ $ (\reg_total_inserido|valor_armazenado\(3)) ) + ( \subtracao|troco[2]~11\ ) + ( \subtracao|troco[2]~10\ ))
-- \subtracao|troco[3]~14\ = CARRY(( !\decod_preco_prod|Mux4~0_combout\ $ (\reg_total_inserido|valor_armazenado\(3)) ) + ( \subtracao|troco[2]~11\ ) + ( \subtracao|troco[2]~10\ ))
-- \subtracao|troco[3]~15\ = SHARE((!\decod_preco_prod|Mux4~0_combout\ & \reg_total_inserido|valor_armazenado\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \decod_preco_prod|ALT_INV_Mux4~0_combout\,
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(3),
	cin => \subtracao|troco[2]~10\,
	sharein => \subtracao|troco[2]~11\,
	sumout => \subtracao|troco[3]~13_sumout\,
	cout => \subtracao|troco[3]~14\,
	shareout => \subtracao|troco[3]~15\);

-- Location: FF_X24_Y3_N41
\reg_troco|valor_armazenado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \subtracao|troco[3]~13_sumout\,
	clrn => \ALT_INV_clear_troco_reg~input_o\,
	ena => \load_troco_reg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_troco|valor_armazenado\(3));

-- Location: LABCELL_X24_Y3_N42
\subtracao|troco[4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \subtracao|troco[4]~17_sumout\ = SUM(( !\reg_total_inserido|valor_armazenado\(4) $ (\decod_preco_prod|Mux3~0_combout\) ) + ( \subtracao|troco[3]~15\ ) + ( \subtracao|troco[3]~14\ ))
-- \subtracao|troco[4]~18\ = CARRY(( !\reg_total_inserido|valor_armazenado\(4) $ (\decod_preco_prod|Mux3~0_combout\) ) + ( \subtracao|troco[3]~15\ ) + ( \subtracao|troco[3]~14\ ))
-- \subtracao|troco[4]~19\ = SHARE((\reg_total_inserido|valor_armazenado\(4) & !\decod_preco_prod|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \reg_total_inserido|ALT_INV_valor_armazenado\(4),
	datac => \decod_preco_prod|ALT_INV_Mux3~0_combout\,
	cin => \subtracao|troco[3]~14\,
	sharein => \subtracao|troco[3]~15\,
	sumout => \subtracao|troco[4]~17_sumout\,
	cout => \subtracao|troco[4]~18\,
	shareout => \subtracao|troco[4]~19\);

-- Location: FF_X24_Y3_N44
\reg_troco|valor_armazenado[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \subtracao|troco[4]~17_sumout\,
	clrn => \ALT_INV_clear_troco_reg~input_o\,
	ena => \load_troco_reg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_troco|valor_armazenado\(4));

-- Location: LABCELL_X24_Y3_N45
\subtracao|troco[5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \subtracao|troco[5]~21_sumout\ = SUM(( !\decod_preco_prod|Mux2~0_combout\ $ (\reg_total_inserido|valor_armazenado\(5)) ) + ( \subtracao|troco[4]~19\ ) + ( \subtracao|troco[4]~18\ ))
-- \subtracao|troco[5]~22\ = CARRY(( !\decod_preco_prod|Mux2~0_combout\ $ (\reg_total_inserido|valor_armazenado\(5)) ) + ( \subtracao|troco[4]~19\ ) + ( \subtracao|troco[4]~18\ ))
-- \subtracao|troco[5]~23\ = SHARE((!\decod_preco_prod|Mux2~0_combout\ & \reg_total_inserido|valor_armazenado\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \decod_preco_prod|ALT_INV_Mux2~0_combout\,
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(5),
	cin => \subtracao|troco[4]~18\,
	sharein => \subtracao|troco[4]~19\,
	sumout => \subtracao|troco[5]~21_sumout\,
	cout => \subtracao|troco[5]~22\,
	shareout => \subtracao|troco[5]~23\);

-- Location: FF_X24_Y3_N47
\reg_troco|valor_armazenado[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \subtracao|troco[5]~21_sumout\,
	clrn => \ALT_INV_clear_troco_reg~input_o\,
	ena => \load_troco_reg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_troco|valor_armazenado\(5));

-- Location: LABCELL_X24_Y3_N48
\subtracao|troco[6]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \subtracao|troco[6]~25_sumout\ = SUM(( !\decod_preco_prod|Mux1~0_combout\ $ (\reg_total_inserido|valor_armazenado\(6)) ) + ( \subtracao|troco[5]~23\ ) + ( \subtracao|troco[5]~22\ ))
-- \subtracao|troco[6]~26\ = CARRY(( !\decod_preco_prod|Mux1~0_combout\ $ (\reg_total_inserido|valor_armazenado\(6)) ) + ( \subtracao|troco[5]~23\ ) + ( \subtracao|troco[5]~22\ ))
-- \subtracao|troco[6]~27\ = SHARE((!\decod_preco_prod|Mux1~0_combout\ & \reg_total_inserido|valor_armazenado\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \decod_preco_prod|ALT_INV_Mux1~0_combout\,
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(6),
	cin => \subtracao|troco[5]~22\,
	sharein => \subtracao|troco[5]~23\,
	sumout => \subtracao|troco[6]~25_sumout\,
	cout => \subtracao|troco[6]~26\,
	shareout => \subtracao|troco[6]~27\);

-- Location: FF_X24_Y3_N50
\reg_troco|valor_armazenado[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \subtracao|troco[6]~25_sumout\,
	clrn => \ALT_INV_clear_troco_reg~input_o\,
	ena => \load_troco_reg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_troco|valor_armazenado\(6));

-- Location: LABCELL_X24_Y3_N51
\subtracao|troco[7]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \subtracao|troco[7]~29_sumout\ = SUM(( !\decod_preco_prod|Mux0~0_combout\ $ (\reg_total_inserido|valor_armazenado\(7)) ) + ( \subtracao|troco[6]~27\ ) + ( \subtracao|troco[6]~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \decod_preco_prod|ALT_INV_Mux0~0_combout\,
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(7),
	cin => \subtracao|troco[6]~26\,
	sharein => \subtracao|troco[6]~27\,
	sumout => \subtracao|troco[7]~29_sumout\);

-- Location: FF_X24_Y3_N53
\reg_troco|valor_armazenado[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \subtracao|troco[7]~29_sumout\,
	clrn => \ALT_INV_clear_troco_reg~input_o\,
	ena => \load_troco_reg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_troco|valor_armazenado\(7));

-- Location: IOIBUF_X30_Y0_N35
\estado_fsm[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estado_fsm(2),
	o => \estado_fsm[2]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\estado_fsm[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estado_fsm(1),
	o => \estado_fsm[1]~input_o\);

-- Location: LABCELL_X27_Y3_N51
\display|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux15~0_combout\ = ( \product_selection[1]~input_o\ & ( (!\product_selection[2]~input_o\ & (!\estado_fsm[2]~input_o\ & \estado_fsm[1]~input_o\)) ) ) # ( !\product_selection[1]~input_o\ & ( (!\estado_fsm[2]~input_o\ & (\estado_fsm[1]~input_o\ & 
-- ((!\product_selection[2]~input_o\) # (\product_selection[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010110000000000001011000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[2]~input_o\,
	datab => \ALT_INV_product_selection[3]~input_o\,
	datac => \ALT_INV_estado_fsm[2]~input_o\,
	datad => \ALT_INV_estado_fsm[1]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \display|Mux15~0_combout\);

-- Location: MLABCELL_X25_Y3_N42
\display|U1|temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U1|temp~0_combout\ = ( \reg_total_inserido|valor_armazenado\(7) & ( \reg_total_inserido|valor_armazenado\(5) & ( (!\reg_total_inserido|valor_armazenado\(6) & ((!\reg_total_inserido|valor_armazenado\(2) & (\reg_total_inserido|valor_armazenado\(3) 
-- & \reg_total_inserido|valor_armazenado\(4))) # (\reg_total_inserido|valor_armazenado\(2) & ((!\reg_total_inserido|valor_armazenado\(4)))))) # (\reg_total_inserido|valor_armazenado\(6) & ((!\reg_total_inserido|valor_armazenado\(2) $ 
-- (\reg_total_inserido|valor_armazenado\(4))))) ) ) ) # ( !\reg_total_inserido|valor_armazenado\(7) & ( \reg_total_inserido|valor_armazenado\(5) & ( (!\reg_total_inserido|valor_armazenado\(6) & ((!\reg_total_inserido|valor_armazenado\(3) & 
-- (!\reg_total_inserido|valor_armazenado\(2) $ (\reg_total_inserido|valor_armazenado\(4)))) # (\reg_total_inserido|valor_armazenado\(3) & (\reg_total_inserido|valor_armazenado\(2) & !\reg_total_inserido|valor_armazenado\(4))))) # 
-- (\reg_total_inserido|valor_armazenado\(6) & ((!\reg_total_inserido|valor_armazenado\(3) & (!\reg_total_inserido|valor_armazenado\(2) & \reg_total_inserido|valor_armazenado\(4))) # (\reg_total_inserido|valor_armazenado\(3) & 
-- (!\reg_total_inserido|valor_armazenado\(2) $ (\reg_total_inserido|valor_armazenado\(4)))))) ) ) ) # ( \reg_total_inserido|valor_armazenado\(7) & ( !\reg_total_inserido|valor_armazenado\(5) & ( (!\reg_total_inserido|valor_armazenado\(3) & 
-- (!\reg_total_inserido|valor_armazenado\(6) $ (!\reg_total_inserido|valor_armazenado\(2) $ (\reg_total_inserido|valor_armazenado\(4))))) # (\reg_total_inserido|valor_armazenado\(3) & ((!\reg_total_inserido|valor_armazenado\(6) & 
-- (!\reg_total_inserido|valor_armazenado\(2) & \reg_total_inserido|valor_armazenado\(4))) # (\reg_total_inserido|valor_armazenado\(6) & (\reg_total_inserido|valor_armazenado\(2) & !\reg_total_inserido|valor_armazenado\(4))))) ) ) ) # ( 
-- !\reg_total_inserido|valor_armazenado\(7) & ( !\reg_total_inserido|valor_armazenado\(5) & ( (!\reg_total_inserido|valor_armazenado\(6) & ((!\reg_total_inserido|valor_armazenado\(2) & (\reg_total_inserido|valor_armazenado\(3) & 
-- \reg_total_inserido|valor_armazenado\(4))) # (\reg_total_inserido|valor_armazenado\(2) & ((!\reg_total_inserido|valor_armazenado\(4)))))) # (\reg_total_inserido|valor_armazenado\(6) & ((!\reg_total_inserido|valor_armazenado\(2) $ 
-- (\reg_total_inserido|valor_armazenado\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000100101010010011010010010010010010010010101101000100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_total_inserido|ALT_INV_valor_armazenado\(6),
	datab => \reg_total_inserido|ALT_INV_valor_armazenado\(3),
	datac => \reg_total_inserido|ALT_INV_valor_armazenado\(2),
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(4),
	datae => \reg_total_inserido|ALT_INV_valor_armazenado\(7),
	dataf => \reg_total_inserido|ALT_INV_valor_armazenado\(5),
	combout => \display|U1|temp~0_combout\);

-- Location: IOIBUF_X32_Y0_N1
\estado_fsm[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estado_fsm(0),
	o => \estado_fsm[0]~input_o\);

-- Location: MLABCELL_X25_Y3_N48
\display|U1|temp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U1|temp~1_combout\ = ( \reg_total_inserido|valor_armazenado\(7) & ( \reg_total_inserido|valor_armazenado\(5) & ( (!\reg_total_inserido|valor_armazenado\(6) & (\reg_total_inserido|valor_armazenado\(3) & ((!\reg_total_inserido|valor_armazenado\(4)) 
-- # (\reg_total_inserido|valor_armazenado\(2))))) # (\reg_total_inserido|valor_armazenado\(6) & (!\reg_total_inserido|valor_armazenado\(3) $ (((!\reg_total_inserido|valor_armazenado\(2)) # (\reg_total_inserido|valor_armazenado\(4)))))) ) ) ) # ( 
-- !\reg_total_inserido|valor_armazenado\(7) & ( \reg_total_inserido|valor_armazenado\(5) & ( (!\reg_total_inserido|valor_armazenado\(6) & (!\reg_total_inserido|valor_armazenado\(3) & ((!\reg_total_inserido|valor_armazenado\(2)) # 
-- (\reg_total_inserido|valor_armazenado\(4))))) # (\reg_total_inserido|valor_armazenado\(6) & ((!\reg_total_inserido|valor_armazenado\(3) & (!\reg_total_inserido|valor_armazenado\(2) & \reg_total_inserido|valor_armazenado\(4))) # 
-- (\reg_total_inserido|valor_armazenado\(3) & (\reg_total_inserido|valor_armazenado\(2) & !\reg_total_inserido|valor_armazenado\(4))))) ) ) ) # ( \reg_total_inserido|valor_armazenado\(7) & ( !\reg_total_inserido|valor_armazenado\(5) & ( 
-- (!\reg_total_inserido|valor_armazenado\(6) & (!\reg_total_inserido|valor_armazenado\(3) $ (((!\reg_total_inserido|valor_armazenado\(2) & \reg_total_inserido|valor_armazenado\(4)))))) # (\reg_total_inserido|valor_armazenado\(6) & 
-- (!\reg_total_inserido|valor_armazenado\(3) & ((!\reg_total_inserido|valor_armazenado\(2)) # (\reg_total_inserido|valor_armazenado\(4))))) ) ) ) # ( !\reg_total_inserido|valor_armazenado\(7) & ( !\reg_total_inserido|valor_armazenado\(5) & ( 
-- (!\reg_total_inserido|valor_armazenado\(6) & (\reg_total_inserido|valor_armazenado\(3) & ((!\reg_total_inserido|valor_armazenado\(4)) # (\reg_total_inserido|valor_armazenado\(2))))) # (\reg_total_inserido|valor_armazenado\(6) & 
-- (!\reg_total_inserido|valor_armazenado\(3) $ (((!\reg_total_inserido|valor_armazenado\(2)) # (\reg_total_inserido|valor_armazenado\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000010011110010000110110010000001110010000011011000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_total_inserido|ALT_INV_valor_armazenado\(6),
	datab => \reg_total_inserido|ALT_INV_valor_armazenado\(3),
	datac => \reg_total_inserido|ALT_INV_valor_armazenado\(2),
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(4),
	datae => \reg_total_inserido|ALT_INV_valor_armazenado\(7),
	dataf => \reg_total_inserido|ALT_INV_valor_armazenado\(5),
	combout => \display|U1|temp~1_combout\);

-- Location: MLABCELL_X25_Y3_N54
\display|U1|temp~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U1|temp~2_combout\ = ( \reg_total_inserido|valor_armazenado\(7) & ( \reg_total_inserido|valor_armazenado\(5) & ( (!\reg_total_inserido|valor_armazenado\(6) & (!\reg_total_inserido|valor_armazenado\(3) & (!\reg_total_inserido|valor_armazenado\(2) 
-- & \reg_total_inserido|valor_armazenado\(4)))) # (\reg_total_inserido|valor_armazenado\(6) & (\reg_total_inserido|valor_armazenado\(3) & (\reg_total_inserido|valor_armazenado\(2) & !\reg_total_inserido|valor_armazenado\(4)))) ) ) ) # ( 
-- !\reg_total_inserido|valor_armazenado\(7) & ( \reg_total_inserido|valor_armazenado\(5) & ( (!\reg_total_inserido|valor_armazenado\(6) & ((!\reg_total_inserido|valor_armazenado\(3) & (\reg_total_inserido|valor_armazenado\(2) & 
-- !\reg_total_inserido|valor_armazenado\(4))) # (\reg_total_inserido|valor_armazenado\(3) & (!\reg_total_inserido|valor_armazenado\(2) & \reg_total_inserido|valor_armazenado\(4))))) # (\reg_total_inserido|valor_armazenado\(6) & 
-- (!\reg_total_inserido|valor_armazenado\(3) & (!\reg_total_inserido|valor_armazenado\(2) $ (\reg_total_inserido|valor_armazenado\(4))))) ) ) ) # ( \reg_total_inserido|valor_armazenado\(7) & ( !\reg_total_inserido|valor_armazenado\(5) & ( 
-- (!\reg_total_inserido|valor_armazenado\(6) & (\reg_total_inserido|valor_armazenado\(3) & (!\reg_total_inserido|valor_armazenado\(2) $ (\reg_total_inserido|valor_armazenado\(4))))) # (\reg_total_inserido|valor_armazenado\(6) & 
-- ((!\reg_total_inserido|valor_armazenado\(3) & (\reg_total_inserido|valor_armazenado\(2) & !\reg_total_inserido|valor_armazenado\(4))) # (\reg_total_inserido|valor_armazenado\(3) & (!\reg_total_inserido|valor_armazenado\(2) & 
-- \reg_total_inserido|valor_armazenado\(4))))) ) ) ) # ( !\reg_total_inserido|valor_armazenado\(7) & ( !\reg_total_inserido|valor_armazenado\(5) & ( (!\reg_total_inserido|valor_armazenado\(6) & (!\reg_total_inserido|valor_armazenado\(3) & 
-- (!\reg_total_inserido|valor_armazenado\(2) & \reg_total_inserido|valor_armazenado\(4)))) # (\reg_total_inserido|valor_armazenado\(6) & (\reg_total_inserido|valor_armazenado\(3) & (\reg_total_inserido|valor_armazenado\(2) & 
-- !\reg_total_inserido|valor_armazenado\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110000000001001000001001001001000001001000000000110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_total_inserido|ALT_INV_valor_armazenado\(6),
	datab => \reg_total_inserido|ALT_INV_valor_armazenado\(3),
	datac => \reg_total_inserido|ALT_INV_valor_armazenado\(2),
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(4),
	datae => \reg_total_inserido|ALT_INV_valor_armazenado\(7),
	dataf => \reg_total_inserido|ALT_INV_valor_armazenado\(5),
	combout => \display|U1|temp~2_combout\);

-- Location: MLABCELL_X28_Y3_N21
\display|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux14~1_combout\ = ( !\display|U1|temp~2_combout\ & ( \reg_total_inserido|valor_armazenado\(1) & ( !\display|U1|temp~1_combout\ ) ) ) # ( !\display|U1|temp~2_combout\ & ( !\reg_total_inserido|valor_armazenado\(1) & ( 
-- (!\display|U1|temp~1_combout\) # (!\display|U1|temp~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|U1|ALT_INV_temp~1_combout\,
	datac => \display|U1|ALT_INV_temp~0_combout\,
	datae => \display|U1|ALT_INV_temp~2_combout\,
	dataf => \reg_total_inserido|ALT_INV_valor_armazenado\(1),
	combout => \display|Mux14~1_combout\);

-- Location: LABCELL_X24_Y3_N6
\display|U3|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U3|LessThan3~0_combout\ = ( \reg_troco|valor_armazenado\(2) & ( \reg_troco|valor_armazenado\(4) & ( (!\reg_troco|valor_armazenado\(5) & ((!\reg_troco|valor_armazenado\(6)) # ((\reg_troco|valor_armazenado\(7) & \reg_troco|valor_armazenado\(3))))) 
-- # (\reg_troco|valor_armazenado\(5) & (!\reg_troco|valor_armazenado\(6) $ (((!\reg_troco|valor_armazenado\(7) & !\reg_troco|valor_armazenado\(3)))))) ) ) ) # ( !\reg_troco|valor_armazenado\(2) & ( \reg_troco|valor_armazenado\(4) & ( 
-- (!\reg_troco|valor_armazenado\(6) & ((!\reg_troco|valor_armazenado\(5) & ((\reg_troco|valor_armazenado\(3)) # (\reg_troco|valor_armazenado\(7)))) # (\reg_troco|valor_armazenado\(5) & (\reg_troco|valor_armazenado\(7) & \reg_troco|valor_armazenado\(3))))) # 
-- (\reg_troco|valor_armazenado\(6) & (\reg_troco|valor_armazenado\(5) & (!\reg_troco|valor_armazenado\(7) & !\reg_troco|valor_armazenado\(3)))) ) ) ) # ( \reg_troco|valor_armazenado\(2) & ( !\reg_troco|valor_armazenado\(4) & ( 
-- (!\reg_troco|valor_armazenado\(5) & (!\reg_troco|valor_armazenado\(6) $ (((!\reg_troco|valor_armazenado\(7)) # (!\reg_troco|valor_armazenado\(3)))))) # (\reg_troco|valor_armazenado\(5) & (((!\reg_troco|valor_armazenado\(7) & 
-- !\reg_troco|valor_armazenado\(3))) # (\reg_troco|valor_armazenado\(6)))) ) ) ) # ( !\reg_troco|valor_armazenado\(2) & ( !\reg_troco|valor_armazenado\(4) & ( (!\reg_troco|valor_armazenado\(5) & (\reg_troco|valor_armazenado\(6) & 
-- ((!\reg_troco|valor_armazenado\(7)) # (!\reg_troco|valor_armazenado\(3))))) # (\reg_troco|valor_armazenado\(5) & (!\reg_troco|valor_armazenado\(6) $ (((\reg_troco|valor_armazenado\(3)) # (\reg_troco|valor_armazenado\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101010001011101010101100100011000100010101001101010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_troco|ALT_INV_valor_armazenado\(6),
	datab => \reg_troco|ALT_INV_valor_armazenado\(5),
	datac => \reg_troco|ALT_INV_valor_armazenado\(7),
	datad => \reg_troco|ALT_INV_valor_armazenado\(3),
	datae => \reg_troco|ALT_INV_valor_armazenado\(2),
	dataf => \reg_troco|ALT_INV_valor_armazenado\(4),
	combout => \display|U3|LessThan3~0_combout\);

-- Location: LABCELL_X24_Y3_N27
\display|U3|temp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U3|temp~1_combout\ = ( \reg_troco|valor_armazenado\(4) & ( (!\reg_troco|valor_armazenado\(7) & (!\reg_troco|valor_armazenado\(6) & ((!\reg_troco|valor_armazenado\(5)) # (\reg_troco|valor_armazenado\(3))))) # (\reg_troco|valor_armazenado\(7) & 
-- (!\reg_troco|valor_armazenado\(6) $ (((\reg_troco|valor_armazenado\(3) & !\reg_troco|valor_armazenado\(5)))))) ) ) # ( !\reg_troco|valor_armazenado\(4) & ( (!\reg_troco|valor_armazenado\(7) & (\reg_troco|valor_armazenado\(6) & 
-- ((!\reg_troco|valor_armazenado\(3)) # (\reg_troco|valor_armazenado\(5))))) # (\reg_troco|valor_armazenado\(7) & ((!\reg_troco|valor_armazenado\(3) & (\reg_troco|valor_armazenado\(5) & \reg_troco|valor_armazenado\(6))) # (\reg_troco|valor_armazenado\(3) & 
-- (!\reg_troco|valor_armazenado\(5) & !\reg_troco|valor_armazenado\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010001110000100001000111011100111000100001110011100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_troco|ALT_INV_valor_armazenado\(7),
	datab => \reg_troco|ALT_INV_valor_armazenado\(3),
	datac => \reg_troco|ALT_INV_valor_armazenado\(5),
	datad => \reg_troco|ALT_INV_valor_armazenado\(6),
	dataf => \reg_troco|ALT_INV_valor_armazenado\(4),
	combout => \display|U3|temp~1_combout\);

-- Location: LABCELL_X24_Y3_N24
\display|U3|temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U3|temp~0_combout\ = ( \reg_troco|valor_armazenado\(4) & ( (!\reg_troco|valor_armazenado\(7) & ((!\reg_troco|valor_armazenado\(3) & (!\reg_troco|valor_armazenado\(6) & \reg_troco|valor_armazenado\(5))) # (\reg_troco|valor_armazenado\(3) & 
-- ((!\reg_troco|valor_armazenado\(5)))))) # (\reg_troco|valor_armazenado\(7) & (!\reg_troco|valor_armazenado\(3) $ (((\reg_troco|valor_armazenado\(5)))))) ) ) # ( !\reg_troco|valor_armazenado\(4) & ( (!\reg_troco|valor_armazenado\(7) & 
-- ((!\reg_troco|valor_armazenado\(3) & (\reg_troco|valor_armazenado\(6) & !\reg_troco|valor_armazenado\(5))) # (\reg_troco|valor_armazenado\(3) & (!\reg_troco|valor_armazenado\(6) $ (\reg_troco|valor_armazenado\(5)))))) # (\reg_troco|valor_armazenado\(7) & 
-- ((!\reg_troco|valor_armazenado\(3) & (!\reg_troco|valor_armazenado\(6) $ (\reg_troco|valor_armazenado\(5)))) # (\reg_troco|valor_armazenado\(3) & (!\reg_troco|valor_armazenado\(6) & \reg_troco|valor_armazenado\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100000010110011010000001011001100110100100010110011010010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_troco|ALT_INV_valor_armazenado\(7),
	datab => \reg_troco|ALT_INV_valor_armazenado\(3),
	datac => \reg_troco|ALT_INV_valor_armazenado\(6),
	datad => \reg_troco|ALT_INV_valor_armazenado\(5),
	dataf => \reg_troco|ALT_INV_valor_armazenado\(4),
	combout => \display|U3|temp~0_combout\);

-- Location: LABCELL_X29_Y3_N51
\display|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux14~0_combout\ = ( \display|U3|temp~0_combout\ & ( \reg_troco|valor_armazenado\(2) & ( (!\reg_troco|valor_armazenado\(1) & (\display|U3|LessThan3~0_combout\ & \display|U3|temp~1_combout\)) ) ) ) # ( !\display|U3|temp~0_combout\ & ( 
-- \reg_troco|valor_armazenado\(2) & ( !\display|U3|LessThan3~0_combout\ $ (\display|U3|temp~1_combout\) ) ) ) # ( \display|U3|temp~0_combout\ & ( !\reg_troco|valor_armazenado\(2) & ( (!\display|U3|LessThan3~0_combout\ & (!\reg_troco|valor_armazenado\(1) & 
-- !\display|U3|temp~1_combout\)) # (\display|U3|LessThan3~0_combout\ & ((\display|U3|temp~1_combout\))) ) ) ) # ( !\display|U3|temp~0_combout\ & ( !\reg_troco|valor_armazenado\(2) & ( (!\display|U3|LessThan3~0_combout\ & !\display|U3|temp~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000101000000000111111110000000011110000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_troco|ALT_INV_valor_armazenado\(1),
	datac => \display|U3|ALT_INV_LessThan3~0_combout\,
	datad => \display|U3|ALT_INV_temp~1_combout\,
	datae => \display|U3|ALT_INV_temp~0_combout\,
	dataf => \reg_troco|ALT_INV_valor_armazenado\(2),
	combout => \display|Mux14~0_combout\);

-- Location: MLABCELL_X28_Y3_N48
\display|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux13~0_combout\ = ( \display|Mux14~0_combout\ & ( (!\estado_fsm[1]~input_o\ & (!\estado_fsm[0]~input_o\ & \display|Mux14~1_combout\)) ) ) # ( !\display|Mux14~0_combout\ & ( (!\estado_fsm[0]~input_o\ & ((!\estado_fsm[1]~input_o\ & 
-- (\display|Mux14~1_combout\)) # (\estado_fsm[1]~input_o\ & ((\estado_fsm[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[1]~input_o\,
	datab => \ALT_INV_estado_fsm[0]~input_o\,
	datac => \display|ALT_INV_Mux14~1_combout\,
	datad => \ALT_INV_estado_fsm[2]~input_o\,
	dataf => \display|ALT_INV_Mux14~0_combout\,
	combout => \display|Mux13~0_combout\);

-- Location: MLABCELL_X28_Y3_N27
\display|U3|Add5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U3|Add5~0_combout\ = ( \reg_troco|valor_armazenado\(2) & ( !\display|U3|LessThan3~0_combout\ $ (\reg_troco|valor_armazenado\(1)) ) ) # ( !\reg_troco|valor_armazenado\(2) & ( !\display|U3|LessThan3~0_combout\ $ (!\reg_troco|valor_armazenado\(1)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|U3|ALT_INV_LessThan3~0_combout\,
	datad => \reg_troco|ALT_INV_valor_armazenado\(1),
	dataf => \reg_troco|ALT_INV_valor_armazenado\(2),
	combout => \display|U3|Add5~0_combout\);

-- Location: MLABCELL_X28_Y3_N36
\display|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux15~2_combout\ = ( !\estado_fsm[1]~input_o\ & ( ((!\display|U1|temp~0_combout\ $ (((\reg_total_inserido|valor_armazenado\(1)))))) ) ) # ( \estado_fsm[1]~input_o\ & ( (!\display|Mux14~0_combout\) # ((!\estado_fsm[2]~input_o\) # 
-- (!\display|U3|LessThan3~0_combout\ $ ((!\reg_troco|valor_armazenado\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111000011110000111111111011111000001111000011111111111110111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Mux14~0_combout\,
	datab => \display|U3|ALT_INV_LessThan3~0_combout\,
	datac => \reg_troco|ALT_INV_valor_armazenado\(2),
	datad => \ALT_INV_estado_fsm[2]~input_o\,
	datae => \ALT_INV_estado_fsm[1]~input_o\,
	dataf => \reg_total_inserido|ALT_INV_valor_armazenado\(1),
	datag => \display|U1|ALT_INV_temp~0_combout\,
	combout => \display|Mux15~2_combout\);

-- Location: MLABCELL_X28_Y3_N51
\display|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux13~1_combout\ = ( \display|Mux14~0_combout\ & ( !\estado_fsm[0]~input_o\ ) ) # ( !\display|Mux14~0_combout\ & ( (!\estado_fsm[0]~input_o\ & ((!\estado_fsm[1]~input_o\) # (!\estado_fsm[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011001000110010001100100011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[1]~input_o\,
	datab => \ALT_INV_estado_fsm[0]~input_o\,
	datac => \ALT_INV_estado_fsm[2]~input_o\,
	dataf => \display|ALT_INV_Mux14~0_combout\,
	combout => \display|Mux13~1_combout\);

-- Location: MLABCELL_X28_Y3_N54
\display|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux15~1_combout\ = ( \display|Mux15~2_combout\ & ( \display|Mux13~1_combout\ & ( (!\display|Mux13~0_combout\) # (\display|U1|temp~0_combout\) ) ) ) # ( !\display|Mux15~2_combout\ & ( \display|Mux13~1_combout\ & ( (\display|U1|temp~0_combout\ & 
-- \display|Mux13~0_combout\) ) ) ) # ( \display|Mux15~2_combout\ & ( !\display|Mux13~1_combout\ & ( (!\display|Mux13~0_combout\ & (!\display|Mux15~0_combout\)) # (\display|Mux13~0_combout\ & ((!\display|U3|Add5~0_combout\))) ) ) ) # ( 
-- !\display|Mux15~2_combout\ & ( !\display|Mux13~1_combout\ & ( (!\display|Mux13~0_combout\ & (!\display|Mux15~0_combout\)) # (\display|Mux13~0_combout\ & ((!\display|U3|Add5~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110100000101011111010000000000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Mux15~0_combout\,
	datab => \display|U1|ALT_INV_temp~0_combout\,
	datac => \display|ALT_INV_Mux13~0_combout\,
	datad => \display|U3|ALT_INV_Add5~0_combout\,
	datae => \display|ALT_INV_Mux15~2_combout\,
	dataf => \display|ALT_INV_Mux13~1_combout\,
	combout => \display|Mux15~1_combout\);

-- Location: LABCELL_X29_Y3_N6
\display|Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux14~2_combout\ = ( \display|U3|temp~0_combout\ & ( \reg_troco|valor_armazenado\(2) & ( (\display|U3|LessThan3~0_combout\ & !\reg_troco|valor_armazenado\(1)) ) ) ) # ( !\display|U3|temp~0_combout\ & ( \reg_troco|valor_armazenado\(2) & ( 
-- (!\display|U3|temp~1_combout\ & (\display|U3|LessThan3~0_combout\ & \reg_troco|valor_armazenado\(1))) # (\display|U3|temp~1_combout\ & (!\display|U3|LessThan3~0_combout\)) ) ) ) # ( \display|U3|temp~0_combout\ & ( !\reg_troco|valor_armazenado\(2) & ( 
-- (!\display|U3|LessThan3~0_combout\ & ((!\reg_troco|valor_armazenado\(1)))) # (\display|U3|LessThan3~0_combout\ & (!\display|U3|temp~1_combout\)) ) ) ) # ( !\display|U3|temp~0_combout\ & ( !\reg_troco|valor_armazenado\(2) & ( (\display|U3|temp~1_combout\ & 
-- (!\display|U3|LessThan3~0_combout\ & \reg_troco|valor_armazenado\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100111000101110001001000110010001100011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|U3|ALT_INV_temp~1_combout\,
	datab => \display|U3|ALT_INV_LessThan3~0_combout\,
	datac => \reg_troco|ALT_INV_valor_armazenado\(1),
	datae => \display|U3|ALT_INV_temp~0_combout\,
	dataf => \reg_troco|ALT_INV_valor_armazenado\(2),
	combout => \display|Mux14~2_combout\);

-- Location: MLABCELL_X28_Y3_N0
\display|Mux14~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux14~4_combout\ = ( !\estado_fsm[1]~input_o\ & ( \reg_total_inserido|valor_armazenado\(1) & ( (\display|U1|temp~2_combout\ & (!\display|U1|temp~1_combout\ & !\estado_fsm[0]~input_o\)) ) ) ) # ( !\estado_fsm[1]~input_o\ & ( 
-- !\reg_total_inserido|valor_armazenado\(1) & ( (!\estado_fsm[0]~input_o\ & ((!\display|U1|temp~0_combout\ & ((\display|U1|temp~1_combout\))) # (\display|U1|temp~0_combout\ & (\display|U1|temp~2_combout\ & !\display|U1|temp~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110000000000000000000000000001010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|U1|ALT_INV_temp~2_combout\,
	datab => \display|U1|ALT_INV_temp~0_combout\,
	datac => \display|U1|ALT_INV_temp~1_combout\,
	datad => \ALT_INV_estado_fsm[0]~input_o\,
	datae => \ALT_INV_estado_fsm[1]~input_o\,
	dataf => \reg_total_inserido|ALT_INV_valor_armazenado\(1),
	combout => \display|Mux14~4_combout\);

-- Location: LABCELL_X27_Y3_N45
\display|Mux14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux14~3_combout\ = (!\product_selection[1]~input_o\ & (\product_selection[3]~input_o\ & !\product_selection[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[1]~input_o\,
	datab => \ALT_INV_product_selection[3]~input_o\,
	datad => \ALT_INV_product_selection[2]~input_o\,
	combout => \display|Mux14~3_combout\);

-- Location: MLABCELL_X28_Y3_N42
\display|Mux14~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux14~5_combout\ = ( !\display|Mux14~4_combout\ & ( \display|Mux14~3_combout\ & ( (!\estado_fsm[0]~input_o\ & ((!\estado_fsm[1]~input_o\) # ((!\display|Mux14~2_combout\ & \estado_fsm[2]~input_o\)))) ) ) ) # ( !\display|Mux14~4_combout\ & ( 
-- !\display|Mux14~3_combout\ & ( (!\estado_fsm[0]~input_o\ & ((!\estado_fsm[1]~input_o\) # ((!\display|Mux14~2_combout\ & \estado_fsm[2]~input_o\)))) # (\estado_fsm[0]~input_o\ & (((\estado_fsm[1]~input_o\ & !\estado_fsm[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111001000000000000000000011000000110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Mux14~2_combout\,
	datab => \ALT_INV_estado_fsm[0]~input_o\,
	datac => \ALT_INV_estado_fsm[1]~input_o\,
	datad => \ALT_INV_estado_fsm[2]~input_o\,
	datae => \display|ALT_INV_Mux14~4_combout\,
	dataf => \display|ALT_INV_Mux14~3_combout\,
	combout => \display|Mux14~5_combout\);

-- Location: MLABCELL_X28_Y3_N15
\display|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux16~0_combout\ = ( \display|Mux14~0_combout\ & ( (!\estado_fsm[1]~input_o\ & (((\reg_total_inserido|valor_armazenado\(1))))) # (\estado_fsm[1]~input_o\ & (!\reg_troco|valor_armazenado\(1) & ((\estado_fsm[2]~input_o\)))) ) ) # ( 
-- !\display|Mux14~0_combout\ & ( (\reg_total_inserido|valor_armazenado\(1) & !\estado_fsm[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000010100011001100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_troco|ALT_INV_valor_armazenado\(1),
	datab => \reg_total_inserido|ALT_INV_valor_armazenado\(1),
	datac => \ALT_INV_estado_fsm[2]~input_o\,
	datad => \ALT_INV_estado_fsm[1]~input_o\,
	dataf => \display|ALT_INV_Mux14~0_combout\,
	combout => \display|Mux16~0_combout\);

-- Location: LABCELL_X27_Y3_N48
\display|Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux16~1_combout\ = ( \product_selection[1]~input_o\ & ( (\product_selection[3]~input_o\ & (!\estado_fsm[2]~input_o\ & \estado_fsm[1]~input_o\)) ) ) # ( !\product_selection[1]~input_o\ & ( (!\estado_fsm[2]~input_o\ & (\estado_fsm[1]~input_o\ & 
-- ((!\product_selection[2]~input_o\) # (!\product_selection[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000001110000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[2]~input_o\,
	datab => \ALT_INV_product_selection[3]~input_o\,
	datac => \ALT_INV_estado_fsm[2]~input_o\,
	datad => \ALT_INV_estado_fsm[1]~input_o\,
	dataf => \ALT_INV_product_selection[1]~input_o\,
	combout => \display|Mux16~1_combout\);

-- Location: MLABCELL_X28_Y3_N30
\display|Mux16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux16~2_combout\ = ( \display|Mux16~1_combout\ & ( \display|Mux13~1_combout\ & ( (!\display|Mux13~0_combout\ & (!\display|Mux16~0_combout\)) # (\display|Mux13~0_combout\ & ((\reg_total_inserido|valor_armazenado\(1)))) ) ) ) # ( 
-- !\display|Mux16~1_combout\ & ( \display|Mux13~1_combout\ & ( (!\display|Mux13~0_combout\ & (!\display|Mux16~0_combout\)) # (\display|Mux13~0_combout\ & ((\reg_total_inserido|valor_armazenado\(1)))) ) ) ) # ( \display|Mux16~1_combout\ & ( 
-- !\display|Mux13~1_combout\ & ( (!\reg_troco|valor_armazenado\(1) & \display|Mux13~0_combout\) ) ) ) # ( !\display|Mux16~1_combout\ & ( !\display|Mux13~1_combout\ & ( (!\reg_troco|valor_armazenado\(1)) # (!\display|Mux13~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010000010100000101011000000110011111100000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_troco|ALT_INV_valor_armazenado\(1),
	datab => \display|ALT_INV_Mux16~0_combout\,
	datac => \display|ALT_INV_Mux13~0_combout\,
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(1),
	datae => \display|ALT_INV_Mux16~1_combout\,
	dataf => \display|ALT_INV_Mux13~1_combout\,
	combout => \display|Mux16~2_combout\);

-- Location: MLABCELL_X28_Y3_N6
\display|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux17~0_combout\ = ( \estado_fsm[1]~input_o\ & ( \product_selection[0]~input_o\ & ( (!\estado_fsm[0]~input_o\ & (\estado_fsm[2]~input_o\ & !\reg_troco|valor_armazenado\(0))) ) ) ) # ( !\estado_fsm[1]~input_o\ & ( \product_selection[0]~input_o\ & 
-- ( (!\estado_fsm[0]~input_o\ & !\reg_total_inserido|valor_armazenado\(0)) ) ) ) # ( \estado_fsm[1]~input_o\ & ( !\product_selection[0]~input_o\ & ( (!\estado_fsm[0]~input_o\ & (\estado_fsm[2]~input_o\ & !\reg_troco|valor_armazenado\(0))) # 
-- (\estado_fsm[0]~input_o\ & (!\estado_fsm[2]~input_o\)) ) ) ) # ( !\estado_fsm[1]~input_o\ & ( !\product_selection[0]~input_o\ & ( (!\estado_fsm[0]~input_o\ & !\reg_total_inserido|valor_armazenado\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000011001100100010010100000101000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[0]~input_o\,
	datab => \ALT_INV_estado_fsm[2]~input_o\,
	datac => \reg_total_inserido|ALT_INV_valor_armazenado\(0),
	datad => \reg_troco|ALT_INV_valor_armazenado\(0),
	datae => \ALT_INV_estado_fsm[1]~input_o\,
	dataf => \ALT_INV_product_selection[0]~input_o\,
	combout => \display|Mux17~0_combout\);

-- Location: LABCELL_X50_Y1_N48
\display|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux24~0_combout\ = ( \display|Mux16~2_combout\ & ( \display|Mux17~0_combout\ & ( (!\display|Mux15~1_combout\ & !\display|Mux14~5_combout\) ) ) ) # ( !\display|Mux16~2_combout\ & ( \display|Mux17~0_combout\ & ( (\display|Mux15~1_combout\ & 
-- \display|Mux14~5_combout\) ) ) ) # ( \display|Mux16~2_combout\ & ( !\display|Mux17~0_combout\ & ( !\display|Mux14~5_combout\ ) ) ) # ( !\display|Mux16~2_combout\ & ( !\display|Mux17~0_combout\ & ( (!\display|Mux15~1_combout\ & \display|Mux14~5_combout\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010111100001111000000000101000001011010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Mux15~1_combout\,
	datac => \display|ALT_INV_Mux14~5_combout\,
	datae => \display|ALT_INV_Mux16~2_combout\,
	dataf => \display|ALT_INV_Mux17~0_combout\,
	combout => \display|Mux24~0_combout\);

-- Location: LABCELL_X50_Y1_N57
\display|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux23~0_combout\ = ( \display|Mux16~2_combout\ & ( \display|Mux15~1_combout\ & ( !\display|Mux14~5_combout\ $ (\display|Mux17~0_combout\) ) ) ) # ( !\display|Mux16~2_combout\ & ( \display|Mux15~1_combout\ & ( !\display|Mux17~0_combout\ ) ) ) # ( 
-- \display|Mux16~2_combout\ & ( !\display|Mux15~1_combout\ & ( !\display|Mux14~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101011110000111100001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Mux14~5_combout\,
	datac => \display|ALT_INV_Mux17~0_combout\,
	datae => \display|ALT_INV_Mux16~2_combout\,
	dataf => \display|ALT_INV_Mux15~1_combout\,
	combout => \display|Mux23~0_combout\);

-- Location: LABCELL_X50_Y1_N24
\display|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux22~0_combout\ = ( \display|Mux16~2_combout\ & ( \display|Mux17~0_combout\ & ( !\display|Mux15~1_combout\ ) ) ) # ( !\display|Mux16~2_combout\ & ( \display|Mux17~0_combout\ & ( (\display|Mux15~1_combout\ & !\display|Mux14~5_combout\) ) ) ) # ( 
-- \display|Mux16~2_combout\ & ( !\display|Mux17~0_combout\ & ( !\display|Mux14~5_combout\ ) ) ) # ( !\display|Mux16~2_combout\ & ( !\display|Mux17~0_combout\ & ( (\display|Mux15~1_combout\ & !\display|Mux14~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111100001111000001010000010100001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Mux15~1_combout\,
	datac => \display|ALT_INV_Mux14~5_combout\,
	datae => \display|ALT_INV_Mux16~2_combout\,
	dataf => \display|ALT_INV_Mux17~0_combout\,
	combout => \display|Mux22~0_combout\);

-- Location: LABCELL_X50_Y1_N9
\display|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux21~0_combout\ = ( \display|Mux16~2_combout\ & ( \display|Mux15~1_combout\ & ( (!\display|Mux14~5_combout\) # (!\display|Mux17~0_combout\) ) ) ) # ( !\display|Mux16~2_combout\ & ( \display|Mux15~1_combout\ & ( \display|Mux17~0_combout\ ) ) ) # 
-- ( !\display|Mux16~2_combout\ & ( !\display|Mux15~1_combout\ & ( (\display|Mux14~5_combout\ & !\display|Mux17~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000000001111000011111111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Mux14~5_combout\,
	datac => \display|ALT_INV_Mux17~0_combout\,
	datae => \display|ALT_INV_Mux16~2_combout\,
	dataf => \display|ALT_INV_Mux15~1_combout\,
	combout => \display|Mux21~0_combout\);

-- Location: LABCELL_X50_Y1_N12
\display|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux20~0_combout\ = ( !\display|Mux16~2_combout\ & ( \display|Mux17~0_combout\ & ( (\display|Mux15~1_combout\ & \display|Mux14~5_combout\) ) ) ) # ( \display|Mux16~2_combout\ & ( !\display|Mux17~0_combout\ & ( (\display|Mux14~5_combout\) # 
-- (\display|Mux15~1_combout\) ) ) ) # ( !\display|Mux16~2_combout\ & ( !\display|Mux17~0_combout\ & ( (!\display|Mux15~1_combout\) # (\display|Mux14~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111010111110101111100000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Mux15~1_combout\,
	datac => \display|ALT_INV_Mux14~5_combout\,
	datae => \display|ALT_INV_Mux16~2_combout\,
	dataf => \display|ALT_INV_Mux17~0_combout\,
	combout => \display|Mux20~0_combout\);

-- Location: LABCELL_X50_Y1_N33
\display|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux19~0_combout\ = ( \display|Mux16~2_combout\ & ( \display|Mux15~1_combout\ & ( !\display|Mux17~0_combout\ ) ) ) # ( \display|Mux16~2_combout\ & ( !\display|Mux15~1_combout\ & ( \display|Mux14~5_combout\ ) ) ) # ( !\display|Mux16~2_combout\ & ( 
-- !\display|Mux15~1_combout\ & ( (\display|Mux14~5_combout\ & !\display|Mux17~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010101010101010100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Mux14~5_combout\,
	datac => \display|ALT_INV_Mux17~0_combout\,
	datae => \display|ALT_INV_Mux16~2_combout\,
	dataf => \display|ALT_INV_Mux15~1_combout\,
	combout => \display|Mux19~0_combout\);

-- Location: LABCELL_X50_Y1_N36
\display|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux18~0_combout\ = ( \display|Mux16~2_combout\ & ( \display|Mux17~0_combout\ & ( (\display|Mux14~5_combout\) # (\display|Mux15~1_combout\) ) ) ) # ( !\display|Mux16~2_combout\ & ( \display|Mux17~0_combout\ & ( (!\display|Mux14~5_combout\) # 
-- (\display|Mux15~1_combout\) ) ) ) # ( \display|Mux16~2_combout\ & ( !\display|Mux17~0_combout\ & ( !\display|Mux15~1_combout\ ) ) ) # ( !\display|Mux16~2_combout\ & ( !\display|Mux17~0_combout\ & ( (!\display|Mux14~5_combout\) # 
-- (\display|Mux15~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101101010101010101011110101111101010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Mux15~1_combout\,
	datac => \display|ALT_INV_Mux14~5_combout\,
	datae => \display|ALT_INV_Mux16~2_combout\,
	dataf => \display|ALT_INV_Mux17~0_combout\,
	combout => \display|Mux18~0_combout\);

-- Location: MLABCELL_X25_Y3_N24
\display|U1|bcd_out[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U1|bcd_out[5]~0_combout\ = ( \reg_total_inserido|valor_armazenado\(7) & ( \reg_total_inserido|valor_armazenado\(5) & ( (!\reg_total_inserido|valor_armazenado\(4)) # ((!\reg_total_inserido|valor_armazenado\(6) & 
-- (!\reg_total_inserido|valor_armazenado\(3) & !\reg_total_inserido|valor_armazenado\(2)))) ) ) ) # ( !\reg_total_inserido|valor_armazenado\(7) & ( \reg_total_inserido|valor_armazenado\(5) & ( (!\reg_total_inserido|valor_armazenado\(3) & 
-- (!\reg_total_inserido|valor_armazenado\(6) & ((!\reg_total_inserido|valor_armazenado\(4))))) # (\reg_total_inserido|valor_armazenado\(3) & (\reg_total_inserido|valor_armazenado\(4) & ((\reg_total_inserido|valor_armazenado\(2)) # 
-- (\reg_total_inserido|valor_armazenado\(6))))) ) ) ) # ( \reg_total_inserido|valor_armazenado\(7) & ( !\reg_total_inserido|valor_armazenado\(5) & ( (!\reg_total_inserido|valor_armazenado\(6) & (!\reg_total_inserido|valor_armazenado\(4) & 
-- ((!\reg_total_inserido|valor_armazenado\(3)) # (!\reg_total_inserido|valor_armazenado\(2))))) # (\reg_total_inserido|valor_armazenado\(6) & (\reg_total_inserido|valor_armazenado\(3) & (\reg_total_inserido|valor_armazenado\(2) & 
-- \reg_total_inserido|valor_armazenado\(4)))) ) ) ) # ( !\reg_total_inserido|valor_armazenado\(7) & ( !\reg_total_inserido|valor_armazenado\(5) & ( (!\reg_total_inserido|valor_armazenado\(6) & (\reg_total_inserido|valor_armazenado\(4) & 
-- ((\reg_total_inserido|valor_armazenado\(2)) # (\reg_total_inserido|valor_armazenado\(3))))) # (\reg_total_inserido|valor_armazenado\(6) & (((!\reg_total_inserido|valor_armazenado\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100101010101010000000000110001000000100111111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_total_inserido|ALT_INV_valor_armazenado\(6),
	datab => \reg_total_inserido|ALT_INV_valor_armazenado\(3),
	datac => \reg_total_inserido|ALT_INV_valor_armazenado\(2),
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(4),
	datae => \reg_total_inserido|ALT_INV_valor_armazenado\(7),
	dataf => \reg_total_inserido|ALT_INV_valor_armazenado\(5),
	combout => \display|U1|bcd_out[5]~0_combout\);

-- Location: LABCELL_X24_Y3_N0
\display|U3|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U3|LessThan6~0_combout\ = ( \reg_troco|valor_armazenado\(2) & ( \reg_troco|valor_armazenado\(4) & ( (!\reg_troco|valor_armazenado\(6) & ((\reg_troco|valor_armazenado\(7)))) # (\reg_troco|valor_armazenado\(6) & (\reg_troco|valor_armazenado\(5) & 
-- !\reg_troco|valor_armazenado\(7))) ) ) ) # ( !\reg_troco|valor_armazenado\(2) & ( \reg_troco|valor_armazenado\(4) & ( (!\reg_troco|valor_armazenado\(6) & ((\reg_troco|valor_armazenado\(7)))) # (\reg_troco|valor_armazenado\(6) & 
-- (\reg_troco|valor_armazenado\(5) & !\reg_troco|valor_armazenado\(7))) ) ) ) # ( \reg_troco|valor_armazenado\(2) & ( !\reg_troco|valor_armazenado\(4) & ( (!\reg_troco|valor_armazenado\(6) & (((\reg_troco|valor_armazenado\(7))))) # 
-- (\reg_troco|valor_armazenado\(6) & ((!\reg_troco|valor_armazenado\(5) & (\reg_troco|valor_armazenado\(7) & !\reg_troco|valor_armazenado\(3))) # (\reg_troco|valor_armazenado\(5) & (!\reg_troco|valor_armazenado\(7))))) ) ) ) # ( 
-- !\reg_troco|valor_armazenado\(2) & ( !\reg_troco|valor_armazenado\(4) & ( (!\reg_troco|valor_armazenado\(6) & (((\reg_troco|valor_armazenado\(7))))) # (\reg_troco|valor_armazenado\(6) & ((!\reg_troco|valor_armazenado\(5) & (\reg_troco|valor_armazenado\(7) 
-- & !\reg_troco|valor_armazenado\(3))) # (\reg_troco|valor_armazenado\(5) & (!\reg_troco|valor_armazenado\(7) & \reg_troco|valor_armazenado\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011010000111100001101000011010000110100001101000011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_troco|ALT_INV_valor_armazenado\(6),
	datab => \reg_troco|ALT_INV_valor_armazenado\(5),
	datac => \reg_troco|ALT_INV_valor_armazenado\(7),
	datad => \reg_troco|ALT_INV_valor_armazenado\(3),
	datae => \reg_troco|ALT_INV_valor_armazenado\(2),
	dataf => \reg_troco|ALT_INV_valor_armazenado\(4),
	combout => \display|U3|LessThan6~0_combout\);

-- Location: LABCELL_X30_Y3_N30
\display|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux12~0_combout\ = ( \display|U3|LessThan3~0_combout\ & ( \display|U3|LessThan6~0_combout\ & ( (!\estado_fsm[1]~input_o\ & (!\display|U1|bcd_out[5]~0_combout\ & (!\estado_fsm[0]~input_o\))) # (\estado_fsm[1]~input_o\ & ((!\estado_fsm[0]~input_o\ 
-- $ (!\estado_fsm[2]~input_o\)))) ) ) ) # ( !\display|U3|LessThan3~0_combout\ & ( \display|U3|LessThan6~0_combout\ & ( (!\estado_fsm[1]~input_o\ & (!\display|U1|bcd_out[5]~0_combout\ & (!\estado_fsm[0]~input_o\))) # (\estado_fsm[1]~input_o\ & 
-- (((\estado_fsm[0]~input_o\ & !\estado_fsm[2]~input_o\)))) ) ) ) # ( \display|U3|LessThan3~0_combout\ & ( !\display|U3|LessThan6~0_combout\ & ( (!\estado_fsm[1]~input_o\ & (!\display|U1|bcd_out[5]~0_combout\ & (!\estado_fsm[0]~input_o\))) # 
-- (\estado_fsm[1]~input_o\ & (((\estado_fsm[0]~input_o\ & !\estado_fsm[2]~input_o\)))) ) ) ) # ( !\display|U3|LessThan3~0_combout\ & ( !\display|U3|LessThan6~0_combout\ & ( (!\estado_fsm[1]~input_o\ & (!\display|U1|bcd_out[5]~0_combout\ & 
-- (!\estado_fsm[0]~input_o\))) # (\estado_fsm[1]~input_o\ & ((!\estado_fsm[0]~input_o\ $ (!\estado_fsm[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010111010000100001011000000010000101100000001000010111010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[1]~input_o\,
	datab => \display|U1|ALT_INV_bcd_out[5]~0_combout\,
	datac => \ALT_INV_estado_fsm[0]~input_o\,
	datad => \ALT_INV_estado_fsm[2]~input_o\,
	datae => \display|U3|ALT_INV_LessThan3~0_combout\,
	dataf => \display|U3|ALT_INV_LessThan6~0_combout\,
	combout => \display|Mux12~0_combout\);

-- Location: LABCELL_X27_Y3_N42
\display|Mux13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux13~3_combout\ = ( !\estado_fsm[2]~input_o\ & ( (\estado_fsm[1]~input_o\ & ((!\product_selection[3]~input_o\) # ((!\product_selection[1]~input_o\ & !\product_selection[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001100000011100000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_product_selection[1]~input_o\,
	datab => \ALT_INV_product_selection[3]~input_o\,
	datac => \ALT_INV_estado_fsm[1]~input_o\,
	datad => \ALT_INV_product_selection[2]~input_o\,
	dataf => \ALT_INV_estado_fsm[2]~input_o\,
	combout => \display|Mux13~3_combout\);

-- Location: MLABCELL_X28_Y3_N12
\display|U1|Add5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U1|Add5~0_combout\ = ( \display|U1|temp~1_combout\ & ( !\display|U1|temp~2_combout\ $ (((!\reg_total_inserido|valor_armazenado\(1) & !\display|U1|temp~0_combout\))) ) ) # ( !\display|U1|temp~1_combout\ & ( \display|U1|temp~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100111100111100000011110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_total_inserido|ALT_INV_valor_armazenado\(1),
	datac => \display|U1|ALT_INV_temp~2_combout\,
	datad => \display|U1|ALT_INV_temp~0_combout\,
	dataf => \display|U1|ALT_INV_temp~1_combout\,
	combout => \display|U1|Add5~0_combout\);

-- Location: MLABCELL_X28_Y3_N24
\display|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux13~2_combout\ = ( \display|Mux14~0_combout\ & ( (!\estado_fsm[1]~input_o\ & (!\display|U1|Add5~0_combout\)) # (\estado_fsm[1]~input_o\ & ((\estado_fsm[2]~input_o\))) ) ) # ( !\display|Mux14~0_combout\ & ( (!\display|U1|Add5~0_combout\ & 
-- !\estado_fsm[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110011111100000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|U1|ALT_INV_Add5~0_combout\,
	datac => \ALT_INV_estado_fsm[1]~input_o\,
	datad => \ALT_INV_estado_fsm[2]~input_o\,
	dataf => \display|ALT_INV_Mux14~0_combout\,
	combout => \display|Mux13~2_combout\);

-- Location: LABCELL_X29_Y3_N12
\display|U3|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U3|Add5~1_combout\ = ( \display|U3|temp~0_combout\ & ( \reg_troco|valor_armazenado\(2) & ( !\display|U3|temp~1_combout\ $ (((\display|U3|LessThan3~0_combout\ & \reg_troco|valor_armazenado\(1)))) ) ) ) # ( !\display|U3|temp~0_combout\ & ( 
-- \reg_troco|valor_armazenado\(2) & ( !\display|U3|temp~1_combout\ $ (!\display|U3|LessThan3~0_combout\) ) ) ) # ( \display|U3|temp~0_combout\ & ( !\reg_troco|valor_armazenado\(2) & ( !\display|U3|temp~1_combout\ $ (((!\display|U3|LessThan3~0_combout\ & 
-- !\reg_troco|valor_armazenado\(1)))) ) ) ) # ( !\display|U3|temp~0_combout\ & ( !\reg_troco|valor_armazenado\(2) & ( !\display|U3|temp~1_combout\ $ (!\display|U3|LessThan3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011010100110101001100110011001101010100110101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|U3|ALT_INV_temp~1_combout\,
	datab => \display|U3|ALT_INV_LessThan3~0_combout\,
	datac => \reg_troco|ALT_INV_valor_armazenado\(1),
	datae => \display|U3|ALT_INV_temp~0_combout\,
	dataf => \reg_troco|ALT_INV_valor_armazenado\(2),
	combout => \display|U3|Add5~1_combout\);

-- Location: LABCELL_X29_Y3_N18
\display|Mux13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux13~4_combout\ = ( \display|Mux13~0_combout\ & ( \display|U3|Add5~1_combout\ & ( !\display|Mux13~1_combout\ ) ) ) # ( !\display|Mux13~0_combout\ & ( \display|U3|Add5~1_combout\ & ( (!\display|Mux13~1_combout\ & (!\display|Mux13~3_combout\)) # 
-- (\display|Mux13~1_combout\ & ((!\display|Mux13~2_combout\))) ) ) ) # ( !\display|Mux13~0_combout\ & ( !\display|U3|Add5~1_combout\ & ( (!\display|Mux13~1_combout\ & (!\display|Mux13~3_combout\)) # (\display|Mux13~1_combout\ & 
-- ((!\display|Mux13~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010110010101100000000000000000010101100101011001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Mux13~3_combout\,
	datab => \display|ALT_INV_Mux13~2_combout\,
	datac => \display|ALT_INV_Mux13~1_combout\,
	datae => \display|ALT_INV_Mux13~0_combout\,
	dataf => \display|U3|ALT_INV_Add5~1_combout\,
	combout => \display|Mux13~4_combout\);

-- Location: LABCELL_X30_Y3_N42
\display|U1|temp~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U1|temp~5_combout\ = ( \reg_total_inserido|valor_armazenado\(7) & ( (!\reg_total_inserido|valor_armazenado\(5) & !\reg_total_inserido|valor_armazenado\(6)) ) ) # ( !\reg_total_inserido|valor_armazenado\(7) & ( 
-- (\reg_total_inserido|valor_armazenado\(6) & ((\reg_total_inserido|valor_armazenado\(4)) # (\reg_total_inserido|valor_armazenado\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111111000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_total_inserido|ALT_INV_valor_armazenado\(5),
	datac => \reg_total_inserido|ALT_INV_valor_armazenado\(6),
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(4),
	dataf => \reg_total_inserido|ALT_INV_valor_armazenado\(7),
	combout => \display|U1|temp~5_combout\);

-- Location: LABCELL_X30_Y3_N18
\display|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux10~0_combout\ = ( \estado_fsm[2]~input_o\ ) # ( !\estado_fsm[2]~input_o\ & ( (!\estado_fsm[1]~input_o\) # (!\estado_fsm[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111111111111111111111010111110101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[1]~input_o\,
	datac => \ALT_INV_estado_fsm[0]~input_o\,
	datae => \ALT_INV_estado_fsm[2]~input_o\,
	combout => \display|Mux10~0_combout\);

-- Location: LABCELL_X30_Y2_N51
\display|U3|temp~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U3|temp~3_combout\ = ( \reg_troco|valor_armazenado\(7) & ( \reg_troco|valor_armazenado\(4) & ( (!\reg_troco|valor_armazenado\(6) & !\reg_troco|valor_armazenado\(5)) ) ) ) # ( !\reg_troco|valor_armazenado\(7) & ( \reg_troco|valor_armazenado\(4) & 
-- ( \reg_troco|valor_armazenado\(6) ) ) ) # ( \reg_troco|valor_armazenado\(7) & ( !\reg_troco|valor_armazenado\(4) & ( (!\reg_troco|valor_armazenado\(6) & !\reg_troco|valor_armazenado\(5)) ) ) ) # ( !\reg_troco|valor_armazenado\(7) & ( 
-- !\reg_troco|valor_armazenado\(4) & ( (\reg_troco|valor_armazenado\(6) & \reg_troco|valor_armazenado\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101000001010000001010101010101011010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_troco|ALT_INV_valor_armazenado\(6),
	datac => \reg_troco|ALT_INV_valor_armazenado\(5),
	datae => \reg_troco|ALT_INV_valor_armazenado\(7),
	dataf => \reg_troco|ALT_INV_valor_armazenado\(4),
	combout => \display|U3|temp~3_combout\);

-- Location: LABCELL_X30_Y3_N45
\display|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux9~2_combout\ = ( \estado_fsm[0]~input_o\ ) # ( !\estado_fsm[0]~input_o\ & ( (\estado_fsm[1]~input_o\ & ((!\display|U3|LessThan6~0_combout\) # (!\estado_fsm[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|U3|ALT_INV_LessThan6~0_combout\,
	datac => \ALT_INV_estado_fsm[2]~input_o\,
	datad => \ALT_INV_estado_fsm[1]~input_o\,
	dataf => \ALT_INV_estado_fsm[0]~input_o\,
	combout => \display|Mux9~2_combout\);

-- Location: MLABCELL_X25_Y3_N30
\display|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux9~0_combout\ = ( \reg_total_inserido|valor_armazenado\(7) & ( \reg_total_inserido|valor_armazenado\(5) & ( !\reg_total_inserido|valor_armazenado\(6) ) ) ) # ( !\reg_total_inserido|valor_armazenado\(7) & ( 
-- \reg_total_inserido|valor_armazenado\(5) & ( (\reg_total_inserido|valor_armazenado\(6) & (((\reg_total_inserido|valor_armazenado\(4)) # (\reg_total_inserido|valor_armazenado\(2))) # (\reg_total_inserido|valor_armazenado\(3)))) ) ) ) # ( 
-- \reg_total_inserido|valor_armazenado\(7) & ( !\reg_total_inserido|valor_armazenado\(5) & ( (!\reg_total_inserido|valor_armazenado\(6)) # ((!\reg_total_inserido|valor_armazenado\(3) & !\reg_total_inserido|valor_armazenado\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011101010101000010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_total_inserido|ALT_INV_valor_armazenado\(6),
	datab => \reg_total_inserido|ALT_INV_valor_armazenado\(3),
	datac => \reg_total_inserido|ALT_INV_valor_armazenado\(2),
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(4),
	datae => \reg_total_inserido|ALT_INV_valor_armazenado\(7),
	dataf => \reg_total_inserido|ALT_INV_valor_armazenado\(5),
	combout => \display|Mux9~0_combout\);

-- Location: LABCELL_X30_Y3_N51
\display|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux9~1_combout\ = ( \display|Mux9~0_combout\ & ( ((\estado_fsm[1]~input_o\ & !\estado_fsm[2]~input_o\)) # (\estado_fsm[0]~input_o\) ) ) # ( !\display|Mux9~0_combout\ & ( (!\estado_fsm[1]~input_o\) # ((!\estado_fsm[2]~input_o\) # 
-- (\estado_fsm[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111111111110101111111101010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[1]~input_o\,
	datac => \ALT_INV_estado_fsm[2]~input_o\,
	datad => \ALT_INV_estado_fsm[0]~input_o\,
	dataf => \display|ALT_INV_Mux9~0_combout\,
	combout => \display|Mux9~1_combout\);

-- Location: LABCELL_X30_Y3_N6
\display|U1|temp~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U1|temp~4_combout\ = ( \reg_total_inserido|valor_armazenado\(5) & ( (!\reg_total_inserido|valor_armazenado\(6) & (!\reg_total_inserido|valor_armazenado\(7) & ((\reg_total_inserido|valor_armazenado\(4)) # 
-- (\reg_total_inserido|valor_armazenado\(3))))) # (\reg_total_inserido|valor_armazenado\(6) & (\reg_total_inserido|valor_armazenado\(4) & ((\reg_total_inserido|valor_armazenado\(3)) # (\reg_total_inserido|valor_armazenado\(7))))) ) ) # ( 
-- !\reg_total_inserido|valor_armazenado\(5) & ( (!\reg_total_inserido|valor_armazenado\(6) & (\reg_total_inserido|valor_armazenado\(7))) # (\reg_total_inserido|valor_armazenado\(6) & (!\reg_total_inserido|valor_armazenado\(7) & 
-- !\reg_total_inserido|valor_armazenado\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000100010011001100010001000001000100111010000100010011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_total_inserido|ALT_INV_valor_armazenado\(6),
	datab => \reg_total_inserido|ALT_INV_valor_armazenado\(7),
	datac => \reg_total_inserido|ALT_INV_valor_armazenado\(3),
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(4),
	dataf => \reg_total_inserido|ALT_INV_valor_armazenado\(5),
	combout => \display|U1|temp~4_combout\);

-- Location: LABCELL_X30_Y3_N0
\display|U1|temp~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U1|temp~3_combout\ = ( \reg_total_inserido|valor_armazenado\(5) & ( \reg_total_inserido|valor_armazenado\(7) & ( (!\reg_total_inserido|valor_armazenado\(6) & (\reg_total_inserido|valor_armazenado\(4) & ((\reg_total_inserido|valor_armazenado\(2)) 
-- # (\reg_total_inserido|valor_armazenado\(3))))) # (\reg_total_inserido|valor_armazenado\(6) & (((!\reg_total_inserido|valor_armazenado\(4))))) ) ) ) # ( !\reg_total_inserido|valor_armazenado\(5) & ( \reg_total_inserido|valor_armazenado\(7) & ( 
-- (!\reg_total_inserido|valor_armazenado\(3) & ((!\reg_total_inserido|valor_armazenado\(6) $ (!\reg_total_inserido|valor_armazenado\(4))))) # (\reg_total_inserido|valor_armazenado\(3) & ((!\reg_total_inserido|valor_armazenado\(2) & 
-- (!\reg_total_inserido|valor_armazenado\(6) & \reg_total_inserido|valor_armazenado\(4))) # (\reg_total_inserido|valor_armazenado\(2) & ((!\reg_total_inserido|valor_armazenado\(6)) # (\reg_total_inserido|valor_armazenado\(4)))))) ) ) ) # ( 
-- \reg_total_inserido|valor_armazenado\(5) & ( !\reg_total_inserido|valor_armazenado\(7) & ( (!\reg_total_inserido|valor_armazenado\(3) & ((!\reg_total_inserido|valor_armazenado\(6) & ((!\reg_total_inserido|valor_armazenado\(4)))) # 
-- (\reg_total_inserido|valor_armazenado\(6) & ((\reg_total_inserido|valor_armazenado\(4)) # (\reg_total_inserido|valor_armazenado\(2)))))) # (\reg_total_inserido|valor_armazenado\(3) & ((!\reg_total_inserido|valor_armazenado\(6) & 
-- (\reg_total_inserido|valor_armazenado\(2) & \reg_total_inserido|valor_armazenado\(4))) # (\reg_total_inserido|valor_armazenado\(6) & ((!\reg_total_inserido|valor_armazenado\(4)))))) ) ) ) # ( !\reg_total_inserido|valor_armazenado\(5) & ( 
-- !\reg_total_inserido|valor_armazenado\(7) & ( (!\reg_total_inserido|valor_armazenado\(6) & (\reg_total_inserido|valor_armazenado\(4) & ((\reg_total_inserido|valor_armazenado\(2)) # (\reg_total_inserido|valor_armazenado\(3))))) # 
-- (\reg_total_inserido|valor_armazenado\(6) & (((!\reg_total_inserido|valor_armazenado\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101110000101001110001101000011010111100010000111101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_total_inserido|ALT_INV_valor_armazenado\(3),
	datab => \reg_total_inserido|ALT_INV_valor_armazenado\(2),
	datac => \reg_total_inserido|ALT_INV_valor_armazenado\(6),
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(4),
	datae => \reg_total_inserido|ALT_INV_valor_armazenado\(5),
	dataf => \reg_total_inserido|ALT_INV_valor_armazenado\(7),
	combout => \display|U1|temp~3_combout\);

-- Location: LABCELL_X24_Y3_N54
\display|U3|temp~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U3|temp~2_combout\ = ( \reg_troco|valor_armazenado\(4) & ( (!\reg_troco|valor_armazenado\(7) & (\reg_troco|valor_armazenado\(5) & ((!\reg_troco|valor_armazenado\(6)) # (\reg_troco|valor_armazenado\(3))))) # (\reg_troco|valor_armazenado\(7) & 
-- ((!\reg_troco|valor_armazenado\(6) $ (\reg_troco|valor_armazenado\(5))))) ) ) # ( !\reg_troco|valor_armazenado\(4) & ( (!\reg_troco|valor_armazenado\(5) & (!\reg_troco|valor_armazenado\(7) $ (((!\reg_troco|valor_armazenado\(6)))))) # 
-- (\reg_troco|valor_armazenado\(5) & (!\reg_troco|valor_armazenado\(7) & (\reg_troco|valor_armazenado\(3) & !\reg_troco|valor_armazenado\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000100000010110100010000001010000101001110101000010100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_troco|ALT_INV_valor_armazenado\(7),
	datab => \reg_troco|ALT_INV_valor_armazenado\(3),
	datac => \reg_troco|ALT_INV_valor_armazenado\(6),
	datad => \reg_troco|ALT_INV_valor_armazenado\(5),
	dataf => \reg_troco|ALT_INV_valor_armazenado\(4),
	combout => \display|U3|temp~2_combout\);

-- Location: LABCELL_X30_Y3_N54
\display|U3|Add6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U3|Add6~2_combout\ = ( \estado_fsm[1]~input_o\ & ( !\estado_fsm[0]~input_o\ & ( (\display|U3|temp~2_combout\) # (\display|U3|LessThan3~0_combout\) ) ) ) # ( !\estado_fsm[1]~input_o\ & ( !\estado_fsm[0]~input_o\ & ( (\display|U1|temp~3_combout\) # 
-- (\display|U1|temp~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111010101011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|U3|ALT_INV_LessThan3~0_combout\,
	datab => \display|U1|ALT_INV_temp~4_combout\,
	datac => \display|U1|ALT_INV_temp~3_combout\,
	datad => \display|U3|ALT_INV_temp~2_combout\,
	datae => \ALT_INV_estado_fsm[1]~input_o\,
	dataf => \ALT_INV_estado_fsm[0]~input_o\,
	combout => \display|U3|Add6~2_combout\);

-- Location: LABCELL_X30_Y3_N36
\display|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux10~1_combout\ = ( !\display|Mux9~2_combout\ & ( (!\display|Mux9~1_combout\ & (!\display|U3|Add6~2_combout\ $ (((!\estado_fsm[1]~input_o\ & (!\display|U1|temp~5_combout\)) # (\estado_fsm[1]~input_o\ & ((!\display|U3|temp~3_combout\))))))) # 
-- (\display|Mux9~1_combout\ & (((\display|U1|temp~5_combout\)))) ) ) # ( \display|Mux9~2_combout\ & ( (((!\display|Mux9~1_combout\ & ((\display|U3|temp~3_combout\))) # (\display|Mux9~1_combout\ & (\display|Mux10~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010110101111000000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[1]~input_o\,
	datab => \display|U1|ALT_INV_temp~5_combout\,
	datac => \display|ALT_INV_Mux10~0_combout\,
	datad => \display|U3|ALT_INV_temp~3_combout\,
	datae => \display|ALT_INV_Mux9~2_combout\,
	dataf => \display|ALT_INV_Mux9~1_combout\,
	datag => \display|U3|ALT_INV_Add6~2_combout\,
	combout => \display|Mux10~1_combout\);

-- Location: LABCELL_X30_Y3_N12
\display|U3|Add6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U3|Add6~0_combout\ = ( \estado_fsm[1]~input_o\ & ( \estado_fsm[0]~input_o\ & ( \display|U3|temp~2_combout\ ) ) ) # ( !\estado_fsm[1]~input_o\ & ( \estado_fsm[0]~input_o\ & ( \display|U1|temp~4_combout\ ) ) ) # ( \estado_fsm[1]~input_o\ & ( 
-- !\estado_fsm[0]~input_o\ & ( !\display|U3|LessThan3~0_combout\ $ (\display|U3|temp~2_combout\) ) ) ) # ( !\estado_fsm[1]~input_o\ & ( !\estado_fsm[0]~input_o\ & ( !\display|U1|temp~4_combout\ $ (\display|U1|temp~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011101010100101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|U3|ALT_INV_LessThan3~0_combout\,
	datab => \display|U1|ALT_INV_temp~4_combout\,
	datac => \display|U1|ALT_INV_temp~3_combout\,
	datad => \display|U3|ALT_INV_temp~2_combout\,
	datae => \ALT_INV_estado_fsm[1]~input_o\,
	dataf => \ALT_INV_estado_fsm[0]~input_o\,
	combout => \display|U3|Add6~0_combout\);

-- Location: LABCELL_X30_Y3_N24
\display|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux11~0_combout\ = ( \display|Mux9~2_combout\ & ( \display|Mux10~0_combout\ & ( (\display|Mux9~1_combout\) # (\display|U3|temp~2_combout\) ) ) ) # ( !\display|Mux9~2_combout\ & ( \display|Mux10~0_combout\ & ( (!\display|Mux9~1_combout\ & 
-- (\display|U3|Add6~0_combout\)) # (\display|Mux9~1_combout\ & ((\display|U1|temp~4_combout\))) ) ) ) # ( \display|Mux9~2_combout\ & ( !\display|Mux10~0_combout\ & ( (\display|U3|temp~2_combout\ & !\display|Mux9~1_combout\) ) ) ) # ( 
-- !\display|Mux9~2_combout\ & ( !\display|Mux10~0_combout\ & ( (!\display|Mux9~1_combout\ & (\display|U3|Add6~0_combout\)) # (\display|Mux9~1_combout\ & ((\display|U1|temp~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111010100000101000000110000001111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|U3|ALT_INV_temp~2_combout\,
	datab => \display|U3|ALT_INV_Add6~0_combout\,
	datac => \display|ALT_INV_Mux9~1_combout\,
	datad => \display|U1|ALT_INV_temp~4_combout\,
	datae => \display|ALT_INV_Mux9~2_combout\,
	dataf => \display|ALT_INV_Mux10~0_combout\,
	combout => \display|Mux11~0_combout\);

-- Location: LABCELL_X29_Y3_N36
\display|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux31~0_combout\ = ( \display|Mux11~0_combout\ & ( (!\display|Mux12~0_combout\ & (\display|Mux13~4_combout\ & \display|Mux10~1_combout\)) # (\display|Mux12~0_combout\ & (!\display|Mux13~4_combout\ & !\display|Mux10~1_combout\)) ) ) # ( 
-- !\display|Mux11~0_combout\ & ( (!\display|Mux12~0_combout\ & ((\display|Mux10~1_combout\))) # (\display|Mux12~0_combout\ & (\display|Mux13~4_combout\ & !\display|Mux10~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101010000001011010101001010000000010100101000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Mux12~0_combout\,
	datac => \display|ALT_INV_Mux13~4_combout\,
	datad => \display|ALT_INV_Mux10~1_combout\,
	dataf => \display|ALT_INV_Mux11~0_combout\,
	combout => \display|Mux31~0_combout\);

-- Location: LABCELL_X29_Y3_N39
\display|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux30~0_combout\ = ( \display|Mux13~4_combout\ & ( (!\display|Mux12~0_combout\ & ((\display|Mux10~1_combout\))) # (\display|Mux12~0_combout\ & (\display|Mux11~0_combout\)) ) ) # ( !\display|Mux13~4_combout\ & ( (!\display|Mux12~0_combout\ & 
-- (!\display|Mux11~0_combout\ $ (!\display|Mux10~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Mux12~0_combout\,
	datab => \display|ALT_INV_Mux11~0_combout\,
	datac => \display|ALT_INV_Mux10~1_combout\,
	dataf => \display|ALT_INV_Mux13~4_combout\,
	combout => \display|Mux30~0_combout\);

-- Location: LABCELL_X29_Y3_N30
\display|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux29~0_combout\ = ( \display|Mux11~0_combout\ & ( (\display|Mux10~1_combout\ & ((\display|Mux13~4_combout\) # (\display|Mux12~0_combout\))) ) ) # ( !\display|Mux11~0_combout\ & ( (!\display|Mux12~0_combout\ & ((!\display|Mux13~4_combout\) # 
-- (\display|Mux10~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010100010101000101010001000010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Mux12~0_combout\,
	datab => \display|ALT_INV_Mux10~1_combout\,
	datac => \display|ALT_INV_Mux13~4_combout\,
	dataf => \display|ALT_INV_Mux11~0_combout\,
	combout => \display|Mux29~0_combout\);

-- Location: LABCELL_X29_Y3_N33
\display|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux28~0_combout\ = ( \display|Mux13~4_combout\ & ( (!\display|Mux12~0_combout\ & ((\display|Mux11~0_combout\))) # (\display|Mux12~0_combout\ & (!\display|Mux10~1_combout\ & !\display|Mux11~0_combout\)) ) ) # ( !\display|Mux13~4_combout\ & ( 
-- (\display|Mux11~0_combout\ & ((\display|Mux10~1_combout\) # (\display|Mux12~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011101001010010010100100101001001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Mux12~0_combout\,
	datab => \display|ALT_INV_Mux10~1_combout\,
	datac => \display|ALT_INV_Mux11~0_combout\,
	dataf => \display|ALT_INV_Mux13~4_combout\,
	combout => \display|Mux28~0_combout\);

-- Location: LABCELL_X29_Y3_N24
\display|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux27~0_combout\ = ( \display|Mux11~0_combout\ & ( (!\display|Mux12~0_combout\ & ((\display|Mux13~4_combout\))) # (\display|Mux12~0_combout\ & (!\display|Mux10~1_combout\)) ) ) # ( !\display|Mux11~0_combout\ & ( (\display|Mux13~4_combout\ & 
-- ((!\display|Mux10~1_combout\) # (\display|Mux12~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110101001110010011100100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Mux12~0_combout\,
	datab => \display|ALT_INV_Mux10~1_combout\,
	datac => \display|ALT_INV_Mux13~4_combout\,
	dataf => \display|ALT_INV_Mux11~0_combout\,
	combout => \display|Mux27~0_combout\);

-- Location: LABCELL_X29_Y3_N27
\display|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux26~0_combout\ = ( \display|Mux13~4_combout\ & ( (!\display|Mux11~0_combout\ & ((!\display|Mux10~1_combout\))) # (\display|Mux11~0_combout\ & (!\display|Mux12~0_combout\)) ) ) # ( !\display|Mux13~4_combout\ & ( (!\display|Mux12~0_combout\ & 
-- (!\display|Mux10~1_combout\ & !\display|Mux11~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000011001010110010101100101011001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Mux12~0_combout\,
	datab => \display|ALT_INV_Mux10~1_combout\,
	datac => \display|ALT_INV_Mux11~0_combout\,
	dataf => \display|ALT_INV_Mux13~4_combout\,
	combout => \display|Mux26~0_combout\);

-- Location: LABCELL_X29_Y3_N42
\display|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux25~0_combout\ = ( \display|Mux10~1_combout\ & ( \display|Mux12~0_combout\ ) ) # ( !\display|Mux10~1_combout\ & ( \display|Mux12~0_combout\ & ( \display|Mux11~0_combout\ ) ) ) # ( \display|Mux10~1_combout\ & ( !\display|Mux12~0_combout\ & ( 
-- !\display|Mux11~0_combout\ $ (!\display|Mux13~4_combout\) ) ) ) # ( !\display|Mux10~1_combout\ & ( !\display|Mux12~0_combout\ & ( (!\display|Mux11~0_combout\) # (!\display|Mux13~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100001111000011110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|ALT_INV_Mux11~0_combout\,
	datac => \display|ALT_INV_Mux13~4_combout\,
	datae => \display|ALT_INV_Mux10~1_combout\,
	dataf => \display|ALT_INV_Mux12~0_combout\,
	combout => \display|Mux25~0_combout\);

-- Location: LABCELL_X30_Y3_N48
\display|U3|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U3|Add6~1_combout\ = ( \display|U1|temp~5_combout\ & ( (!\estado_fsm[1]~input_o\) # (\display|U3|temp~3_combout\) ) ) # ( !\display|U1|temp~5_combout\ & ( (\estado_fsm[1]~input_o\ & \display|U3|temp~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[1]~input_o\,
	datab => \display|U3|ALT_INV_temp~3_combout\,
	dataf => \display|U1|ALT_INV_temp~5_combout\,
	combout => \display|U3|Add6~1_combout\);

-- Location: LABCELL_X30_Y2_N30
\display|U3|temp~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U3|temp~4_combout\ = ( \reg_troco|valor_armazenado\(7) & ( \reg_troco|valor_armazenado\(4) & ( (!\reg_troco|valor_armazenado\(6) & \reg_troco|valor_armazenado\(5)) ) ) ) # ( \reg_troco|valor_armazenado\(7) & ( !\reg_troco|valor_armazenado\(4) & ( 
-- (!\reg_troco|valor_armazenado\(6) & (\reg_troco|valor_armazenado\(5))) # (\reg_troco|valor_armazenado\(6) & (!\reg_troco|valor_armazenado\(5) & !\reg_troco|valor_armazenado\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000100110001000000000000000000010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_troco|ALT_INV_valor_armazenado\(6),
	datab => \reg_troco|ALT_INV_valor_armazenado\(5),
	datac => \reg_troco|ALT_INV_valor_armazenado\(3),
	datae => \reg_troco|ALT_INV_valor_armazenado\(7),
	dataf => \reg_troco|ALT_INV_valor_armazenado\(4),
	combout => \display|U3|temp~4_combout\);

-- Location: MLABCELL_X25_Y3_N36
\display|U1|temp~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U1|temp~7_combout\ = ( \reg_total_inserido|valor_armazenado\(4) & ( (!\reg_total_inserido|valor_armazenado\(6) & (\reg_total_inserido|valor_armazenado\(5) & \reg_total_inserido|valor_armazenado\(7))) ) ) # ( 
-- !\reg_total_inserido|valor_armazenado\(4) & ( (\reg_total_inserido|valor_armazenado\(7) & ((!\reg_total_inserido|valor_armazenado\(6) & (\reg_total_inserido|valor_armazenado\(5))) # (\reg_total_inserido|valor_armazenado\(6) & 
-- (!\reg_total_inserido|valor_armazenado\(5) & !\reg_total_inserido|valor_armazenado\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000010000001100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_total_inserido|ALT_INV_valor_armazenado\(6),
	datab => \reg_total_inserido|ALT_INV_valor_armazenado\(5),
	datac => \reg_total_inserido|ALT_INV_valor_armazenado\(7),
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(3),
	dataf => \reg_total_inserido|ALT_INV_valor_armazenado\(4),
	combout => \display|U1|temp~7_combout\);

-- Location: LABCELL_X31_Y3_N33
\display|U3|Add6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U3|Add6~3_combout\ = ( \display|U1|temp~7_combout\ & ( \estado_fsm[1]~input_o\ & ( \display|U3|temp~4_combout\ ) ) ) # ( !\display|U1|temp~7_combout\ & ( \estado_fsm[1]~input_o\ & ( \display|U3|temp~4_combout\ ) ) ) # ( 
-- \display|U1|temp~7_combout\ & ( !\estado_fsm[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|U3|ALT_INV_temp~4_combout\,
	datae => \display|U1|ALT_INV_temp~7_combout\,
	dataf => \ALT_INV_estado_fsm[1]~input_o\,
	combout => \display|U3|Add6~3_combout\);

-- Location: LABCELL_X31_Y3_N12
\display|Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux9~3_combout\ = ( \display|Mux9~0_combout\ & ( \estado_fsm[1]~input_o\ & ( (\display|U3|LessThan6~0_combout\ & (\estado_fsm[2]~input_o\ & !\estado_fsm[0]~input_o\)) ) ) ) # ( !\display|Mux9~0_combout\ & ( \estado_fsm[1]~input_o\ & ( 
-- (\display|U3|LessThan6~0_combout\ & (\estado_fsm[2]~input_o\ & !\estado_fsm[0]~input_o\)) ) ) ) # ( \display|Mux9~0_combout\ & ( !\estado_fsm[1]~input_o\ & ( !\estado_fsm[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|U3|ALT_INV_LessThan6~0_combout\,
	datac => \ALT_INV_estado_fsm[2]~input_o\,
	datad => \ALT_INV_estado_fsm[0]~input_o\,
	datae => \display|ALT_INV_Mux9~0_combout\,
	dataf => \ALT_INV_estado_fsm[1]~input_o\,
	combout => \display|Mux9~3_combout\);

-- Location: LABCELL_X31_Y3_N57
\display|Mux9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux9~4_combout\ = ( \display|Mux9~0_combout\ & ( !\estado_fsm[0]~input_o\ & ( (!\estado_fsm[1]~input_o\) # (\estado_fsm[2]~input_o\) ) ) ) # ( !\display|Mux9~0_combout\ & ( !\estado_fsm[0]~input_o\ & ( (!\estado_fsm[1]~input_o\ & 
-- ((!\display|U1|temp~7_combout\))) # (\estado_fsm[1]~input_o\ & (\estado_fsm[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000111010001110111011101110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[2]~input_o\,
	datab => \ALT_INV_estado_fsm[1]~input_o\,
	datac => \display|U1|ALT_INV_temp~7_combout\,
	datae => \display|ALT_INV_Mux9~0_combout\,
	dataf => \ALT_INV_estado_fsm[0]~input_o\,
	combout => \display|Mux9~4_combout\);

-- Location: LABCELL_X24_Y3_N57
\display|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux8~0_combout\ = ( \reg_troco|valor_armazenado\(4) & ( (\reg_troco|valor_armazenado\(7) & \reg_troco|valor_armazenado\(6)) ) ) # ( !\reg_troco|valor_armazenado\(4) & ( (\reg_troco|valor_armazenado\(7) & (\reg_troco|valor_armazenado\(6) & 
-- ((\reg_troco|valor_armazenado\(5)) # (\reg_troco|valor_armazenado\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000000001010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_troco|ALT_INV_valor_armazenado\(7),
	datab => \reg_troco|ALT_INV_valor_armazenado\(3),
	datac => \reg_troco|ALT_INV_valor_armazenado\(5),
	datad => \reg_troco|ALT_INV_valor_armazenado\(6),
	dataf => \reg_troco|ALT_INV_valor_armazenado\(4),
	combout => \display|Mux8~0_combout\);

-- Location: LABCELL_X27_Y3_N39
\display|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux8~1_combout\ = (!\reg_total_inserido|valor_armazenado\(5) & (!\reg_total_inserido|valor_armazenado\(4) & !\reg_total_inserido|valor_armazenado\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_total_inserido|ALT_INV_valor_armazenado\(5),
	datac => \reg_total_inserido|ALT_INV_valor_armazenado\(4),
	datad => \reg_total_inserido|ALT_INV_valor_armazenado\(3),
	combout => \display|Mux8~1_combout\);

-- Location: LABCELL_X30_Y3_N9
\display|U1|temp~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|U1|temp~6_combout\ = (\reg_total_inserido|valor_armazenado\(6) & \reg_total_inserido|valor_armazenado\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_total_inserido|ALT_INV_valor_armazenado\(6),
	datab => \reg_total_inserido|ALT_INV_valor_armazenado\(7),
	combout => \display|U1|temp~6_combout\);

-- Location: LABCELL_X31_Y3_N0
\display|Mux38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux38~0_combout\ = ( \display|Mux8~1_combout\ & ( \display|U1|temp~6_combout\ & ( (\display|Mux8~0_combout\ & (\estado_fsm[1]~input_o\ & (\estado_fsm[2]~input_o\ & !\estado_fsm[0]~input_o\))) ) ) ) # ( !\display|Mux8~1_combout\ & ( 
-- \display|U1|temp~6_combout\ & ( (!\estado_fsm[0]~input_o\ & ((!\estado_fsm[1]~input_o\) # ((\display|Mux8~0_combout\ & \estado_fsm[2]~input_o\)))) ) ) ) # ( \display|Mux8~1_combout\ & ( !\display|U1|temp~6_combout\ & ( (\display|Mux8~0_combout\ & 
-- (\estado_fsm[1]~input_o\ & (\estado_fsm[2]~input_o\ & !\estado_fsm[0]~input_o\))) ) ) ) # ( !\display|Mux8~1_combout\ & ( !\display|U1|temp~6_combout\ & ( (\display|Mux8~0_combout\ & (\estado_fsm[1]~input_o\ & (\estado_fsm[2]~input_o\ & 
-- !\estado_fsm[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000011001101000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Mux8~0_combout\,
	datab => \ALT_INV_estado_fsm[1]~input_o\,
	datac => \ALT_INV_estado_fsm[2]~input_o\,
	datad => \ALT_INV_estado_fsm[0]~input_o\,
	datae => \display|ALT_INV_Mux8~1_combout\,
	dataf => \display|U1|ALT_INV_temp~6_combout\,
	combout => \display|Mux38~0_combout\);

-- Location: LABCELL_X31_Y3_N24
\display|Mux38~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux38~1_combout\ = ( \display|Mux9~4_combout\ & ( !\display|Mux38~0_combout\ & ( (\display|Mux9~3_combout\ & (!\display|U3|Add6~3_combout\ $ (((!\display|U3|Add6~2_combout\) # (!\display|U3|Add6~1_combout\))))) ) ) ) # ( !\display|Mux9~4_combout\ 
-- & ( !\display|Mux38~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000001111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|U3|ALT_INV_Add6~2_combout\,
	datab => \display|U3|ALT_INV_Add6~1_combout\,
	datac => \display|U3|ALT_INV_Add6~3_combout\,
	datad => \display|ALT_INV_Mux9~3_combout\,
	datae => \display|ALT_INV_Mux9~4_combout\,
	dataf => \display|ALT_INV_Mux38~0_combout\,
	combout => \display|Mux38~1_combout\);

-- Location: LABCELL_X31_Y3_N18
\display|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux6~0_combout\ = ( \estado_fsm[1]~input_o\ & ( (!\estado_fsm[0]~input_o\ & \estado_fsm[2]~input_o\) ) ) # ( !\estado_fsm[1]~input_o\ & ( !\estado_fsm[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_estado_fsm[0]~input_o\,
	datac => \ALT_INV_estado_fsm[2]~input_o\,
	dataf => \ALT_INV_estado_fsm[1]~input_o\,
	combout => \display|Mux6~0_combout\);

-- Location: LABCELL_X31_Y3_N27
\display|Mux37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux37~0_combout\ = ( \display|Mux9~4_combout\ & ( !\display|Mux6~0_combout\ & ( (\display|Mux9~3_combout\ & (!\display|U3|Add6~3_combout\ $ (((!\display|U3|Add6~2_combout\) # (!\display|U3|Add6~1_combout\))))) ) ) ) # ( !\display|Mux9~4_combout\ 
-- & ( !\display|Mux6~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000010000111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|U3|ALT_INV_Add6~2_combout\,
	datab => \display|U3|ALT_INV_Add6~1_combout\,
	datac => \display|ALT_INV_Mux9~3_combout\,
	datad => \display|U3|ALT_INV_Add6~3_combout\,
	datae => \display|ALT_INV_Mux9~4_combout\,
	dataf => \display|ALT_INV_Mux6~0_combout\,
	combout => \display|Mux37~0_combout\);

-- Location: LABCELL_X31_Y3_N6
\display|Mux9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux9~5_combout\ = ( \display|Mux9~3_combout\ & ( (!\display|Mux9~4_combout\) # (!\display|U3|Add6~3_combout\ $ (((!\display|U3|Add6~2_combout\) # (!\display|U3|Add6~1_combout\)))) ) ) # ( !\display|Mux9~3_combout\ & ( !\display|Mux9~4_combout\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000111101111111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|U3|ALT_INV_Add6~2_combout\,
	datab => \display|U3|ALT_INV_Add6~1_combout\,
	datac => \display|U3|ALT_INV_Add6~3_combout\,
	datad => \display|ALT_INV_Mux9~4_combout\,
	dataf => \display|ALT_INV_Mux9~3_combout\,
	combout => \display|Mux9~5_combout\);

-- Location: LABCELL_X31_Y3_N36
\display|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux8~2_combout\ = ( \display|Mux8~1_combout\ & ( \display|U1|temp~6_combout\ & ( (!\estado_fsm[0]~input_o\ & ((!\estado_fsm[1]~input_o\) # ((!\display|Mux8~0_combout\ & \estado_fsm[2]~input_o\)))) ) ) ) # ( !\display|Mux8~1_combout\ & ( 
-- \display|U1|temp~6_combout\ & ( (!\display|Mux8~0_combout\ & (\estado_fsm[1]~input_o\ & (\estado_fsm[2]~input_o\ & !\estado_fsm[0]~input_o\))) ) ) ) # ( \display|Mux8~1_combout\ & ( !\display|U1|temp~6_combout\ & ( (!\estado_fsm[0]~input_o\ & 
-- ((!\estado_fsm[1]~input_o\) # ((!\display|Mux8~0_combout\ & \estado_fsm[2]~input_o\)))) ) ) ) # ( !\display|Mux8~1_combout\ & ( !\display|U1|temp~6_combout\ & ( (!\estado_fsm[0]~input_o\ & ((!\estado_fsm[1]~input_o\) # ((!\display|Mux8~0_combout\ & 
-- \estado_fsm[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111000000000110011100000000000000010000000001100111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Mux8~0_combout\,
	datab => \ALT_INV_estado_fsm[1]~input_o\,
	datac => \ALT_INV_estado_fsm[2]~input_o\,
	datad => \ALT_INV_estado_fsm[0]~input_o\,
	datae => \display|ALT_INV_Mux8~1_combout\,
	dataf => \display|U1|ALT_INV_temp~6_combout\,
	combout => \display|Mux8~2_combout\);

-- Location: LABCELL_X31_Y3_N9
\display|Mux36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux36~0_combout\ = ( \display|Mux6~0_combout\ & ( (!\display|Mux9~5_combout\ & !\display|Mux8~2_combout\) ) ) # ( !\display|Mux6~0_combout\ & ( (\display|Mux8~2_combout\) # (\display|Mux9~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|ALT_INV_Mux9~5_combout\,
	datad => \display|ALT_INV_Mux8~2_combout\,
	dataf => \display|ALT_INV_Mux6~0_combout\,
	combout => \display|Mux36~0_combout\);

-- Location: LABCELL_X31_Y3_N48
\display|Mux35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux35~0_combout\ = ( \display|Mux6~0_combout\ & ( (\display|Mux8~2_combout\ & \display|Mux9~5_combout\) ) ) # ( !\display|Mux6~0_combout\ & ( (!\display|Mux8~2_combout\) # (!\display|Mux9~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Mux8~2_combout\,
	datab => \display|ALT_INV_Mux9~5_combout\,
	dataf => \display|ALT_INV_Mux6~0_combout\,
	combout => \display|Mux35~0_combout\);

-- Location: LABCELL_X31_Y3_N42
\display|Mux33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux33~0_combout\ = ( \display|Mux9~4_combout\ & ( \display|U3|Add6~2_combout\ & ( ((\display|Mux9~3_combout\ & (!\display|U3|Add6~3_combout\ $ (!\display|U3|Add6~1_combout\)))) # (\display|Mux38~0_combout\) ) ) ) # ( !\display|Mux9~4_combout\ & ( 
-- \display|U3|Add6~2_combout\ ) ) # ( \display|Mux9~4_combout\ & ( !\display|U3|Add6~2_combout\ & ( ((\display|U3|Add6~3_combout\ & \display|Mux9~3_combout\)) # (\display|Mux38~0_combout\) ) ) ) # ( !\display|Mux9~4_combout\ & ( !\display|U3|Add6~2_combout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110101111111111111111111110000111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|U3|ALT_INV_Add6~3_combout\,
	datab => \display|U3|ALT_INV_Add6~1_combout\,
	datac => \display|ALT_INV_Mux38~0_combout\,
	datad => \display|ALT_INV_Mux9~3_combout\,
	datae => \display|ALT_INV_Mux9~4_combout\,
	dataf => \display|U3|ALT_INV_Add6~2_combout\,
	combout => \display|Mux33~0_combout\);

-- Location: LABCELL_X31_Y3_N51
\display|Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux32~0_combout\ = ( \display|Mux6~0_combout\ & ( \display|Mux8~2_combout\ ) ) # ( !\display|Mux6~0_combout\ & ( (!\display|Mux8~2_combout\ & \display|Mux9~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Mux8~2_combout\,
	datab => \display|ALT_INV_Mux9~5_combout\,
	dataf => \display|ALT_INV_Mux6~0_combout\,
	combout => \display|Mux32~0_combout\);

-- Location: LABCELL_X29_Y2_N0
\display|Mux52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux52~0_combout\ = ( !\estado_fsm[0]~input_o\ & ( !\estado_fsm[1]~input_o\ $ (\estado_fsm[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101000000000000000010100101101001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[1]~input_o\,
	datac => \ALT_INV_estado_fsm[2]~input_o\,
	datae => \ALT_INV_estado_fsm[0]~input_o\,
	combout => \display|Mux52~0_combout\);

-- Location: LABCELL_X29_Y2_N9
\display|Mux52~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux52~1_combout\ = ( \estado_fsm[1]~input_o\ & ( (!\estado_fsm[2]~input_o\) # (\estado_fsm[0]~input_o\) ) ) # ( !\estado_fsm[1]~input_o\ & ( (\estado_fsm[0]~input_o\) # (\estado_fsm[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111101011111010111101011111010111111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[2]~input_o\,
	datac => \ALT_INV_estado_fsm[0]~input_o\,
	datae => \ALT_INV_estado_fsm[1]~input_o\,
	combout => \display|Mux52~1_combout\);

-- Location: LABCELL_X29_Y2_N24
\display|Mux50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux50~0_combout\ = ( !\estado_fsm[0]~input_o\ & ( (\estado_fsm[1]~input_o\ & \estado_fsm[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[1]~input_o\,
	datac => \ALT_INV_estado_fsm[2]~input_o\,
	datae => \ALT_INV_estado_fsm[0]~input_o\,
	combout => \display|Mux50~0_combout\);

-- Location: LABCELL_X29_Y2_N54
\display|Mux48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux48~0_combout\ = ( \estado_fsm[0]~input_o\ & ( (!\estado_fsm[1]~input_o\) # (\estado_fsm[2]~input_o\) ) ) # ( !\estado_fsm[0]~input_o\ & ( !\estado_fsm[1]~input_o\ $ (!\estado_fsm[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101011111010111101011010010110101010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[1]~input_o\,
	datac => \ALT_INV_estado_fsm[2]~input_o\,
	datae => \ALT_INV_estado_fsm[0]~input_o\,
	combout => \display|Mux48~0_combout\);

-- Location: LABCELL_X29_Y2_N51
\display|Mux54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux54~0_combout\ = ( \estado_fsm[1]~input_o\ & ( (!\estado_fsm[0]~input_o\) # (\estado_fsm[2]~input_o\) ) ) # ( !\estado_fsm[1]~input_o\ & ( \estado_fsm[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111101011111010100001111000011111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[2]~input_o\,
	datac => \ALT_INV_estado_fsm[0]~input_o\,
	datae => \ALT_INV_estado_fsm[1]~input_o\,
	combout => \display|Mux54~0_combout\);

-- Location: LABCELL_X29_Y2_N18
\display|Mux56~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux56~0_combout\ = ( \estado_fsm[0]~input_o\ ) # ( !\estado_fsm[0]~input_o\ & ( (\estado_fsm[1]~input_o\ & !\estado_fsm[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111111111111111101010000010100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[1]~input_o\,
	datac => \ALT_INV_estado_fsm[2]~input_o\,
	datae => \ALT_INV_estado_fsm[0]~input_o\,
	combout => \display|Mux56~0_combout\);

-- Location: LABCELL_X29_Y2_N15
\display|Mux55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Mux55~0_combout\ = ( \estado_fsm[1]~input_o\ & ( !\estado_fsm[2]~input_o\ $ (\estado_fsm[0]~input_o\) ) ) # ( !\estado_fsm[1]~input_o\ & ( \estado_fsm[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101001011010010100001111000011111010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_fsm[2]~input_o\,
	datac => \ALT_INV_estado_fsm[0]~input_o\,
	datae => \ALT_INV_estado_fsm[1]~input_o\,
	combout => \display|Mux55~0_combout\);

-- Location: MLABCELL_X47_Y21_N0
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


