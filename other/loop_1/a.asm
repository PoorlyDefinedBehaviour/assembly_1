; nasm -felf64 a.asm && gcc -no-pie a.o && ./a.out

section .text

extern printf
global main

main:
  mov ecx, 3
  jmp loop_start

loop_start:
  push rbp
  mov rdi, format_str 
  mov rsi, rcx
  mov rax, 0
  push rcx ; save ecx because it is used by loop
  call printf wrt ..plt
  pop rcx
  pop rbp
  loop loop_start

section .data 
format_str: db "i= %d\n", 0