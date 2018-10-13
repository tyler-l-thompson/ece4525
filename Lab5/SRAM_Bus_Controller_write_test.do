restart

force CLK 0 0, 1 10ns -r 20ns

force START 0 @0ns
force RW 1 @0ns
force READY 1 @0ns

force START 1 @10ns
force RW 0 @10ns

force READY 0 @70ns



force READY 1 @110ns

force START 1 @170ns
force RW 0 @170ns

force READY 0 @230ns

force START 0 @250ns

force READY 1 @270ns

run 300ns
