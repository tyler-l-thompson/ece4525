restart

force CLK 0 0, 1 10ns -r 20ns

force RESET 1 @0ns
force A 0 @0ns
force B 0 @0ns

force RESET 0 @10ns
force A 1 @10ns
force B 1 @10ns


run 200ns
