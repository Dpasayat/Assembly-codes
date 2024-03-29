.DATA
    count dw 0004h
    array dw 0xffff,0xabcd,0x4500,0x2301
    sum dw 2 dup(0h)
    avg dw 2 dup(0h)
.code
    main proc
        mov ax,DATA
        mov ds,ax
        mov ax,0000h 
        mov cx,count
        lea si,array
        mov ax,[si]
        sumLoop:
        inc si
        inc si
        add ax,[si]
        jnc l2
        inc dx
    l2: dec cx
        jz l1
        jmp sumLoop
        l1:
        mov sum,dx
        mov sum+2,ax
        mov dx,0000h
        mov bx,count
        div bx
        mov avg,dx
        mov avg+2,ax
        
     end main 