// Adds two numbers
// RAM[2] = RAM[0] + RAM[1]

// Save the value from ROM[0] to D
@0 		// select register RAM[0]
D=M		// destination = computation (value)

// Add Value in ROM[1] to D
@1
D=D+M	

// set M register at ROM[2] to value of D
@2
M=D 	

// Infinite loop to end the program
@6
0;JMP 	// Unconditional jump