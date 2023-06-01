# proc-max.asm

.data
max_result: .word 0       # Storage for the maximum value

.text
.global main

max:
    blt a0, a1, smaller
    j end_max

smaller:
	mv a0, a1
	
end_max:
	# jalr zero 0(ra)
    # jr ra
	ret
	
############ For main ############
.data
a: .word 10
b: .word 100

.text
main:
    lw a0, a           
    lw a1, b
    
    # jal ra, max
    # jal max
    call max

    sw a0, max_result, t2
