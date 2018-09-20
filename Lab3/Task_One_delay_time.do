restart

force A 0
force B 0
force CIN 0
force C0 0
force C1 0
force C2 0
force C3 0
force Sel0 0
force Sel1 0
force Sel2 0
force Sel3 0

run 20ns

force A 1
force B 1
force CIN 1
force C0 1
force C1 1
force C2 1
force C3 1
force Sel0 0
force Sel1 0
force Sel2 0
force Sel3 0

run 100ns

