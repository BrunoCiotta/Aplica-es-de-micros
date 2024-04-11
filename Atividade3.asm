org 0000h

inicio:

MOV A,#01010101b    ;Move de forma imediata para o ACC o valor binario indicado - duração: 1us (1 ciclo)
MOV B,#10010101b    ;Move de forma imediata para B o valor binario indicado - duração: 2us (2 ciclos)
ANL A,B             ;Realiza o AND logico entre A e B - duração: 1us (1 ciclo)
RR A                ;Rotaciona A a direita em 1 bit - duração: 1us (1 ciclo)
RR A                ;Rotaciona A a direita em 1 bit - duração: 1us (1 ciclo)
CPL A               ;Realiza o complemento de A - duração: 1us (1 ciclo)
RL A                ;Rotaciona A a esquerda em 1 bit - duração: 1us (1 ciclo)
RL A                ;Rotaciona A a esquerda em 1 bit - duração: 1us (1 ciclo)
ORL A,B             ;Realiza o OR logico entre A e B - duração: 1us (1 ciclo)
XRL A,B             ;Realiza o XOR logico entre A e B - duração: 1us (1 ciclo)
SWAP A              ;Realiza o SWAP de A - duração: 1us (1 ciclo)
JMP inicio          ;Salta para a label inicio - duração: 2us (2 ciclos)

end                 ;Fim do programa - duracao total: 14us
