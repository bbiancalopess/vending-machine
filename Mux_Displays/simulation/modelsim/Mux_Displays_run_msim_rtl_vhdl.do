transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Bianca/Documents/ufmg/3-periodo/lsd/vending-machine/Mux_Displays/Mux_Displays.vhd}

vcom -93 -work work {C:/Users/Bianca/Documents/ufmg/3-periodo/lsd/vending-machine/Mux_Displays/Mux_Displays_TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Mux_Displays_TB

add wave *
view structure
view signals
run 300 ns
