# proc-max.asm

# c = max(a, b)

.data
max_result: .word 0

.text
.globl main	# globl: global

max:
# (3) a0 (argument 0): a, a1: b

# (4) computing the max of a and b
blt a0, a1, smaller
j end_max

smaller:
mv a0, a1	# convention: a0, a1 as return value registers

end_max:
ret
# jr ra	# jr: jump register
# jalr zero 0(ra)	# jalr: jump and link register (offset); link: rd <- pc + 4

.data
a: .word 100
b: .word 200

.text
main:
# (1) preparing the arguments (a0, ..., a7)
lw a0, a
lw a1, b

# (2) call the max function
call max # (auipc + jalr; 8 bytes)
# jal max # (default: ra)
# jal ra, max	# jal: jump and link (jump: ra <- pc + 4; pc <- &max)

# (5) continue
sw a0, max_result, t0




