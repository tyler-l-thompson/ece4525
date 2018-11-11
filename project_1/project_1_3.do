restart

force CLK 0 0, 1 10ns -r 20ns

force RESET 0 @0ns
force START 0 @0ns
force OP1_IN 0 @0ns
force OP2_IN 0 @0ns

force RESET 1 @10ns
force START 1 @10ns
force START 0 @70ns

force OP1_IN 0 @50ns
force OP1_IN 1 @70ns
force OP1_IN 0 @90ns
force OP1_IN 1 @110ns
force OP1_IN 0 @130ns
force OP1_IN 0 @150ns
force OP1_IN 1 @170ns
force OP1_IN 0 @190ns

force OP2_IN 0 @50ns
force OP2_IN 1 @70ns
force OP2_IN 0 @90ns
force OP2_IN 1 @110ns
force OP2_IN 0 @130ns
force OP2_IN 0 @150ns
force OP2_IN 0 @170ns
force OP2_IN 0 @190ns

run 350ns
