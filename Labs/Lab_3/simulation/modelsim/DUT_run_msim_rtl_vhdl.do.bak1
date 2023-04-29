transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/IITB/Semester - 3/EE214/Labs/Lab - 3/gates.vhd}
vcom -93 -work work {D:/IITB/Semester - 3/EE214/Labs/Lab - 3/DUT.vhd}
vcom -93 -work work {D:/IITB/Semester - 3/EE214/Labs/Lab - 3/vowel.vhd}

vcom -93 -work work {D:/IITB/Semester - 3/EE214/Labs/Lab - 3/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
