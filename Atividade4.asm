org 	00h

JMP 	main           ;Salta para a label main - duração: 2us (2 ciclos)
org 	33h      

main:                ;Label main
CLR		A              ;Limpa o ACC - duração: 1us (1 ciclo)
MOV		R0,#78h        ;Move o valor 78h para R0 - duração: 1us (1 ciclo)

bloco1:              ;Label bloco1
JZ		bloco2         ;Salta para bloco2 se A = 0 - duração: 2us (2 ciclos)
JNZ		bloco3         ;Salta para bloco3 se A != 0 - duração: 2us (2 ciclos)
NOP                  ;Nao realiza operacao - duração: 1us (1 ciclo)

bloco2:              ;Label bloco2
MOV 	A,R0           ;Move o conteudo de R0 para o ACC - duração: 1us (1 ciclo)
JMP 	bloco1         ;Salta incodicionalmente para bloco1 - duração: 2us (2 ciclos)

bloco3:              ;Label bloco3
DJNZ	R0, bloco3     ;Decrementa R0 e salta para bloco3 se R0 != 0 - duração: 2us (2 ciclos)
JMP		main           ;Salta incodicionalmente para main - duração: 2us (2 ciclos)

end                  ;Fim do programa - duração total: 16us

