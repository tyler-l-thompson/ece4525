restart

force CKA 1 0, 0 5ns -r 10ns

force R5 1 @0ns
force R5 0 @20ns

force R0 0 @0ns
force R0 1 @20ns
force R0 0 @40ns


run 260ns





