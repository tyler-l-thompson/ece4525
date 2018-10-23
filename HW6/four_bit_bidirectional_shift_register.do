restart

force CLK 0 0, 1 10ns -r 20ns

force CLR 1 @0ns
force CLR 0 @15ns
force CLR 1 @25ns
force CLR 0 @345ns
force CLK 1 @355ns

force P 2#0000 @0ns
force P 2#1010 @20ns
force P 2#0000 @40ns

force S 2#11 @0ns
force S 2#10 @35ns
force S 2#01 @165ns
force S 2#00 @265ns

force SR_SER 0 @0ns
force SR_SER 1 @60ns
force SR_SER 0 @80ns
force SR_SER 1 @260ns
force SR_SER 0 @280ns
force SR_SER 1 @300ns
force SR_SER 0 @320ns

force SL_SER 0 @0ns
force SL_SER 1 @180ns
force SL_SER 0 @200ns
force SL_SER 1 @230ns
force SL_SER 0 @260ns
force SL_SER 1 @280ns
force SL_SER 0 @300ns
force SL_SER 1 @320ns
force SL_SER 0 @340ns

run 360ns

