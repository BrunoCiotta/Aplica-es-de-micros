org 00h

	JMP		main
	org 33h

main:
	MOV		R0,#20h
	MOV		R1,#00h

LOOP:
	MOV		A,@R0
	SUBB	A,#45h
	JNC		bloco
	INC		R1

bloco:
	INC		R0
	CJNE	R0,#24h,LOOP
	NOP
	JMP		$

end