restart

force input_a0 0
force input_a1 0
force input_a2 0
force input_a3 0
force input_b0 0
force input_b1 0
force input_b2 0
force input_b3 0
force input_less_than 1
force input_equal 1
force input_greater_than 1

run 20ns

force input_a0 1
force input_a1 0
force input_a2 0
force input_a3 0
force input_b0 0
force input_b1 0
force input_b2 0
force input_b3 0
force input_less_than 1
force input_equal 1
force input_greater_than 1

run 10ns

force input_a0 1
force input_a1 0
force input_a2 0
force input_a3 1
force input_b0 1
force input_b1 0
force input_b2 0
force input_b3 0
force input_less_than 1
force input_equal 1
force input_greater_than 1

run 10ns

force input_a0 1
force input_a1 0
force input_a2 0
force input_a3 1
force input_b0 0
force input_b1 0
force input_b2 0
force input_b3 0
force input_less_than 1
force input_equal 1
force input_greater_than 1

run 10ns

force input_a0 0
force input_a1 0
force input_a2 0
force input_a3 0
force input_b0 1
force input_b1 0
force input_b2 1
force input_b3 0
force input_less_than 1
force input_equal 1
force input_greater_than 1

run 10ns

force input_a0 0
force input_a1 1
force input_a2 0
force input_a3 0
force input_b0 0
force input_b1 0
force input_b2 1
force input_b3 0
force input_less_than 1
force input_equal 1
force input_greater_than 1

run 10ns

force input_a0 0
force input_a1 1
force input_a2 0
force input_a3 0
force input_b0 1
force input_b1 1
force input_b2 0
force input_b3 0
force input_less_than 0
force input_equal 1
force input_greater_than 0

run 10ns

force input_a0 0
force input_a1 0
force input_a2 0
force input_a3 0
force input_b0 0
force input_b1 0
force input_b2 0
force input_b3 0
force input_less_than 0
force input_equal 0
force input_greater_than 1

run 10ns
