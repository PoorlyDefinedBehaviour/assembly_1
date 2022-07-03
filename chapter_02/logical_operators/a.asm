; nasm -felf64 a.asm && ld a.o && ./a.out
; nasm -felf64 a.asm && g++ -no-pie main.cpp a.o && ./a.out

          global    integer_logical

          extern global_var

          section   .text
integer_logical:   
          and ecx, edx ; ecx = a & b
          or ecx, eax  ; ecx = (a & b) | c
          xor ecx, ecx ; ecx = ((a & b) | c)
          add ecx, [global_var] ; ecx = (((a & b) | c) ^ d) + global_var
          mov eax, ecx ; 32-bit return value must be in eax
          ret