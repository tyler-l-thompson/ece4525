restart

force CLK 0 0, 1 10ns -r 20ns

force RESET 1 @0ns
force RESET 0 @10ns

run 330ns
