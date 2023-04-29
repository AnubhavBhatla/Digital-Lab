transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/IITB/Semester_3/EE214/MidSem/200070008_MidSem/Gates.vhd}
vcom -93 -work work {D:/IITB/Semester_3/EE214/MidSem/200070008_MidSem/div.vhd}
vcom -93 -work work {D:/IITB/Semester_3/EE214/MidSem/200070008_MidSem/DUT.vhd}
vcom -93 -work work {D:/IITB/Semester_3/EE214/MidSem/200070008_MidSem/atm.vhd}

vcom -93 -work work {D:/IITB/Semester_3/EE214/MidSem/200070008_MidSem/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
