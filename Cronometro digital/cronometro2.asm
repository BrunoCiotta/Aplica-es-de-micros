ORG 0000h

; Definições de constantes
	SW0 equ P1.0 		; Define SW0 como o bit 0 do port P1
	SW1 equ P1.1 		; Define SW1 como o bit 1 do port P1
	DISPLAY equ P2 		; Porta de saída para o display de 7 segmentos
	DELAY_250MS equ 500	; Delay para intervalo de 0,25 segundos
	DELAY_1S equ 2000 	; Delay para intervalo de 1 segundo

	MOV P1, #0x00 
    MOV R5, 250
	MOV R6, #0
 
main:
	JB P2.0, count_loop
	JB P2.1, change_delay
	sjmp main

count_loop:
        mov A, R6 		;Move o contador para o registrador A
        mov P1, A 	;Mostra o valor no display
        call delay_loop 		;Chama a sub-rotina de delay
        inc R6 			;Incrementa o contador
        cjne R6, #10, count_loop ; Se o contador n�o for 10, continua o loop
        mov R6, #0 		;Reinicia o contador
        sjmp main 	;Retorna ao loop principal

change_delay:
        mov R5, 1000
        sjmp count_loop

delay_025:
	MOV R5,#250
	JMP delay_loop
delay_1:
	MOV R5,#1000
	JMP delay_loop
delay_loop:
	djnz R5, delay_loop
	ret
end

