transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/IITB/Semester - 3/EE214/Homework/Homework - 1/gates.vhd}
vcom -93 -work work {D:/IITB/Semester - 3/EE214/Homework/Homework - 1/DUT.vhd}
vcom -93 -work work {D:/IITB/Semester - 3/EE214/Homework/Homework - 1/full_adder.vhd}
vcom -93 -work work {D:/IITB/Semester - 3/EE214/Homework/Homework - 1/Four_bit_Adder.vhd}

vcom -93 -work work {D:/IITB/Semester - 3/EE214/Homework/Homework - 1/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
