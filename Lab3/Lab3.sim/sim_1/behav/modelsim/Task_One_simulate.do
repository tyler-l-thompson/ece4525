######################################################################
#
# File name : Task_One_simulate.do
# Created on: Wed Sep 19 18:33:25 -0400 2018
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.Task_One

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {Task_One_wave.do}

view wave
view structure
view signals

do {Task_One.udo}

run 1000ns
