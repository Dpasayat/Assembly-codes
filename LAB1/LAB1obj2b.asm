MOV SI,2000H
MOV AL,[SI]
MOV BL,[SI+1]
MOV DL,AL
AND AL,BL
XOR DL,AL
OR AL,DL
MOV [SI+2],AL
HLT
