######################################################################
#
# File name : Full_Adder_simulate.do
# Created on: Wed Sep 05 19:01:10 -0400 2018
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.Full_Adder

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {Full_Adder_wave.do}

view wave
view structure
view signals

do {Full_Adder.udo}

run 1000ns
