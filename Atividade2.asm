org 00h

inicio:
MOV A, #2 ; dura��o - 1us
MOV B, #3 ; dura��o - 2us
MOV 20h, #7 ; dura��o - 2us
ADD A, 20h ; dura��o - 1us
DEC A ; dura��o - 1us
DEC A ; dura��o - 1us
DEC A ; dura��o - 1us
INC B ; dura��o - 1us
SUBB A, B ; dura��o - 1us
MUL AB ; dura��o - 4us
INC B ; dura��o - 1us
INC B ; dura��o - 1us
DIV AB ; dura��o - 4us
MOV 21h, A ; dura��o - 1us
MOV 22h, B ; dura��o - 2us
JMP inicio ; dura��o - 2us

end