// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Get R0
@R0
D=M

// Make a counter of @R1
@R1
D=M
@i
M=D

// Set sum
@sum
M=0

(LOOP)

	// Check if there is more to add
	// if i == 0 go to end
	@i	// @17
	D=M
	@SUM	//@27
	D;JEQ		// goto SUM

	// Get R0
	@R0
	D=M

	// Add to sum
	@sum
	M=M+D

	// Counter -1
	@i
	M=M-1 	// i = i + 1
	
// Go to begining of the LOOP
@LOOP
0;JMP 	

// SET @R2 - Save the sum in @R2
(SUM)
@sum
D=M
@R2
M=D

(END)
@END
0;JMP
