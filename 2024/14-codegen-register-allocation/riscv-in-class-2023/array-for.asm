.data
numbers: .word -30, 30, -20, 20, -10, 10, 0
size: .word 7

positive_sum: .word 0
negative_sum: .word 0

.text
la t0, numbers		# t0: the address of the array
lw t1, size			# t1: size = 7

mv t2, zero			# counter, initially 0

li t3, 0				# t3: sum of positive numbers <- 0
li t4, 0				# t4: sum of negative numbers <- 0

loop:
	bge t2, t1, end_loop
	# numbers[t2]
	# mul t5, t2, 4
	slli t5, t2, 2		# slli: shift left logical immediate
	add t5, t0, t5
	lw t5, 0(t5)
	
	addi t2, t2, 1
	
	bltz	 t5, negative				# bltz: branch if less than zero
	add t3, t3, t5
	j loop
	
negative:
	add t4, t4, t5
	j loop

end_loop:
	sw, t3, positive_sum, t5
	sw, t4, negative_sum, t5