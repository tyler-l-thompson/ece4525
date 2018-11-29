restart

force RESET 1 @0ns
force RESET 0 @10ns

force CE 1 @0ns
force CE 0 @10ns

force A0 0 @0ns
force A0 1 @10ns
force A0 0 @20ns
force A0 1 @40ns
force A0 0 @50ns

force STB 0 @0ns
force STB 1 @20ns
force STB 0 @30ns
force STB 1 @40ns
force STB 0 @60ns
force STB 1 @70ns

force RD 1 @0ns
force RD 0 @20ns
force RD 1 @30ns
force RD 0 @80ns
force RD 1 @90ns

force WR 1 @0ns
force WR 0 @10ns
force WR 1 @20ns
force WR 0 @40ns
force WR 1 @50ns

force D 2#00000000 @0ns
force D 2#00000000 @10ns
force D "ZZZZZZZZ" @20ns
force D 2#00000011 @40ns
force D "ZZZZZZZZ" @50ns

force P 2#01010100 @0ns
force P 2#00001111 @50ns

run 160ns
