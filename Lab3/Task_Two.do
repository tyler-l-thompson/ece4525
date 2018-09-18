restart

force A 0
force B 0
force C 0

run 20ns

force A 1
force B 1
force C 1

run 10ns

force A 1
force B 0
force C 0

run 10ns

force A 1
force B 1
force C 0

run 10ns

force A 0
force B 0
force C 1

run 10ns

