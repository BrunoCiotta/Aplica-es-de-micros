; Aplic. de Microprocessadores
;----------------------------------
org 0000h
JMP main

;----------------------------------

org 0033h

main:
    MOV     DPTR, #display ; endereça a tabela de segmentos para DPTR
    MOV     P1, #0xFF
    MOV     R0, #500
    MOV     R1, #100000
    MOV     R2, #00

loop:
    JNB      P2.0, count_loop
	JNB      P2.1, change_delay
	JMP     loop

count_loop:
    MOV     A, R2
    MOVC    A, @A+DPTR          ; Move o conteúdo presente no endereço A+DPTR,onde
                                ; A é um ponteiro - aponta o end. em DPTR que contém um valor da
                                ; tabela de segmentos (byte)
    MOV     P1, A               ; Move para P1 o conteúdo para acender o display no valor
                                ; apontado em DPTR
    ACALL   delay_loop 	        ; Chama a sub-rotina de delay
    INC     R2                  ; incrementa o contador
    CJNE    R2, #10, count_loop ; Se o contador não for 10, continua o loop
    MOV     R2, #0
    SJMP    count_loop
    ;SJMP     main               ; Retorna o loop
    RET

change_delay:
    MOV     R0, #2000
    ACALL   count_loop

;----------------------------------

delay_loop:
    ;DJNZ    R0, $
    DJNZ    R1, delay_loop
    RET

;----------------------------------

display:
    db 0C0h
    db 0F9h
    db 0A4h
    db 0B0h
    db 99h
    db 92h
    db 82h
    db 0F8h
    db 80h
    db 90h

end
