org 00h

JMP main 	      ;Salta para a label do programa principal - duração: 2us
org 33h

main:		      ;Label main
MOV R0,#20h 	      ;Move o valor 20h para R0 - duração: 1us
MOV R1,#00h 	      ;Move o valor 00h para R1 - duração: 1us

LOOP:		      ;Label LOOP
MOV A,@R0 	      ;Move R0 de forma indireta para A - duração: 1us
SUBB A,#45h 	      ;Subtrai 45h de A - duração: 1us
JNC bloco 	      ;Salta para bloco se carry do PSW = 0 duração: 2us
INC R1 		      ;Incrementa R1 de uma unidade - duração: 2us

bloco:		      ;Label bloco
INC R0 		      ;Incrementa R0 de 1 unidade - duração: 1us
CJNE R0,#24h,LOOP     ;Compara R0 com 24h e salta para LOOP caso R0 != 24h duração: 3us
NOP 	              ;Nao realiza operacao - duração: 1us
JMP $ 		      ;Segura o programa nessa linha - duração: 2us

end		      ;Fim do programa - duração total: 
