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

-- DATE "12/03/2021 09:27:48"

-- 
-- Device: Altera EP3C16Q240C8 Package PQFP240
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counter6 IS
    PORT (
	q : OUT std_logic_vector(3 DOWNTO 0);
	cp : IN std_logic
	);
END counter6;

-- Design Ports Information
-- q[3]	=>  Location: PIN_235,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_234,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_233,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_230,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cp	=>  Location: PIN_232,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cp : std_logic;
SIGNAL \inst1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \cp~input_o\ : std_logic;
SIGNAL \inst98651|7~0_combout\ : std_logic;
SIGNAL \inst98651|7~feeder_combout\ : std_logic;
SIGNAL \inst98651|20~combout\ : std_logic;
SIGNAL \inst98651|6~0_combout\ : std_logic;
SIGNAL \inst98651|6~q\ : std_logic;
SIGNAL \inst98651|5~0_combout\ : std_logic;
SIGNAL \inst98651|5~q\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
SIGNAL \inst1~clkctrl_outclk\ : std_logic;
SIGNAL \inst98651|7~q\ : std_logic;
SIGNAL \inst98651|3~0_combout\ : std_logic;
SIGNAL \inst98651|3~q\ : std_logic;
SIGNAL \ALT_INV_inst1~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_cp~input_o\ : std_logic;
SIGNAL \inst98651|ALT_INV_7~q\ : std_logic;
SIGNAL \inst98651|ALT_INV_6~q\ : std_logic;

BEGIN

q <= ww_q;
ww_cp <= cp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1~combout\);
\ALT_INV_inst1~clkctrl_outclk\ <= NOT \inst1~clkctrl_outclk\;
\ALT_INV_cp~input_o\ <= NOT \cp~input_o\;
\inst98651|ALT_INV_7~q\ <= NOT \inst98651|7~q\;
\inst98651|ALT_INV_6~q\ <= NOT \inst98651|6~q\;

-- Location: IOOBUF_X3_Y29_N16
\q[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst98651|3~q\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X3_Y29_N2
\q[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst98651|5~q\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X5_Y29_N23
\q[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst98651|6~q\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X7_Y29_N23
\q[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst98651|7~q\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOIBUF_X5_Y29_N1
\cp~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cp,
	o => \cp~input_o\);

-- Location: LCCOMB_X4_Y28_N22
\inst98651|7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst98651|7~0_combout\ = !\inst98651|7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst98651|7~q\,
	combout => \inst98651|7~0_combout\);

-- Location: LCCOMB_X4_Y28_N30
\inst98651|7~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst98651|7~feeder_combout\ = \inst98651|7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst98651|7~0_combout\,
	combout => \inst98651|7~feeder_combout\);

-- Location: LCCOMB_X4_Y28_N26
\inst98651|20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst98651|20~combout\ = LCELL((\inst98651|3~q\) # (!\inst98651|7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst98651|7~q\,
	datab => \inst98651|3~q\,
	combout => \inst98651|20~combout\);

-- Location: LCCOMB_X4_Y28_N24
\inst98651|6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst98651|6~0_combout\ = !\inst98651|6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst98651|6~q\,
	combout => \inst98651|6~0_combout\);

-- Location: FF_X4_Y28_N27
\inst98651|6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst98651|20~combout\,
	asdata => \inst98651|6~0_combout\,
	clrn => \ALT_INV_inst1~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst98651|6~q\);

-- Location: LCCOMB_X5_Y28_N18
\inst98651|5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst98651|5~0_combout\ = !\inst98651|5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst98651|5~q\,
	combout => \inst98651|5~0_combout\);

-- Location: FF_X5_Y28_N19
\inst98651|5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst98651|ALT_INV_6~q\,
	d => \inst98651|5~0_combout\,
	clrn => \ALT_INV_inst1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst98651|5~q\);

-- Location: LCCOMB_X4_Y28_N28
inst1 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1~combout\ = (\inst98651|6~q\ & \inst98651|5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst98651|6~q\,
	datad => \inst98651|5~q\,
	combout => \inst1~combout\);

-- Location: CLKCTRL_G0
\inst1~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1~clkctrl_outclk\);

-- Location: FF_X4_Y28_N31
\inst98651|7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cp~input_o\,
	d => \inst98651|7~feeder_combout\,
	clrn => \ALT_INV_inst1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst98651|7~q\);

-- Location: LCCOMB_X5_Y28_N8
\inst98651|3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst98651|3~0_combout\ = (\inst98651|6~q\ & (!\inst98651|3~q\ & \inst98651|5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst98651|6~q\,
	datac => \inst98651|3~q\,
	datad => \inst98651|5~q\,
	combout => \inst98651|3~0_combout\);

-- Location: FF_X5_Y28_N9
\inst98651|3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst98651|ALT_INV_7~q\,
	d => \inst98651|3~0_combout\,
	clrn => \ALT_INV_inst1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst98651|3~q\);

ww_q(3) <= \q[3]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(0) <= \q[0]~output_o\;
END structure;


