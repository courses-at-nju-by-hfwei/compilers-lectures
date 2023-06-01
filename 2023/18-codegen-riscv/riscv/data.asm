# f = (g + h) - (i + j)
# t6 = (t0 + t1) - (t3 + t4)

.data
g: .word 0
h: .word 10
i: .word 30
j: .word 40

result: .word 0

msg: .string "The result is: "

.text
la t0, g
lw t0, 0(t0)
la t1, h
lw t1, 0(t1)
add t2, t0, t1

la t3, i
lw t3, 0(t3)
la t4, j
lw t4, 0(t4)
add t5, t3, t4

sub t6, t2, t5

la t0, result
sw t6, 0(t0)

# print the message hint
li a7, 4
la a0, msg
ecall

# print the result
li a7, 1
mv a0, t6 # add a0, t6, zero
ecall