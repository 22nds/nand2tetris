// Computes if R0>1
//				R1=1
//			else 
//				R1=0
		
@R0
D=M		// D = RAM[0]

@8
D;JGT 	// IF R0 > 0 go to 8

@R1
M=0		// RAM[1] = 0
@10
0;JMP 	// END THE PROGRAM

@R1
M=1		// R1 = 1

@10
0;JMP