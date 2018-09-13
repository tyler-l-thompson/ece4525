restart

force input_a 0
force input_b 0
force input_less_than 1
force input_equal 1
force input_greater_than 1

run 20ns

force input_a 1
force input_b 0
force input_less_than 1
force input_equal 1
force input_greater_than 1

run 10ns

force input_a 0
force input_b 1
force input_less_than 1
force input_equal 1
force input_greater_than 1

run 10ns

force input_a 1
force input_b 1
force input_less_than 1
force input_equal 1
force input_greater_than 1

run 10ns

force input_a 0
force input_b 0
force input_less_than 1
force input_equal 1
force input_greater_than 1

run 10ns

force input_a 1
force input_b 0
force input_less_than 0
force input_equal 0
force input_greater_than 1

run 10ns

force input_a 0
force input_b 1
force input_less_than 1
force input_equal 0
force input_greater_than 0

run 10ns

force input_a 1
force input_b 1
force input_less_than 0
force input_equal 1
force input_greater_than 0

run 10ns
