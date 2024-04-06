org 0000h

inicio:

MOV A,#01010101b ; duração - 1us
MOV B,#10010101b ; duração - 1us
ANL A,B ; duração - 1us
RR A ; duração - 1us
RR A ; duração - 1us
CPL A ; duração - 1us
RL A ; duração - 1us
RL A ; duração - 1us
ORL A,B ; duração - 1us
XRL A,B ; duração - 1us
SWAP A ; duração - 1us
JMP inicio ; duração - 1us
end
