org 00h

inicio:
MOV A, #2     ;Move de forma imediata o valor 2 em decimal para o ACC - duração: 1us (1 ciclo)
MOV B, #3     ;Move de forma imediata o valor 3 em decimal para B - duração: 2us (2 ciclos)
MOV 20h, #7   ;Move para o endereço 20h o valor 7 em decimal - duração: 2us (2 ciclos)
ADD A, 20h    ;Soma o conteudo do endereco 20h ao ACC - duração: 1us (1 ciclo)
DEC A         ;Decrementa o ACC de uma unidade - duração: 1us (1 ciclo)
DEC A         ;Decrementa o ACC de uma unidade - duração: 1us (1 ciclo)
DEC A         ;Decrementa o ACC de uma unidade - duração: 1us (1 ciclo)
INC B         ;Incrementa B em uma unidade - duração: 1us (1 ciclo)
SUBB A, B     ;Subtrai A por B - duração: 1us (1 ciclo)
MUL AB        ;Multiplica A por B - duração: 4us (4 ciclos)
INC B         ;Incrementa B de uma unidade - duração: 1us (1 ciclo)
INC B         ;Incrementa B de uma unidade - duração: 1us (1 ciclo)
DIV AB        ;Divide A por B duração: 4us (4 ciclos)
MOV 21h, A    ;Move o conteudo do ACC para o endereco 21h - duração: 1us (1 ciclo)
MOV 22h, B    ;Move o conteudo de B para o endereco 22h - duração: 2us (2 ciclos)
JMP inicio    ;Salta para a label inicio - duração: 2us (2 ciclos)

end           ;Fim do programa - duracao total: 26us
