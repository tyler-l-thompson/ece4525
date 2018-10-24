restart

force CLK 0 0, 1 10ns -r 20ns

force RESET 1 @0ns
force A 0 @0ns
force B 0 @0ns
force RESET 0 @10ns

force A 1 @10ns
force A 1 @30ns
force A 0 @50ns
force A 0 @70ns
force A 1 @90ns
force A 1 @110ns
force A 0 @130ns
force A 0 @150ns
force A 1 @170ns
force A 0 @190ns

force A 0 @210ns
force A 1 @230ns
force A 1 @250ns
force A 1 @270ns
force A 1 @290ns

force B 1 @10ns
force B 1 @30ns
force B 0 @50ns
force B 0 @70ns
force B 0 @90ns
force B 1 @110ns
force B 1 @130ns
force B 0 @150ns
force B 0 @170ns
force B 0 @190ns

force B 0 @210ns
force B 1 @230ns
force B 1 @250ns
force B 1 @270ns
force B 0 @290ns

run 330ns
