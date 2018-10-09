restart

force CLK 0 0, 1 5ns -r 10ns

force A 0
force B 0
force RESET 0
run 10ns

force RESET 1
run 10ns

force A 0
force B 1
run 20ns

force A 0
force B 0
run 20ns

force A 1
force B 0
run 20ns

force A 1
force B 1
run 30ns

force A 0
force B 1
run 20ns

force A 1
force B 0
run 10ns

force A 0
force B 1
run 10ns

force A 1
force B 1
run 10ns

force A 1
force B 0
run 20ns

force A 0
force B 0
run 30ns

force A 0
force B 1
run 10ns

force A 1
force B 1
run 10ns

force A 1
force B 0
run 10ns

force A 1
force B 1
run 10ns

force A 0
force B 1
run 10ns

force A 1
force B 0
run 10ns

force A 0
force B 0
run 10ns

force A 0
force B 1
run 30ns

force RESET 0
run 40ns

