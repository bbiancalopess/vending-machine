transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Bianca/Documents/ufmg/3-periodo/lsd/vending-machine/rtl/Binary_To_BCD/Binary_To_BCD.vhd}
vcom -93 -work work {C:/Users/Bianca/Documents/ufmg/3-periodo/lsd/vending-machine/rtl/Mux_Msg_Selector/Mux_Msg_Selector.vhd}
vcom -93 -work work {C:/Users/Bianca/Documents/ufmg/3-periodo/lsd/vending-machine/rtl/Subtrator/Subtrator.vhd}
vcom -93 -work work {C:/Users/Bianca/Documents/ufmg/3-periodo/lsd/vending-machine/rtl/Somador/Somador.vhd}
vcom -93 -work work {C:/Users/Bianca/Documents/ufmg/3-periodo/lsd/vending-machine/rtl/Registrador/Registrador.vhd}
vcom -93 -work work {C:/Users/Bianca/Documents/ufmg/3-periodo/lsd/vending-machine/rtl/Mux_Displays/Mux_Displays.vhd}
vcom -93 -work work {C:/Users/Bianca/Documents/ufmg/3-periodo/lsd/vending-machine/rtl/Decodificador_Produto/Decodificador_Produto.vhd}
vcom -93 -work work {C:/Users/Bianca/Documents/ufmg/3-periodo/lsd/vending-machine/rtl/Comparador_Maior_Igual/Comparador_Maior_Igual.vhd}
vcom -93 -work work {C:/Users/Bianca/Documents/ufmg/3-periodo/lsd/vending-machine/rtl/Comparador_Maior/Comparador_Maior.vhd}
vcom -93 -work work {C:/Users/Bianca/Documents/ufmg/3-periodo/lsd/vending-machine/rtl/Datapath/Datapath.vhd}

vcom -93 -work work {C:/Users/Bianca/Documents/ufmg/3-periodo/lsd/vending-machine/rtl/Datapath/Mux_Selector_Displays_TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  Mux_Selector_Displays_TB

add wave *
view structure
view signals
run 200 ns
