transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Bianca/Documents/ufmg/3-periodo/lsd/vending-machine/rtl/core/Binary_To_BCD/Binary_To_BCD.vhd}
vcom -93 -work work {C:/Users/Bianca/Documents/ufmg/3-periodo/lsd/vending-machine/rtl/core/Mux_Msg_Selector/Mux_Msg_Selector.vhd}

vcom -93 -work work {C:/Users/Bianca/Documents/ufmg/3-periodo/lsd/vending-machine/rtl/core/Mux_Msg_Selector/Mux_Msg_Selector_TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Mux_Msg_Selector_TB

add wave *
view structure
view signals
run 100 ns
