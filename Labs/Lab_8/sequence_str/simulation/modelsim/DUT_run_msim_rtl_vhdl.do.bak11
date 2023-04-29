transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/IITB/Semester_3/EE214/Labs/Lab_8/sequence_str/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {D:/IITB/Semester_3/EE214/Labs/Lab_8/sequence_str/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {D:/IITB/Semester_3/EE214/Labs/Lab_8/sequence_str/TopLevel.vhdl}
vcom -93 -work work {D:/IITB/Semester_3/EE214/Labs/Lab_8/sequence_str/D_flipflop.vhd}
vcom -93 -work work {D:/IITB/Semester_3/EE214/Labs/Lab_8/sequence_str/DUT.vhd}
vcom -93 -work work {D:/IITB/Semester_3/EE214/Labs/Lab_8/sequence_str/sequence_str.vhd}

vcom -93 -work work {D:/IITB/Semester_3/EE214/Labs/Lab_8/sequence_str/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
