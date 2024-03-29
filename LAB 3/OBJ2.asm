.data
count db 04h
array db 09h,10h,05h,03h
.code
main proc
    mov ax,data
    mov ds,ax
    mov cl,count
    mov dl,01h
    lea si,array 
    mov al,[si]
    
    outerloop:
        inc dl     ;pass index
        inc si     ;to next index
        cmp al,[si]
        jnl swap
        afterSwap:
        mov al,[si]
        cmp dl,cl
        jne outerloop
        dec cl
        jz terminate
        mov dl,00h
        lea si,array
        mov al,[si]
        jmp outerloop
        
        
        swap:
            mov bl,[si]
            mov bh,[si-1]
            mov [si-1],bl
            mov [si],bh
            jmp afterSwap
            
    terminate: 
    end main
            