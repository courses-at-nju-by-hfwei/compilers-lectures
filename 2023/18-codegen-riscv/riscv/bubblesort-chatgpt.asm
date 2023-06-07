.data
numbers: .byte 7, 2, 9, 4, 1, 5    # Array of numbers to be sorted
size: .word 6                      # Size of the array

.text
.globl _start
_start:
    la a0, numbers                  # Load the address of the array
    lw a1, size                     # Load the size of the array

    addi t0, zero, 0                # Outer loop index i
    addi t1, zero, 1                # Flag to check if any swaps were made

outer_loop:
    addi t2, zero, 0                # Inner loop index j
    addi t3, zero, 0                # Flag to check if any swaps were made

inner_loop:
    lb t4, 0(a0)                    # Load numbers[j]
    lb t5, 1(a0)                    # Load numbers[j+1]
    blt t4, t5, swap                # Compare numbers[j] and numbers[j+1]

    addi t2, t2, 1                  # Increment j
    blt t2, a1, inner_loop          # Continue inner loop if j < size - 1

    beqz t3, print_array            # Exit outer loop if no swaps were made

    addi t0, t0, 1                  # Increment i
    j outer_loop                    # Continue outer loop if i < size

print_array:
    la a0, numbers                  # Load the address of the array
    lw a1, size                     # Load the size of the array

    addi t0, zero, 0                # Loop index i

print_loop:
    lb t1, 0(a0)                    # Load the value at numbers[i]
    li a7, 1                        # System call number for printing an integer
    mv a0, t1                       # Move the value to be printed to a0
    ecall                           # Perform the system call to print

    addi t0, t0, 1                  # Increment i
    blt t0, a1, print_loop          # Continue printing loop if i < size

    # End of program
    li a7, 10                       # System call number for program exit
    li a0, 0                        # Exit code 0
    ecall                           # Perform the system call to exit

swap:
    lb t5, 0(a0)                    # Load numbers[j] at numbers[j+1]
    lb t4, 1(a0)                    # Load numbers[j+1] at numbers[j]
    sb t5, 1(a0)                    # Store numbers[j] at numbers[j+1]
    sb t4, 0(a0)                    # Store numbers[j+1] at numbers[j]
    addi t3, t3, 1                  # Set flag indicating a swap was made
    j inner_loop
