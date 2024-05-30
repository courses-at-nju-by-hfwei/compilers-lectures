# Recursive factorial function
# Input: a0 - n (number to calculate factorial of)
# Output: a0 - factorial result

fact:
    # Base case: if n <= 1, return 1
    li t0, 1
    ble a0, t0, return_fact

    # Recursive case: calculate factorial(n-1)
    addi sp, sp, -4    # Allocate space on the stack
    sw ra, 0(sp)       # Save the return address

    addi a0, a0, -1    # Decrement n by 1
    jal fact           # Recursive call to factorial(n-1)

    lw ra, 0(sp)       # Restore the return address
    addi sp, sp, 4     # Deallocate space on the stack

    # Multiply the result by n
    mul a0, a0, a1

return_fact:
    jr ra              # Return to the calling function

# Main function
.text
.globl _start
_start:
    # Prompt the user for the input number
    li a7, 4              # System call number for printing a string
    la a0, prompt         # Load the address of the prompt string
    li a1, 6              # Length of the prompt string
    ecall                 # Perform the system call to print

    # Read the input number from the user
    li a7, 5              # System call number for reading an integer
    ecall                 # Perform the system call to read

    # Calculate factorial
    mv a1, a0           # Pass the input number as an argument
    jal fact              # Call the factorial function

    # Print the result
    li a7, 1              # System call number for printing an integer
    mv a0, a1           # Move the result to be printed to a0
    ecall                 # Perform the system call to print

    # End of program
    li a7, 10             # System call number for program exit
    li a0, 0              # Exit code 0
    ecall                 # Perform the system call to exit

.data
prompt: .asciiz "Enter a number: "
