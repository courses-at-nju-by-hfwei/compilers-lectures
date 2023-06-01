# branch-max.asm
# c = max(a, b)

.data
a: .word 100
b: .word 200
c: .word 0

.text
lw t0, a
lw t1, b

bge t0, t1, greater_equal
# if a < b
lw t2, b
j end

greater_equal:
lw t2, a

end:
sw t2, c, t3
# la t3, c
# sw t2, 0(t3)