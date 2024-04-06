
### Atividade 1
```
	ORG		0000h		;definindo endereco de origem
main:
	MOV		A,#05h		;move um valor para A - 1us (1 ciclo)
	MOV		A,#00h		;move 00h para A	- 1us (1 ciclo)
	CLR		RS0			;define RS0 como 0 para selecionar o banco 0 - 1us (1 ciclo)
	CLR 	RS1			;define RS1 como 0 para selecionar o banco 0 - 1us (1 ciclo)
	MOV		R0,#08h		;move 08h para R0 - 1us (1 ciclo)
	MOV		B,#09h		;move 09h para B - 2us (2 ciclos)
	MOV		20h,P1		;move a porta P1 para o enderco 20h da RAM - 2us (2 ciclos)
	SETB	RS0			;define RS0 como 1 para selecionar o banco 01 - 1us (1 ciclo)
	CLR 	RS1			;define RS1 como 0 para selecionar o banco 01 - 1us (1 ciclo)
	MOV		R1,20h		;move diretamente o conteudo de 20h para o registrador R1 - 2us (2 ciclos)
	MOV		21h,R1		;move o conteudo de R1 para 22h - 2us (2 ciclos)
	MOV		R1,#21h		;move o valor do endereco 21h para R1 - 1us (1 ciclo)
	MOV		A,@R1		;move de forma indireta R1 para o ACC - 1us (1 ciclo)
	MOV		DPTR,#9A5Bh;move o valor 9A5Bh para o DPTR - 2us (2 ciclos)
	NOP						;consome 1us sem nenhuma operacao - 1us (1 ciclo)
	JMP		$				;segura o programa nessa linha - 2us (2 ciclos)

	end						;encerra o programa
 ```
