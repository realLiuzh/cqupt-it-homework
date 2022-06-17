-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "12/09/2021 10:42:33"

-- 
-- Device: Altera EP3C16Q240C8 Package PQFP240
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	dig_select IS
    PORT (
	dig_04 : OUT std_logic_vector(5 DOWNTO 0);
	q_04 : IN std_logic_vector(2 DOWNTO 0)
	);
END dig_select;

-- Design Ports Information
-- dig_04[5]	=>  Location: PIN_18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_04[4]	=>  Location: PIN_9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_04[3]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_04[2]	=>  Location: PIN_5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_04[1]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_04[0]	=>  Location: PIN_240,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_04[0]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_04[2]	=>  Location: PIN_236,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_04[1]	=>  Location: PIN_19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF dig_select IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dig_04 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_q_04 : std_logic_vector(2 DOWNTO 0);
SIGNAL \dig_04[5]~output_o\ : std_logic;
SIGNAL \dig_04[4]~output_o\ : std_logic;
SIGNAL \dig_04[3]~output_o\ : std_logic;
SIGNAL \dig_04[2]~output_o\ : std_logic;
SIGNAL \dig_04[1]~output_o\ : std_logic;
SIGNAL \dig_04[0]~output_o\ : std_logic;
SIGNAL \q_04[1]~input_o\ : std_logic;
SIGNAL \q_04[0]~input_o\ : std_logic;
SIGNAL \q_04[2]~input_o\ : std_logic;
SIGNAL \inst3|15~0_combout\ : std_logic;
SIGNAL \inst3|15~1_combout\ : std_logic;
SIGNAL \inst3|15~2_combout\ : std_logic;
SIGNAL \inst3|15~3_combout\ : std_logic;
SIGNAL \inst3|15~4_combout\ : std_logic;
SIGNAL \inst3|15~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_15~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_15~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_15~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_15~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_15~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_15~0_combout\ : std_logic;

BEGIN

dig_04 <= ww_dig_04;
ww_q_04 <= q_04;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst3|ALT_INV_15~5_combout\ <= NOT \inst3|15~5_combout\;
\inst3|ALT_INV_15~4_combout\ <= NOT \inst3|15~4_combout\;
\inst3|ALT_INV_15~3_combout\ <= NOT \inst3|15~3_combout\;
\inst3|ALT_INV_15~2_combout\ <= NOT \inst3|15~2_combout\;
\inst3|ALT_INV_15~1_combout\ <= NOT \inst3|15~1_combout\;
\inst3|ALT_INV_15~0_combout\ <= NOT \inst3|15~0_combout\;

-- Location: IOOBUF_X0_Y22_N2
\dig_04[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_15~0_combout\,
	devoe => ww_devoe,
	o => \dig_04[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\dig_04[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_15~1_combout\,
	devoe => ww_devoe,
	o => \dig_04[4]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\dig_04[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_15~2_combout\,
	devoe => ww_devoe,
	o => \dig_04[3]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\dig_04[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_15~3_combout\,
	devoe => ww_devoe,
	o => \dig_04[2]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\dig_04[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_15~4_combout\,
	devoe => ww_devoe,
	o => \dig_04[1]~output_o\);

-- Location: IOOBUF_X1_Y29_N30
\dig_04[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_15~5_combout\,
	devoe => ww_devoe,
	o => \dig_04[0]~output_o\);

-- Location: IOIBUF_X0_Y22_N15
\q_04[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_04(1),
	o => \q_04[1]~input_o\);

-- Location: IOIBUF_X0_Y10_N8
\q_04[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_04(0),
	o => \q_04[0]~input_o\);

-- Location: IOIBUF_X1_Y29_N1
\q_04[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_04(2),
	o => \q_04[2]~input_o\);

-- Location: LCCOMB_X1_Y25_N24
\inst3|15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|15~0_combout\ = (!\q_04[1]~input_o\ & (\q_04[0]~input_o\ & \q_04[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q_04[1]~input_o\,
	datac => \q_04[0]~input_o\,
	datad => \q_04[2]~input_o\,
	combout => \inst3|15~0_combout\);

-- Location: LCCOMB_X1_Y25_N10
\inst3|15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|15~1_combout\ = (!\q_04[1]~input_o\ & (!\q_04[0]~input_o\ & \q_04[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q_04[1]~input_o\,
	datac => \q_04[0]~input_o\,
	datad => \q_04[2]~input_o\,
	combout => \inst3|15~1_combout\);

-- Location: LCCOMB_X1_Y25_N20
\inst3|15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|15~2_combout\ = (\q_04[1]~input_o\ & (\q_04[0]~input_o\ & !\q_04[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q_04[1]~input_o\,
	datac => \q_04[0]~input_o\,
	datad => \q_04[2]~input_o\,
	combout => \inst3|15~2_combout\);

-- Location: LCCOMB_X1_Y25_N14
\inst3|15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|15~3_combout\ = (\q_04[1]~input_o\ & (!\q_04[0]~input_o\ & !\q_04[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q_04[1]~input_o\,
	datac => \q_04[0]~input_o\,
	datad => \q_04[2]~input_o\,
	combout => \inst3|15~3_combout\);

-- Location: LCCOMB_X1_Y25_N0
\inst3|15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|15~4_combout\ = (!\q_04[1]~input_o\ & (\q_04[0]~input_o\ & !\q_04[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q_04[1]~input_o\,
	datac => \q_04[0]~input_o\,
	datad => \q_04[2]~input_o\,
	combout => \inst3|15~4_combout\);

-- Location: LCCOMB_X1_Y25_N2
\inst3|15~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|15~5_combout\ = (!\q_04[1]~input_o\ & (!\q_04[0]~input_o\ & !\q_04[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q_04[1]~input_o\,
	datac => \q_04[0]~input_o\,
	datad => \q_04[2]~input_o\,
	combout => \inst3|15~5_combout\);

ww_dig_04(5) <= \dig_04[5]~output_o\;

ww_dig_04(4) <= \dig_04[4]~output_o\;

ww_dig_04(3) <= \dig_04[3]~output_o\;

ww_dig_04(2) <= \dig_04[2]~output_o\;

ww_dig_04(1) <= \dig_04[1]~output_o\;

ww_dig_04(0) <= \dig_04[0]~output_o\;
END structure;


