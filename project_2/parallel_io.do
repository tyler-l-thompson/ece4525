restart

force RESET 1 @0ns
force RESET 0 @10ns

force CE 1 @0ns
force CE 0 @10ns

force A0 0 @0ns
force A0 1 @10ns
force A0 0 @30ns
force A0 1 @50ns
force A0 0 @70ns
force A0 1 @120ns
force A0 0 @130ns
force A0 1 @150ns
force A0 0 @170ns
force A0 1 @220ns
force A0 0 @230ns

force STB 1 @0ns
force STB 0 @40ns
force STB 1 @50ns
force STB 0 @80ns
force STB 1 @90ns
force STB 0 @180ns
force STB 1 @190ns

force RD 1 @0ns
force RD 0 @20ns
force RD 1 @40ns
force RD 0 @60ns
force RD 1 @70ns
force RD 0 @100ns
force RD 1 @110ns
force RD 0 @120ns
force RD 1 @130ns
force RD 0 @140ns
force RD 1 @150ns
force RD 0 @160ns
force RD 1 @170ns
force RD 0 @200ns
force RD 1 @210ns
force RD 0 @220ns
force RD 1 @230ns
force RD 0 @240ns
force RD 1 @250ns
force RD 0 @260ns

force WR 1 @0ns
force WR 0 @10ns
force WR 1 @20ns
force WR 0 @50ns
force WR 1 @60ns
force WR 0 @150ns
force WR 1 @160ns

force D "ZZZZZZZZ" @0ns
force D 2#00000000 @10ns
force D "ZZZZZZZZ" @20ns
force D 2#00000011 @50ns
force D "ZZZZZZZZ" @60ns
force D 2#00000001 @150ns
force D "ZZZZZZZZ" @160ns

force P 2#01010100 @0ns
force P 2#00001111 @70ns
force P 2#00000000 @90ns
force P 2#00101101 @170ns
force P 2#00000000 @190ns

run 270ns
