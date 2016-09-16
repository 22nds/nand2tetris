// COMPUTES: 
//		if R0>1
//			R1=1
//		else 
//			R1=0


// Get the value of @0
@R0		// @0
D=M		// D = RAM[0]

// Check if the value of @0 is greater of 0 and go to  @POSITIVE @8
@POSITIVE	// Use a label @8
D;JGT 	// IF R0 > 0 go to 8

// @0 is 0
// Set @1 to 0
// Jump to end
@R1		// @1
M=0		// RAM[1] = 0
@END	// @10
0;JMP 	// END THE PROGRAM

// @0 is greater than 0
// Set the Value of @1 to 1
(POSITIVE)  	// Declare a label
@R1 	// @1
M=1		// R1 = 1

(END)
@END
0;JMP