set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {CLK_IBUF}]

## Task One pin assignment
###Switches
#set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { B }]; #IO_L6N_T0_D08_VREF_14 Sch=sw[2]
#set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { A }]; #IO_L13N_T2_MRCC_14 Sch=sw[3]

### LEDs
#set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { SUM }]; #IO_L18P_T2_A24_15 Sch=led[0]
#set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { CY }]; #IO_L24P_T3_RS1_15 Sch=led[1]

###Buttons
#set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { RESET }]; #IO_L12P_T1_MRCC_14 Sch=btnl

###Pmod Header JB
#set_property -dict { PACKAGE_PIN G16   IOSTANDARD LVCMOS33 } [get_ports { CLK }]; #IO_L13N_T2_MRCC_15 Sch=jb[3]


# Task Two pin assignment 
##Switches

set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { B }]; #IO_L6N_T0_D08_VREF_14 Sch=sw[2]
set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { A }]; #IO_L13N_T2_MRCC_14 Sch=sw[3]

set_property -dict { PACKAGE_PIN T8    IOSTANDARD LVCMOS18 } [get_ports { S1_in }]; #IO_L24N_T3_34 Sch=sw[8]
set_property -dict { PACKAGE_PIN U8    IOSTANDARD LVCMOS18 } [get_ports { S0_in }]; #IO_25_34 Sch=sw[9]


## LEDs
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { CY }]; #IO_L24P_T3_RS1_15 Sch=led[1]

##Buttons
set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { RESET }]; #IO_L12P_T1_MRCC_14 Sch=btnl

##Pmod Header JB

set_property -dict { PACKAGE_PIN G16   IOSTANDARD LVCMOS33 } [get_ports { CLK }]; #IO_L13N_T2_MRCC_15 Sch=jb[3]
set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { MR }]; #IO_L15P_T2_DQS_15 Sch=jb[4]
set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { S0_out }]; #IO_L11N_T1_SRCC_15 Sch=jb[7]
set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33 } [get_ports { S1_out }]; #IO_L5P_T0_AD9P_15 Sch=jb[8]
set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports { SUM }]; #IO_0_15 Sch=jb[9]

