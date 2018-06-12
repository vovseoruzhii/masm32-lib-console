.386
.model flat,stdcall
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib

extern ExitProcess@4:near
extern SetConsoleMode@8:near
extern StdIn@8:near
extern StdOut@4:near
extern StripLF@4:near
extern GetStdHandle@4:near
extern ReadConsoleA@20:near
extern SetConsoleTitleA@4:near

.const

MAX equ 255

.data 

szBuffer db 255 dup(0)
szOneKey db "Press any key to exit.......",0
szStr db "Hello",0
cnt dd 0
szTitle db "Oh,hello there",0