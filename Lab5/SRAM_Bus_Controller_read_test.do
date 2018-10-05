restart

force CLK 0 0, 1 10ns -r 20ns

force START 0 @0ns
force RW 0 @0ns
force READY 1 @0ns
force D0 Z @0ns
force D1 Z @0ns
force D2 Z @0ns
force D3 Z @0ns
force D4 Z @0ns
force D5 Z @0ns
force D6 Z @0ns
force D7 Z @0ns


force START 1 @10ns
force RW 1 @10ns

force READY 0 @70ns

force D0 1 @70ns
force D1 0 @70ns
force D2 1 @70ns
force D3 0 @70ns
force D4 1 @70ns
force D5 0 @70ns
force D6 1 @70ns
force D7 0 @70ns

force START 0 @90ns

force READY 1 @110ns

force D0 Z @110ns
force D1 Z @110ns
force D2 Z @110ns
force D3 Z @110ns
force D4 Z @110ns
force D5 Z @110ns
force D6 Z @110ns
force D7 Z @110ns

run 180ns
