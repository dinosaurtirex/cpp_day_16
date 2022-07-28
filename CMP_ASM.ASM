.model large,c
.data
extrn aaaS:word, bbbS:word, result:word
.code
Public Lab2S
Lab2S proc far
mov ax, aaaS
mov bx, bbbS
cmp ax, bx
jg @abigger ; ax > bx
je @equal  ; ax == bx
jl @aless  ; ax < bx

@aless:
cwd
idiv bbbS
add ax, 2
jmp @exit


@equal:
mov ax, -1
jmp @exit


@abigger:
cwd
imul bbbS
sub ax, 1
jmp @exit

@exit:
mov result, ax


ret
endp
end