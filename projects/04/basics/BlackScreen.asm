// Draws a filled rectangle at the screen's top left corner
// The width is 16 pixles and its height is RAM[0]
// Usage: put a non-negative number in RAM[0]



// SCREEN
@SCREEN		//@16384
D=A
@address	// @16  RAM[16]
M=D 	// address = 16384

// n = 16384 + 16384
//@10
@8191
D=A
@n
M=D

@i		// RAM[17]
M=0 	// i = 0



(LOOP)
	@i	// @17
	D=M
	@n	// @16
	D=D-M
	@END	//@27
	D;JGT		// if i > n goto END

	@address // @18
	A=M
	M=-1	// RAM[address] = -1 (16 pixles) 1111111111111111

	@i
	M=M+1 	// i = i + 1
	@1
	D=A
	@address
	M=D+M	// address =  32 + address
@LOOP
0;JMP 	// goto LOOP

(END)
@END		// program's end
0;JMP


