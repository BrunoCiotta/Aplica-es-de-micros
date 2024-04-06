org 	00h

JMP 	main ; duração - 2us
org 	33h

main:
CLR		A ; duração - 1us
MOV		R0,#78h ; duração - 1us

bloco1:
JZ		bloco2 ; duração - 2us
JNZ		bloco3 ; duração - 2us
NOP

bloco2:
MOV 	A,R0 ; duração - 1us
JMP 	bloco1 ; duração - 2us

bloco3:
DJNZ	R0, bloco3 ; duração - 2us
JMP		main ; duração - 2us

end

