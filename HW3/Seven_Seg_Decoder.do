restart

force input_a 0
force input_b 0
force input_c 0
force input_d 0
force input_lt 0

run 20ns

force input_a 1
force input_b 0
force input_c 0
force input_d 0
force input_lt 1

run 10ns

force input_a 0
force input_b 1
force input_c 0
force input_d 0
force input_lt 1

run 10ns

force input_a 1
force input_b 1
force input_c 0
force input_d 0
force input_lt 1

run 10ns

force input_a 0
force input_b 0
force input_c 1
force input_d 0
force input_lt 1

run 10ns

force input_a 1
force input_b 0
force input_c 1
force input_d 0
force input_lt 1

run 10ns

force input_a 0
force input_b 1
force input_c 1
force input_d 0
force input_lt 1

run 10ns

force input_a 1
force input_b 1
force input_c 1
force input_d 0
force input_lt 1

run 10ns
