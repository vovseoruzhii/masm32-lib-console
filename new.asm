include new.inc

.code
start:

push offset szTitle
call SetConsoleTitleA@4

push 0
call ExitProcess@4

;----------
onekey proc

push offset szOneKey
call StdOut@4

push -0Ah
call GetStdHandle@4
mov ebx,eax

push 0
push eax
call SetConsoleMode@8

push 0
push offset cnt
push MAX
push offset szBuffer
push ebx
call ReadConsoleA@20

onekey endp
;----------

;----------
strlen proc
push ebp
mov ebp,esp

mov ebx,dword ptr[ebp+8]
mov eax,0
_while:

cmp byte ptr[ebx],0
jz _end_while
inc eax
inc ebx
jmp _while

_end_while:

mov esp,ebp
pop ebp
ret 4
strlen endp
;----------

end start