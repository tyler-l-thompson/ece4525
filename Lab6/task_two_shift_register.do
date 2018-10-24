restart

force CLK 0 0, 1 10ns -r 20ns

force RESET 1 @0ns
force A 0 @0ns
force B 0 @0ns

force S0_in 0 @0ns
force S1_in 0 @0ns

force RESET 0 @10ns

force S0_in 1 @10ns
force S0_in 0 @30ns
force S0_in 0 @310ns

force S1_in 1 @10ns
force S1_in 1 @30ns
force S1_in 0 @310ns

force A 1 @30ns
force A 1 @50ns
force A 0 @70ns
force A 0 @90ns
force A 1 @110ns
force A 1 @130ns
force A 0 @150ns
force A 0 @170ns
force A 1 @190ns
force A 0 @210ns
force A 0 @230ns
force A 1 @250ns
force A 1 @270ns
force A 1 @290ns
force A 1 @310ns

force B 1 @30ns
force B 1 @50ns
force B 0 @70ns
force B 0 @90ns
force B 0 @110ns
force B 1 @130ns
force B 1 @150ns
force B 0 @170ns
force B 0 @190ns
force B 0 @210ns
force B 0 @230ns
force B 1 @250ns
force B 1 @270ns
force B 1 @290ns
force B 0 @310ns

run 350ns
