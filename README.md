# Aplicação de microprocessadores - Entregas 1 e 2
## Questões
### Questão 1
**Apresentar a definição formal de um sistema embarcado, indicando a referência primária do IEEE
(Institute of Electrical and Electronics Engineers) que subsidie esta definição. Em seguida fazer uma
explanação breve e objetiva sobre as principais características, funcionalidades e o que difere um
sistema embarcado de um computador de propósito geral.**


Um sistema embarcado é definido formalmente pela IEEE 610.12-1990 (IEEE Standard Glossary of Software Engineering Terminology) como “um sistema computacional que faz parte de um sistema maior e implementa alguns dos requerimentos deste sistema”.

Entre algumas características dos sistemas embarcados, pode-se destacar: diferem-se de computadores de propósito geral por realizarem tarefas específicas e predefinidas, tendo aplicações bem definidas; em geral, não podem ter sua funcionalidade alterada durante o uso; possuem recursos computacionais limitados, algumas restrições de hardware e software, além de capacidade limitada de memória.

### Questão 2
**De acordo com os Relatórios de Pesquisa sobre o Mercado de Sistemas Embarcados acima referidos
(listar os itens abaixo com base nos 2 relatórios disponibilizados):**

**I. Das ferramentas para sistemas embarcados – quais as principais áreas de aplicação dos projetos
no mercado brasileiro e o cenário internacional?**

**II. Quais as principais ferramentas de comunicação sem fio que estão sendo usadas no Brasil e no
mundo?**

**III. Quais os principais kits/plataformas de prototipagem usados?**

**IV. Dos softwares para sistemas embarcados - qual a principal ferramenta de codificação, principal
sistema de controle de versão, e principal linguagem de programação?**

**V. Dos microprocessadores/microcontroladores – quais os fabricantes/modelos mais citados na
pesquisa?**


I - No mercado brasileiro, as principais áreas de aplicação para sistemas embarcados são IoT e Sistemas industriais, incluindo automação e controle industrial, nessa ordem. No cenário internacional, as duas principais áreas são as mesmas, apenas com a inversão da ordem.

II - As principais ferramentas de comunicação sem fio que estão sendo usadas no Brasil são, nessa ordem: Wi-Fi, celular 3G/4G, Bluetooth LE/Smart e Lora. No mundo, a principal ferramenta também é o Wi-Fi, seguido de Bluetooth LE, Bluetooth e celular 3G/4G/5G.

III - No Brasil, os principais kits/plataformas de prototipagem usados são kits com ESP8266/ESP32, kits de desenvolvimento fornecidos pelos fabricantes do processador, Arduino e suas variações, Raspberry Pi. No mundo, as plataformas mais utilizadas são Raspberry Pi e Arduino.

IV - No Brasil, o Visual Studio Code é a principal ferramenta de codificação, o Git é o sistema de controle de versão preferido e a linguagem C é a mais utilizada, seguida de C++ e Python. No mundo, o mesmo ocorre para o sistema de controle de versão e para as linguagens.

V - No Brasil, os três fabricantes de microprocessadores/microcontroladores mais citados foram: Espressif, STMicroeletronics e Microship/Atmel. Já no cenário global, os três mais citados foram: STMicroeletronics, Microship e Texas Instruments.

### Questão 3
**Recorra ao exemplo do microcontrolador aplicado ao controle de um elevador que foi
apresentado em aula, disponível nas transparências do Cap. 2. Quais as vantagens de se utilizar
um microcontrolador para aquele tipo de aplicação e qual deve ser o “perfil” de um
microcontrolador ideal para aquela aplicação do elevador em termos de capacidade da CPU
(baixa, média ou alta), quantidade de bits no barramento, e precisão no tratamento das
informações (operação somente com inteiros ou ponto flutuante?)**

As principais vantagens de se utilizar um microcontrolador para realizar o controle do elevador podem ser citadas como segue: redução do tamanho do controlador (que contaria com vários circuitos integrados), menor consumo de energia, redução do tempo e custo de projeto, maior confiabilidade (já que a probabilidade de falhas é proporcional ao número de componentes) e facilidade de manutenção.

Já o perfil ideal desse microcontrolador envolveria: baixa capacidade de processamento da CPU, 8 bits no barramento já seriam suficientes, operação somente com inteiros.

### Questão 4
**Quanto às portas paralelas de um microcontrolador:**

**( ) São somente de entrada**

**( ) São somente de saída.**

**( ) Cada palavra (A, B, C, P1, P2, P3…) pode ser configurada como entrada ou saída.**

**( ) Cada bit pode ser configurado como entrada ou saída.**

**( ) Cada palavra (A, B, C... P1, P2, P3…) pode ser configurada como entrada, saída ou
bidirecional.**

(V) Cada bit pode ser configurado como entrada, saída ou bidirecional.

### Questão 5
**Assinale V para verdadeiro e F para falso nas afirmações abaixo:**

**( ) No modelo de Von Neumann, o microprocessador segue as instruções armazenadas na
memória ROM (programas), lê as entradas e envia comandos sobre os canais de saída,
alterando as informações contidas na memória RAM.**

**( ) Os registradores Special Function Registers localizam-se sempre internos à CPU.**

**( ) O ciclo de máquina é composto pelo ciclo de busca mais o ciclo de execução, cada qual
demorando um pulso de clock.**

**( ) A instrução “CLR A” não possui operando e gasta apenas 1 ciclo de máquina**

**( ) A arquitetura Von Neumann é considerada uma arquitetura mais simples do que a arquitetura
Harvard porque utiliza o mesmo barramento para o tráfego de dados e de instruções.**

**( ) A técnica de pipeline é impossível de ser utilizada em computadores de arquitetura Von
Neumann.**

F - F - V - V - V - V

### Questão 6
**Indique quais afirmativas se aplicam a uma instrução CISC e quais a uma instrução RISC:**
➔ **Os programas são mais complexos**
➔ **A maioria das instruções tem a mesma duração**
➔ **Mais instruções disponíveis**
➔ **Programas menores**
➔ **Utiliza menos espaço na memória de programa**
➔ **Processamento de cada instrução é mais lento**
➔ **Microcontroladores PIC, AVR, ARM**
➔ **Tempo de execução das instruções depende da frequência do clock.**

RISC - RISC - CISC - CISC - RISC - CISC - RISC - CISC

### Questão 7
**Abaixo é apresentado o diagrama de um microcontrolador. Qual a arquitetura utilizada e como
chegamos a essa conclusão? Quantas portas I/O bidirecional e quantas linhas (bits/pinos) são
endereçados de forma individual neste microcontrolador, com base no diagrama abaixo?**

![image](https://github.com/BrunoCiotta/Aplica-es-de-micros/assets/85022924/c01eebe2-8a9f-4dbf-b3f1-31c1f98941cd)

Pela imagem, percebe-se que se trata de uma arquitetura von Neumann, tendo em vista que dados e instruções compartilham o mesmo barramento.

Existem quatro portas I/O bidirecionais e duas linhas (pinos P0 e P2) são endereçados de forma individual.

### Questão 8
**No simulador EdSim51, digite e execute (clicando em “Assm”) as instruções abaixo:**
```
MOV R0, #22h
MOV 00h, #22h
```
**Qual a diferença entre as duas instruções acima? Tente refletir porque possuem ciclos de
máquina diferentes se a operação é realizada na mesma posição de memória RAM (00h ou
R0 usa o mesmo espaço).**
```
MOV A, #22h
MOV ACC, #22h
```
**Qual a diferença entre as duas instruções acima? Tente refletir sobre a diferença de usar A ou
ACC e sobre porque possuem ciclos de máquina diferentes se a operação realizada é a
mesma.**

### Questão 9
**A Figura abaixo mostra um microcontrolador genérico de 8 bits com 4 registradores internos à
CPU, os quais são: Instruction Register (IR), Program Counter (PC), Accumulator (ACC) e
Data Pointer (DPTR). Baseado na Figura abaixo, responda às questões com verdadeiro (V) ou
Falso (F):**
![image](https://github.com/BrunoCiotta/Aplica-es-de-micros/assets/85022924/422fc18f-b906-4638-a52f-1f7e91619698)
**( ) Trata-se de um microcontrolador de arquitetura Harvard.**

**( ) A memória EEPROM é de 4Kbytes e armazena as instruções que comandam o
microcontrolador.**

**( ) A memória SRAM é de 512 bytes e armazena dados voláteis**

**( ) O registrador IR tem a função de armazenar a instrução lida da memória SRAM.**

**( ) Para esse microcontrolador, o registrador IR deve ser de 8 bits.**

**( ) O registrador PC armazena o endereço da instrução lida da memória EEPROM.**

**( ) Para esse microcontrolador, o registrador PC deve ser de 10 bits.**

**( ) Para esse microcontrolador, o registrador ACC deve ser de 8 bits.**

**( ) O registrador DPTR é um ponteiro que aponta para a última instrução lida da memória.**

**( ) Para esse microcontrolador, o registrador DPTR deve ser de 10 bits.**

### Questão 10
**Responder com Verdadeiro (V) ou Falso (F) às seguintes afirmações.**

**( ) A pilha é uma memória RAM sequencial do tipo FIFO.**

**( ) A pilha geralmente é utilizada para armazenar endereço de retorno de subrotinas e também
de interrupções.**

**( ) O ponteiro de pilha (Stack Pointer) é um registrador que aponta para um endereço da
memória ROM, que é o endereço de retorno do programa após o atendimento a uma interrupção
ou sub-rotina.**

**( ) As instruções PUSH e POP são exclusivas para operações com pilha.**

**( ) A instrução CALL <endereço> deve ser usada para indicar qual endereço o programa deve
desviar no caso de um atendimento à interrupção ou chamada de sub-rotina.**

**( ) A instrução RET, colocada no final de uma sub-rotina, faz com que o último endereço
armazenado na pilha seja carregado no registrador PC (program counter).**

**( ) A área da RAM interna dedicada à pilha é determinada pelo ponteiro SP, um dos SFRs, que
possui tamanho 8 bits, mesmo tamanho do barramento de endereço da CPU.**

**( ) Geralmente são baseadas em flip-flops tipo D.**

### Questão 11
**Refletir se existe diferença entre o endereço armazenado em um espaço de pilha e o endereço
armazenado no Stack Pointer (SP)?**

### Questão 12
**Colocou-se 3 LEDs nos endereços P1.0, P1.1 e P1.2 no microcontrolador e 3 chaves nos
endereços P2.0, P2.1 e P2.2. Considerando que os LEDs acendem quando é colocado nível
baixo na saída e as chaves, quando pressionadas, colocam nível baixo na porta, explique o
funcionamento do programa abaixo quando cada uma destas 3 chaves são pressionadas.**
```
ORG 0000H
Leitura:
	JNB P2.0, PX
	JNB P2.1, PY
	JNB P2.2, PZ
	LCALL Leitura
PX:
	MOV P1, #0
RET
PY:
	MOV P1, #00000101b
	RET
	PZ:
	MOV A, P1
	CPL A
	MOV P1, A
	RET
FIM:
	SJMP FIM
```

## Códigos
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
	MOV		DPTR,#9A5Bh	;move o valor 9A5Bh para o DPTR - 2us (2 ciclos)
	NOP				;consome 1us sem nenhuma operacao - 1us (1 ciclo)
	JMP		$		;segura o programa nessa linha - 2us (2 ciclos)

end				;encerra o programa
 ```

### Atividade 2
```
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
```

### Atividade 3
```
org 0000h

inicio:

	MOV A,#01010101b    ;Move de forma imediata para o ACC o valor binario indicado - duração: 1us (1 ciclo)
	MOV B,#10010101b    ;Move de forma imediata para B o valor binario indicado - duração: 1us (1 ciclo)
	ANL A,B             ;Realiza o AND logico entre A e B - duração: 1us (1 ciclo)
	RR A                ;Rotaciona A a direita em 1 bit - duração: 1us (1 ciclo)
	RR A                ;Rotaciona A a direita em 1 bit - duração: 1us (1 ciclo)
	CPL A               ;Realiza o complemento de A - duração: 1us (1 ciclo)
	RL A                ;Rotaciona A a esquerda em 1 bit - duração: 1us (1 ciclo)
	RL A                ;Rotaciona A a esquerda em 1 bit - duração: 1us (1 ciclo)
	ORL A,B             ;Realiza o OR logico entre A e B - duração: 1us (1 ciclo)
	XRL A,B             ;Realiza o XOR logico entre A e B - duração: 1us (1 ciclo)
	SWAP A              ;Realiza o SWAP de A - duração: 1us (1 ciclo)
	JMP inicio          ;Salta para a label inicio - duração: 1us (1 ciclo)

end                 ;Fim do programa - duracao total: 12us
```

### Atividade 4
```
org 00h

JMP main            ;Salta para a label main - duração: 2us (2 ciclos)
org 33h      

main:               ;Label main
	CLR	A               ;Limpa o ACC - duração: 1us (1 ciclo)
	MOV	R0,#78h         ;Move o valor 78h para R0 - duração: 1us (1 ciclo)

bloco1:             ;Label bloco1
	JZ	bloco2      ;Salta para bloco2 se A = 0 - duração: 2us (2 ciclos)
	JNZ	bloco3      ;Salta para bloco3 se A != 0 - duração: 2us (2 ciclos)
	NOP                 ;Nao realiza operacao - duração: 1us (1 ciclo)

bloco2:             ;Label bloco2
	MOV A,R0            ;Move o conteudo de R0 para o ACC - duração: 1us (1 ciclo)
	JMP bloco1          ;Salta incodicionalmente para bloco1 - duração: 2us (2 ciclos)

bloco3:             ;Label bloco3
	DJNZ R0, bloco3     ;Decrementa R0 e salta para bloco3 se R0 != 0 - duração: 2us (2 ciclos)
	JMP	main        ;Salta incodicionalmente para main - duração: 2us (2 ciclos)

end                 ;Fim do programa - duração total: 16us
```

### Atividade 5
```
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
```
