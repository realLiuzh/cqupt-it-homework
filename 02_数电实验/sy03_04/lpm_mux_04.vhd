-- megafunction wizard: %LPM_MUX%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_MUX 

-- ============================================================
-- File Name: lpm_mux_04.vhd
-- Megafunction Name(s):
-- 			LPM_MUX
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 13.1.0 Build 162 10/23/2013 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2013 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.lpm_components.all;

ENTITY lpm_mux_04 IS
	PORT
	(
		data0x		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		data1x		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		data2x		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		data3x		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		data4x		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		data5x		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		sel		: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
END lpm_mux_04;


ARCHITECTURE SYN OF lpm_mux_04 IS

--	type STD_LOGIC_2D is array (NATURAL RANGE <>, NATURAL RANGE <>) of STD_LOGIC;

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL sub_wire2	: STD_LOGIC_2D (5 DOWNTO 0, 3 DOWNTO 0);
	SIGNAL sub_wire3	: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL sub_wire4	: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL sub_wire5	: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL sub_wire6	: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL sub_wire7	: STD_LOGIC_VECTOR (3 DOWNTO 0);

BEGIN
	sub_wire7    <= data0x(3 DOWNTO 0);
	sub_wire6    <= data1x(3 DOWNTO 0);
	sub_wire5    <= data2x(3 DOWNTO 0);
	sub_wire4    <= data3x(3 DOWNTO 0);
	sub_wire3    <= data4x(3 DOWNTO 0);
	result    <= sub_wire0(3 DOWNTO 0);
	sub_wire1    <= data5x(3 DOWNTO 0);
	sub_wire2(5, 0)    <= sub_wire1(0);
	sub_wire2(5, 1)    <= sub_wire1(1);
	sub_wire2(5, 2)    <= sub_wire1(2);
	sub_wire2(5, 3)    <= sub_wire1(3);
	sub_wire2(4, 0)    <= sub_wire3(0);
	sub_wire2(4, 1)    <= sub_wire3(1);
	sub_wire2(4, 2)    <= sub_wire3(2);
	sub_wire2(4, 3)    <= sub_wire3(3);
	sub_wire2(3, 0)    <= sub_wire4(0);
	sub_wire2(3, 1)    <= sub_wire4(1);
	sub_wire2(3, 2)    <= sub_wire4(2);
	sub_wire2(3, 3)    <= sub_wire4(3);
	sub_wire2(2, 0)    <= sub_wire5(0);
	sub_wire2(2, 1)    <= sub_wire5(1);
	sub_wire2(2, 2)    <= sub_wire5(2);
	sub_wire2(2, 3)    <= sub_wire5(3);
	sub_wire2(1, 0)    <= sub_wire6(0);
	sub_wire2(1, 1)    <= sub_wire6(1);
	sub_wire2(1, 2)    <= sub_wire6(2);
	sub_wire2(1, 3)    <= sub_wire6(3);
	sub_wire2(0, 0)    <= sub_wire7(0);
	sub_wire2(0, 1)    <= sub_wire7(1);
	sub_wire2(0, 2)    <= sub_wire7(2);
	sub_wire2(0, 3)    <= sub_wire7(3);

	LPM_MUX_component : LPM_MUX
	GENERIC MAP (
		lpm_size => 6,
		lpm_type => "LPM_MUX",
		lpm_width => 4,
		lpm_widths => 3
	)
	PORT MAP (
		data => sub_wire2,
		sel => sel,
		result => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone III"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_SIZE NUMERIC "6"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MUX"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "4"
-- Retrieval info: CONSTANT: LPM_WIDTHS NUMERIC "3"
-- Retrieval info: USED_PORT: data0x 0 0 4 0 INPUT NODEFVAL "data0x[3..0]"
-- Retrieval info: USED_PORT: data1x 0 0 4 0 INPUT NODEFVAL "data1x[3..0]"
-- Retrieval info: USED_PORT: data2x 0 0 4 0 INPUT NODEFVAL "data2x[3..0]"
-- Retrieval info: USED_PORT: data3x 0 0 4 0 INPUT NODEFVAL "data3x[3..0]"
-- Retrieval info: USED_PORT: data4x 0 0 4 0 INPUT NODEFVAL "data4x[3..0]"
-- Retrieval info: USED_PORT: data5x 0 0 4 0 INPUT NODEFVAL "data5x[3..0]"
-- Retrieval info: USED_PORT: result 0 0 4 0 OUTPUT NODEFVAL "result[3..0]"
-- Retrieval info: USED_PORT: sel 0 0 3 0 INPUT NODEFVAL "sel[2..0]"
-- Retrieval info: CONNECT: @data 1 0 4 0 data0x 0 0 4 0
-- Retrieval info: CONNECT: @data 1 1 4 0 data1x 0 0 4 0
-- Retrieval info: CONNECT: @data 1 2 4 0 data2x 0 0 4 0
-- Retrieval info: CONNECT: @data 1 3 4 0 data3x 0 0 4 0
-- Retrieval info: CONNECT: @data 1 4 4 0 data4x 0 0 4 0
-- Retrieval info: CONNECT: @data 1 5 4 0 data5x 0 0 4 0
-- Retrieval info: CONNECT: @sel 0 0 3 0 sel 0 0 3 0
-- Retrieval info: CONNECT: result 0 0 4 0 @result 0 0 4 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux_04.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux_04.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux_04.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux_04.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux_04_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm
