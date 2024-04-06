org 00h

	JMP		main ; duração - 2us
	org 33h

main:
	MOV		R0,#20h ; duração - 1us
	MOV		R1,#00h ; duração - 1us

LOOP:
	MOV		A,@R0 ; duração - 1us
	SUBB	A,#45h ; duração - 1us
	JNC		bloco ; duração - 2us
	INC		R1 ; duração - 2us

bloco:
	INC		R0 ; duração - 1us
	CJNE	R0,#24h,LOOP ; duração - 3us
	NOP ; duração - 1us
	JMP		$ ; duração - 2us

end
