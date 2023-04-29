transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/IITB/Semester - 3/EE214/Labs/Lab - 2/4bit_4x1_MUX/gates.vhd}
vcom -93 -work work {D:/IITB/Semester - 3/EE214/Labs/Lab - 2/4bit_4x1_MUX/DUT.vhd}
vcom -93 -work work {D:/IITB/Semester - 3/EE214/Labs/Lab - 2/4bit_4x1_MUX/2x1_MUX.vhd}
vcom -93 -work work {D:/IITB/Semester - 3/EE214/Labs/Lab - 2/4bit_4x1_MUX/4x1_MUX.vhd}
vcom -93 -work work {D:/IITB/Semester - 3/EE214/Labs/Lab - 2/4bit_4x1_MUX/4bit_4x1_MUX.vhd}

vcom -93 -work work {D:/IITB/Semester - 3/EE214/Labs/Lab - 2/4bit_4x1_MUX/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
