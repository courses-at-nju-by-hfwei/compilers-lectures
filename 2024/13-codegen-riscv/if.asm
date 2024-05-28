# c = max(a, b)

.data
a: .word 100
b: .word 200
c: .word 0

.text
lw t0, a
lw t1, b

bge t0, t1 greater_equal		# bge: branch if greater than or equal
mv t2, t1
j end		# j: jump

greater_equal:
mv t2, t0

end:
sw t2, c, t3