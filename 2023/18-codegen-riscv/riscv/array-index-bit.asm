.data
numbers: .word -30, 30, -20, 20, -10, 10, 0	
size: .word 7
positive_sum: .word 0
negative_sum: .word 0

.text
la t0, numbers	# t0 stores the address of the current element
lw t1, size		# t1 is the counter

li t2, 0	# sum_of_positives <- 0
li t3, 0	# sum_of_negatives <- 0

loop:
	beqz t1, end_loop
	
	lw t4, 0(t0)
	addi t0, t0, 4
	addi t1, t1, -1
	
	bltz t4, negative
	add t2, t2, t4
	j loop
	
negative:
	add t3, t3, t4
	j loop
	
end_loop:
	sw, t2, positive_sum, t4
	sw, t3, negative_sum, t4