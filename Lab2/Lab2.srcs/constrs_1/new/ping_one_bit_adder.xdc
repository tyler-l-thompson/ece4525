
##Switches
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { input_a }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]
set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { input_b }]; #IO_L13N_T2_MRCC_14 Sch=sw[3]

## LEDs
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { sum }]; #IO_L24P_T3_RS1_15 Sch=led[1]
set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { carry_out }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]

##Buttons
set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { carry_in }]; #IO_L10N_T1_D15_14 Sch=btnr
