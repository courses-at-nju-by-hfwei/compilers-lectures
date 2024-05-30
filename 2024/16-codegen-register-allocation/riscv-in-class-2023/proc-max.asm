# proc-max.asm

.data
max_result: .word 0

.text
.global main

max:
# a0 (argument 0), a1
blt a0, a1, smaller
j end_max

smaller:
mv a0, a1

end_max:

ret
# jr ra	# jr: jump register
# jalr zero 0(ra)	# jalr: jump and link register
# jal: jump and link

############### main ###############
.data
a: .word 100
b: .word 200

.text
main:
lw a0, a
lw a1, b

call max
# jal max
# jal ra, max		# jal: jump and link		ra: return address register
# TODO
sw a0, max_result, t0

