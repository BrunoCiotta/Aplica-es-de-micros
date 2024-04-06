org 00h

inicio:
MOV A, #2 ; duração - 1us
MOV B, #3 ; duração - 2us
MOV 20h, #7 ; duração - 2us
ADD A, 20h ; duração - 1us
DEC A ; duração - 1us
DEC A ; duração - 1us
DEC A ; duração - 1us
INC B ; duração - 1us
SUBB A, B ; duração - 1us
MUL AB ; duração - 4us
INC B ; duração - 1us
INC B ; duração - 1us
DIV AB ; duração - 4us
MOV 21h, A ; duração - 1us
MOV 22h, B ; duração - 2us
JMP inicio ; duração - 2us

end