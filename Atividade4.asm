org 	00h

JMP 	main
org 	33h

main:
CLR		A
MOV		R0,#78h

bloco1:
JZ		bloco2
JNZ		bloco3
NOP

bloco2:
MOV 	A,R0
JMP 	bloco1

bloco3:
DJNZ	R0, bloco3
JMP		main

end

