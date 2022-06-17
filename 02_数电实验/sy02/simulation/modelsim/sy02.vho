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

-- DATE "12/02/2021 11:22:16"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sy02 IS
    PORT (
	clk_1hz : OUT std_logic;
	clk_50khz : IN std_logic
	);
END sy02;

-- Design Ports Information
-- clk_1hz	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50khz	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sy02 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_1hz : std_logic;
SIGNAL ww_clk_50khz : std_logic;
SIGNAL \clk_1hz~output_o\ : std_logic;
SIGNAL \clk_50khz~input_o\ : std_logic;
SIGNAL \inst|inst|7~0_combout\ : std_logic;
SIGNAL \inst|inst|7~feeder_combout\ : std_logic;
SIGNAL \inst|inst|7~q\ : std_logic;
SIGNAL \inst|inst|20~combout\ : std_logic;
SIGNAL \inst|inst|6~0_combout\ : std_logic;
SIGNAL \inst|inst|6~q\ : std_logic;
SIGNAL \inst|inst|5~0_combout\ : std_logic;
SIGNAL \inst|inst|5~q\ : std_logic;
SIGNAL \inst|inst|3~0_combout\ : std_logic;
SIGNAL \inst|inst|3~feeder_combout\ : std_logic;
SIGNAL \inst|inst|3~q\ : std_logic;
SIGNAL \inst|inst|34~0_combout\ : std_logic;
SIGNAL \inst|inst|34~feeder_combout\ : std_logic;
SIGNAL \inst|inst|34~q\ : std_logic;
SIGNAL \inst|inst|29~combout\ : std_logic;
SIGNAL \inst|inst|33~0_combout\ : std_logic;
SIGNAL \inst|inst|33~feeder_combout\ : std_logic;
SIGNAL \inst|inst|33~q\ : std_logic;
SIGNAL \inst|inst|32~0_combout\ : std_logic;
SIGNAL \inst|inst|32~q\ : std_logic;
SIGNAL \inst|inst|31~0_combout\ : std_logic;
SIGNAL \inst|inst|31~feeder_combout\ : std_logic;
SIGNAL \inst|inst|31~q\ : std_logic;
SIGNAL \inst1|inst|7~0_combout\ : std_logic;
SIGNAL \inst1|inst|7~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|7~q\ : std_logic;
SIGNAL \inst1|inst|20~combout\ : std_logic;
SIGNAL \inst1|inst|6~0_combout\ : std_logic;
SIGNAL \inst1|inst|6~q\ : std_logic;
SIGNAL \inst1|inst|5~0_combout\ : std_logic;
SIGNAL \inst1|inst|5~q\ : std_logic;
SIGNAL \inst1|inst|3~0_combout\ : std_logic;
SIGNAL \inst1|inst|3~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|3~q\ : std_logic;
SIGNAL \inst1|inst|34~0_combout\ : std_logic;
SIGNAL \inst1|inst|34~q\ : std_logic;
SIGNAL \inst1|inst|29~combout\ : std_logic;
SIGNAL \inst1|inst|33~0_combout\ : std_logic;
SIGNAL \inst1|inst|33~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|33~q\ : std_logic;
SIGNAL \inst1|inst|32~0_combout\ : std_logic;
SIGNAL \inst1|inst|32~q\ : std_logic;
SIGNAL \inst1|inst|31~0_combout\ : std_logic;
SIGNAL \inst1|inst|31~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|31~q\ : std_logic;
SIGNAL \inst3|20~combout\ : std_logic;
SIGNAL \inst3|6~0_combout\ : std_logic;
SIGNAL \inst3|6~q\ : std_logic;
SIGNAL \inst3|5~0_combout\ : std_logic;
SIGNAL \inst3|5~q\ : std_logic;
SIGNAL \inst3|3~0_combout\ : std_logic;
SIGNAL \inst3|3~feeder_combout\ : std_logic;
SIGNAL \inst3|3~q\ : std_logic;
SIGNAL \inst3|7~0_combout\ : std_logic;
SIGNAL \inst3|7~feeder_combout\ : std_logic;
SIGNAL \inst3|7~q\ : std_logic;
SIGNAL \inst3|29~combout\ : std_logic;
SIGNAL \inst3|33~0_combout\ : std_logic;
SIGNAL \inst3|33~q\ : std_logic;
SIGNAL \inst3|32~0_combout\ : std_logic;
SIGNAL \inst3|32~q\ : std_logic;
SIGNAL \inst3|31~0_combout\ : std_logic;
SIGNAL \inst3|31~feeder_combout\ : std_logic;
SIGNAL \inst3|31~q\ : std_logic;
SIGNAL \inst2|inst|7~0_combout\ : std_logic;
SIGNAL \inst2|inst|7~q\ : std_logic;
SIGNAL \inst2|inst|20~combout\ : std_logic;
SIGNAL \inst2|inst|6~0_combout\ : std_logic;
SIGNAL \inst2|inst|6~q\ : std_logic;
SIGNAL \inst2|inst|5~0_combout\ : std_logic;
SIGNAL \inst2|inst|5~q\ : std_logic;
SIGNAL \inst2|inst|3~0_combout\ : std_logic;
SIGNAL \inst2|inst|3~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|3~q\ : std_logic;
SIGNAL \inst2|inst|34~0_combout\ : std_logic;
SIGNAL \inst2|inst|34~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|34~q\ : std_logic;
SIGNAL \inst2|inst|29~combout\ : std_logic;
SIGNAL \inst2|inst|33~0_combout\ : std_logic;
SIGNAL \inst2|inst|33~q\ : std_logic;
SIGNAL \inst2|inst|32~0_combout\ : std_logic;
SIGNAL \inst2|inst|32~q\ : std_logic;
SIGNAL \inst2|inst|31~0_combout\ : std_logic;
SIGNAL \inst2|inst|31~q\ : std_logic;
SIGNAL \inst|inst|ALT_INV_7~q\ : std_logic;
SIGNAL \inst|inst|ALT_INV_6~q\ : std_logic;
SIGNAL \inst|inst|ALT_INV_3~q\ : std_logic;
SIGNAL \inst|inst|ALT_INV_34~q\ : std_logic;
SIGNAL \inst|inst|ALT_INV_33~q\ : std_logic;
SIGNAL \inst|inst|ALT_INV_31~q\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_7~q\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_6~q\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_3~q\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_34~q\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_33~q\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_31~q\ : std_logic;
SIGNAL \inst3|ALT_INV_6~q\ : std_logic;
SIGNAL \inst3|ALT_INV_3~q\ : std_logic;
SIGNAL \inst3|ALT_INV_7~q\ : std_logic;
SIGNAL \inst3|ALT_INV_33~q\ : std_logic;
SIGNAL \inst3|ALT_INV_31~q\ : std_logic;
SIGNAL \inst2|inst|ALT_INV_7~q\ : std_logic;
SIGNAL \inst2|inst|ALT_INV_6~q\ : std_logic;
SIGNAL \inst2|inst|ALT_INV_3~q\ : std_logic;
SIGNAL \inst2|inst|ALT_INV_34~q\ : std_logic;
SIGNAL \inst2|inst|ALT_INV_33~q\ : std_logic;
SIGNAL \ALT_INV_clk_50khz~input_o\ : std_logic;

BEGIN

clk_1hz <= ww_clk_1hz;
ww_clk_50khz <= clk_50khz;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|inst|ALT_INV_7~q\ <= NOT \inst|inst|7~q\;
\inst|inst|ALT_INV_6~q\ <= NOT \inst|inst|6~q\;
\inst|inst|ALT_INV_3~q\ <= NOT \inst|inst|3~q\;
\inst|inst|ALT_INV_34~q\ <= NOT \inst|inst|34~q\;
\inst|inst|ALT_INV_33~q\ <= NOT \inst|inst|33~q\;
\inst|inst|ALT_INV_31~q\ <= NOT \inst|inst|31~q\;
\inst1|inst|ALT_INV_7~q\ <= NOT \inst1|inst|7~q\;
\inst1|inst|ALT_INV_6~q\ <= NOT \inst1|inst|6~q\;
\inst1|inst|ALT_INV_3~q\ <= NOT \inst1|inst|3~q\;
\inst1|inst|ALT_INV_34~q\ <= NOT \inst1|inst|34~q\;
\inst1|inst|ALT_INV_33~q\ <= NOT \inst1|inst|33~q\;
\inst1|inst|ALT_INV_31~q\ <= NOT \inst1|inst|31~q\;
\inst3|ALT_INV_6~q\ <= NOT \inst3|6~q\;
\inst3|ALT_INV_3~q\ <= NOT \inst3|3~q\;
\inst3|ALT_INV_7~q\ <= NOT \inst3|7~q\;
\inst3|ALT_INV_33~q\ <= NOT \inst3|33~q\;
\inst3|ALT_INV_31~q\ <= NOT \inst3|31~q\;
\inst2|inst|ALT_INV_7~q\ <= NOT \inst2|inst|7~q\;
\inst2|inst|ALT_INV_6~q\ <= NOT \inst2|inst|6~q\;
\inst2|inst|ALT_INV_3~q\ <= NOT \inst2|inst|3~q\;
\inst2|inst|ALT_INV_34~q\ <= NOT \inst2|inst|34~q\;
\inst2|inst|ALT_INV_33~q\ <= NOT \inst2|inst|33~q\;
\ALT_INV_clk_50khz~input_o\ <= NOT \clk_50khz~input_o\;

-- Location: IOOBUF_X23_Y0_N9
\clk_1hz~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|31~q\,
	devoe => ww_devoe,
	o => \clk_1hz~output_o\);

-- Location: IOIBUF_X16_Y24_N8
\clk_50khz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50khz,
	o => \clk_50khz~input_o\);

-- Location: LCCOMB_X16_Y23_N30
\inst|inst|7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|7~0_combout\ = !\inst|inst|7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|7~q\,
	combout => \inst|inst|7~0_combout\);

-- Location: LCCOMB_X16_Y23_N6
\inst|inst|7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|7~feeder_combout\ = \inst|inst|7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|7~0_combout\,
	combout => \inst|inst|7~feeder_combout\);

-- Location: FF_X16_Y23_N7
\inst|inst|7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50khz~input_o\,
	d => \inst|inst|7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|7~q\);

-- Location: LCCOMB_X16_Y23_N28
\inst|inst|20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|20~combout\ = LCELL((\inst|inst|3~q\) # (!\inst|inst|7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|3~q\,
	datad => \inst|inst|7~q\,
	combout => \inst|inst|20~combout\);

-- Location: LCCOMB_X16_Y23_N16
\inst|inst|6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|6~0_combout\ = !\inst|inst|6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|6~q\,
	combout => \inst|inst|6~0_combout\);

-- Location: FF_X16_Y23_N29
\inst|inst|6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|20~combout\,
	asdata => \inst|inst|6~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|6~q\);

-- Location: LCCOMB_X17_Y23_N20
\inst|inst|5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|5~0_combout\ = !\inst|inst|5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|5~q\,
	combout => \inst|inst|5~0_combout\);

-- Location: FF_X17_Y23_N21
\inst|inst|5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|ALT_INV_6~q\,
	d => \inst|inst|5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|5~q\);

-- Location: LCCOMB_X17_Y23_N6
\inst|inst|3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|3~0_combout\ = (\inst|inst|6~q\ & (!\inst|inst|3~q\ & \inst|inst|5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|6~q\,
	datac => \inst|inst|3~q\,
	datad => \inst|inst|5~q\,
	combout => \inst|inst|3~0_combout\);

-- Location: LCCOMB_X17_Y23_N18
\inst|inst|3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|3~feeder_combout\ = \inst|inst|3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|3~0_combout\,
	combout => \inst|inst|3~feeder_combout\);

-- Location: FF_X17_Y23_N19
\inst|inst|3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|ALT_INV_7~q\,
	d => \inst|inst|3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|3~q\);

-- Location: LCCOMB_X21_Y21_N28
\inst|inst|34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|34~0_combout\ = !\inst|inst|34~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|34~q\,
	combout => \inst|inst|34~0_combout\);

-- Location: LCCOMB_X21_Y21_N6
\inst|inst|34~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|34~feeder_combout\ = \inst|inst|34~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|34~0_combout\,
	combout => \inst|inst|34~feeder_combout\);

-- Location: FF_X21_Y21_N7
\inst|inst|34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|ALT_INV_3~q\,
	d => \inst|inst|34~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|34~q\);

-- Location: LCCOMB_X22_Y21_N6
\inst|inst|29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|29~combout\ = LCELL((\inst|inst|31~q\) # (!\inst|inst|34~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|34~q\,
	datad => \inst|inst|31~q\,
	combout => \inst|inst|29~combout\);

-- Location: LCCOMB_X23_Y21_N28
\inst|inst|33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|33~0_combout\ = !\inst|inst|33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|33~q\,
	combout => \inst|inst|33~0_combout\);

-- Location: LCCOMB_X23_Y21_N24
\inst|inst|33~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|33~feeder_combout\ = \inst|inst|33~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|33~0_combout\,
	combout => \inst|inst|33~feeder_combout\);

-- Location: FF_X23_Y21_N25
\inst|inst|33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|29~combout\,
	d => \inst|inst|33~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|33~q\);

-- Location: LCCOMB_X22_Y21_N16
\inst|inst|32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|32~0_combout\ = !\inst|inst|32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|32~q\,
	combout => \inst|inst|32~0_combout\);

-- Location: FF_X22_Y21_N17
\inst|inst|32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|ALT_INV_33~q\,
	d => \inst|inst|32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|32~q\);

-- Location: LCCOMB_X22_Y21_N12
\inst|inst|31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|31~0_combout\ = (!\inst|inst|31~q\ & (\inst|inst|33~q\ & \inst|inst|32~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|31~q\,
	datac => \inst|inst|33~q\,
	datad => \inst|inst|32~q\,
	combout => \inst|inst|31~0_combout\);

-- Location: LCCOMB_X22_Y21_N30
\inst|inst|31~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|31~feeder_combout\ = \inst|inst|31~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|31~0_combout\,
	combout => \inst|inst|31~feeder_combout\);

-- Location: FF_X22_Y21_N31
\inst|inst|31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|ALT_INV_34~q\,
	d => \inst|inst|31~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|31~q\);

-- Location: LCCOMB_X22_Y20_N0
\inst1|inst|7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|7~0_combout\ = !\inst1|inst|7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|7~q\,
	combout => \inst1|inst|7~0_combout\);

-- Location: LCCOMB_X22_Y20_N6
\inst1|inst|7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|7~feeder_combout\ = \inst1|inst|7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|7~0_combout\,
	combout => \inst1|inst|7~feeder_combout\);

-- Location: FF_X22_Y20_N7
\inst1|inst|7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|ALT_INV_31~q\,
	d => \inst1|inst|7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|7~q\);

-- Location: LCCOMB_X22_Y20_N14
\inst1|inst|20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|20~combout\ = LCELL((\inst1|inst|3~q\) # (!\inst1|inst|7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|7~q\,
	datad => \inst1|inst|3~q\,
	combout => \inst1|inst|20~combout\);

-- Location: LCCOMB_X22_Y20_N16
\inst1|inst|6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|6~0_combout\ = !\inst1|inst|6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst|6~q\,
	combout => \inst1|inst|6~0_combout\);

-- Location: FF_X22_Y20_N15
\inst1|inst|6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst|20~combout\,
	asdata => \inst1|inst|6~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|6~q\);

-- Location: LCCOMB_X23_Y20_N16
\inst1|inst|5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|5~0_combout\ = !\inst1|inst|5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst|5~q\,
	combout => \inst1|inst|5~0_combout\);

-- Location: FF_X23_Y20_N17
\inst1|inst|5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst|ALT_INV_6~q\,
	d => \inst1|inst|5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|5~q\);

-- Location: LCCOMB_X23_Y20_N2
\inst1|inst|3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|3~0_combout\ = (!\inst1|inst|3~q\ & (\inst1|inst|6~q\ & \inst1|inst|5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|3~q\,
	datac => \inst1|inst|6~q\,
	datad => \inst1|inst|5~q\,
	combout => \inst1|inst|3~0_combout\);

-- Location: LCCOMB_X23_Y20_N18
\inst1|inst|3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|3~feeder_combout\ = \inst1|inst|3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst|3~0_combout\,
	combout => \inst1|inst|3~feeder_combout\);

-- Location: FF_X23_Y20_N19
\inst1|inst|3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst|ALT_INV_7~q\,
	d => \inst1|inst|3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|3~q\);

-- Location: LCCOMB_X22_Y19_N4
\inst1|inst|34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|34~0_combout\ = !\inst1|inst|34~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst|34~q\,
	combout => \inst1|inst|34~0_combout\);

-- Location: FF_X22_Y19_N17
\inst1|inst|34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst|ALT_INV_3~q\,
	asdata => \inst1|inst|34~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|34~q\);

-- Location: LCCOMB_X22_Y19_N6
\inst1|inst|29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|29~combout\ = LCELL((\inst1|inst|31~q\) # (!\inst1|inst|34~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst|31~q\,
	datad => \inst1|inst|34~q\,
	combout => \inst1|inst|29~combout\);

-- Location: LCCOMB_X23_Y19_N24
\inst1|inst|33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|33~0_combout\ = !\inst1|inst|33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|33~q\,
	combout => \inst1|inst|33~0_combout\);

-- Location: LCCOMB_X23_Y19_N20
\inst1|inst|33~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|33~feeder_combout\ = \inst1|inst|33~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|33~0_combout\,
	combout => \inst1|inst|33~feeder_combout\);

-- Location: FF_X23_Y19_N21
\inst1|inst|33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst|29~combout\,
	d => \inst1|inst|33~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|33~q\);

-- Location: LCCOMB_X23_Y19_N14
\inst1|inst|32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|32~0_combout\ = !\inst1|inst|32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst|32~q\,
	combout => \inst1|inst|32~0_combout\);

-- Location: FF_X23_Y19_N15
\inst1|inst|32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst|ALT_INV_33~q\,
	d => \inst1|inst|32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|32~q\);

-- Location: LCCOMB_X24_Y19_N28
\inst1|inst|31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|31~0_combout\ = (!\inst1|inst|31~q\ & (\inst1|inst|33~q\ & \inst1|inst|32~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|31~q\,
	datab => \inst1|inst|33~q\,
	datad => \inst1|inst|32~q\,
	combout => \inst1|inst|31~0_combout\);

-- Location: LCCOMB_X24_Y19_N24
\inst1|inst|31~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|31~feeder_combout\ = \inst1|inst|31~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst|31~0_combout\,
	combout => \inst1|inst|31~feeder_combout\);

-- Location: FF_X24_Y19_N25
\inst1|inst|31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst|ALT_INV_34~q\,
	d => \inst1|inst|31~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|31~q\);

-- Location: LCCOMB_X24_Y19_N6
\inst3|20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|20~combout\ = LCELL((\inst3|3~q\) # (!\inst1|inst|31~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|3~q\,
	datad => \inst1|inst|31~q\,
	combout => \inst3|20~combout\);

-- Location: LCCOMB_X25_Y19_N4
\inst3|6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|6~0_combout\ = !\inst3|6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|6~q\,
	combout => \inst3|6~0_combout\);

-- Location: FF_X25_Y19_N17
\inst3|6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|20~combout\,
	asdata => \inst3|6~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|6~q\);

-- Location: LCCOMB_X25_Y19_N2
\inst3|5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|5~0_combout\ = !\inst3|5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|5~q\,
	combout => \inst3|5~0_combout\);

-- Location: FF_X25_Y19_N3
\inst3|5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_6~q\,
	d => \inst3|5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|5~q\);

-- Location: LCCOMB_X24_Y19_N16
\inst3|3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|3~0_combout\ = (!\inst3|3~q\ & (\inst3|6~q\ & \inst3|5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|3~q\,
	datac => \inst3|6~q\,
	datad => \inst3|5~q\,
	combout => \inst3|3~0_combout\);

-- Location: LCCOMB_X24_Y19_N30
\inst3|3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|3~feeder_combout\ = \inst3|3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|3~0_combout\,
	combout => \inst3|3~feeder_combout\);

-- Location: FF_X24_Y19_N31
\inst3|3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst|ALT_INV_31~q\,
	d => \inst3|3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|3~q\);

-- Location: LCCOMB_X24_Y18_N6
\inst3|7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|7~0_combout\ = !\inst3|7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|7~q\,
	combout => \inst3|7~0_combout\);

-- Location: LCCOMB_X24_Y18_N10
\inst3|7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|7~feeder_combout\ = \inst3|7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|7~0_combout\,
	combout => \inst3|7~feeder_combout\);

-- Location: FF_X24_Y18_N11
\inst3|7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_3~q\,
	d => \inst3|7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|7~q\);

-- Location: LCCOMB_X24_Y18_N14
\inst3|29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|29~combout\ = LCELL((\inst3|31~q\) # (!\inst3|7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|31~q\,
	datad => \inst3|7~q\,
	combout => \inst3|29~combout\);

-- Location: LCCOMB_X24_Y18_N16
\inst3|33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|33~0_combout\ = !\inst3|33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|33~q\,
	combout => \inst3|33~0_combout\);

-- Location: FF_X24_Y18_N15
\inst3|33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|29~combout\,
	asdata => \inst3|33~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|33~q\);

-- Location: LCCOMB_X23_Y18_N28
\inst3|32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|32~0_combout\ = !\inst3|32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|32~q\,
	combout => \inst3|32~0_combout\);

-- Location: FF_X23_Y18_N29
\inst3|32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_33~q\,
	d => \inst3|32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|32~q\);

-- Location: LCCOMB_X23_Y18_N24
\inst3|31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|31~0_combout\ = (\inst3|33~q\ & (!\inst3|31~q\ & \inst3|32~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|33~q\,
	datac => \inst3|31~q\,
	datad => \inst3|32~q\,
	combout => \inst3|31~0_combout\);

-- Location: LCCOMB_X23_Y18_N6
\inst3|31~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|31~feeder_combout\ = \inst3|31~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|31~0_combout\,
	combout => \inst3|31~feeder_combout\);

-- Location: FF_X23_Y18_N7
\inst3|31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_7~q\,
	d => \inst3|31~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|31~q\);

-- Location: LCCOMB_X24_Y14_N16
\inst2|inst|7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|7~0_combout\ = !\inst2|inst|7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|7~q\,
	combout => \inst2|inst|7~0_combout\);

-- Location: FF_X24_Y14_N7
\inst2|inst|7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_31~q\,
	asdata => \inst2|inst|7~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|7~q\);

-- Location: LCCOMB_X25_Y14_N30
\inst2|inst|20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|20~combout\ = LCELL((\inst2|inst|3~q\) # (!\inst2|inst|7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|7~q\,
	datad => \inst2|inst|3~q\,
	combout => \inst2|inst|20~combout\);

-- Location: LCCOMB_X25_Y14_N16
\inst2|inst|6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|6~0_combout\ = !\inst2|inst|6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|6~q\,
	combout => \inst2|inst|6~0_combout\);

-- Location: FF_X25_Y14_N31
\inst2|inst|6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst|20~combout\,
	asdata => \inst2|inst|6~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|6~q\);

-- Location: LCCOMB_X24_Y14_N14
\inst2|inst|5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|5~0_combout\ = !\inst2|inst|5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|5~q\,
	combout => \inst2|inst|5~0_combout\);

-- Location: FF_X24_Y14_N15
\inst2|inst|5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst|ALT_INV_6~q\,
	d => \inst2|inst|5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|5~q\);

-- Location: LCCOMB_X25_Y14_N6
\inst2|inst|3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|3~0_combout\ = (!\inst2|inst|3~q\ & (\inst2|inst|6~q\ & \inst2|inst|5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|3~q\,
	datab => \inst2|inst|6~q\,
	datad => \inst2|inst|5~q\,
	combout => \inst2|inst|3~0_combout\);

-- Location: LCCOMB_X25_Y14_N28
\inst2|inst|3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|3~feeder_combout\ = \inst2|inst|3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|3~0_combout\,
	combout => \inst2|inst|3~feeder_combout\);

-- Location: FF_X25_Y14_N29
\inst2|inst|3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst|ALT_INV_7~q\,
	d => \inst2|inst|3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|3~q\);

-- Location: LCCOMB_X25_Y16_N20
\inst2|inst|34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|34~0_combout\ = !\inst2|inst|34~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|34~q\,
	combout => \inst2|inst|34~0_combout\);

-- Location: LCCOMB_X25_Y16_N30
\inst2|inst|34~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|34~feeder_combout\ = \inst2|inst|34~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|34~0_combout\,
	combout => \inst2|inst|34~feeder_combout\);

-- Location: FF_X25_Y16_N31
\inst2|inst|34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst|ALT_INV_3~q\,
	d => \inst2|inst|34~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|34~q\);

-- Location: LCCOMB_X25_Y16_N10
\inst2|inst|29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|29~combout\ = LCELL((\inst2|inst|31~q\) # (!\inst2|inst|34~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|34~q\,
	datab => \inst2|inst|31~q\,
	combout => \inst2|inst|29~combout\);

-- Location: LCCOMB_X25_Y16_N16
\inst2|inst|33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|33~0_combout\ = !\inst2|inst|33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|33~q\,
	combout => \inst2|inst|33~0_combout\);

-- Location: FF_X25_Y16_N11
\inst2|inst|33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst|29~combout\,
	asdata => \inst2|inst|33~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|33~q\);

-- Location: LCCOMB_X24_Y16_N16
\inst2|inst|32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|32~0_combout\ = !\inst2|inst|32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|32~q\,
	combout => \inst2|inst|32~0_combout\);

-- Location: FF_X24_Y16_N17
\inst2|inst|32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst|ALT_INV_33~q\,
	d => \inst2|inst|32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|32~q\);

-- Location: LCCOMB_X24_Y16_N6
\inst2|inst|31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|31~0_combout\ = (\inst2|inst|33~q\ & (!\inst2|inst|31~q\ & \inst2|inst|32~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|33~q\,
	datac => \inst2|inst|31~q\,
	datad => \inst2|inst|32~q\,
	combout => \inst2|inst|31~0_combout\);

-- Location: FF_X24_Y16_N7
\inst2|inst|31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst|ALT_INV_34~q\,
	d => \inst2|inst|31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|31~q\);

ww_clk_1hz <= \clk_1hz~output_o\;
END structure;


