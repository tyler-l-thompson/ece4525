restart

force CLK 0 0, 1 10ns -r 20ns

force START 0 @0ns
force RW 0 @0ns
force READY 0 @0ns

force START 1 @10ns

force START 0 @1950ns

run 2000ns
