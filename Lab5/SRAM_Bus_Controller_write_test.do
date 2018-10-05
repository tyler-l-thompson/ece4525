restart

force CLK 0 0, 1 10ns -r 20ns

force START 0 @0ns
force RW 1 @0ns
force READY 1 @0ns

force START 1 @10ns
force RW 0 @10ns

force READY 0 @70ns

force START 0 @90ns

force READY 1 @110ns

run 180ns
