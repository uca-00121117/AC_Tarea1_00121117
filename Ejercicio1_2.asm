org 100h 
;limpiando 
mov cx,0
mov al,0
mov bl,0
mov ax,0
;cx->10
mov cx,10d
mov [0200h],cx
;cx->al
mov al,[0200h]

;bl->3
mov bl,3d
mov [0210h],bl

;bl->210
mov bl,[0210h]
div bl
;al-> 0220 -> cx/bl
mov [0220h],al

int 20h