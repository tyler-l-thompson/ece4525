restart

force CLK 1 0, 0 5ns -r 10ns

force RESET 1 @0ns
force RESET 0 @10ns

force W_cmd 1 @0ns
force W_cmd 0 @10ns
force W_cmd 1 @140ns

run 160ns
