# bubblesort.asm

# void swap(int v[], int k) {
#   int temp;
  
#   temp = v[k];
#   v[k] = v[k + 1];
#   v[k + 1] = temp;
# }

.text
.global main

# a0: address of v
# a1: value of k
swap:
	slli t0, a1, 2
	add a0, a0, t0	# a0: address of v[k]
	lw t1, 0(a0)	# temp = v[k]
	lw t2, 4(a0)	# t2 <- v[k + 1]
	sw t2, 0(a0)	# v[k] = v[k + 1]
	sw t1, 4(a0)    # v[k + 1] = temp
	
	jr ra

# void sort(int v[], int n) {
#   for (int i = 0; i < n; i ++) {
#     for (int j = i - 1; j >= 0 && v[j] > v[j + 1]; j--) {
#       swap(v, j);
#     }
#   }
# }

sort:
	


.data
numbers: .word 20, 30, 5, 18, 15, 25
size: .word 6

.text
main:
	