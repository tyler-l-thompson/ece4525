restart

force RESET 1 @0ns
force RESET 0 @10ns

force STB 1 @0ns
force RD 1 @0ns

force STB 0 @20ns
force RD 1 @20ns

force STB 1 @30ns
force RD 1 @30ns

force STB 1 @40ns
force RD 0 @40ns

force STB 1 @50ns
force RD 1 @50ns

force STB 0 @60ns
force RD 0 @60ns

run 80ns





