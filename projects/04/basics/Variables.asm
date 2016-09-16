// Flip values of RAM[0] and RAM[1]

// temp = R1
// R1 = R0
// R0 = temp

// Save value from RAM[1] to variable temp
@R1
D=M
@temp 	// ROM[16]
M=D		// temp = R1

// Get value from RAM[0] to and save it to RAM[1]
@R0
D=M
@R1
M=D		// R1 = R0

// Get the value from temp and save it to R0
@temp
D=M
@R0
M=D		// R0 = temp

(END)
@END
0;JMP


