// File name: Adding.asm
// Adds numbers from 1+ to +100.

// Set the counter @16. Initial value is 1
@i     // @16
M=1    // i=1

// Set a place for sum @17. Initial Sum is 0
@sum   // sum refers to some mem. location.
M=0    // sum=0

// Create a loop that sums up the counter values
(LOOP)
	
	@i		// @16  
	D=M     // D=i ==>  D=1
	
	// if count is more than 100 go to the end
	@100 	// set top number (when the count should stop)
	D=D-A   // D=1-100
	@END
	D;JGT  // If (i-100)>0 goto END
	
	// Get the number of counts
	// Add counts to the sum and save it
	// Count +1
	@i
	D=M    // D=i
	@sum
	M=D+M  // sum = i + sum
	@i
	M=M+1  // i=i+1
// jump to the beginning of the loop
@LOOP
0;JMP  // Goto LOOP

// End with infinite loop
(END)
@END
0;JMP 