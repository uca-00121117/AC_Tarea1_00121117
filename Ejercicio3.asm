org 100h
section .text
        mov ax,00
        mov ax,[200h]

        mov bx,00
        mov bx,[210h]

        cmp bx,0
        jne no0

        cmp bx,0
        je  si0
no0:    div bx
        mov [220h],ax
        int 20h
si0:    mov cx,0
        mov di,0
        ;mov cx,[len] ;me da bucle
        mov cx ,5;
        mov bl,0
lupi    mov bl,[comnt+di]
        mov [di+205h],  bl
        inc di
        loop lupi
        int 20h
        
section .data   
comnt   db      "ERROR"
len     equ     $-comnt
