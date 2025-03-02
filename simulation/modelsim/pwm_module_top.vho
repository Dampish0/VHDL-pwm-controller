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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "03/02/2025 23:57:16"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	pwm_module_top IS
    PORT (
	clk : IN std_logic;
	hex0 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex1 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex2 : BUFFER std_logic_vector(6 DOWNTO 0);
	key_n : IN std_logic_vector(3 DOWNTO 0);
	ledr : BUFFER std_logic_vector(9 DOWNTO 0);
	rx : IN std_logic;
	tx : BUFFER std_logic
	);
END pwm_module_top;

-- Design Ports Information
-- hex0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_n[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_n[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_n[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_n[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pwm_module_top IS
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
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_key_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_rx : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~8_AX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \i_pwm_ctrl_a|Mult0~8_AY_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_pwm_ctrl_a|Mult0~24\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~25\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~26\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~27\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~28\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~29\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~30\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~31\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~32\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~33\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~34\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~35\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~36\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~37\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~38\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~39\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~40\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~41\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~42\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~43\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~44\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~45\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~46\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~47\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~48\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~49\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~50\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~51\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~52\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~53\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~54\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~55\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~56\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~57\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~58\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~59\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~60\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~61\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~62\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~63\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~64\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~65\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~66\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~67\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~68\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~69\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~70\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|Add0~10\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|Add0~13_sumout\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|Add0~14\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|Add0~17_sumout\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|Add0~18\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|Add0~1_sumout\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|Add0~2\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|Add0~5_sumout\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|Add0~6\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|Add0~21_sumout\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|Add0~22\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|Add0~25_sumout\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|Add0~26\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|Add0~29_sumout\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|Add0~30\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|Add0~33_sumout\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|LessThan0~1_combout\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|reset_cnt[0]~0_combout\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|Add0~9_sumout\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|LessThan0~0_combout\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|LessThan0~2_combout\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|startup_reset_out~feeder_combout\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|startup_reset_out~q\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\ : std_logic;
SIGNAL \key_n[3]~input_o\ : std_logic;
SIGNAL \i_key_ctrl_a|key_n_1r[3]~1_combout\ : std_logic;
SIGNAL \create_pll:i_reset_ctrl_a|reset_cnt[0]~0_combout\ : std_logic;
SIGNAL \create_pll:i_reset_ctrl_a|Add0~25_sumout\ : std_logic;
SIGNAL \create_pll:i_reset_ctrl_a|Add0~26\ : std_logic;
SIGNAL \create_pll:i_reset_ctrl_a|Add0~21_sumout\ : std_logic;
SIGNAL \create_pll:i_reset_ctrl_a|Add0~22\ : std_logic;
SIGNAL \create_pll:i_reset_ctrl_a|Add0~17_sumout\ : std_logic;
SIGNAL \create_pll:i_reset_ctrl_a|Add0~18\ : std_logic;
SIGNAL \create_pll:i_reset_ctrl_a|Add0~13_sumout\ : std_logic;
SIGNAL \create_pll:i_reset_ctrl_a|Add0~14\ : std_logic;
SIGNAL \create_pll:i_reset_ctrl_a|Add0~9_sumout\ : std_logic;
SIGNAL \create_pll:i_reset_ctrl_a|Add0~10\ : std_logic;
SIGNAL \create_pll:i_reset_ctrl_a|Add0~5_sumout\ : std_logic;
SIGNAL \create_pll:i_reset_ctrl_a|Add0~6\ : std_logic;
SIGNAL \create_pll:i_reset_ctrl_a|Add0~1_sumout\ : std_logic;
SIGNAL \create_pll:i_reset_ctrl_a|LessThan0~0_combout\ : std_logic;
SIGNAL \create_pll:i_reset_ctrl_a|reset_out~0_combout\ : std_logic;
SIGNAL \create_pll:i_reset_ctrl_a|reset_out~q\ : std_logic;
SIGNAL \i_key_ctrl_a|prev_key_n_2r[3]~0_combout\ : std_logic;
SIGNAL \key_n[1]~input_o\ : std_logic;
SIGNAL \i_key_ctrl_a|key_n_1r[1]~3_combout\ : std_logic;
SIGNAL \key_n[0]~input_o\ : std_logic;
SIGNAL \i_key_ctrl_a|key_n_1r[0]~0_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|debounce_key~0_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|debounce_key~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~73_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\ : std_logic;
SIGNAL \key_n[2]~input_o\ : std_logic;
SIGNAL \i_key_ctrl_a|key_n_1r[2]~2_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][0]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~74\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~69_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][1]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~70\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~65_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][2]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~66\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~61_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][3]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~62\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~57_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][4]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~58\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~17_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][5]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~18\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~21_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][6]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~22\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~13_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][7]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~14\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~9_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][8]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~10\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~29_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][9]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~30\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~25_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][10]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~26\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~37_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][11]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~38\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~33_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][12]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~34\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~5_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][13]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][6]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|LessThan0~0_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|LessThan0~1_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~6\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~1_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][14]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~2\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~53_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][15]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~54\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~49_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][16]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~50\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~45_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][17]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~46\ : std_logic;
SIGNAL \i_key_ctrl_a|Add0~41_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][18]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][16]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[3][15]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|LessThan0~2_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|LessThan0~3_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|prev_key_n_2r[2]~1_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|process_0~0_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_output~5_combout\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \i_serial_uart_a|rx_r~feeder_combout\ : std_logic;
SIGNAL \i_serial_uart_a|rx_r~q\ : std_logic;
SIGNAL \i_serial_uart_a|rx_2r~feeder_combout\ : std_logic;
SIGNAL \i_serial_uart_a|rx_2r~q\ : std_logic;
SIGNAL \i_serial_uart_a|Add2~21_sumout\ : std_logic;
SIGNAL \i_serial_uart_a|LessThan0~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|rx_bit_cnt[6]~DUPLICATE_q\ : std_logic;
SIGNAL \i_serial_uart_a|Add2~2\ : std_logic;
SIGNAL \i_serial_uart_a|Add2~5_sumout\ : std_logic;
SIGNAL \i_serial_uart_a|rx_bit_cnt[8]~DUPLICATE_q\ : std_logic;
SIGNAL \i_serial_uart_a|rx_bit_cnt_wrap~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|rx_bit_cnt_wrap~q\ : std_logic;
SIGNAL \i_serial_uart_a|reset_r~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|reset_r~q\ : std_logic;
SIGNAL \i_serial_uart_a|reset_2r~feeder_combout\ : std_logic;
SIGNAL \i_serial_uart_a|reset_2r~q\ : std_logic;
SIGNAL \i_serial_uart_a|rx_state~10_combout\ : std_logic;
SIGNAL \i_serial_uart_a|rx_state.s_idle~q\ : std_logic;
SIGNAL \i_serial_uart_a|Selector0~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|rx_bit_cnt_en~q\ : std_logic;
SIGNAL \i_serial_uart_a|rx_bit_cnt[0]~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|Add2~22\ : std_logic;
SIGNAL \i_serial_uart_a|Add2~25_sumout\ : std_logic;
SIGNAL \i_serial_uart_a|Add2~26\ : std_logic;
SIGNAL \i_serial_uart_a|Add2~29_sumout\ : std_logic;
SIGNAL \i_serial_uart_a|Add2~30\ : std_logic;
SIGNAL \i_serial_uart_a|Add2~33_sumout\ : std_logic;
SIGNAL \i_serial_uart_a|Add2~34\ : std_logic;
SIGNAL \i_serial_uart_a|Add2~13_sumout\ : std_logic;
SIGNAL \i_serial_uart_a|Add2~14\ : std_logic;
SIGNAL \i_serial_uart_a|Add2~17_sumout\ : std_logic;
SIGNAL \i_serial_uart_a|Add2~18\ : std_logic;
SIGNAL \i_serial_uart_a|Add2~9_sumout\ : std_logic;
SIGNAL \i_serial_uart_a|Add2~10\ : std_logic;
SIGNAL \i_serial_uart_a|Add2~1_sumout\ : std_logic;
SIGNAL \i_serial_uart_a|rx_bit_cnt_half~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|rx_bit_cnt_half~1_combout\ : std_logic;
SIGNAL \i_serial_uart_a|rx_bit_cnt_half~q\ : std_logic;
SIGNAL \i_serial_uart_a|rx_state.s_stop_bit~q\ : std_logic;
SIGNAL \i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\ : std_logic;
SIGNAL \i_serial_uart_a|Selector14~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|Selector12~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|Selector13~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|Selector4~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|Selector2~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|rx_state.s_rx_data~q\ : std_logic;
SIGNAL \i_serial_uart_a|Selector4~1_combout\ : std_logic;
SIGNAL \i_serial_uart_a|rx_state.s_stop_bit~DUPLICATE_q\ : std_logic;
SIGNAL \i_serial_uart_a|Selector5~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|received_data[5]~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|Selector6~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|Selector7~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|Selector8~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|Selector9~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|received_data[2]~feeder_combout\ : std_logic;
SIGNAL \i_serial_uart_a|Selector10~0_combout\ : std_logic;
SIGNAL \i_serial_ctrl_a|serial_up~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|received_data_valid~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|received_data_valid~DUPLICATE_q\ : std_logic;
SIGNAL \i_serial_uart_a|Selector11~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|received_data[0]~feeder_combout\ : std_logic;
SIGNAL \i_serial_ctrl_a|serial_up~1_combout\ : std_logic;
SIGNAL \i_serial_ctrl_a|serial_up~q\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add1~1_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|s_pwm_dc~0_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~73_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][0]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~74\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~69_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][1]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~70\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~65_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][2]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~66\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~61_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][3]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~62\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~57_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][4]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~58\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~13_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][5]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~14\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~17_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][6]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~18\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~21_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][7]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~22\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~9_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][8]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][7]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|LessThan1~0_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~10\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~37_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][9]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~38\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~33_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][10]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~34\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~29_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][11]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~30\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~25_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][12]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|LessThan1~1_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~26\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~5_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][13]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~6\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~1_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][14]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][15]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~2\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~53_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][15]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][16]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~54\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~49_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][16]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~50\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~45_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][17]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~46\ : std_logic;
SIGNAL \i_key_ctrl_a|Add1~41_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[2][18]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|LessThan1~2_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|LessThan1~3_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_output~6_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_output~7_combout\ : std_logic;
SIGNAL \i_serial_ctrl_a|serial_down~0_combout\ : std_logic;
SIGNAL \i_serial_ctrl_a|serial_down~q\ : std_logic;
SIGNAL \i_pwm_ctrl_a|s_pwm_dc[1]~1_combout\ : std_logic;
SIGNAL \i_serial_ctrl_a|serial_off~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|received_data_valid~q\ : std_logic;
SIGNAL \i_serial_ctrl_a|serial_off~1_combout\ : std_logic;
SIGNAL \i_serial_ctrl_a|serial_off~2_combout\ : std_logic;
SIGNAL \i_serial_ctrl_a|serial_off~q\ : std_logic;
SIGNAL \i_serial_ctrl_a|serial_on~0_combout\ : std_logic;
SIGNAL \i_serial_ctrl_a|serial_on~q\ : std_logic;
SIGNAL \i_key_ctrl_a|key_n_2r[0]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][15]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~73_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][0]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~74\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~69_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][1]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~70\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~65_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][2]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~66\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~61_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][3]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~62\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~57_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][4]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~58\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~17_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][5]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~18\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~21_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][6]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~22\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~13_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][7]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~14\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~9_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][8]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~10\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~37_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][9]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~38\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~33_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][10]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~34\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~25_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][11]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~26\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~29_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][12]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~30\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~5_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][13]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~6\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~1_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][14]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~2\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~41_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][15]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~42\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~45_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][16]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~46\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~49_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][17]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~50\ : std_logic;
SIGNAL \i_key_ctrl_a|Add3~53_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][18]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|s_output~2_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][11]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][10]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][12]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|s_output~1_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][13]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[0][6]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|s_output~0_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_output~3_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_output~4_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~73_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[1][5]~5_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[1][0]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~74\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~69_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[1][1]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~70\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~65_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[1][2]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~66\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~61_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[1][3]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~62\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~57_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[1][4]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~58\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~13_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[1][5]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~14\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~17_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[1][6]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~18\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~21_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[1][7]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~22\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~9_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[1][8]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~10\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~25_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[1][9]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~26\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~29_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[1][10]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~30\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~33_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[1][11]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~34\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~37_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[1][12]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~38\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~5_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[1][13]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~6\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~1_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[1][14]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|s_output~9_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~2\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~41_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[1][15]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~42\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~45_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[1][16]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~46\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~49_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[1][17]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~50\ : std_logic;
SIGNAL \i_key_ctrl_a|Add2~53_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[1][18]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|s_output~10_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_clk_cn[1][6]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|s_output~8_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_output~11_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|s_output~12_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|process_2~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|process_2~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|s_pwm_dc[1]~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add1~2\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add1~6\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add1~9_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|s_pwm_dc~4_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add1~10\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add1~13_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|s_pwm_dc~5_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add1~14\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add1~17_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|s_pwm_dc~6_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add1~18\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add1~25_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|s_pwm_dc~8_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|LessThan2~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|process_2~3_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add1~26\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add1~21_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|s_pwm_dc~7_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|LessThan3~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|LessThan3~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|LessThan3~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|s_isEnabled~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add1~5_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|s_pwm_dc~3_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|LessThan2~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|s_isEnabled~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|s_isEnabled~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|process_2~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|s_isEnabled~3_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|s_isEnabled~q\ : std_logic;
SIGNAL \i_pwm_ctrl_a|current_dc[1]~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|current_dc[2]~2_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Equal0~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Equal0~1_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~22_cout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~18\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~14\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~6\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~5_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~13_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~9_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~17_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~6_cout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Add1~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[15]~5_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~26_cout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~6_cout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[22]~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[22]~2_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[21]~6_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[20]~7_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~26_cout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~22_cout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~18_cout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~14_cout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~10_cout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~6_cout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|v_ones~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|current_dc[0]~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Mux2~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|v_ones~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Mux6~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|s_dc_changed~q\ : std_logic;
SIGNAL \i_dc_disp_a|Mux5~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Mux4~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Mux3~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Mux2~1_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Mux1~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Mux0~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|v_tens~1_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Mux9~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|v_tens~2_combout\ : std_logic;
SIGNAL \i_dc_disp_a|v_tens~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Mux13~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Mux12~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Mux11~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Mux10~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Mux9~1_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Mux8~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Mux7~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~45_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~26\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~17_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|s_clk_cn[13]~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~18\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~21_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~22\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~61_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~62\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~57_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~58\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~13_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~14\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~9_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Equal0~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~10\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~1_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Equal0~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|LessThan1~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~2\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~5_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|s_clk_cn[13]~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~46\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~49_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~50\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~53_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~54\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~41_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~42\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~37_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~38\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~33_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~34\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~29_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~30\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Add0~25_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Equal0~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Equal0~3_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Equal0~4_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~23\ : std_logic;
SIGNAL \i_pwm_ctrl_a|s_dc_cn[15]~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~18\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~19\ : std_logic;
SIGNAL \i_pwm_ctrl_a|LessThan0~7_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~17\ : std_logic;
SIGNAL \i_pwm_ctrl_a|s_dc_cn[9]~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|LessThan0~5_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~12\ : std_logic;
SIGNAL \i_pwm_ctrl_a|s_dc_cn[4]~5_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~9\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~10\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~8_resulta\ : std_logic;
SIGNAL \i_pwm_ctrl_a|LessThan0~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~11\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~13\ : std_logic;
SIGNAL \i_pwm_ctrl_a|LessThan0~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|LessThan0~3_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|LessThan0~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~14\ : std_logic;
SIGNAL \i_pwm_ctrl_a|s_dc_cn[6]~4_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~15\ : std_logic;
SIGNAL \i_pwm_ctrl_a|LessThan0~4_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~16\ : std_logic;
SIGNAL \i_pwm_ctrl_a|s_dc_cn[8]~3_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|LessThan0~6_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~20\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~21\ : std_logic;
SIGNAL \i_pwm_ctrl_a|LessThan0~8_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|Mult0~22\ : std_logic;
SIGNAL \i_pwm_ctrl_a|s_dc_cn[14]~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|process_0~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ledr~q\ : std_logic;
SIGNAL \i_serial_uart_a|received_error~_Duplicate_1_q\ : std_logic;
SIGNAL \i_serial_uart_a|received_error~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|received_error~q\ : std_logic;
SIGNAL \i_serial_uart_a|Add3~29_sumout\ : std_logic;
SIGNAL \i_serial_uart_a|Add3~2\ : std_logic;
SIGNAL \i_serial_uart_a|Add3~5_sumout\ : std_logic;
SIGNAL \i_serial_uart_a|LessThan2~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_tx_cn[2]~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_data_backlog~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_data_backlog~q\ : std_logic;
SIGNAL \i_dc_disp_a|s_backlog_c~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_backlog_c~1_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_backlog_c~q\ : std_logic;
SIGNAL \i_dc_disp_a|p_tData~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_completed_tx~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_completed_tx~q\ : std_logic;
SIGNAL \i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\ : std_logic;
SIGNAL \i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\ : std_logic;
SIGNAL \i_dc_disp_a|Mux40~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_started_tx~q\ : std_logic;
SIGNAL \i_dc_disp_a|s_tx_update_complete_state[1]~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_tx_update_complete_state[1]~1_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_tx_update_complete_state[1]~2_combout\ : std_logic;
SIGNAL \i_dc_disp_a|p_display~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_updateInfo~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_updateInfo~q\ : std_logic;
SIGNAL \i_dc_disp_a|s_valid_data~1_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_tx_cn[1]~1_combout\ : std_logic;
SIGNAL \i_dc_disp_a|sequences[2][0]~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_ready_cd~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_ready_cd~q\ : std_logic;
SIGNAL \i_dc_disp_a|s_tx_cn[0]~2_combout\ : std_logic;
SIGNAL \i_dc_disp_a|LessThan0~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_valid_data~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_valid_data~q\ : std_logic;
SIGNAL \i_serial_uart_a|Selector25~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|transmit_ready_int~q\ : std_logic;
SIGNAL \i_serial_uart_a|tx_bit_cnt_wrap~DUPLICATE_q\ : std_logic;
SIGNAL \i_serial_uart_a|tx_state~7_combout\ : std_logic;
SIGNAL \i_serial_uart_a|tx_state.s_idle~q\ : std_logic;
SIGNAL \i_serial_uart_a|Selector30~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|tx_bit_cnt_en~q\ : std_logic;
SIGNAL \i_serial_uart_a|tx_bit_cnt[7]~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|Add3~30\ : std_logic;
SIGNAL \i_serial_uart_a|Add3~21_sumout\ : std_logic;
SIGNAL \i_serial_uart_a|Add3~22\ : std_logic;
SIGNAL \i_serial_uart_a|Add3~25_sumout\ : std_logic;
SIGNAL \i_serial_uart_a|Add3~26\ : std_logic;
SIGNAL \i_serial_uart_a|Add3~33_sumout\ : std_logic;
SIGNAL \i_serial_uart_a|Add3~34\ : std_logic;
SIGNAL \i_serial_uart_a|Add3~13_sumout\ : std_logic;
SIGNAL \i_serial_uart_a|Add3~14\ : std_logic;
SIGNAL \i_serial_uart_a|Add3~17_sumout\ : std_logic;
SIGNAL \i_serial_uart_a|Add3~18\ : std_logic;
SIGNAL \i_serial_uart_a|Add3~9_sumout\ : std_logic;
SIGNAL \i_serial_uart_a|Add3~10\ : std_logic;
SIGNAL \i_serial_uart_a|Add3~1_sumout\ : std_logic;
SIGNAL \i_serial_uart_a|tx_bit_cnt_wrap~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|tx_bit_cnt_wrap~q\ : std_logic;
SIGNAL \i_serial_uart_a|Selector27~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|tx_state.s_start_bit~q\ : std_logic;
SIGNAL \i_serial_uart_a|Selector31~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|Selector28~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|tx_state.s_tx_data~q\ : std_logic;
SIGNAL \i_serial_uart_a|Selector33~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|tx_bit_no~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|Selector32~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|tx_bit_no[1]~DUPLICATE_q\ : std_logic;
SIGNAL \i_serial_uart_a|Selector29~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|tx_state.s_stop_bit~q\ : std_logic;
SIGNAL \i_dc_disp_a|Equal4~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|v_tens~4_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Equal6~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|v_ones~2_combout\ : std_logic;
SIGNAL \i_dc_disp_a|v_tens~3_combout\ : std_logic;
SIGNAL \i_dc_disp_a|v_tens~6_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[5]~25_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[5]~27_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[0]~47_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[5]~_emulated_q\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[5]~26_combout\ : std_logic;
SIGNAL \i_dc_disp_a|v_tens~5_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[7]~21_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[7]~23_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[7]~_emulated_q\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[7]~22_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Mux26~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|sequences[2][0]~1_combout\ : std_logic;
SIGNAL \i_dc_disp_a|sequences[1][1]~q\ : std_logic;
SIGNAL \i_dc_disp_a|v_ones~3_combout\ : std_logic;
SIGNAL \i_dc_disp_a|v_ones~4_combout\ : std_logic;
SIGNAL \i_dc_disp_a|v_ones~7_combout\ : std_logic;
SIGNAL \i_dc_disp_a|v_ones~8_combout\ : std_logic;
SIGNAL \i_dc_disp_a|v_ones~9_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[1]~17_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[1]~19_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[1]~_emulated_q\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[1]~18_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Add1~1_combout\ : std_logic;
SIGNAL \i_dc_disp_a|v_ones~5_combout\ : std_logic;
SIGNAL \i_dc_disp_a|v_ones~6_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[3]~13_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[3]~15_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[3]~_emulated_q\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[3]~14_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Mux23~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|sequences[2][1]~q\ : std_logic;
SIGNAL \i_dc_disp_a|Mux86~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|tx_data[0]~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Mux24~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|sequences[1][3]~q\ : std_logic;
SIGNAL \i_dc_disp_a|Mux22~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|sequences[2][3]~q\ : std_logic;
SIGNAL \i_dc_disp_a|Mux84~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|sequences[0][5]~feeder_combout\ : std_logic;
SIGNAL \i_dc_disp_a|sequences[0][5]~q\ : std_logic;
SIGNAL \i_dc_disp_a|Mux32~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|Selector19~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|tx_byte_saved[4]~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|v_hundreds~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[11]~37_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[11]~39_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[11]~_emulated_q\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[11]~38_combout\ : std_logic;
SIGNAL \i_dc_disp_a|sequences[0][4]~q\ : std_logic;
SIGNAL \i_dc_disp_a|Mux21~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|sequences[2][4]~q\ : std_logic;
SIGNAL \i_dc_disp_a|Mux24~1_combout\ : std_logic;
SIGNAL \i_dc_disp_a|sequences[1][4]~q\ : std_logic;
SIGNAL \i_dc_disp_a|Mux83~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|Selector20~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|Selector21~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[6]~33_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[6]~35_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[6]~_emulated_q\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[6]~34_combout\ : std_logic;
SIGNAL \i_dc_disp_a|sequences[1][2]~q\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[2]~29_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[2]~31_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[2]~_emulated_q\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[2]~30_combout\ : std_logic;
SIGNAL \i_dc_disp_a|sequences[2][2]~q\ : std_logic;
SIGNAL \i_dc_disp_a|Mux85~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|Selector22~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|Selector23~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[4]~9_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[4]~11_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[4]~_emulated_q\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[4]~10_combout\ : std_logic;
SIGNAL \i_dc_disp_a|sequences[1][0]~q\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[0]~1_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[0]~3_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[0]~_emulated_q\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[0]~2_combout\ : std_logic;
SIGNAL \i_dc_disp_a|sequences[2][0]~q\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[8]~5_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[8]~7_combout\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[8]~_emulated_q\ : std_logic;
SIGNAL \i_dc_disp_a|s_bcd_tx_result[8]~6_combout\ : std_logic;
SIGNAL \i_dc_disp_a|sequences[0][0]~q\ : std_logic;
SIGNAL \i_dc_disp_a|Mux87~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|Selector24~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|Selector34~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|tx~q\ : std_logic;
SIGNAL \i_serial_uart_a|received_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_pwm_ctrl_a|s_clk_cn\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_dc_disp_a|tx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_pwm_ctrl_a|s_dc_cn\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_serial_uart_a|rx_bit_cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \i_dc_disp_a|hex2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_serial_uart_a|tx_bit_cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \i_pwm_ctrl_a|s_pwm_dc\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_dc_disp_a|hex0\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_dc_disp_a|hex1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_serial_uart_a|tx_byte_saved\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_key_ctrl_a|s_output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \create_pll:i_reset_ctrl_a|reset_cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_serial_uart_a|rx_bit_no\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i_serial_uart_a|tx_bit_no\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i_key_ctrl_a|key_n_2r\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \create_pll:i_start_reset_a|reset_cnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_key_ctrl_a|prev_key_n_2r\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_dc_disp_a|s_tx_cn\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i_key_ctrl_a|key_n_1r\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_serial_uart_a|rx_byte_int\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_dc_disp_a|s_tx_update_complete_state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|fboutclk_wire\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|locked_wire\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i_dc_disp_a|ALT_INV_s_tx_cn[1]~DUPLICATE_q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_tx_cn[2]~DUPLICATE_q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_received_data_valid~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_key_n_2r[0]~DUPLICATE_q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_tx_bit_no[1]~DUPLICATE_q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_tx_bit_cnt_wrap~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[1][6]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[2][15]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[2][16]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[2][7]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[3][15]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[3][16]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[3][6]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][15]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][10]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][12]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][11]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][6]~DUPLICATE_q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][13]~DUPLICATE_q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_rx_state.s_rx_data~DUPLICATE_q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_rx_bit_cnt[6]~DUPLICATE_q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_rx_bit_cnt[8]~DUPLICATE_q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_rx_state.s_stop_bit~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_key_n[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_key_n[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_key_n[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_key_n[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx~input_o\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[11]~37_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[1]~17_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[3]~13_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[5]~25_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[7]~21_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[2]~29_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[6]~33_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[4]~9_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[0]~1_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[8]~5_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_v_hundreds~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[11]~_emulated_q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_sequences[0][5]~q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_v_ones~9_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_v_ones~8_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_v_ones~7_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_v_ones~6_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_v_ones~5_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_v_tens~6_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_v_tens~5_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_v_ones~4_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_v_tens~4_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_sequences[1][4]~q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_sequences[2][4]~q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_sequences[0][4]~q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_tx_data\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[1]~18_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[1]~_emulated_q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[3]~14_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[3]~_emulated_q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[5]~26_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[5]~_emulated_q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[7]~22_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[7]~_emulated_q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[2]~_emulated_q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[6]~_emulated_q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_sequences[2][3]~q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_sequences[1][3]~q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_tx_byte_saved\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \create_pll:i_reset_ctrl_a|ALT_INV_reset_cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_dc_disp_a|ALT_INV_v_tens~3_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_v_ones~3_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_v_ones~2_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_sequences[2][2]~q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_sequences[1][2]~q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_tx_update_complete_state[1]~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~7_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[4]~_emulated_q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[0]~_emulated_q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_bcd_tx_result[8]~_emulated_q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_sequences[2][1]~q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_sequences[1][1]~q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_started_tx~q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_p_display~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_tx_update_complete_state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \i_dc_disp_a|ALT_INV_s_completed_tx~q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_backlog_c~1_combout\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_rx_bit_cnt_half~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~6_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~5_combout\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_rx_byte_int\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_serial_uart_a|ALT_INV_tx_bit_no~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_sequences[1][0]~q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_sequences[2][0]~q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_sequences[0][0]~q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_valid_data~1_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_updateInfo~q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_tx_cn\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i_dc_disp_a|ALT_INV_s_ready_cd~q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_p_tData~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_data_backlog~q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_s_backlog_c~q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_sequences[2][0]~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_rx_bit_cnt_half~q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_rx_state.s_idle~q\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \create_pll:i_start_reset_a|ALT_INV_reset_cnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \create_pll:i_start_reset_a|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~4_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~2_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~0_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_output~11_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_output~10_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_output~9_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_output~8_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_key_n_2r\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_serial_ctrl_a|ALT_INV_serial_up~0_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_output~6_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_prev_key_n_2r\ : std_logic_vector(3 DOWNTO 2);
SIGNAL \i_key_ctrl_a|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \i_serial_ctrl_a|ALT_INV_serial_off~1_combout\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_received_data_valid~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_output~3_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_output~2_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_output~1_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_output~0_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_debounce_key~q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_tx_bit_no\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i_dc_disp_a|ALT_INV_s_valid_data~q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_tx_bit_cnt_wrap~q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_reset_r~q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_rx_bit_no\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i_serial_uart_a|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_rx_bit_cnt_en~q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_rx_r~q\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \create_pll:i_reset_ctrl_a|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_s_isEnabled~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_s_pwm_dc[1]~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_process_2~3_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_s_isEnabled~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_process_2~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_process_2~1_combout\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_pwm_ctrl_a|ALT_INV_s_isEnabled~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_process_2~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_pwm_ctrl_a|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_tx_state.s_idle~q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_reset_2r~q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_rx_bit_cnt_wrap~q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_rx_2r~q\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_s_dc_cn\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_pwm_ctrl_a|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_v_tens~2_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_v_tens~1_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_v_tens~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_s_dc_changed~q\ : std_logic;
SIGNAL \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_v_ones~1_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_current_dc[2]~2_combout\ : std_logic;
SIGNAL \i_dc_disp_a|ALT_INV_v_ones~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_current_dc[1]~1_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_current_dc[0]~0_combout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[1][0]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[2][0]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[3][0]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][0]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[1][1]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[2][1]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[3][1]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][1]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[1][2]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[2][2]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[3][2]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][2]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[1][3]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[2][3]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[3][3]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][3]~q\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[1][4]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[2][4]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[3][4]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][4]~q\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_tx_bit_cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \i_serial_uart_a|ALT_INV_tx_bit_cnt_en~q\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[1][18]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[1][17]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[1][16]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[1][15]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[1][12]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[1][11]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[1][10]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[1][9]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[1][7]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[1][6]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[1][5]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[1][8]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[1][13]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[1][14]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[2][15]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[2][16]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[2][17]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[2][18]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[2][9]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[2][10]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[2][11]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[2][12]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[2][7]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[2][6]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[2][5]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[2][8]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[2][13]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[2][14]~q\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[3][15]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[3][16]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[3][17]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[3][18]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[3][11]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[3][12]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[3][9]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[3][10]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[3][6]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[3][5]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[3][7]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[3][8]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[3][13]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[3][14]~q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_received_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][18]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][17]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][16]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][15]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][9]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][10]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][12]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][11]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][6]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][5]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][7]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][8]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][13]~q\ : std_logic;
SIGNAL \i_key_ctrl_a|ALT_INV_s_clk_cn[0][14]~q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_tx_state.s_start_bit~q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_transmit_ready_int~q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_rx_state.s_rx_data~q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_rx_bit_cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \i_pwm_ctrl_a|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_Mult0~17\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_Mult0~16\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_Mult0~14\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_Mult0~12\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \i_serial_ctrl_a|ALT_INV_serial_on~q\ : std_logic;
SIGNAL \i_serial_ctrl_a|ALT_INV_serial_down~q\ : std_logic;
SIGNAL \i_serial_ctrl_a|ALT_INV_serial_up~q\ : std_logic;
SIGNAL \i_serial_ctrl_a|ALT_INV_serial_off~q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_tx_state.s_stop_bit~q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_tx_state.s_tx_data~q\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_rx_state.s_stop_bit~q\ : std_logic;
SIGNAL \i_pwm_ctrl_a|ALT_INV_s_clk_cn\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \i_serial_uart_a|ALT_INV_received_error~_Duplicate_1_q\ : std_logic;

BEGIN

ww_clk <= clk;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
ww_key_n <= key_n;
ledr <= ww_ledr;
ww_rx <= rx;
tx <= ww_tx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_pwm_ctrl_a|Mult0~8_AX_bus\ <= (vcc & vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd);

\i_pwm_ctrl_a|Mult0~8_AY_bus\ <= (NOT \i_pwm_ctrl_a|s_pwm_dc\(6) & NOT \i_pwm_ctrl_a|s_pwm_dc\(5) & \i_pwm_ctrl_a|s_pwm_dc\(4) & \i_pwm_ctrl_a|s_pwm_dc\(3) & NOT \i_pwm_ctrl_a|s_pwm_dc\(2) & \i_pwm_ctrl_a|s_pwm_dc\(1) & 
\i_pwm_ctrl_a|s_pwm_dc\(0));

\i_pwm_ctrl_a|Mult0~8_resulta\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(0);
\i_pwm_ctrl_a|Mult0~9\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(1);
\i_pwm_ctrl_a|Mult0~10\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(2);
\i_pwm_ctrl_a|Mult0~11\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(3);
\i_pwm_ctrl_a|Mult0~12\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(4);
\i_pwm_ctrl_a|Mult0~13\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(5);
\i_pwm_ctrl_a|Mult0~14\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(6);
\i_pwm_ctrl_a|Mult0~15\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(7);
\i_pwm_ctrl_a|Mult0~16\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(8);
\i_pwm_ctrl_a|Mult0~17\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(9);
\i_pwm_ctrl_a|Mult0~18\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(10);
\i_pwm_ctrl_a|Mult0~19\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(11);
\i_pwm_ctrl_a|Mult0~20\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(12);
\i_pwm_ctrl_a|Mult0~21\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(13);
\i_pwm_ctrl_a|Mult0~22\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(14);
\i_pwm_ctrl_a|Mult0~23\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(15);
\i_pwm_ctrl_a|Mult0~24\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(16);
\i_pwm_ctrl_a|Mult0~25\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(17);
\i_pwm_ctrl_a|Mult0~26\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(18);
\i_pwm_ctrl_a|Mult0~27\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(19);
\i_pwm_ctrl_a|Mult0~28\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(20);
\i_pwm_ctrl_a|Mult0~29\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(21);
\i_pwm_ctrl_a|Mult0~30\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(22);
\i_pwm_ctrl_a|Mult0~31\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(23);
\i_pwm_ctrl_a|Mult0~32\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(24);
\i_pwm_ctrl_a|Mult0~33\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(25);
\i_pwm_ctrl_a|Mult0~34\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(26);
\i_pwm_ctrl_a|Mult0~35\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(27);
\i_pwm_ctrl_a|Mult0~36\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(28);
\i_pwm_ctrl_a|Mult0~37\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(29);
\i_pwm_ctrl_a|Mult0~38\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(30);
\i_pwm_ctrl_a|Mult0~39\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(31);
\i_pwm_ctrl_a|Mult0~40\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(32);
\i_pwm_ctrl_a|Mult0~41\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(33);
\i_pwm_ctrl_a|Mult0~42\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(34);
\i_pwm_ctrl_a|Mult0~43\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(35);
\i_pwm_ctrl_a|Mult0~44\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(36);
\i_pwm_ctrl_a|Mult0~45\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(37);
\i_pwm_ctrl_a|Mult0~46\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(38);
\i_pwm_ctrl_a|Mult0~47\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(39);
\i_pwm_ctrl_a|Mult0~48\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(40);
\i_pwm_ctrl_a|Mult0~49\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(41);
\i_pwm_ctrl_a|Mult0~50\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(42);
\i_pwm_ctrl_a|Mult0~51\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(43);
\i_pwm_ctrl_a|Mult0~52\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(44);
\i_pwm_ctrl_a|Mult0~53\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(45);
\i_pwm_ctrl_a|Mult0~54\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(46);
\i_pwm_ctrl_a|Mult0~55\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(47);
\i_pwm_ctrl_a|Mult0~56\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(48);
\i_pwm_ctrl_a|Mult0~57\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(49);
\i_pwm_ctrl_a|Mult0~58\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(50);
\i_pwm_ctrl_a|Mult0~59\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(51);
\i_pwm_ctrl_a|Mult0~60\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(52);
\i_pwm_ctrl_a|Mult0~61\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(53);
\i_pwm_ctrl_a|Mult0~62\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(54);
\i_pwm_ctrl_a|Mult0~63\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(55);
\i_pwm_ctrl_a|Mult0~64\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(56);
\i_pwm_ctrl_a|Mult0~65\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(57);
\i_pwm_ctrl_a|Mult0~66\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(58);
\i_pwm_ctrl_a|Mult0~67\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(59);
\i_pwm_ctrl_a|Mult0~68\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(60);
\i_pwm_ctrl_a|Mult0~69\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(61);
\i_pwm_ctrl_a|Mult0~70\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(62);
\i_pwm_ctrl_a|Mult0~71\ <= \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\(63);

\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ <= \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(0);
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ <= \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(1);
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ <= \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(2);
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ <= \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(3);
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ <= \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(4);
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ <= \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(5);
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ <= \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(6);
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ <= \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(7);

\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ <= \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(0);
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ <= \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(1);
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ <= \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(2);
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ <= \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(3);
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ <= \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(4);
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ <= \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(5);
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ <= \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(6);
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ <= \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(7);

\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \clk~input_o\);

\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ <= (\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ & 
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ & \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ & 
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ & \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ & 
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ & \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ & 
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\);

\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\ <= \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(6);

\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & 
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & 
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & 
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);
\i_dc_disp_a|ALT_INV_s_tx_cn[1]~DUPLICATE_q\ <= NOT \i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\;
\i_dc_disp_a|ALT_INV_s_tx_cn[2]~DUPLICATE_q\ <= NOT \i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\;
\i_serial_uart_a|ALT_INV_received_data_valid~DUPLICATE_q\ <= NOT \i_serial_uart_a|received_data_valid~DUPLICATE_q\;
\i_key_ctrl_a|ALT_INV_key_n_2r[0]~DUPLICATE_q\ <= NOT \i_key_ctrl_a|key_n_2r[0]~DUPLICATE_q\;
\i_serial_uart_a|ALT_INV_tx_bit_no[1]~DUPLICATE_q\ <= NOT \i_serial_uart_a|tx_bit_no[1]~DUPLICATE_q\;
\i_serial_uart_a|ALT_INV_tx_bit_cnt_wrap~DUPLICATE_q\ <= NOT \i_serial_uart_a|tx_bit_cnt_wrap~DUPLICATE_q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[1][6]~DUPLICATE_q\ <= NOT \i_key_ctrl_a|s_clk_cn[1][6]~DUPLICATE_q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[2][15]~DUPLICATE_q\ <= NOT \i_key_ctrl_a|s_clk_cn[2][15]~DUPLICATE_q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[2][16]~DUPLICATE_q\ <= NOT \i_key_ctrl_a|s_clk_cn[2][16]~DUPLICATE_q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[2][7]~DUPLICATE_q\ <= NOT \i_key_ctrl_a|s_clk_cn[2][7]~DUPLICATE_q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[3][15]~DUPLICATE_q\ <= NOT \i_key_ctrl_a|s_clk_cn[3][15]~DUPLICATE_q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[3][16]~DUPLICATE_q\ <= NOT \i_key_ctrl_a|s_clk_cn[3][16]~DUPLICATE_q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[3][6]~DUPLICATE_q\ <= NOT \i_key_ctrl_a|s_clk_cn[3][6]~DUPLICATE_q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][15]~DUPLICATE_q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][15]~DUPLICATE_q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][10]~DUPLICATE_q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][10]~DUPLICATE_q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][12]~DUPLICATE_q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][12]~DUPLICATE_q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][11]~DUPLICATE_q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][11]~DUPLICATE_q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][6]~DUPLICATE_q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][6]~DUPLICATE_q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][13]~DUPLICATE_q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][13]~DUPLICATE_q\;
\i_serial_uart_a|ALT_INV_rx_state.s_rx_data~DUPLICATE_q\ <= NOT \i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\;
\i_serial_uart_a|ALT_INV_rx_bit_cnt[6]~DUPLICATE_q\ <= NOT \i_serial_uart_a|rx_bit_cnt[6]~DUPLICATE_q\;
\i_serial_uart_a|ALT_INV_rx_bit_cnt[8]~DUPLICATE_q\ <= NOT \i_serial_uart_a|rx_bit_cnt[8]~DUPLICATE_q\;
\i_serial_uart_a|ALT_INV_rx_state.s_stop_bit~DUPLICATE_q\ <= NOT \i_serial_uart_a|rx_state.s_stop_bit~DUPLICATE_q\;
\ALT_INV_key_n[1]~input_o\ <= NOT \key_n[1]~input_o\;
\ALT_INV_key_n[2]~input_o\ <= NOT \key_n[2]~input_o\;
\ALT_INV_key_n[3]~input_o\ <= NOT \key_n[3]~input_o\;
\ALT_INV_key_n[0]~input_o\ <= NOT \key_n[0]~input_o\;
\ALT_INV_rx~input_o\ <= NOT \rx~input_o\;
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[11]~37_combout\ <= NOT \i_dc_disp_a|s_bcd_tx_result[11]~37_combout\;
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[1]~17_combout\ <= NOT \i_dc_disp_a|s_bcd_tx_result[1]~17_combout\;
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[3]~13_combout\ <= NOT \i_dc_disp_a|s_bcd_tx_result[3]~13_combout\;
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[5]~25_combout\ <= NOT \i_dc_disp_a|s_bcd_tx_result[5]~25_combout\;
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[7]~21_combout\ <= NOT \i_dc_disp_a|s_bcd_tx_result[7]~21_combout\;
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[2]~29_combout\ <= NOT \i_dc_disp_a|s_bcd_tx_result[2]~29_combout\;
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[6]~33_combout\ <= NOT \i_dc_disp_a|s_bcd_tx_result[6]~33_combout\;
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[4]~9_combout\ <= NOT \i_dc_disp_a|s_bcd_tx_result[4]~9_combout\;
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[0]~1_combout\ <= NOT \i_dc_disp_a|s_bcd_tx_result[0]~1_combout\;
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[8]~5_combout\ <= NOT \i_dc_disp_a|s_bcd_tx_result[8]~5_combout\;
\i_dc_disp_a|ALT_INV_v_hundreds~0_combout\ <= NOT \i_dc_disp_a|v_hundreds~0_combout\;
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[11]~_emulated_q\ <= NOT \i_dc_disp_a|s_bcd_tx_result[11]~_emulated_q\;
\i_dc_disp_a|ALT_INV_sequences[0][5]~q\ <= NOT \i_dc_disp_a|sequences[0][5]~q\;
\i_dc_disp_a|ALT_INV_v_ones~9_combout\ <= NOT \i_dc_disp_a|v_ones~9_combout\;
\i_dc_disp_a|ALT_INV_v_ones~8_combout\ <= NOT \i_dc_disp_a|v_ones~8_combout\;
\i_dc_disp_a|ALT_INV_v_ones~7_combout\ <= NOT \i_dc_disp_a|v_ones~7_combout\;
\i_dc_disp_a|ALT_INV_v_ones~6_combout\ <= NOT \i_dc_disp_a|v_ones~6_combout\;
\i_dc_disp_a|ALT_INV_v_ones~5_combout\ <= NOT \i_dc_disp_a|v_ones~5_combout\;
\i_dc_disp_a|ALT_INV_Add1~1_combout\ <= NOT \i_dc_disp_a|Add1~1_combout\;
\i_dc_disp_a|ALT_INV_v_tens~6_combout\ <= NOT \i_dc_disp_a|v_tens~6_combout\;
\i_dc_disp_a|ALT_INV_v_tens~5_combout\ <= NOT \i_dc_disp_a|v_tens~5_combout\;
\i_dc_disp_a|ALT_INV_Equal6~0_combout\ <= NOT \i_dc_disp_a|Equal6~0_combout\;
\i_dc_disp_a|ALT_INV_v_ones~4_combout\ <= NOT \i_dc_disp_a|v_ones~4_combout\;
\i_dc_disp_a|ALT_INV_v_tens~4_combout\ <= NOT \i_dc_disp_a|v_tens~4_combout\;
\i_dc_disp_a|ALT_INV_sequences[1][4]~q\ <= NOT \i_dc_disp_a|sequences[1][4]~q\;
\i_dc_disp_a|ALT_INV_sequences[2][4]~q\ <= NOT \i_dc_disp_a|sequences[2][4]~q\;
\i_dc_disp_a|ALT_INV_sequences[0][4]~q\ <= NOT \i_dc_disp_a|sequences[0][4]~q\;
\i_dc_disp_a|ALT_INV_tx_data\(5) <= NOT \i_dc_disp_a|tx_data\(5);
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[1]~18_combout\ <= NOT \i_dc_disp_a|s_bcd_tx_result[1]~18_combout\;
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[1]~_emulated_q\ <= NOT \i_dc_disp_a|s_bcd_tx_result[1]~_emulated_q\;
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[3]~14_combout\ <= NOT \i_dc_disp_a|s_bcd_tx_result[3]~14_combout\;
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[3]~_emulated_q\ <= NOT \i_dc_disp_a|s_bcd_tx_result[3]~_emulated_q\;
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[5]~26_combout\ <= NOT \i_dc_disp_a|s_bcd_tx_result[5]~26_combout\;
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[5]~_emulated_q\ <= NOT \i_dc_disp_a|s_bcd_tx_result[5]~_emulated_q\;
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[7]~22_combout\ <= NOT \i_dc_disp_a|s_bcd_tx_result[7]~22_combout\;
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[7]~_emulated_q\ <= NOT \i_dc_disp_a|s_bcd_tx_result[7]~_emulated_q\;
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[2]~_emulated_q\ <= NOT \i_dc_disp_a|s_bcd_tx_result[2]~_emulated_q\;
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[6]~_emulated_q\ <= NOT \i_dc_disp_a|s_bcd_tx_result[6]~_emulated_q\;
\i_dc_disp_a|ALT_INV_sequences[2][3]~q\ <= NOT \i_dc_disp_a|sequences[2][3]~q\;
\i_dc_disp_a|ALT_INV_sequences[1][3]~q\ <= NOT \i_dc_disp_a|sequences[1][3]~q\;
\i_dc_disp_a|ALT_INV_tx_data\(4) <= NOT \i_dc_disp_a|tx_data\(4);
\i_serial_uart_a|ALT_INV_tx_byte_saved\(5) <= NOT \i_serial_uart_a|tx_byte_saved\(5);
\create_pll:i_reset_ctrl_a|ALT_INV_reset_cnt\(1) <= NOT \create_pll:i_reset_ctrl_a|reset_cnt\(1);
\create_pll:i_reset_ctrl_a|ALT_INV_reset_cnt\(0) <= NOT \create_pll:i_reset_ctrl_a|reset_cnt\(0);
\i_dc_disp_a|ALT_INV_v_tens~3_combout\ <= NOT \i_dc_disp_a|v_tens~3_combout\;
\i_dc_disp_a|ALT_INV_v_ones~3_combout\ <= NOT \i_dc_disp_a|v_ones~3_combout\;
\i_dc_disp_a|ALT_INV_v_ones~2_combout\ <= NOT \i_dc_disp_a|v_ones~2_combout\;
\i_dc_disp_a|ALT_INV_Equal4~0_combout\ <= NOT \i_dc_disp_a|Equal4~0_combout\;
\i_dc_disp_a|ALT_INV_sequences[2][2]~q\ <= NOT \i_dc_disp_a|sequences[2][2]~q\;
\i_dc_disp_a|ALT_INV_sequences[1][2]~q\ <= NOT \i_dc_disp_a|sequences[1][2]~q\;
\i_dc_disp_a|ALT_INV_tx_data\(3) <= NOT \i_dc_disp_a|tx_data\(3);
\i_serial_uart_a|ALT_INV_tx_byte_saved\(4) <= NOT \i_serial_uart_a|tx_byte_saved\(4);
\i_dc_disp_a|ALT_INV_s_tx_update_complete_state[1]~0_combout\ <= NOT \i_dc_disp_a|s_tx_update_complete_state[1]~0_combout\;
\create_pll:i_reset_ctrl_a|ALT_INV_reset_cnt\(2) <= NOT \create_pll:i_reset_ctrl_a|reset_cnt\(2);
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~7_combout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[20]~7_combout\;
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[4]~_emulated_q\ <= NOT \i_dc_disp_a|s_bcd_tx_result[4]~_emulated_q\;
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[0]~_emulated_q\ <= NOT \i_dc_disp_a|s_bcd_tx_result[0]~_emulated_q\;
\i_dc_disp_a|ALT_INV_s_bcd_tx_result[8]~_emulated_q\ <= NOT \i_dc_disp_a|s_bcd_tx_result[8]~_emulated_q\;
\i_dc_disp_a|ALT_INV_sequences[2][1]~q\ <= NOT \i_dc_disp_a|sequences[2][1]~q\;
\i_dc_disp_a|ALT_INV_sequences[1][1]~q\ <= NOT \i_dc_disp_a|sequences[1][1]~q\;
\i_dc_disp_a|ALT_INV_tx_data\(2) <= NOT \i_dc_disp_a|tx_data\(2);
\i_serial_uart_a|ALT_INV_tx_byte_saved\(3) <= NOT \i_serial_uart_a|tx_byte_saved\(3);
\i_dc_disp_a|ALT_INV_s_started_tx~q\ <= NOT \i_dc_disp_a|s_started_tx~q\;
\i_dc_disp_a|ALT_INV_p_display~0_combout\ <= NOT \i_dc_disp_a|p_display~0_combout\;
\i_dc_disp_a|ALT_INV_s_tx_update_complete_state\(0) <= NOT \i_dc_disp_a|s_tx_update_complete_state\(0);
\i_dc_disp_a|ALT_INV_s_tx_update_complete_state\(1) <= NOT \i_dc_disp_a|s_tx_update_complete_state\(1);
\i_dc_disp_a|ALT_INV_s_completed_tx~q\ <= NOT \i_dc_disp_a|s_completed_tx~q\;
\i_dc_disp_a|ALT_INV_s_backlog_c~1_combout\ <= NOT \i_dc_disp_a|s_backlog_c~1_combout\;
\i_serial_uart_a|ALT_INV_rx_bit_cnt_half~0_combout\ <= NOT \i_serial_uart_a|rx_bit_cnt_half~0_combout\;
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~6_combout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[21]~6_combout\;
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~5_combout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[15]~5_combout\;
\i_serial_uart_a|ALT_INV_rx_byte_int\(5) <= NOT \i_serial_uart_a|rx_byte_int\(5);
\i_serial_uart_a|ALT_INV_rx_byte_int\(6) <= NOT \i_serial_uart_a|rx_byte_int\(6);
\i_serial_uart_a|ALT_INV_rx_byte_int\(2) <= NOT \i_serial_uart_a|rx_byte_int\(2);
\i_serial_uart_a|ALT_INV_rx_byte_int\(4) <= NOT \i_serial_uart_a|rx_byte_int\(4);
\i_serial_uart_a|ALT_INV_rx_byte_int\(1) <= NOT \i_serial_uart_a|rx_byte_int\(1);
\i_serial_uart_a|ALT_INV_rx_byte_int\(3) <= NOT \i_serial_uart_a|rx_byte_int\(3);
\i_serial_uart_a|ALT_INV_rx_byte_int\(0) <= NOT \i_serial_uart_a|rx_byte_int\(0);
\i_serial_uart_a|ALT_INV_tx_bit_no~0_combout\ <= NOT \i_serial_uart_a|tx_bit_no~0_combout\;
\i_dc_disp_a|ALT_INV_sequences[1][0]~q\ <= NOT \i_dc_disp_a|sequences[1][0]~q\;
\i_dc_disp_a|ALT_INV_sequences[2][0]~q\ <= NOT \i_dc_disp_a|sequences[2][0]~q\;
\i_dc_disp_a|ALT_INV_sequences[0][0]~q\ <= NOT \i_dc_disp_a|sequences[0][0]~q\;
\i_dc_disp_a|ALT_INV_tx_data\(1) <= NOT \i_dc_disp_a|tx_data\(1);
\i_serial_uart_a|ALT_INV_tx_byte_saved\(2) <= NOT \i_serial_uart_a|tx_byte_saved\(2);
\i_dc_disp_a|ALT_INV_s_valid_data~1_combout\ <= NOT \i_dc_disp_a|s_valid_data~1_combout\;
\i_dc_disp_a|ALT_INV_s_updateInfo~q\ <= NOT \i_dc_disp_a|s_updateInfo~q\;
\i_dc_disp_a|ALT_INV_LessThan0~0_combout\ <= NOT \i_dc_disp_a|LessThan0~0_combout\;
\i_dc_disp_a|ALT_INV_s_tx_cn\(0) <= NOT \i_dc_disp_a|s_tx_cn\(0);
\i_dc_disp_a|ALT_INV_s_ready_cd~q\ <= NOT \i_dc_disp_a|s_ready_cd~q\;
\i_dc_disp_a|ALT_INV_p_tData~0_combout\ <= NOT \i_dc_disp_a|p_tData~0_combout\;
\i_dc_disp_a|ALT_INV_s_data_backlog~q\ <= NOT \i_dc_disp_a|s_data_backlog~q\;
\i_dc_disp_a|ALT_INV_s_backlog_c~q\ <= NOT \i_dc_disp_a|s_backlog_c~q\;
\i_dc_disp_a|ALT_INV_sequences[2][0]~0_combout\ <= NOT \i_dc_disp_a|sequences[2][0]~0_combout\;
\i_dc_disp_a|ALT_INV_s_tx_cn\(1) <= NOT \i_dc_disp_a|s_tx_cn\(1);
\i_dc_disp_a|ALT_INV_s_tx_cn\(2) <= NOT \i_dc_disp_a|s_tx_cn\(2);
\i_serial_uart_a|ALT_INV_LessThan2~0_combout\ <= NOT \i_serial_uart_a|LessThan2~0_combout\;
\i_serial_uart_a|ALT_INV_rx_bit_cnt_half~q\ <= NOT \i_serial_uart_a|rx_bit_cnt_half~q\;
\i_serial_uart_a|ALT_INV_rx_state.s_idle~q\ <= NOT \i_serial_uart_a|rx_state.s_idle~q\;
\create_pll:i_start_reset_a|ALT_INV_LessThan0~2_combout\ <= NOT \create_pll:i_start_reset_a|LessThan0~2_combout\;
\create_pll:i_start_reset_a|ALT_INV_LessThan0~1_combout\ <= NOT \create_pll:i_start_reset_a|LessThan0~1_combout\;
\create_pll:i_start_reset_a|ALT_INV_reset_cnt\(9) <= NOT \create_pll:i_start_reset_a|reset_cnt\(9);
\create_pll:i_start_reset_a|ALT_INV_reset_cnt\(8) <= NOT \create_pll:i_start_reset_a|reset_cnt\(8);
\create_pll:i_start_reset_a|ALT_INV_reset_cnt\(7) <= NOT \create_pll:i_start_reset_a|reset_cnt\(7);
\create_pll:i_start_reset_a|ALT_INV_reset_cnt\(6) <= NOT \create_pll:i_start_reset_a|reset_cnt\(6);
\create_pll:i_start_reset_a|ALT_INV_LessThan0~0_combout\ <= NOT \create_pll:i_start_reset_a|LessThan0~0_combout\;
\create_pll:i_start_reset_a|ALT_INV_reset_cnt\(3) <= NOT \create_pll:i_start_reset_a|reset_cnt\(3);
\create_pll:i_start_reset_a|ALT_INV_reset_cnt\(2) <= NOT \create_pll:i_start_reset_a|reset_cnt\(2);
\create_pll:i_start_reset_a|ALT_INV_reset_cnt\(1) <= NOT \create_pll:i_start_reset_a|reset_cnt\(1);
\create_pll:i_start_reset_a|ALT_INV_reset_cnt\(0) <= NOT \create_pll:i_start_reset_a|reset_cnt\(0);
\create_pll:i_start_reset_a|ALT_INV_reset_cnt\(5) <= NOT \create_pll:i_start_reset_a|reset_cnt\(5);
\create_pll:i_start_reset_a|ALT_INV_reset_cnt\(4) <= NOT \create_pll:i_start_reset_a|reset_cnt\(4);
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~4_combout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\;
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\;
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~2_combout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[22]~2_combout\;
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\;
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~0_combout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[22]~0_combout\;
\i_key_ctrl_a|ALT_INV_s_output~11_combout\ <= NOT \i_key_ctrl_a|s_output~11_combout\;
\i_key_ctrl_a|ALT_INV_s_output~10_combout\ <= NOT \i_key_ctrl_a|s_output~10_combout\;
\i_key_ctrl_a|ALT_INV_s_output~9_combout\ <= NOT \i_key_ctrl_a|s_output~9_combout\;
\i_key_ctrl_a|ALT_INV_s_output~8_combout\ <= NOT \i_key_ctrl_a|s_output~8_combout\;
\i_key_ctrl_a|ALT_INV_key_n_2r\(1) <= NOT \i_key_ctrl_a|key_n_2r\(1);
\i_serial_ctrl_a|ALT_INV_serial_up~0_combout\ <= NOT \i_serial_ctrl_a|serial_up~0_combout\;
\i_key_ctrl_a|ALT_INV_s_output~6_combout\ <= NOT \i_key_ctrl_a|s_output~6_combout\;
\i_key_ctrl_a|ALT_INV_LessThan1~3_combout\ <= NOT \i_key_ctrl_a|LessThan1~3_combout\;
\i_key_ctrl_a|ALT_INV_LessThan1~2_combout\ <= NOT \i_key_ctrl_a|LessThan1~2_combout\;
\i_key_ctrl_a|ALT_INV_LessThan1~1_combout\ <= NOT \i_key_ctrl_a|LessThan1~1_combout\;
\i_key_ctrl_a|ALT_INV_LessThan1~0_combout\ <= NOT \i_key_ctrl_a|LessThan1~0_combout\;
\i_key_ctrl_a|ALT_INV_process_0~0_combout\ <= NOT \i_key_ctrl_a|process_0~0_combout\;
\i_key_ctrl_a|ALT_INV_key_n_2r\(2) <= NOT \i_key_ctrl_a|key_n_2r\(2);
\i_key_ctrl_a|ALT_INV_prev_key_n_2r\(2) <= NOT \i_key_ctrl_a|prev_key_n_2r\(2);
\i_key_ctrl_a|ALT_INV_prev_key_n_2r\(3) <= NOT \i_key_ctrl_a|prev_key_n_2r\(3);
\i_key_ctrl_a|ALT_INV_LessThan0~3_combout\ <= NOT \i_key_ctrl_a|LessThan0~3_combout\;
\i_key_ctrl_a|ALT_INV_LessThan0~2_combout\ <= NOT \i_key_ctrl_a|LessThan0~2_combout\;
\i_key_ctrl_a|ALT_INV_LessThan0~1_combout\ <= NOT \i_key_ctrl_a|LessThan0~1_combout\;
\i_key_ctrl_a|ALT_INV_LessThan0~0_combout\ <= NOT \i_key_ctrl_a|LessThan0~0_combout\;
\i_key_ctrl_a|ALT_INV_key_n_2r\(3) <= NOT \i_key_ctrl_a|key_n_2r\(3);
\i_serial_ctrl_a|ALT_INV_serial_off~1_combout\ <= NOT \i_serial_ctrl_a|serial_off~1_combout\;
\i_serial_uart_a|ALT_INV_received_data_valid~q\ <= NOT \i_serial_uart_a|received_data_valid~q\;
\i_key_ctrl_a|ALT_INV_s_output~3_combout\ <= NOT \i_key_ctrl_a|s_output~3_combout\;
\i_key_ctrl_a|ALT_INV_s_output~2_combout\ <= NOT \i_key_ctrl_a|s_output~2_combout\;
\i_key_ctrl_a|ALT_INV_s_output~1_combout\ <= NOT \i_key_ctrl_a|s_output~1_combout\;
\i_key_ctrl_a|ALT_INV_s_output~0_combout\ <= NOT \i_key_ctrl_a|s_output~0_combout\;
\i_key_ctrl_a|ALT_INV_key_n_2r\(0) <= NOT \i_key_ctrl_a|key_n_2r\(0);
\i_key_ctrl_a|ALT_INV_debounce_key~q\ <= NOT \i_key_ctrl_a|debounce_key~q\;
\i_serial_uart_a|ALT_INV_tx_bit_no\(1) <= NOT \i_serial_uart_a|tx_bit_no\(1);
\i_serial_uart_a|ALT_INV_tx_bit_no\(0) <= NOT \i_serial_uart_a|tx_bit_no\(0);
\i_serial_uart_a|ALT_INV_tx_bit_no\(2) <= NOT \i_serial_uart_a|tx_bit_no\(2);
\i_dc_disp_a|ALT_INV_tx_data\(0) <= NOT \i_dc_disp_a|tx_data\(0);
\i_serial_uart_a|ALT_INV_tx_byte_saved\(1) <= NOT \i_serial_uart_a|tx_byte_saved\(1);
\i_dc_disp_a|ALT_INV_s_valid_data~q\ <= NOT \i_dc_disp_a|s_valid_data~q\;
\i_serial_uart_a|ALT_INV_tx_bit_cnt_wrap~q\ <= NOT \i_serial_uart_a|tx_bit_cnt_wrap~q\;
\i_serial_uart_a|ALT_INV_reset_r~q\ <= NOT \i_serial_uart_a|reset_r~q\;
\i_serial_uart_a|ALT_INV_Selector4~0_combout\ <= NOT \i_serial_uart_a|Selector4~0_combout\;
\i_serial_uart_a|ALT_INV_rx_bit_no\(1) <= NOT \i_serial_uart_a|rx_bit_no\(1);
\i_serial_uart_a|ALT_INV_rx_bit_no\(0) <= NOT \i_serial_uart_a|rx_bit_no\(0);
\i_serial_uart_a|ALT_INV_rx_bit_no\(2) <= NOT \i_serial_uart_a|rx_bit_no\(2);
\i_serial_uart_a|ALT_INV_LessThan0~0_combout\ <= NOT \i_serial_uart_a|LessThan0~0_combout\;
\i_serial_uart_a|ALT_INV_rx_bit_cnt_en~q\ <= NOT \i_serial_uart_a|rx_bit_cnt_en~q\;
\i_serial_uart_a|ALT_INV_rx_r~q\ <= NOT \i_serial_uart_a|rx_r~q\;
\i_pwm_ctrl_a|ALT_INV_LessThan1~0_combout\ <= NOT \i_pwm_ctrl_a|LessThan1~0_combout\;
\create_pll:i_reset_ctrl_a|ALT_INV_LessThan0~0_combout\ <= NOT \create_pll:i_reset_ctrl_a|LessThan0~0_combout\;
\create_pll:i_reset_ctrl_a|ALT_INV_reset_cnt\(3) <= NOT \create_pll:i_reset_ctrl_a|reset_cnt\(3);
\create_pll:i_reset_ctrl_a|ALT_INV_reset_cnt\(4) <= NOT \create_pll:i_reset_ctrl_a|reset_cnt\(4);
\create_pll:i_reset_ctrl_a|ALT_INV_reset_cnt\(5) <= NOT \create_pll:i_reset_ctrl_a|reset_cnt\(5);
\create_pll:i_reset_ctrl_a|ALT_INV_reset_cnt\(6) <= NOT \create_pll:i_reset_ctrl_a|reset_cnt\(6);
\create_pll:i_reset_ctrl_a|ALT_INV_reset_cnt\(7) <= NOT \create_pll:i_reset_ctrl_a|reset_cnt\(7);
\i_dc_disp_a|ALT_INV_Equal0~1_combout\ <= NOT \i_dc_disp_a|Equal0~1_combout\;
\i_dc_disp_a|ALT_INV_Equal0~0_combout\ <= NOT \i_dc_disp_a|Equal0~0_combout\;
\i_pwm_ctrl_a|ALT_INV_s_isEnabled~2_combout\ <= NOT \i_pwm_ctrl_a|s_isEnabled~2_combout\;
\i_pwm_ctrl_a|ALT_INV_s_pwm_dc[1]~1_combout\ <= NOT \i_pwm_ctrl_a|s_pwm_dc[1]~1_combout\;
\i_pwm_ctrl_a|ALT_INV_process_2~3_combout\ <= NOT \i_pwm_ctrl_a|process_2~3_combout\;
\i_pwm_ctrl_a|ALT_INV_LessThan3~2_combout\ <= NOT \i_pwm_ctrl_a|LessThan3~2_combout\;
\i_pwm_ctrl_a|ALT_INV_s_isEnabled~1_combout\ <= NOT \i_pwm_ctrl_a|s_isEnabled~1_combout\;
\i_pwm_ctrl_a|ALT_INV_process_2~2_combout\ <= NOT \i_pwm_ctrl_a|process_2~2_combout\;
\i_pwm_ctrl_a|ALT_INV_process_2~1_combout\ <= NOT \i_pwm_ctrl_a|process_2~1_combout\;
\i_key_ctrl_a|ALT_INV_s_output\(1) <= NOT \i_key_ctrl_a|s_output\(1);
\i_pwm_ctrl_a|ALT_INV_s_isEnabled~0_combout\ <= NOT \i_pwm_ctrl_a|s_isEnabled~0_combout\;
\i_pwm_ctrl_a|ALT_INV_LessThan2~1_combout\ <= NOT \i_pwm_ctrl_a|LessThan2~1_combout\;
\i_pwm_ctrl_a|ALT_INV_LessThan2~0_combout\ <= NOT \i_pwm_ctrl_a|LessThan2~0_combout\;
\i_key_ctrl_a|ALT_INV_s_output\(2) <= NOT \i_key_ctrl_a|s_output\(2);
\i_pwm_ctrl_a|ALT_INV_process_2~0_combout\ <= NOT \i_pwm_ctrl_a|process_2~0_combout\;
\i_pwm_ctrl_a|ALT_INV_LessThan3~1_combout\ <= NOT \i_pwm_ctrl_a|LessThan3~1_combout\;
\i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(5) <= NOT \i_pwm_ctrl_a|s_pwm_dc\(5);
\i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(6) <= NOT \i_pwm_ctrl_a|s_pwm_dc\(6);
\i_pwm_ctrl_a|ALT_INV_LessThan3~0_combout\ <= NOT \i_pwm_ctrl_a|LessThan3~0_combout\;
\i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(4) <= NOT \i_pwm_ctrl_a|s_pwm_dc\(4);
\i_key_ctrl_a|ALT_INV_s_output\(3) <= NOT \i_key_ctrl_a|s_output\(3);
\i_key_ctrl_a|ALT_INV_s_output\(0) <= NOT \i_key_ctrl_a|s_output\(0);
\i_serial_uart_a|ALT_INV_tx_byte_saved\(0) <= NOT \i_serial_uart_a|tx_byte_saved\(0);
\i_serial_uart_a|ALT_INV_tx_state.s_idle~q\ <= NOT \i_serial_uart_a|tx_state.s_idle~q\;
\i_serial_uart_a|ALT_INV_reset_2r~q\ <= NOT \i_serial_uart_a|reset_2r~q\;
\i_serial_uart_a|ALT_INV_rx_bit_cnt_wrap~q\ <= NOT \i_serial_uart_a|rx_bit_cnt_wrap~q\;
\i_serial_uart_a|ALT_INV_rx_2r~q\ <= NOT \i_serial_uart_a|rx_2r~q\;
\i_pwm_ctrl_a|ALT_INV_Equal0~4_combout\ <= NOT \i_pwm_ctrl_a|Equal0~4_combout\;
\i_pwm_ctrl_a|ALT_INV_Equal0~3_combout\ <= NOT \i_pwm_ctrl_a|Equal0~3_combout\;
\i_pwm_ctrl_a|ALT_INV_Equal0~2_combout\ <= NOT \i_pwm_ctrl_a|Equal0~2_combout\;
\i_pwm_ctrl_a|ALT_INV_Equal0~1_combout\ <= NOT \i_pwm_ctrl_a|Equal0~1_combout\;
\i_pwm_ctrl_a|ALT_INV_Equal0~0_combout\ <= NOT \i_pwm_ctrl_a|Equal0~0_combout\;
\i_pwm_ctrl_a|ALT_INV_LessThan0~8_combout\ <= NOT \i_pwm_ctrl_a|LessThan0~8_combout\;
\i_pwm_ctrl_a|ALT_INV_LessThan0~7_combout\ <= NOT \i_pwm_ctrl_a|LessThan0~7_combout\;
\i_pwm_ctrl_a|ALT_INV_LessThan0~6_combout\ <= NOT \i_pwm_ctrl_a|LessThan0~6_combout\;
\i_pwm_ctrl_a|ALT_INV_LessThan0~5_combout\ <= NOT \i_pwm_ctrl_a|LessThan0~5_combout\;
\i_pwm_ctrl_a|ALT_INV_s_dc_cn\(10) <= NOT \i_pwm_ctrl_a|s_dc_cn\(10);
\i_pwm_ctrl_a|ALT_INV_s_dc_cn\(11) <= NOT \i_pwm_ctrl_a|s_dc_cn\(11);
\i_pwm_ctrl_a|ALT_INV_LessThan0~4_combout\ <= NOT \i_pwm_ctrl_a|LessThan0~4_combout\;
\i_pwm_ctrl_a|ALT_INV_LessThan0~3_combout\ <= NOT \i_pwm_ctrl_a|LessThan0~3_combout\;
\i_pwm_ctrl_a|ALT_INV_LessThan0~2_combout\ <= NOT \i_pwm_ctrl_a|LessThan0~2_combout\;
\i_pwm_ctrl_a|ALT_INV_s_dc_cn\(0) <= NOT \i_pwm_ctrl_a|s_dc_cn\(0);
\i_pwm_ctrl_a|ALT_INV_s_dc_cn\(1) <= NOT \i_pwm_ctrl_a|s_dc_cn\(1);
\i_pwm_ctrl_a|ALT_INV_s_dc_cn\(2) <= NOT \i_pwm_ctrl_a|s_dc_cn\(2);
\i_pwm_ctrl_a|ALT_INV_s_dc_cn\(3) <= NOT \i_pwm_ctrl_a|s_dc_cn\(3);
\i_pwm_ctrl_a|ALT_INV_s_dc_cn\(4) <= NOT \i_pwm_ctrl_a|s_dc_cn\(4);
\i_pwm_ctrl_a|ALT_INV_LessThan0~1_combout\ <= NOT \i_pwm_ctrl_a|LessThan0~1_combout\;
\i_pwm_ctrl_a|ALT_INV_LessThan0~0_combout\ <= NOT \i_pwm_ctrl_a|LessThan0~0_combout\;
\i_pwm_ctrl_a|ALT_INV_s_dc_cn\(5) <= NOT \i_pwm_ctrl_a|s_dc_cn\(5);
\i_pwm_ctrl_a|ALT_INV_s_dc_cn\(6) <= NOT \i_pwm_ctrl_a|s_dc_cn\(6);
\i_pwm_ctrl_a|ALT_INV_s_dc_cn\(7) <= NOT \i_pwm_ctrl_a|s_dc_cn\(7);
\i_pwm_ctrl_a|ALT_INV_s_dc_cn\(8) <= NOT \i_pwm_ctrl_a|s_dc_cn\(8);
\i_pwm_ctrl_a|ALT_INV_s_dc_cn\(9) <= NOT \i_pwm_ctrl_a|s_dc_cn\(9);
\i_pwm_ctrl_a|ALT_INV_s_dc_cn\(12) <= NOT \i_pwm_ctrl_a|s_dc_cn\(12);
\i_pwm_ctrl_a|ALT_INV_s_dc_cn\(13) <= NOT \i_pwm_ctrl_a|s_dc_cn\(13);
\i_pwm_ctrl_a|ALT_INV_s_dc_cn\(14) <= NOT \i_pwm_ctrl_a|s_dc_cn\(14);
\i_pwm_ctrl_a|ALT_INV_s_dc_cn\(15) <= NOT \i_pwm_ctrl_a|s_dc_cn\(15);
\i_dc_disp_a|ALT_INV_Mux7~0_combout\ <= NOT \i_dc_disp_a|Mux7~0_combout\;
\i_dc_disp_a|ALT_INV_v_tens~2_combout\ <= NOT \i_dc_disp_a|v_tens~2_combout\;
\i_dc_disp_a|ALT_INV_Mux9~0_combout\ <= NOT \i_dc_disp_a|Mux9~0_combout\;
\i_dc_disp_a|ALT_INV_v_tens~1_combout\ <= NOT \i_dc_disp_a|v_tens~1_combout\;
\i_dc_disp_a|ALT_INV_v_tens~0_combout\ <= NOT \i_dc_disp_a|v_tens~0_combout\;
\i_dc_disp_a|ALT_INV_Mux0~0_combout\ <= NOT \i_dc_disp_a|Mux0~0_combout\;
\i_pwm_ctrl_a|ALT_INV_s_dc_changed~q\ <= NOT \i_pwm_ctrl_a|s_dc_changed~q\;
\create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\ <= NOT \create_pll:i_reset_ctrl_a|reset_out~q\;
\i_dc_disp_a|ALT_INV_v_ones~1_combout\ <= NOT \i_dc_disp_a|v_ones~1_combout\;
\i_dc_disp_a|ALT_INV_Add1~0_combout\ <= NOT \i_dc_disp_a|Add1~0_combout\;
\i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(3) <= NOT \i_pwm_ctrl_a|s_pwm_dc\(3);
\i_dc_disp_a|ALT_INV_Mux2~0_combout\ <= NOT \i_dc_disp_a|Mux2~0_combout\;
\i_pwm_ctrl_a|ALT_INV_current_dc[2]~2_combout\ <= NOT \i_pwm_ctrl_a|current_dc[2]~2_combout\;
\i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(2) <= NOT \i_pwm_ctrl_a|s_pwm_dc\(2);
\i_dc_disp_a|ALT_INV_v_ones~0_combout\ <= NOT \i_dc_disp_a|v_ones~0_combout\;
\i_pwm_ctrl_a|ALT_INV_current_dc[1]~1_combout\ <= NOT \i_pwm_ctrl_a|current_dc[1]~1_combout\;
\i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(1) <= NOT \i_pwm_ctrl_a|s_pwm_dc\(1);
\i_pwm_ctrl_a|ALT_INV_current_dc[0]~0_combout\ <= NOT \i_pwm_ctrl_a|current_dc[0]~0_combout\;
\i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(0) <= NOT \i_pwm_ctrl_a|s_pwm_dc\(0);
\i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\ <= NOT \i_pwm_ctrl_a|s_isEnabled~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[1][0]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[1][0]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[2][0]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[2][0]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[3][0]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[3][0]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][0]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][0]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[1][1]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[1][1]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[2][1]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[2][1]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[3][1]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[3][1]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][1]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][1]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[1][2]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[1][2]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[2][2]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[2][2]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[3][2]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[3][2]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][2]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][2]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[1][3]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[1][3]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[2][3]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[2][3]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[3][3]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[3][3]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][3]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][3]~q\;
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~21_sumout\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[1][4]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[1][4]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[2][4]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[2][4]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[3][4]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[3][4]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][4]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][4]~q\;
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~17_sumout\;
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~21_sumout\;
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~17_sumout\;
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~13_sumout\;
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~17_sumout\;
\i_serial_uart_a|ALT_INV_tx_bit_cnt\(3) <= NOT \i_serial_uart_a|tx_bit_cnt\(3);
\i_serial_uart_a|ALT_INV_tx_bit_cnt\(0) <= NOT \i_serial_uart_a|tx_bit_cnt\(0);
\i_serial_uart_a|ALT_INV_tx_bit_cnt\(2) <= NOT \i_serial_uart_a|tx_bit_cnt\(2);
\i_serial_uart_a|ALT_INV_tx_bit_cnt\(1) <= NOT \i_serial_uart_a|tx_bit_cnt\(1);
\i_serial_uart_a|ALT_INV_tx_bit_cnt\(5) <= NOT \i_serial_uart_a|tx_bit_cnt\(5);
\i_serial_uart_a|ALT_INV_tx_bit_cnt\(4) <= NOT \i_serial_uart_a|tx_bit_cnt\(4);
\i_serial_uart_a|ALT_INV_tx_bit_cnt\(6) <= NOT \i_serial_uart_a|tx_bit_cnt\(6);
\i_serial_uart_a|ALT_INV_tx_bit_cnt\(8) <= NOT \i_serial_uart_a|tx_bit_cnt\(8);
\i_serial_uart_a|ALT_INV_tx_bit_cnt\(7) <= NOT \i_serial_uart_a|tx_bit_cnt\(7);
\i_serial_uart_a|ALT_INV_tx_bit_cnt_en~q\ <= NOT \i_serial_uart_a|tx_bit_cnt_en~q\;
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~13_sumout\;
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~13_sumout\;
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~9_sumout\;
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~9_sumout\;
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~9_sumout\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[1][18]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[1][18]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[1][17]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[1][17]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[1][16]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[1][16]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[1][15]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[1][15]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[1][12]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[1][12]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[1][11]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[1][11]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[1][10]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[1][10]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[1][9]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[1][9]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[1][7]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[1][7]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[1][6]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[1][6]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[1][5]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[1][5]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[1][8]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[1][8]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[1][13]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[1][13]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[1][14]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[1][14]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[2][15]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[2][15]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[2][16]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[2][16]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[2][17]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[2][17]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[2][18]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[2][18]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[2][9]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[2][9]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[2][10]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[2][10]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[2][11]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[2][11]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[2][12]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[2][12]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[2][7]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[2][7]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[2][6]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[2][6]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[2][5]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[2][5]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[2][8]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[2][8]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[2][13]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[2][13]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[2][14]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[2][14]~q\;
\i_pwm_ctrl_a|ALT_INV_Add1~25_sumout\ <= NOT \i_pwm_ctrl_a|Add1~25_sumout\;
\i_pwm_ctrl_a|ALT_INV_Add1~21_sumout\ <= NOT \i_pwm_ctrl_a|Add1~21_sumout\;
\i_pwm_ctrl_a|ALT_INV_Add1~17_sumout\ <= NOT \i_pwm_ctrl_a|Add1~17_sumout\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[3][15]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[3][15]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[3][16]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[3][16]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[3][17]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[3][17]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[3][18]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[3][18]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[3][11]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[3][11]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[3][12]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[3][12]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[3][9]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[3][9]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[3][10]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[3][10]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[3][6]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[3][6]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[3][5]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[3][5]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[3][7]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[3][7]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[3][8]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[3][8]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[3][13]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[3][13]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[3][14]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[3][14]~q\;
\i_serial_uart_a|ALT_INV_received_data\(5) <= NOT \i_serial_uart_a|received_data\(5);
\i_serial_uart_a|ALT_INV_received_data\(6) <= NOT \i_serial_uart_a|received_data\(6);
\i_serial_uart_a|ALT_INV_received_data\(2) <= NOT \i_serial_uart_a|received_data\(2);
\i_serial_uart_a|ALT_INV_received_data\(4) <= NOT \i_serial_uart_a|received_data\(4);
\i_serial_uart_a|ALT_INV_received_data\(7) <= NOT \i_serial_uart_a|received_data\(7);
\i_serial_uart_a|ALT_INV_received_data\(1) <= NOT \i_serial_uart_a|received_data\(1);
\i_serial_uart_a|ALT_INV_received_data\(3) <= NOT \i_serial_uart_a|received_data\(3);
\i_serial_uart_a|ALT_INV_received_data\(0) <= NOT \i_serial_uart_a|received_data\(0);
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][18]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][18]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][17]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][17]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][16]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][16]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][15]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][15]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][9]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][9]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][10]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][10]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][12]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][12]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][11]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][11]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][6]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][6]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][5]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][5]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][7]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][7]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][8]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][8]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][13]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][13]~q\;
\i_key_ctrl_a|ALT_INV_s_clk_cn[0][14]~q\ <= NOT \i_key_ctrl_a|s_clk_cn[0][14]~q\;
\i_serial_uart_a|ALT_INV_tx_state.s_start_bit~q\ <= NOT \i_serial_uart_a|tx_state.s_start_bit~q\;
\i_serial_uart_a|ALT_INV_transmit_ready_int~q\ <= NOT \i_serial_uart_a|transmit_ready_int~q\;
\i_serial_uart_a|ALT_INV_rx_state.s_rx_data~q\ <= NOT \i_serial_uart_a|rx_state.s_rx_data~q\;
\i_serial_uart_a|ALT_INV_rx_bit_cnt\(3) <= NOT \i_serial_uart_a|rx_bit_cnt\(3);
\i_serial_uart_a|ALT_INV_rx_bit_cnt\(2) <= NOT \i_serial_uart_a|rx_bit_cnt\(2);
\i_serial_uart_a|ALT_INV_rx_bit_cnt\(1) <= NOT \i_serial_uart_a|rx_bit_cnt\(1);
\i_serial_uart_a|ALT_INV_rx_bit_cnt\(0) <= NOT \i_serial_uart_a|rx_bit_cnt\(0);
\i_serial_uart_a|ALT_INV_rx_bit_cnt\(5) <= NOT \i_serial_uart_a|rx_bit_cnt\(5);
\i_serial_uart_a|ALT_INV_rx_bit_cnt\(4) <= NOT \i_serial_uart_a|rx_bit_cnt\(4);
\i_serial_uart_a|ALT_INV_rx_bit_cnt\(6) <= NOT \i_serial_uart_a|rx_bit_cnt\(6);
\i_serial_uart_a|ALT_INV_rx_bit_cnt\(8) <= NOT \i_serial_uart_a|rx_bit_cnt\(8);
\i_serial_uart_a|ALT_INV_rx_bit_cnt\(7) <= NOT \i_serial_uart_a|rx_bit_cnt\(7);
\i_pwm_ctrl_a|ALT_INV_Mult0~23\ <= NOT \i_pwm_ctrl_a|Mult0~23\;
\i_pwm_ctrl_a|ALT_INV_Mult0~22\ <= NOT \i_pwm_ctrl_a|Mult0~22\;
\i_pwm_ctrl_a|ALT_INV_Mult0~17\ <= NOT \i_pwm_ctrl_a|Mult0~17\;
\i_pwm_ctrl_a|ALT_INV_Mult0~16\ <= NOT \i_pwm_ctrl_a|Mult0~16\;
\i_pwm_ctrl_a|ALT_INV_Mult0~14\ <= NOT \i_pwm_ctrl_a|Mult0~14\;
\i_pwm_ctrl_a|ALT_INV_Mult0~12\ <= NOT \i_pwm_ctrl_a|Mult0~12\;
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~5_sumout\;
\i_pwm_ctrl_a|ALT_INV_Add1~13_sumout\ <= NOT \i_pwm_ctrl_a|Add1~13_sumout\;
\i_pwm_ctrl_a|ALT_INV_Add1~9_sumout\ <= NOT \i_pwm_ctrl_a|Add1~9_sumout\;
\i_pwm_ctrl_a|ALT_INV_Add1~5_sumout\ <= NOT \i_pwm_ctrl_a|Add1~5_sumout\;
\i_pwm_ctrl_a|ALT_INV_Add1~1_sumout\ <= NOT \i_pwm_ctrl_a|Add1~1_sumout\;
\i_serial_ctrl_a|ALT_INV_serial_on~q\ <= NOT \i_serial_ctrl_a|serial_on~q\;
\i_serial_ctrl_a|ALT_INV_serial_down~q\ <= NOT \i_serial_ctrl_a|serial_down~q\;
\i_serial_ctrl_a|ALT_INV_serial_up~q\ <= NOT \i_serial_ctrl_a|serial_up~q\;
\i_serial_ctrl_a|ALT_INV_serial_off~q\ <= NOT \i_serial_ctrl_a|serial_off~q\;
\i_serial_uart_a|ALT_INV_tx_state.s_stop_bit~q\ <= NOT \i_serial_uart_a|tx_state.s_stop_bit~q\;
\i_serial_uart_a|ALT_INV_tx_state.s_tx_data~q\ <= NOT \i_serial_uart_a|tx_state.s_tx_data~q\;
\i_serial_uart_a|ALT_INV_rx_state.s_stop_bit~q\ <= NOT \i_serial_uart_a|rx_state.s_stop_bit~q\;
\i_pwm_ctrl_a|ALT_INV_s_clk_cn\(10) <= NOT \i_pwm_ctrl_a|s_clk_cn\(10);
\i_pwm_ctrl_a|ALT_INV_s_clk_cn\(11) <= NOT \i_pwm_ctrl_a|s_clk_cn\(11);
\i_pwm_ctrl_a|ALT_INV_s_clk_cn\(2) <= NOT \i_pwm_ctrl_a|s_clk_cn\(2);
\i_pwm_ctrl_a|ALT_INV_s_clk_cn\(1) <= NOT \i_pwm_ctrl_a|s_clk_cn\(1);
\i_pwm_ctrl_a|ALT_INV_s_clk_cn\(0) <= NOT \i_pwm_ctrl_a|s_clk_cn\(0);
\i_pwm_ctrl_a|ALT_INV_s_clk_cn\(3) <= NOT \i_pwm_ctrl_a|s_clk_cn\(3);
\i_pwm_ctrl_a|ALT_INV_s_clk_cn\(4) <= NOT \i_pwm_ctrl_a|s_clk_cn\(4);
\i_pwm_ctrl_a|ALT_INV_s_clk_cn\(5) <= NOT \i_pwm_ctrl_a|s_clk_cn\(5);
\i_pwm_ctrl_a|ALT_INV_s_clk_cn\(6) <= NOT \i_pwm_ctrl_a|s_clk_cn\(6);
\i_pwm_ctrl_a|ALT_INV_s_clk_cn\(7) <= NOT \i_pwm_ctrl_a|s_clk_cn\(7);
\i_pwm_ctrl_a|ALT_INV_s_clk_cn\(9) <= NOT \i_pwm_ctrl_a|s_clk_cn\(9);
\i_pwm_ctrl_a|ALT_INV_s_clk_cn\(8) <= NOT \i_pwm_ctrl_a|s_clk_cn\(8);
\i_pwm_ctrl_a|ALT_INV_s_clk_cn\(12) <= NOT \i_pwm_ctrl_a|s_clk_cn\(12);
\i_pwm_ctrl_a|ALT_INV_s_clk_cn\(13) <= NOT \i_pwm_ctrl_a|s_clk_cn\(13);
\i_pwm_ctrl_a|ALT_INV_s_clk_cn\(15) <= NOT \i_pwm_ctrl_a|s_clk_cn\(15);
\i_pwm_ctrl_a|ALT_INV_s_clk_cn\(14) <= NOT \i_pwm_ctrl_a|s_clk_cn\(14);
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\;
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\;
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\;
\i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\;
\i_serial_uart_a|ALT_INV_received_error~_Duplicate_1_q\ <= NOT \i_serial_uart_a|received_error~_Duplicate_1_q\;

-- Location: IOOBUF_X89_Y8_N39
\hex0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_dc_disp_a|hex0\(0),
	devoe => ww_devoe,
	o => ww_hex0(0));

-- Location: IOOBUF_X89_Y11_N79
\hex0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_dc_disp_a|hex0\(1),
	devoe => ww_devoe,
	o => ww_hex0(1));

-- Location: IOOBUF_X89_Y11_N96
\hex0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_dc_disp_a|hex0\(2),
	devoe => ww_devoe,
	o => ww_hex0(2));

-- Location: IOOBUF_X89_Y4_N79
\hex0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_dc_disp_a|hex0\(3),
	devoe => ww_devoe,
	o => ww_hex0(3));

-- Location: IOOBUF_X89_Y13_N56
\hex0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_dc_disp_a|hex0\(4),
	devoe => ww_devoe,
	o => ww_hex0(4));

-- Location: IOOBUF_X89_Y13_N39
\hex0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_dc_disp_a|hex0\(5),
	devoe => ww_devoe,
	o => ww_hex0(5));

-- Location: IOOBUF_X89_Y4_N96
\hex0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_dc_disp_a|hex0\(6),
	devoe => ww_devoe,
	o => ww_hex0(6));

-- Location: IOOBUF_X89_Y6_N39
\hex1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_dc_disp_a|hex1\(0),
	devoe => ww_devoe,
	o => ww_hex1(0));

-- Location: IOOBUF_X89_Y6_N56
\hex1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_dc_disp_a|hex1\(1),
	devoe => ww_devoe,
	o => ww_hex1(1));

-- Location: IOOBUF_X89_Y16_N39
\hex1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_dc_disp_a|hex1\(2),
	devoe => ww_devoe,
	o => ww_hex1(2));

-- Location: IOOBUF_X89_Y16_N56
\hex1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_dc_disp_a|hex1\(3),
	devoe => ww_devoe,
	o => ww_hex1(3));

-- Location: IOOBUF_X89_Y15_N39
\hex1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_dc_disp_a|hex1\(4),
	devoe => ww_devoe,
	o => ww_hex1(4));

-- Location: IOOBUF_X89_Y15_N56
\hex1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_dc_disp_a|hex1\(5),
	devoe => ww_devoe,
	o => ww_hex1(5));

-- Location: IOOBUF_X89_Y8_N56
\hex1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_dc_disp_a|hex1\(6),
	devoe => ww_devoe,
	o => ww_hex1(6));

-- Location: IOOBUF_X89_Y9_N22
\hex2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_dc_disp_a|hex2\(0),
	devoe => ww_devoe,
	o => ww_hex2(0));

-- Location: IOOBUF_X89_Y23_N39
\hex2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_hex2(1));

-- Location: IOOBUF_X89_Y23_N56
\hex2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_hex2(2));

-- Location: IOOBUF_X89_Y20_N79
\hex2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_dc_disp_a|hex2\(3),
	devoe => ww_devoe,
	o => ww_hex2(3));

-- Location: IOOBUF_X89_Y25_N39
\hex2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_dc_disp_a|hex2\(4),
	devoe => ww_devoe,
	o => ww_hex2(4));

-- Location: IOOBUF_X89_Y20_N96
\hex2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_dc_disp_a|hex2\(5),
	devoe => ww_devoe,
	o => ww_hex2(5));

-- Location: IOOBUF_X89_Y25_N56
\hex2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex2(6));

-- Location: IOOBUF_X52_Y0_N2
\ledr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_pwm_ctrl_a|ledr~q\,
	devoe => ww_devoe,
	o => ww_ledr(0));

-- Location: IOOBUF_X52_Y0_N19
\ledr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_serial_uart_a|received_error~q\,
	devoe => ww_devoe,
	o => ww_ledr(1));

-- Location: IOOBUF_X60_Y0_N2
\ledr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(2));

-- Location: IOOBUF_X80_Y0_N2
\ledr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(3));

-- Location: IOOBUF_X60_Y0_N19
\ledr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(4));

-- Location: IOOBUF_X80_Y0_N19
\ledr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(5));

-- Location: IOOBUF_X84_Y0_N2
\ledr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(6));

-- Location: IOOBUF_X89_Y6_N5
\ledr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(7));

-- Location: IOOBUF_X89_Y8_N5
\ledr[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(8));

-- Location: IOOBUF_X89_Y6_N22
\ledr[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(9));

-- Location: IOOBUF_X68_Y0_N2
\tx~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_serial_uart_a|tx~q\,
	devoe => ww_devoe,
	o => ww_tx);

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLLREFCLKSELECT_X0_Y21_N0
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_0",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: CLKCTRL_G4
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

-- Location: LABCELL_X10_Y29_N0
\create_pll:i_start_reset_a|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_start_reset_a|Add0~9_sumout\ = SUM(( \create_pll:i_start_reset_a|reset_cnt\(1) ) + ( \create_pll:i_start_reset_a|reset_cnt\(0) ) + ( !VCC ))
-- \create_pll:i_start_reset_a|Add0~10\ = CARRY(( \create_pll:i_start_reset_a|reset_cnt\(1) ) + ( \create_pll:i_start_reset_a|reset_cnt\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \create_pll:i_start_reset_a|ALT_INV_reset_cnt\(0),
	datad => \create_pll:i_start_reset_a|ALT_INV_reset_cnt\(1),
	cin => GND,
	sumout => \create_pll:i_start_reset_a|Add0~9_sumout\,
	cout => \create_pll:i_start_reset_a|Add0~10\);

-- Location: LABCELL_X10_Y29_N3
\create_pll:i_start_reset_a|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_start_reset_a|Add0~13_sumout\ = SUM(( \create_pll:i_start_reset_a|reset_cnt\(2) ) + ( GND ) + ( \create_pll:i_start_reset_a|Add0~10\ ))
-- \create_pll:i_start_reset_a|Add0~14\ = CARRY(( \create_pll:i_start_reset_a|reset_cnt\(2) ) + ( GND ) + ( \create_pll:i_start_reset_a|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \create_pll:i_start_reset_a|ALT_INV_reset_cnt\(2),
	cin => \create_pll:i_start_reset_a|Add0~10\,
	sumout => \create_pll:i_start_reset_a|Add0~13_sumout\,
	cout => \create_pll:i_start_reset_a|Add0~14\);

-- Location: FF_X10_Y29_N5
\create_pll:i_start_reset_a|reset_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \create_pll:i_start_reset_a|Add0~13_sumout\,
	ena => \create_pll:i_start_reset_a|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \create_pll:i_start_reset_a|reset_cnt\(2));

-- Location: LABCELL_X10_Y29_N6
\create_pll:i_start_reset_a|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_start_reset_a|Add0~17_sumout\ = SUM(( \create_pll:i_start_reset_a|reset_cnt\(3) ) + ( GND ) + ( \create_pll:i_start_reset_a|Add0~14\ ))
-- \create_pll:i_start_reset_a|Add0~18\ = CARRY(( \create_pll:i_start_reset_a|reset_cnt\(3) ) + ( GND ) + ( \create_pll:i_start_reset_a|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \create_pll:i_start_reset_a|ALT_INV_reset_cnt\(3),
	cin => \create_pll:i_start_reset_a|Add0~14\,
	sumout => \create_pll:i_start_reset_a|Add0~17_sumout\,
	cout => \create_pll:i_start_reset_a|Add0~18\);

-- Location: FF_X10_Y29_N8
\create_pll:i_start_reset_a|reset_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \create_pll:i_start_reset_a|Add0~17_sumout\,
	ena => \create_pll:i_start_reset_a|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \create_pll:i_start_reset_a|reset_cnt\(3));

-- Location: LABCELL_X10_Y29_N9
\create_pll:i_start_reset_a|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_start_reset_a|Add0~1_sumout\ = SUM(( \create_pll:i_start_reset_a|reset_cnt\(4) ) + ( GND ) + ( \create_pll:i_start_reset_a|Add0~18\ ))
-- \create_pll:i_start_reset_a|Add0~2\ = CARRY(( \create_pll:i_start_reset_a|reset_cnt\(4) ) + ( GND ) + ( \create_pll:i_start_reset_a|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \create_pll:i_start_reset_a|ALT_INV_reset_cnt\(4),
	cin => \create_pll:i_start_reset_a|Add0~18\,
	sumout => \create_pll:i_start_reset_a|Add0~1_sumout\,
	cout => \create_pll:i_start_reset_a|Add0~2\);

-- Location: FF_X10_Y29_N10
\create_pll:i_start_reset_a|reset_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \create_pll:i_start_reset_a|Add0~1_sumout\,
	ena => \create_pll:i_start_reset_a|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \create_pll:i_start_reset_a|reset_cnt\(4));

-- Location: LABCELL_X10_Y29_N12
\create_pll:i_start_reset_a|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_start_reset_a|Add0~5_sumout\ = SUM(( \create_pll:i_start_reset_a|reset_cnt\(5) ) + ( GND ) + ( \create_pll:i_start_reset_a|Add0~2\ ))
-- \create_pll:i_start_reset_a|Add0~6\ = CARRY(( \create_pll:i_start_reset_a|reset_cnt\(5) ) + ( GND ) + ( \create_pll:i_start_reset_a|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \create_pll:i_start_reset_a|ALT_INV_reset_cnt\(5),
	cin => \create_pll:i_start_reset_a|Add0~2\,
	sumout => \create_pll:i_start_reset_a|Add0~5_sumout\,
	cout => \create_pll:i_start_reset_a|Add0~6\);

-- Location: FF_X10_Y29_N14
\create_pll:i_start_reset_a|reset_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \create_pll:i_start_reset_a|Add0~5_sumout\,
	ena => \create_pll:i_start_reset_a|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \create_pll:i_start_reset_a|reset_cnt\(5));

-- Location: LABCELL_X10_Y29_N15
\create_pll:i_start_reset_a|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_start_reset_a|Add0~21_sumout\ = SUM(( \create_pll:i_start_reset_a|reset_cnt\(6) ) + ( GND ) + ( \create_pll:i_start_reset_a|Add0~6\ ))
-- \create_pll:i_start_reset_a|Add0~22\ = CARRY(( \create_pll:i_start_reset_a|reset_cnt\(6) ) + ( GND ) + ( \create_pll:i_start_reset_a|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \create_pll:i_start_reset_a|ALT_INV_reset_cnt\(6),
	cin => \create_pll:i_start_reset_a|Add0~6\,
	sumout => \create_pll:i_start_reset_a|Add0~21_sumout\,
	cout => \create_pll:i_start_reset_a|Add0~22\);

-- Location: FF_X10_Y29_N16
\create_pll:i_start_reset_a|reset_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \create_pll:i_start_reset_a|Add0~21_sumout\,
	ena => \create_pll:i_start_reset_a|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \create_pll:i_start_reset_a|reset_cnt\(6));

-- Location: LABCELL_X10_Y29_N18
\create_pll:i_start_reset_a|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_start_reset_a|Add0~25_sumout\ = SUM(( \create_pll:i_start_reset_a|reset_cnt\(7) ) + ( GND ) + ( \create_pll:i_start_reset_a|Add0~22\ ))
-- \create_pll:i_start_reset_a|Add0~26\ = CARRY(( \create_pll:i_start_reset_a|reset_cnt\(7) ) + ( GND ) + ( \create_pll:i_start_reset_a|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \create_pll:i_start_reset_a|ALT_INV_reset_cnt\(7),
	cin => \create_pll:i_start_reset_a|Add0~22\,
	sumout => \create_pll:i_start_reset_a|Add0~25_sumout\,
	cout => \create_pll:i_start_reset_a|Add0~26\);

-- Location: FF_X10_Y29_N20
\create_pll:i_start_reset_a|reset_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \create_pll:i_start_reset_a|Add0~25_sumout\,
	ena => \create_pll:i_start_reset_a|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \create_pll:i_start_reset_a|reset_cnt\(7));

-- Location: LABCELL_X10_Y29_N21
\create_pll:i_start_reset_a|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_start_reset_a|Add0~29_sumout\ = SUM(( \create_pll:i_start_reset_a|reset_cnt\(8) ) + ( GND ) + ( \create_pll:i_start_reset_a|Add0~26\ ))
-- \create_pll:i_start_reset_a|Add0~30\ = CARRY(( \create_pll:i_start_reset_a|reset_cnt\(8) ) + ( GND ) + ( \create_pll:i_start_reset_a|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \create_pll:i_start_reset_a|ALT_INV_reset_cnt\(8),
	cin => \create_pll:i_start_reset_a|Add0~26\,
	sumout => \create_pll:i_start_reset_a|Add0~29_sumout\,
	cout => \create_pll:i_start_reset_a|Add0~30\);

-- Location: FF_X10_Y29_N23
\create_pll:i_start_reset_a|reset_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \create_pll:i_start_reset_a|Add0~29_sumout\,
	ena => \create_pll:i_start_reset_a|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \create_pll:i_start_reset_a|reset_cnt\(8));

-- Location: LABCELL_X10_Y29_N24
\create_pll:i_start_reset_a|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_start_reset_a|Add0~33_sumout\ = SUM(( \create_pll:i_start_reset_a|reset_cnt\(9) ) + ( GND ) + ( \create_pll:i_start_reset_a|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \create_pll:i_start_reset_a|ALT_INV_reset_cnt\(9),
	cin => \create_pll:i_start_reset_a|Add0~30\,
	sumout => \create_pll:i_start_reset_a|Add0~33_sumout\);

-- Location: FF_X10_Y29_N25
\create_pll:i_start_reset_a|reset_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \create_pll:i_start_reset_a|Add0~33_sumout\,
	ena => \create_pll:i_start_reset_a|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \create_pll:i_start_reset_a|reset_cnt\(9));

-- Location: LABCELL_X10_Y29_N30
\create_pll:i_start_reset_a|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_start_reset_a|LessThan0~1_combout\ = ( \create_pll:i_start_reset_a|reset_cnt\(6) & ( (\create_pll:i_start_reset_a|reset_cnt\(9) & (\create_pll:i_start_reset_a|reset_cnt\(7) & \create_pll:i_start_reset_a|reset_cnt\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \create_pll:i_start_reset_a|ALT_INV_reset_cnt\(9),
	datac => \create_pll:i_start_reset_a|ALT_INV_reset_cnt\(7),
	datad => \create_pll:i_start_reset_a|ALT_INV_reset_cnt\(8),
	dataf => \create_pll:i_start_reset_a|ALT_INV_reset_cnt\(6),
	combout => \create_pll:i_start_reset_a|LessThan0~1_combout\);

-- Location: LABCELL_X10_Y29_N51
\create_pll:i_start_reset_a|reset_cnt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_start_reset_a|reset_cnt[0]~0_combout\ = ( \create_pll:i_start_reset_a|reset_cnt\(4) & ( !\create_pll:i_start_reset_a|reset_cnt\(0) $ (((\create_pll:i_start_reset_a|LessThan0~0_combout\ & (\create_pll:i_start_reset_a|reset_cnt\(5) & 
-- \create_pll:i_start_reset_a|LessThan0~1_combout\)))) ) ) # ( !\create_pll:i_start_reset_a|reset_cnt\(4) & ( !\create_pll:i_start_reset_a|reset_cnt\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111110000000011111111000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \create_pll:i_start_reset_a|ALT_INV_LessThan0~0_combout\,
	datab => \create_pll:i_start_reset_a|ALT_INV_reset_cnt\(5),
	datac => \create_pll:i_start_reset_a|ALT_INV_LessThan0~1_combout\,
	datad => \create_pll:i_start_reset_a|ALT_INV_reset_cnt\(0),
	dataf => \create_pll:i_start_reset_a|ALT_INV_reset_cnt\(4),
	combout => \create_pll:i_start_reset_a|reset_cnt[0]~0_combout\);

-- Location: FF_X10_Y29_N52
\create_pll:i_start_reset_a|reset_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \create_pll:i_start_reset_a|reset_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \create_pll:i_start_reset_a|reset_cnt\(0));

-- Location: FF_X10_Y29_N2
\create_pll:i_start_reset_a|reset_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \create_pll:i_start_reset_a|Add0~9_sumout\,
	ena => \create_pll:i_start_reset_a|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \create_pll:i_start_reset_a|reset_cnt\(1));

-- Location: LABCELL_X10_Y29_N33
\create_pll:i_start_reset_a|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_start_reset_a|LessThan0~0_combout\ = ( \create_pll:i_start_reset_a|reset_cnt\(0) & ( (\create_pll:i_start_reset_a|reset_cnt\(1) & (\create_pll:i_start_reset_a|reset_cnt\(3) & \create_pll:i_start_reset_a|reset_cnt\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \create_pll:i_start_reset_a|ALT_INV_reset_cnt\(1),
	datac => \create_pll:i_start_reset_a|ALT_INV_reset_cnt\(3),
	datad => \create_pll:i_start_reset_a|ALT_INV_reset_cnt\(2),
	dataf => \create_pll:i_start_reset_a|ALT_INV_reset_cnt\(0),
	combout => \create_pll:i_start_reset_a|LessThan0~0_combout\);

-- Location: LABCELL_X10_Y29_N48
\create_pll:i_start_reset_a|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_start_reset_a|LessThan0~2_combout\ = ( \create_pll:i_start_reset_a|LessThan0~1_combout\ & ( (!\create_pll:i_start_reset_a|LessThan0~0_combout\) # ((!\create_pll:i_start_reset_a|reset_cnt\(5)) # (!\create_pll:i_start_reset_a|reset_cnt\(4))) ) 
-- ) # ( !\create_pll:i_start_reset_a|LessThan0~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \create_pll:i_start_reset_a|ALT_INV_LessThan0~0_combout\,
	datab => \create_pll:i_start_reset_a|ALT_INV_reset_cnt\(5),
	datac => \create_pll:i_start_reset_a|ALT_INV_reset_cnt\(4),
	dataf => \create_pll:i_start_reset_a|ALT_INV_LessThan0~1_combout\,
	combout => \create_pll:i_start_reset_a|LessThan0~2_combout\);

-- Location: LABCELL_X10_Y29_N42
\create_pll:i_start_reset_a|startup_reset_out~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_start_reset_a|startup_reset_out~feeder_combout\ = ( \create_pll:i_start_reset_a|LessThan0~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \create_pll:i_start_reset_a|ALT_INV_LessThan0~2_combout\,
	combout => \create_pll:i_start_reset_a|startup_reset_out~feeder_combout\);

-- Location: FF_X10_Y29_N43
\create_pll:i_start_reset_a|startup_reset_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \create_pll:i_start_reset_a|startup_reset_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \create_pll:i_start_reset_a|startup_reset_out~q\);

-- Location: FRACTIONALPLL_X0_Y15_N0
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "none",
	nreset_invert => "true",
	output_clock_frequency => "300.0 mhz",
	pll_atb => 0,
	pll_bwctrl => 4000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 10,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "disable",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "m_cnt",
	pll_fractional_carry_out => 32,
	pll_fractional_division => 1,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "0 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 6,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 6,
	pll_m_cnt_odd_div_duty_en => "false",
	pll_m_cnt_ph_mux_prst => 0,
	pll_m_cnt_prst => 1,
	pll_n_cnt_bypass_en => "false",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 1,
	pll_n_cnt_lo_div => 1,
	pll_n_cnt_odd_div_duty_en => "false",
	pll_ref_buf_dly => "0 ps",
	pll_reg_boost => 0,
	pll_regulator_bypass => "false",
	pll_ripplecap_ctrl => 0,
	pll_slf_rst => "false",
	pll_tclk_mux_en => "false",
	pll_tclk_sel => "n_src",
	pll_test_enable => "false",
	pll_testdn_enable => "false",
	pll_testup_enable => "false",
	pll_unlock_fltr_cfg => 2,
	pll_vco_div => 2,
	pll_vco_ph0_en => "true",
	pll_vco_ph1_en => "true",
	pll_vco_ph2_en => "true",
	pll_vco_ph3_en => "true",
	pll_vco_ph4_en => "true",
	pll_vco_ph5_en => "true",
	pll_vco_ph6_en => "true",
	pll_vco_ph7_en => "true",
	pll_vctrl_test_voltage => 750,
	reference_clock_frequency => "50.0 mhz",
	vccd0g_atb => "disable",
	vccd0g_output => 0,
	vccd1g_atb => "disable",
	vccd1g_output => 0,
	vccm1g_tap => 2,
	vccr_pd => "false",
	vcodiv_override => "false",
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	coreclkfb => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|fboutclk_wire\(0),
	ecnc1test => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => \create_pll:i_start_reset_a|startup_reset_out~q\,
	refclkin => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	cntnen => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|fboutclk_wire\(0),
	lock => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|locked_wire\(0),
	tclk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X0_Y19_N0
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\,
	shift => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	shiften => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X0_Y20_N1
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 3,
	dprio0_cnt_lo_div => 3,
	dprio0_cnt_odd_div_even_duty_en => "false",
	duty_cycle => 50,
	output_clock_frequency => "50.0 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 0,
  output_counter_index => 6)
-- pragma translate_on
PORT MAP (
	nen0 => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\,
	tclk0 => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire\(1));

-- Location: CLKCTRL_G0
\create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire\(1),
	outclk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\);

-- Location: IOIBUF_X40_Y0_N18
\key_n[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_n(3),
	o => \key_n[3]~input_o\);

-- Location: LABCELL_X77_Y5_N21
\i_key_ctrl_a|key_n_1r[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|key_n_1r[3]~1_combout\ = !\key_n[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key_n[3]~input_o\,
	combout => \i_key_ctrl_a|key_n_1r[3]~1_combout\);

-- Location: MLABCELL_X82_Y10_N45
\create_pll:i_reset_ctrl_a|reset_cnt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_reset_ctrl_a|reset_cnt[0]~0_combout\ = !\create_pll:i_reset_ctrl_a|reset_cnt\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \create_pll:i_reset_ctrl_a|ALT_INV_reset_cnt\(0),
	combout => \create_pll:i_reset_ctrl_a|reset_cnt[0]~0_combout\);

-- Location: FF_X82_Y10_N47
\create_pll:i_reset_ctrl_a|reset_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \create_pll:i_reset_ctrl_a|reset_cnt[0]~0_combout\,
	clrn => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|locked_wire\(0),
	ena => \create_pll:i_reset_ctrl_a|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \create_pll:i_reset_ctrl_a|reset_cnt\(0));

-- Location: MLABCELL_X82_Y10_N0
\create_pll:i_reset_ctrl_a|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_reset_ctrl_a|Add0~25_sumout\ = SUM(( \create_pll:i_reset_ctrl_a|reset_cnt\(1) ) + ( \create_pll:i_reset_ctrl_a|reset_cnt\(0) ) + ( !VCC ))
-- \create_pll:i_reset_ctrl_a|Add0~26\ = CARRY(( \create_pll:i_reset_ctrl_a|reset_cnt\(1) ) + ( \create_pll:i_reset_ctrl_a|reset_cnt\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \create_pll:i_reset_ctrl_a|ALT_INV_reset_cnt\(0),
	datad => \create_pll:i_reset_ctrl_a|ALT_INV_reset_cnt\(1),
	cin => GND,
	sumout => \create_pll:i_reset_ctrl_a|Add0~25_sumout\,
	cout => \create_pll:i_reset_ctrl_a|Add0~26\);

-- Location: FF_X82_Y10_N2
\create_pll:i_reset_ctrl_a|reset_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \create_pll:i_reset_ctrl_a|Add0~25_sumout\,
	clrn => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|locked_wire\(0),
	ena => \create_pll:i_reset_ctrl_a|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \create_pll:i_reset_ctrl_a|reset_cnt\(1));

-- Location: MLABCELL_X82_Y10_N3
\create_pll:i_reset_ctrl_a|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_reset_ctrl_a|Add0~21_sumout\ = SUM(( \create_pll:i_reset_ctrl_a|reset_cnt\(2) ) + ( GND ) + ( \create_pll:i_reset_ctrl_a|Add0~26\ ))
-- \create_pll:i_reset_ctrl_a|Add0~22\ = CARRY(( \create_pll:i_reset_ctrl_a|reset_cnt\(2) ) + ( GND ) + ( \create_pll:i_reset_ctrl_a|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \create_pll:i_reset_ctrl_a|ALT_INV_reset_cnt\(2),
	cin => \create_pll:i_reset_ctrl_a|Add0~26\,
	sumout => \create_pll:i_reset_ctrl_a|Add0~21_sumout\,
	cout => \create_pll:i_reset_ctrl_a|Add0~22\);

-- Location: FF_X82_Y10_N5
\create_pll:i_reset_ctrl_a|reset_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \create_pll:i_reset_ctrl_a|Add0~21_sumout\,
	clrn => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|locked_wire\(0),
	ena => \create_pll:i_reset_ctrl_a|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \create_pll:i_reset_ctrl_a|reset_cnt\(2));

-- Location: MLABCELL_X82_Y10_N6
\create_pll:i_reset_ctrl_a|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_reset_ctrl_a|Add0~17_sumout\ = SUM(( \create_pll:i_reset_ctrl_a|reset_cnt\(3) ) + ( GND ) + ( \create_pll:i_reset_ctrl_a|Add0~22\ ))
-- \create_pll:i_reset_ctrl_a|Add0~18\ = CARRY(( \create_pll:i_reset_ctrl_a|reset_cnt\(3) ) + ( GND ) + ( \create_pll:i_reset_ctrl_a|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \create_pll:i_reset_ctrl_a|ALT_INV_reset_cnt\(3),
	cin => \create_pll:i_reset_ctrl_a|Add0~22\,
	sumout => \create_pll:i_reset_ctrl_a|Add0~17_sumout\,
	cout => \create_pll:i_reset_ctrl_a|Add0~18\);

-- Location: FF_X82_Y10_N7
\create_pll:i_reset_ctrl_a|reset_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \create_pll:i_reset_ctrl_a|Add0~17_sumout\,
	clrn => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|locked_wire\(0),
	ena => \create_pll:i_reset_ctrl_a|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \create_pll:i_reset_ctrl_a|reset_cnt\(3));

-- Location: MLABCELL_X82_Y10_N9
\create_pll:i_reset_ctrl_a|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_reset_ctrl_a|Add0~13_sumout\ = SUM(( \create_pll:i_reset_ctrl_a|reset_cnt\(4) ) + ( GND ) + ( \create_pll:i_reset_ctrl_a|Add0~18\ ))
-- \create_pll:i_reset_ctrl_a|Add0~14\ = CARRY(( \create_pll:i_reset_ctrl_a|reset_cnt\(4) ) + ( GND ) + ( \create_pll:i_reset_ctrl_a|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \create_pll:i_reset_ctrl_a|ALT_INV_reset_cnt\(4),
	cin => \create_pll:i_reset_ctrl_a|Add0~18\,
	sumout => \create_pll:i_reset_ctrl_a|Add0~13_sumout\,
	cout => \create_pll:i_reset_ctrl_a|Add0~14\);

-- Location: FF_X82_Y10_N10
\create_pll:i_reset_ctrl_a|reset_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \create_pll:i_reset_ctrl_a|Add0~13_sumout\,
	clrn => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|locked_wire\(0),
	ena => \create_pll:i_reset_ctrl_a|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \create_pll:i_reset_ctrl_a|reset_cnt\(4));

-- Location: MLABCELL_X82_Y10_N12
\create_pll:i_reset_ctrl_a|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_reset_ctrl_a|Add0~9_sumout\ = SUM(( \create_pll:i_reset_ctrl_a|reset_cnt\(5) ) + ( GND ) + ( \create_pll:i_reset_ctrl_a|Add0~14\ ))
-- \create_pll:i_reset_ctrl_a|Add0~10\ = CARRY(( \create_pll:i_reset_ctrl_a|reset_cnt\(5) ) + ( GND ) + ( \create_pll:i_reset_ctrl_a|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \create_pll:i_reset_ctrl_a|ALT_INV_reset_cnt\(5),
	cin => \create_pll:i_reset_ctrl_a|Add0~14\,
	sumout => \create_pll:i_reset_ctrl_a|Add0~9_sumout\,
	cout => \create_pll:i_reset_ctrl_a|Add0~10\);

-- Location: FF_X82_Y10_N14
\create_pll:i_reset_ctrl_a|reset_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \create_pll:i_reset_ctrl_a|Add0~9_sumout\,
	clrn => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|locked_wire\(0),
	ena => \create_pll:i_reset_ctrl_a|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \create_pll:i_reset_ctrl_a|reset_cnt\(5));

-- Location: MLABCELL_X82_Y10_N15
\create_pll:i_reset_ctrl_a|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_reset_ctrl_a|Add0~5_sumout\ = SUM(( \create_pll:i_reset_ctrl_a|reset_cnt\(6) ) + ( GND ) + ( \create_pll:i_reset_ctrl_a|Add0~10\ ))
-- \create_pll:i_reset_ctrl_a|Add0~6\ = CARRY(( \create_pll:i_reset_ctrl_a|reset_cnt\(6) ) + ( GND ) + ( \create_pll:i_reset_ctrl_a|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \create_pll:i_reset_ctrl_a|ALT_INV_reset_cnt\(6),
	cin => \create_pll:i_reset_ctrl_a|Add0~10\,
	sumout => \create_pll:i_reset_ctrl_a|Add0~5_sumout\,
	cout => \create_pll:i_reset_ctrl_a|Add0~6\);

-- Location: FF_X82_Y10_N16
\create_pll:i_reset_ctrl_a|reset_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \create_pll:i_reset_ctrl_a|Add0~5_sumout\,
	clrn => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|locked_wire\(0),
	ena => \create_pll:i_reset_ctrl_a|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \create_pll:i_reset_ctrl_a|reset_cnt\(6));

-- Location: MLABCELL_X82_Y10_N18
\create_pll:i_reset_ctrl_a|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_reset_ctrl_a|Add0~1_sumout\ = SUM(( \create_pll:i_reset_ctrl_a|reset_cnt\(7) ) + ( GND ) + ( \create_pll:i_reset_ctrl_a|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \create_pll:i_reset_ctrl_a|ALT_INV_reset_cnt\(7),
	cin => \create_pll:i_reset_ctrl_a|Add0~6\,
	sumout => \create_pll:i_reset_ctrl_a|Add0~1_sumout\);

-- Location: FF_X82_Y10_N20
\create_pll:i_reset_ctrl_a|reset_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \create_pll:i_reset_ctrl_a|Add0~1_sumout\,
	clrn => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|locked_wire\(0),
	ena => \create_pll:i_reset_ctrl_a|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \create_pll:i_reset_ctrl_a|reset_cnt\(7));

-- Location: MLABCELL_X82_Y10_N54
\create_pll:i_reset_ctrl_a|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_reset_ctrl_a|LessThan0~0_combout\ = ( \create_pll:i_reset_ctrl_a|reset_cnt\(6) & ( (!\create_pll:i_reset_ctrl_a|reset_cnt\(7)) # ((!\create_pll:i_reset_ctrl_a|reset_cnt\(3) & (!\create_pll:i_reset_ctrl_a|reset_cnt\(5) & 
-- !\create_pll:i_reset_ctrl_a|reset_cnt\(4)))) ) ) # ( !\create_pll:i_reset_ctrl_a|reset_cnt\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111000111100001111100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \create_pll:i_reset_ctrl_a|ALT_INV_reset_cnt\(3),
	datab => \create_pll:i_reset_ctrl_a|ALT_INV_reset_cnt\(5),
	datac => \create_pll:i_reset_ctrl_a|ALT_INV_reset_cnt\(7),
	datad => \create_pll:i_reset_ctrl_a|ALT_INV_reset_cnt\(4),
	dataf => \create_pll:i_reset_ctrl_a|ALT_INV_reset_cnt\(6),
	combout => \create_pll:i_reset_ctrl_a|LessThan0~0_combout\);

-- Location: MLABCELL_X82_Y10_N36
\create_pll:i_reset_ctrl_a|reset_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \create_pll:i_reset_ctrl_a|reset_out~0_combout\ = !\create_pll:i_reset_ctrl_a|LessThan0~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \create_pll:i_reset_ctrl_a|ALT_INV_LessThan0~0_combout\,
	combout => \create_pll:i_reset_ctrl_a|reset_out~0_combout\);

-- Location: FF_X82_Y10_N38
\create_pll:i_reset_ctrl_a|reset_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \create_pll:i_reset_ctrl_a|reset_out~0_combout\,
	clrn => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \create_pll:i_reset_ctrl_a|reset_out~q\);

-- Location: FF_X77_Y5_N23
\i_key_ctrl_a|key_n_1r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|key_n_1r[3]~1_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|key_n_1r\(3));

-- Location: FF_X77_Y5_N17
\i_key_ctrl_a|key_n_2r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \i_key_ctrl_a|key_n_1r\(3),
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|key_n_2r\(3));

-- Location: LABCELL_X74_Y5_N27
\i_key_ctrl_a|prev_key_n_2r[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|prev_key_n_2r[3]~0_combout\ = ( !\i_key_ctrl_a|key_n_2r\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \i_key_ctrl_a|ALT_INV_key_n_2r\(3),
	combout => \i_key_ctrl_a|prev_key_n_2r[3]~0_combout\);

-- Location: FF_X74_Y5_N28
\i_key_ctrl_a|prev_key_n_2r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|prev_key_n_2r[3]~0_combout\,
	ena => \create_pll:i_reset_ctrl_a|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|prev_key_n_2r\(3));

-- Location: IOIBUF_X36_Y0_N18
\key_n[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_n(1),
	o => \key_n[1]~input_o\);

-- Location: LABCELL_X77_Y5_N3
\i_key_ctrl_a|key_n_1r[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|key_n_1r[1]~3_combout\ = !\key_n[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key_n[1]~input_o\,
	combout => \i_key_ctrl_a|key_n_1r[1]~3_combout\);

-- Location: FF_X77_Y5_N5
\i_key_ctrl_a|key_n_1r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|key_n_1r[1]~3_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|key_n_1r\(1));

-- Location: FF_X77_Y5_N26
\i_key_ctrl_a|key_n_2r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \i_key_ctrl_a|key_n_1r\(1),
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|key_n_2r\(1));

-- Location: IOIBUF_X36_Y0_N1
\key_n[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_n(0),
	o => \key_n[0]~input_o\);

-- Location: LABCELL_X77_Y5_N0
\i_key_ctrl_a|key_n_1r[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|key_n_1r[0]~0_combout\ = ( !\key_n[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_key_n[0]~input_o\,
	combout => \i_key_ctrl_a|key_n_1r[0]~0_combout\);

-- Location: FF_X77_Y5_N1
\i_key_ctrl_a|key_n_1r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|key_n_1r[0]~0_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|key_n_1r\(0));

-- Location: FF_X77_Y5_N59
\i_key_ctrl_a|key_n_2r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \i_key_ctrl_a|key_n_1r\(0),
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|key_n_2r\(0));

-- Location: LABCELL_X77_Y5_N42
\i_key_ctrl_a|debounce_key~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|debounce_key~0_combout\ = (\i_key_ctrl_a|key_n_2r\(0)) # (\i_key_ctrl_a|key_n_2r\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_key_n_2r\(1),
	datab => \i_key_ctrl_a|ALT_INV_key_n_2r\(0),
	combout => \i_key_ctrl_a|debounce_key~0_combout\);

-- Location: FF_X77_Y5_N44
\i_key_ctrl_a|debounce_key\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|debounce_key~0_combout\,
	ena => \create_pll:i_reset_ctrl_a|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|debounce_key~q\);

-- Location: MLABCELL_X78_Y6_N0
\i_key_ctrl_a|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add0~73_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[3][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \i_key_ctrl_a|Add0~74\ = CARRY(( \i_key_ctrl_a|s_clk_cn[3][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][0]~q\,
	cin => GND,
	sumout => \i_key_ctrl_a|Add0~73_sumout\,
	cout => \i_key_ctrl_a|Add0~74\);

-- Location: LABCELL_X75_Y6_N57
\i_key_ctrl_a|s_clk_cn[3][10]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\ = ( \i_key_ctrl_a|key_n_2r\(3) & ( \i_key_ctrl_a|LessThan0~3_combout\ ) ) # ( !\i_key_ctrl_a|key_n_2r\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_LessThan0~3_combout\,
	datae => \i_key_ctrl_a|ALT_INV_key_n_2r\(3),
	combout => \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\);

-- Location: IOIBUF_X40_Y0_N1
\key_n[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_n(2),
	o => \key_n[2]~input_o\);

-- Location: LABCELL_X77_Y5_N18
\i_key_ctrl_a|key_n_1r[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|key_n_1r[2]~2_combout\ = ( !\key_n[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_key_n[2]~input_o\,
	combout => \i_key_ctrl_a|key_n_1r[2]~2_combout\);

-- Location: FF_X77_Y5_N20
\i_key_ctrl_a|key_n_1r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|key_n_1r[2]~2_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|key_n_1r\(2));

-- Location: FF_X77_Y5_N14
\i_key_ctrl_a|key_n_2r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \i_key_ctrl_a|key_n_1r\(2),
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|key_n_2r\(2));

-- Location: LABCELL_X77_Y5_N51
\i_key_ctrl_a|s_clk_cn[3][10]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\ = ( \i_key_ctrl_a|LessThan0~3_combout\ ) # ( !\i_key_ctrl_a|LessThan0~3_combout\ & ( (!\i_key_ctrl_a|key_n_2r\(2)) # (!\i_key_ctrl_a|key_n_2r\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_key_n_2r\(2),
	datac => \i_key_ctrl_a|ALT_INV_key_n_2r\(3),
	dataf => \i_key_ctrl_a|ALT_INV_LessThan0~3_combout\,
	combout => \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\);

-- Location: FF_X78_Y6_N2
\i_key_ctrl_a|s_clk_cn[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add0~73_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[3][0]~q\);

-- Location: MLABCELL_X78_Y6_N3
\i_key_ctrl_a|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add0~69_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[3][1]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~74\ ))
-- \i_key_ctrl_a|Add0~70\ = CARRY(( \i_key_ctrl_a|s_clk_cn[3][1]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][1]~q\,
	cin => \i_key_ctrl_a|Add0~74\,
	sumout => \i_key_ctrl_a|Add0~69_sumout\,
	cout => \i_key_ctrl_a|Add0~70\);

-- Location: FF_X78_Y6_N5
\i_key_ctrl_a|s_clk_cn[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add0~69_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[3][1]~q\);

-- Location: MLABCELL_X78_Y6_N6
\i_key_ctrl_a|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add0~65_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[3][2]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~70\ ))
-- \i_key_ctrl_a|Add0~66\ = CARRY(( \i_key_ctrl_a|s_clk_cn[3][2]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][2]~q\,
	cin => \i_key_ctrl_a|Add0~70\,
	sumout => \i_key_ctrl_a|Add0~65_sumout\,
	cout => \i_key_ctrl_a|Add0~66\);

-- Location: FF_X78_Y6_N8
\i_key_ctrl_a|s_clk_cn[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add0~65_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[3][2]~q\);

-- Location: MLABCELL_X78_Y6_N9
\i_key_ctrl_a|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add0~61_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[3][3]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~66\ ))
-- \i_key_ctrl_a|Add0~62\ = CARRY(( \i_key_ctrl_a|s_clk_cn[3][3]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][3]~q\,
	cin => \i_key_ctrl_a|Add0~66\,
	sumout => \i_key_ctrl_a|Add0~61_sumout\,
	cout => \i_key_ctrl_a|Add0~62\);

-- Location: FF_X78_Y6_N10
\i_key_ctrl_a|s_clk_cn[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add0~61_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[3][3]~q\);

-- Location: MLABCELL_X78_Y6_N12
\i_key_ctrl_a|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add0~57_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[3][4]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~62\ ))
-- \i_key_ctrl_a|Add0~58\ = CARRY(( \i_key_ctrl_a|s_clk_cn[3][4]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][4]~q\,
	cin => \i_key_ctrl_a|Add0~62\,
	sumout => \i_key_ctrl_a|Add0~57_sumout\,
	cout => \i_key_ctrl_a|Add0~58\);

-- Location: FF_X78_Y6_N14
\i_key_ctrl_a|s_clk_cn[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add0~57_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[3][4]~q\);

-- Location: MLABCELL_X78_Y6_N15
\i_key_ctrl_a|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add0~17_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[3][5]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~58\ ))
-- \i_key_ctrl_a|Add0~18\ = CARRY(( \i_key_ctrl_a|s_clk_cn[3][5]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][5]~q\,
	cin => \i_key_ctrl_a|Add0~58\,
	sumout => \i_key_ctrl_a|Add0~17_sumout\,
	cout => \i_key_ctrl_a|Add0~18\);

-- Location: FF_X78_Y6_N16
\i_key_ctrl_a|s_clk_cn[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add0~17_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[3][5]~q\);

-- Location: MLABCELL_X78_Y6_N18
\i_key_ctrl_a|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add0~21_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[3][6]~DUPLICATE_q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~18\ ))
-- \i_key_ctrl_a|Add0~22\ = CARRY(( \i_key_ctrl_a|s_clk_cn[3][6]~DUPLICATE_q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][6]~DUPLICATE_q\,
	cin => \i_key_ctrl_a|Add0~18\,
	sumout => \i_key_ctrl_a|Add0~21_sumout\,
	cout => \i_key_ctrl_a|Add0~22\);

-- Location: FF_X78_Y6_N20
\i_key_ctrl_a|s_clk_cn[3][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add0~21_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[3][6]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y6_N21
\i_key_ctrl_a|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add0~13_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[3][7]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~22\ ))
-- \i_key_ctrl_a|Add0~14\ = CARRY(( \i_key_ctrl_a|s_clk_cn[3][7]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][7]~q\,
	cin => \i_key_ctrl_a|Add0~22\,
	sumout => \i_key_ctrl_a|Add0~13_sumout\,
	cout => \i_key_ctrl_a|Add0~14\);

-- Location: FF_X78_Y6_N22
\i_key_ctrl_a|s_clk_cn[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add0~13_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[3][7]~q\);

-- Location: MLABCELL_X78_Y6_N24
\i_key_ctrl_a|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add0~9_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[3][8]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~14\ ))
-- \i_key_ctrl_a|Add0~10\ = CARRY(( \i_key_ctrl_a|s_clk_cn[3][8]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][8]~q\,
	cin => \i_key_ctrl_a|Add0~14\,
	sumout => \i_key_ctrl_a|Add0~9_sumout\,
	cout => \i_key_ctrl_a|Add0~10\);

-- Location: FF_X78_Y6_N25
\i_key_ctrl_a|s_clk_cn[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add0~9_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[3][8]~q\);

-- Location: MLABCELL_X78_Y6_N27
\i_key_ctrl_a|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add0~29_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[3][9]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~10\ ))
-- \i_key_ctrl_a|Add0~30\ = CARRY(( \i_key_ctrl_a|s_clk_cn[3][9]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][9]~q\,
	cin => \i_key_ctrl_a|Add0~10\,
	sumout => \i_key_ctrl_a|Add0~29_sumout\,
	cout => \i_key_ctrl_a|Add0~30\);

-- Location: FF_X78_Y6_N28
\i_key_ctrl_a|s_clk_cn[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add0~29_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[3][9]~q\);

-- Location: MLABCELL_X78_Y6_N30
\i_key_ctrl_a|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add0~25_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[3][10]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~30\ ))
-- \i_key_ctrl_a|Add0~26\ = CARRY(( \i_key_ctrl_a|s_clk_cn[3][10]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][10]~q\,
	cin => \i_key_ctrl_a|Add0~30\,
	sumout => \i_key_ctrl_a|Add0~25_sumout\,
	cout => \i_key_ctrl_a|Add0~26\);

-- Location: FF_X78_Y6_N32
\i_key_ctrl_a|s_clk_cn[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add0~25_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[3][10]~q\);

-- Location: MLABCELL_X78_Y6_N33
\i_key_ctrl_a|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add0~37_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[3][11]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~26\ ))
-- \i_key_ctrl_a|Add0~38\ = CARRY(( \i_key_ctrl_a|s_clk_cn[3][11]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][11]~q\,
	cin => \i_key_ctrl_a|Add0~26\,
	sumout => \i_key_ctrl_a|Add0~37_sumout\,
	cout => \i_key_ctrl_a|Add0~38\);

-- Location: FF_X78_Y6_N35
\i_key_ctrl_a|s_clk_cn[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add0~37_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[3][11]~q\);

-- Location: MLABCELL_X78_Y6_N36
\i_key_ctrl_a|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add0~33_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[3][12]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~38\ ))
-- \i_key_ctrl_a|Add0~34\ = CARRY(( \i_key_ctrl_a|s_clk_cn[3][12]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][12]~q\,
	cin => \i_key_ctrl_a|Add0~38\,
	sumout => \i_key_ctrl_a|Add0~33_sumout\,
	cout => \i_key_ctrl_a|Add0~34\);

-- Location: FF_X78_Y6_N38
\i_key_ctrl_a|s_clk_cn[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add0~33_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[3][12]~q\);

-- Location: MLABCELL_X78_Y6_N39
\i_key_ctrl_a|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add0~5_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[3][13]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~34\ ))
-- \i_key_ctrl_a|Add0~6\ = CARRY(( \i_key_ctrl_a|s_clk_cn[3][13]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][13]~q\,
	cin => \i_key_ctrl_a|Add0~34\,
	sumout => \i_key_ctrl_a|Add0~5_sumout\,
	cout => \i_key_ctrl_a|Add0~6\);

-- Location: FF_X78_Y6_N41
\i_key_ctrl_a|s_clk_cn[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add0~5_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[3][13]~q\);

-- Location: FF_X78_Y6_N19
\i_key_ctrl_a|s_clk_cn[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add0~21_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[3][6]~q\);

-- Location: LABCELL_X79_Y6_N57
\i_key_ctrl_a|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|LessThan0~0_combout\ = ( \i_key_ctrl_a|s_clk_cn[3][8]~q\ & ( ((\i_key_ctrl_a|s_clk_cn[3][7]~q\) # (\i_key_ctrl_a|s_clk_cn[3][5]~q\)) # (\i_key_ctrl_a|s_clk_cn[3][6]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][6]~q\,
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][5]~q\,
	datad => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][7]~q\,
	dataf => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][8]~q\,
	combout => \i_key_ctrl_a|LessThan0~0_combout\);

-- Location: LABCELL_X77_Y6_N15
\i_key_ctrl_a|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|LessThan0~1_combout\ = ( !\i_key_ctrl_a|s_clk_cn[3][12]~q\ & ( !\i_key_ctrl_a|s_clk_cn[3][11]~q\ & ( (!\i_key_ctrl_a|s_clk_cn[3][10]~q\ & !\i_key_ctrl_a|s_clk_cn[3][9]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][10]~q\,
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][9]~q\,
	datae => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][12]~q\,
	dataf => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][11]~q\,
	combout => \i_key_ctrl_a|LessThan0~1_combout\);

-- Location: MLABCELL_X78_Y6_N42
\i_key_ctrl_a|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add0~1_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[3][14]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~6\ ))
-- \i_key_ctrl_a|Add0~2\ = CARRY(( \i_key_ctrl_a|s_clk_cn[3][14]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][14]~q\,
	cin => \i_key_ctrl_a|Add0~6\,
	sumout => \i_key_ctrl_a|Add0~1_sumout\,
	cout => \i_key_ctrl_a|Add0~2\);

-- Location: FF_X78_Y6_N44
\i_key_ctrl_a|s_clk_cn[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add0~1_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[3][14]~q\);

-- Location: MLABCELL_X78_Y6_N45
\i_key_ctrl_a|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add0~53_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[3][15]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~2\ ))
-- \i_key_ctrl_a|Add0~54\ = CARRY(( \i_key_ctrl_a|s_clk_cn[3][15]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][15]~q\,
	cin => \i_key_ctrl_a|Add0~2\,
	sumout => \i_key_ctrl_a|Add0~53_sumout\,
	cout => \i_key_ctrl_a|Add0~54\);

-- Location: FF_X78_Y6_N47
\i_key_ctrl_a|s_clk_cn[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add0~53_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[3][15]~q\);

-- Location: MLABCELL_X78_Y6_N48
\i_key_ctrl_a|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add0~49_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[3][16]~DUPLICATE_q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~54\ ))
-- \i_key_ctrl_a|Add0~50\ = CARRY(( \i_key_ctrl_a|s_clk_cn[3][16]~DUPLICATE_q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][16]~DUPLICATE_q\,
	cin => \i_key_ctrl_a|Add0~54\,
	sumout => \i_key_ctrl_a|Add0~49_sumout\,
	cout => \i_key_ctrl_a|Add0~50\);

-- Location: FF_X78_Y6_N50
\i_key_ctrl_a|s_clk_cn[3][16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add0~49_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[3][16]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y6_N51
\i_key_ctrl_a|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add0~45_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[3][17]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~50\ ))
-- \i_key_ctrl_a|Add0~46\ = CARRY(( \i_key_ctrl_a|s_clk_cn[3][17]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][17]~q\,
	cin => \i_key_ctrl_a|Add0~50\,
	sumout => \i_key_ctrl_a|Add0~45_sumout\,
	cout => \i_key_ctrl_a|Add0~46\);

-- Location: FF_X78_Y6_N52
\i_key_ctrl_a|s_clk_cn[3][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add0~45_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[3][17]~q\);

-- Location: MLABCELL_X78_Y6_N54
\i_key_ctrl_a|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add0~41_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[3][18]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][18]~q\,
	cin => \i_key_ctrl_a|Add0~46\,
	sumout => \i_key_ctrl_a|Add0~41_sumout\);

-- Location: FF_X78_Y6_N55
\i_key_ctrl_a|s_clk_cn[3][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add0~41_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[3][18]~q\);

-- Location: FF_X78_Y6_N49
\i_key_ctrl_a|s_clk_cn[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add0~49_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[3][16]~q\);

-- Location: FF_X78_Y6_N46
\i_key_ctrl_a|s_clk_cn[3][15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add0~53_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[3][10]~1_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[3][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[3][15]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y6_N39
\i_key_ctrl_a|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|LessThan0~2_combout\ = ( \i_key_ctrl_a|s_clk_cn[3][16]~q\ & ( \i_key_ctrl_a|s_clk_cn[3][15]~DUPLICATE_q\ & ( (\i_key_ctrl_a|s_clk_cn[3][18]~q\ & \i_key_ctrl_a|s_clk_cn[3][17]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][18]~q\,
	datad => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][17]~q\,
	datae => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][16]~q\,
	dataf => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][15]~DUPLICATE_q\,
	combout => \i_key_ctrl_a|LessThan0~2_combout\);

-- Location: LABCELL_X77_Y6_N9
\i_key_ctrl_a|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|LessThan0~3_combout\ = ( \i_key_ctrl_a|s_clk_cn[3][14]~q\ & ( \i_key_ctrl_a|LessThan0~2_combout\ ) ) # ( !\i_key_ctrl_a|s_clk_cn[3][14]~q\ & ( \i_key_ctrl_a|LessThan0~2_combout\ & ( (\i_key_ctrl_a|s_clk_cn[3][13]~q\ & 
-- ((!\i_key_ctrl_a|LessThan0~1_combout\) # (\i_key_ctrl_a|LessThan0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010001010100011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][13]~q\,
	datab => \i_key_ctrl_a|ALT_INV_LessThan0~0_combout\,
	datac => \i_key_ctrl_a|ALT_INV_LessThan0~1_combout\,
	datae => \i_key_ctrl_a|ALT_INV_s_clk_cn[3][14]~q\,
	dataf => \i_key_ctrl_a|ALT_INV_LessThan0~2_combout\,
	combout => \i_key_ctrl_a|LessThan0~3_combout\);

-- Location: LABCELL_X77_Y5_N33
\i_key_ctrl_a|prev_key_n_2r[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|prev_key_n_2r[2]~1_combout\ = !\i_key_ctrl_a|key_n_2r\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_key_n_2r\(2),
	combout => \i_key_ctrl_a|prev_key_n_2r[2]~1_combout\);

-- Location: FF_X77_Y5_N35
\i_key_ctrl_a|prev_key_n_2r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|prev_key_n_2r[2]~1_combout\,
	ena => \create_pll:i_reset_ctrl_a|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|prev_key_n_2r\(2));

-- Location: LABCELL_X77_Y5_N12
\i_key_ctrl_a|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|process_0~0_combout\ = (!\i_key_ctrl_a|debounce_key~q\ & (\i_key_ctrl_a|prev_key_n_2r\(2) & \i_key_ctrl_a|key_n_2r\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_debounce_key~q\,
	datac => \i_key_ctrl_a|ALT_INV_prev_key_n_2r\(2),
	datad => \i_key_ctrl_a|ALT_INV_key_n_2r\(2),
	combout => \i_key_ctrl_a|process_0~0_combout\);

-- Location: LABCELL_X77_Y5_N54
\i_key_ctrl_a|s_output~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|s_output~5_combout\ = ( \i_key_ctrl_a|s_output\(3) & ( \i_key_ctrl_a|key_n_2r\(3) & ( (!\i_key_ctrl_a|LessThan0~3_combout\ & (((\i_key_ctrl_a|prev_key_n_2r\(3) & !\i_key_ctrl_a|debounce_key~q\)) # (\i_key_ctrl_a|process_0~0_combout\))) ) ) ) 
-- # ( !\i_key_ctrl_a|s_output\(3) & ( \i_key_ctrl_a|key_n_2r\(3) & ( ((\i_key_ctrl_a|prev_key_n_2r\(3) & (!\i_key_ctrl_a|debounce_key~q\ & !\i_key_ctrl_a|process_0~0_combout\))) # (\i_key_ctrl_a|LessThan0~3_combout\) ) ) ) # ( \i_key_ctrl_a|s_output\(3) & ( 
-- !\i_key_ctrl_a|key_n_2r\(3) & ( \i_key_ctrl_a|process_0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111101001111000011110100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_prev_key_n_2r\(3),
	datab => \i_key_ctrl_a|ALT_INV_debounce_key~q\,
	datac => \i_key_ctrl_a|ALT_INV_LessThan0~3_combout\,
	datad => \i_key_ctrl_a|ALT_INV_process_0~0_combout\,
	datae => \i_key_ctrl_a|ALT_INV_s_output\(3),
	dataf => \i_key_ctrl_a|ALT_INV_key_n_2r\(3),
	combout => \i_key_ctrl_a|s_output~5_combout\);

-- Location: FF_X77_Y5_N55
\i_key_ctrl_a|s_output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|s_output~5_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_output\(3));

-- Location: IOIBUF_X64_Y0_N1
\rx~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

-- Location: MLABCELL_X72_Y8_N51
\i_serial_uart_a|rx_r~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|rx_r~feeder_combout\ = ( \rx~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_rx~input_o\,
	combout => \i_serial_uart_a|rx_r~feeder_combout\);

-- Location: FF_X72_Y8_N53
\i_serial_uart_a|rx_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|rx_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_r~q\);

-- Location: MLABCELL_X72_Y8_N48
\i_serial_uart_a|rx_2r~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|rx_2r~feeder_combout\ = \i_serial_uart_a|rx_r~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart_a|ALT_INV_rx_r~q\,
	combout => \i_serial_uart_a|rx_2r~feeder_combout\);

-- Location: FF_X72_Y8_N49
\i_serial_uart_a|rx_2r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|rx_2r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_2r~q\);

-- Location: LABCELL_X79_Y8_N30
\i_serial_uart_a|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Add2~21_sumout\ = SUM(( \i_serial_uart_a|rx_bit_cnt\(0) ) + ( VCC ) + ( !VCC ))
-- \i_serial_uart_a|Add2~22\ = CARRY(( \i_serial_uart_a|rx_bit_cnt\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(0),
	cin => GND,
	sumout => \i_serial_uart_a|Add2~21_sumout\,
	cout => \i_serial_uart_a|Add2~22\);

-- Location: LABCELL_X79_Y8_N6
\i_serial_uart_a|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|LessThan0~0_combout\ = ( \i_serial_uart_a|rx_bit_cnt\(5) & ( \i_serial_uart_a|rx_bit_cnt\(4) & ( (((\i_serial_uart_a|rx_bit_cnt\(3)) # (\i_serial_uart_a|rx_bit_cnt\(1))) # (\i_serial_uart_a|rx_bit_cnt\(0))) # 
-- (\i_serial_uart_a|rx_bit_cnt\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(2),
	datab => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(0),
	datac => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(1),
	datad => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(3),
	datae => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(5),
	dataf => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(4),
	combout => \i_serial_uart_a|LessThan0~0_combout\);

-- Location: FF_X79_Y8_N49
\i_serial_uart_a|rx_bit_cnt[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Add2~9_sumout\,
	sclr => \i_serial_uart_a|rx_bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_bit_cnt[6]~DUPLICATE_q\);

-- Location: FF_X79_Y8_N55
\i_serial_uart_a|rx_bit_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Add2~5_sumout\,
	sclr => \i_serial_uart_a|rx_bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_bit_cnt\(8));

-- Location: LABCELL_X79_Y8_N51
\i_serial_uart_a|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Add2~1_sumout\ = SUM(( \i_serial_uart_a|rx_bit_cnt\(7) ) + ( GND ) + ( \i_serial_uart_a|Add2~10\ ))
-- \i_serial_uart_a|Add2~2\ = CARRY(( \i_serial_uart_a|rx_bit_cnt\(7) ) + ( GND ) + ( \i_serial_uart_a|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(7),
	cin => \i_serial_uart_a|Add2~10\,
	sumout => \i_serial_uart_a|Add2~1_sumout\,
	cout => \i_serial_uart_a|Add2~2\);

-- Location: LABCELL_X79_Y8_N54
\i_serial_uart_a|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Add2~5_sumout\ = SUM(( \i_serial_uart_a|rx_bit_cnt\(8) ) + ( GND ) + ( \i_serial_uart_a|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(8),
	cin => \i_serial_uart_a|Add2~2\,
	sumout => \i_serial_uart_a|Add2~5_sumout\);

-- Location: FF_X79_Y8_N56
\i_serial_uart_a|rx_bit_cnt[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Add2~5_sumout\,
	sclr => \i_serial_uart_a|rx_bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_bit_cnt[8]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y8_N12
\i_serial_uart_a|rx_bit_cnt_wrap~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|rx_bit_cnt_wrap~0_combout\ = ( \i_serial_uart_a|rx_bit_cnt_en~q\ & ( (\i_serial_uart_a|rx_bit_cnt\(7) & (\i_serial_uart_a|rx_bit_cnt\(8) & ((\i_serial_uart_a|rx_bit_cnt\(6)) # (\i_serial_uart_a|LessThan0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000101010000000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(7),
	datab => \i_serial_uart_a|ALT_INV_LessThan0~0_combout\,
	datac => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(6),
	datad => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(8),
	dataf => \i_serial_uart_a|ALT_INV_rx_bit_cnt_en~q\,
	combout => \i_serial_uart_a|rx_bit_cnt_wrap~0_combout\);

-- Location: FF_X79_Y8_N13
\i_serial_uart_a|rx_bit_cnt_wrap\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|rx_bit_cnt_wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_bit_cnt_wrap~q\);

-- Location: MLABCELL_X84_Y8_N12
\i_serial_uart_a|reset_r~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|reset_r~0_combout\ = !\create_pll:i_reset_ctrl_a|reset_out~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	combout => \i_serial_uart_a|reset_r~0_combout\);

-- Location: FF_X84_Y8_N14
\i_serial_uart_a|reset_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|reset_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|reset_r~q\);

-- Location: MLABCELL_X84_Y8_N48
\i_serial_uart_a|reset_2r~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|reset_2r~feeder_combout\ = \i_serial_uart_a|reset_r~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart_a|ALT_INV_reset_r~q\,
	combout => \i_serial_uart_a|reset_2r~feeder_combout\);

-- Location: FF_X84_Y8_N50
\i_serial_uart_a|reset_2r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|reset_2r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|reset_2r~q\);

-- Location: LABCELL_X80_Y8_N9
\i_serial_uart_a|rx_state~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|rx_state~10_combout\ = ( \i_serial_uart_a|rx_bit_cnt_wrap~q\ & ( (!\i_serial_uart_a|rx_state.s_stop_bit~DUPLICATE_q\ & (!\i_serial_uart_a|reset_2r~q\ & ((\i_serial_uart_a|rx_state.s_idle~q\) # (\i_serial_uart_a|rx_bit_cnt_half~q\)))) ) ) 
-- # ( !\i_serial_uart_a|rx_bit_cnt_wrap~q\ & ( (!\i_serial_uart_a|reset_2r~q\ & ((\i_serial_uart_a|rx_state.s_idle~q\) # (\i_serial_uart_a|rx_bit_cnt_half~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110000010100001111000001000000110000000100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_rx_bit_cnt_half~q\,
	datab => \i_serial_uart_a|ALT_INV_rx_state.s_stop_bit~DUPLICATE_q\,
	datac => \i_serial_uart_a|ALT_INV_reset_2r~q\,
	datad => \i_serial_uart_a|ALT_INV_rx_state.s_idle~q\,
	dataf => \i_serial_uart_a|ALT_INV_rx_bit_cnt_wrap~q\,
	combout => \i_serial_uart_a|rx_state~10_combout\);

-- Location: FF_X80_Y8_N11
\i_serial_uart_a|rx_state.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|rx_state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_state.s_idle~q\);

-- Location: LABCELL_X80_Y8_N6
\i_serial_uart_a|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector0~0_combout\ = ( \i_serial_uart_a|rx_state.s_idle~q\ & ( (!\i_serial_uart_a|rx_state.s_stop_bit~DUPLICATE_q\) # (!\i_serial_uart_a|rx_bit_cnt_wrap~q\) ) ) # ( !\i_serial_uart_a|rx_state.s_idle~q\ & ( 
-- (!\i_serial_uart_a|rx_bit_cnt_half~q\ & (!\i_serial_uart_a|rx_2r~q\ & ((!\i_serial_uart_a|rx_state.s_stop_bit~DUPLICATE_q\) # (!\i_serial_uart_a|rx_bit_cnt_wrap~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000101010000000000011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_rx_bit_cnt_half~q\,
	datab => \i_serial_uart_a|ALT_INV_rx_state.s_stop_bit~DUPLICATE_q\,
	datac => \i_serial_uart_a|ALT_INV_rx_bit_cnt_wrap~q\,
	datad => \i_serial_uart_a|ALT_INV_rx_2r~q\,
	dataf => \i_serial_uart_a|ALT_INV_rx_state.s_idle~q\,
	combout => \i_serial_uart_a|Selector0~0_combout\);

-- Location: FF_X80_Y8_N7
\i_serial_uart_a|rx_bit_cnt_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_bit_cnt_en~q\);

-- Location: LABCELL_X79_Y8_N15
\i_serial_uart_a|rx_bit_cnt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|rx_bit_cnt[0]~0_combout\ = ( \i_serial_uart_a|rx_bit_cnt_en~q\ & ( (\i_serial_uart_a|rx_bit_cnt\(7) & (\i_serial_uart_a|rx_bit_cnt[8]~DUPLICATE_q\ & ((\i_serial_uart_a|rx_bit_cnt[6]~DUPLICATE_q\) # 
-- (\i_serial_uart_a|LessThan0~0_combout\)))) ) ) # ( !\i_serial_uart_a|rx_bit_cnt_en~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000101010000000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(7),
	datab => \i_serial_uart_a|ALT_INV_LessThan0~0_combout\,
	datac => \i_serial_uart_a|ALT_INV_rx_bit_cnt[6]~DUPLICATE_q\,
	datad => \i_serial_uart_a|ALT_INV_rx_bit_cnt[8]~DUPLICATE_q\,
	dataf => \i_serial_uart_a|ALT_INV_rx_bit_cnt_en~q\,
	combout => \i_serial_uart_a|rx_bit_cnt[0]~0_combout\);

-- Location: FF_X79_Y8_N32
\i_serial_uart_a|rx_bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Add2~21_sumout\,
	sclr => \i_serial_uart_a|rx_bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_bit_cnt\(0));

-- Location: LABCELL_X79_Y8_N33
\i_serial_uart_a|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Add2~25_sumout\ = SUM(( \i_serial_uart_a|rx_bit_cnt\(1) ) + ( GND ) + ( \i_serial_uart_a|Add2~22\ ))
-- \i_serial_uart_a|Add2~26\ = CARRY(( \i_serial_uart_a|rx_bit_cnt\(1) ) + ( GND ) + ( \i_serial_uart_a|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(1),
	cin => \i_serial_uart_a|Add2~22\,
	sumout => \i_serial_uart_a|Add2~25_sumout\,
	cout => \i_serial_uart_a|Add2~26\);

-- Location: FF_X79_Y8_N35
\i_serial_uart_a|rx_bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Add2~25_sumout\,
	sclr => \i_serial_uart_a|rx_bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_bit_cnt\(1));

-- Location: LABCELL_X79_Y8_N36
\i_serial_uart_a|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Add2~29_sumout\ = SUM(( \i_serial_uart_a|rx_bit_cnt\(2) ) + ( GND ) + ( \i_serial_uart_a|Add2~26\ ))
-- \i_serial_uart_a|Add2~30\ = CARRY(( \i_serial_uart_a|rx_bit_cnt\(2) ) + ( GND ) + ( \i_serial_uart_a|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(2),
	cin => \i_serial_uart_a|Add2~26\,
	sumout => \i_serial_uart_a|Add2~29_sumout\,
	cout => \i_serial_uart_a|Add2~30\);

-- Location: FF_X79_Y8_N38
\i_serial_uart_a|rx_bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Add2~29_sumout\,
	sclr => \i_serial_uart_a|rx_bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_bit_cnt\(2));

-- Location: LABCELL_X79_Y8_N39
\i_serial_uart_a|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Add2~33_sumout\ = SUM(( \i_serial_uart_a|rx_bit_cnt\(3) ) + ( GND ) + ( \i_serial_uart_a|Add2~30\ ))
-- \i_serial_uart_a|Add2~34\ = CARRY(( \i_serial_uart_a|rx_bit_cnt\(3) ) + ( GND ) + ( \i_serial_uart_a|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(3),
	cin => \i_serial_uart_a|Add2~30\,
	sumout => \i_serial_uart_a|Add2~33_sumout\,
	cout => \i_serial_uart_a|Add2~34\);

-- Location: FF_X79_Y8_N41
\i_serial_uart_a|rx_bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Add2~33_sumout\,
	sclr => \i_serial_uart_a|rx_bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_bit_cnt\(3));

-- Location: LABCELL_X79_Y8_N42
\i_serial_uart_a|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Add2~13_sumout\ = SUM(( \i_serial_uart_a|rx_bit_cnt\(4) ) + ( GND ) + ( \i_serial_uart_a|Add2~34\ ))
-- \i_serial_uart_a|Add2~14\ = CARRY(( \i_serial_uart_a|rx_bit_cnt\(4) ) + ( GND ) + ( \i_serial_uart_a|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(4),
	cin => \i_serial_uart_a|Add2~34\,
	sumout => \i_serial_uart_a|Add2~13_sumout\,
	cout => \i_serial_uart_a|Add2~14\);

-- Location: FF_X79_Y8_N44
\i_serial_uart_a|rx_bit_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Add2~13_sumout\,
	sclr => \i_serial_uart_a|rx_bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_bit_cnt\(4));

-- Location: LABCELL_X79_Y8_N45
\i_serial_uart_a|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Add2~17_sumout\ = SUM(( \i_serial_uart_a|rx_bit_cnt\(5) ) + ( GND ) + ( \i_serial_uart_a|Add2~14\ ))
-- \i_serial_uart_a|Add2~18\ = CARRY(( \i_serial_uart_a|rx_bit_cnt\(5) ) + ( GND ) + ( \i_serial_uart_a|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(5),
	cin => \i_serial_uart_a|Add2~14\,
	sumout => \i_serial_uart_a|Add2~17_sumout\,
	cout => \i_serial_uart_a|Add2~18\);

-- Location: FF_X79_Y8_N47
\i_serial_uart_a|rx_bit_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Add2~17_sumout\,
	sclr => \i_serial_uart_a|rx_bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_bit_cnt\(5));

-- Location: LABCELL_X79_Y8_N48
\i_serial_uart_a|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Add2~9_sumout\ = SUM(( \i_serial_uart_a|rx_bit_cnt\(6) ) + ( GND ) + ( \i_serial_uart_a|Add2~18\ ))
-- \i_serial_uart_a|Add2~10\ = CARRY(( \i_serial_uart_a|rx_bit_cnt\(6) ) + ( GND ) + ( \i_serial_uart_a|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(6),
	cin => \i_serial_uart_a|Add2~18\,
	sumout => \i_serial_uart_a|Add2~9_sumout\,
	cout => \i_serial_uart_a|Add2~10\);

-- Location: FF_X79_Y8_N50
\i_serial_uart_a|rx_bit_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Add2~9_sumout\,
	sclr => \i_serial_uart_a|rx_bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_bit_cnt\(6));

-- Location: FF_X79_Y8_N53
\i_serial_uart_a|rx_bit_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Add2~1_sumout\,
	sclr => \i_serial_uart_a|rx_bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_bit_cnt\(7));

-- Location: LABCELL_X79_Y8_N24
\i_serial_uart_a|rx_bit_cnt_half~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|rx_bit_cnt_half~0_combout\ = ( \i_serial_uart_a|rx_bit_cnt\(4) & ( (!\i_serial_uart_a|rx_bit_cnt\(3) & !\i_serial_uart_a|rx_bit_cnt\(5)) ) ) # ( !\i_serial_uart_a|rx_bit_cnt\(4) & ( !\i_serial_uart_a|rx_bit_cnt\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(3),
	datad => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(5),
	dataf => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(4),
	combout => \i_serial_uart_a|rx_bit_cnt_half~0_combout\);

-- Location: LABCELL_X79_Y8_N27
\i_serial_uart_a|rx_bit_cnt_half~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|rx_bit_cnt_half~1_combout\ = ( \i_serial_uart_a|rx_bit_cnt_en~q\ & ( ((\i_serial_uart_a|rx_bit_cnt\(7) & (!\i_serial_uart_a|rx_bit_cnt_half~0_combout\ & \i_serial_uart_a|rx_bit_cnt[6]~DUPLICATE_q\))) # (\i_serial_uart_a|rx_bit_cnt\(8)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011011100110011001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(7),
	datab => \i_serial_uart_a|ALT_INV_rx_bit_cnt\(8),
	datac => \i_serial_uart_a|ALT_INV_rx_bit_cnt_half~0_combout\,
	datad => \i_serial_uart_a|ALT_INV_rx_bit_cnt[6]~DUPLICATE_q\,
	dataf => \i_serial_uart_a|ALT_INV_rx_bit_cnt_en~q\,
	combout => \i_serial_uart_a|rx_bit_cnt_half~1_combout\);

-- Location: FF_X79_Y8_N28
\i_serial_uart_a|rx_bit_cnt_half\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|rx_bit_cnt_half~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_bit_cnt_half~q\);

-- Location: FF_X80_Y8_N46
\i_serial_uart_a|rx_state.s_stop_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector4~1_combout\,
	sclr => \i_serial_uart_a|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_state.s_stop_bit~q\);

-- Location: FF_X80_Y8_N49
\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector2~0_combout\,
	sclr => \i_serial_uart_a|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y8_N15
\i_serial_uart_a|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector14~0_combout\ = ( \i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\ & ( (!\i_serial_uart_a|rx_bit_cnt_wrap~q\ & (((\i_serial_uart_a|rx_bit_no\(0))))) # (\i_serial_uart_a|rx_bit_cnt_wrap~q\ & ((!\i_serial_uart_a|Selector4~0_combout\ 
-- & ((!\i_serial_uart_a|rx_bit_no\(0)) # (\i_serial_uart_a|rx_state.s_stop_bit~q\))) # (\i_serial_uart_a|Selector4~0_combout\ & ((\i_serial_uart_a|rx_bit_no\(0)))))) ) ) # ( !\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\ & ( 
-- (\i_serial_uart_a|rx_state.s_stop_bit~q\ & \i_serial_uart_a|rx_bit_no\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100110000110111110011000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_rx_state.s_stop_bit~q\,
	datab => \i_serial_uart_a|ALT_INV_rx_bit_cnt_wrap~q\,
	datac => \i_serial_uart_a|ALT_INV_Selector4~0_combout\,
	datad => \i_serial_uart_a|ALT_INV_rx_bit_no\(0),
	dataf => \i_serial_uart_a|ALT_INV_rx_state.s_rx_data~DUPLICATE_q\,
	combout => \i_serial_uart_a|Selector14~0_combout\);

-- Location: FF_X84_Y8_N17
\i_serial_uart_a|rx_bit_no[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_bit_no\(0));

-- Location: MLABCELL_X84_Y8_N30
\i_serial_uart_a|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector12~0_combout\ = ( \i_serial_uart_a|rx_bit_no\(2) & ( \i_serial_uart_a|rx_state.s_stop_bit~q\ ) ) # ( !\i_serial_uart_a|rx_bit_no\(2) & ( \i_serial_uart_a|rx_state.s_stop_bit~q\ & ( (\i_serial_uart_a|rx_bit_cnt_wrap~q\ & 
-- (\i_serial_uart_a|rx_bit_no\(0) & (\i_serial_uart_a|rx_bit_no\(1) & \i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\))) ) ) ) # ( \i_serial_uart_a|rx_bit_no\(2) & ( !\i_serial_uart_a|rx_state.s_stop_bit~q\ & ( 
-- \i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\ ) ) ) # ( !\i_serial_uart_a|rx_bit_no\(2) & ( !\i_serial_uart_a|rx_state.s_stop_bit~q\ & ( (\i_serial_uart_a|rx_bit_cnt_wrap~q\ & (\i_serial_uart_a|rx_bit_no\(0) & (\i_serial_uart_a|rx_bit_no\(1) & 
-- \i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000001111111100000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_rx_bit_cnt_wrap~q\,
	datab => \i_serial_uart_a|ALT_INV_rx_bit_no\(0),
	datac => \i_serial_uart_a|ALT_INV_rx_bit_no\(1),
	datad => \i_serial_uart_a|ALT_INV_rx_state.s_rx_data~DUPLICATE_q\,
	datae => \i_serial_uart_a|ALT_INV_rx_bit_no\(2),
	dataf => \i_serial_uart_a|ALT_INV_rx_state.s_stop_bit~q\,
	combout => \i_serial_uart_a|Selector12~0_combout\);

-- Location: FF_X84_Y8_N31
\i_serial_uart_a|rx_bit_no[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_bit_no\(2));

-- Location: MLABCELL_X84_Y8_N54
\i_serial_uart_a|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector13~0_combout\ = ( \i_serial_uart_a|rx_bit_no\(1) & ( \i_serial_uart_a|rx_bit_no\(2) & ( (\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\) # (\i_serial_uart_a|rx_state.s_stop_bit~q\) ) ) ) # ( !\i_serial_uart_a|rx_bit_no\(1) & ( 
-- \i_serial_uart_a|rx_bit_no\(2) & ( (\i_serial_uart_a|rx_bit_cnt_wrap~q\ & (\i_serial_uart_a|rx_bit_no\(0) & \i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\)) ) ) ) # ( \i_serial_uart_a|rx_bit_no\(1) & ( !\i_serial_uart_a|rx_bit_no\(2) & ( 
-- ((\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\ & ((!\i_serial_uart_a|rx_bit_cnt_wrap~q\) # (!\i_serial_uart_a|rx_bit_no\(0))))) # (\i_serial_uart_a|rx_state.s_stop_bit~q\) ) ) ) # ( !\i_serial_uart_a|rx_bit_no\(1) & ( !\i_serial_uart_a|rx_bit_no\(2) & 
-- ( (\i_serial_uart_a|rx_bit_cnt_wrap~q\ & (\i_serial_uart_a|rx_bit_no\(0) & \i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000011111110111100000000000100010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_rx_bit_cnt_wrap~q\,
	datab => \i_serial_uart_a|ALT_INV_rx_bit_no\(0),
	datac => \i_serial_uart_a|ALT_INV_rx_state.s_stop_bit~q\,
	datad => \i_serial_uart_a|ALT_INV_rx_state.s_rx_data~DUPLICATE_q\,
	datae => \i_serial_uart_a|ALT_INV_rx_bit_no\(1),
	dataf => \i_serial_uart_a|ALT_INV_rx_bit_no\(2),
	combout => \i_serial_uart_a|Selector13~0_combout\);

-- Location: FF_X84_Y8_N56
\i_serial_uart_a|rx_bit_no[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_bit_no\(1));

-- Location: MLABCELL_X84_Y8_N39
\i_serial_uart_a|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector4~0_combout\ = ( \i_serial_uart_a|rx_bit_no\(1) & ( \i_serial_uart_a|rx_bit_no\(2) & ( \i_serial_uart_a|rx_bit_no\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart_a|ALT_INV_rx_bit_no\(0),
	datae => \i_serial_uart_a|ALT_INV_rx_bit_no\(1),
	dataf => \i_serial_uart_a|ALT_INV_rx_bit_no\(2),
	combout => \i_serial_uart_a|Selector4~0_combout\);

-- Location: LABCELL_X80_Y8_N48
\i_serial_uart_a|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector2~0_combout\ = ( \i_serial_uart_a|rx_state.s_rx_data~q\ & ( \i_serial_uart_a|rx_state.s_idle~q\ & ( (!\i_serial_uart_a|Selector4~0_combout\) # (!\i_serial_uart_a|rx_bit_cnt_wrap~q\) ) ) ) # ( \i_serial_uart_a|rx_state.s_rx_data~q\ 
-- & ( !\i_serial_uart_a|rx_state.s_idle~q\ & ( ((!\i_serial_uart_a|Selector4~0_combout\) # (!\i_serial_uart_a|rx_bit_cnt_wrap~q\)) # (\i_serial_uart_a|rx_bit_cnt_half~q\) ) ) ) # ( !\i_serial_uart_a|rx_state.s_rx_data~q\ & ( 
-- !\i_serial_uart_a|rx_state.s_idle~q\ & ( \i_serial_uart_a|rx_bit_cnt_half~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111011111110100000000000000001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_rx_bit_cnt_half~q\,
	datab => \i_serial_uart_a|ALT_INV_Selector4~0_combout\,
	datac => \i_serial_uart_a|ALT_INV_rx_bit_cnt_wrap~q\,
	datae => \i_serial_uart_a|ALT_INV_rx_state.s_rx_data~q\,
	dataf => \i_serial_uart_a|ALT_INV_rx_state.s_idle~q\,
	combout => \i_serial_uart_a|Selector2~0_combout\);

-- Location: FF_X80_Y8_N50
\i_serial_uart_a|rx_state.s_rx_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector2~0_combout\,
	sclr => \i_serial_uart_a|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_state.s_rx_data~q\);

-- Location: LABCELL_X80_Y8_N45
\i_serial_uart_a|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector4~1_combout\ = ( \i_serial_uart_a|rx_state.s_stop_bit~q\ & ( \i_serial_uart_a|rx_bit_cnt_wrap~q\ & ( (\i_serial_uart_a|rx_state.s_rx_data~q\ & \i_serial_uart_a|Selector4~0_combout\) ) ) ) # ( 
-- !\i_serial_uart_a|rx_state.s_stop_bit~q\ & ( \i_serial_uart_a|rx_bit_cnt_wrap~q\ & ( (\i_serial_uart_a|rx_state.s_rx_data~q\ & \i_serial_uart_a|Selector4~0_combout\) ) ) ) # ( \i_serial_uart_a|rx_state.s_stop_bit~q\ & ( 
-- !\i_serial_uart_a|rx_bit_cnt_wrap~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_rx_state.s_rx_data~q\,
	datac => \i_serial_uart_a|ALT_INV_Selector4~0_combout\,
	datae => \i_serial_uart_a|ALT_INV_rx_state.s_stop_bit~q\,
	dataf => \i_serial_uart_a|ALT_INV_rx_bit_cnt_wrap~q\,
	combout => \i_serial_uart_a|Selector4~1_combout\);

-- Location: FF_X80_Y8_N47
\i_serial_uart_a|rx_state.s_stop_bit~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector4~1_combout\,
	sclr => \i_serial_uart_a|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_state.s_stop_bit~DUPLICATE_q\);

-- Location: LABCELL_X80_Y8_N39
\i_serial_uart_a|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector5~0_combout\ = ( \i_serial_uart_a|rx_bit_cnt_wrap~q\ & ( (!\i_serial_uart_a|rx_2r~q\ & (\i_serial_uart_a|rx_state.s_stop_bit~DUPLICATE_q\ & ((\i_serial_uart_a|rx_byte_int\(6))))) # (\i_serial_uart_a|rx_2r~q\ & 
-- (((\i_serial_uart_a|rx_state.s_stop_bit~DUPLICATE_q\ & \i_serial_uart_a|rx_byte_int\(6))) # (\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\))) ) ) # ( !\i_serial_uart_a|rx_bit_cnt_wrap~q\ & ( (\i_serial_uart_a|rx_byte_int\(6) & 
-- ((\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\) # (\i_serial_uart_a|rx_state.s_stop_bit~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_rx_2r~q\,
	datab => \i_serial_uart_a|ALT_INV_rx_state.s_stop_bit~DUPLICATE_q\,
	datac => \i_serial_uart_a|ALT_INV_rx_state.s_rx_data~DUPLICATE_q\,
	datad => \i_serial_uart_a|ALT_INV_rx_byte_int\(6),
	dataf => \i_serial_uart_a|ALT_INV_rx_bit_cnt_wrap~q\,
	combout => \i_serial_uart_a|Selector5~0_combout\);

-- Location: FF_X80_Y8_N40
\i_serial_uart_a|rx_byte_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_byte_int\(6));

-- Location: MLABCELL_X84_Y8_N18
\i_serial_uart_a|received_data[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|received_data[5]~0_combout\ = ( \i_serial_uart_a|Selector4~0_combout\ & ( ((\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\ & \i_serial_uart_a|rx_bit_cnt_wrap~q\)) # (\i_serial_uart_a|reset_2r~q\) ) ) # ( 
-- !\i_serial_uart_a|Selector4~0_combout\ & ( \i_serial_uart_a|reset_2r~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_reset_2r~q\,
	datab => \i_serial_uart_a|ALT_INV_rx_state.s_rx_data~DUPLICATE_q\,
	datac => \i_serial_uart_a|ALT_INV_rx_bit_cnt_wrap~q\,
	dataf => \i_serial_uart_a|ALT_INV_Selector4~0_combout\,
	combout => \i_serial_uart_a|received_data[5]~0_combout\);

-- Location: FF_X78_Y8_N55
\i_serial_uart_a|received_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \i_serial_uart_a|rx_byte_int\(6),
	sclr => \i_serial_uart_a|reset_2r~q\,
	sload => VCC,
	ena => \i_serial_uart_a|received_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|received_data\(6));

-- Location: MLABCELL_X84_Y8_N45
\i_serial_uart_a|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector6~0_combout\ = ( \i_serial_uart_a|rx_byte_int\(6) & ( (!\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\ & (\i_serial_uart_a|rx_state.s_stop_bit~q\ & ((\i_serial_uart_a|rx_byte_int\(5))))) # 
-- (\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\ & (((\i_serial_uart_a|rx_byte_int\(5)) # (\i_serial_uart_a|rx_bit_cnt_wrap~q\)))) ) ) # ( !\i_serial_uart_a|rx_byte_int\(6) & ( (\i_serial_uart_a|rx_byte_int\(5) & 
-- (((\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\ & !\i_serial_uart_a|rx_bit_cnt_wrap~q\)) # (\i_serial_uart_a|rx_state.s_stop_bit~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110101000000000111010100000011011101110000001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_rx_state.s_stop_bit~q\,
	datab => \i_serial_uart_a|ALT_INV_rx_state.s_rx_data~DUPLICATE_q\,
	datac => \i_serial_uart_a|ALT_INV_rx_bit_cnt_wrap~q\,
	datad => \i_serial_uart_a|ALT_INV_rx_byte_int\(5),
	dataf => \i_serial_uart_a|ALT_INV_rx_byte_int\(6),
	combout => \i_serial_uart_a|Selector6~0_combout\);

-- Location: FF_X84_Y8_N46
\i_serial_uart_a|rx_byte_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_byte_int\(5));

-- Location: MLABCELL_X84_Y8_N42
\i_serial_uart_a|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector7~0_combout\ = ( \i_serial_uart_a|rx_byte_int\(5) & ( (!\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\ & (\i_serial_uart_a|rx_state.s_stop_bit~q\ & ((\i_serial_uart_a|rx_byte_int\(4))))) # 
-- (\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\ & (((\i_serial_uart_a|rx_byte_int\(4)) # (\i_serial_uart_a|rx_bit_cnt_wrap~q\)))) ) ) # ( !\i_serial_uart_a|rx_byte_int\(5) & ( (\i_serial_uart_a|rx_byte_int\(4) & 
-- (((\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\ & !\i_serial_uart_a|rx_bit_cnt_wrap~q\)) # (\i_serial_uart_a|rx_state.s_stop_bit~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110101000000000111010100000011011101110000001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_rx_state.s_stop_bit~q\,
	datab => \i_serial_uart_a|ALT_INV_rx_state.s_rx_data~DUPLICATE_q\,
	datac => \i_serial_uart_a|ALT_INV_rx_bit_cnt_wrap~q\,
	datad => \i_serial_uart_a|ALT_INV_rx_byte_int\(4),
	dataf => \i_serial_uart_a|ALT_INV_rx_byte_int\(5),
	combout => \i_serial_uart_a|Selector7~0_combout\);

-- Location: FF_X84_Y8_N43
\i_serial_uart_a|rx_byte_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_byte_int\(4));

-- Location: MLABCELL_X84_Y8_N27
\i_serial_uart_a|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector8~0_combout\ = ( \i_serial_uart_a|rx_bit_cnt_wrap~q\ & ( (!\i_serial_uart_a|rx_state.s_stop_bit~q\ & (\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\ & (\i_serial_uart_a|rx_byte_int\(4)))) # 
-- (\i_serial_uart_a|rx_state.s_stop_bit~q\ & (((\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\ & \i_serial_uart_a|rx_byte_int\(4))) # (\i_serial_uart_a|rx_byte_int\(3)))) ) ) # ( !\i_serial_uart_a|rx_bit_cnt_wrap~q\ & ( (\i_serial_uart_a|rx_byte_int\(3) & 
-- ((\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\) # (\i_serial_uart_a|rx_state.s_stop_bit~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_rx_state.s_stop_bit~q\,
	datab => \i_serial_uart_a|ALT_INV_rx_state.s_rx_data~DUPLICATE_q\,
	datac => \i_serial_uart_a|ALT_INV_rx_byte_int\(4),
	datad => \i_serial_uart_a|ALT_INV_rx_byte_int\(3),
	dataf => \i_serial_uart_a|ALT_INV_rx_bit_cnt_wrap~q\,
	combout => \i_serial_uart_a|Selector8~0_combout\);

-- Location: FF_X84_Y8_N29
\i_serial_uart_a|rx_byte_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_byte_int\(3));

-- Location: MLABCELL_X84_Y8_N24
\i_serial_uart_a|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector9~0_combout\ = ( \i_serial_uart_a|rx_bit_cnt_wrap~q\ & ( (!\i_serial_uart_a|rx_state.s_stop_bit~q\ & (\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\ & (\i_serial_uart_a|rx_byte_int\(3)))) # 
-- (\i_serial_uart_a|rx_state.s_stop_bit~q\ & (((\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\ & \i_serial_uart_a|rx_byte_int\(3))) # (\i_serial_uart_a|rx_byte_int\(2)))) ) ) # ( !\i_serial_uart_a|rx_bit_cnt_wrap~q\ & ( (\i_serial_uart_a|rx_byte_int\(2) & 
-- ((\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\) # (\i_serial_uart_a|rx_state.s_stop_bit~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_rx_state.s_stop_bit~q\,
	datab => \i_serial_uart_a|ALT_INV_rx_state.s_rx_data~DUPLICATE_q\,
	datac => \i_serial_uart_a|ALT_INV_rx_byte_int\(3),
	datad => \i_serial_uart_a|ALT_INV_rx_byte_int\(2),
	dataf => \i_serial_uart_a|ALT_INV_rx_bit_cnt_wrap~q\,
	combout => \i_serial_uart_a|Selector9~0_combout\);

-- Location: FF_X84_Y8_N26
\i_serial_uart_a|rx_byte_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_byte_int\(2));

-- Location: MLABCELL_X78_Y8_N27
\i_serial_uart_a|received_data[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|received_data[2]~feeder_combout\ = ( \i_serial_uart_a|rx_byte_int\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i_serial_uart_a|ALT_INV_rx_byte_int\(2),
	combout => \i_serial_uart_a|received_data[2]~feeder_combout\);

-- Location: FF_X78_Y8_N28
\i_serial_uart_a|received_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|received_data[2]~feeder_combout\,
	sclr => \i_serial_uart_a|reset_2r~q\,
	ena => \i_serial_uart_a|received_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|received_data\(2));

-- Location: FF_X80_Y8_N56
\i_serial_uart_a|received_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \i_serial_uart_a|rx_byte_int\(3),
	sclr => \i_serial_uart_a|reset_2r~q\,
	sload => VCC,
	ena => \i_serial_uart_a|received_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|received_data\(3));

-- Location: MLABCELL_X84_Y8_N9
\i_serial_uart_a|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector10~0_combout\ = ( \i_serial_uart_a|rx_byte_int\(2) & ( (!\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\ & (\i_serial_uart_a|rx_state.s_stop_bit~q\ & ((\i_serial_uart_a|rx_byte_int\(1))))) # 
-- (\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\ & (((\i_serial_uart_a|rx_byte_int\(1)) # (\i_serial_uart_a|rx_bit_cnt_wrap~q\)))) ) ) # ( !\i_serial_uart_a|rx_byte_int\(2) & ( (\i_serial_uart_a|rx_byte_int\(1) & 
-- (((\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\ & !\i_serial_uart_a|rx_bit_cnt_wrap~q\)) # (\i_serial_uart_a|rx_state.s_stop_bit~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110101000000000111010100000011011101110000001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_rx_state.s_stop_bit~q\,
	datab => \i_serial_uart_a|ALT_INV_rx_state.s_rx_data~DUPLICATE_q\,
	datac => \i_serial_uart_a|ALT_INV_rx_bit_cnt_wrap~q\,
	datad => \i_serial_uart_a|ALT_INV_rx_byte_int\(1),
	dataf => \i_serial_uart_a|ALT_INV_rx_byte_int\(2),
	combout => \i_serial_uart_a|Selector10~0_combout\);

-- Location: FF_X84_Y8_N10
\i_serial_uart_a|rx_byte_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_byte_int\(1));

-- Location: FF_X80_Y8_N14
\i_serial_uart_a|received_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \i_serial_uart_a|rx_byte_int\(1),
	sclr => \i_serial_uart_a|reset_2r~q\,
	sload => VCC,
	ena => \i_serial_uart_a|received_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|received_data\(1));

-- Location: FF_X80_Y8_N59
\i_serial_uart_a|received_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \i_serial_uart_a|rx_2r~q\,
	sclr => \i_serial_uart_a|reset_2r~q\,
	sload => VCC,
	ena => \i_serial_uart_a|received_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|received_data\(7));

-- Location: LABCELL_X80_Y8_N12
\i_serial_ctrl_a|serial_up~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_ctrl_a|serial_up~0_combout\ = ( !\i_serial_uart_a|received_data\(7) & ( (\i_serial_uart_a|received_data\(6) & (\i_serial_uart_a|received_data\(2) & (!\i_serial_uart_a|received_data\(3) & !\i_serial_uart_a|received_data\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_received_data\(6),
	datab => \i_serial_uart_a|ALT_INV_received_data\(2),
	datac => \i_serial_uart_a|ALT_INV_received_data\(3),
	datad => \i_serial_uart_a|ALT_INV_received_data\(1),
	dataf => \i_serial_uart_a|ALT_INV_received_data\(7),
	combout => \i_serial_ctrl_a|serial_up~0_combout\);

-- Location: FF_X82_Y6_N22
\i_serial_uart_a|received_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \i_serial_uart_a|rx_byte_int\(4),
	sclr => \i_serial_uart_a|reset_2r~q\,
	sload => VCC,
	ena => \i_serial_uart_a|received_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|received_data\(4));

-- Location: LABCELL_X80_Y8_N36
\i_serial_uart_a|received_data_valid~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|received_data_valid~0_combout\ = (\i_serial_uart_a|rx_2r~q\ & (\i_serial_uart_a|rx_state.s_stop_bit~DUPLICATE_q\ & \i_serial_uart_a|rx_bit_cnt_wrap~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_rx_2r~q\,
	datab => \i_serial_uart_a|ALT_INV_rx_state.s_stop_bit~DUPLICATE_q\,
	datac => \i_serial_uart_a|ALT_INV_rx_bit_cnt_wrap~q\,
	combout => \i_serial_uart_a|received_data_valid~0_combout\);

-- Location: FF_X80_Y8_N37
\i_serial_uart_a|received_data_valid~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|received_data_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|received_data_valid~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y8_N6
\i_serial_uart_a|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector11~0_combout\ = ( \i_serial_uart_a|rx_bit_cnt_wrap~q\ & ( (!\i_serial_uart_a|rx_state.s_stop_bit~q\ & (\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\ & (\i_serial_uart_a|rx_byte_int\(1)))) # 
-- (\i_serial_uart_a|rx_state.s_stop_bit~q\ & (((\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\ & \i_serial_uart_a|rx_byte_int\(1))) # (\i_serial_uart_a|rx_byte_int\(0)))) ) ) # ( !\i_serial_uart_a|rx_bit_cnt_wrap~q\ & ( (\i_serial_uart_a|rx_byte_int\(0) & 
-- ((\i_serial_uart_a|rx_state.s_rx_data~DUPLICATE_q\) # (\i_serial_uart_a|rx_state.s_stop_bit~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_rx_state.s_stop_bit~q\,
	datab => \i_serial_uart_a|ALT_INV_rx_state.s_rx_data~DUPLICATE_q\,
	datac => \i_serial_uart_a|ALT_INV_rx_byte_int\(1),
	datad => \i_serial_uart_a|ALT_INV_rx_byte_int\(0),
	dataf => \i_serial_uart_a|ALT_INV_rx_bit_cnt_wrap~q\,
	combout => \i_serial_uart_a|Selector11~0_combout\);

-- Location: FF_X84_Y8_N7
\i_serial_uart_a|rx_byte_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|rx_byte_int\(0));

-- Location: MLABCELL_X82_Y8_N39
\i_serial_uart_a|received_data[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|received_data[0]~feeder_combout\ = ( \i_serial_uart_a|rx_byte_int\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i_serial_uart_a|ALT_INV_rx_byte_int\(0),
	combout => \i_serial_uart_a|received_data[0]~feeder_combout\);

-- Location: FF_X82_Y8_N40
\i_serial_uart_a|received_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|received_data[0]~feeder_combout\,
	sclr => \i_serial_uart_a|reset_2r~q\,
	ena => \i_serial_uart_a|received_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|received_data\(0));

-- Location: MLABCELL_X84_Y6_N39
\i_serial_ctrl_a|serial_up~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_ctrl_a|serial_up~1_combout\ = ( \i_serial_ctrl_a|serial_up~q\ & ( \i_serial_uart_a|received_data\(0) & ( \i_serial_uart_a|received_data_valid~DUPLICATE_q\ ) ) ) # ( !\i_serial_ctrl_a|serial_up~q\ & ( \i_serial_uart_a|received_data\(0) & ( 
-- (\i_serial_ctrl_a|serial_up~0_combout\ & (\i_serial_uart_a|received_data\(4) & \i_serial_uart_a|received_data_valid~DUPLICATE_q\)) ) ) ) # ( \i_serial_ctrl_a|serial_up~q\ & ( !\i_serial_uart_a|received_data\(0) & ( 
-- \i_serial_uart_a|received_data_valid~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000001000000010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_ctrl_a|ALT_INV_serial_up~0_combout\,
	datab => \i_serial_uart_a|ALT_INV_received_data\(4),
	datac => \i_serial_uart_a|ALT_INV_received_data_valid~DUPLICATE_q\,
	datae => \i_serial_ctrl_a|ALT_INV_serial_up~q\,
	dataf => \i_serial_uart_a|ALT_INV_received_data\(0),
	combout => \i_serial_ctrl_a|serial_up~1_combout\);

-- Location: FF_X84_Y6_N40
\i_serial_ctrl_a|serial_up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_ctrl_a|serial_up~1_combout\,
	sclr => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_ctrl_a|serial_up~q\);

-- Location: MLABCELL_X82_Y6_N0
\i_pwm_ctrl_a|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Add1~1_sumout\ = SUM(( VCC ) + ( \i_pwm_ctrl_a|s_pwm_dc\(0) ) + ( !VCC ))
-- \i_pwm_ctrl_a|Add1~2\ = CARRY(( VCC ) + ( \i_pwm_ctrl_a|s_pwm_dc\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(0),
	cin => GND,
	sumout => \i_pwm_ctrl_a|Add1~1_sumout\,
	cout => \i_pwm_ctrl_a|Add1~2\);

-- Location: MLABCELL_X82_Y6_N24
\i_pwm_ctrl_a|s_pwm_dc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|s_pwm_dc~0_combout\ = ( \i_pwm_ctrl_a|Add1~1_sumout\ & ( \i_key_ctrl_a|s_output\(3) & ( (\i_pwm_ctrl_a|s_isEnabled~q\) # (\i_pwm_ctrl_a|LessThan3~2_combout\) ) ) ) # ( \i_pwm_ctrl_a|Add1~1_sumout\ & ( !\i_key_ctrl_a|s_output\(3) & ( 
-- ((!\i_serial_ctrl_a|serial_up~q\) # ((\i_pwm_ctrl_a|s_isEnabled~q\) # (\i_pwm_ctrl_a|process_2~3_combout\))) # (\i_pwm_ctrl_a|LessThan3~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111111111111100000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_LessThan3~2_combout\,
	datab => \i_serial_ctrl_a|ALT_INV_serial_up~q\,
	datac => \i_pwm_ctrl_a|ALT_INV_process_2~3_combout\,
	datad => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	datae => \i_pwm_ctrl_a|ALT_INV_Add1~1_sumout\,
	dataf => \i_key_ctrl_a|ALT_INV_s_output\(3),
	combout => \i_pwm_ctrl_a|s_pwm_dc~0_combout\);

-- Location: LABCELL_X83_Y5_N0
\i_key_ctrl_a|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add1~73_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[2][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \i_key_ctrl_a|Add1~74\ = CARRY(( \i_key_ctrl_a|s_clk_cn[2][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][0]~q\,
	cin => GND,
	sumout => \i_key_ctrl_a|Add1~73_sumout\,
	cout => \i_key_ctrl_a|Add1~74\);

-- Location: LABCELL_X77_Y5_N45
\i_key_ctrl_a|s_clk_cn[2][12]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\ = ( \i_key_ctrl_a|LessThan1~3_combout\ ) # ( !\i_key_ctrl_a|LessThan1~3_combout\ & ( !\i_key_ctrl_a|key_n_2r\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_key_n_2r\(2),
	dataf => \i_key_ctrl_a|ALT_INV_LessThan1~3_combout\,
	combout => \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\);

-- Location: LABCELL_X77_Y5_N30
\i_key_ctrl_a|s_clk_cn[2][12]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\ = ( \i_key_ctrl_a|key_n_2r\(3) & ( (!\i_key_ctrl_a|key_n_2r\(2)) # (\i_key_ctrl_a|LessThan1~3_combout\) ) ) # ( !\i_key_ctrl_a|key_n_2r\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_key_n_2r\(2),
	datac => \i_key_ctrl_a|ALT_INV_LessThan1~3_combout\,
	dataf => \i_key_ctrl_a|ALT_INV_key_n_2r\(3),
	combout => \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\);

-- Location: FF_X83_Y5_N2
\i_key_ctrl_a|s_clk_cn[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add1~73_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[2][0]~q\);

-- Location: LABCELL_X83_Y5_N3
\i_key_ctrl_a|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add1~69_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[2][1]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~74\ ))
-- \i_key_ctrl_a|Add1~70\ = CARRY(( \i_key_ctrl_a|s_clk_cn[2][1]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][1]~q\,
	cin => \i_key_ctrl_a|Add1~74\,
	sumout => \i_key_ctrl_a|Add1~69_sumout\,
	cout => \i_key_ctrl_a|Add1~70\);

-- Location: FF_X83_Y5_N5
\i_key_ctrl_a|s_clk_cn[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add1~69_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[2][1]~q\);

-- Location: LABCELL_X83_Y5_N6
\i_key_ctrl_a|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add1~65_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[2][2]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~70\ ))
-- \i_key_ctrl_a|Add1~66\ = CARRY(( \i_key_ctrl_a|s_clk_cn[2][2]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][2]~q\,
	cin => \i_key_ctrl_a|Add1~70\,
	sumout => \i_key_ctrl_a|Add1~65_sumout\,
	cout => \i_key_ctrl_a|Add1~66\);

-- Location: FF_X83_Y5_N8
\i_key_ctrl_a|s_clk_cn[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add1~65_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[2][2]~q\);

-- Location: LABCELL_X83_Y5_N9
\i_key_ctrl_a|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add1~61_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[2][3]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~66\ ))
-- \i_key_ctrl_a|Add1~62\ = CARRY(( \i_key_ctrl_a|s_clk_cn[2][3]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][3]~q\,
	cin => \i_key_ctrl_a|Add1~66\,
	sumout => \i_key_ctrl_a|Add1~61_sumout\,
	cout => \i_key_ctrl_a|Add1~62\);

-- Location: FF_X83_Y5_N10
\i_key_ctrl_a|s_clk_cn[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add1~61_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[2][3]~q\);

-- Location: LABCELL_X83_Y5_N12
\i_key_ctrl_a|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add1~57_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[2][4]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~62\ ))
-- \i_key_ctrl_a|Add1~58\ = CARRY(( \i_key_ctrl_a|s_clk_cn[2][4]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][4]~q\,
	cin => \i_key_ctrl_a|Add1~62\,
	sumout => \i_key_ctrl_a|Add1~57_sumout\,
	cout => \i_key_ctrl_a|Add1~58\);

-- Location: FF_X83_Y5_N14
\i_key_ctrl_a|s_clk_cn[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add1~57_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[2][4]~q\);

-- Location: LABCELL_X83_Y5_N15
\i_key_ctrl_a|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add1~13_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[2][5]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~58\ ))
-- \i_key_ctrl_a|Add1~14\ = CARRY(( \i_key_ctrl_a|s_clk_cn[2][5]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][5]~q\,
	cin => \i_key_ctrl_a|Add1~58\,
	sumout => \i_key_ctrl_a|Add1~13_sumout\,
	cout => \i_key_ctrl_a|Add1~14\);

-- Location: FF_X83_Y5_N16
\i_key_ctrl_a|s_clk_cn[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add1~13_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[2][5]~q\);

-- Location: LABCELL_X83_Y5_N18
\i_key_ctrl_a|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add1~17_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[2][6]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~14\ ))
-- \i_key_ctrl_a|Add1~18\ = CARRY(( \i_key_ctrl_a|s_clk_cn[2][6]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][6]~q\,
	cin => \i_key_ctrl_a|Add1~14\,
	sumout => \i_key_ctrl_a|Add1~17_sumout\,
	cout => \i_key_ctrl_a|Add1~18\);

-- Location: FF_X83_Y5_N19
\i_key_ctrl_a|s_clk_cn[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add1~17_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[2][6]~q\);

-- Location: LABCELL_X83_Y5_N21
\i_key_ctrl_a|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add1~21_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[2][7]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~18\ ))
-- \i_key_ctrl_a|Add1~22\ = CARRY(( \i_key_ctrl_a|s_clk_cn[2][7]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][7]~q\,
	cin => \i_key_ctrl_a|Add1~18\,
	sumout => \i_key_ctrl_a|Add1~21_sumout\,
	cout => \i_key_ctrl_a|Add1~22\);

-- Location: FF_X83_Y5_N23
\i_key_ctrl_a|s_clk_cn[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add1~21_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[2][7]~q\);

-- Location: LABCELL_X83_Y5_N24
\i_key_ctrl_a|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add1~9_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[2][8]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~22\ ))
-- \i_key_ctrl_a|Add1~10\ = CARRY(( \i_key_ctrl_a|s_clk_cn[2][8]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][8]~q\,
	cin => \i_key_ctrl_a|Add1~22\,
	sumout => \i_key_ctrl_a|Add1~9_sumout\,
	cout => \i_key_ctrl_a|Add1~10\);

-- Location: FF_X83_Y5_N25
\i_key_ctrl_a|s_clk_cn[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add1~9_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[2][8]~q\);

-- Location: FF_X83_Y5_N22
\i_key_ctrl_a|s_clk_cn[2][7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add1~21_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[2][7]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y5_N39
\i_key_ctrl_a|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|LessThan1~0_combout\ = ( \i_key_ctrl_a|s_clk_cn[2][7]~DUPLICATE_q\ & ( \i_key_ctrl_a|s_clk_cn[2][5]~q\ & ( \i_key_ctrl_a|s_clk_cn[2][8]~q\ ) ) ) # ( !\i_key_ctrl_a|s_clk_cn[2][7]~DUPLICATE_q\ & ( \i_key_ctrl_a|s_clk_cn[2][5]~q\ & ( 
-- \i_key_ctrl_a|s_clk_cn[2][8]~q\ ) ) ) # ( \i_key_ctrl_a|s_clk_cn[2][7]~DUPLICATE_q\ & ( !\i_key_ctrl_a|s_clk_cn[2][5]~q\ & ( \i_key_ctrl_a|s_clk_cn[2][8]~q\ ) ) ) # ( !\i_key_ctrl_a|s_clk_cn[2][7]~DUPLICATE_q\ & ( !\i_key_ctrl_a|s_clk_cn[2][5]~q\ & ( 
-- (\i_key_ctrl_a|s_clk_cn[2][6]~q\ & \i_key_ctrl_a|s_clk_cn[2][8]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][6]~q\,
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][8]~q\,
	datae => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][7]~DUPLICATE_q\,
	dataf => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][5]~q\,
	combout => \i_key_ctrl_a|LessThan1~0_combout\);

-- Location: LABCELL_X83_Y5_N27
\i_key_ctrl_a|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add1~37_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[2][9]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~10\ ))
-- \i_key_ctrl_a|Add1~38\ = CARRY(( \i_key_ctrl_a|s_clk_cn[2][9]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][9]~q\,
	cin => \i_key_ctrl_a|Add1~10\,
	sumout => \i_key_ctrl_a|Add1~37_sumout\,
	cout => \i_key_ctrl_a|Add1~38\);

-- Location: FF_X83_Y5_N28
\i_key_ctrl_a|s_clk_cn[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add1~37_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[2][9]~q\);

-- Location: LABCELL_X83_Y5_N30
\i_key_ctrl_a|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add1~33_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[2][10]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~38\ ))
-- \i_key_ctrl_a|Add1~34\ = CARRY(( \i_key_ctrl_a|s_clk_cn[2][10]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][10]~q\,
	cin => \i_key_ctrl_a|Add1~38\,
	sumout => \i_key_ctrl_a|Add1~33_sumout\,
	cout => \i_key_ctrl_a|Add1~34\);

-- Location: FF_X83_Y5_N31
\i_key_ctrl_a|s_clk_cn[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add1~33_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[2][10]~q\);

-- Location: LABCELL_X83_Y5_N33
\i_key_ctrl_a|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add1~29_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[2][11]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~34\ ))
-- \i_key_ctrl_a|Add1~30\ = CARRY(( \i_key_ctrl_a|s_clk_cn[2][11]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][11]~q\,
	cin => \i_key_ctrl_a|Add1~34\,
	sumout => \i_key_ctrl_a|Add1~29_sumout\,
	cout => \i_key_ctrl_a|Add1~30\);

-- Location: FF_X83_Y5_N34
\i_key_ctrl_a|s_clk_cn[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add1~29_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[2][11]~q\);

-- Location: LABCELL_X83_Y5_N36
\i_key_ctrl_a|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add1~25_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[2][12]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~30\ ))
-- \i_key_ctrl_a|Add1~26\ = CARRY(( \i_key_ctrl_a|s_clk_cn[2][12]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][12]~q\,
	cin => \i_key_ctrl_a|Add1~30\,
	sumout => \i_key_ctrl_a|Add1~25_sumout\,
	cout => \i_key_ctrl_a|Add1~26\);

-- Location: FF_X83_Y5_N37
\i_key_ctrl_a|s_clk_cn[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add1~25_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[2][12]~q\);

-- Location: LABCELL_X81_Y5_N0
\i_key_ctrl_a|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|LessThan1~1_combout\ = ( !\i_key_ctrl_a|s_clk_cn[2][10]~q\ & ( (!\i_key_ctrl_a|s_clk_cn[2][11]~q\ & (!\i_key_ctrl_a|s_clk_cn[2][9]~q\ & !\i_key_ctrl_a|s_clk_cn[2][12]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][11]~q\,
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][9]~q\,
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][12]~q\,
	dataf => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][10]~q\,
	combout => \i_key_ctrl_a|LessThan1~1_combout\);

-- Location: LABCELL_X83_Y5_N39
\i_key_ctrl_a|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add1~5_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[2][13]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~26\ ))
-- \i_key_ctrl_a|Add1~6\ = CARRY(( \i_key_ctrl_a|s_clk_cn[2][13]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][13]~q\,
	cin => \i_key_ctrl_a|Add1~26\,
	sumout => \i_key_ctrl_a|Add1~5_sumout\,
	cout => \i_key_ctrl_a|Add1~6\);

-- Location: FF_X83_Y5_N41
\i_key_ctrl_a|s_clk_cn[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add1~5_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[2][13]~q\);

-- Location: LABCELL_X83_Y5_N42
\i_key_ctrl_a|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add1~1_sumout\ = SUM(( GND ) + ( \i_key_ctrl_a|s_clk_cn[2][14]~q\ ) + ( \i_key_ctrl_a|Add1~6\ ))
-- \i_key_ctrl_a|Add1~2\ = CARRY(( GND ) + ( \i_key_ctrl_a|s_clk_cn[2][14]~q\ ) + ( \i_key_ctrl_a|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][14]~q\,
	cin => \i_key_ctrl_a|Add1~6\,
	sumout => \i_key_ctrl_a|Add1~1_sumout\,
	cout => \i_key_ctrl_a|Add1~2\);

-- Location: FF_X83_Y5_N44
\i_key_ctrl_a|s_clk_cn[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add1~1_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[2][14]~q\);

-- Location: FF_X83_Y5_N47
\i_key_ctrl_a|s_clk_cn[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add1~53_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[2][15]~q\);

-- Location: LABCELL_X83_Y5_N45
\i_key_ctrl_a|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add1~53_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[2][15]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~2\ ))
-- \i_key_ctrl_a|Add1~54\ = CARRY(( \i_key_ctrl_a|s_clk_cn[2][15]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][15]~q\,
	cin => \i_key_ctrl_a|Add1~2\,
	sumout => \i_key_ctrl_a|Add1~53_sumout\,
	cout => \i_key_ctrl_a|Add1~54\);

-- Location: FF_X83_Y5_N46
\i_key_ctrl_a|s_clk_cn[2][15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add1~53_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[2][15]~DUPLICATE_q\);

-- Location: FF_X83_Y5_N50
\i_key_ctrl_a|s_clk_cn[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add1~49_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[2][16]~q\);

-- Location: LABCELL_X83_Y5_N48
\i_key_ctrl_a|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add1~49_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[2][16]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~54\ ))
-- \i_key_ctrl_a|Add1~50\ = CARRY(( \i_key_ctrl_a|s_clk_cn[2][16]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][16]~q\,
	cin => \i_key_ctrl_a|Add1~54\,
	sumout => \i_key_ctrl_a|Add1~49_sumout\,
	cout => \i_key_ctrl_a|Add1~50\);

-- Location: FF_X83_Y5_N49
\i_key_ctrl_a|s_clk_cn[2][16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add1~49_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[2][16]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y5_N51
\i_key_ctrl_a|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add1~45_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[2][17]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~50\ ))
-- \i_key_ctrl_a|Add1~46\ = CARRY(( \i_key_ctrl_a|s_clk_cn[2][17]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][17]~q\,
	cin => \i_key_ctrl_a|Add1~50\,
	sumout => \i_key_ctrl_a|Add1~45_sumout\,
	cout => \i_key_ctrl_a|Add1~46\);

-- Location: FF_X83_Y5_N52
\i_key_ctrl_a|s_clk_cn[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add1~45_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[2][17]~q\);

-- Location: LABCELL_X83_Y5_N54
\i_key_ctrl_a|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add1~41_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[2][18]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][18]~q\,
	cin => \i_key_ctrl_a|Add1~46\,
	sumout => \i_key_ctrl_a|Add1~41_sumout\);

-- Location: FF_X83_Y5_N55
\i_key_ctrl_a|s_clk_cn[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add1~41_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[2][12]~3_combout\,
	ena => \i_key_ctrl_a|s_clk_cn[2][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[2][18]~q\);

-- Location: LABCELL_X85_Y5_N48
\i_key_ctrl_a|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|LessThan1~2_combout\ = ( \i_key_ctrl_a|s_clk_cn[2][17]~q\ & ( (\i_key_ctrl_a|s_clk_cn[2][15]~DUPLICATE_q\ & (\i_key_ctrl_a|s_clk_cn[2][16]~DUPLICATE_q\ & \i_key_ctrl_a|s_clk_cn[2][18]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][15]~DUPLICATE_q\,
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][16]~DUPLICATE_q\,
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][18]~q\,
	datae => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][17]~q\,
	combout => \i_key_ctrl_a|LessThan1~2_combout\);

-- Location: MLABCELL_X82_Y5_N36
\i_key_ctrl_a|LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|LessThan1~3_combout\ = ( \i_key_ctrl_a|s_clk_cn[2][14]~q\ & ( \i_key_ctrl_a|LessThan1~2_combout\ ) ) # ( !\i_key_ctrl_a|s_clk_cn[2][14]~q\ & ( \i_key_ctrl_a|LessThan1~2_combout\ & ( (\i_key_ctrl_a|s_clk_cn[2][13]~q\ & 
-- ((!\i_key_ctrl_a|LessThan1~1_combout\) # (\i_key_ctrl_a|LessThan1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001101000011011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_LessThan1~0_combout\,
	datab => \i_key_ctrl_a|ALT_INV_LessThan1~1_combout\,
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][13]~q\,
	datae => \i_key_ctrl_a|ALT_INV_s_clk_cn[2][14]~q\,
	dataf => \i_key_ctrl_a|ALT_INV_LessThan1~2_combout\,
	combout => \i_key_ctrl_a|LessThan1~3_combout\);

-- Location: LABCELL_X77_Y5_N15
\i_key_ctrl_a|s_output~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|s_output~6_combout\ = (\i_key_ctrl_a|prev_key_n_2r\(3) & (!\i_key_ctrl_a|debounce_key~q\ & (\i_key_ctrl_a|s_output\(2) & \i_key_ctrl_a|key_n_2r\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_prev_key_n_2r\(3),
	datab => \i_key_ctrl_a|ALT_INV_debounce_key~q\,
	datac => \i_key_ctrl_a|ALT_INV_s_output\(2),
	datad => \i_key_ctrl_a|ALT_INV_key_n_2r\(3),
	combout => \i_key_ctrl_a|s_output~6_combout\);

-- Location: LABCELL_X77_Y5_N48
\i_key_ctrl_a|s_output~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|s_output~7_combout\ = ( \i_key_ctrl_a|process_0~0_combout\ & ( (!\i_key_ctrl_a|LessThan1~3_combout\) # ((!\i_key_ctrl_a|key_n_2r\(2)) # (!\i_key_ctrl_a|s_output\(2))) ) ) # ( !\i_key_ctrl_a|process_0~0_combout\ & ( 
-- (!\i_key_ctrl_a|LessThan1~3_combout\ & (((\i_key_ctrl_a|s_output~6_combout\)))) # (\i_key_ctrl_a|LessThan1~3_combout\ & ((!\i_key_ctrl_a|key_n_2r\(2) & (\i_key_ctrl_a|s_output~6_combout\)) # (\i_key_ctrl_a|key_n_2r\(2) & ((!\i_key_ctrl_a|s_output\(2)))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100001110000111110000111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_LessThan1~3_combout\,
	datab => \i_key_ctrl_a|ALT_INV_key_n_2r\(2),
	datac => \i_key_ctrl_a|ALT_INV_s_output~6_combout\,
	datad => \i_key_ctrl_a|ALT_INV_s_output\(2),
	dataf => \i_key_ctrl_a|ALT_INV_process_0~0_combout\,
	combout => \i_key_ctrl_a|s_output~7_combout\);

-- Location: FF_X77_Y5_N49
\i_key_ctrl_a|s_output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|s_output~7_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_output\(2));

-- Location: MLABCELL_X84_Y6_N42
\i_serial_ctrl_a|serial_down~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_ctrl_a|serial_down~0_combout\ = ( \i_serial_ctrl_a|serial_down~q\ & ( \i_serial_uart_a|received_data\(4) & ( \i_serial_uart_a|received_data_valid~DUPLICATE_q\ ) ) ) # ( \i_serial_ctrl_a|serial_down~q\ & ( !\i_serial_uart_a|received_data\(4) & ( 
-- \i_serial_uart_a|received_data_valid~DUPLICATE_q\ ) ) ) # ( !\i_serial_ctrl_a|serial_down~q\ & ( !\i_serial_uart_a|received_data\(4) & ( (!\i_serial_uart_a|received_data\(0) & (\i_serial_uart_a|received_data_valid~DUPLICATE_q\ & 
-- \i_serial_ctrl_a|serial_up~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_received_data\(0),
	datab => \i_serial_uart_a|ALT_INV_received_data_valid~DUPLICATE_q\,
	datac => \i_serial_ctrl_a|ALT_INV_serial_up~0_combout\,
	datae => \i_serial_ctrl_a|ALT_INV_serial_down~q\,
	dataf => \i_serial_uart_a|ALT_INV_received_data\(4),
	combout => \i_serial_ctrl_a|serial_down~0_combout\);

-- Location: FF_X84_Y6_N44
\i_serial_ctrl_a|serial_down\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_ctrl_a|serial_down~0_combout\,
	sclr => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_ctrl_a|serial_down~q\);

-- Location: MLABCELL_X84_Y6_N54
\i_pwm_ctrl_a|s_pwm_dc[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|s_pwm_dc[1]~1_combout\ = ( \i_serial_ctrl_a|serial_down~q\ & ( (!\i_pwm_ctrl_a|LessThan2~0_combout\ & \i_pwm_ctrl_a|LessThan2~1_combout\) ) ) # ( !\i_serial_ctrl_a|serial_down~q\ & ( (!\i_key_ctrl_a|s_output\(2)) # 
-- ((!\i_pwm_ctrl_a|LessThan2~0_combout\ & \i_pwm_ctrl_a|LessThan2~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111100110011001111110000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_output\(2),
	datac => \i_pwm_ctrl_a|ALT_INV_LessThan2~0_combout\,
	datad => \i_pwm_ctrl_a|ALT_INV_LessThan2~1_combout\,
	dataf => \i_serial_ctrl_a|ALT_INV_serial_down~q\,
	combout => \i_pwm_ctrl_a|s_pwm_dc[1]~1_combout\);

-- Location: MLABCELL_X84_Y8_N0
\i_serial_ctrl_a|serial_off~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_ctrl_a|serial_off~0_combout\ = ( \i_serial_uart_a|received_data_valid~DUPLICATE_q\ & ( !\i_serial_uart_a|received_data\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart_a|ALT_INV_received_data\(0),
	dataf => \i_serial_uart_a|ALT_INV_received_data_valid~DUPLICATE_q\,
	combout => \i_serial_ctrl_a|serial_off~0_combout\);

-- Location: FF_X80_Y8_N38
\i_serial_uart_a|received_data_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|received_data_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|received_data_valid~q\);

-- Location: FF_X80_Y8_N17
\i_serial_uart_a|received_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \i_serial_uart_a|rx_byte_int\(5),
	sclr => \i_serial_uart_a|reset_2r~q\,
	sload => VCC,
	ena => \i_serial_uart_a|received_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|received_data\(5));

-- Location: LABCELL_X80_Y8_N15
\i_serial_ctrl_a|serial_off~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_ctrl_a|serial_off~1_combout\ = ( \i_serial_uart_a|received_data\(4) & ( (!\i_serial_uart_a|received_data\(6) & (!\i_serial_uart_a|received_data\(2) & \i_serial_uart_a|received_data\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_received_data\(6),
	datac => \i_serial_uart_a|ALT_INV_received_data\(2),
	datad => \i_serial_uart_a|ALT_INV_received_data\(5),
	dataf => \i_serial_uart_a|ALT_INV_received_data\(4),
	combout => \i_serial_ctrl_a|serial_off~1_combout\);

-- Location: LABCELL_X80_Y8_N54
\i_serial_ctrl_a|serial_off~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_ctrl_a|serial_off~2_combout\ = ( \i_serial_uart_a|received_data\(3) & ( \i_serial_ctrl_a|serial_off~1_combout\ & ( (!\create_pll:i_reset_ctrl_a|reset_out~q\) # (!\i_serial_uart_a|received_data_valid~q\) ) ) ) # ( 
-- !\i_serial_uart_a|received_data\(3) & ( \i_serial_ctrl_a|serial_off~1_combout\ & ( (!\create_pll:i_reset_ctrl_a|reset_out~q\) # ((!\i_serial_uart_a|received_data_valid~q\) # ((!\i_serial_uart_a|received_data\(1) & !\i_serial_uart_a|received_data\(7)))) ) 
-- ) ) # ( \i_serial_uart_a|received_data\(3) & ( !\i_serial_ctrl_a|serial_off~1_combout\ & ( (!\create_pll:i_reset_ctrl_a|reset_out~q\) # (!\i_serial_uart_a|received_data_valid~q\) ) ) ) # ( !\i_serial_uart_a|received_data\(3) & ( 
-- !\i_serial_ctrl_a|serial_off~1_combout\ & ( (!\create_pll:i_reset_ctrl_a|reset_out~q\) # (!\i_serial_uart_a|received_data_valid~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101011111110111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	datab => \i_serial_uart_a|ALT_INV_received_data\(1),
	datac => \i_serial_uart_a|ALT_INV_received_data_valid~q\,
	datad => \i_serial_uart_a|ALT_INV_received_data\(7),
	datae => \i_serial_uart_a|ALT_INV_received_data\(3),
	dataf => \i_serial_ctrl_a|ALT_INV_serial_off~1_combout\,
	combout => \i_serial_ctrl_a|serial_off~2_combout\);

-- Location: FF_X84_Y8_N1
\i_serial_ctrl_a|serial_off\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_ctrl_a|serial_off~0_combout\,
	sclr => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	ena => \i_serial_ctrl_a|serial_off~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_ctrl_a|serial_off~q\);

-- Location: MLABCELL_X84_Y8_N21
\i_serial_ctrl_a|serial_on~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_ctrl_a|serial_on~0_combout\ = ( \i_serial_uart_a|received_data_valid~DUPLICATE_q\ & ( \i_serial_uart_a|received_data\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart_a|ALT_INV_received_data\(0),
	dataf => \i_serial_uart_a|ALT_INV_received_data_valid~DUPLICATE_q\,
	combout => \i_serial_ctrl_a|serial_on~0_combout\);

-- Location: FF_X84_Y8_N22
\i_serial_ctrl_a|serial_on\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_ctrl_a|serial_on~0_combout\,
	sclr => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	ena => \i_serial_ctrl_a|serial_off~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_ctrl_a|serial_on~q\);

-- Location: FF_X77_Y5_N58
\i_key_ctrl_a|key_n_2r[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \i_key_ctrl_a|key_n_1r\(0),
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|key_n_2r[0]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y6_N36
\i_key_ctrl_a|s_clk_cn[0][7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\ = ( \i_key_ctrl_a|key_n_2r[0]~DUPLICATE_q\ & ( \i_key_ctrl_a|s_output~3_combout\ ) ) # ( !\i_key_ctrl_a|key_n_2r[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_output~3_combout\,
	dataf => \i_key_ctrl_a|ALT_INV_key_n_2r[0]~DUPLICATE_q\,
	combout => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\);

-- Location: FF_X74_Y6_N47
\i_key_ctrl_a|s_clk_cn[0][15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~41_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][15]~DUPLICATE_q\);

-- Location: LABCELL_X74_Y6_N0
\i_key_ctrl_a|Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add3~73_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[0][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \i_key_ctrl_a|Add3~74\ = CARRY(( \i_key_ctrl_a|s_clk_cn[0][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][0]~q\,
	cin => GND,
	sumout => \i_key_ctrl_a|Add3~73_sumout\,
	cout => \i_key_ctrl_a|Add3~74\);

-- Location: FF_X74_Y6_N2
\i_key_ctrl_a|s_clk_cn[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~73_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][0]~q\);

-- Location: LABCELL_X74_Y6_N3
\i_key_ctrl_a|Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add3~69_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[0][1]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~74\ ))
-- \i_key_ctrl_a|Add3~70\ = CARRY(( \i_key_ctrl_a|s_clk_cn[0][1]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][1]~q\,
	cin => \i_key_ctrl_a|Add3~74\,
	sumout => \i_key_ctrl_a|Add3~69_sumout\,
	cout => \i_key_ctrl_a|Add3~70\);

-- Location: FF_X74_Y6_N5
\i_key_ctrl_a|s_clk_cn[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~69_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][1]~q\);

-- Location: LABCELL_X74_Y6_N6
\i_key_ctrl_a|Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add3~65_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[0][2]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~70\ ))
-- \i_key_ctrl_a|Add3~66\ = CARRY(( \i_key_ctrl_a|s_clk_cn[0][2]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][2]~q\,
	cin => \i_key_ctrl_a|Add3~70\,
	sumout => \i_key_ctrl_a|Add3~65_sumout\,
	cout => \i_key_ctrl_a|Add3~66\);

-- Location: FF_X74_Y6_N7
\i_key_ctrl_a|s_clk_cn[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~65_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][2]~q\);

-- Location: LABCELL_X74_Y6_N9
\i_key_ctrl_a|Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add3~61_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[0][3]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~66\ ))
-- \i_key_ctrl_a|Add3~62\ = CARRY(( \i_key_ctrl_a|s_clk_cn[0][3]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][3]~q\,
	cin => \i_key_ctrl_a|Add3~66\,
	sumout => \i_key_ctrl_a|Add3~61_sumout\,
	cout => \i_key_ctrl_a|Add3~62\);

-- Location: FF_X74_Y6_N11
\i_key_ctrl_a|s_clk_cn[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~61_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][3]~q\);

-- Location: LABCELL_X74_Y6_N12
\i_key_ctrl_a|Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add3~57_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[0][4]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~62\ ))
-- \i_key_ctrl_a|Add3~58\ = CARRY(( \i_key_ctrl_a|s_clk_cn[0][4]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][4]~q\,
	cin => \i_key_ctrl_a|Add3~62\,
	sumout => \i_key_ctrl_a|Add3~57_sumout\,
	cout => \i_key_ctrl_a|Add3~58\);

-- Location: FF_X74_Y6_N14
\i_key_ctrl_a|s_clk_cn[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~57_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][4]~q\);

-- Location: LABCELL_X74_Y6_N15
\i_key_ctrl_a|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add3~17_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[0][5]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~58\ ))
-- \i_key_ctrl_a|Add3~18\ = CARRY(( \i_key_ctrl_a|s_clk_cn[0][5]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][5]~q\,
	cin => \i_key_ctrl_a|Add3~58\,
	sumout => \i_key_ctrl_a|Add3~17_sumout\,
	cout => \i_key_ctrl_a|Add3~18\);

-- Location: FF_X74_Y6_N16
\i_key_ctrl_a|s_clk_cn[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~17_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][5]~q\);

-- Location: LABCELL_X74_Y6_N18
\i_key_ctrl_a|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add3~21_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[0][6]~DUPLICATE_q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~18\ ))
-- \i_key_ctrl_a|Add3~22\ = CARRY(( \i_key_ctrl_a|s_clk_cn[0][6]~DUPLICATE_q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][6]~DUPLICATE_q\,
	cin => \i_key_ctrl_a|Add3~18\,
	sumout => \i_key_ctrl_a|Add3~21_sumout\,
	cout => \i_key_ctrl_a|Add3~22\);

-- Location: FF_X74_Y6_N20
\i_key_ctrl_a|s_clk_cn[0][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~21_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][6]~DUPLICATE_q\);

-- Location: LABCELL_X74_Y6_N21
\i_key_ctrl_a|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add3~13_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[0][7]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~22\ ))
-- \i_key_ctrl_a|Add3~14\ = CARRY(( \i_key_ctrl_a|s_clk_cn[0][7]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][7]~q\,
	cin => \i_key_ctrl_a|Add3~22\,
	sumout => \i_key_ctrl_a|Add3~13_sumout\,
	cout => \i_key_ctrl_a|Add3~14\);

-- Location: FF_X74_Y6_N22
\i_key_ctrl_a|s_clk_cn[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~13_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][7]~q\);

-- Location: LABCELL_X74_Y6_N24
\i_key_ctrl_a|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add3~9_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[0][8]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~14\ ))
-- \i_key_ctrl_a|Add3~10\ = CARRY(( \i_key_ctrl_a|s_clk_cn[0][8]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][8]~q\,
	cin => \i_key_ctrl_a|Add3~14\,
	sumout => \i_key_ctrl_a|Add3~9_sumout\,
	cout => \i_key_ctrl_a|Add3~10\);

-- Location: FF_X74_Y6_N25
\i_key_ctrl_a|s_clk_cn[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~9_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][8]~q\);

-- Location: LABCELL_X74_Y6_N27
\i_key_ctrl_a|Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add3~37_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[0][9]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~10\ ))
-- \i_key_ctrl_a|Add3~38\ = CARRY(( \i_key_ctrl_a|s_clk_cn[0][9]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][9]~q\,
	cin => \i_key_ctrl_a|Add3~10\,
	sumout => \i_key_ctrl_a|Add3~37_sumout\,
	cout => \i_key_ctrl_a|Add3~38\);

-- Location: FF_X74_Y6_N28
\i_key_ctrl_a|s_clk_cn[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~37_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][9]~q\);

-- Location: LABCELL_X74_Y6_N30
\i_key_ctrl_a|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add3~33_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[0][10]~DUPLICATE_q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~38\ ))
-- \i_key_ctrl_a|Add3~34\ = CARRY(( \i_key_ctrl_a|s_clk_cn[0][10]~DUPLICATE_q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][10]~DUPLICATE_q\,
	cin => \i_key_ctrl_a|Add3~38\,
	sumout => \i_key_ctrl_a|Add3~33_sumout\,
	cout => \i_key_ctrl_a|Add3~34\);

-- Location: FF_X74_Y6_N32
\i_key_ctrl_a|s_clk_cn[0][10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~33_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][10]~DUPLICATE_q\);

-- Location: LABCELL_X74_Y6_N33
\i_key_ctrl_a|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add3~25_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[0][11]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~34\ ))
-- \i_key_ctrl_a|Add3~26\ = CARRY(( \i_key_ctrl_a|s_clk_cn[0][11]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][11]~q\,
	cin => \i_key_ctrl_a|Add3~34\,
	sumout => \i_key_ctrl_a|Add3~25_sumout\,
	cout => \i_key_ctrl_a|Add3~26\);

-- Location: FF_X74_Y6_N35
\i_key_ctrl_a|s_clk_cn[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~25_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][11]~q\);

-- Location: LABCELL_X74_Y6_N36
\i_key_ctrl_a|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add3~29_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[0][12]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~26\ ))
-- \i_key_ctrl_a|Add3~30\ = CARRY(( \i_key_ctrl_a|s_clk_cn[0][12]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][12]~q\,
	cin => \i_key_ctrl_a|Add3~26\,
	sumout => \i_key_ctrl_a|Add3~29_sumout\,
	cout => \i_key_ctrl_a|Add3~30\);

-- Location: FF_X74_Y6_N38
\i_key_ctrl_a|s_clk_cn[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~29_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][12]~q\);

-- Location: LABCELL_X74_Y6_N39
\i_key_ctrl_a|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add3~5_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[0][13]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~30\ ))
-- \i_key_ctrl_a|Add3~6\ = CARRY(( \i_key_ctrl_a|s_clk_cn[0][13]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][13]~q\,
	cin => \i_key_ctrl_a|Add3~30\,
	sumout => \i_key_ctrl_a|Add3~5_sumout\,
	cout => \i_key_ctrl_a|Add3~6\);

-- Location: FF_X74_Y6_N41
\i_key_ctrl_a|s_clk_cn[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~5_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][13]~q\);

-- Location: LABCELL_X74_Y6_N42
\i_key_ctrl_a|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add3~1_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[0][14]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~6\ ))
-- \i_key_ctrl_a|Add3~2\ = CARRY(( \i_key_ctrl_a|s_clk_cn[0][14]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][14]~q\,
	cin => \i_key_ctrl_a|Add3~6\,
	sumout => \i_key_ctrl_a|Add3~1_sumout\,
	cout => \i_key_ctrl_a|Add3~2\);

-- Location: FF_X74_Y6_N43
\i_key_ctrl_a|s_clk_cn[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~1_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][14]~q\);

-- Location: LABCELL_X74_Y6_N45
\i_key_ctrl_a|Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add3~41_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[0][15]~DUPLICATE_q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~2\ ))
-- \i_key_ctrl_a|Add3~42\ = CARRY(( \i_key_ctrl_a|s_clk_cn[0][15]~DUPLICATE_q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][15]~DUPLICATE_q\,
	cin => \i_key_ctrl_a|Add3~2\,
	sumout => \i_key_ctrl_a|Add3~41_sumout\,
	cout => \i_key_ctrl_a|Add3~42\);

-- Location: FF_X74_Y6_N46
\i_key_ctrl_a|s_clk_cn[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~41_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][15]~q\);

-- Location: LABCELL_X74_Y6_N48
\i_key_ctrl_a|Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add3~45_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[0][16]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~42\ ))
-- \i_key_ctrl_a|Add3~46\ = CARRY(( \i_key_ctrl_a|s_clk_cn[0][16]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][16]~q\,
	cin => \i_key_ctrl_a|Add3~42\,
	sumout => \i_key_ctrl_a|Add3~45_sumout\,
	cout => \i_key_ctrl_a|Add3~46\);

-- Location: FF_X74_Y6_N49
\i_key_ctrl_a|s_clk_cn[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~45_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][16]~q\);

-- Location: LABCELL_X74_Y6_N51
\i_key_ctrl_a|Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add3~49_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[0][17]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~46\ ))
-- \i_key_ctrl_a|Add3~50\ = CARRY(( \i_key_ctrl_a|s_clk_cn[0][17]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][17]~q\,
	cin => \i_key_ctrl_a|Add3~46\,
	sumout => \i_key_ctrl_a|Add3~49_sumout\,
	cout => \i_key_ctrl_a|Add3~50\);

-- Location: FF_X74_Y6_N53
\i_key_ctrl_a|s_clk_cn[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~49_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][17]~q\);

-- Location: LABCELL_X74_Y6_N54
\i_key_ctrl_a|Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add3~53_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[0][18]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][18]~q\,
	cin => \i_key_ctrl_a|Add3~50\,
	sumout => \i_key_ctrl_a|Add3~53_sumout\);

-- Location: FF_X74_Y6_N55
\i_key_ctrl_a|s_clk_cn[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~53_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][18]~q\);

-- Location: LABCELL_X75_Y6_N33
\i_key_ctrl_a|s_output~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|s_output~2_combout\ = ( \i_key_ctrl_a|s_clk_cn[0][18]~q\ & ( (\i_key_ctrl_a|s_clk_cn[0][15]~q\ & (\i_key_ctrl_a|s_clk_cn[0][16]~q\ & \i_key_ctrl_a|s_clk_cn[0][17]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][15]~q\,
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][16]~q\,
	datad => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][17]~q\,
	dataf => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][18]~q\,
	combout => \i_key_ctrl_a|s_output~2_combout\);

-- Location: FF_X74_Y6_N34
\i_key_ctrl_a|s_clk_cn[0][11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~25_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][11]~DUPLICATE_q\);

-- Location: FF_X74_Y6_N31
\i_key_ctrl_a|s_clk_cn[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~33_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][10]~q\);

-- Location: FF_X74_Y6_N37
\i_key_ctrl_a|s_clk_cn[0][12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~29_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][12]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y6_N30
\i_key_ctrl_a|s_output~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|s_output~1_combout\ = ( !\i_key_ctrl_a|s_clk_cn[0][12]~DUPLICATE_q\ & ( (!\i_key_ctrl_a|s_clk_cn[0][11]~DUPLICATE_q\ & (!\i_key_ctrl_a|s_clk_cn[0][10]~q\ & !\i_key_ctrl_a|s_clk_cn[0][9]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][11]~DUPLICATE_q\,
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][10]~q\,
	datad => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][9]~q\,
	dataf => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][12]~DUPLICATE_q\,
	combout => \i_key_ctrl_a|s_output~1_combout\);

-- Location: FF_X74_Y6_N40
\i_key_ctrl_a|s_clk_cn[0][13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~5_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][13]~DUPLICATE_q\);

-- Location: FF_X74_Y6_N19
\i_key_ctrl_a|s_clk_cn[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add3~21_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[0][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[0][6]~q\);

-- Location: LABCELL_X75_Y6_N51
\i_key_ctrl_a|s_output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|s_output~0_combout\ = ( \i_key_ctrl_a|s_clk_cn[0][7]~q\ & ( \i_key_ctrl_a|s_clk_cn[0][5]~q\ & ( \i_key_ctrl_a|s_clk_cn[0][8]~q\ ) ) ) # ( !\i_key_ctrl_a|s_clk_cn[0][7]~q\ & ( \i_key_ctrl_a|s_clk_cn[0][5]~q\ & ( 
-- \i_key_ctrl_a|s_clk_cn[0][8]~q\ ) ) ) # ( \i_key_ctrl_a|s_clk_cn[0][7]~q\ & ( !\i_key_ctrl_a|s_clk_cn[0][5]~q\ & ( \i_key_ctrl_a|s_clk_cn[0][8]~q\ ) ) ) # ( !\i_key_ctrl_a|s_clk_cn[0][7]~q\ & ( !\i_key_ctrl_a|s_clk_cn[0][5]~q\ & ( 
-- (\i_key_ctrl_a|s_clk_cn[0][8]~q\ & \i_key_ctrl_a|s_clk_cn[0][6]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][8]~q\,
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][6]~q\,
	datae => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][7]~q\,
	dataf => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][5]~q\,
	combout => \i_key_ctrl_a|s_output~0_combout\);

-- Location: LABCELL_X75_Y6_N24
\i_key_ctrl_a|s_output~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|s_output~3_combout\ = ( \i_key_ctrl_a|s_clk_cn[0][14]~q\ & ( \i_key_ctrl_a|s_output~0_combout\ & ( \i_key_ctrl_a|s_output~2_combout\ ) ) ) # ( !\i_key_ctrl_a|s_clk_cn[0][14]~q\ & ( \i_key_ctrl_a|s_output~0_combout\ & ( 
-- (\i_key_ctrl_a|s_output~2_combout\ & \i_key_ctrl_a|s_clk_cn[0][13]~DUPLICATE_q\) ) ) ) # ( \i_key_ctrl_a|s_clk_cn[0][14]~q\ & ( !\i_key_ctrl_a|s_output~0_combout\ & ( \i_key_ctrl_a|s_output~2_combout\ ) ) ) # ( !\i_key_ctrl_a|s_clk_cn[0][14]~q\ & ( 
-- !\i_key_ctrl_a|s_output~0_combout\ & ( (\i_key_ctrl_a|s_output~2_combout\ & (!\i_key_ctrl_a|s_output~1_combout\ & \i_key_ctrl_a|s_clk_cn[0][13]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100010101010101010100000101000001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_output~2_combout\,
	datab => \i_key_ctrl_a|ALT_INV_s_output~1_combout\,
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][13]~DUPLICATE_q\,
	datae => \i_key_ctrl_a|ALT_INV_s_clk_cn[0][14]~q\,
	dataf => \i_key_ctrl_a|ALT_INV_s_output~0_combout\,
	combout => \i_key_ctrl_a|s_output~3_combout\);

-- Location: LABCELL_X77_Y5_N36
\i_key_ctrl_a|s_output~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|s_output~4_combout\ = ( \i_key_ctrl_a|key_n_2r\(0) & ( (!\i_key_ctrl_a|s_output~3_combout\ & (!\i_key_ctrl_a|debounce_key~q\)) # (\i_key_ctrl_a|s_output~3_combout\ & ((!\i_key_ctrl_a|s_output\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001111110000001100111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_debounce_key~q\,
	datac => \i_key_ctrl_a|ALT_INV_s_output~3_combout\,
	datad => \i_key_ctrl_a|ALT_INV_s_output\(0),
	dataf => \i_key_ctrl_a|ALT_INV_key_n_2r\(0),
	combout => \i_key_ctrl_a|s_output~4_combout\);

-- Location: FF_X77_Y5_N37
\i_key_ctrl_a|s_output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|s_output~4_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_output\(0));

-- Location: MLABCELL_X78_Y5_N0
\i_key_ctrl_a|Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add2~73_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[1][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \i_key_ctrl_a|Add2~74\ = CARRY(( \i_key_ctrl_a|s_clk_cn[1][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][0]~q\,
	cin => GND,
	sumout => \i_key_ctrl_a|Add2~73_sumout\,
	cout => \i_key_ctrl_a|Add2~74\);

-- Location: LABCELL_X77_Y5_N24
\i_key_ctrl_a|s_clk_cn[1][5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|s_clk_cn[1][5]~5_combout\ = ( \i_key_ctrl_a|s_output~11_combout\ ) # ( !\i_key_ctrl_a|s_output~11_combout\ & ( !\i_key_ctrl_a|key_n_2r\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_key_ctrl_a|ALT_INV_key_n_2r\(1),
	dataf => \i_key_ctrl_a|ALT_INV_s_output~11_combout\,
	combout => \i_key_ctrl_a|s_clk_cn[1][5]~5_combout\);

-- Location: FF_X78_Y5_N2
\i_key_ctrl_a|s_clk_cn[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add2~73_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[1][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[1][0]~q\);

-- Location: MLABCELL_X78_Y5_N3
\i_key_ctrl_a|Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add2~69_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[1][1]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~74\ ))
-- \i_key_ctrl_a|Add2~70\ = CARRY(( \i_key_ctrl_a|s_clk_cn[1][1]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][1]~q\,
	cin => \i_key_ctrl_a|Add2~74\,
	sumout => \i_key_ctrl_a|Add2~69_sumout\,
	cout => \i_key_ctrl_a|Add2~70\);

-- Location: FF_X78_Y5_N5
\i_key_ctrl_a|s_clk_cn[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add2~69_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[1][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[1][1]~q\);

-- Location: MLABCELL_X78_Y5_N6
\i_key_ctrl_a|Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add2~65_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[1][2]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~70\ ))
-- \i_key_ctrl_a|Add2~66\ = CARRY(( \i_key_ctrl_a|s_clk_cn[1][2]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][2]~q\,
	cin => \i_key_ctrl_a|Add2~70\,
	sumout => \i_key_ctrl_a|Add2~65_sumout\,
	cout => \i_key_ctrl_a|Add2~66\);

-- Location: FF_X78_Y5_N7
\i_key_ctrl_a|s_clk_cn[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add2~65_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[1][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[1][2]~q\);

-- Location: MLABCELL_X78_Y5_N9
\i_key_ctrl_a|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add2~61_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[1][3]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~66\ ))
-- \i_key_ctrl_a|Add2~62\ = CARRY(( \i_key_ctrl_a|s_clk_cn[1][3]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][3]~q\,
	cin => \i_key_ctrl_a|Add2~66\,
	sumout => \i_key_ctrl_a|Add2~61_sumout\,
	cout => \i_key_ctrl_a|Add2~62\);

-- Location: FF_X78_Y5_N11
\i_key_ctrl_a|s_clk_cn[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add2~61_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[1][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[1][3]~q\);

-- Location: MLABCELL_X78_Y5_N12
\i_key_ctrl_a|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add2~57_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[1][4]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~62\ ))
-- \i_key_ctrl_a|Add2~58\ = CARRY(( \i_key_ctrl_a|s_clk_cn[1][4]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][4]~q\,
	cin => \i_key_ctrl_a|Add2~62\,
	sumout => \i_key_ctrl_a|Add2~57_sumout\,
	cout => \i_key_ctrl_a|Add2~58\);

-- Location: FF_X78_Y5_N14
\i_key_ctrl_a|s_clk_cn[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add2~57_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[1][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[1][4]~q\);

-- Location: MLABCELL_X78_Y5_N15
\i_key_ctrl_a|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add2~13_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[1][5]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~58\ ))
-- \i_key_ctrl_a|Add2~14\ = CARRY(( \i_key_ctrl_a|s_clk_cn[1][5]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][5]~q\,
	cin => \i_key_ctrl_a|Add2~58\,
	sumout => \i_key_ctrl_a|Add2~13_sumout\,
	cout => \i_key_ctrl_a|Add2~14\);

-- Location: FF_X78_Y5_N16
\i_key_ctrl_a|s_clk_cn[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add2~13_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[1][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[1][5]~q\);

-- Location: MLABCELL_X78_Y5_N18
\i_key_ctrl_a|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add2~17_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[1][6]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~14\ ))
-- \i_key_ctrl_a|Add2~18\ = CARRY(( \i_key_ctrl_a|s_clk_cn[1][6]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][6]~q\,
	cin => \i_key_ctrl_a|Add2~14\,
	sumout => \i_key_ctrl_a|Add2~17_sumout\,
	cout => \i_key_ctrl_a|Add2~18\);

-- Location: FF_X78_Y5_N20
\i_key_ctrl_a|s_clk_cn[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add2~17_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[1][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[1][6]~q\);

-- Location: MLABCELL_X78_Y5_N21
\i_key_ctrl_a|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add2~21_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[1][7]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~18\ ))
-- \i_key_ctrl_a|Add2~22\ = CARRY(( \i_key_ctrl_a|s_clk_cn[1][7]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][7]~q\,
	cin => \i_key_ctrl_a|Add2~18\,
	sumout => \i_key_ctrl_a|Add2~21_sumout\,
	cout => \i_key_ctrl_a|Add2~22\);

-- Location: FF_X78_Y5_N22
\i_key_ctrl_a|s_clk_cn[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add2~21_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[1][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[1][7]~q\);

-- Location: MLABCELL_X78_Y5_N24
\i_key_ctrl_a|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add2~9_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[1][8]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~22\ ))
-- \i_key_ctrl_a|Add2~10\ = CARRY(( \i_key_ctrl_a|s_clk_cn[1][8]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][8]~q\,
	cin => \i_key_ctrl_a|Add2~22\,
	sumout => \i_key_ctrl_a|Add2~9_sumout\,
	cout => \i_key_ctrl_a|Add2~10\);

-- Location: FF_X78_Y5_N25
\i_key_ctrl_a|s_clk_cn[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add2~9_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[1][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[1][8]~q\);

-- Location: MLABCELL_X78_Y5_N27
\i_key_ctrl_a|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add2~25_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[1][9]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~10\ ))
-- \i_key_ctrl_a|Add2~26\ = CARRY(( \i_key_ctrl_a|s_clk_cn[1][9]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][9]~q\,
	cin => \i_key_ctrl_a|Add2~10\,
	sumout => \i_key_ctrl_a|Add2~25_sumout\,
	cout => \i_key_ctrl_a|Add2~26\);

-- Location: FF_X78_Y5_N28
\i_key_ctrl_a|s_clk_cn[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add2~25_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[1][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[1][9]~q\);

-- Location: MLABCELL_X78_Y5_N30
\i_key_ctrl_a|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add2~29_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[1][10]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~26\ ))
-- \i_key_ctrl_a|Add2~30\ = CARRY(( \i_key_ctrl_a|s_clk_cn[1][10]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][10]~q\,
	cin => \i_key_ctrl_a|Add2~26\,
	sumout => \i_key_ctrl_a|Add2~29_sumout\,
	cout => \i_key_ctrl_a|Add2~30\);

-- Location: FF_X78_Y5_N32
\i_key_ctrl_a|s_clk_cn[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add2~29_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[1][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[1][10]~q\);

-- Location: MLABCELL_X78_Y5_N33
\i_key_ctrl_a|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add2~33_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[1][11]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~30\ ))
-- \i_key_ctrl_a|Add2~34\ = CARRY(( \i_key_ctrl_a|s_clk_cn[1][11]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][11]~q\,
	cin => \i_key_ctrl_a|Add2~30\,
	sumout => \i_key_ctrl_a|Add2~33_sumout\,
	cout => \i_key_ctrl_a|Add2~34\);

-- Location: FF_X78_Y5_N34
\i_key_ctrl_a|s_clk_cn[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add2~33_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[1][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[1][11]~q\);

-- Location: MLABCELL_X78_Y5_N36
\i_key_ctrl_a|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add2~37_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[1][12]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~34\ ))
-- \i_key_ctrl_a|Add2~38\ = CARRY(( \i_key_ctrl_a|s_clk_cn[1][12]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][12]~q\,
	cin => \i_key_ctrl_a|Add2~34\,
	sumout => \i_key_ctrl_a|Add2~37_sumout\,
	cout => \i_key_ctrl_a|Add2~38\);

-- Location: FF_X78_Y5_N37
\i_key_ctrl_a|s_clk_cn[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add2~37_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[1][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[1][12]~q\);

-- Location: MLABCELL_X78_Y5_N39
\i_key_ctrl_a|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add2~5_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[1][13]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~38\ ))
-- \i_key_ctrl_a|Add2~6\ = CARRY(( \i_key_ctrl_a|s_clk_cn[1][13]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][13]~q\,
	cin => \i_key_ctrl_a|Add2~38\,
	sumout => \i_key_ctrl_a|Add2~5_sumout\,
	cout => \i_key_ctrl_a|Add2~6\);

-- Location: FF_X78_Y5_N41
\i_key_ctrl_a|s_clk_cn[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add2~5_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[1][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[1][13]~q\);

-- Location: MLABCELL_X78_Y5_N42
\i_key_ctrl_a|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add2~1_sumout\ = SUM(( GND ) + ( \i_key_ctrl_a|s_clk_cn[1][14]~q\ ) + ( \i_key_ctrl_a|Add2~6\ ))
-- \i_key_ctrl_a|Add2~2\ = CARRY(( GND ) + ( \i_key_ctrl_a|s_clk_cn[1][14]~q\ ) + ( \i_key_ctrl_a|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][14]~q\,
	cin => \i_key_ctrl_a|Add2~6\,
	sumout => \i_key_ctrl_a|Add2~1_sumout\,
	cout => \i_key_ctrl_a|Add2~2\);

-- Location: FF_X78_Y5_N44
\i_key_ctrl_a|s_clk_cn[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add2~1_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[1][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[1][14]~q\);

-- Location: LABCELL_X77_Y5_N9
\i_key_ctrl_a|s_output~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|s_output~9_combout\ = ( !\i_key_ctrl_a|s_clk_cn[1][12]~q\ & ( (!\i_key_ctrl_a|s_clk_cn[1][10]~q\ & (!\i_key_ctrl_a|s_clk_cn[1][11]~q\ & !\i_key_ctrl_a|s_clk_cn[1][9]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][10]~q\,
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][11]~q\,
	datad => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][9]~q\,
	dataf => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][12]~q\,
	combout => \i_key_ctrl_a|s_output~9_combout\);

-- Location: MLABCELL_X78_Y5_N45
\i_key_ctrl_a|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add2~41_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[1][15]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~2\ ))
-- \i_key_ctrl_a|Add2~42\ = CARRY(( \i_key_ctrl_a|s_clk_cn[1][15]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][15]~q\,
	cin => \i_key_ctrl_a|Add2~2\,
	sumout => \i_key_ctrl_a|Add2~41_sumout\,
	cout => \i_key_ctrl_a|Add2~42\);

-- Location: FF_X78_Y5_N47
\i_key_ctrl_a|s_clk_cn[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add2~41_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[1][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[1][15]~q\);

-- Location: MLABCELL_X78_Y5_N48
\i_key_ctrl_a|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add2~45_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[1][16]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~42\ ))
-- \i_key_ctrl_a|Add2~46\ = CARRY(( \i_key_ctrl_a|s_clk_cn[1][16]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][16]~q\,
	cin => \i_key_ctrl_a|Add2~42\,
	sumout => \i_key_ctrl_a|Add2~45_sumout\,
	cout => \i_key_ctrl_a|Add2~46\);

-- Location: FF_X78_Y5_N49
\i_key_ctrl_a|s_clk_cn[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add2~45_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[1][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[1][16]~q\);

-- Location: MLABCELL_X78_Y5_N51
\i_key_ctrl_a|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add2~49_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[1][17]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~46\ ))
-- \i_key_ctrl_a|Add2~50\ = CARRY(( \i_key_ctrl_a|s_clk_cn[1][17]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][17]~q\,
	cin => \i_key_ctrl_a|Add2~46\,
	sumout => \i_key_ctrl_a|Add2~49_sumout\,
	cout => \i_key_ctrl_a|Add2~50\);

-- Location: FF_X78_Y5_N53
\i_key_ctrl_a|s_clk_cn[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add2~49_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[1][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[1][17]~q\);

-- Location: MLABCELL_X78_Y5_N54
\i_key_ctrl_a|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|Add2~53_sumout\ = SUM(( \i_key_ctrl_a|s_clk_cn[1][18]~q\ ) + ( GND ) + ( \i_key_ctrl_a|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][18]~q\,
	cin => \i_key_ctrl_a|Add2~50\,
	sumout => \i_key_ctrl_a|Add2~53_sumout\);

-- Location: FF_X78_Y5_N55
\i_key_ctrl_a|s_clk_cn[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add2~53_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[1][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[1][18]~q\);

-- Location: LABCELL_X77_Y5_N6
\i_key_ctrl_a|s_output~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|s_output~10_combout\ = ( \i_key_ctrl_a|s_clk_cn[1][15]~q\ & ( (\i_key_ctrl_a|s_clk_cn[1][16]~q\ & (\i_key_ctrl_a|s_clk_cn[1][17]~q\ & \i_key_ctrl_a|s_clk_cn[1][18]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][16]~q\,
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][17]~q\,
	datad => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][18]~q\,
	dataf => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][15]~q\,
	combout => \i_key_ctrl_a|s_output~10_combout\);

-- Location: FF_X78_Y5_N19
\i_key_ctrl_a|s_clk_cn[1][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|Add2~17_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_key_ctrl_a|s_clk_cn[1][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_clk_cn[1][6]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y5_N3
\i_key_ctrl_a|s_output~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|s_output~8_combout\ = ( \i_key_ctrl_a|s_clk_cn[1][5]~q\ & ( \i_key_ctrl_a|s_clk_cn[1][8]~q\ ) ) # ( !\i_key_ctrl_a|s_clk_cn[1][5]~q\ & ( (\i_key_ctrl_a|s_clk_cn[1][8]~q\ & ((\i_key_ctrl_a|s_clk_cn[1][6]~DUPLICATE_q\) # 
-- (\i_key_ctrl_a|s_clk_cn[1][7]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011001100110011001100010011000100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][7]~q\,
	datab => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][8]~q\,
	datac => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][6]~DUPLICATE_q\,
	datae => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][5]~q\,
	combout => \i_key_ctrl_a|s_output~8_combout\);

-- Location: LABCELL_X77_Y5_N27
\i_key_ctrl_a|s_output~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|s_output~11_combout\ = ( \i_key_ctrl_a|s_clk_cn[1][13]~q\ & ( (\i_key_ctrl_a|s_output~10_combout\ & (((!\i_key_ctrl_a|s_output~9_combout\) # (\i_key_ctrl_a|s_output~8_combout\)) # (\i_key_ctrl_a|s_clk_cn[1][14]~q\))) ) ) # ( 
-- !\i_key_ctrl_a|s_clk_cn[1][13]~q\ & ( (\i_key_ctrl_a|s_clk_cn[1][14]~q\ & \i_key_ctrl_a|s_output~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001101000011110000110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][14]~q\,
	datab => \i_key_ctrl_a|ALT_INV_s_output~9_combout\,
	datac => \i_key_ctrl_a|ALT_INV_s_output~10_combout\,
	datad => \i_key_ctrl_a|ALT_INV_s_output~8_combout\,
	dataf => \i_key_ctrl_a|ALT_INV_s_clk_cn[1][13]~q\,
	combout => \i_key_ctrl_a|s_output~11_combout\);

-- Location: LABCELL_X77_Y5_N39
\i_key_ctrl_a|s_output~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_key_ctrl_a|s_output~12_combout\ = ( \i_key_ctrl_a|s_output~11_combout\ & ( (\i_key_ctrl_a|key_n_2r\(1) & !\i_key_ctrl_a|s_output\(1)) ) ) # ( !\i_key_ctrl_a|s_output~11_combout\ & ( (\i_key_ctrl_a|key_n_2r\(1) & !\i_key_ctrl_a|debounce_key~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_key_n_2r\(1),
	datab => \i_key_ctrl_a|ALT_INV_debounce_key~q\,
	datad => \i_key_ctrl_a|ALT_INV_s_output\(1),
	dataf => \i_key_ctrl_a|ALT_INV_s_output~11_combout\,
	combout => \i_key_ctrl_a|s_output~12_combout\);

-- Location: FF_X77_Y5_N40
\i_key_ctrl_a|s_output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_key_ctrl_a|s_output~12_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_key_ctrl_a|s_output\(1));

-- Location: MLABCELL_X84_Y6_N51
\i_pwm_ctrl_a|process_2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|process_2~1_combout\ = ( !\i_key_ctrl_a|s_output\(3) & ( (!\i_key_ctrl_a|s_output\(1) & !\i_key_ctrl_a|s_output\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_output\(1),
	datac => \i_key_ctrl_a|ALT_INV_s_output\(2),
	dataf => \i_key_ctrl_a|ALT_INV_s_output\(3),
	combout => \i_pwm_ctrl_a|process_2~1_combout\);

-- Location: MLABCELL_X84_Y6_N21
\i_pwm_ctrl_a|process_2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|process_2~2_combout\ = ( \i_serial_ctrl_a|serial_up~q\ & ( \i_serial_ctrl_a|serial_down~q\ ) ) # ( !\i_serial_ctrl_a|serial_up~q\ & ( \i_serial_ctrl_a|serial_down~q\ ) ) # ( \i_serial_ctrl_a|serial_up~q\ & ( !\i_serial_ctrl_a|serial_down~q\ 
-- ) ) # ( !\i_serial_ctrl_a|serial_up~q\ & ( !\i_serial_ctrl_a|serial_down~q\ & ( (((!\i_pwm_ctrl_a|process_2~1_combout\) # (\i_key_ctrl_a|s_output\(0))) # (\i_serial_ctrl_a|serial_on~q\)) # (\i_serial_ctrl_a|serial_off~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_ctrl_a|ALT_INV_serial_off~q\,
	datab => \i_serial_ctrl_a|ALT_INV_serial_on~q\,
	datac => \i_key_ctrl_a|ALT_INV_s_output\(0),
	datad => \i_pwm_ctrl_a|ALT_INV_process_2~1_combout\,
	datae => \i_serial_ctrl_a|ALT_INV_serial_up~q\,
	dataf => \i_serial_ctrl_a|ALT_INV_serial_down~q\,
	combout => \i_pwm_ctrl_a|process_2~2_combout\);

-- Location: MLABCELL_X82_Y6_N45
\i_pwm_ctrl_a|s_pwm_dc[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|s_pwm_dc[1]~2_combout\ = ( \i_key_ctrl_a|s_output\(3) & ( (\i_pwm_ctrl_a|process_2~2_combout\ & ((!\i_pwm_ctrl_a|LessThan3~2_combout\) # (!\i_pwm_ctrl_a|s_pwm_dc[1]~1_combout\))) ) ) # ( !\i_key_ctrl_a|s_output\(3) & ( 
-- (\i_pwm_ctrl_a|process_2~2_combout\ & ((!\i_pwm_ctrl_a|s_pwm_dc[1]~1_combout\) # ((!\i_pwm_ctrl_a|LessThan3~2_combout\ & \i_serial_ctrl_a|serial_up~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110010000000001111001000000000111110100000000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_LessThan3~2_combout\,
	datab => \i_serial_ctrl_a|ALT_INV_serial_up~q\,
	datac => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc[1]~1_combout\,
	datad => \i_pwm_ctrl_a|ALT_INV_process_2~2_combout\,
	dataf => \i_key_ctrl_a|ALT_INV_s_output\(3),
	combout => \i_pwm_ctrl_a|s_pwm_dc[1]~2_combout\);

-- Location: FF_X82_Y6_N25
\i_pwm_ctrl_a|s_pwm_dc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|s_pwm_dc~0_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_pwm_dc[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_pwm_dc\(0));

-- Location: MLABCELL_X82_Y6_N3
\i_pwm_ctrl_a|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Add1~5_sumout\ = SUM(( \i_pwm_ctrl_a|s_pwm_dc\(1) ) + ( ((!\i_key_ctrl_a|s_output\(3) & ((!\i_serial_ctrl_a|serial_up~q\) # (\i_pwm_ctrl_a|process_2~3_combout\)))) # (\i_pwm_ctrl_a|LessThan3~2_combout\) ) + ( \i_pwm_ctrl_a|Add1~2\ ))
-- \i_pwm_ctrl_a|Add1~6\ = CARRY(( \i_pwm_ctrl_a|s_pwm_dc\(1) ) + ( ((!\i_key_ctrl_a|s_output\(3) & ((!\i_serial_ctrl_a|serial_up~q\) # (\i_pwm_ctrl_a|process_2~3_combout\)))) # (\i_pwm_ctrl_a|LessThan3~2_combout\) ) + ( \i_pwm_ctrl_a|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001011110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_process_2~3_combout\,
	datab => \i_serial_ctrl_a|ALT_INV_serial_up~q\,
	datac => \i_key_ctrl_a|ALT_INV_s_output\(3),
	datad => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(1),
	dataf => \i_pwm_ctrl_a|ALT_INV_LessThan3~2_combout\,
	cin => \i_pwm_ctrl_a|Add1~2\,
	sumout => \i_pwm_ctrl_a|Add1~5_sumout\,
	cout => \i_pwm_ctrl_a|Add1~6\);

-- Location: MLABCELL_X82_Y6_N6
\i_pwm_ctrl_a|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Add1~9_sumout\ = SUM(( ((!\i_key_ctrl_a|s_output\(3) & ((!\i_serial_ctrl_a|serial_up~q\) # (\i_pwm_ctrl_a|process_2~3_combout\)))) # (\i_pwm_ctrl_a|LessThan3~2_combout\) ) + ( !\i_pwm_ctrl_a|s_pwm_dc\(2) ) + ( \i_pwm_ctrl_a|Add1~6\ ))
-- \i_pwm_ctrl_a|Add1~10\ = CARRY(( ((!\i_key_ctrl_a|s_output\(3) & ((!\i_serial_ctrl_a|serial_up~q\) # (\i_pwm_ctrl_a|process_2~3_combout\)))) # (\i_pwm_ctrl_a|LessThan3~2_combout\) ) + ( !\i_pwm_ctrl_a|s_pwm_dc\(2) ) + ( \i_pwm_ctrl_a|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_LessThan3~2_combout\,
	datab => \i_serial_ctrl_a|ALT_INV_serial_up~q\,
	datac => \i_key_ctrl_a|ALT_INV_s_output\(3),
	datad => \i_pwm_ctrl_a|ALT_INV_process_2~3_combout\,
	dataf => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(2),
	cin => \i_pwm_ctrl_a|Add1~6\,
	sumout => \i_pwm_ctrl_a|Add1~9_sumout\,
	cout => \i_pwm_ctrl_a|Add1~10\);

-- Location: LABCELL_X81_Y6_N36
\i_pwm_ctrl_a|s_pwm_dc~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|s_pwm_dc~4_combout\ = (!\i_pwm_ctrl_a|Add1~9_sumout\) # (\i_pwm_ctrl_a|s_isEnabled~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~2_combout\,
	datac => \i_pwm_ctrl_a|ALT_INV_Add1~9_sumout\,
	combout => \i_pwm_ctrl_a|s_pwm_dc~4_combout\);

-- Location: FF_X81_Y6_N37
\i_pwm_ctrl_a|s_pwm_dc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|s_pwm_dc~4_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_pwm_dc[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_pwm_dc\(2));

-- Location: MLABCELL_X82_Y6_N9
\i_pwm_ctrl_a|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Add1~13_sumout\ = SUM(( ((!\i_key_ctrl_a|s_output\(3) & ((!\i_serial_ctrl_a|serial_up~q\) # (\i_pwm_ctrl_a|process_2~3_combout\)))) # (\i_pwm_ctrl_a|LessThan3~2_combout\) ) + ( \i_pwm_ctrl_a|s_pwm_dc\(3) ) + ( \i_pwm_ctrl_a|Add1~10\ ))
-- \i_pwm_ctrl_a|Add1~14\ = CARRY(( ((!\i_key_ctrl_a|s_output\(3) & ((!\i_serial_ctrl_a|serial_up~q\) # (\i_pwm_ctrl_a|process_2~3_combout\)))) # (\i_pwm_ctrl_a|LessThan3~2_combout\) ) + ( \i_pwm_ctrl_a|s_pwm_dc\(3) ) + ( \i_pwm_ctrl_a|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_LessThan3~2_combout\,
	datab => \i_serial_ctrl_a|ALT_INV_serial_up~q\,
	datac => \i_key_ctrl_a|ALT_INV_s_output\(3),
	datad => \i_pwm_ctrl_a|ALT_INV_process_2~3_combout\,
	dataf => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(3),
	cin => \i_pwm_ctrl_a|Add1~10\,
	sumout => \i_pwm_ctrl_a|Add1~13_sumout\,
	cout => \i_pwm_ctrl_a|Add1~14\);

-- Location: LABCELL_X81_Y6_N33
\i_pwm_ctrl_a|s_pwm_dc~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|s_pwm_dc~5_combout\ = (\i_pwm_ctrl_a|s_isEnabled~2_combout\) # (\i_pwm_ctrl_a|Add1~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_Add1~13_sumout\,
	datab => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~2_combout\,
	combout => \i_pwm_ctrl_a|s_pwm_dc~5_combout\);

-- Location: FF_X81_Y6_N34
\i_pwm_ctrl_a|s_pwm_dc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|s_pwm_dc~5_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_pwm_dc[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_pwm_dc\(3));

-- Location: MLABCELL_X82_Y6_N12
\i_pwm_ctrl_a|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Add1~17_sumout\ = SUM(( ((!\i_key_ctrl_a|s_output\(3) & ((!\i_serial_ctrl_a|serial_up~q\) # (\i_pwm_ctrl_a|process_2~3_combout\)))) # (\i_pwm_ctrl_a|LessThan3~2_combout\) ) + ( \i_pwm_ctrl_a|s_pwm_dc\(4) ) + ( \i_pwm_ctrl_a|Add1~14\ ))
-- \i_pwm_ctrl_a|Add1~18\ = CARRY(( ((!\i_key_ctrl_a|s_output\(3) & ((!\i_serial_ctrl_a|serial_up~q\) # (\i_pwm_ctrl_a|process_2~3_combout\)))) # (\i_pwm_ctrl_a|LessThan3~2_combout\) ) + ( \i_pwm_ctrl_a|s_pwm_dc\(4) ) + ( \i_pwm_ctrl_a|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_LessThan3~2_combout\,
	datab => \i_serial_ctrl_a|ALT_INV_serial_up~q\,
	datac => \i_key_ctrl_a|ALT_INV_s_output\(3),
	datad => \i_pwm_ctrl_a|ALT_INV_process_2~3_combout\,
	dataf => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(4),
	cin => \i_pwm_ctrl_a|Add1~14\,
	sumout => \i_pwm_ctrl_a|Add1~17_sumout\,
	cout => \i_pwm_ctrl_a|Add1~18\);

-- Location: LABCELL_X81_Y6_N45
\i_pwm_ctrl_a|s_pwm_dc~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|s_pwm_dc~6_combout\ = ( !\i_pwm_ctrl_a|s_isEnabled~2_combout\ & ( \i_pwm_ctrl_a|Add1~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_Add1~17_sumout\,
	datae => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~2_combout\,
	combout => \i_pwm_ctrl_a|s_pwm_dc~6_combout\);

-- Location: FF_X81_Y6_N46
\i_pwm_ctrl_a|s_pwm_dc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|s_pwm_dc~6_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_pwm_dc[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_pwm_dc\(4));

-- Location: MLABCELL_X82_Y6_N15
\i_pwm_ctrl_a|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Add1~25_sumout\ = SUM(( ((!\i_key_ctrl_a|s_output\(3) & ((!\i_serial_ctrl_a|serial_up~q\) # (\i_pwm_ctrl_a|process_2~3_combout\)))) # (\i_pwm_ctrl_a|LessThan3~2_combout\) ) + ( !\i_pwm_ctrl_a|s_pwm_dc\(5) ) + ( \i_pwm_ctrl_a|Add1~18\ ))
-- \i_pwm_ctrl_a|Add1~26\ = CARRY(( ((!\i_key_ctrl_a|s_output\(3) & ((!\i_serial_ctrl_a|serial_up~q\) # (\i_pwm_ctrl_a|process_2~3_combout\)))) # (\i_pwm_ctrl_a|LessThan3~2_combout\) ) + ( !\i_pwm_ctrl_a|s_pwm_dc\(5) ) + ( \i_pwm_ctrl_a|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_LessThan3~2_combout\,
	datab => \i_serial_ctrl_a|ALT_INV_serial_up~q\,
	datac => \i_key_ctrl_a|ALT_INV_s_output\(3),
	datad => \i_pwm_ctrl_a|ALT_INV_process_2~3_combout\,
	dataf => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(5),
	cin => \i_pwm_ctrl_a|Add1~18\,
	sumout => \i_pwm_ctrl_a|Add1~25_sumout\,
	cout => \i_pwm_ctrl_a|Add1~26\);

-- Location: LABCELL_X81_Y6_N39
\i_pwm_ctrl_a|s_pwm_dc~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|s_pwm_dc~8_combout\ = (!\i_pwm_ctrl_a|Add1~25_sumout\) # (\i_pwm_ctrl_a|s_isEnabled~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~2_combout\,
	datad => \i_pwm_ctrl_a|ALT_INV_Add1~25_sumout\,
	combout => \i_pwm_ctrl_a|s_pwm_dc~8_combout\);

-- Location: FF_X81_Y6_N41
\i_pwm_ctrl_a|s_pwm_dc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|s_pwm_dc~8_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_pwm_dc[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_pwm_dc\(5));

-- Location: MLABCELL_X84_Y6_N57
\i_pwm_ctrl_a|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|LessThan2~1_combout\ = ( \i_pwm_ctrl_a|s_pwm_dc\(6) & ( (!\i_pwm_ctrl_a|s_pwm_dc\(4) & \i_pwm_ctrl_a|s_pwm_dc\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(4),
	datad => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(5),
	dataf => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(6),
	combout => \i_pwm_ctrl_a|LessThan2~1_combout\);

-- Location: MLABCELL_X82_Y6_N36
\i_pwm_ctrl_a|process_2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|process_2~3_combout\ = ( \i_pwm_ctrl_a|LessThan2~0_combout\ & ( \i_key_ctrl_a|s_output\(2) ) ) # ( !\i_pwm_ctrl_a|LessThan2~0_combout\ & ( (!\i_pwm_ctrl_a|LessThan2~1_combout\ & \i_key_ctrl_a|s_output\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl_a|ALT_INV_LessThan2~1_combout\,
	datad => \i_key_ctrl_a|ALT_INV_s_output\(2),
	dataf => \i_pwm_ctrl_a|ALT_INV_LessThan2~0_combout\,
	combout => \i_pwm_ctrl_a|process_2~3_combout\);

-- Location: MLABCELL_X82_Y6_N18
\i_pwm_ctrl_a|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Add1~21_sumout\ = SUM(( !\i_pwm_ctrl_a|s_pwm_dc\(6) ) + ( ((!\i_key_ctrl_a|s_output\(3) & ((!\i_serial_ctrl_a|serial_up~q\) # (\i_pwm_ctrl_a|process_2~3_combout\)))) # (\i_pwm_ctrl_a|LessThan3~2_combout\) ) + ( \i_pwm_ctrl_a|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101010000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_ctrl_a|ALT_INV_s_output\(3),
	datab => \i_serial_ctrl_a|ALT_INV_serial_up~q\,
	datac => \i_pwm_ctrl_a|ALT_INV_process_2~3_combout\,
	datad => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(6),
	dataf => \i_pwm_ctrl_a|ALT_INV_LessThan3~2_combout\,
	cin => \i_pwm_ctrl_a|Add1~26\,
	sumout => \i_pwm_ctrl_a|Add1~21_sumout\);

-- Location: LABCELL_X85_Y6_N39
\i_pwm_ctrl_a|s_pwm_dc~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|s_pwm_dc~7_combout\ = ( \i_pwm_ctrl_a|Add1~21_sumout\ & ( \i_pwm_ctrl_a|s_isEnabled~2_combout\ ) ) # ( !\i_pwm_ctrl_a|Add1~21_sumout\ & ( \i_pwm_ctrl_a|s_isEnabled~2_combout\ ) ) # ( !\i_pwm_ctrl_a|Add1~21_sumout\ & ( 
-- !\i_pwm_ctrl_a|s_isEnabled~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \i_pwm_ctrl_a|ALT_INV_Add1~21_sumout\,
	dataf => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~2_combout\,
	combout => \i_pwm_ctrl_a|s_pwm_dc~7_combout\);

-- Location: FF_X85_Y6_N40
\i_pwm_ctrl_a|s_pwm_dc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|s_pwm_dc~7_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_pwm_dc[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_pwm_dc\(6));

-- Location: MLABCELL_X82_Y6_N39
\i_pwm_ctrl_a|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|LessThan3~1_combout\ = ( !\i_pwm_ctrl_a|s_pwm_dc\(5) & ( !\i_pwm_ctrl_a|s_pwm_dc\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(6),
	dataf => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(5),
	combout => \i_pwm_ctrl_a|LessThan3~1_combout\);

-- Location: MLABCELL_X82_Y6_N54
\i_pwm_ctrl_a|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|LessThan3~0_combout\ = ( \i_pwm_ctrl_a|s_pwm_dc\(0) & ( (!\i_pwm_ctrl_a|s_pwm_dc\(3) & (!\i_pwm_ctrl_a|s_pwm_dc\(4) & \i_pwm_ctrl_a|s_pwm_dc\(2))) ) ) # ( !\i_pwm_ctrl_a|s_pwm_dc\(0) & ( (!\i_pwm_ctrl_a|s_pwm_dc\(3) & 
-- (!\i_pwm_ctrl_a|s_pwm_dc\(4) & ((!\i_pwm_ctrl_a|s_pwm_dc\(1)) # (\i_pwm_ctrl_a|s_pwm_dc\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000000100000001100000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(1),
	datab => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(3),
	datac => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(4),
	datad => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(2),
	dataf => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(0),
	combout => \i_pwm_ctrl_a|LessThan3~0_combout\);

-- Location: MLABCELL_X82_Y6_N33
\i_pwm_ctrl_a|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|LessThan3~2_combout\ = ( !\i_pwm_ctrl_a|LessThan3~0_combout\ & ( \i_pwm_ctrl_a|LessThan3~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl_a|ALT_INV_LessThan3~1_combout\,
	dataf => \i_pwm_ctrl_a|ALT_INV_LessThan3~0_combout\,
	combout => \i_pwm_ctrl_a|LessThan3~2_combout\);

-- Location: MLABCELL_X82_Y6_N42
\i_pwm_ctrl_a|s_isEnabled~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|s_isEnabled~2_combout\ = ( \i_key_ctrl_a|s_output\(3) & ( (!\i_pwm_ctrl_a|LessThan3~2_combout\ & !\i_pwm_ctrl_a|s_isEnabled~q\) ) ) # ( !\i_key_ctrl_a|s_output\(3) & ( (!\i_pwm_ctrl_a|LessThan3~2_combout\ & (\i_serial_ctrl_a|serial_up~q\ & 
-- (!\i_pwm_ctrl_a|process_2~3_combout\ & !\i_pwm_ctrl_a|s_isEnabled~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_LessThan3~2_combout\,
	datab => \i_serial_ctrl_a|ALT_INV_serial_up~q\,
	datac => \i_pwm_ctrl_a|ALT_INV_process_2~3_combout\,
	datad => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	dataf => \i_key_ctrl_a|ALT_INV_s_output\(3),
	combout => \i_pwm_ctrl_a|s_isEnabled~2_combout\);

-- Location: LABCELL_X81_Y6_N30
\i_pwm_ctrl_a|s_pwm_dc~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|s_pwm_dc~3_combout\ = (\i_pwm_ctrl_a|Add1~5_sumout\) # (\i_pwm_ctrl_a|s_isEnabled~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~2_combout\,
	datac => \i_pwm_ctrl_a|ALT_INV_Add1~5_sumout\,
	combout => \i_pwm_ctrl_a|s_pwm_dc~3_combout\);

-- Location: FF_X81_Y6_N31
\i_pwm_ctrl_a|s_pwm_dc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|s_pwm_dc~3_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_pwm_dc[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_pwm_dc\(1));

-- Location: MLABCELL_X82_Y6_N57
\i_pwm_ctrl_a|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|LessThan2~0_combout\ = ( \i_pwm_ctrl_a|s_pwm_dc\(0) & ( (\i_pwm_ctrl_a|s_pwm_dc\(3) & ((!\i_pwm_ctrl_a|s_pwm_dc\(2)) # (\i_pwm_ctrl_a|s_pwm_dc\(1)))) ) ) # ( !\i_pwm_ctrl_a|s_pwm_dc\(0) & ( (\i_pwm_ctrl_a|s_pwm_dc\(3) & 
-- !\i_pwm_ctrl_a|s_pwm_dc\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110001001100010011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(1),
	datab => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(3),
	datac => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(2),
	dataf => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(0),
	combout => \i_pwm_ctrl_a|LessThan2~0_combout\);

-- Location: MLABCELL_X82_Y6_N48
\i_pwm_ctrl_a|s_isEnabled~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|s_isEnabled~0_combout\ = ( \i_serial_ctrl_a|serial_up~q\ & ( \i_pwm_ctrl_a|LessThan2~1_combout\ & ( (!\i_pwm_ctrl_a|LessThan2~0_combout\ & (((!\i_pwm_ctrl_a|LessThan3~1_combout\) # (\i_pwm_ctrl_a|LessThan3~0_combout\)))) # 
-- (\i_pwm_ctrl_a|LessThan2~0_combout\ & (!\i_key_ctrl_a|s_output\(2) & ((!\i_pwm_ctrl_a|LessThan3~1_combout\) # (\i_pwm_ctrl_a|LessThan3~0_combout\)))) ) ) ) # ( \i_serial_ctrl_a|serial_up~q\ & ( !\i_pwm_ctrl_a|LessThan2~1_combout\ & ( 
-- (!\i_key_ctrl_a|s_output\(2) & ((!\i_pwm_ctrl_a|LessThan3~1_combout\) # (\i_pwm_ctrl_a|LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000110000000000000000001110111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_LessThan2~0_combout\,
	datab => \i_key_ctrl_a|ALT_INV_s_output\(2),
	datac => \i_pwm_ctrl_a|ALT_INV_LessThan3~0_combout\,
	datad => \i_pwm_ctrl_a|ALT_INV_LessThan3~1_combout\,
	datae => \i_serial_ctrl_a|ALT_INV_serial_up~q\,
	dataf => \i_pwm_ctrl_a|ALT_INV_LessThan2~1_combout\,
	combout => \i_pwm_ctrl_a|s_isEnabled~0_combout\);

-- Location: MLABCELL_X84_Y6_N48
\i_pwm_ctrl_a|s_isEnabled~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|s_isEnabled~1_combout\ = ((!\i_key_ctrl_a|s_output\(0) & \i_serial_ctrl_a|serial_on~q\)) # (\i_key_ctrl_a|s_output\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110011001100111111001100110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_key_ctrl_a|ALT_INV_s_output\(1),
	datac => \i_key_ctrl_a|ALT_INV_s_output\(0),
	datad => \i_serial_ctrl_a|ALT_INV_serial_on~q\,
	combout => \i_pwm_ctrl_a|s_isEnabled~1_combout\);

-- Location: MLABCELL_X82_Y6_N30
\i_pwm_ctrl_a|process_2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|process_2~0_combout\ = ( \i_pwm_ctrl_a|LessThan3~0_combout\ & ( \i_key_ctrl_a|s_output\(3) ) ) # ( !\i_pwm_ctrl_a|LessThan3~0_combout\ & ( (!\i_pwm_ctrl_a|LessThan3~1_combout\ & \i_key_ctrl_a|s_output\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl_a|ALT_INV_LessThan3~1_combout\,
	datad => \i_key_ctrl_a|ALT_INV_s_output\(3),
	dataf => \i_pwm_ctrl_a|ALT_INV_LessThan3~0_combout\,
	combout => \i_pwm_ctrl_a|process_2~0_combout\);

-- Location: LABCELL_X80_Y7_N3
\i_pwm_ctrl_a|s_isEnabled~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|s_isEnabled~3_combout\ = ( !\i_pwm_ctrl_a|s_isEnabled~q\ & ( (\i_pwm_ctrl_a|process_2~2_combout\ & ((((\i_pwm_ctrl_a|s_isEnabled~1_combout\)) # (\i_pwm_ctrl_a|process_2~0_combout\)) # (\i_pwm_ctrl_a|s_isEnabled~0_combout\))) ) ) # ( 
-- \i_pwm_ctrl_a|s_isEnabled~q\ & ( ((!\i_pwm_ctrl_a|process_2~2_combout\ & (!\i_serial_ctrl_a|serial_off~q\ & ((!\i_key_ctrl_a|s_output\(0))))) # (\i_pwm_ctrl_a|process_2~2_combout\ & (((!\i_serial_ctrl_a|serial_off~q\ & !\i_key_ctrl_a|s_output\(0))) # 
-- (\i_pwm_ctrl_a|s_isEnabled~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001001100110011111100001111001100010011001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~0_combout\,
	datab => \i_pwm_ctrl_a|ALT_INV_process_2~2_combout\,
	datac => \i_serial_ctrl_a|ALT_INV_serial_off~q\,
	datad => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~1_combout\,
	datae => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	dataf => \i_key_ctrl_a|ALT_INV_s_output\(0),
	datag => \i_pwm_ctrl_a|ALT_INV_process_2~0_combout\,
	combout => \i_pwm_ctrl_a|s_isEnabled~3_combout\);

-- Location: FF_X80_Y7_N5
\i_pwm_ctrl_a|s_isEnabled\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|s_isEnabled~3_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_isEnabled~q\);

-- Location: MLABCELL_X84_Y10_N48
\i_pwm_ctrl_a|current_dc[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|current_dc[1]~1_combout\ = ( \i_pwm_ctrl_a|s_pwm_dc\(1) & ( \i_pwm_ctrl_a|s_isEnabled~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	dataf => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(1),
	combout => \i_pwm_ctrl_a|current_dc[1]~1_combout\);

-- Location: LABCELL_X83_Y9_N39
\i_pwm_ctrl_a|current_dc[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|current_dc[2]~2_combout\ = ( \i_pwm_ctrl_a|s_isEnabled~q\ & ( !\i_pwm_ctrl_a|s_pwm_dc\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(2),
	datae => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	combout => \i_pwm_ctrl_a|current_dc[2]~2_combout\);

-- Location: MLABCELL_X84_Y10_N51
\i_dc_disp_a|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Equal0~0_combout\ = ( \i_pwm_ctrl_a|s_pwm_dc\(4) & ( \i_pwm_ctrl_a|s_isEnabled~q\ ) ) # ( !\i_pwm_ctrl_a|s_pwm_dc\(4) & ( (\i_pwm_ctrl_a|s_isEnabled~q\ & (((\i_pwm_ctrl_a|s_pwm_dc\(0)) # (\i_pwm_ctrl_a|s_pwm_dc\(3))) # 
-- (\i_pwm_ctrl_a|s_pwm_dc\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101000101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	datab => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(1),
	datac => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(3),
	datad => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(0),
	dataf => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(4),
	combout => \i_dc_disp_a|Equal0~0_combout\);

-- Location: MLABCELL_X84_Y10_N57
\i_dc_disp_a|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Equal0~1_combout\ = ( !\i_dc_disp_a|Equal0~0_combout\ & ( (!\i_pwm_ctrl_a|s_pwm_dc\(2) & (\i_pwm_ctrl_a|s_isEnabled~q\ & (!\i_pwm_ctrl_a|s_pwm_dc\(6) & !\i_pwm_ctrl_a|s_pwm_dc\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(2),
	datab => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	datac => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(6),
	datad => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(5),
	dataf => \i_dc_disp_a|ALT_INV_Equal0~0_combout\,
	combout => \i_dc_disp_a|Equal0~1_combout\);

-- Location: LABCELL_X80_Y9_N36
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~22_cout\);

-- Location: LABCELL_X80_Y9_N39
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~17_sumout\ = SUM(( (\i_pwm_ctrl_a|s_pwm_dc\(3) & \i_pwm_ctrl_a|s_isEnabled~q\) ) + ( VCC ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~22_cout\ ))
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~18\ = CARRY(( (\i_pwm_ctrl_a|s_pwm_dc\(3) & \i_pwm_ctrl_a|s_isEnabled~q\) ) + ( VCC ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(3),
	datac => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	cin => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~22_cout\,
	sumout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~17_sumout\,
	cout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~18\);

-- Location: LABCELL_X80_Y9_N42
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( (\i_pwm_ctrl_a|s_isEnabled~q\ & \i_pwm_ctrl_a|s_pwm_dc\(4)) ) + ( GND ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~18\ ))
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~10\ = CARRY(( (\i_pwm_ctrl_a|s_isEnabled~q\ & \i_pwm_ctrl_a|s_pwm_dc\(4)) ) + ( GND ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	datac => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(4),
	cin => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~18\,
	sumout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~10\);

-- Location: LABCELL_X80_Y9_N45
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~13_sumout\ = SUM(( (\i_pwm_ctrl_a|s_isEnabled~q\ & !\i_pwm_ctrl_a|s_pwm_dc\(5)) ) + ( VCC ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~10\ ))
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~14\ = CARRY(( (\i_pwm_ctrl_a|s_isEnabled~q\ & !\i_pwm_ctrl_a|s_pwm_dc\(5)) ) + ( VCC ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	datac => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(5),
	cin => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~10\,
	sumout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~13_sumout\,
	cout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~14\);

-- Location: LABCELL_X80_Y9_N48
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~5_sumout\ = SUM(( (\i_pwm_ctrl_a|s_isEnabled~q\ & !\i_pwm_ctrl_a|s_pwm_dc\(6)) ) + ( GND ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~14\ ))
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~6\ = CARRY(( (\i_pwm_ctrl_a|s_isEnabled~q\ & !\i_pwm_ctrl_a|s_pwm_dc\(6)) ) + ( GND ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	datad => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(6),
	cin => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~14\,
	sumout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~5_sumout\,
	cout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~6\);

-- Location: LABCELL_X80_Y9_N51
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~6\,
	sumout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\);

-- Location: LABCELL_X80_Y9_N6
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~26_cout\);

-- Location: LABCELL_X80_Y9_N9
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( (\i_pwm_ctrl_a|s_isEnabled~q\ & !\i_pwm_ctrl_a|s_pwm_dc\(2)) ) + ( VCC ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~26_cout\ ))
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~22\ = CARRY(( (\i_pwm_ctrl_a|s_isEnabled~q\ & !\i_pwm_ctrl_a|s_pwm_dc\(2)) ) + ( VCC ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	datad => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(2),
	cin => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~22\);

-- Location: LABCELL_X80_Y9_N12
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( GND ) + ( (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~17_sumout\)))) # 
-- (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\i_pwm_ctrl_a|s_isEnabled~q\ & (\i_pwm_ctrl_a|s_pwm_dc\(3)))) ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~22\ ))
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~18\ = CARRY(( GND ) + ( (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~17_sumout\)))) # 
-- (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\i_pwm_ctrl_a|s_isEnabled~q\ & (\i_pwm_ctrl_a|s_pwm_dc\(3)))) ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111100101010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	datac => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(3),
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	cin => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~22\,
	sumout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~18\);

-- Location: LABCELL_X80_Y9_N15
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( VCC ) + ( (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~9_sumout\)))) # 
-- (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\i_pwm_ctrl_a|s_isEnabled~q\ & (\i_pwm_ctrl_a|s_pwm_dc\(4)))) ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~18\ ))
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~10\ = CARRY(( VCC ) + ( (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~9_sumout\)))) # 
-- (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\i_pwm_ctrl_a|s_isEnabled~q\ & (\i_pwm_ctrl_a|s_pwm_dc\(4)))) ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111100101010000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	datac => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(4),
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	cin => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~18\,
	sumout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X80_Y9_N18
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~13_sumout\)))) # 
-- (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\i_pwm_ctrl_a|s_isEnabled~q\ & (!\i_pwm_ctrl_a|s_pwm_dc\(5)))) ) + ( GND ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~10\ ))
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~14\ = CARRY(( (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~13_sumout\)))) # 
-- (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\i_pwm_ctrl_a|s_isEnabled~q\ & (!\i_pwm_ctrl_a|s_pwm_dc\(5)))) ) + ( GND ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	datac => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(5),
	datad => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	cin => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~10\,
	sumout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X80_Y9_N21
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~6_cout\ = CARRY(( VCC ) + ( (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~5_sumout\)))) # 
-- (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\i_pwm_ctrl_a|s_isEnabled~q\ & (!\i_pwm_ctrl_a|s_pwm_dc\(6)))) ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011110100010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	datac => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(6),
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	cin => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~14\,
	cout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~6_cout\);

-- Location: LABCELL_X80_Y9_N24
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~6_cout\,
	sumout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X83_Y9_N33
\i_dc_disp_a|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Add1~0_combout\ = ( \i_pwm_ctrl_a|s_pwm_dc\(3) & ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( !\i_pwm_ctrl_a|s_isEnabled~q\ ) ) ) # ( !\i_pwm_ctrl_a|s_pwm_dc\(3) & ( 
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ ) ) # ( \i_pwm_ctrl_a|s_pwm_dc\(3) & ( !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \i_pwm_ctrl_a|s_isEnabled~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	datae => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(3),
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \i_dc_disp_a|Add1~0_combout\);

-- Location: LABCELL_X80_Y9_N57
\i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[17]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ = ( !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\);

-- Location: LABCELL_X80_Y9_N54
\i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[17]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ = (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\i_pwm_ctrl_a|s_isEnabled~q\ & !\i_pwm_ctrl_a|s_pwm_dc\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	datad => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(5),
	combout => \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\);

-- Location: LABCELL_X80_Y9_N3
\i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[16]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\ = ( \i_pwm_ctrl_a|s_pwm_dc\(4) & ( (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~9_sumout\))) # 
-- (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\i_pwm_ctrl_a|s_isEnabled~q\)) ) ) # ( !\i_pwm_ctrl_a|s_pwm_dc\(4) & ( (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	datac => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	dataf => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(4),
	combout => \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\);

-- Location: LABCELL_X80_Y9_N0
\i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[15]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[15]~5_combout\ = ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~17_sumout\ & ( (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\) # ((\i_pwm_ctrl_a|s_isEnabled~q\ & 
-- \i_pwm_ctrl_a|s_pwm_dc\(3))) ) ) # ( !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~17_sumout\ & ( (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\i_pwm_ctrl_a|s_isEnabled~q\ & \i_pwm_ctrl_a|s_pwm_dc\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000110101011101010111010101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	datac => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(3),
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	combout => \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[15]~5_combout\);

-- Location: LABCELL_X81_Y9_N0
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~26_cout\);

-- Location: LABCELL_X81_Y9_N3
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( (\i_pwm_ctrl_a|s_isEnabled~q\ & \i_pwm_ctrl_a|s_pwm_dc\(1)) ) + ( VCC ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~26_cout\ ))
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~22\ = CARRY(( (\i_pwm_ctrl_a|s_isEnabled~q\ & \i_pwm_ctrl_a|s_pwm_dc\(1)) ) + ( VCC ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	datac => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(1),
	cin => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~26_cout\,
	sumout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~22\);

-- Location: LABCELL_X81_Y9_N6
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( GND ) + ( (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~21_sumout\)))) # 
-- (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\i_pwm_ctrl_a|s_isEnabled~q\ & (!\i_pwm_ctrl_a|s_pwm_dc\(2)))) ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~22\ ))
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~18\ = CARRY(( GND ) + ( (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~21_sumout\)))) # 
-- (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\i_pwm_ctrl_a|s_isEnabled~q\ & (!\i_pwm_ctrl_a|s_pwm_dc\(2)))) ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011110010001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	datab => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(2),
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	cin => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~22\,
	sumout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~18\);

-- Location: LABCELL_X81_Y9_N9
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~17_sumout\))) # 
-- (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[15]~5_combout\)) ) + ( VCC ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~18\ ))
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~14\ = CARRY(( (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~17_sumout\))) # 
-- (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[15]~5_combout\)) ) + ( VCC ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~5_combout\,
	datad => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~18\,
	sumout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~14\);

-- Location: LABCELL_X81_Y9_N12
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( GND ) + ( (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~9_sumout\))) # 
-- (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\)) ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~14\ ))
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~10\ = CARRY(( GND ) + ( (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~9_sumout\))) # 
-- (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\)) ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\,
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~14\,
	sumout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~10\);

-- Location: LABCELL_X81_Y9_N15
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~6_cout\ = CARRY(( VCC ) + ( (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~13_sumout\)) # 
-- (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\) # (\i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\)))) ) + ( 
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	datab => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\,
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~4_combout\,
	cin => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~10\,
	cout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~6_cout\);

-- Location: LABCELL_X81_Y9_N18
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~6_cout\,
	sumout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X81_Y9_N27
\i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[22]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[22]~0_combout\ = ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~9_sumout\ & ( !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	combout => \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[22]~0_combout\);

-- Location: LABCELL_X81_Y9_N30
\i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[22]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[22]~2_combout\ = ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\,
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[22]~2_combout\);

-- Location: LABCELL_X81_Y9_N24
\i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[21]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[21]~6_combout\ = ( \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[15]~5_combout\ & ( (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~17_sumout\) # 
-- (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\) ) ) # ( !\i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[15]~5_combout\ & ( (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~5_combout\,
	combout => \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[21]~6_combout\);

-- Location: LABCELL_X81_Y9_N33
\i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[20]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[20]~7_combout\ = ( \i_pwm_ctrl_a|current_dc[2]~2_combout\ & ( (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~21_sumout\) # (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\) 
-- ) ) # ( !\i_pwm_ctrl_a|current_dc[2]~2_combout\ & ( (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	dataf => \i_pwm_ctrl_a|ALT_INV_current_dc[2]~2_combout\,
	combout => \i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[20]~7_combout\);

-- Location: LABCELL_X81_Y9_N36
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~26_cout\);

-- Location: LABCELL_X81_Y9_N39
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~22_cout\ = CARRY(( (\i_pwm_ctrl_a|s_isEnabled~q\ & \i_pwm_ctrl_a|s_pwm_dc\(0)) ) + ( VCC ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	datac => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(0),
	cin => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~26_cout\,
	cout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~22_cout\);

-- Location: LABCELL_X81_Y9_N42
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~18_cout\ = CARRY(( (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~21_sumout\)))) # 
-- (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\i_pwm_ctrl_a|s_pwm_dc\(1) & (\i_pwm_ctrl_a|s_isEnabled~q\))) ) + ( GND ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(1),
	datac => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	datad => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	cin => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~22_cout\,
	cout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~18_cout\);

-- Location: LABCELL_X81_Y9_N45
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~14_cout\ = CARRY(( VCC ) + ( (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~17_sumout\))) # 
-- (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[20]~7_combout\)) ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~7_combout\,
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	cin => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~18_cout\,
	cout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~14_cout\);

-- Location: LABCELL_X81_Y9_N48
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~10_cout\ = CARRY(( GND ) + ( (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~13_sumout\))) # 
-- (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[21]~6_combout\)) ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~6_combout\,
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	cin => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~14_cout\,
	cout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~10_cout\);

-- Location: LABCELL_X81_Y9_N51
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~6_cout\ = CARRY(( VCC ) + ( (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~9_sumout\)) # 
-- (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[22]~2_combout\) # (\i_dc_disp_a|Div0|auto_generated|divider|divider|StageOut[22]~0_combout\)))) ) + ( 
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	datac => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~0_combout\,
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~2_combout\,
	cin => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~10_cout\,
	cout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~6_cout\);

-- Location: LABCELL_X81_Y9_N54
\i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~6_cout\,
	sumout => \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: MLABCELL_X84_Y10_N36
\i_dc_disp_a|v_ones~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|v_ones~1_combout\ = ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\i_dc_disp_a|Equal0~1_combout\ & !\i_dc_disp_a|Add1~0_combout\) ) ) ) # ( 
-- !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\i_dc_disp_a|Equal0~1_combout\ & (!\i_pwm_ctrl_a|current_dc[2]~2_combout\ $ (!\i_dc_disp_a|Add1~0_combout\))) ) ) ) 
-- # ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\i_dc_disp_a|Equal0~1_combout\ & (!\i_dc_disp_a|Add1~0_combout\ $ (((\i_pwm_ctrl_a|current_dc[2]~2_combout\) # 
-- (\i_pwm_ctrl_a|current_dc[1]~1_combout\))))) ) ) ) # ( !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\i_dc_disp_a|Equal0~1_combout\ & 
-- (!\i_dc_disp_a|Add1~0_combout\ $ (((\i_pwm_ctrl_a|current_dc[1]~1_combout\ & \i_pwm_ctrl_a|current_dc[2]~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000010000100000000111000000110000110000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_current_dc[1]~1_combout\,
	datab => \i_pwm_ctrl_a|ALT_INV_current_dc[2]~2_combout\,
	datac => \i_dc_disp_a|ALT_INV_Equal0~1_combout\,
	datad => \i_dc_disp_a|ALT_INV_Add1~0_combout\,
	datae => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \i_dc_disp_a|v_ones~1_combout\);

-- Location: LABCELL_X85_Y10_N15
\i_pwm_ctrl_a|current_dc[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|current_dc[0]~0_combout\ = ( \i_pwm_ctrl_a|s_pwm_dc\(0) & ( \i_pwm_ctrl_a|s_isEnabled~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	dataf => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(0),
	combout => \i_pwm_ctrl_a|current_dc[0]~0_combout\);

-- Location: MLABCELL_X84_Y10_N6
\i_dc_disp_a|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux2~0_combout\ = ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( (!\i_dc_disp_a|Equal0~1_combout\ & (!\i_pwm_ctrl_a|current_dc[2]~2_combout\ $ (((\i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\) # 
-- (\i_pwm_ctrl_a|current_dc[1]~1_combout\))))) ) ) # ( !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( (!\i_dc_disp_a|Equal0~1_combout\ & (!\i_pwm_ctrl_a|current_dc[2]~2_combout\ $ (((!\i_pwm_ctrl_a|current_dc[1]~1_combout\ & 
-- !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000011000000011000001100000010010000001100001001000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_current_dc[1]~1_combout\,
	datab => \i_pwm_ctrl_a|ALT_INV_current_dc[2]~2_combout\,
	datac => \i_dc_disp_a|ALT_INV_Equal0~1_combout\,
	datad => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \i_dc_disp_a|Mux2~0_combout\);

-- Location: MLABCELL_X87_Y10_N15
\i_dc_disp_a|v_ones~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|v_ones~0_combout\ = ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\i_dc_disp_a|Equal0~1_combout\ & \i_pwm_ctrl_a|current_dc[1]~1_combout\) ) ) # ( !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( 
-- (!\i_dc_disp_a|Equal0~1_combout\ & !\i_pwm_ctrl_a|current_dc[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_Equal0~1_combout\,
	datac => \i_pwm_ctrl_a|ALT_INV_current_dc[1]~1_combout\,
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \i_dc_disp_a|v_ones~0_combout\);

-- Location: MLABCELL_X87_Y10_N57
\i_dc_disp_a|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux6~0_combout\ = ( !\i_dc_disp_a|v_ones~0_combout\ & ( (!\i_dc_disp_a|v_ones~1_combout\ & (!\i_pwm_ctrl_a|current_dc[0]~0_combout\ $ (!\i_dc_disp_a|Mux2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_v_ones~1_combout\,
	datab => \i_pwm_ctrl_a|ALT_INV_current_dc[0]~0_combout\,
	datad => \i_dc_disp_a|ALT_INV_Mux2~0_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_ones~0_combout\,
	combout => \i_dc_disp_a|Mux6~0_combout\);

-- Location: FF_X84_Y6_N13
\i_pwm_ctrl_a|s_dc_changed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \i_pwm_ctrl_a|process_2~2_combout\,
	sload => VCC,
	ena => \create_pll:i_reset_ctrl_a|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_dc_changed~q\);

-- Location: DDIOOUTCELL_X89_Y8_N47
\i_dc_disp_a|hex0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux6~0_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_dc_changed~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|hex0\(0));

-- Location: MLABCELL_X87_Y10_N51
\i_dc_disp_a|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux5~0_combout\ = ( \i_dc_disp_a|v_ones~0_combout\ & ( (\i_dc_disp_a|Mux2~0_combout\ & !\i_pwm_ctrl_a|current_dc[0]~0_combout\) ) ) # ( !\i_dc_disp_a|v_ones~0_combout\ & ( (\i_dc_disp_a|Mux2~0_combout\ & 
-- \i_pwm_ctrl_a|current_dc[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_Mux2~0_combout\,
	datab => \i_pwm_ctrl_a|ALT_INV_current_dc[0]~0_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_ones~0_combout\,
	combout => \i_dc_disp_a|Mux5~0_combout\);

-- Location: DDIOOUTCELL_X89_Y11_N87
\i_dc_disp_a|hex0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux5~0_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_dc_changed~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|hex0\(1));

-- Location: MLABCELL_X87_Y10_N6
\i_dc_disp_a|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux4~0_combout\ = ( \i_dc_disp_a|v_ones~0_combout\ & ( (!\i_dc_disp_a|v_ones~1_combout\ & (!\i_pwm_ctrl_a|current_dc[0]~0_combout\ & !\i_dc_disp_a|Mux2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_v_ones~1_combout\,
	datab => \i_pwm_ctrl_a|ALT_INV_current_dc[0]~0_combout\,
	datac => \i_dc_disp_a|ALT_INV_Mux2~0_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_ones~0_combout\,
	combout => \i_dc_disp_a|Mux4~0_combout\);

-- Location: DDIOOUTCELL_X89_Y11_N104
\i_dc_disp_a|hex0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux4~0_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_dc_changed~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|hex0\(2));

-- Location: MLABCELL_X87_Y10_N54
\i_dc_disp_a|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux3~0_combout\ = ( \i_dc_disp_a|v_ones~0_combout\ & ( (!\i_dc_disp_a|v_ones~1_combout\ & (\i_pwm_ctrl_a|current_dc[0]~0_combout\ & \i_dc_disp_a|Mux2~0_combout\)) ) ) # ( !\i_dc_disp_a|v_ones~0_combout\ & ( (!\i_dc_disp_a|v_ones~1_combout\ & 
-- (!\i_pwm_ctrl_a|current_dc[0]~0_combout\ $ (!\i_dc_disp_a|Mux2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_v_ones~1_combout\,
	datab => \i_pwm_ctrl_a|ALT_INV_current_dc[0]~0_combout\,
	datac => \i_dc_disp_a|ALT_INV_Mux2~0_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_ones~0_combout\,
	combout => \i_dc_disp_a|Mux3~0_combout\);

-- Location: DDIOOUTCELL_X89_Y4_N87
\i_dc_disp_a|hex0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux3~0_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_dc_changed~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|hex0\(3));

-- Location: MLABCELL_X87_Y10_N36
\i_dc_disp_a|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux2~1_combout\ = ( \i_dc_disp_a|v_ones~0_combout\ & ( \i_pwm_ctrl_a|current_dc[0]~0_combout\ ) ) # ( !\i_dc_disp_a|v_ones~0_combout\ & ( (\i_dc_disp_a|Mux2~0_combout\) # (\i_pwm_ctrl_a|current_dc[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl_a|ALT_INV_current_dc[0]~0_combout\,
	datac => \i_dc_disp_a|ALT_INV_Mux2~0_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_ones~0_combout\,
	combout => \i_dc_disp_a|Mux2~1_combout\);

-- Location: DDIOOUTCELL_X89_Y13_N64
\i_dc_disp_a|hex0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux2~1_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_dc_changed~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|hex0\(4));

-- Location: MLABCELL_X87_Y10_N9
\i_dc_disp_a|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux1~0_combout\ = ( \i_dc_disp_a|v_ones~0_combout\ & ( (!\i_dc_disp_a|v_ones~1_combout\ & ((!\i_dc_disp_a|Mux2~0_combout\) # (\i_pwm_ctrl_a|current_dc[0]~0_combout\))) ) ) # ( !\i_dc_disp_a|v_ones~0_combout\ & ( 
-- (!\i_dc_disp_a|v_ones~1_combout\ & (\i_pwm_ctrl_a|current_dc[0]~0_combout\ & !\i_dc_disp_a|Mux2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000010101010001000101010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_v_ones~1_combout\,
	datab => \i_pwm_ctrl_a|ALT_INV_current_dc[0]~0_combout\,
	datad => \i_dc_disp_a|ALT_INV_Mux2~0_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_ones~0_combout\,
	combout => \i_dc_disp_a|Mux1~0_combout\);

-- Location: DDIOOUTCELL_X89_Y13_N47
\i_dc_disp_a|hex0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux1~0_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_dc_changed~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|hex0\(5));

-- Location: MLABCELL_X87_Y10_N48
\i_dc_disp_a|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux0~0_combout\ = ( \i_dc_disp_a|v_ones~0_combout\ & ( (!\i_dc_disp_a|Mux2~0_combout\ & ((!\i_dc_disp_a|v_ones~1_combout\) # (\i_pwm_ctrl_a|current_dc[0]~0_combout\))) # (\i_dc_disp_a|Mux2~0_combout\ & 
-- ((!\i_pwm_ctrl_a|current_dc[0]~0_combout\) # (\i_dc_disp_a|v_ones~1_combout\))) ) ) # ( !\i_dc_disp_a|v_ones~0_combout\ & ( (\i_dc_disp_a|v_ones~1_combout\) # (\i_dc_disp_a|Mux2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111100111111001111110011111100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_Mux2~0_combout\,
	datab => \i_pwm_ctrl_a|ALT_INV_current_dc[0]~0_combout\,
	datac => \i_dc_disp_a|ALT_INV_v_ones~1_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_ones~0_combout\,
	combout => \i_dc_disp_a|Mux0~0_combout\);

-- Location: DDIOOUTCELL_X89_Y4_N104
\i_dc_disp_a|hex0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|ALT_INV_Mux0~0_combout\,
	asdata => VCC,
	aload => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	ena => \i_pwm_ctrl_a|s_dc_changed~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|hex0\(6));

-- Location: MLABCELL_X87_Y10_N3
\i_dc_disp_a|v_tens~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|v_tens~1_combout\ = ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\i_dc_disp_a|Equal0~1_combout\ & ((!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\) # 
-- ((\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ & \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\)))) ) ) # ( !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\i_dc_disp_a|Equal0~1_combout\ & 
-- !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000101010101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_Equal0~1_combout\,
	datab => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \i_dc_disp_a|v_tens~1_combout\);

-- Location: MLABCELL_X87_Y10_N12
\i_dc_disp_a|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux9~0_combout\ = ( !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( !\i_dc_disp_a|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_Equal0~1_combout\,
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \i_dc_disp_a|Mux9~0_combout\);

-- Location: MLABCELL_X87_Y10_N0
\i_dc_disp_a|v_tens~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|v_tens~2_combout\ = ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\i_dc_disp_a|Equal0~1_combout\ & ((!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\) # 
-- ((\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ & \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\)))) ) ) # ( !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\i_dc_disp_a|Equal0~1_combout\ & 
-- !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010101000100010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_Equal0~1_combout\,
	datab => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \i_dc_disp_a|v_tens~2_combout\);

-- Location: MLABCELL_X87_Y10_N33
\i_dc_disp_a|v_tens~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|v_tens~0_combout\ = ( !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( !\i_dc_disp_a|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_Equal0~1_combout\,
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \i_dc_disp_a|v_tens~0_combout\);

-- Location: MLABCELL_X87_Y10_N21
\i_dc_disp_a|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux13~0_combout\ = ( \i_dc_disp_a|v_tens~0_combout\ & ( (!\i_dc_disp_a|v_tens~1_combout\ & (!\i_dc_disp_a|Mux9~0_combout\ & !\i_dc_disp_a|v_tens~2_combout\)) ) ) # ( !\i_dc_disp_a|v_tens~0_combout\ & ( (!\i_dc_disp_a|v_tens~1_combout\ & 
-- (\i_dc_disp_a|Mux9~0_combout\ & !\i_dc_disp_a|v_tens~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_v_tens~1_combout\,
	datab => \i_dc_disp_a|ALT_INV_Mux9~0_combout\,
	datad => \i_dc_disp_a|ALT_INV_v_tens~2_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_tens~0_combout\,
	combout => \i_dc_disp_a|Mux13~0_combout\);

-- Location: DDIOOUTCELL_X89_Y6_N47
\i_dc_disp_a|hex1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux13~0_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_dc_changed~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|hex1\(0));

-- Location: MLABCELL_X87_Y10_N24
\i_dc_disp_a|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux12~0_combout\ = ( \i_dc_disp_a|Mux9~0_combout\ & ( !\i_dc_disp_a|v_tens~0_combout\ $ (!\i_dc_disp_a|v_tens~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_v_tens~0_combout\,
	datac => \i_dc_disp_a|ALT_INV_v_tens~1_combout\,
	dataf => \i_dc_disp_a|ALT_INV_Mux9~0_combout\,
	combout => \i_dc_disp_a|Mux12~0_combout\);

-- Location: DDIOOUTCELL_X89_Y6_N64
\i_dc_disp_a|hex1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux12~0_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_dc_changed~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|hex1\(1));

-- Location: MLABCELL_X87_Y10_N45
\i_dc_disp_a|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux11~0_combout\ = ( !\i_dc_disp_a|v_tens~0_combout\ & ( (\i_dc_disp_a|v_tens~1_combout\ & (!\i_dc_disp_a|Mux9~0_combout\ & !\i_dc_disp_a|v_tens~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_v_tens~1_combout\,
	datab => \i_dc_disp_a|ALT_INV_Mux9~0_combout\,
	datad => \i_dc_disp_a|ALT_INV_v_tens~2_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_tens~0_combout\,
	combout => \i_dc_disp_a|Mux11~0_combout\);

-- Location: DDIOOUTCELL_X89_Y16_N47
\i_dc_disp_a|hex1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux11~0_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_dc_changed~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|hex1\(2));

-- Location: MLABCELL_X87_Y10_N42
\i_dc_disp_a|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux10~0_combout\ = ( \i_dc_disp_a|v_tens~0_combout\ & ( (!\i_dc_disp_a|v_tens~2_combout\ & (!\i_dc_disp_a|v_tens~1_combout\ $ (\i_dc_disp_a|Mux9~0_combout\))) ) ) # ( !\i_dc_disp_a|v_tens~0_combout\ & ( (!\i_dc_disp_a|v_tens~1_combout\ & 
-- (\i_dc_disp_a|Mux9~0_combout\ & !\i_dc_disp_a|v_tens~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010010000100100001001000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_v_tens~1_combout\,
	datab => \i_dc_disp_a|ALT_INV_Mux9~0_combout\,
	datac => \i_dc_disp_a|ALT_INV_v_tens~2_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_tens~0_combout\,
	combout => \i_dc_disp_a|Mux10~0_combout\);

-- Location: DDIOOUTCELL_X89_Y16_N64
\i_dc_disp_a|hex1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux10~0_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_dc_changed~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|hex1\(3));

-- Location: MLABCELL_X87_Y10_N27
\i_dc_disp_a|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux9~1_combout\ = ( \i_dc_disp_a|Mux9~0_combout\ & ( (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\) # (\i_dc_disp_a|v_tens~0_combout\) ) ) # ( !\i_dc_disp_a|Mux9~0_combout\ & ( \i_dc_disp_a|v_tens~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_v_tens~0_combout\,
	datad => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \i_dc_disp_a|ALT_INV_Mux9~0_combout\,
	combout => \i_dc_disp_a|Mux9~1_combout\);

-- Location: DDIOOUTCELL_X89_Y15_N47
\i_dc_disp_a|hex1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux9~1_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_dc_changed~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|hex1\(4));

-- Location: MLABCELL_X87_Y10_N18
\i_dc_disp_a|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux8~0_combout\ = ( \i_dc_disp_a|v_tens~0_combout\ & ( (!\i_dc_disp_a|v_tens~2_combout\ & ((!\i_dc_disp_a|Mux9~0_combout\) # (\i_dc_disp_a|v_tens~1_combout\))) ) ) # ( !\i_dc_disp_a|v_tens~0_combout\ & ( (\i_dc_disp_a|v_tens~1_combout\ & 
-- (!\i_dc_disp_a|Mux9~0_combout\ & !\i_dc_disp_a|v_tens~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000011010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_v_tens~1_combout\,
	datab => \i_dc_disp_a|ALT_INV_Mux9~0_combout\,
	datac => \i_dc_disp_a|ALT_INV_v_tens~2_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_tens~0_combout\,
	combout => \i_dc_disp_a|Mux8~0_combout\);

-- Location: DDIOOUTCELL_X89_Y15_N64
\i_dc_disp_a|hex1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux8~0_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_dc_changed~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|hex1\(5));

-- Location: MLABCELL_X87_Y10_N30
\i_dc_disp_a|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux7~0_combout\ = ( \i_dc_disp_a|v_tens~0_combout\ & ( (!\i_dc_disp_a|Mux9~0_combout\ $ (!\i_dc_disp_a|v_tens~1_combout\)) # (\i_dc_disp_a|v_tens~2_combout\) ) ) # ( !\i_dc_disp_a|v_tens~0_combout\ & ( (!\i_dc_disp_a|v_tens~2_combout\ $ 
-- (!\i_dc_disp_a|v_tens~1_combout\)) # (\i_dc_disp_a|Mux9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111110011001111111111001100111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_a|ALT_INV_Mux9~0_combout\,
	datac => \i_dc_disp_a|ALT_INV_v_tens~2_combout\,
	datad => \i_dc_disp_a|ALT_INV_v_tens~1_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_tens~0_combout\,
	combout => \i_dc_disp_a|Mux7~0_combout\);

-- Location: DDIOOUTCELL_X89_Y8_N64
\i_dc_disp_a|hex1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|ALT_INV_Mux7~0_combout\,
	asdata => VCC,
	aload => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	ena => \i_pwm_ctrl_a|s_dc_changed~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|hex1\(6));

-- Location: DDIOOUTCELL_X89_Y9_N30
\i_dc_disp_a|hex2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Equal0~1_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_dc_changed~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|hex2\(0));

-- Location: DDIOOUTCELL_X89_Y20_N87
\i_dc_disp_a|hex2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Equal0~1_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_dc_changed~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|hex2\(3));

-- Location: DDIOOUTCELL_X89_Y25_N47
\i_dc_disp_a|hex2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Equal0~1_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_dc_changed~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|hex2\(4));

-- Location: DDIOOUTCELL_X89_Y20_N104
\i_dc_disp_a|hex2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Equal0~1_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_dc_changed~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|hex2\(5));

-- Location: LABCELL_X85_Y9_N0
\i_pwm_ctrl_a|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Add0~45_sumout\ = SUM(( \i_pwm_ctrl_a|s_clk_cn\(0) ) + ( VCC ) + ( !VCC ))
-- \i_pwm_ctrl_a|Add0~46\ = CARRY(( \i_pwm_ctrl_a|s_clk_cn\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(0),
	cin => GND,
	sumout => \i_pwm_ctrl_a|Add0~45_sumout\,
	cout => \i_pwm_ctrl_a|Add0~46\);

-- Location: LABCELL_X85_Y9_N21
\i_pwm_ctrl_a|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Add0~25_sumout\ = SUM(( \i_pwm_ctrl_a|s_clk_cn\(7) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~30\ ))
-- \i_pwm_ctrl_a|Add0~26\ = CARRY(( \i_pwm_ctrl_a|s_clk_cn\(7) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(7),
	cin => \i_pwm_ctrl_a|Add0~30\,
	sumout => \i_pwm_ctrl_a|Add0~25_sumout\,
	cout => \i_pwm_ctrl_a|Add0~26\);

-- Location: LABCELL_X85_Y9_N24
\i_pwm_ctrl_a|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Add0~17_sumout\ = SUM(( \i_pwm_ctrl_a|s_clk_cn\(8) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~26\ ))
-- \i_pwm_ctrl_a|Add0~18\ = CARRY(( \i_pwm_ctrl_a|s_clk_cn\(8) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(8),
	cin => \i_pwm_ctrl_a|Add0~26\,
	sumout => \i_pwm_ctrl_a|Add0~17_sumout\,
	cout => \i_pwm_ctrl_a|Add0~18\);

-- Location: LABCELL_X83_Y9_N15
\i_pwm_ctrl_a|s_clk_cn[13]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|s_clk_cn[13]~1_combout\ = ( \i_pwm_ctrl_a|s_isEnabled~q\ & ( \i_pwm_ctrl_a|s_dc_changed~q\ ) ) # ( !\i_pwm_ctrl_a|s_isEnabled~q\ & ( \i_pwm_ctrl_a|s_dc_changed~q\ ) ) # ( \i_pwm_ctrl_a|s_isEnabled~q\ & ( !\i_pwm_ctrl_a|s_dc_changed~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	dataf => \i_pwm_ctrl_a|ALT_INV_s_dc_changed~q\,
	combout => \i_pwm_ctrl_a|s_clk_cn[13]~1_combout\);

-- Location: FF_X85_Y9_N25
\i_pwm_ctrl_a|s_clk_cn[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|Add0~17_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_pwm_ctrl_a|s_clk_cn[13]~0_combout\,
	ena => \i_pwm_ctrl_a|s_clk_cn[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_clk_cn\(8));

-- Location: LABCELL_X85_Y9_N27
\i_pwm_ctrl_a|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Add0~21_sumout\ = SUM(( \i_pwm_ctrl_a|s_clk_cn\(9) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~18\ ))
-- \i_pwm_ctrl_a|Add0~22\ = CARRY(( \i_pwm_ctrl_a|s_clk_cn\(9) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(9),
	cin => \i_pwm_ctrl_a|Add0~18\,
	sumout => \i_pwm_ctrl_a|Add0~21_sumout\,
	cout => \i_pwm_ctrl_a|Add0~22\);

-- Location: FF_X85_Y9_N28
\i_pwm_ctrl_a|s_clk_cn[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|Add0~21_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_pwm_ctrl_a|s_clk_cn[13]~0_combout\,
	ena => \i_pwm_ctrl_a|s_clk_cn[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_clk_cn\(9));

-- Location: LABCELL_X85_Y9_N30
\i_pwm_ctrl_a|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Add0~61_sumout\ = SUM(( \i_pwm_ctrl_a|s_clk_cn\(10) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~22\ ))
-- \i_pwm_ctrl_a|Add0~62\ = CARRY(( \i_pwm_ctrl_a|s_clk_cn\(10) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(10),
	cin => \i_pwm_ctrl_a|Add0~22\,
	sumout => \i_pwm_ctrl_a|Add0~61_sumout\,
	cout => \i_pwm_ctrl_a|Add0~62\);

-- Location: FF_X85_Y9_N32
\i_pwm_ctrl_a|s_clk_cn[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|Add0~61_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_pwm_ctrl_a|s_clk_cn[13]~0_combout\,
	ena => \i_pwm_ctrl_a|s_clk_cn[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_clk_cn\(10));

-- Location: LABCELL_X85_Y9_N33
\i_pwm_ctrl_a|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Add0~57_sumout\ = SUM(( \i_pwm_ctrl_a|s_clk_cn\(11) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~62\ ))
-- \i_pwm_ctrl_a|Add0~58\ = CARRY(( \i_pwm_ctrl_a|s_clk_cn\(11) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(11),
	cin => \i_pwm_ctrl_a|Add0~62\,
	sumout => \i_pwm_ctrl_a|Add0~57_sumout\,
	cout => \i_pwm_ctrl_a|Add0~58\);

-- Location: FF_X85_Y9_N35
\i_pwm_ctrl_a|s_clk_cn[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|Add0~57_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_pwm_ctrl_a|s_clk_cn[13]~0_combout\,
	ena => \i_pwm_ctrl_a|s_clk_cn[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_clk_cn\(11));

-- Location: LABCELL_X85_Y9_N36
\i_pwm_ctrl_a|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Add0~13_sumout\ = SUM(( \i_pwm_ctrl_a|s_clk_cn\(12) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~58\ ))
-- \i_pwm_ctrl_a|Add0~14\ = CARRY(( \i_pwm_ctrl_a|s_clk_cn\(12) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(12),
	cin => \i_pwm_ctrl_a|Add0~58\,
	sumout => \i_pwm_ctrl_a|Add0~13_sumout\,
	cout => \i_pwm_ctrl_a|Add0~14\);

-- Location: FF_X85_Y9_N37
\i_pwm_ctrl_a|s_clk_cn[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|Add0~13_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_pwm_ctrl_a|s_clk_cn[13]~0_combout\,
	ena => \i_pwm_ctrl_a|s_clk_cn[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_clk_cn\(12));

-- Location: LABCELL_X85_Y9_N39
\i_pwm_ctrl_a|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Add0~9_sumout\ = SUM(( \i_pwm_ctrl_a|s_clk_cn\(13) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~14\ ))
-- \i_pwm_ctrl_a|Add0~10\ = CARRY(( \i_pwm_ctrl_a|s_clk_cn\(13) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(13),
	cin => \i_pwm_ctrl_a|Add0~14\,
	sumout => \i_pwm_ctrl_a|Add0~9_sumout\,
	cout => \i_pwm_ctrl_a|Add0~10\);

-- Location: FF_X85_Y9_N40
\i_pwm_ctrl_a|s_clk_cn[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|Add0~9_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_pwm_ctrl_a|s_clk_cn[13]~0_combout\,
	ena => \i_pwm_ctrl_a|s_clk_cn[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_clk_cn\(13));

-- Location: MLABCELL_X84_Y9_N24
\i_pwm_ctrl_a|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Equal0~1_combout\ = ( !\i_pwm_ctrl_a|s_clk_cn\(10) & ( (!\i_pwm_ctrl_a|s_clk_cn\(12) & (!\i_pwm_ctrl_a|s_clk_cn\(11) & !\i_pwm_ctrl_a|s_clk_cn\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(12),
	datac => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(11),
	datad => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(13),
	dataf => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(10),
	combout => \i_pwm_ctrl_a|Equal0~1_combout\);

-- Location: LABCELL_X85_Y9_N42
\i_pwm_ctrl_a|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Add0~1_sumout\ = SUM(( \i_pwm_ctrl_a|s_clk_cn\(14) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~10\ ))
-- \i_pwm_ctrl_a|Add0~2\ = CARRY(( \i_pwm_ctrl_a|s_clk_cn\(14) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(14),
	cin => \i_pwm_ctrl_a|Add0~10\,
	sumout => \i_pwm_ctrl_a|Add0~1_sumout\,
	cout => \i_pwm_ctrl_a|Add0~2\);

-- Location: FF_X85_Y9_N44
\i_pwm_ctrl_a|s_clk_cn[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|Add0~1_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_pwm_ctrl_a|s_clk_cn[13]~0_combout\,
	ena => \i_pwm_ctrl_a|s_clk_cn[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_clk_cn\(14));

-- Location: MLABCELL_X87_Y9_N3
\i_pwm_ctrl_a|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Equal0~0_combout\ = ( \i_pwm_ctrl_a|s_clk_cn\(9) & ( \i_pwm_ctrl_a|s_clk_cn\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(9),
	dataf => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(8),
	combout => \i_pwm_ctrl_a|Equal0~0_combout\);

-- Location: MLABCELL_X84_Y9_N18
\i_pwm_ctrl_a|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|LessThan1~0_combout\ = ( \i_pwm_ctrl_a|s_clk_cn\(4) & ( (\i_pwm_ctrl_a|Equal0~0_combout\ & ((\i_pwm_ctrl_a|s_clk_cn\(6)) # (\i_pwm_ctrl_a|s_clk_cn\(7)))) ) ) # ( !\i_pwm_ctrl_a|s_clk_cn\(4) & ( (\i_pwm_ctrl_a|Equal0~0_combout\ & 
-- (((\i_pwm_ctrl_a|s_clk_cn\(5) & \i_pwm_ctrl_a|s_clk_cn\(6))) # (\i_pwm_ctrl_a|s_clk_cn\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010011000100010001001100010001001100110001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(7),
	datab => \i_pwm_ctrl_a|ALT_INV_Equal0~0_combout\,
	datac => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(5),
	datad => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(6),
	dataf => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(4),
	combout => \i_pwm_ctrl_a|LessThan1~0_combout\);

-- Location: LABCELL_X85_Y9_N45
\i_pwm_ctrl_a|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Add0~5_sumout\ = SUM(( \i_pwm_ctrl_a|s_clk_cn\(15) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(15),
	cin => \i_pwm_ctrl_a|Add0~2\,
	sumout => \i_pwm_ctrl_a|Add0~5_sumout\);

-- Location: FF_X85_Y9_N47
\i_pwm_ctrl_a|s_clk_cn[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|Add0~5_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_pwm_ctrl_a|s_clk_cn[13]~0_combout\,
	ena => \i_pwm_ctrl_a|s_clk_cn[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_clk_cn\(15));

-- Location: MLABCELL_X84_Y9_N48
\i_pwm_ctrl_a|s_clk_cn[13]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|s_clk_cn[13]~0_combout\ = ( \i_pwm_ctrl_a|s_clk_cn\(15) & ( (!\i_pwm_ctrl_a|s_isEnabled~q\) # ((\i_pwm_ctrl_a|s_clk_cn\(14) & ((!\i_pwm_ctrl_a|Equal0~1_combout\) # (\i_pwm_ctrl_a|LessThan1~0_combout\)))) ) ) # ( !\i_pwm_ctrl_a|s_clk_cn\(15) 
-- & ( !\i_pwm_ctrl_a|s_isEnabled~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111001000111111111100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_Equal0~1_combout\,
	datab => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(14),
	datac => \i_pwm_ctrl_a|ALT_INV_LessThan1~0_combout\,
	datad => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	dataf => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(15),
	combout => \i_pwm_ctrl_a|s_clk_cn[13]~0_combout\);

-- Location: FF_X85_Y9_N2
\i_pwm_ctrl_a|s_clk_cn[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|Add0~45_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_pwm_ctrl_a|s_clk_cn[13]~0_combout\,
	ena => \i_pwm_ctrl_a|s_clk_cn[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_clk_cn\(0));

-- Location: LABCELL_X85_Y9_N3
\i_pwm_ctrl_a|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Add0~49_sumout\ = SUM(( \i_pwm_ctrl_a|s_clk_cn\(1) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~46\ ))
-- \i_pwm_ctrl_a|Add0~50\ = CARRY(( \i_pwm_ctrl_a|s_clk_cn\(1) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(1),
	cin => \i_pwm_ctrl_a|Add0~46\,
	sumout => \i_pwm_ctrl_a|Add0~49_sumout\,
	cout => \i_pwm_ctrl_a|Add0~50\);

-- Location: FF_X85_Y9_N5
\i_pwm_ctrl_a|s_clk_cn[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|Add0~49_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_pwm_ctrl_a|s_clk_cn[13]~0_combout\,
	ena => \i_pwm_ctrl_a|s_clk_cn[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_clk_cn\(1));

-- Location: LABCELL_X85_Y9_N6
\i_pwm_ctrl_a|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Add0~53_sumout\ = SUM(( \i_pwm_ctrl_a|s_clk_cn\(2) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~50\ ))
-- \i_pwm_ctrl_a|Add0~54\ = CARRY(( \i_pwm_ctrl_a|s_clk_cn\(2) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(2),
	cin => \i_pwm_ctrl_a|Add0~50\,
	sumout => \i_pwm_ctrl_a|Add0~53_sumout\,
	cout => \i_pwm_ctrl_a|Add0~54\);

-- Location: FF_X85_Y9_N8
\i_pwm_ctrl_a|s_clk_cn[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|Add0~53_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_pwm_ctrl_a|s_clk_cn[13]~0_combout\,
	ena => \i_pwm_ctrl_a|s_clk_cn[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_clk_cn\(2));

-- Location: LABCELL_X85_Y9_N9
\i_pwm_ctrl_a|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Add0~41_sumout\ = SUM(( \i_pwm_ctrl_a|s_clk_cn\(3) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~54\ ))
-- \i_pwm_ctrl_a|Add0~42\ = CARRY(( \i_pwm_ctrl_a|s_clk_cn\(3) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(3),
	cin => \i_pwm_ctrl_a|Add0~54\,
	sumout => \i_pwm_ctrl_a|Add0~41_sumout\,
	cout => \i_pwm_ctrl_a|Add0~42\);

-- Location: FF_X85_Y9_N11
\i_pwm_ctrl_a|s_clk_cn[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|Add0~41_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_pwm_ctrl_a|s_clk_cn[13]~0_combout\,
	ena => \i_pwm_ctrl_a|s_clk_cn[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_clk_cn\(3));

-- Location: LABCELL_X85_Y9_N12
\i_pwm_ctrl_a|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Add0~37_sumout\ = SUM(( \i_pwm_ctrl_a|s_clk_cn\(4) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~42\ ))
-- \i_pwm_ctrl_a|Add0~38\ = CARRY(( \i_pwm_ctrl_a|s_clk_cn\(4) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(4),
	cin => \i_pwm_ctrl_a|Add0~42\,
	sumout => \i_pwm_ctrl_a|Add0~37_sumout\,
	cout => \i_pwm_ctrl_a|Add0~38\);

-- Location: FF_X85_Y9_N14
\i_pwm_ctrl_a|s_clk_cn[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|Add0~37_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_pwm_ctrl_a|s_clk_cn[13]~0_combout\,
	ena => \i_pwm_ctrl_a|s_clk_cn[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_clk_cn\(4));

-- Location: LABCELL_X85_Y9_N15
\i_pwm_ctrl_a|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Add0~33_sumout\ = SUM(( \i_pwm_ctrl_a|s_clk_cn\(5) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~38\ ))
-- \i_pwm_ctrl_a|Add0~34\ = CARRY(( \i_pwm_ctrl_a|s_clk_cn\(5) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(5),
	cin => \i_pwm_ctrl_a|Add0~38\,
	sumout => \i_pwm_ctrl_a|Add0~33_sumout\,
	cout => \i_pwm_ctrl_a|Add0~34\);

-- Location: FF_X85_Y9_N17
\i_pwm_ctrl_a|s_clk_cn[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|Add0~33_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_pwm_ctrl_a|s_clk_cn[13]~0_combout\,
	ena => \i_pwm_ctrl_a|s_clk_cn[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_clk_cn\(5));

-- Location: LABCELL_X85_Y9_N18
\i_pwm_ctrl_a|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Add0~29_sumout\ = SUM(( \i_pwm_ctrl_a|s_clk_cn\(6) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~34\ ))
-- \i_pwm_ctrl_a|Add0~30\ = CARRY(( \i_pwm_ctrl_a|s_clk_cn\(6) ) + ( GND ) + ( \i_pwm_ctrl_a|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(6),
	cin => \i_pwm_ctrl_a|Add0~34\,
	sumout => \i_pwm_ctrl_a|Add0~29_sumout\,
	cout => \i_pwm_ctrl_a|Add0~30\);

-- Location: FF_X85_Y9_N20
\i_pwm_ctrl_a|s_clk_cn[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|Add0~29_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_pwm_ctrl_a|s_clk_cn[13]~0_combout\,
	ena => \i_pwm_ctrl_a|s_clk_cn[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_clk_cn\(6));

-- Location: FF_X85_Y9_N23
\i_pwm_ctrl_a|s_clk_cn[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|Add0~25_sumout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sclr => \i_pwm_ctrl_a|s_clk_cn[13]~0_combout\,
	ena => \i_pwm_ctrl_a|s_clk_cn[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_clk_cn\(7));

-- Location: LABCELL_X85_Y9_N54
\i_pwm_ctrl_a|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Equal0~2_combout\ = ( !\i_pwm_ctrl_a|s_clk_cn\(0) & ( \i_pwm_ctrl_a|s_clk_cn\(4) & ( (!\i_pwm_ctrl_a|s_clk_cn\(2) & (!\i_pwm_ctrl_a|s_clk_cn\(1) & !\i_pwm_ctrl_a|s_clk_cn\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(2),
	datac => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(1),
	datad => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(3),
	datae => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(0),
	dataf => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(4),
	combout => \i_pwm_ctrl_a|Equal0~2_combout\);

-- Location: MLABCELL_X84_Y9_N27
\i_pwm_ctrl_a|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Equal0~3_combout\ = ( \i_pwm_ctrl_a|s_clk_cn\(6) & ( (\i_pwm_ctrl_a|s_clk_cn\(15) & (\i_pwm_ctrl_a|s_clk_cn\(14) & !\i_pwm_ctrl_a|s_clk_cn\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(15),
	datac => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(14),
	datad => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(5),
	dataf => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(6),
	combout => \i_pwm_ctrl_a|Equal0~3_combout\);

-- Location: MLABCELL_X84_Y9_N21
\i_pwm_ctrl_a|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|Equal0~4_combout\ = ( \i_pwm_ctrl_a|Equal0~1_combout\ & ( (!\i_pwm_ctrl_a|s_clk_cn\(7) & (\i_pwm_ctrl_a|Equal0~0_combout\ & (\i_pwm_ctrl_a|Equal0~2_combout\ & \i_pwm_ctrl_a|Equal0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(7),
	datab => \i_pwm_ctrl_a|ALT_INV_Equal0~0_combout\,
	datac => \i_pwm_ctrl_a|ALT_INV_Equal0~2_combout\,
	datad => \i_pwm_ctrl_a|ALT_INV_Equal0~3_combout\,
	dataf => \i_pwm_ctrl_a|ALT_INV_Equal0~1_combout\,
	combout => \i_pwm_ctrl_a|Equal0~4_combout\);

-- Location: DSP_X86_Y8_N0
\i_pwm_ctrl_a|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 9,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 7,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \i_pwm_ctrl_a|Mult0~8_AX_bus\,
	ay => \i_pwm_ctrl_a|Mult0~8_AY_bus\,
	resulta => \i_pwm_ctrl_a|Mult0~8_RESULTA_bus\);

-- Location: MLABCELL_X84_Y6_N30
\i_pwm_ctrl_a|s_dc_cn[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|s_dc_cn[15]~0_combout\ = ( !\i_pwm_ctrl_a|Mult0~23\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i_pwm_ctrl_a|ALT_INV_Mult0~23\,
	combout => \i_pwm_ctrl_a|s_dc_cn[15]~0_combout\);

-- Location: FF_X84_Y6_N32
\i_pwm_ctrl_a|s_dc_cn[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|s_dc_cn[15]~0_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_isEnabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_dc_cn\(15));

-- Location: FF_X84_Y9_N43
\i_pwm_ctrl_a|s_dc_cn[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \i_pwm_ctrl_a|Mult0~18\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sload => VCC,
	ena => \i_pwm_ctrl_a|s_isEnabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_dc_cn\(10));

-- Location: FF_X84_Y9_N17
\i_pwm_ctrl_a|s_dc_cn[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \i_pwm_ctrl_a|Mult0~19\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sload => VCC,
	ena => \i_pwm_ctrl_a|s_isEnabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_dc_cn\(11));

-- Location: MLABCELL_X84_Y9_N15
\i_pwm_ctrl_a|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|LessThan0~7_combout\ = ( \i_pwm_ctrl_a|s_clk_cn\(11) & ( (!\i_pwm_ctrl_a|s_dc_cn\(11)) # ((\i_pwm_ctrl_a|s_clk_cn\(10) & !\i_pwm_ctrl_a|s_dc_cn\(10))) ) ) # ( !\i_pwm_ctrl_a|s_clk_cn\(11) & ( (\i_pwm_ctrl_a|s_clk_cn\(10) & 
-- (!\i_pwm_ctrl_a|s_dc_cn\(10) & !\i_pwm_ctrl_a|s_dc_cn\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000011111111010100001111111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(10),
	datac => \i_pwm_ctrl_a|ALT_INV_s_dc_cn\(10),
	datad => \i_pwm_ctrl_a|ALT_INV_s_dc_cn\(11),
	dataf => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(11),
	combout => \i_pwm_ctrl_a|LessThan0~7_combout\);

-- Location: MLABCELL_X84_Y9_N51
\i_pwm_ctrl_a|s_dc_cn[9]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|s_dc_cn[9]~2_combout\ = ( !\i_pwm_ctrl_a|Mult0~17\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i_pwm_ctrl_a|ALT_INV_Mult0~17\,
	combout => \i_pwm_ctrl_a|s_dc_cn[9]~2_combout\);

-- Location: FF_X84_Y9_N53
\i_pwm_ctrl_a|s_dc_cn[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|s_dc_cn[9]~2_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_isEnabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_dc_cn\(9));

-- Location: MLABCELL_X84_Y9_N42
\i_pwm_ctrl_a|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|LessThan0~5_combout\ = ( \i_pwm_ctrl_a|s_clk_cn\(10) & ( (\i_pwm_ctrl_a|s_dc_cn\(10) & (!\i_pwm_ctrl_a|s_dc_cn\(11) $ (\i_pwm_ctrl_a|s_clk_cn\(11)))) ) ) # ( !\i_pwm_ctrl_a|s_clk_cn\(10) & ( (!\i_pwm_ctrl_a|s_dc_cn\(10) & 
-- (!\i_pwm_ctrl_a|s_dc_cn\(11) $ (\i_pwm_ctrl_a|s_clk_cn\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl_a|ALT_INV_s_dc_cn\(11),
	datac => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(11),
	datad => \i_pwm_ctrl_a|ALT_INV_s_dc_cn\(10),
	dataf => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(10),
	combout => \i_pwm_ctrl_a|LessThan0~5_combout\);

-- Location: MLABCELL_X84_Y9_N6
\i_pwm_ctrl_a|s_dc_cn[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|s_dc_cn[4]~5_combout\ = ( !\i_pwm_ctrl_a|Mult0~12\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i_pwm_ctrl_a|ALT_INV_Mult0~12\,
	combout => \i_pwm_ctrl_a|s_dc_cn[4]~5_combout\);

-- Location: FF_X84_Y9_N7
\i_pwm_ctrl_a|s_dc_cn[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|s_dc_cn[4]~5_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_isEnabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_dc_cn\(4));

-- Location: FF_X85_Y9_N59
\i_pwm_ctrl_a|s_dc_cn[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \i_pwm_ctrl_a|Mult0~9\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sload => VCC,
	ena => \i_pwm_ctrl_a|s_isEnabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_dc_cn\(1));

-- Location: FF_X85_Y9_N52
\i_pwm_ctrl_a|s_dc_cn[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \i_pwm_ctrl_a|Mult0~10\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sload => VCC,
	ena => \i_pwm_ctrl_a|s_isEnabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_dc_cn\(2));

-- Location: FF_X85_Y9_N50
\i_pwm_ctrl_a|s_dc_cn[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \i_pwm_ctrl_a|Mult0~8_resulta\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sload => VCC,
	ena => \i_pwm_ctrl_a|s_isEnabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_dc_cn\(0));

-- Location: LABCELL_X85_Y9_N48
\i_pwm_ctrl_a|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|LessThan0~2_combout\ = ( \i_pwm_ctrl_a|s_dc_cn\(0) & ( \i_pwm_ctrl_a|s_clk_cn\(2) & ( (!\i_pwm_ctrl_a|s_dc_cn\(2)) # ((\i_pwm_ctrl_a|s_clk_cn\(1) & !\i_pwm_ctrl_a|s_dc_cn\(1))) ) ) ) # ( !\i_pwm_ctrl_a|s_dc_cn\(0) & ( 
-- \i_pwm_ctrl_a|s_clk_cn\(2) & ( (!\i_pwm_ctrl_a|s_dc_cn\(2)) # ((!\i_pwm_ctrl_a|s_clk_cn\(1) & (!\i_pwm_ctrl_a|s_dc_cn\(1) & \i_pwm_ctrl_a|s_clk_cn\(0))) # (\i_pwm_ctrl_a|s_clk_cn\(1) & ((!\i_pwm_ctrl_a|s_dc_cn\(1)) # (\i_pwm_ctrl_a|s_clk_cn\(0))))) ) ) ) 
-- # ( \i_pwm_ctrl_a|s_dc_cn\(0) & ( !\i_pwm_ctrl_a|s_clk_cn\(2) & ( (\i_pwm_ctrl_a|s_clk_cn\(1) & (!\i_pwm_ctrl_a|s_dc_cn\(1) & !\i_pwm_ctrl_a|s_dc_cn\(2))) ) ) ) # ( !\i_pwm_ctrl_a|s_dc_cn\(0) & ( !\i_pwm_ctrl_a|s_clk_cn\(2) & ( (!\i_pwm_ctrl_a|s_dc_cn\(2) 
-- & ((!\i_pwm_ctrl_a|s_clk_cn\(1) & (!\i_pwm_ctrl_a|s_dc_cn\(1) & \i_pwm_ctrl_a|s_clk_cn\(0))) # (\i_pwm_ctrl_a|s_clk_cn\(1) & ((!\i_pwm_ctrl_a|s_dc_cn\(1)) # (\i_pwm_ctrl_a|s_clk_cn\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100000000010001000000000011111111010011011111111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(1),
	datab => \i_pwm_ctrl_a|ALT_INV_s_dc_cn\(1),
	datac => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(0),
	datad => \i_pwm_ctrl_a|ALT_INV_s_dc_cn\(2),
	datae => \i_pwm_ctrl_a|ALT_INV_s_dc_cn\(0),
	dataf => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(2),
	combout => \i_pwm_ctrl_a|LessThan0~2_combout\);

-- Location: FF_X84_Y9_N2
\i_pwm_ctrl_a|s_dc_cn[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \i_pwm_ctrl_a|Mult0~11\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sload => VCC,
	ena => \i_pwm_ctrl_a|s_isEnabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_dc_cn\(3));

-- Location: FF_X84_Y9_N13
\i_pwm_ctrl_a|s_dc_cn[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \i_pwm_ctrl_a|Mult0~13\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sload => VCC,
	ena => \i_pwm_ctrl_a|s_isEnabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_dc_cn\(5));

-- Location: MLABCELL_X84_Y9_N12
\i_pwm_ctrl_a|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|LessThan0~1_combout\ = !\i_pwm_ctrl_a|s_clk_cn\(5) $ (!\i_pwm_ctrl_a|s_dc_cn\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(5),
	datad => \i_pwm_ctrl_a|ALT_INV_s_dc_cn\(5),
	combout => \i_pwm_ctrl_a|LessThan0~1_combout\);

-- Location: MLABCELL_X84_Y9_N0
\i_pwm_ctrl_a|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|LessThan0~3_combout\ = ( \i_pwm_ctrl_a|s_dc_cn\(3) & ( !\i_pwm_ctrl_a|LessThan0~1_combout\ & ( (!\i_pwm_ctrl_a|s_clk_cn\(4) & (\i_pwm_ctrl_a|s_clk_cn\(3) & (\i_pwm_ctrl_a|s_dc_cn\(4) & \i_pwm_ctrl_a|LessThan0~2_combout\))) # 
-- (\i_pwm_ctrl_a|s_clk_cn\(4) & (((\i_pwm_ctrl_a|s_clk_cn\(3) & \i_pwm_ctrl_a|LessThan0~2_combout\)) # (\i_pwm_ctrl_a|s_dc_cn\(4)))) ) ) ) # ( !\i_pwm_ctrl_a|s_dc_cn\(3) & ( !\i_pwm_ctrl_a|LessThan0~1_combout\ & ( (!\i_pwm_ctrl_a|s_clk_cn\(4) & 
-- (\i_pwm_ctrl_a|s_dc_cn\(4) & ((\i_pwm_ctrl_a|LessThan0~2_combout\) # (\i_pwm_ctrl_a|s_clk_cn\(3))))) # (\i_pwm_ctrl_a|s_clk_cn\(4) & (((\i_pwm_ctrl_a|LessThan0~2_combout\) # (\i_pwm_ctrl_a|s_dc_cn\(4))) # (\i_pwm_ctrl_a|s_clk_cn\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100111111000000110001011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(3),
	datab => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(4),
	datac => \i_pwm_ctrl_a|ALT_INV_s_dc_cn\(4),
	datad => \i_pwm_ctrl_a|ALT_INV_LessThan0~2_combout\,
	datae => \i_pwm_ctrl_a|ALT_INV_s_dc_cn\(3),
	dataf => \i_pwm_ctrl_a|ALT_INV_LessThan0~1_combout\,
	combout => \i_pwm_ctrl_a|LessThan0~3_combout\);

-- Location: MLABCELL_X84_Y9_N45
\i_pwm_ctrl_a|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|LessThan0~0_combout\ = (\i_pwm_ctrl_a|s_clk_cn\(5) & !\i_pwm_ctrl_a|s_dc_cn\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(5),
	datac => \i_pwm_ctrl_a|ALT_INV_s_dc_cn\(5),
	combout => \i_pwm_ctrl_a|LessThan0~0_combout\);

-- Location: MLABCELL_X84_Y9_N9
\i_pwm_ctrl_a|s_dc_cn[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|s_dc_cn[6]~4_combout\ = ( !\i_pwm_ctrl_a|Mult0~14\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i_pwm_ctrl_a|ALT_INV_Mult0~14\,
	combout => \i_pwm_ctrl_a|s_dc_cn[6]~4_combout\);

-- Location: FF_X84_Y9_N11
\i_pwm_ctrl_a|s_dc_cn[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|s_dc_cn[6]~4_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_isEnabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_dc_cn\(6));

-- Location: FF_X84_Y9_N38
\i_pwm_ctrl_a|s_dc_cn[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \i_pwm_ctrl_a|Mult0~15\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sload => VCC,
	ena => \i_pwm_ctrl_a|s_isEnabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_dc_cn\(7));

-- Location: MLABCELL_X84_Y9_N36
\i_pwm_ctrl_a|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|LessThan0~4_combout\ = ( \i_pwm_ctrl_a|s_dc_cn\(7) & ( \i_pwm_ctrl_a|s_clk_cn\(6) & ( (!\i_pwm_ctrl_a|s_clk_cn\(7)) # ((!\i_pwm_ctrl_a|LessThan0~3_combout\ & (!\i_pwm_ctrl_a|LessThan0~0_combout\ & !\i_pwm_ctrl_a|s_dc_cn\(6)))) ) ) ) # ( 
-- !\i_pwm_ctrl_a|s_dc_cn\(7) & ( \i_pwm_ctrl_a|s_clk_cn\(6) & ( (!\i_pwm_ctrl_a|LessThan0~3_combout\ & (!\i_pwm_ctrl_a|LessThan0~0_combout\ & (!\i_pwm_ctrl_a|s_clk_cn\(7) & !\i_pwm_ctrl_a|s_dc_cn\(6)))) ) ) ) # ( \i_pwm_ctrl_a|s_dc_cn\(7) & ( 
-- !\i_pwm_ctrl_a|s_clk_cn\(6) & ( (!\i_pwm_ctrl_a|s_clk_cn\(7)) # ((!\i_pwm_ctrl_a|s_dc_cn\(6)) # ((!\i_pwm_ctrl_a|LessThan0~3_combout\ & !\i_pwm_ctrl_a|LessThan0~0_combout\))) ) ) ) # ( !\i_pwm_ctrl_a|s_dc_cn\(7) & ( !\i_pwm_ctrl_a|s_clk_cn\(6) & ( 
-- (!\i_pwm_ctrl_a|s_clk_cn\(7) & ((!\i_pwm_ctrl_a|s_dc_cn\(6)) # ((!\i_pwm_ctrl_a|LessThan0~3_combout\ & !\i_pwm_ctrl_a|LessThan0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010000000111111111111100010000000000000001111100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_LessThan0~3_combout\,
	datab => \i_pwm_ctrl_a|ALT_INV_LessThan0~0_combout\,
	datac => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(7),
	datad => \i_pwm_ctrl_a|ALT_INV_s_dc_cn\(6),
	datae => \i_pwm_ctrl_a|ALT_INV_s_dc_cn\(7),
	dataf => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(6),
	combout => \i_pwm_ctrl_a|LessThan0~4_combout\);

-- Location: LABCELL_X83_Y9_N24
\i_pwm_ctrl_a|s_dc_cn[8]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|s_dc_cn[8]~3_combout\ = ( !\i_pwm_ctrl_a|Mult0~16\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i_pwm_ctrl_a|ALT_INV_Mult0~16\,
	combout => \i_pwm_ctrl_a|s_dc_cn[8]~3_combout\);

-- Location: FF_X83_Y9_N25
\i_pwm_ctrl_a|s_dc_cn[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|s_dc_cn[8]~3_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_isEnabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_dc_cn\(8));

-- Location: MLABCELL_X84_Y9_N54
\i_pwm_ctrl_a|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|LessThan0~6_combout\ = ( \i_pwm_ctrl_a|LessThan0~4_combout\ & ( \i_pwm_ctrl_a|s_dc_cn\(8) & ( (\i_pwm_ctrl_a|LessThan0~5_combout\ & ((!\i_pwm_ctrl_a|s_clk_cn\(8) & (\i_pwm_ctrl_a|s_clk_cn\(9) & \i_pwm_ctrl_a|s_dc_cn\(9))) # 
-- (\i_pwm_ctrl_a|s_clk_cn\(8) & ((\i_pwm_ctrl_a|s_dc_cn\(9)) # (\i_pwm_ctrl_a|s_clk_cn\(9)))))) ) ) ) # ( !\i_pwm_ctrl_a|LessThan0~4_combout\ & ( \i_pwm_ctrl_a|s_dc_cn\(8) & ( (\i_pwm_ctrl_a|LessThan0~5_combout\ & ((\i_pwm_ctrl_a|s_dc_cn\(9)) # 
-- (\i_pwm_ctrl_a|s_clk_cn\(9)))) ) ) ) # ( \i_pwm_ctrl_a|LessThan0~4_combout\ & ( !\i_pwm_ctrl_a|s_dc_cn\(8) & ( (\i_pwm_ctrl_a|s_clk_cn\(9) & (\i_pwm_ctrl_a|s_dc_cn\(9) & \i_pwm_ctrl_a|LessThan0~5_combout\)) ) ) ) # ( !\i_pwm_ctrl_a|LessThan0~4_combout\ & 
-- ( !\i_pwm_ctrl_a|s_dc_cn\(8) & ( (\i_pwm_ctrl_a|LessThan0~5_combout\ & ((!\i_pwm_ctrl_a|s_clk_cn\(8) & (\i_pwm_ctrl_a|s_clk_cn\(9) & \i_pwm_ctrl_a|s_dc_cn\(9))) # (\i_pwm_ctrl_a|s_clk_cn\(8) & ((\i_pwm_ctrl_a|s_dc_cn\(9)) # 
-- (\i_pwm_ctrl_a|s_clk_cn\(9)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000000001100000000001111110000000000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(8),
	datab => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(9),
	datac => \i_pwm_ctrl_a|ALT_INV_s_dc_cn\(9),
	datad => \i_pwm_ctrl_a|ALT_INV_LessThan0~5_combout\,
	datae => \i_pwm_ctrl_a|ALT_INV_LessThan0~4_combout\,
	dataf => \i_pwm_ctrl_a|ALT_INV_s_dc_cn\(8),
	combout => \i_pwm_ctrl_a|LessThan0~6_combout\);

-- Location: FF_X84_Y9_N32
\i_pwm_ctrl_a|s_dc_cn[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \i_pwm_ctrl_a|Mult0~20\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sload => VCC,
	ena => \i_pwm_ctrl_a|s_isEnabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_dc_cn\(12));

-- Location: FF_X84_Y9_N41
\i_pwm_ctrl_a|s_dc_cn[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \i_pwm_ctrl_a|Mult0~21\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	sload => VCC,
	ena => \i_pwm_ctrl_a|s_isEnabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_dc_cn\(13));

-- Location: MLABCELL_X84_Y9_N30
\i_pwm_ctrl_a|LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|LessThan0~8_combout\ = ( \i_pwm_ctrl_a|s_dc_cn\(12) & ( \i_pwm_ctrl_a|s_dc_cn\(13) & ( (!\i_pwm_ctrl_a|s_clk_cn\(12)) # ((!\i_pwm_ctrl_a|s_clk_cn\(13)) # ((!\i_pwm_ctrl_a|LessThan0~7_combout\ & !\i_pwm_ctrl_a|LessThan0~6_combout\))) ) ) ) # 
-- ( !\i_pwm_ctrl_a|s_dc_cn\(12) & ( \i_pwm_ctrl_a|s_dc_cn\(13) & ( (!\i_pwm_ctrl_a|s_clk_cn\(13)) # ((!\i_pwm_ctrl_a|LessThan0~7_combout\ & (!\i_pwm_ctrl_a|s_clk_cn\(12) & !\i_pwm_ctrl_a|LessThan0~6_combout\))) ) ) ) # ( \i_pwm_ctrl_a|s_dc_cn\(12) & ( 
-- !\i_pwm_ctrl_a|s_dc_cn\(13) & ( (!\i_pwm_ctrl_a|s_clk_cn\(13) & ((!\i_pwm_ctrl_a|s_clk_cn\(12)) # ((!\i_pwm_ctrl_a|LessThan0~7_combout\ & !\i_pwm_ctrl_a|LessThan0~6_combout\)))) ) ) ) # ( !\i_pwm_ctrl_a|s_dc_cn\(12) & ( !\i_pwm_ctrl_a|s_dc_cn\(13) & ( 
-- (!\i_pwm_ctrl_a|LessThan0~7_combout\ & (!\i_pwm_ctrl_a|s_clk_cn\(12) & (!\i_pwm_ctrl_a|LessThan0~6_combout\ & !\i_pwm_ctrl_a|s_clk_cn\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000111011000000000011111111100000001111111111101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_LessThan0~7_combout\,
	datab => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(12),
	datac => \i_pwm_ctrl_a|ALT_INV_LessThan0~6_combout\,
	datad => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(13),
	datae => \i_pwm_ctrl_a|ALT_INV_s_dc_cn\(12),
	dataf => \i_pwm_ctrl_a|ALT_INV_s_dc_cn\(13),
	combout => \i_pwm_ctrl_a|LessThan0~8_combout\);

-- Location: MLABCELL_X84_Y6_N33
\i_pwm_ctrl_a|s_dc_cn[14]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|s_dc_cn[14]~1_combout\ = ( !\i_pwm_ctrl_a|Mult0~22\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \i_pwm_ctrl_a|ALT_INV_Mult0~22\,
	combout => \i_pwm_ctrl_a|s_dc_cn[14]~1_combout\);

-- Location: FF_X84_Y6_N34
\i_pwm_ctrl_a|s_dc_cn[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|s_dc_cn[14]~1_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_pwm_ctrl_a|s_isEnabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|s_dc_cn\(14));

-- Location: LABCELL_X83_Y9_N54
\i_pwm_ctrl_a|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_pwm_ctrl_a|process_0~0_combout\ = ( \i_pwm_ctrl_a|s_clk_cn\(15) & ( \i_pwm_ctrl_a|s_clk_cn\(14) & ( ((!\i_pwm_ctrl_a|s_dc_cn\(15) & (\i_pwm_ctrl_a|LessThan0~8_combout\ & !\i_pwm_ctrl_a|s_dc_cn\(14)))) # (\i_pwm_ctrl_a|Equal0~4_combout\) ) ) ) # ( 
-- !\i_pwm_ctrl_a|s_clk_cn\(15) & ( \i_pwm_ctrl_a|s_clk_cn\(14) & ( ((!\i_pwm_ctrl_a|s_dc_cn\(15)) # ((\i_pwm_ctrl_a|LessThan0~8_combout\ & !\i_pwm_ctrl_a|s_dc_cn\(14)))) # (\i_pwm_ctrl_a|Equal0~4_combout\) ) ) ) # ( \i_pwm_ctrl_a|s_clk_cn\(15) & ( 
-- !\i_pwm_ctrl_a|s_clk_cn\(14) & ( ((!\i_pwm_ctrl_a|s_dc_cn\(15) & ((!\i_pwm_ctrl_a|s_dc_cn\(14)) # (\i_pwm_ctrl_a|LessThan0~8_combout\)))) # (\i_pwm_ctrl_a|Equal0~4_combout\) ) ) ) # ( !\i_pwm_ctrl_a|s_clk_cn\(15) & ( !\i_pwm_ctrl_a|s_clk_cn\(14) & ( 
-- ((!\i_pwm_ctrl_a|s_dc_cn\(15)) # ((!\i_pwm_ctrl_a|s_dc_cn\(14)) # (\i_pwm_ctrl_a|LessThan0~8_combout\))) # (\i_pwm_ctrl_a|Equal0~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011111110111010101110111011111110111010101110101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_Equal0~4_combout\,
	datab => \i_pwm_ctrl_a|ALT_INV_s_dc_cn\(15),
	datac => \i_pwm_ctrl_a|ALT_INV_LessThan0~8_combout\,
	datad => \i_pwm_ctrl_a|ALT_INV_s_dc_cn\(14),
	datae => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(15),
	dataf => \i_pwm_ctrl_a|ALT_INV_s_clk_cn\(14),
	combout => \i_pwm_ctrl_a|process_0~0_combout\);

-- Location: DDIOOUTCELL_X52_Y0_N10
\i_pwm_ctrl_a|ledr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_pwm_ctrl_a|process_0~0_combout\,
	sclr => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	ena => \create_pll:i_reset_ctrl_a|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pwm_ctrl_a|ledr~q\);

-- Location: FF_X80_Y8_N26
\i_serial_uart_a|received_error~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|received_error~0_combout\,
	sclr => \i_serial_uart_a|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|received_error~_Duplicate_1_q\);

-- Location: LABCELL_X80_Y8_N24
\i_serial_uart_a|received_error~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|received_error~0_combout\ = ( \i_serial_uart_a|received_error~_Duplicate_1_q\ & ( \i_serial_uart_a|rx_bit_cnt_wrap~q\ & ( (!\i_serial_uart_a|rx_2r~q\) # (!\i_serial_uart_a|rx_state.s_stop_bit~DUPLICATE_q\) ) ) ) # ( 
-- !\i_serial_uart_a|received_error~_Duplicate_1_q\ & ( \i_serial_uart_a|rx_bit_cnt_wrap~q\ & ( (!\i_serial_uart_a|rx_2r~q\ & \i_serial_uart_a|rx_state.s_stop_bit~DUPLICATE_q\) ) ) ) # ( \i_serial_uart_a|received_error~_Duplicate_1_q\ & ( 
-- !\i_serial_uart_a|rx_bit_cnt_wrap~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart_a|ALT_INV_rx_2r~q\,
	datad => \i_serial_uart_a|ALT_INV_rx_state.s_stop_bit~DUPLICATE_q\,
	datae => \i_serial_uart_a|ALT_INV_received_error~_Duplicate_1_q\,
	dataf => \i_serial_uart_a|ALT_INV_rx_bit_cnt_wrap~q\,
	combout => \i_serial_uart_a|received_error~0_combout\);

-- Location: DDIOOUTCELL_X52_Y0_N27
\i_serial_uart_a|received_error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|received_error~0_combout\,
	sclr => \i_serial_uart_a|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|received_error~q\);

-- Location: LABCELL_X81_Y6_N0
\i_serial_uart_a|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Add3~29_sumout\ = SUM(( \i_serial_uart_a|tx_bit_cnt\(0) ) + ( VCC ) + ( !VCC ))
-- \i_serial_uart_a|Add3~30\ = CARRY(( \i_serial_uart_a|tx_bit_cnt\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart_a|ALT_INV_tx_bit_cnt\(0),
	cin => GND,
	sumout => \i_serial_uart_a|Add3~29_sumout\,
	cout => \i_serial_uart_a|Add3~30\);

-- Location: LABCELL_X81_Y6_N21
\i_serial_uart_a|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Add3~1_sumout\ = SUM(( \i_serial_uart_a|tx_bit_cnt\(7) ) + ( GND ) + ( \i_serial_uart_a|Add3~10\ ))
-- \i_serial_uart_a|Add3~2\ = CARRY(( \i_serial_uart_a|tx_bit_cnt\(7) ) + ( GND ) + ( \i_serial_uart_a|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart_a|ALT_INV_tx_bit_cnt\(7),
	cin => \i_serial_uart_a|Add3~10\,
	sumout => \i_serial_uart_a|Add3~1_sumout\,
	cout => \i_serial_uart_a|Add3~2\);

-- Location: LABCELL_X81_Y6_N24
\i_serial_uart_a|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Add3~5_sumout\ = SUM(( \i_serial_uart_a|tx_bit_cnt\(8) ) + ( GND ) + ( \i_serial_uart_a|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart_a|ALT_INV_tx_bit_cnt\(8),
	cin => \i_serial_uart_a|Add3~2\,
	sumout => \i_serial_uart_a|Add3~5_sumout\);

-- Location: FF_X81_Y6_N25
\i_serial_uart_a|tx_bit_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Add3~5_sumout\,
	sclr => \i_serial_uart_a|tx_bit_cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_bit_cnt\(8));

-- Location: LABCELL_X81_Y6_N54
\i_serial_uart_a|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|LessThan2~0_combout\ = ( \i_serial_uart_a|tx_bit_cnt\(1) & ( \i_serial_uart_a|tx_bit_cnt\(4) & ( \i_serial_uart_a|tx_bit_cnt\(5) ) ) ) # ( !\i_serial_uart_a|tx_bit_cnt\(1) & ( \i_serial_uart_a|tx_bit_cnt\(4) & ( 
-- (\i_serial_uart_a|tx_bit_cnt\(5) & (((\i_serial_uart_a|tx_bit_cnt\(0)) # (\i_serial_uart_a|tx_bit_cnt\(2))) # (\i_serial_uart_a|tx_bit_cnt\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000011111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_tx_bit_cnt\(3),
	datab => \i_serial_uart_a|ALT_INV_tx_bit_cnt\(2),
	datac => \i_serial_uart_a|ALT_INV_tx_bit_cnt\(0),
	datad => \i_serial_uart_a|ALT_INV_tx_bit_cnt\(5),
	datae => \i_serial_uart_a|ALT_INV_tx_bit_cnt\(1),
	dataf => \i_serial_uart_a|ALT_INV_tx_bit_cnt\(4),
	combout => \i_serial_uart_a|LessThan2~0_combout\);

-- Location: LABCELL_X79_Y6_N33
\i_dc_disp_a|s_tx_cn[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_tx_cn[2]~0_combout\ = ( \i_dc_disp_a|s_tx_cn\(0) & ( !\i_dc_disp_a|s_tx_cn\(2) $ (((!\i_serial_uart_a|transmit_ready_int~q\) # ((!\i_dc_disp_a|s_tx_cn\(1)) # (\i_dc_disp_a|s_ready_cd~q\)))) ) ) # ( !\i_dc_disp_a|s_tx_cn\(0) & ( 
-- \i_dc_disp_a|s_tx_cn\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000100111110110000010011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_transmit_ready_int~q\,
	datab => \i_dc_disp_a|ALT_INV_s_ready_cd~q\,
	datac => \i_dc_disp_a|ALT_INV_s_tx_cn\(1),
	datad => \i_dc_disp_a|ALT_INV_s_tx_cn\(2),
	dataf => \i_dc_disp_a|ALT_INV_s_tx_cn\(0),
	combout => \i_dc_disp_a|s_tx_cn[2]~0_combout\);

-- Location: LABCELL_X80_Y8_N30
\i_dc_disp_a|s_data_backlog~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_data_backlog~0_combout\ = ( !\i_dc_disp_a|p_display~0_combout\ & ( ((!\i_dc_disp_a|s_updateInfo~q\ & \i_pwm_ctrl_a|s_dc_changed~q\)) # (\i_dc_disp_a|s_data_backlog~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111111000010101111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_s_updateInfo~q\,
	datac => \i_pwm_ctrl_a|ALT_INV_s_dc_changed~q\,
	datad => \i_dc_disp_a|ALT_INV_s_data_backlog~q\,
	dataf => \i_dc_disp_a|ALT_INV_p_display~0_combout\,
	combout => \i_dc_disp_a|s_data_backlog~0_combout\);

-- Location: FF_X80_Y8_N32
\i_dc_disp_a|s_data_backlog\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_data_backlog~0_combout\,
	ena => \create_pll:i_reset_ctrl_a|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_data_backlog~q\);

-- Location: LABCELL_X79_Y6_N42
\i_dc_disp_a|s_backlog_c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_backlog_c~0_combout\ = ( \i_dc_disp_a|s_backlog_c~q\ & ( \i_dc_disp_a|s_data_backlog~q\ & ( (!\i_dc_disp_a|LessThan0~0_combout\) # (((!\i_serial_uart_a|transmit_ready_int~q\) # (!\create_pll:i_reset_ctrl_a|reset_out~q\)) # 
-- (\i_dc_disp_a|s_ready_cd~q\)) ) ) ) # ( !\i_dc_disp_a|s_backlog_c~q\ & ( \i_dc_disp_a|s_data_backlog~q\ & ( (\i_dc_disp_a|LessThan0~0_combout\ & (!\i_dc_disp_a|s_ready_cd~q\ & (\i_serial_uart_a|transmit_ready_int~q\ & 
-- \create_pll:i_reset_ctrl_a|reset_out~q\))) ) ) ) # ( \i_dc_disp_a|s_backlog_c~q\ & ( !\i_dc_disp_a|s_data_backlog~q\ & ( (!\i_dc_disp_a|LessThan0~0_combout\) # (((!\i_serial_uart_a|transmit_ready_int~q\) # (!\create_pll:i_reset_ctrl_a|reset_out~q\)) # 
-- (\i_dc_disp_a|s_ready_cd~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000001001111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_LessThan0~0_combout\,
	datab => \i_dc_disp_a|ALT_INV_s_ready_cd~q\,
	datac => \i_serial_uart_a|ALT_INV_transmit_ready_int~q\,
	datad => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	datae => \i_dc_disp_a|ALT_INV_s_backlog_c~q\,
	dataf => \i_dc_disp_a|ALT_INV_s_data_backlog~q\,
	combout => \i_dc_disp_a|s_backlog_c~0_combout\);

-- Location: LABCELL_X80_Y10_N30
\i_dc_disp_a|s_backlog_c~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_backlog_c~1_combout\ = ( \i_dc_disp_a|s_updateInfo~q\ & ( \create_pll:i_reset_ctrl_a|reset_out~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	dataf => \i_dc_disp_a|ALT_INV_s_updateInfo~q\,
	combout => \i_dc_disp_a|s_backlog_c~1_combout\);

-- Location: FF_X79_Y6_N43
\i_dc_disp_a|s_backlog_c\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_backlog_c~0_combout\,
	clrn => \i_dc_disp_a|ALT_INV_s_backlog_c~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_backlog_c~q\);

-- Location: LABCELL_X75_Y6_N9
\i_dc_disp_a|p_tData~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|p_tData~0_combout\ = ( \i_dc_disp_a|s_data_backlog~q\ & ( !\i_dc_disp_a|s_backlog_c~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_s_backlog_c~q\,
	datae => \i_dc_disp_a|ALT_INV_s_data_backlog~q\,
	combout => \i_dc_disp_a|p_tData~0_combout\);

-- Location: LABCELL_X79_Y6_N51
\i_dc_disp_a|s_completed_tx~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_completed_tx~0_combout\ = ( \i_serial_uart_a|transmit_ready_int~q\ & ( (\i_dc_disp_a|s_completed_tx~q\ & ((!\i_dc_disp_a|LessThan0~0_combout\) # ((\i_dc_disp_a|s_ready_cd~q\) # (\i_dc_disp_a|p_tData~0_combout\)))) ) ) # ( 
-- !\i_serial_uart_a|transmit_ready_int~q\ & ( \i_dc_disp_a|s_completed_tx~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100100011001100110010001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_LessThan0~0_combout\,
	datab => \i_dc_disp_a|ALT_INV_s_completed_tx~q\,
	datac => \i_dc_disp_a|ALT_INV_p_tData~0_combout\,
	datad => \i_dc_disp_a|ALT_INV_s_ready_cd~q\,
	dataf => \i_serial_uart_a|ALT_INV_transmit_ready_int~q\,
	combout => \i_dc_disp_a|s_completed_tx~0_combout\);

-- Location: FF_X79_Y6_N52
\i_dc_disp_a|s_completed_tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_completed_tx~0_combout\,
	clrn => \i_dc_disp_a|ALT_INV_s_valid_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_completed_tx~q\);

-- Location: FF_X79_Y6_N13
\i_dc_disp_a|s_tx_cn[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_tx_cn[1]~1_combout\,
	clrn => \i_dc_disp_a|ALT_INV_s_valid_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\);

-- Location: FF_X79_Y6_N34
\i_dc_disp_a|s_tx_cn[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_tx_cn[2]~0_combout\,
	clrn => \i_dc_disp_a|ALT_INV_s_valid_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y8_N0
\i_dc_disp_a|Mux40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux40~0_combout\ = ( \i_dc_disp_a|s_started_tx~q\ & ( \i_dc_disp_a|s_tx_cn\(0) & ( ((!\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\) # ((!\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\) # (!\i_serial_uart_a|transmit_ready_int~q\))) # 
-- (\i_dc_disp_a|s_ready_cd~q\) ) ) ) # ( \i_dc_disp_a|s_started_tx~q\ & ( !\i_dc_disp_a|s_tx_cn\(0) ) ) # ( !\i_dc_disp_a|s_started_tx~q\ & ( !\i_dc_disp_a|s_tx_cn\(0) & ( (!\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\ & !\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000111111111111111100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_s_ready_cd~q\,
	datab => \i_dc_disp_a|ALT_INV_s_tx_cn[1]~DUPLICATE_q\,
	datac => \i_dc_disp_a|ALT_INV_s_tx_cn[2]~DUPLICATE_q\,
	datad => \i_serial_uart_a|ALT_INV_transmit_ready_int~q\,
	datae => \i_dc_disp_a|ALT_INV_s_started_tx~q\,
	dataf => \i_dc_disp_a|ALT_INV_s_tx_cn\(0),
	combout => \i_dc_disp_a|Mux40~0_combout\);

-- Location: FF_X80_Y8_N2
\i_dc_disp_a|s_started_tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux40~0_combout\,
	clrn => \i_dc_disp_a|ALT_INV_s_backlog_c~1_combout\,
	ena => \create_pll:i_reset_ctrl_a|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_started_tx~q\);

-- Location: LABCELL_X80_Y8_N21
\i_dc_disp_a|s_tx_update_complete_state[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_tx_update_complete_state[1]~0_combout\ = ( \i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\ & ( \create_pll:i_reset_ctrl_a|reset_out~q\ ) ) # ( !\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\ & ( (!\i_dc_disp_a|s_started_tx~q\ & (!\i_dc_disp_a|s_tx_cn\(0) & 
-- (!\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\ & \create_pll:i_reset_ctrl_a|reset_out~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_s_started_tx~q\,
	datab => \i_dc_disp_a|ALT_INV_s_tx_cn\(0),
	datac => \i_dc_disp_a|ALT_INV_s_tx_cn[1]~DUPLICATE_q\,
	datad => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	dataf => \i_dc_disp_a|ALT_INV_s_tx_cn[2]~DUPLICATE_q\,
	combout => \i_dc_disp_a|s_tx_update_complete_state[1]~0_combout\);

-- Location: LABCELL_X79_Y6_N0
\i_dc_disp_a|s_tx_update_complete_state[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_tx_update_complete_state[1]~1_combout\ = ( \i_dc_disp_a|s_ready_cd~q\ & ( \i_serial_uart_a|transmit_ready_int~q\ & ( (!\i_dc_disp_a|s_tx_cn\(2) & \i_dc_disp_a|s_tx_update_complete_state[1]~0_combout\) ) ) ) # ( !\i_dc_disp_a|s_ready_cd~q\ & 
-- ( \i_serial_uart_a|transmit_ready_int~q\ & ( (\i_dc_disp_a|s_tx_update_complete_state[1]~0_combout\ & ((!\i_dc_disp_a|s_tx_cn\(2)) # ((\i_dc_disp_a|LessThan0~0_combout\ & !\i_dc_disp_a|p_tData~0_combout\)))) ) ) ) # ( \i_dc_disp_a|s_ready_cd~q\ & ( 
-- !\i_serial_uart_a|transmit_ready_int~q\ & ( (!\i_dc_disp_a|s_tx_cn\(2) & \i_dc_disp_a|s_tx_update_complete_state[1]~0_combout\) ) ) ) # ( !\i_dc_disp_a|s_ready_cd~q\ & ( !\i_serial_uart_a|transmit_ready_int~q\ & ( (!\i_dc_disp_a|s_tx_cn\(2) & 
-- \i_dc_disp_a|s_tx_update_complete_state[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111101000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_LessThan0~0_combout\,
	datab => \i_dc_disp_a|ALT_INV_p_tData~0_combout\,
	datac => \i_dc_disp_a|ALT_INV_s_tx_cn\(2),
	datad => \i_dc_disp_a|ALT_INV_s_tx_update_complete_state[1]~0_combout\,
	datae => \i_dc_disp_a|ALT_INV_s_ready_cd~q\,
	dataf => \i_serial_uart_a|ALT_INV_transmit_ready_int~q\,
	combout => \i_dc_disp_a|s_tx_update_complete_state[1]~1_combout\);

-- Location: FF_X79_Y6_N1
\i_dc_disp_a|s_tx_update_complete_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \i_dc_disp_a|sequences[2][0]~0_combout\,
	clrn => \i_dc_disp_a|ALT_INV_s_backlog_c~1_combout\,
	sload => VCC,
	ena => \i_dc_disp_a|s_tx_update_complete_state[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_tx_update_complete_state\(0));

-- Location: LABCELL_X79_Y6_N18
\i_dc_disp_a|s_tx_update_complete_state[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_tx_update_complete_state[1]~2_combout\ = ( !\i_dc_disp_a|sequences[2][0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \i_dc_disp_a|ALT_INV_sequences[2][0]~0_combout\,
	combout => \i_dc_disp_a|s_tx_update_complete_state[1]~2_combout\);

-- Location: FF_X79_Y6_N20
\i_dc_disp_a|s_tx_update_complete_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_tx_update_complete_state[1]~2_combout\,
	clrn => \i_dc_disp_a|ALT_INV_s_backlog_c~1_combout\,
	ena => \i_dc_disp_a|s_tx_update_complete_state[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_tx_update_complete_state\(1));

-- Location: LABCELL_X79_Y6_N48
\i_dc_disp_a|p_display~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|p_display~0_combout\ = ( \i_dc_disp_a|s_tx_update_complete_state\(1) & ( (!\i_dc_disp_a|s_completed_tx~q\ & (!\i_dc_disp_a|s_tx_update_complete_state\(0) & !\i_dc_disp_a|s_backlog_c~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_a|ALT_INV_s_completed_tx~q\,
	datac => \i_dc_disp_a|ALT_INV_s_tx_update_complete_state\(0),
	datad => \i_dc_disp_a|ALT_INV_s_backlog_c~q\,
	dataf => \i_dc_disp_a|ALT_INV_s_tx_update_complete_state\(1),
	combout => \i_dc_disp_a|p_display~0_combout\);

-- Location: LABCELL_X80_Y10_N33
\i_dc_disp_a|s_updateInfo~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_updateInfo~0_combout\ = ( \i_dc_disp_a|p_display~0_combout\ ) # ( !\i_dc_disp_a|p_display~0_combout\ & ( (!\i_pwm_ctrl_a|s_dc_changed~q\ & \i_dc_disp_a|s_updateInfo~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_dc_changed~q\,
	datad => \i_dc_disp_a|ALT_INV_s_updateInfo~q\,
	dataf => \i_dc_disp_a|ALT_INV_p_display~0_combout\,
	combout => \i_dc_disp_a|s_updateInfo~0_combout\);

-- Location: FF_X80_Y10_N35
\i_dc_disp_a|s_updateInfo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_updateInfo~0_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_updateInfo~q\);

-- Location: LABCELL_X80_Y10_N27
\i_dc_disp_a|s_valid_data~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_valid_data~1_combout\ = ( \i_dc_disp_a|s_updateInfo~q\ ) # ( !\i_dc_disp_a|s_updateInfo~q\ & ( !\create_pll:i_reset_ctrl_a|reset_out~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	dataf => \i_dc_disp_a|ALT_INV_s_updateInfo~q\,
	combout => \i_dc_disp_a|s_valid_data~1_combout\);

-- Location: FF_X79_Y6_N35
\i_dc_disp_a|s_tx_cn[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_tx_cn[2]~0_combout\,
	clrn => \i_dc_disp_a|ALT_INV_s_valid_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_tx_cn\(2));

-- Location: LABCELL_X79_Y6_N12
\i_dc_disp_a|s_tx_cn[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_tx_cn[1]~1_combout\ = ( \i_dc_disp_a|s_tx_cn\(1) & ( \i_serial_uart_a|transmit_ready_int~q\ & ( (!\i_dc_disp_a|s_tx_cn\(0)) # (\i_dc_disp_a|s_ready_cd~q\) ) ) ) # ( !\i_dc_disp_a|s_tx_cn\(1) & ( \i_serial_uart_a|transmit_ready_int~q\ & ( 
-- (\i_dc_disp_a|s_tx_cn\(0) & ((!\i_dc_disp_a|s_tx_cn\(2)) # (!\i_dc_disp_a|s_ready_cd~q\))) ) ) ) # ( \i_dc_disp_a|s_tx_cn\(1) & ( !\i_serial_uart_a|transmit_ready_int~q\ ) ) # ( !\i_dc_disp_a|s_tx_cn\(1) & ( !\i_serial_uart_a|transmit_ready_int~q\ & ( 
-- (!\i_dc_disp_a|s_tx_cn\(2) & \i_dc_disp_a|s_tx_cn\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010111111111111111100110010001100101100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_s_tx_cn\(2),
	datab => \i_dc_disp_a|ALT_INV_s_tx_cn\(0),
	datac => \i_dc_disp_a|ALT_INV_s_ready_cd~q\,
	datae => \i_dc_disp_a|ALT_INV_s_tx_cn\(1),
	dataf => \i_serial_uart_a|ALT_INV_transmit_ready_int~q\,
	combout => \i_dc_disp_a|s_tx_cn[1]~1_combout\);

-- Location: FF_X79_Y6_N14
\i_dc_disp_a|s_tx_cn[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_tx_cn[1]~1_combout\,
	clrn => \i_dc_disp_a|ALT_INV_s_valid_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_tx_cn\(1));

-- Location: LABCELL_X79_Y6_N54
\i_dc_disp_a|sequences[2][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|sequences[2][0]~0_combout\ = (!\i_dc_disp_a|s_tx_cn\(1) & !\i_dc_disp_a|s_tx_cn\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_a|ALT_INV_s_tx_cn\(1),
	datac => \i_dc_disp_a|ALT_INV_s_tx_cn\(2),
	combout => \i_dc_disp_a|sequences[2][0]~0_combout\);

-- Location: LABCELL_X80_Y10_N54
\i_dc_disp_a|s_ready_cd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_ready_cd~0_combout\ = ( \i_dc_disp_a|s_ready_cd~q\ & ( \i_dc_disp_a|LessThan0~0_combout\ & ( (\i_dc_disp_a|s_valid_data~1_combout\) # (\i_dc_disp_a|sequences[2][0]~0_combout\) ) ) ) # ( \i_dc_disp_a|s_ready_cd~q\ & ( 
-- !\i_dc_disp_a|LessThan0~0_combout\ & ( (\i_dc_disp_a|s_valid_data~1_combout\) # (\i_dc_disp_a|sequences[2][0]~0_combout\) ) ) ) # ( !\i_dc_disp_a|s_ready_cd~q\ & ( !\i_dc_disp_a|LessThan0~0_combout\ & ( (!\i_dc_disp_a|sequences[2][0]~0_combout\ & 
-- (!\i_dc_disp_a|s_valid_data~1_combout\ & \i_serial_uart_a|transmit_ready_int~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000001111110011111100000000000000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_a|ALT_INV_sequences[2][0]~0_combout\,
	datac => \i_dc_disp_a|ALT_INV_s_valid_data~1_combout\,
	datad => \i_serial_uart_a|ALT_INV_transmit_ready_int~q\,
	datae => \i_dc_disp_a|ALT_INV_s_ready_cd~q\,
	dataf => \i_dc_disp_a|ALT_INV_LessThan0~0_combout\,
	combout => \i_dc_disp_a|s_ready_cd~0_combout\);

-- Location: FF_X80_Y10_N55
\i_dc_disp_a|s_ready_cd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_ready_cd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_ready_cd~q\);

-- Location: LABCELL_X79_Y6_N30
\i_dc_disp_a|s_tx_cn[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_tx_cn[0]~2_combout\ = ( \i_dc_disp_a|s_started_tx~q\ & ( (!\i_dc_disp_a|sequences[2][0]~0_combout\ & (!\i_dc_disp_a|s_tx_cn\(0) $ (((!\i_serial_uart_a|transmit_ready_int~q\) # (\i_dc_disp_a|s_ready_cd~q\))))) ) ) # ( 
-- !\i_dc_disp_a|s_started_tx~q\ & ( !\i_dc_disp_a|s_tx_cn\(0) $ (((!\i_dc_disp_a|sequences[2][0]~0_combout\ & ((!\i_serial_uart_a|transmit_ready_int~q\) # (\i_dc_disp_a|s_ready_cd~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111110110000010011111011000001000000101100000100000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_transmit_ready_int~q\,
	datab => \i_dc_disp_a|ALT_INV_s_ready_cd~q\,
	datac => \i_dc_disp_a|ALT_INV_sequences[2][0]~0_combout\,
	datad => \i_dc_disp_a|ALT_INV_s_tx_cn\(0),
	dataf => \i_dc_disp_a|ALT_INV_s_started_tx~q\,
	combout => \i_dc_disp_a|s_tx_cn[0]~2_combout\);

-- Location: FF_X79_Y6_N32
\i_dc_disp_a|s_tx_cn[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_tx_cn[0]~2_combout\,
	clrn => \i_dc_disp_a|ALT_INV_s_valid_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_tx_cn\(0));

-- Location: LABCELL_X80_Y10_N15
\i_dc_disp_a|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|LessThan0~0_combout\ = ( \i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\ & ( \i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\ & ( \i_dc_disp_a|s_tx_cn\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_dc_disp_a|ALT_INV_s_tx_cn\(0),
	datae => \i_dc_disp_a|ALT_INV_s_tx_cn[1]~DUPLICATE_q\,
	dataf => \i_dc_disp_a|ALT_INV_s_tx_cn[2]~DUPLICATE_q\,
	combout => \i_dc_disp_a|LessThan0~0_combout\);

-- Location: LABCELL_X79_Y6_N24
\i_dc_disp_a|s_valid_data~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_valid_data~0_combout\ = ( \i_dc_disp_a|s_valid_data~q\ & ( \i_serial_uart_a|transmit_ready_int~q\ & ( ((!\i_dc_disp_a|s_ready_cd~q\ & ((!\i_dc_disp_a|LessThan0~0_combout\) # (\i_dc_disp_a|p_tData~0_combout\)))) # 
-- (\i_dc_disp_a|sequences[2][0]~0_combout\) ) ) ) # ( !\i_dc_disp_a|s_valid_data~q\ & ( \i_serial_uart_a|transmit_ready_int~q\ & ( (!\i_dc_disp_a|LessThan0~0_combout\ & (!\i_dc_disp_a|sequences[2][0]~0_combout\ & !\i_dc_disp_a|s_ready_cd~q\)) ) ) ) # ( 
-- \i_dc_disp_a|s_valid_data~q\ & ( !\i_serial_uart_a|transmit_ready_int~q\ & ( \i_dc_disp_a|sequences[2][0]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111110100000000000001011111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_LessThan0~0_combout\,
	datab => \i_dc_disp_a|ALT_INV_p_tData~0_combout\,
	datac => \i_dc_disp_a|ALT_INV_sequences[2][0]~0_combout\,
	datad => \i_dc_disp_a|ALT_INV_s_ready_cd~q\,
	datae => \i_dc_disp_a|ALT_INV_s_valid_data~q\,
	dataf => \i_serial_uart_a|ALT_INV_transmit_ready_int~q\,
	combout => \i_dc_disp_a|s_valid_data~0_combout\);

-- Location: FF_X79_Y6_N25
\i_dc_disp_a|s_valid_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_valid_data~0_combout\,
	clrn => \i_dc_disp_a|ALT_INV_s_valid_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_valid_data~q\);

-- Location: LABCELL_X80_Y6_N39
\i_serial_uart_a|Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector25~0_combout\ = ( \i_serial_uart_a|tx_state.s_stop_bit~q\ & ( (!\i_serial_uart_a|tx_state.s_idle~q\ & (((!\i_dc_disp_a|s_valid_data~q\) # (!\i_serial_uart_a|transmit_ready_int~q\)))) # (\i_serial_uart_a|tx_state.s_idle~q\ & 
-- (((\i_serial_uart_a|transmit_ready_int~q\)) # (\i_serial_uart_a|tx_bit_cnt_wrap~q\))) ) ) # ( !\i_serial_uart_a|tx_state.s_stop_bit~q\ & ( (!\i_serial_uart_a|tx_state.s_idle~q\ & ((!\i_dc_disp_a|s_valid_data~q\) # 
-- (!\i_serial_uart_a|transmit_ready_int~q\))) # (\i_serial_uart_a|tx_state.s_idle~q\ & ((\i_serial_uart_a|transmit_ready_int~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011001111111100001100111111110101110011111111010111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_tx_bit_cnt_wrap~q\,
	datab => \i_dc_disp_a|ALT_INV_s_valid_data~q\,
	datac => \i_serial_uart_a|ALT_INV_tx_state.s_idle~q\,
	datad => \i_serial_uart_a|ALT_INV_transmit_ready_int~q\,
	dataf => \i_serial_uart_a|ALT_INV_tx_state.s_stop_bit~q\,
	combout => \i_serial_uart_a|Selector25~0_combout\);

-- Location: FF_X80_Y6_N40
\i_serial_uart_a|transmit_ready_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector25~0_combout\,
	sclr => \i_serial_uart_a|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|transmit_ready_int~q\);

-- Location: FF_X81_Y6_N52
\i_serial_uart_a|tx_bit_cnt_wrap~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|tx_bit_cnt_wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_bit_cnt_wrap~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y6_N24
\i_serial_uart_a|tx_state~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|tx_state~7_combout\ = ( \i_serial_uart_a|tx_state.s_idle~q\ & ( \i_serial_uart_a|tx_bit_cnt_wrap~DUPLICATE_q\ & ( (!\i_serial_uart_a|tx_state.s_stop_bit~q\ & !\i_serial_uart_a|reset_2r~q\) ) ) ) # ( !\i_serial_uart_a|tx_state.s_idle~q\ & 
-- ( \i_serial_uart_a|tx_bit_cnt_wrap~DUPLICATE_q\ & ( (!\i_serial_uart_a|tx_state.s_stop_bit~q\ & (\i_serial_uart_a|transmit_ready_int~q\ & (!\i_serial_uart_a|reset_2r~q\ & \i_dc_disp_a|s_valid_data~q\))) ) ) ) # ( \i_serial_uart_a|tx_state.s_idle~q\ & ( 
-- !\i_serial_uart_a|tx_bit_cnt_wrap~DUPLICATE_q\ & ( !\i_serial_uart_a|reset_2r~q\ ) ) ) # ( !\i_serial_uart_a|tx_state.s_idle~q\ & ( !\i_serial_uart_a|tx_bit_cnt_wrap~DUPLICATE_q\ & ( (\i_serial_uart_a|transmit_ready_int~q\ & (!\i_serial_uart_a|reset_2r~q\ 
-- & \i_dc_disp_a|s_valid_data~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000111100001111000000000000001000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_tx_state.s_stop_bit~q\,
	datab => \i_serial_uart_a|ALT_INV_transmit_ready_int~q\,
	datac => \i_serial_uart_a|ALT_INV_reset_2r~q\,
	datad => \i_dc_disp_a|ALT_INV_s_valid_data~q\,
	datae => \i_serial_uart_a|ALT_INV_tx_state.s_idle~q\,
	dataf => \i_serial_uart_a|ALT_INV_tx_bit_cnt_wrap~DUPLICATE_q\,
	combout => \i_serial_uart_a|tx_state~7_combout\);

-- Location: FF_X84_Y6_N25
\i_serial_uart_a|tx_state.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|tx_state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_state.s_idle~q\);

-- Location: LABCELL_X80_Y6_N18
\i_serial_uart_a|Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector30~0_combout\ = ( \i_serial_uart_a|transmit_ready_int~q\ & ( (!\i_serial_uart_a|tx_state.s_idle~q\ & (\i_dc_disp_a|s_valid_data~q\ & ((!\i_serial_uart_a|tx_state.s_stop_bit~q\) # (!\i_serial_uart_a|tx_bit_cnt_wrap~q\)))) # 
-- (\i_serial_uart_a|tx_state.s_idle~q\ & ((!\i_serial_uart_a|tx_state.s_stop_bit~q\) # ((!\i_serial_uart_a|tx_bit_cnt_wrap~q\)))) ) ) # ( !\i_serial_uart_a|transmit_ready_int~q\ & ( (\i_serial_uart_a|tx_state.s_idle~q\ & 
-- ((!\i_serial_uart_a|tx_state.s_stop_bit~q\) # (!\i_serial_uart_a|tx_bit_cnt_wrap~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000101010001010100111111000101010011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_tx_state.s_idle~q\,
	datab => \i_serial_uart_a|ALT_INV_tx_state.s_stop_bit~q\,
	datac => \i_serial_uart_a|ALT_INV_tx_bit_cnt_wrap~q\,
	datad => \i_dc_disp_a|ALT_INV_s_valid_data~q\,
	dataf => \i_serial_uart_a|ALT_INV_transmit_ready_int~q\,
	combout => \i_serial_uart_a|Selector30~0_combout\);

-- Location: FF_X80_Y6_N19
\i_serial_uart_a|tx_bit_cnt_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector30~0_combout\,
	sclr => \i_serial_uart_a|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_bit_cnt_en~q\);

-- Location: LABCELL_X81_Y6_N48
\i_serial_uart_a|tx_bit_cnt[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|tx_bit_cnt[7]~0_combout\ = ( \i_serial_uart_a|tx_bit_cnt_en~q\ & ( (\i_serial_uart_a|tx_bit_cnt\(7) & (\i_serial_uart_a|tx_bit_cnt\(8) & ((\i_serial_uart_a|LessThan2~0_combout\) # (\i_serial_uart_a|tx_bit_cnt\(6))))) ) ) # ( 
-- !\i_serial_uart_a|tx_bit_cnt_en~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000001000001010000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_tx_bit_cnt\(7),
	datab => \i_serial_uart_a|ALT_INV_tx_bit_cnt\(6),
	datac => \i_serial_uart_a|ALT_INV_tx_bit_cnt\(8),
	datad => \i_serial_uart_a|ALT_INV_LessThan2~0_combout\,
	dataf => \i_serial_uart_a|ALT_INV_tx_bit_cnt_en~q\,
	combout => \i_serial_uart_a|tx_bit_cnt[7]~0_combout\);

-- Location: FF_X81_Y6_N2
\i_serial_uart_a|tx_bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Add3~29_sumout\,
	sclr => \i_serial_uart_a|tx_bit_cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_bit_cnt\(0));

-- Location: LABCELL_X81_Y6_N3
\i_serial_uart_a|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Add3~21_sumout\ = SUM(( \i_serial_uart_a|tx_bit_cnt\(1) ) + ( GND ) + ( \i_serial_uart_a|Add3~30\ ))
-- \i_serial_uart_a|Add3~22\ = CARRY(( \i_serial_uart_a|tx_bit_cnt\(1) ) + ( GND ) + ( \i_serial_uart_a|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart_a|ALT_INV_tx_bit_cnt\(1),
	cin => \i_serial_uart_a|Add3~30\,
	sumout => \i_serial_uart_a|Add3~21_sumout\,
	cout => \i_serial_uart_a|Add3~22\);

-- Location: FF_X81_Y6_N5
\i_serial_uart_a|tx_bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Add3~21_sumout\,
	sclr => \i_serial_uart_a|tx_bit_cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_bit_cnt\(1));

-- Location: LABCELL_X81_Y6_N6
\i_serial_uart_a|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Add3~25_sumout\ = SUM(( \i_serial_uart_a|tx_bit_cnt\(2) ) + ( GND ) + ( \i_serial_uart_a|Add3~22\ ))
-- \i_serial_uart_a|Add3~26\ = CARRY(( \i_serial_uart_a|tx_bit_cnt\(2) ) + ( GND ) + ( \i_serial_uart_a|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart_a|ALT_INV_tx_bit_cnt\(2),
	cin => \i_serial_uart_a|Add3~22\,
	sumout => \i_serial_uart_a|Add3~25_sumout\,
	cout => \i_serial_uart_a|Add3~26\);

-- Location: FF_X81_Y6_N8
\i_serial_uart_a|tx_bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Add3~25_sumout\,
	sclr => \i_serial_uart_a|tx_bit_cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_bit_cnt\(2));

-- Location: LABCELL_X81_Y6_N9
\i_serial_uart_a|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Add3~33_sumout\ = SUM(( \i_serial_uart_a|tx_bit_cnt\(3) ) + ( GND ) + ( \i_serial_uart_a|Add3~26\ ))
-- \i_serial_uart_a|Add3~34\ = CARRY(( \i_serial_uart_a|tx_bit_cnt\(3) ) + ( GND ) + ( \i_serial_uart_a|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart_a|ALT_INV_tx_bit_cnt\(3),
	cin => \i_serial_uart_a|Add3~26\,
	sumout => \i_serial_uart_a|Add3~33_sumout\,
	cout => \i_serial_uart_a|Add3~34\);

-- Location: FF_X81_Y6_N10
\i_serial_uart_a|tx_bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Add3~33_sumout\,
	sclr => \i_serial_uart_a|tx_bit_cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_bit_cnt\(3));

-- Location: LABCELL_X81_Y6_N12
\i_serial_uart_a|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Add3~13_sumout\ = SUM(( \i_serial_uart_a|tx_bit_cnt\(4) ) + ( GND ) + ( \i_serial_uart_a|Add3~34\ ))
-- \i_serial_uart_a|Add3~14\ = CARRY(( \i_serial_uart_a|tx_bit_cnt\(4) ) + ( GND ) + ( \i_serial_uart_a|Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart_a|ALT_INV_tx_bit_cnt\(4),
	cin => \i_serial_uart_a|Add3~34\,
	sumout => \i_serial_uart_a|Add3~13_sumout\,
	cout => \i_serial_uart_a|Add3~14\);

-- Location: FF_X81_Y6_N14
\i_serial_uart_a|tx_bit_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Add3~13_sumout\,
	sclr => \i_serial_uart_a|tx_bit_cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_bit_cnt\(4));

-- Location: LABCELL_X81_Y6_N15
\i_serial_uart_a|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Add3~17_sumout\ = SUM(( \i_serial_uart_a|tx_bit_cnt\(5) ) + ( GND ) + ( \i_serial_uart_a|Add3~14\ ))
-- \i_serial_uart_a|Add3~18\ = CARRY(( \i_serial_uart_a|tx_bit_cnt\(5) ) + ( GND ) + ( \i_serial_uart_a|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart_a|ALT_INV_tx_bit_cnt\(5),
	cin => \i_serial_uart_a|Add3~14\,
	sumout => \i_serial_uart_a|Add3~17_sumout\,
	cout => \i_serial_uart_a|Add3~18\);

-- Location: FF_X81_Y6_N17
\i_serial_uart_a|tx_bit_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Add3~17_sumout\,
	sclr => \i_serial_uart_a|tx_bit_cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_bit_cnt\(5));

-- Location: LABCELL_X81_Y6_N18
\i_serial_uart_a|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Add3~9_sumout\ = SUM(( \i_serial_uart_a|tx_bit_cnt\(6) ) + ( GND ) + ( \i_serial_uart_a|Add3~18\ ))
-- \i_serial_uart_a|Add3~10\ = CARRY(( \i_serial_uart_a|tx_bit_cnt\(6) ) + ( GND ) + ( \i_serial_uart_a|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart_a|ALT_INV_tx_bit_cnt\(6),
	cin => \i_serial_uart_a|Add3~18\,
	sumout => \i_serial_uart_a|Add3~9_sumout\,
	cout => \i_serial_uart_a|Add3~10\);

-- Location: FF_X81_Y6_N19
\i_serial_uart_a|tx_bit_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Add3~9_sumout\,
	sclr => \i_serial_uart_a|tx_bit_cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_bit_cnt\(6));

-- Location: FF_X81_Y6_N23
\i_serial_uart_a|tx_bit_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Add3~1_sumout\,
	sclr => \i_serial_uart_a|tx_bit_cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_bit_cnt\(7));

-- Location: LABCELL_X81_Y6_N51
\i_serial_uart_a|tx_bit_cnt_wrap~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|tx_bit_cnt_wrap~0_combout\ = ( \i_serial_uart_a|tx_bit_cnt\(8) & ( (\i_serial_uart_a|tx_bit_cnt\(7) & (\i_serial_uart_a|tx_bit_cnt_en~q\ & ((\i_serial_uart_a|LessThan2~0_combout\) # (\i_serial_uart_a|tx_bit_cnt\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000001010000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_tx_bit_cnt\(7),
	datab => \i_serial_uart_a|ALT_INV_tx_bit_cnt\(6),
	datac => \i_serial_uart_a|ALT_INV_tx_bit_cnt_en~q\,
	datad => \i_serial_uart_a|ALT_INV_LessThan2~0_combout\,
	dataf => \i_serial_uart_a|ALT_INV_tx_bit_cnt\(8),
	combout => \i_serial_uart_a|tx_bit_cnt_wrap~0_combout\);

-- Location: FF_X81_Y6_N53
\i_serial_uart_a|tx_bit_cnt_wrap\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|tx_bit_cnt_wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_bit_cnt_wrap~q\);

-- Location: LABCELL_X80_Y6_N36
\i_serial_uart_a|Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector27~0_combout\ = ( \i_serial_uart_a|transmit_ready_int~q\ & ( (!\i_serial_uart_a|tx_bit_cnt_wrap~q\ & (((\i_dc_disp_a|s_valid_data~q\ & !\i_serial_uart_a|tx_state.s_idle~q\)) # (\i_serial_uart_a|tx_state.s_start_bit~q\))) # 
-- (\i_serial_uart_a|tx_bit_cnt_wrap~q\ & (\i_dc_disp_a|s_valid_data~q\ & (!\i_serial_uart_a|tx_state.s_idle~q\))) ) ) # ( !\i_serial_uart_a|transmit_ready_int~q\ & ( (!\i_serial_uart_a|tx_bit_cnt_wrap~q\ & \i_serial_uart_a|tx_state.s_start_bit~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000110000101110100011000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_tx_bit_cnt_wrap~q\,
	datab => \i_dc_disp_a|ALT_INV_s_valid_data~q\,
	datac => \i_serial_uart_a|ALT_INV_tx_state.s_idle~q\,
	datad => \i_serial_uart_a|ALT_INV_tx_state.s_start_bit~q\,
	dataf => \i_serial_uart_a|ALT_INV_transmit_ready_int~q\,
	combout => \i_serial_uart_a|Selector27~0_combout\);

-- Location: FF_X80_Y6_N38
\i_serial_uart_a|tx_state.s_start_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector27~0_combout\,
	sclr => \i_serial_uart_a|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_state.s_start_bit~q\);

-- Location: FF_X80_Y6_N11
\i_serial_uart_a|tx_bit_no[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_bit_no\(1));

-- Location: LABCELL_X80_Y6_N24
\i_serial_uart_a|Selector31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector31~0_combout\ = ( \i_serial_uart_a|tx_bit_no\(2) & ( \i_serial_uart_a|tx_state.s_tx_data~q\ ) ) # ( !\i_serial_uart_a|tx_bit_no\(2) & ( \i_serial_uart_a|tx_state.s_tx_data~q\ & ( (\i_serial_uart_a|tx_bit_no[1]~DUPLICATE_q\ & 
-- (\i_serial_uart_a|tx_bit_cnt_wrap~q\ & \i_serial_uart_a|tx_bit_no\(0))) ) ) ) # ( \i_serial_uart_a|tx_bit_no\(2) & ( !\i_serial_uart_a|tx_state.s_tx_data~q\ & ( \i_serial_uart_a|tx_state.s_idle~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000001011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_tx_bit_no[1]~DUPLICATE_q\,
	datab => \i_serial_uart_a|ALT_INV_tx_state.s_idle~q\,
	datac => \i_serial_uart_a|ALT_INV_tx_bit_cnt_wrap~q\,
	datad => \i_serial_uart_a|ALT_INV_tx_bit_no\(0),
	datae => \i_serial_uart_a|ALT_INV_tx_bit_no\(2),
	dataf => \i_serial_uart_a|ALT_INV_tx_state.s_tx_data~q\,
	combout => \i_serial_uart_a|Selector31~0_combout\);

-- Location: FF_X80_Y6_N25
\i_serial_uart_a|tx_bit_no[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_bit_no\(2));

-- Location: LABCELL_X80_Y6_N12
\i_serial_uart_a|Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector28~0_combout\ = ( \i_serial_uart_a|tx_state.s_tx_data~q\ & ( \i_serial_uart_a|tx_bit_no\(2) & ( ((!\i_serial_uart_a|tx_bit_no\(0)) # ((!\i_serial_uart_a|tx_bit_cnt_wrap~q\) # (!\i_serial_uart_a|tx_bit_no\(1)))) # 
-- (\i_serial_uart_a|tx_state.s_start_bit~q\) ) ) ) # ( !\i_serial_uart_a|tx_state.s_tx_data~q\ & ( \i_serial_uart_a|tx_bit_no\(2) & ( (\i_serial_uart_a|tx_state.s_start_bit~q\ & \i_serial_uart_a|tx_bit_cnt_wrap~q\) ) ) ) # ( 
-- \i_serial_uart_a|tx_state.s_tx_data~q\ & ( !\i_serial_uart_a|tx_bit_no\(2) ) ) # ( !\i_serial_uart_a|tx_state.s_tx_data~q\ & ( !\i_serial_uart_a|tx_bit_no\(2) & ( (\i_serial_uart_a|tx_state.s_start_bit~q\ & \i_serial_uart_a|tx_bit_cnt_wrap~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111111111111111100000101000001011111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_tx_state.s_start_bit~q\,
	datab => \i_serial_uart_a|ALT_INV_tx_bit_no\(0),
	datac => \i_serial_uart_a|ALT_INV_tx_bit_cnt_wrap~q\,
	datad => \i_serial_uart_a|ALT_INV_tx_bit_no\(1),
	datae => \i_serial_uart_a|ALT_INV_tx_state.s_tx_data~q\,
	dataf => \i_serial_uart_a|ALT_INV_tx_bit_no\(2),
	combout => \i_serial_uart_a|Selector28~0_combout\);

-- Location: FF_X80_Y6_N14
\i_serial_uart_a|tx_state.s_tx_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector28~0_combout\,
	sclr => \i_serial_uart_a|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_state.s_tx_data~q\);

-- Location: LABCELL_X80_Y6_N6
\i_serial_uart_a|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector33~0_combout\ = ( \i_serial_uart_a|tx_bit_no~0_combout\ & ( (!\i_serial_uart_a|tx_state.s_tx_data~q\ & (\i_serial_uart_a|tx_state.s_idle~q\ & \i_serial_uart_a|tx_bit_no\(0))) # (\i_serial_uart_a|tx_state.s_tx_data~q\ & 
-- ((!\i_serial_uart_a|tx_bit_no\(0)))) ) ) # ( !\i_serial_uart_a|tx_bit_no~0_combout\ & ( (\i_serial_uart_a|tx_bit_no\(0) & ((\i_serial_uart_a|tx_state.s_idle~q\) # (\i_serial_uart_a|tx_state.s_tx_data~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100110011000011000011001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart_a|ALT_INV_tx_state.s_tx_data~q\,
	datac => \i_serial_uart_a|ALT_INV_tx_state.s_idle~q\,
	datad => \i_serial_uart_a|ALT_INV_tx_bit_no\(0),
	dataf => \i_serial_uart_a|ALT_INV_tx_bit_no~0_combout\,
	combout => \i_serial_uart_a|Selector33~0_combout\);

-- Location: FF_X80_Y6_N8
\i_serial_uart_a|tx_bit_no[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_bit_no\(0));

-- Location: LABCELL_X80_Y6_N57
\i_serial_uart_a|tx_bit_no~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|tx_bit_no~0_combout\ = ( \i_serial_uart_a|tx_bit_no\(2) & ( (\i_serial_uart_a|tx_bit_cnt_wrap~q\ & ((!\i_serial_uart_a|tx_bit_no\(0)) # (!\i_serial_uart_a|tx_bit_no[1]~DUPLICATE_q\))) ) ) # ( !\i_serial_uart_a|tx_bit_no\(2) & ( 
-- \i_serial_uart_a|tx_bit_cnt_wrap~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010100000101010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_tx_bit_cnt_wrap~q\,
	datac => \i_serial_uart_a|ALT_INV_tx_bit_no\(0),
	datad => \i_serial_uart_a|ALT_INV_tx_bit_no[1]~DUPLICATE_q\,
	dataf => \i_serial_uart_a|ALT_INV_tx_bit_no\(2),
	combout => \i_serial_uart_a|tx_bit_no~0_combout\);

-- Location: LABCELL_X80_Y6_N9
\i_serial_uart_a|Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector32~0_combout\ = ( \i_serial_uart_a|tx_bit_no\(0) & ( (!\i_serial_uart_a|tx_state.s_tx_data~q\ & (((\i_serial_uart_a|tx_state.s_idle~q\ & \i_serial_uart_a|tx_bit_no\(1))))) # (\i_serial_uart_a|tx_state.s_tx_data~q\ & 
-- (!\i_serial_uart_a|tx_bit_no~0_combout\ $ (((!\i_serial_uart_a|tx_bit_no\(1)))))) ) ) # ( !\i_serial_uart_a|tx_bit_no\(0) & ( (\i_serial_uart_a|tx_bit_no\(1) & ((\i_serial_uart_a|tx_state.s_idle~q\) # (\i_serial_uart_a|tx_state.s_tx_data~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100010001001011100001000100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_tx_bit_no~0_combout\,
	datab => \i_serial_uart_a|ALT_INV_tx_state.s_tx_data~q\,
	datac => \i_serial_uart_a|ALT_INV_tx_state.s_idle~q\,
	datad => \i_serial_uart_a|ALT_INV_tx_bit_no\(1),
	dataf => \i_serial_uart_a|ALT_INV_tx_bit_no\(0),
	combout => \i_serial_uart_a|Selector32~0_combout\);

-- Location: FF_X80_Y6_N10
\i_serial_uart_a|tx_bit_no[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_bit_no[1]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y6_N30
\i_serial_uart_a|Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector29~0_combout\ = ( \i_serial_uart_a|tx_state.s_stop_bit~q\ & ( \i_serial_uart_a|tx_bit_no\(2) & ( (!\i_serial_uart_a|tx_bit_cnt_wrap~q\) # ((\i_serial_uart_a|tx_bit_no[1]~DUPLICATE_q\ & (\i_serial_uart_a|tx_state.s_tx_data~q\ & 
-- \i_serial_uart_a|tx_bit_no\(0)))) ) ) ) # ( !\i_serial_uart_a|tx_state.s_stop_bit~q\ & ( \i_serial_uart_a|tx_bit_no\(2) & ( (\i_serial_uart_a|tx_bit_no[1]~DUPLICATE_q\ & (\i_serial_uart_a|tx_state.s_tx_data~q\ & (\i_serial_uart_a|tx_bit_cnt_wrap~q\ & 
-- \i_serial_uart_a|tx_bit_no\(0)))) ) ) ) # ( \i_serial_uart_a|tx_state.s_stop_bit~q\ & ( !\i_serial_uart_a|tx_bit_no\(2) & ( !\i_serial_uart_a|tx_bit_cnt_wrap~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000011111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_tx_bit_no[1]~DUPLICATE_q\,
	datab => \i_serial_uart_a|ALT_INV_tx_state.s_tx_data~q\,
	datac => \i_serial_uart_a|ALT_INV_tx_bit_cnt_wrap~q\,
	datad => \i_serial_uart_a|ALT_INV_tx_bit_no\(0),
	datae => \i_serial_uart_a|ALT_INV_tx_state.s_stop_bit~q\,
	dataf => \i_serial_uart_a|ALT_INV_tx_bit_no\(2),
	combout => \i_serial_uart_a|Selector29~0_combout\);

-- Location: FF_X80_Y6_N32
\i_serial_uart_a|tx_state.s_stop_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector29~0_combout\,
	sclr => \i_serial_uart_a|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_state.s_stop_bit~q\);

-- Location: MLABCELL_X84_Y10_N54
\i_dc_disp_a|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Equal4~0_combout\ = ( !\i_dc_disp_a|Equal0~0_combout\ & ( (!\i_pwm_ctrl_a|s_isEnabled~q\) # ((\i_pwm_ctrl_a|s_pwm_dc\(2) & (\i_pwm_ctrl_a|s_pwm_dc\(6) & \i_pwm_ctrl_a|s_pwm_dc\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001101110011001100110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(2),
	datab => \i_pwm_ctrl_a|ALT_INV_s_isEnabled~q\,
	datac => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(6),
	datad => \i_pwm_ctrl_a|ALT_INV_s_pwm_dc\(5),
	dataf => \i_dc_disp_a|ALT_INV_Equal0~0_combout\,
	combout => \i_dc_disp_a|Equal4~0_combout\);

-- Location: LABCELL_X81_Y10_N51
\i_dc_disp_a|v_tens~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|v_tens~4_combout\ = ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \i_dc_disp_a|Equal4~0_combout\ ) ) # ( !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \i_dc_disp_a|Equal4~0_combout\ ) ) # ( 
-- \i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( !\i_dc_disp_a|Equal4~0_combout\ ) ) # ( !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( !\i_dc_disp_a|Equal4~0_combout\ & ( \i_dc_disp_a|Equal0~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_Equal0~1_combout\,
	datae => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \i_dc_disp_a|ALT_INV_Equal4~0_combout\,
	combout => \i_dc_disp_a|v_tens~4_combout\);

-- Location: MLABCELL_X84_Y10_N27
\i_dc_disp_a|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Equal6~0_combout\ = ( \i_dc_disp_a|v_tens~4_combout\ & ( ((\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ & !\i_dc_disp_a|Equal4~0_combout\))) # 
-- (\i_dc_disp_a|Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110111001100110011011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \i_dc_disp_a|ALT_INV_Equal0~1_combout\,
	datac => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \i_dc_disp_a|ALT_INV_Equal4~0_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_tens~4_combout\,
	combout => \i_dc_disp_a|Equal6~0_combout\);

-- Location: LABCELL_X81_Y10_N0
\i_dc_disp_a|v_ones~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|v_ones~2_combout\ = ( !\i_dc_disp_a|Equal4~0_combout\ & ( !\i_dc_disp_a|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_dc_disp_a|ALT_INV_Equal0~1_combout\,
	dataf => \i_dc_disp_a|ALT_INV_Equal4~0_combout\,
	combout => \i_dc_disp_a|v_ones~2_combout\);

-- Location: MLABCELL_X84_Y10_N15
\i_dc_disp_a|v_tens~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|v_tens~3_combout\ = ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ ) # ( !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( !\i_dc_disp_a|v_ones~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_v_ones~2_combout\,
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \i_dc_disp_a|v_tens~3_combout\);

-- Location: MLABCELL_X84_Y10_N33
\i_dc_disp_a|v_tens~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|v_tens~6_combout\ = ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( (!\i_dc_disp_a|Equal0~1_combout\ & (((\i_dc_disp_a|Equal6~0_combout\ & \i_dc_disp_a|v_tens~3_combout\)) # (\i_dc_disp_a|Equal4~0_combout\))) ) ) # ( 
-- !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( !\i_dc_disp_a|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000010000111100000001000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_Equal6~0_combout\,
	datab => \i_dc_disp_a|ALT_INV_v_tens~3_combout\,
	datac => \i_dc_disp_a|ALT_INV_Equal0~1_combout\,
	datad => \i_dc_disp_a|ALT_INV_Equal4~0_combout\,
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \i_dc_disp_a|v_tens~6_combout\);

-- Location: MLABCELL_X82_Y10_N57
\i_dc_disp_a|s_bcd_tx_result[5]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[5]~25_combout\ = ( \i_dc_disp_a|s_bcd_tx_result[5]~25_combout\ & ( (\create_pll:i_reset_ctrl_a|reset_out~q\) # (\i_dc_disp_a|v_tens~6_combout\) ) ) # ( !\i_dc_disp_a|s_bcd_tx_result[5]~25_combout\ & ( 
-- (\i_dc_disp_a|v_tens~6_combout\ & !\create_pll:i_reset_ctrl_a|reset_out~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_dc_disp_a|ALT_INV_v_tens~6_combout\,
	datad => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	dataf => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[5]~25_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[5]~25_combout\);

-- Location: LABCELL_X83_Y10_N48
\i_dc_disp_a|s_bcd_tx_result[5]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[5]~27_combout\ = ( !\i_dc_disp_a|s_bcd_tx_result[5]~25_combout\ & ( \i_dc_disp_a|v_tens~6_combout\ ) ) # ( \i_dc_disp_a|s_bcd_tx_result[5]~25_combout\ & ( !\i_dc_disp_a|v_tens~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[5]~25_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_tens~6_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[5]~27_combout\);

-- Location: LABCELL_X80_Y8_N18
\i_dc_disp_a|s_bcd_tx_result[0]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[0]~47_combout\ = ( !\i_dc_disp_a|s_updateInfo~q\ & ( (!\i_dc_disp_a|s_started_tx~q\ & (!\i_dc_disp_a|s_tx_cn\(0) & (!\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\ & !\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_s_started_tx~q\,
	datab => \i_dc_disp_a|ALT_INV_s_tx_cn\(0),
	datac => \i_dc_disp_a|ALT_INV_s_tx_cn[2]~DUPLICATE_q\,
	datad => \i_dc_disp_a|ALT_INV_s_tx_cn[1]~DUPLICATE_q\,
	dataf => \i_dc_disp_a|ALT_INV_s_updateInfo~q\,
	combout => \i_dc_disp_a|s_bcd_tx_result[0]~47_combout\);

-- Location: FF_X83_Y10_N50
\i_dc_disp_a|s_bcd_tx_result[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_bcd_tx_result[5]~27_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_dc_disp_a|s_bcd_tx_result[0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_bcd_tx_result[5]~_emulated_q\);

-- Location: LABCELL_X83_Y10_N6
\i_dc_disp_a|s_bcd_tx_result[5]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[5]~26_combout\ = ( \i_dc_disp_a|v_tens~6_combout\ & ( (!\create_pll:i_reset_ctrl_a|reset_out~q\) # (!\i_dc_disp_a|s_bcd_tx_result[5]~25_combout\ $ (!\i_dc_disp_a|s_bcd_tx_result[5]~_emulated_q\)) ) ) # ( 
-- !\i_dc_disp_a|v_tens~6_combout\ & ( (\create_pll:i_reset_ctrl_a|reset_out~q\ & (!\i_dc_disp_a|s_bcd_tx_result[5]~25_combout\ $ (!\i_dc_disp_a|s_bcd_tx_result[5]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010010111110101111101011111010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	datab => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[5]~25_combout\,
	datac => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[5]~_emulated_q\,
	dataf => \i_dc_disp_a|ALT_INV_v_tens~6_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[5]~26_combout\);

-- Location: MLABCELL_X84_Y10_N24
\i_dc_disp_a|v_tens~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|v_tens~5_combout\ = ( \i_dc_disp_a|v_tens~3_combout\ & ( (!\i_dc_disp_a|Equal0~1_combout\ & ((!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\) # ((\i_dc_disp_a|Equal4~0_combout\) # (\i_dc_disp_a|Equal6~0_combout\)))) ) ) # ( 
-- !\i_dc_disp_a|v_tens~3_combout\ & ( (!\i_dc_disp_a|Equal0~1_combout\ & ((!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_4~1_sumout\) # (\i_dc_disp_a|Equal4~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011001100100010001100110010001100110011001000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \i_dc_disp_a|ALT_INV_Equal0~1_combout\,
	datac => \i_dc_disp_a|ALT_INV_Equal6~0_combout\,
	datad => \i_dc_disp_a|ALT_INV_Equal4~0_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_tens~3_combout\,
	combout => \i_dc_disp_a|v_tens~5_combout\);

-- Location: MLABCELL_X82_Y10_N42
\i_dc_disp_a|s_bcd_tx_result[7]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[7]~21_combout\ = ( \i_dc_disp_a|s_bcd_tx_result[7]~21_combout\ & ( (\create_pll:i_reset_ctrl_a|reset_out~q\) # (\i_dc_disp_a|v_tens~5_combout\) ) ) # ( !\i_dc_disp_a|s_bcd_tx_result[7]~21_combout\ & ( 
-- (\i_dc_disp_a|v_tens~5_combout\ & !\create_pll:i_reset_ctrl_a|reset_out~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_dc_disp_a|ALT_INV_v_tens~5_combout\,
	datad => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	dataf => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[7]~21_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[7]~21_combout\);

-- Location: LABCELL_X83_Y10_N36
\i_dc_disp_a|s_bcd_tx_result[7]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[7]~23_combout\ = ( \i_dc_disp_a|v_tens~5_combout\ & ( !\i_dc_disp_a|s_bcd_tx_result[7]~21_combout\ ) ) # ( !\i_dc_disp_a|v_tens~5_combout\ & ( \i_dc_disp_a|s_bcd_tx_result[7]~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[7]~21_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_tens~5_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[7]~23_combout\);

-- Location: FF_X83_Y10_N38
\i_dc_disp_a|s_bcd_tx_result[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_bcd_tx_result[7]~23_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_dc_disp_a|s_bcd_tx_result[0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_bcd_tx_result[7]~_emulated_q\);

-- Location: LABCELL_X83_Y10_N45
\i_dc_disp_a|s_bcd_tx_result[7]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[7]~22_combout\ = ( \i_dc_disp_a|v_tens~5_combout\ & ( (!\create_pll:i_reset_ctrl_a|reset_out~q\) # (!\i_dc_disp_a|s_bcd_tx_result[7]~_emulated_q\ $ (!\i_dc_disp_a|s_bcd_tx_result[7]~21_combout\)) ) ) # ( 
-- !\i_dc_disp_a|v_tens~5_combout\ & ( (\create_pll:i_reset_ctrl_a|reset_out~q\ & (!\i_dc_disp_a|s_bcd_tx_result[7]~_emulated_q\ $ (!\i_dc_disp_a|s_bcd_tx_result[7]~21_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101011111111010110101111111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[7]~_emulated_q\,
	datac => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[7]~21_combout\,
	datad => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	dataf => \i_dc_disp_a|ALT_INV_v_tens~5_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[7]~22_combout\);

-- Location: LABCELL_X83_Y10_N12
\i_dc_disp_a|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux26~0_combout\ = ( !\i_dc_disp_a|s_bcd_tx_result[7]~22_combout\ & ( \i_dc_disp_a|s_bcd_tx_result[5]~26_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[5]~26_combout\,
	dataf => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[7]~22_combout\,
	combout => \i_dc_disp_a|Mux26~0_combout\);

-- Location: LABCELL_X80_Y8_N33
\i_dc_disp_a|sequences[2][0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|sequences[2][0]~1_combout\ = ( !\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\ & ( (!\i_dc_disp_a|s_updateInfo~q\ & (\create_pll:i_reset_ctrl_a|reset_out~q\ & (\i_dc_disp_a|s_tx_cn\(0) & !\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_s_updateInfo~q\,
	datab => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	datac => \i_dc_disp_a|ALT_INV_s_tx_cn\(0),
	datad => \i_dc_disp_a|ALT_INV_s_tx_cn[1]~DUPLICATE_q\,
	dataf => \i_dc_disp_a|ALT_INV_s_tx_cn[2]~DUPLICATE_q\,
	combout => \i_dc_disp_a|sequences[2][0]~1_combout\);

-- Location: FF_X83_Y10_N13
\i_dc_disp_a|sequences[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux26~0_combout\,
	ena => \i_dc_disp_a|sequences[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|sequences[1][1]~q\);

-- Location: MLABCELL_X87_Y10_N39
\i_dc_disp_a|v_ones~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|v_ones~3_combout\ = ( \i_dc_disp_a|v_ones~2_combout\ & ( \i_pwm_ctrl_a|current_dc[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_pwm_ctrl_a|ALT_INV_current_dc[0]~0_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_ones~2_combout\,
	combout => \i_dc_disp_a|v_ones~3_combout\);

-- Location: MLABCELL_X84_Y10_N42
\i_dc_disp_a|v_ones~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|v_ones~4_combout\ = ( \i_pwm_ctrl_a|current_dc[2]~2_combout\ & ( (!\i_dc_disp_a|v_ones~2_combout\) # (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ $ (((!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- !\i_pwm_ctrl_a|current_dc[1]~1_combout\)))) ) ) # ( !\i_pwm_ctrl_a|current_dc[2]~2_combout\ & ( (!\i_dc_disp_a|v_ones~2_combout\) # (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ $ (((\i_pwm_ctrl_a|current_dc[1]~1_combout\) # 
-- (\i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101010111111111010101011111110111111111010101011111111101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_v_ones~2_combout\,
	datab => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \i_pwm_ctrl_a|ALT_INV_current_dc[1]~1_combout\,
	datad => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \i_pwm_ctrl_a|ALT_INV_current_dc[2]~2_combout\,
	combout => \i_dc_disp_a|v_ones~4_combout\);

-- Location: MLABCELL_X84_Y10_N12
\i_dc_disp_a|v_ones~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|v_ones~7_combout\ = ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (\i_dc_disp_a|v_ones~2_combout\ & \i_pwm_ctrl_a|current_dc[1]~1_combout\) ) ) # ( !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( 
-- (\i_dc_disp_a|v_ones~2_combout\ & !\i_pwm_ctrl_a|current_dc[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_v_ones~2_combout\,
	datac => \i_pwm_ctrl_a|ALT_INV_current_dc[1]~1_combout\,
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \i_dc_disp_a|v_ones~7_combout\);

-- Location: MLABCELL_X84_Y10_N0
\i_dc_disp_a|v_ones~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|v_ones~8_combout\ = ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (\i_dc_disp_a|v_ones~2_combout\ & \i_dc_disp_a|Add1~0_combout\) ) ) ) # ( 
-- !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (\i_dc_disp_a|v_ones~2_combout\ & (!\i_pwm_ctrl_a|current_dc[2]~2_combout\ $ (\i_dc_disp_a|Add1~0_combout\))) ) ) ) # 
-- ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (\i_dc_disp_a|v_ones~2_combout\ & (!\i_dc_disp_a|Add1~0_combout\ $ (((!\i_pwm_ctrl_a|current_dc[1]~1_combout\ & 
-- !\i_pwm_ctrl_a|current_dc[2]~2_combout\))))) ) ) ) # ( !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (\i_dc_disp_a|v_ones~2_combout\ & 
-- (!\i_dc_disp_a|Add1~0_combout\ $ (((!\i_pwm_ctrl_a|current_dc[1]~1_combout\) # (!\i_pwm_ctrl_a|current_dc[2]~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001110000001110000100000001100000000110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_current_dc[1]~1_combout\,
	datab => \i_pwm_ctrl_a|ALT_INV_current_dc[2]~2_combout\,
	datac => \i_dc_disp_a|ALT_INV_v_ones~2_combout\,
	datad => \i_dc_disp_a|ALT_INV_Add1~0_combout\,
	datae => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \i_dc_disp_a|v_ones~8_combout\);

-- Location: MLABCELL_X84_Y10_N18
\i_dc_disp_a|v_ones~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|v_ones~9_combout\ = ( \i_dc_disp_a|v_ones~8_combout\ & ( \i_dc_disp_a|v_tens~3_combout\ & ( ((!\i_dc_disp_a|v_ones~3_combout\ & (\i_dc_disp_a|v_ones~4_combout\ & \i_dc_disp_a|Equal6~0_combout\))) # (\i_dc_disp_a|v_ones~7_combout\) ) ) ) # ( 
-- !\i_dc_disp_a|v_ones~8_combout\ & ( \i_dc_disp_a|v_tens~3_combout\ & ( \i_dc_disp_a|v_ones~7_combout\ ) ) ) # ( \i_dc_disp_a|v_ones~8_combout\ & ( !\i_dc_disp_a|v_tens~3_combout\ & ( \i_dc_disp_a|v_ones~7_combout\ ) ) ) # ( !\i_dc_disp_a|v_ones~8_combout\ 
-- & ( !\i_dc_disp_a|v_tens~3_combout\ & ( \i_dc_disp_a|v_ones~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_v_ones~3_combout\,
	datab => \i_dc_disp_a|ALT_INV_v_ones~4_combout\,
	datac => \i_dc_disp_a|ALT_INV_Equal6~0_combout\,
	datad => \i_dc_disp_a|ALT_INV_v_ones~7_combout\,
	datae => \i_dc_disp_a|ALT_INV_v_ones~8_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_tens~3_combout\,
	combout => \i_dc_disp_a|v_ones~9_combout\);

-- Location: MLABCELL_X82_Y10_N24
\i_dc_disp_a|s_bcd_tx_result[1]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[1]~17_combout\ = ( \i_dc_disp_a|s_bcd_tx_result[1]~17_combout\ & ( (\create_pll:i_reset_ctrl_a|reset_out~q\) # (\i_dc_disp_a|v_ones~9_combout\) ) ) # ( !\i_dc_disp_a|s_bcd_tx_result[1]~17_combout\ & ( 
-- (\i_dc_disp_a|v_ones~9_combout\ & !\create_pll:i_reset_ctrl_a|reset_out~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_dc_disp_a|ALT_INV_v_ones~9_combout\,
	datad => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	dataf => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[1]~17_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[1]~17_combout\);

-- Location: LABCELL_X83_Y10_N42
\i_dc_disp_a|s_bcd_tx_result[1]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[1]~19_combout\ = ( \i_dc_disp_a|v_ones~9_combout\ & ( !\i_dc_disp_a|s_bcd_tx_result[1]~17_combout\ ) ) # ( !\i_dc_disp_a|v_ones~9_combout\ & ( \i_dc_disp_a|s_bcd_tx_result[1]~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[1]~17_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_ones~9_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[1]~19_combout\);

-- Location: FF_X83_Y10_N44
\i_dc_disp_a|s_bcd_tx_result[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_bcd_tx_result[1]~19_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_dc_disp_a|s_bcd_tx_result[0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_bcd_tx_result[1]~_emulated_q\);

-- Location: LABCELL_X83_Y10_N24
\i_dc_disp_a|s_bcd_tx_result[1]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[1]~18_combout\ = ( \i_dc_disp_a|v_ones~9_combout\ & ( (!\create_pll:i_reset_ctrl_a|reset_out~q\) # (!\i_dc_disp_a|s_bcd_tx_result[1]~17_combout\ $ (!\i_dc_disp_a|s_bcd_tx_result[1]~_emulated_q\)) ) ) # ( 
-- !\i_dc_disp_a|v_ones~9_combout\ & ( (\create_pll:i_reset_ctrl_a|reset_out~q\ & (!\i_dc_disp_a|s_bcd_tx_result[1]~17_combout\ $ (!\i_dc_disp_a|s_bcd_tx_result[1]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110011110011111111001111001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[1]~17_combout\,
	datac => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	datad => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[1]~_emulated_q\,
	dataf => \i_dc_disp_a|ALT_INV_v_ones~9_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[1]~18_combout\);

-- Location: MLABCELL_X84_Y10_N9
\i_dc_disp_a|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Add1~1_combout\ = ( \i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( !\i_dc_disp_a|Add1~0_combout\ $ (((\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\) # (\i_pwm_ctrl_a|current_dc[2]~2_combout\))) ) ) # ( 
-- !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( !\i_dc_disp_a|Add1~0_combout\ $ (((!\i_pwm_ctrl_a|current_dc[1]~1_combout\ & ((!\i_pwm_ctrl_a|current_dc[2]~2_combout\) # 
-- (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\))) # (\i_pwm_ctrl_a|current_dc[1]~1_combout\ & (!\i_pwm_ctrl_a|current_dc[2]~2_combout\ & !\i_dc_disp_a|Div0|auto_generated|divider|divider|op_6~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000000111100111100011000011000011111100001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_pwm_ctrl_a|ALT_INV_current_dc[1]~1_combout\,
	datab => \i_pwm_ctrl_a|ALT_INV_current_dc[2]~2_combout\,
	datac => \i_dc_disp_a|ALT_INV_Add1~0_combout\,
	datad => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \i_dc_disp_a|Add1~1_combout\);

-- Location: MLABCELL_X84_Y10_N30
\i_dc_disp_a|v_ones~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|v_ones~5_combout\ = ( \i_dc_disp_a|v_ones~4_combout\ & ( (\i_dc_disp_a|Equal6~0_combout\ & (\i_dc_disp_a|v_tens~3_combout\ & !\i_dc_disp_a|v_ones~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_Equal6~0_combout\,
	datab => \i_dc_disp_a|ALT_INV_v_tens~3_combout\,
	datac => \i_dc_disp_a|ALT_INV_v_ones~3_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_ones~4_combout\,
	combout => \i_dc_disp_a|v_ones~5_combout\);

-- Location: MLABCELL_X84_Y10_N45
\i_dc_disp_a|v_ones~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|v_ones~6_combout\ = ( \i_dc_disp_a|v_ones~5_combout\ & ( (\i_dc_disp_a|v_ones~2_combout\ & ((!\i_dc_disp_a|Add1~1_combout\) # (!\i_dc_disp_a|Div0|auto_generated|divider|divider|op_7~1_sumout\ $ (!\i_pwm_ctrl_a|current_dc[1]~1_combout\)))) ) ) 
-- # ( !\i_dc_disp_a|v_ones~5_combout\ & ( (\i_dc_disp_a|v_ones~2_combout\ & !\i_dc_disp_a|Add1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010001010101000101000101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_v_ones~2_combout\,
	datab => \i_dc_disp_a|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \i_dc_disp_a|ALT_INV_Add1~1_combout\,
	datad => \i_pwm_ctrl_a|ALT_INV_current_dc[1]~1_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_ones~5_combout\,
	combout => \i_dc_disp_a|v_ones~6_combout\);

-- Location: MLABCELL_X82_Y10_N48
\i_dc_disp_a|s_bcd_tx_result[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[3]~13_combout\ = ( \i_dc_disp_a|s_bcd_tx_result[3]~13_combout\ & ( (\create_pll:i_reset_ctrl_a|reset_out~q\) # (\i_dc_disp_a|v_ones~6_combout\) ) ) # ( !\i_dc_disp_a|s_bcd_tx_result[3]~13_combout\ & ( 
-- (\i_dc_disp_a|v_ones~6_combout\ & !\create_pll:i_reset_ctrl_a|reset_out~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_dc_disp_a|ALT_INV_v_ones~6_combout\,
	datad => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	dataf => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[3]~13_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[3]~13_combout\);

-- Location: LABCELL_X83_Y10_N0
\i_dc_disp_a|s_bcd_tx_result[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[3]~15_combout\ = ( !\i_dc_disp_a|s_bcd_tx_result[3]~13_combout\ & ( \i_dc_disp_a|v_ones~6_combout\ ) ) # ( \i_dc_disp_a|s_bcd_tx_result[3]~13_combout\ & ( !\i_dc_disp_a|v_ones~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[3]~13_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_ones~6_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[3]~15_combout\);

-- Location: FF_X83_Y10_N2
\i_dc_disp_a|s_bcd_tx_result[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_bcd_tx_result[3]~15_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_dc_disp_a|s_bcd_tx_result[0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_bcd_tx_result[3]~_emulated_q\);

-- Location: LABCELL_X83_Y10_N21
\i_dc_disp_a|s_bcd_tx_result[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[3]~14_combout\ = ( \i_dc_disp_a|v_ones~6_combout\ & ( (!\create_pll:i_reset_ctrl_a|reset_out~q\) # (!\i_dc_disp_a|s_bcd_tx_result[3]~_emulated_q\ $ (!\i_dc_disp_a|s_bcd_tx_result[3]~13_combout\)) ) ) # ( 
-- !\i_dc_disp_a|v_ones~6_combout\ & ( (\create_pll:i_reset_ctrl_a|reset_out~q\ & (!\i_dc_disp_a|s_bcd_tx_result[3]~_emulated_q\ $ (!\i_dc_disp_a|s_bcd_tx_result[3]~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001011011110110111101101111011011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[3]~_emulated_q\,
	datab => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	datac => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[3]~13_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_ones~6_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[3]~14_combout\);

-- Location: LABCELL_X83_Y10_N30
\i_dc_disp_a|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux23~0_combout\ = ( !\i_dc_disp_a|s_bcd_tx_result[3]~14_combout\ & ( \i_dc_disp_a|s_bcd_tx_result[1]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[1]~18_combout\,
	dataf => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[3]~14_combout\,
	combout => \i_dc_disp_a|Mux23~0_combout\);

-- Location: FF_X83_Y10_N31
\i_dc_disp_a|sequences[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux23~0_combout\,
	ena => \i_dc_disp_a|sequences[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|sequences[2][1]~q\);

-- Location: LABCELL_X80_Y10_N9
\i_dc_disp_a|Mux86~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux86~0_combout\ = ( \i_dc_disp_a|sequences[2][1]~q\ & ( (!\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\ & (\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\ & ((!\i_dc_disp_a|s_tx_cn\(0))))) # (\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\ & 
-- (!\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\ & (\i_dc_disp_a|sequences[1][1]~q\ & \i_dc_disp_a|s_tx_cn\(0)))) ) ) # ( !\i_dc_disp_a|sequences[2][1]~q\ & ( (\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\ & (!\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\ & 
-- (\i_dc_disp_a|sequences[1][1]~q\ & \i_dc_disp_a|s_tx_cn\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000100010000001000010001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_s_tx_cn[1]~DUPLICATE_q\,
	datab => \i_dc_disp_a|ALT_INV_s_tx_cn[2]~DUPLICATE_q\,
	datac => \i_dc_disp_a|ALT_INV_sequences[1][1]~q\,
	datad => \i_dc_disp_a|ALT_INV_s_tx_cn\(0),
	dataf => \i_dc_disp_a|ALT_INV_sequences[2][1]~q\,
	combout => \i_dc_disp_a|Mux86~0_combout\);

-- Location: LABCELL_X80_Y10_N36
\i_dc_disp_a|tx_data[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|tx_data[0]~0_combout\ = ( \i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\ & ( !\i_dc_disp_a|s_updateInfo~q\ & ( (\i_serial_uart_a|transmit_ready_int~q\ & (!\i_dc_disp_a|s_ready_cd~q\ & ((!\i_dc_disp_a|s_tx_cn\(0)) # 
-- (!\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\)))) ) ) ) # ( !\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\ & ( !\i_dc_disp_a|s_updateInfo~q\ & ( (\i_serial_uart_a|transmit_ready_int~q\ & (\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\ & !\i_dc_disp_a|s_ready_cd~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000001100100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_s_tx_cn\(0),
	datab => \i_serial_uart_a|ALT_INV_transmit_ready_int~q\,
	datac => \i_dc_disp_a|ALT_INV_s_tx_cn[2]~DUPLICATE_q\,
	datad => \i_dc_disp_a|ALT_INV_s_ready_cd~q\,
	datae => \i_dc_disp_a|ALT_INV_s_tx_cn[1]~DUPLICATE_q\,
	dataf => \i_dc_disp_a|ALT_INV_s_updateInfo~q\,
	combout => \i_dc_disp_a|tx_data[0]~0_combout\);

-- Location: FF_X80_Y10_N10
\i_dc_disp_a|tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux86~0_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_dc_disp_a|tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|tx_data\(1));

-- Location: LABCELL_X83_Y10_N15
\i_dc_disp_a|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux24~0_combout\ = ( \i_dc_disp_a|s_bcd_tx_result[7]~22_combout\ & ( !\i_dc_disp_a|s_bcd_tx_result[5]~26_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[5]~26_combout\,
	dataf => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[7]~22_combout\,
	combout => \i_dc_disp_a|Mux24~0_combout\);

-- Location: FF_X83_Y10_N16
\i_dc_disp_a|sequences[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux24~0_combout\,
	ena => \i_dc_disp_a|sequences[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|sequences[1][3]~q\);

-- Location: LABCELL_X83_Y10_N33
\i_dc_disp_a|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux22~0_combout\ = ( \i_dc_disp_a|s_bcd_tx_result[3]~14_combout\ & ( !\i_dc_disp_a|s_bcd_tx_result[1]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[1]~18_combout\,
	dataf => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[3]~14_combout\,
	combout => \i_dc_disp_a|Mux22~0_combout\);

-- Location: FF_X83_Y10_N34
\i_dc_disp_a|sequences[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux22~0_combout\,
	ena => \i_dc_disp_a|sequences[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|sequences[2][3]~q\);

-- Location: LABCELL_X80_Y10_N21
\i_dc_disp_a|Mux84~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux84~0_combout\ = ( \i_dc_disp_a|sequences[2][3]~q\ & ( (!\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\ & ((!\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\) # ((\i_dc_disp_a|s_tx_cn\(0) & \i_dc_disp_a|sequences[1][3]~q\)))) # 
-- (\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\ & ((!\i_dc_disp_a|s_tx_cn\(0)) # ((\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\)))) ) ) # ( !\i_dc_disp_a|sequences[2][3]~q\ & ( (!\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\ & ((!\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\) # 
-- ((\i_dc_disp_a|s_tx_cn\(0) & \i_dc_disp_a|sequences[1][3]~q\)))) # (\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\ & (((\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010111101010100101011111101110010101111110111001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_s_tx_cn[2]~DUPLICATE_q\,
	datab => \i_dc_disp_a|ALT_INV_s_tx_cn\(0),
	datac => \i_dc_disp_a|ALT_INV_sequences[1][3]~q\,
	datad => \i_dc_disp_a|ALT_INV_s_tx_cn[1]~DUPLICATE_q\,
	dataf => \i_dc_disp_a|ALT_INV_sequences[2][3]~q\,
	combout => \i_dc_disp_a|Mux84~0_combout\);

-- Location: FF_X80_Y10_N22
\i_dc_disp_a|tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux84~0_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_dc_disp_a|tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|tx_data\(3));

-- Location: LABCELL_X80_Y10_N42
\i_dc_disp_a|sequences[0][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|sequences[0][5]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \i_dc_disp_a|sequences[0][5]~feeder_combout\);

-- Location: FF_X80_Y10_N43
\i_dc_disp_a|sequences[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|sequences[0][5]~feeder_combout\,
	ena => \i_dc_disp_a|sequences[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|sequences[0][5]~q\);

-- Location: LABCELL_X80_Y10_N6
\i_dc_disp_a|Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux32~0_combout\ = ( \i_dc_disp_a|sequences[0][5]~q\ & ( (!\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\) # (!\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\) ) ) # ( !\i_dc_disp_a|sequences[0][5]~q\ & ( !\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_s_tx_cn[1]~DUPLICATE_q\,
	datab => \i_dc_disp_a|ALT_INV_s_tx_cn[2]~DUPLICATE_q\,
	dataf => \i_dc_disp_a|ALT_INV_sequences[0][5]~q\,
	combout => \i_dc_disp_a|Mux32~0_combout\);

-- Location: FF_X80_Y10_N8
\i_dc_disp_a|tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux32~0_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_dc_disp_a|tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|tx_data\(5));

-- Location: LABCELL_X80_Y6_N45
\i_serial_uart_a|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector19~0_combout\ = ( !\i_serial_uart_a|tx_state.s_tx_data~q\ & ( \i_dc_disp_a|tx_data\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_dc_disp_a|ALT_INV_tx_data\(5),
	dataf => \i_serial_uart_a|ALT_INV_tx_state.s_tx_data~q\,
	combout => \i_serial_uart_a|Selector19~0_combout\);

-- Location: LABCELL_X80_Y6_N54
\i_serial_uart_a|tx_byte_saved[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|tx_byte_saved[4]~0_combout\ = ( \i_serial_uart_a|tx_state.s_tx_data~q\ & ( ((\i_dc_disp_a|s_valid_data~q\ & (\i_serial_uart_a|transmit_ready_int~q\ & !\i_serial_uart_a|tx_state.s_idle~q\))) # (\i_serial_uart_a|tx_bit_cnt_wrap~q\) ) ) # ( 
-- !\i_serial_uart_a|tx_state.s_tx_data~q\ & ( (\i_dc_disp_a|s_valid_data~q\ & (\i_serial_uart_a|transmit_ready_int~q\ & !\i_serial_uart_a|tx_state.s_idle~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000001010111010101010101011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_tx_bit_cnt_wrap~q\,
	datab => \i_dc_disp_a|ALT_INV_s_valid_data~q\,
	datac => \i_serial_uart_a|ALT_INV_transmit_ready_int~q\,
	datad => \i_serial_uart_a|ALT_INV_tx_state.s_idle~q\,
	dataf => \i_serial_uart_a|ALT_INV_tx_state.s_tx_data~q\,
	combout => \i_serial_uart_a|tx_byte_saved[4]~0_combout\);

-- Location: FF_X80_Y6_N47
\i_serial_uart_a|tx_byte_saved[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector19~0_combout\,
	ena => \i_serial_uart_a|tx_byte_saved[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_byte_saved\(5));

-- Location: LABCELL_X81_Y10_N6
\i_dc_disp_a|v_hundreds~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|v_hundreds~0_combout\ = ( \i_dc_disp_a|Equal4~0_combout\ ) # ( !\i_dc_disp_a|Equal4~0_combout\ & ( !\i_dc_disp_a|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_dc_disp_a|ALT_INV_Equal0~1_combout\,
	dataf => \i_dc_disp_a|ALT_INV_Equal4~0_combout\,
	combout => \i_dc_disp_a|v_hundreds~0_combout\);

-- Location: MLABCELL_X82_Y10_N39
\i_dc_disp_a|s_bcd_tx_result[11]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[11]~37_combout\ = ( \i_dc_disp_a|s_bcd_tx_result[11]~37_combout\ & ( (\create_pll:i_reset_ctrl_a|reset_out~q\) # (\i_dc_disp_a|v_hundreds~0_combout\) ) ) # ( !\i_dc_disp_a|s_bcd_tx_result[11]~37_combout\ & ( 
-- (\i_dc_disp_a|v_hundreds~0_combout\ & !\create_pll:i_reset_ctrl_a|reset_out~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_v_hundreds~0_combout\,
	datad => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	dataf => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[11]~37_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[11]~37_combout\);

-- Location: LABCELL_X83_Y10_N39
\i_dc_disp_a|s_bcd_tx_result[11]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[11]~39_combout\ = !\i_dc_disp_a|s_bcd_tx_result[11]~37_combout\ $ (!\i_dc_disp_a|v_hundreds~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[11]~37_combout\,
	datad => \i_dc_disp_a|ALT_INV_v_hundreds~0_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[11]~39_combout\);

-- Location: FF_X83_Y10_N40
\i_dc_disp_a|s_bcd_tx_result[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_bcd_tx_result[11]~39_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_dc_disp_a|s_bcd_tx_result[0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_bcd_tx_result[11]~_emulated_q\);

-- Location: LABCELL_X83_Y10_N57
\i_dc_disp_a|s_bcd_tx_result[11]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[11]~38_combout\ = ( \create_pll:i_reset_ctrl_a|reset_out~q\ & ( !\i_dc_disp_a|s_bcd_tx_result[11]~37_combout\ $ (\i_dc_disp_a|s_bcd_tx_result[11]~_emulated_q\) ) ) # ( !\create_pll:i_reset_ctrl_a|reset_out~q\ & ( 
-- !\i_dc_disp_a|v_hundreds~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[11]~37_combout\,
	datac => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[11]~_emulated_q\,
	datad => \i_dc_disp_a|ALT_INV_v_hundreds~0_combout\,
	dataf => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	combout => \i_dc_disp_a|s_bcd_tx_result[11]~38_combout\);

-- Location: FF_X83_Y10_N59
\i_dc_disp_a|sequences[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_bcd_tx_result[11]~38_combout\,
	ena => \i_dc_disp_a|sequences[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|sequences[0][4]~q\);

-- Location: LABCELL_X83_Y10_N18
\i_dc_disp_a|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux21~0_combout\ = ( \i_dc_disp_a|s_bcd_tx_result[3]~14_combout\ & ( \i_dc_disp_a|s_bcd_tx_result[1]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[1]~18_combout\,
	dataf => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[3]~14_combout\,
	combout => \i_dc_disp_a|Mux21~0_combout\);

-- Location: FF_X83_Y10_N20
\i_dc_disp_a|sequences[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux21~0_combout\,
	ena => \i_dc_disp_a|sequences[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|sequences[2][4]~q\);

-- Location: LABCELL_X83_Y10_N54
\i_dc_disp_a|Mux24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux24~1_combout\ = ( \i_dc_disp_a|s_bcd_tx_result[7]~22_combout\ & ( !\i_dc_disp_a|s_bcd_tx_result[5]~26_combout\ ) ) # ( !\i_dc_disp_a|s_bcd_tx_result[7]~22_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[5]~26_combout\,
	dataf => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[7]~22_combout\,
	combout => \i_dc_disp_a|Mux24~1_combout\);

-- Location: FF_X83_Y10_N55
\i_dc_disp_a|sequences[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux24~1_combout\,
	ena => \i_dc_disp_a|sequences[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|sequences[1][4]~q\);

-- Location: LABCELL_X80_Y10_N48
\i_dc_disp_a|Mux83~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux83~0_combout\ = ( \i_dc_disp_a|sequences[2][4]~q\ & ( \i_dc_disp_a|sequences[1][4]~q\ & ( (!\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\ & (\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\ & ((\i_dc_disp_a|s_tx_cn\(0)) # (\i_dc_disp_a|sequences[0][4]~q\)))) ) 
-- ) ) # ( !\i_dc_disp_a|sequences[2][4]~q\ & ( \i_dc_disp_a|sequences[1][4]~q\ & ( (!\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\ & (\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\ & ((\i_dc_disp_a|s_tx_cn\(0)) # (\i_dc_disp_a|sequences[0][4]~q\)))) # 
-- (\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\ & (((!\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\ & !\i_dc_disp_a|s_tx_cn\(0))))) ) ) ) # ( \i_dc_disp_a|sequences[2][4]~q\ & ( !\i_dc_disp_a|sequences[1][4]~q\ & ( (!\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\ & 
-- (\i_dc_disp_a|sequences[0][4]~q\ & (\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\ & !\i_dc_disp_a|s_tx_cn\(0)))) ) ) ) # ( !\i_dc_disp_a|sequences[2][4]~q\ & ( !\i_dc_disp_a|sequences[1][4]~q\ & ( (!\i_dc_disp_a|s_tx_cn\(0) & 
-- ((!\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\ & (\i_dc_disp_a|sequences[0][4]~q\ & \i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\)) # (\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\ & ((!\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001000000000000000100000000001010010000010100000001000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_s_tx_cn[2]~DUPLICATE_q\,
	datab => \i_dc_disp_a|ALT_INV_sequences[0][4]~q\,
	datac => \i_dc_disp_a|ALT_INV_s_tx_cn[1]~DUPLICATE_q\,
	datad => \i_dc_disp_a|ALT_INV_s_tx_cn\(0),
	datae => \i_dc_disp_a|ALT_INV_sequences[2][4]~q\,
	dataf => \i_dc_disp_a|ALT_INV_sequences[1][4]~q\,
	combout => \i_dc_disp_a|Mux83~0_combout\);

-- Location: FF_X80_Y10_N49
\i_dc_disp_a|tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux83~0_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_dc_disp_a|tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|tx_data\(4));

-- Location: LABCELL_X80_Y6_N42
\i_serial_uart_a|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector20~0_combout\ = ( \i_serial_uart_a|tx_state.s_tx_data~q\ & ( \i_serial_uart_a|tx_byte_saved\(5) ) ) # ( !\i_serial_uart_a|tx_state.s_tx_data~q\ & ( \i_dc_disp_a|tx_data\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart_a|ALT_INV_tx_byte_saved\(5),
	datac => \i_dc_disp_a|ALT_INV_tx_data\(4),
	dataf => \i_serial_uart_a|ALT_INV_tx_state.s_tx_data~q\,
	combout => \i_serial_uart_a|Selector20~0_combout\);

-- Location: FF_X80_Y6_N44
\i_serial_uart_a|tx_byte_saved[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector20~0_combout\,
	ena => \i_serial_uart_a|tx_byte_saved[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_byte_saved\(4));

-- Location: LABCELL_X80_Y6_N51
\i_serial_uart_a|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector21~0_combout\ = ( \i_serial_uart_a|tx_byte_saved\(4) & ( (\i_dc_disp_a|tx_data\(3)) # (\i_serial_uart_a|tx_state.s_tx_data~q\) ) ) # ( !\i_serial_uart_a|tx_byte_saved\(4) & ( (!\i_serial_uart_a|tx_state.s_tx_data~q\ & 
-- \i_dc_disp_a|tx_data\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart_a|ALT_INV_tx_state.s_tx_data~q\,
	datad => \i_dc_disp_a|ALT_INV_tx_data\(3),
	dataf => \i_serial_uart_a|ALT_INV_tx_byte_saved\(4),
	combout => \i_serial_uart_a|Selector21~0_combout\);

-- Location: FF_X80_Y6_N53
\i_serial_uart_a|tx_byte_saved[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector21~0_combout\,
	ena => \i_serial_uart_a|tx_byte_saved[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_byte_saved\(3));

-- Location: MLABCELL_X82_Y10_N51
\i_dc_disp_a|s_bcd_tx_result[6]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[6]~33_combout\ = ( \i_dc_disp_a|s_bcd_tx_result[6]~33_combout\ & ( (!\i_dc_disp_a|v_tens~4_combout\) # (\create_pll:i_reset_ctrl_a|reset_out~q\) ) ) # ( !\i_dc_disp_a|s_bcd_tx_result[6]~33_combout\ & ( 
-- (!\i_dc_disp_a|v_tens~4_combout\ & !\create_pll:i_reset_ctrl_a|reset_out~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_dc_disp_a|ALT_INV_v_tens~4_combout\,
	datad => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	dataf => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[6]~33_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[6]~33_combout\);

-- Location: LABCELL_X81_Y10_N39
\i_dc_disp_a|s_bcd_tx_result[6]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[6]~35_combout\ = ( \i_dc_disp_a|v_tens~4_combout\ & ( \i_dc_disp_a|s_bcd_tx_result[6]~33_combout\ ) ) # ( !\i_dc_disp_a|v_tens~4_combout\ & ( !\i_dc_disp_a|s_bcd_tx_result[6]~33_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[6]~33_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_tens~4_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[6]~35_combout\);

-- Location: FF_X81_Y10_N41
\i_dc_disp_a|s_bcd_tx_result[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_bcd_tx_result[6]~35_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_dc_disp_a|s_bcd_tx_result[0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_bcd_tx_result[6]~_emulated_q\);

-- Location: LABCELL_X81_Y10_N33
\i_dc_disp_a|s_bcd_tx_result[6]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[6]~34_combout\ = ( \i_dc_disp_a|s_bcd_tx_result[6]~33_combout\ & ( (!\create_pll:i_reset_ctrl_a|reset_out~q\ & ((!\i_dc_disp_a|v_tens~4_combout\))) # (\create_pll:i_reset_ctrl_a|reset_out~q\ & 
-- (!\i_dc_disp_a|s_bcd_tx_result[6]~_emulated_q\)) ) ) # ( !\i_dc_disp_a|s_bcd_tx_result[6]~33_combout\ & ( (!\create_pll:i_reset_ctrl_a|reset_out~q\ & ((!\i_dc_disp_a|v_tens~4_combout\))) # (\create_pll:i_reset_ctrl_a|reset_out~q\ & 
-- (\i_dc_disp_a|s_bcd_tx_result[6]~_emulated_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000011111100110000001111111100000011001111110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[6]~_emulated_q\,
	datac => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	datad => \i_dc_disp_a|ALT_INV_v_tens~4_combout\,
	dataf => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[6]~33_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[6]~34_combout\);

-- Location: FF_X81_Y10_N35
\i_dc_disp_a|sequences[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_bcd_tx_result[6]~34_combout\,
	ena => \i_dc_disp_a|sequences[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|sequences[1][2]~q\);

-- Location: MLABCELL_X82_Y10_N30
\i_dc_disp_a|s_bcd_tx_result[2]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[2]~29_combout\ = ( \i_dc_disp_a|s_bcd_tx_result[2]~29_combout\ & ( (!\i_dc_disp_a|v_ones~4_combout\) # (\create_pll:i_reset_ctrl_a|reset_out~q\) ) ) # ( !\i_dc_disp_a|s_bcd_tx_result[2]~29_combout\ & ( 
-- (!\i_dc_disp_a|v_ones~4_combout\ & !\create_pll:i_reset_ctrl_a|reset_out~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_dc_disp_a|ALT_INV_v_ones~4_combout\,
	datad => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	dataf => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[2]~29_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[2]~29_combout\);

-- Location: LABCELL_X81_Y10_N54
\i_dc_disp_a|s_bcd_tx_result[2]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[2]~31_combout\ = ( \i_dc_disp_a|v_ones~4_combout\ & ( \i_dc_disp_a|s_bcd_tx_result[2]~29_combout\ ) ) # ( !\i_dc_disp_a|v_ones~4_combout\ & ( !\i_dc_disp_a|s_bcd_tx_result[2]~29_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \i_dc_disp_a|ALT_INV_v_ones~4_combout\,
	dataf => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[2]~29_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[2]~31_combout\);

-- Location: FF_X81_Y10_N56
\i_dc_disp_a|s_bcd_tx_result[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_bcd_tx_result[2]~31_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_dc_disp_a|s_bcd_tx_result[0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_bcd_tx_result[2]~_emulated_q\);

-- Location: LABCELL_X81_Y10_N42
\i_dc_disp_a|s_bcd_tx_result[2]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[2]~30_combout\ = ( \create_pll:i_reset_ctrl_a|reset_out~q\ & ( \i_dc_disp_a|s_bcd_tx_result[2]~29_combout\ & ( !\i_dc_disp_a|s_bcd_tx_result[2]~_emulated_q\ ) ) ) # ( !\create_pll:i_reset_ctrl_a|reset_out~q\ & ( 
-- \i_dc_disp_a|s_bcd_tx_result[2]~29_combout\ & ( !\i_dc_disp_a|v_ones~4_combout\ ) ) ) # ( \create_pll:i_reset_ctrl_a|reset_out~q\ & ( !\i_dc_disp_a|s_bcd_tx_result[2]~29_combout\ & ( \i_dc_disp_a|s_bcd_tx_result[2]~_emulated_q\ ) ) ) # ( 
-- !\create_pll:i_reset_ctrl_a|reset_out~q\ & ( !\i_dc_disp_a|s_bcd_tx_result[2]~29_combout\ & ( !\i_dc_disp_a|v_ones~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000010101010101010111110000111100001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[2]~_emulated_q\,
	datac => \i_dc_disp_a|ALT_INV_v_ones~4_combout\,
	datae => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	dataf => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[2]~29_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[2]~30_combout\);

-- Location: FF_X81_Y10_N43
\i_dc_disp_a|sequences[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_bcd_tx_result[2]~30_combout\,
	ena => \i_dc_disp_a|sequences[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|sequences[2][2]~q\);

-- Location: LABCELL_X80_Y10_N18
\i_dc_disp_a|Mux85~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux85~0_combout\ = ( \i_dc_disp_a|sequences[2][2]~q\ & ( ((!\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\) # ((\i_dc_disp_a|s_tx_cn\(0) & \i_dc_disp_a|sequences[1][2]~q\))) # (\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\) ) ) # ( 
-- !\i_dc_disp_a|sequences[2][2]~q\ & ( (!\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\ & ((!\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\) # ((\i_dc_disp_a|s_tx_cn\(0) & \i_dc_disp_a|sequences[1][2]~q\)))) # (\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\ & 
-- (((\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\)) # (\i_dc_disp_a|s_tx_cn\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101101010111101110110101011111111111010101111111111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_s_tx_cn[2]~DUPLICATE_q\,
	datab => \i_dc_disp_a|ALT_INV_s_tx_cn\(0),
	datac => \i_dc_disp_a|ALT_INV_sequences[1][2]~q\,
	datad => \i_dc_disp_a|ALT_INV_s_tx_cn[1]~DUPLICATE_q\,
	dataf => \i_dc_disp_a|ALT_INV_sequences[2][2]~q\,
	combout => \i_dc_disp_a|Mux85~0_combout\);

-- Location: FF_X80_Y10_N19
\i_dc_disp_a|tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux85~0_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_dc_disp_a|tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|tx_data\(2));

-- Location: LABCELL_X80_Y6_N48
\i_serial_uart_a|Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector22~0_combout\ = (!\i_serial_uart_a|tx_state.s_tx_data~q\ & ((\i_dc_disp_a|tx_data\(2)))) # (\i_serial_uart_a|tx_state.s_tx_data~q\ & (\i_serial_uart_a|tx_byte_saved\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_tx_byte_saved\(3),
	datab => \i_serial_uart_a|ALT_INV_tx_state.s_tx_data~q\,
	datac => \i_dc_disp_a|ALT_INV_tx_data\(2),
	combout => \i_serial_uart_a|Selector22~0_combout\);

-- Location: FF_X80_Y6_N50
\i_serial_uart_a|tx_byte_saved[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector22~0_combout\,
	ena => \i_serial_uart_a|tx_byte_saved[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_byte_saved\(2));

-- Location: LABCELL_X80_Y6_N3
\i_serial_uart_a|Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector23~0_combout\ = ( \i_serial_uart_a|tx_byte_saved\(2) & ( (\i_dc_disp_a|tx_data\(1)) # (\i_serial_uart_a|tx_state.s_tx_data~q\) ) ) # ( !\i_serial_uart_a|tx_byte_saved\(2) & ( (!\i_serial_uart_a|tx_state.s_tx_data~q\ & 
-- \i_dc_disp_a|tx_data\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart_a|ALT_INV_tx_state.s_tx_data~q\,
	datac => \i_dc_disp_a|ALT_INV_tx_data\(1),
	dataf => \i_serial_uart_a|ALT_INV_tx_byte_saved\(2),
	combout => \i_serial_uart_a|Selector23~0_combout\);

-- Location: FF_X80_Y6_N5
\i_serial_uart_a|tx_byte_saved[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector23~0_combout\,
	ena => \i_serial_uart_a|tx_byte_saved[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_byte_saved\(1));

-- Location: MLABCELL_X82_Y10_N33
\i_dc_disp_a|s_bcd_tx_result[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[4]~9_combout\ = ( \i_dc_disp_a|s_bcd_tx_result[4]~9_combout\ & ( (!\i_dc_disp_a|v_tens~3_combout\) # (\create_pll:i_reset_ctrl_a|reset_out~q\) ) ) # ( !\i_dc_disp_a|s_bcd_tx_result[4]~9_combout\ & ( 
-- (!\i_dc_disp_a|v_tens~3_combout\ & !\create_pll:i_reset_ctrl_a|reset_out~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_dc_disp_a|ALT_INV_v_tens~3_combout\,
	datad => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	dataf => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[4]~9_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[4]~9_combout\);

-- Location: LABCELL_X81_Y10_N36
\i_dc_disp_a|s_bcd_tx_result[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[4]~11_combout\ = ( \i_dc_disp_a|v_tens~3_combout\ & ( \i_dc_disp_a|s_bcd_tx_result[4]~9_combout\ ) ) # ( !\i_dc_disp_a|v_tens~3_combout\ & ( !\i_dc_disp_a|s_bcd_tx_result[4]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[4]~9_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_tens~3_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[4]~11_combout\);

-- Location: FF_X81_Y10_N38
\i_dc_disp_a|s_bcd_tx_result[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_bcd_tx_result[4]~11_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_dc_disp_a|s_bcd_tx_result[0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_bcd_tx_result[4]~_emulated_q\);

-- Location: LABCELL_X81_Y10_N12
\i_dc_disp_a|s_bcd_tx_result[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[4]~10_combout\ = ( \create_pll:i_reset_ctrl_a|reset_out~q\ & ( \i_dc_disp_a|v_tens~3_combout\ & ( !\i_dc_disp_a|s_bcd_tx_result[4]~_emulated_q\ $ (!\i_dc_disp_a|s_bcd_tx_result[4]~9_combout\) ) ) ) # ( 
-- \create_pll:i_reset_ctrl_a|reset_out~q\ & ( !\i_dc_disp_a|v_tens~3_combout\ & ( !\i_dc_disp_a|s_bcd_tx_result[4]~_emulated_q\ $ (!\i_dc_disp_a|s_bcd_tx_result[4]~9_combout\) ) ) ) # ( !\create_pll:i_reset_ctrl_a|reset_out~q\ & ( 
-- !\i_dc_disp_a|v_tens~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010110100101101000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[4]~_emulated_q\,
	datac => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[4]~9_combout\,
	datae => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	dataf => \i_dc_disp_a|ALT_INV_v_tens~3_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[4]~10_combout\);

-- Location: FF_X81_Y10_N13
\i_dc_disp_a|sequences[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_bcd_tx_result[4]~10_combout\,
	ena => \i_dc_disp_a|sequences[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|sequences[1][0]~q\);

-- Location: MLABCELL_X82_Y10_N27
\i_dc_disp_a|s_bcd_tx_result[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[0]~1_combout\ = ( \i_dc_disp_a|s_bcd_tx_result[0]~1_combout\ & ( (\create_pll:i_reset_ctrl_a|reset_out~q\) # (\i_dc_disp_a|v_ones~3_combout\) ) ) # ( !\i_dc_disp_a|s_bcd_tx_result[0]~1_combout\ & ( 
-- (\i_dc_disp_a|v_ones~3_combout\ & !\create_pll:i_reset_ctrl_a|reset_out~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_dc_disp_a|ALT_INV_v_ones~3_combout\,
	datad => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	dataf => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[0]~1_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[0]~1_combout\);

-- Location: LABCELL_X81_Y10_N21
\i_dc_disp_a|s_bcd_tx_result[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[0]~3_combout\ = ( \i_dc_disp_a|v_ones~3_combout\ & ( !\i_dc_disp_a|s_bcd_tx_result[0]~1_combout\ ) ) # ( !\i_dc_disp_a|v_ones~3_combout\ & ( \i_dc_disp_a|s_bcd_tx_result[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[0]~1_combout\,
	dataf => \i_dc_disp_a|ALT_INV_v_ones~3_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[0]~3_combout\);

-- Location: FF_X81_Y10_N23
\i_dc_disp_a|s_bcd_tx_result[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_bcd_tx_result[0]~3_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_dc_disp_a|s_bcd_tx_result[0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_bcd_tx_result[0]~_emulated_q\);

-- Location: LABCELL_X81_Y10_N30
\i_dc_disp_a|s_bcd_tx_result[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[0]~2_combout\ = ( \i_dc_disp_a|s_bcd_tx_result[0]~1_combout\ & ( (!\create_pll:i_reset_ctrl_a|reset_out~q\ & ((\i_dc_disp_a|v_ones~3_combout\))) # (\create_pll:i_reset_ctrl_a|reset_out~q\ & 
-- (!\i_dc_disp_a|s_bcd_tx_result[0]~_emulated_q\)) ) ) # ( !\i_dc_disp_a|s_bcd_tx_result[0]~1_combout\ & ( (!\create_pll:i_reset_ctrl_a|reset_out~q\ & ((\i_dc_disp_a|v_ones~3_combout\))) # (\create_pll:i_reset_ctrl_a|reset_out~q\ & 
-- (\i_dc_disp_a|s_bcd_tx_result[0]~_emulated_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111101010100000111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[0]~_emulated_q\,
	datac => \i_dc_disp_a|ALT_INV_v_ones~3_combout\,
	datad => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	dataf => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[0]~1_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[0]~2_combout\);

-- Location: FF_X81_Y10_N31
\i_dc_disp_a|sequences[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_bcd_tx_result[0]~2_combout\,
	ena => \i_dc_disp_a|sequences[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|sequences[2][0]~q\);

-- Location: LABCELL_X81_Y10_N24
\i_dc_disp_a|s_bcd_tx_result[8]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[8]~5_combout\ = ( \i_dc_disp_a|s_bcd_tx_result[8]~5_combout\ & ( (\create_pll:i_reset_ctrl_a|reset_out~q\) # (\i_dc_disp_a|Equal0~1_combout\) ) ) # ( !\i_dc_disp_a|s_bcd_tx_result[8]~5_combout\ & ( 
-- (\i_dc_disp_a|Equal0~1_combout\ & !\create_pll:i_reset_ctrl_a|reset_out~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_Equal0~1_combout\,
	datad => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	dataf => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[8]~5_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[8]~5_combout\);

-- Location: LABCELL_X81_Y10_N18
\i_dc_disp_a|s_bcd_tx_result[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[8]~7_combout\ = ( \i_dc_disp_a|s_bcd_tx_result[8]~5_combout\ & ( !\i_dc_disp_a|Equal0~1_combout\ ) ) # ( !\i_dc_disp_a|s_bcd_tx_result[8]~5_combout\ & ( \i_dc_disp_a|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_dc_disp_a|ALT_INV_Equal0~1_combout\,
	dataf => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[8]~5_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[8]~7_combout\);

-- Location: FF_X81_Y10_N19
\i_dc_disp_a|s_bcd_tx_result[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_bcd_tx_result[8]~7_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_dc_disp_a|s_bcd_tx_result[0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|s_bcd_tx_result[8]~_emulated_q\);

-- Location: LABCELL_X81_Y10_N27
\i_dc_disp_a|s_bcd_tx_result[8]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|s_bcd_tx_result[8]~6_combout\ = ( \i_dc_disp_a|s_bcd_tx_result[8]~5_combout\ & ( (!\create_pll:i_reset_ctrl_a|reset_out~q\ & (\i_dc_disp_a|Equal0~1_combout\)) # (\create_pll:i_reset_ctrl_a|reset_out~q\ & 
-- ((!\i_dc_disp_a|s_bcd_tx_result[8]~_emulated_q\))) ) ) # ( !\i_dc_disp_a|s_bcd_tx_result[8]~5_combout\ & ( (!\create_pll:i_reset_ctrl_a|reset_out~q\ & (\i_dc_disp_a|Equal0~1_combout\)) # (\create_pll:i_reset_ctrl_a|reset_out~q\ & 
-- ((\i_dc_disp_a|s_bcd_tx_result[8]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101110100011101000111010001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_Equal0~1_combout\,
	datab => \create_pll:i_reset_ctrl_a|ALT_INV_reset_out~q\,
	datac => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[8]~_emulated_q\,
	dataf => \i_dc_disp_a|ALT_INV_s_bcd_tx_result[8]~5_combout\,
	combout => \i_dc_disp_a|s_bcd_tx_result[8]~6_combout\);

-- Location: FF_X81_Y10_N28
\i_dc_disp_a|sequences[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|s_bcd_tx_result[8]~6_combout\,
	ena => \i_dc_disp_a|sequences[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|sequences[0][0]~q\);

-- Location: LABCELL_X80_Y10_N0
\i_dc_disp_a|Mux87~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_dc_disp_a|Mux87~0_combout\ = ( \i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\ & ( \i_dc_disp_a|sequences[0][0]~q\ & ( ((!\i_dc_disp_a|s_tx_cn\(0)) # (\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\)) # (\i_dc_disp_a|sequences[1][0]~q\) ) ) ) # ( 
-- !\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\ & ( \i_dc_disp_a|sequences[0][0]~q\ & ( ((!\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\) # (\i_dc_disp_a|s_tx_cn\(0))) # (\i_dc_disp_a|sequences[2][0]~q\) ) ) ) # ( \i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\ & ( 
-- !\i_dc_disp_a|sequences[0][0]~q\ & ( ((\i_dc_disp_a|sequences[1][0]~q\ & \i_dc_disp_a|s_tx_cn\(0))) # (\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\) ) ) ) # ( !\i_dc_disp_a|s_tx_cn[1]~DUPLICATE_q\ & ( !\i_dc_disp_a|sequences[0][0]~q\ & ( 
-- ((!\i_dc_disp_a|s_tx_cn[2]~DUPLICATE_q\) # (\i_dc_disp_a|s_tx_cn\(0))) # (\i_dc_disp_a|sequences[2][0]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111111111000011110101111111110011111111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_dc_disp_a|ALT_INV_sequences[1][0]~q\,
	datab => \i_dc_disp_a|ALT_INV_sequences[2][0]~q\,
	datac => \i_dc_disp_a|ALT_INV_s_tx_cn[2]~DUPLICATE_q\,
	datad => \i_dc_disp_a|ALT_INV_s_tx_cn\(0),
	datae => \i_dc_disp_a|ALT_INV_s_tx_cn[1]~DUPLICATE_q\,
	dataf => \i_dc_disp_a|ALT_INV_sequences[0][0]~q\,
	combout => \i_dc_disp_a|Mux87~0_combout\);

-- Location: FF_X80_Y10_N1
\i_dc_disp_a|tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_dc_disp_a|Mux87~0_combout\,
	clrn => \create_pll:i_reset_ctrl_a|reset_out~q\,
	ena => \i_dc_disp_a|tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dc_disp_a|tx_data\(0));

-- Location: LABCELL_X80_Y6_N0
\i_serial_uart_a|Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector24~0_combout\ = ( \i_dc_disp_a|tx_data\(0) & ( (!\i_serial_uart_a|tx_state.s_tx_data~q\) # (\i_serial_uart_a|tx_byte_saved\(1)) ) ) # ( !\i_dc_disp_a|tx_data\(0) & ( (\i_serial_uart_a|tx_byte_saved\(1) & 
-- \i_serial_uart_a|tx_state.s_tx_data~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart_a|ALT_INV_tx_byte_saved\(1),
	datab => \i_serial_uart_a|ALT_INV_tx_state.s_tx_data~q\,
	dataf => \i_dc_disp_a|ALT_INV_tx_data\(0),
	combout => \i_serial_uart_a|Selector24~0_combout\);

-- Location: FF_X80_Y6_N2
\i_serial_uart_a|tx_byte_saved[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector24~0_combout\,
	ena => \i_serial_uart_a|tx_byte_saved[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx_byte_saved\(0));

-- Location: LABCELL_X80_Y6_N21
\i_serial_uart_a|Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_serial_uart_a|Selector34~0_combout\ = ( \i_serial_uart_a|tx_state.s_tx_data~q\ & ( ((!\i_serial_uart_a|tx_state.s_idle~q\) # (\i_serial_uart_a|tx_byte_saved\(0))) # (\i_serial_uart_a|tx_state.s_stop_bit~q\) ) ) # ( 
-- !\i_serial_uart_a|tx_state.s_tx_data~q\ & ( (!\i_serial_uart_a|tx_state.s_idle~q\) # (\i_serial_uart_a|tx_state.s_stop_bit~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001111110011111111111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart_a|ALT_INV_tx_state.s_stop_bit~q\,
	datac => \i_serial_uart_a|ALT_INV_tx_state.s_idle~q\,
	datad => \i_serial_uart_a|ALT_INV_tx_byte_saved\(0),
	dataf => \i_serial_uart_a|ALT_INV_tx_state.s_tx_data~q\,
	combout => \i_serial_uart_a|Selector34~0_combout\);

-- Location: DDIOOUTCELL_X68_Y0_N10
\i_serial_uart_a|tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \create_pll:i_pll_a|pll_altera_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \i_serial_uart_a|Selector34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_serial_uart_a|tx~q\);

-- Location: LABCELL_X48_Y25_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
      number_of_fplls => 1);
-- pragma translate_on
END structure;


