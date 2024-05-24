.text
.global main

factorial:
beqz a0, base_case

addi sp, sp, -8
sw a0, 4(sp)
sw ra, 0(sp)

# n > 0: n * factorial(n - 1)
addi a0, a0, -1		# a0: n - 1
call factorial		# a0: factorial(n - 1)
mv t0, a0			# t0: factorial(n - 1)

lw a0, 4(sp)			# a0: n
lw ra, 0(sp)
addi sp, sp, 8

mul a0, a0, t0		# a0: n * factorial(n - 1)
j end

base_case:
	li a0, 1

end:
	ret


######### main ########
.data 
n: .word 10

.text
main:
lw a0, n
call factorial



