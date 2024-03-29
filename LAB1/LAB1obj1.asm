     MOV AX,3234H
     MOV CX,AX
     ADD AX,1111H
     MOV [5000H],AX
     MOV AX,CX
     SUB AX,1111H
     MOV [5002H],AX
     MOV AX,CX
     MOV BX,0002H
     MUL BX
     MOV [5004H],AX
     MOV [5006H],DX
     MOV AX,CX
     DIV BX
     MOV [5008H],AX
     MOV [500AH],DX
     HLT