org 0000h

; Definindo o valor binário para o dígito 0 no display de 7 segmentos
	mov P1, #11000000b ; Liga os segmentos A, B, C, D, E, F e desliga o segmento G

; Definições de constantes
	SW0 equ P1.0 		; Define SW0 como o bit 0 do port P1
	SW1 equ P1.1 		; Define SW1 como o bit 1 do port P1
	DISPLAY equ P2 		; Porta de saída para o display de 7 segmentos
	DELAY_250MS equ 500	; Delay para intervalo de 0,25 segundos
	DELAY_1S equ 2000 	; Delay para intervalo de 1 segundo

; Inicialização do programa
        mov DISPLAY, #0xFF 	 ; Desliga o display de 7 segmentos
        mov R7, #DELAY_250MS ; Carrega o valor do delay padrão de 0,25s

loop:
        jb SW0_pressed, change_delay	; Verifica se SW0 foi pressionado
        jb SW1_pressed, change_delay	; Verifica se SW1 foi pressionado
        sjmp loop 						; Se nenhuma chave foi pressionada, continua no loop

SW0_pressed:
        ; Rotina para quando SW0 é pressionado
        ; Contagem de 0 a 9 em loop com delay de 0,25s
        mov R6, #0 ; Inicializa o contador

count_loop:
        mov A, R6 ; Move o contador para o registrador A
        mov DISPLAY, A ; Mostra o valor no display
        call delay ; Chama a sub-rotina de delay
        inc R6 ; Incrementa o contador
        cjne R6, #10, count_loop ; Se o contador não for 10, continua o loop
        mov R6, #0 ; Reinicia o contador
        sjmp loop ; Retorna ao loop principal

SW1_pressed:
        ; Rotina para quando SW1 é pressionado
        ; Contagem de 0 a 9 em loop com delay de 1s
        mov R7, #DELAY_1S ; Altera o delay para 1 segundo
        mov R6, #0 ; Inicializa o contador

count_loop_1s:
        mov A, R6 ; Move o contador para o registrador A
        mov DISPLAY, A ; Mostra o valor no display
        call delay ; Chama a sub-rotina de delay
        inc R6 ; Incrementa o contador
        cjne R6, #10, count_loop_1s ; Se o contador não for 10, continua o loop
        mov R6, #0 ; Reinicia o contador
        sjmp loop ; Retorna ao loop principal

change_delay:
        ; Rotina para mudar o delay de acordo com a chave pressionada
        cjne R7, #DELAY_250MS, set_250ms_delay ; Se o delay não for 0,25s, define como 0,25s
        mov R7, #DELAY_1S ; Se o delay for 0,25s, define como 1 segundo
        sjmp loop ; Retorna ao loop principal

set_250ms_delay:
        mov R7, #DELAY_250MS ; Define o delay como 0,25s
        sjmp loop ; Retorna ao loop principal

delay:
        ; Sub-rotina de delay
        mov R5, R7 ; Carrega o valor do delay em R5z

delay_loop:
        djnz R5, delay_loop ; Decrementa R5 e repete o loop até que seja zero
        ret ; Retorna da sub-rotina de delay
