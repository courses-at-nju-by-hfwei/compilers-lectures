# proc-sp.asm

.text
.global main

factorial:
    beqz a0, base_case

    # Recursive case: compute factorial(n-1) and multiply by n
    addi sp, sp, -8
    sw ra, 4(sp)
    sw a0, 0(sp)

    addi a0, a0, -1
    jal ra, factorial
    mv t0, a0			# t0 <- factorial(n - 1)
    
	lw a0, 0(sp)
    lw ra, 4(sp)
    addi sp, sp, 8

    mul a0, a0, t0
	j end
	
base_case:
	li a0 1

end:	
    # jalr zero, 0(ra)
    # jr ra
    ret

# Main procedure
.data
n: .word 10

.text
main:
    lw a0, n
    # jal ra, factorial
    # jal factorial
    call factorial
