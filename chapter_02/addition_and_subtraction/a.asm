; nasm -felf64 a.asm && ld a.o && ./a.out
; nasm -felf64 a.asm && g++ main.cpp a.o && ./a.out

          global    MyFunction

          section   .text
MyFunction:   
          mov eax, edi ; eax = a
          add eax, esi ; eax = a + b
          add eax, edx ; eax = a + b + c
          sub eax, ecx ; eax = a + b + c - d
          ret