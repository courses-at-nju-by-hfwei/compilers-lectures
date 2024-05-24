.data
numbers: .word -30, 30, -20, 20, -10, 10, 0	

.text
la t0 numbers
lw t1, 12(t0)
addi t1, t1, 80
sw t1, 12(t0)