.model large
DATA SEGMENT
whatName db 'Whats your name?$'
sayHello db 'Hello, $'
nline db '', 0Dh, 0Ah, '$'

namepar label byte
maxlen db 100
actlen db ?
namefld db 100 dup ('$')

DATA ENDS
STK SEGMENT STACK
db 256 dup('')
STK ENDS
CODE SEGMENT
ASSUME CS:CODE, DS:DATA, SS:STK
START:
mov ax,DATA
mov DS,AX

lea dx, whatName
mov ah,09
int 21h

lea dx, nline
int 21h

mov ah, 0ah
int 21h

lea dx, namepar
mov ah, 0ah
int 21h

mov ah,09
lea dx, nline
int 21h

lea dx, sayHello
int 21h

lea dx, namefld
int 21h

mov ah, 4ch
int 21h

ret
code ends
end


