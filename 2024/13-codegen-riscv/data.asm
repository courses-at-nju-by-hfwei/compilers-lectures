# f = (g + h) - (i + j)
# t6 = (t2 = t0 + t1) - (t5 = t3 + t4)

.data
g: .word 0		# .word: 4 byte
h: .word 10
i: .word 30
j: .word 40

result: .word 0

msg: .string "The result is: "  # .ascii

.text
lw t0, g
# la t0, g		# la: load address
# lw t0, 0(t0)	#lw: load word

lw t1, h
add t2, t0, t1

lw t3, i
lw t4, j
add t5, t3, t4

sub t6, t2, t5

sw t6, result, t0
# la t0, result
# sw t6, 0(t0)		# sw: store word

li a7, 4
la a0, msg
ecall

li a7, 1
mv a0, t6		# add a0, t6, zero
ecall