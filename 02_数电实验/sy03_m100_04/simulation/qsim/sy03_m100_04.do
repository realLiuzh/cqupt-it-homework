onerror {exit -code 1}
vlib work
vlog -work work sy03_m100_04.vo
vlog -work work Waveform3.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.decoder_vlg_vec_tst -voptargs="+acc"
vcd file -direction sy03_m100_04.msim.vcd
vcd add -internal decoder_vlg_vec_tst/*
vcd add -internal decoder_vlg_vec_tst/i1/*
run -all
quit -f
