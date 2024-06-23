# f = (g + h) - (i + j)
# t6 = (t2 = t0 + t1) - (t5 = t3 + t4)

li t0, 0
li t1, 10
add t2, t0, t1

li t3, 30
li t4, 40
add t5, t3, t4

sub t6, t2, t5

li a7, 1
mv a0, t6		# add a0, t6, zero
ecall