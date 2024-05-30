.data
numbers: .word -40, 40, -30, 30, -20, 20, -10, 10, 0
size: .word 9
positive_sum: .word 0
negative_sum: .word 0

.text
la t0, numbers	# t0 stores the address of the current element
lw t1, size		# t1 is the size
mv t2, zero		# t1 is the counter, initially 0

li t3, 0			# sum_of_positives <- 0
li t4, 0			# sum_of_negatives <- 0

loop:
	bge t2, t1, end_loop

	slli t5, t2, 2
	add t5, t0, t5
	lw t5, 0(t5)
	addi t2, t2, 1

	bltz t5, negative
	add t3, t3, t5
	j loop

negative:
	add t4, t4, t5
	j loop

end_loop:
	sw, t3, positive_sum, t5
	sw, t4, negative_sum, t5
