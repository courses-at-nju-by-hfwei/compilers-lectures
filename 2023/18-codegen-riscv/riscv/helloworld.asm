.data
x:
	.word 10

.text	
sum10:
	lw a0, x
	addi a0, a0, 10
	ret