MOV SI,2000H
MOV AL,[SI]
MOV CL,08H
MOV CH,00H
L2:
    SHR AL,01
    JC L1
    INC CH
    L1: 
        DEC CL
        JNZ L2 
INC SI
MOV [SI],CH
HLT