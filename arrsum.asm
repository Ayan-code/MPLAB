.model small
.data

A db 12,24,56,49
sum dw 0
.code

mov ax,@data
mov ds,ax
mov cl,4
xor di,di
lea bx,A

back: mov al,[bx+di]
      mov  ah,00
      add sum,ax
      inc di
      dec cl
      jnz back
end

