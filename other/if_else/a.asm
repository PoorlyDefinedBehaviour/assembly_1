; nasm -felf64 a.asm && ld a.o && ./a.out

global _start

section .text
_start:
  mov eax, 0
  cmp eax, 1
  je then
  jne else
then:
  mov rax, 1 ; syscall for write
  mov rdi, 1 ; file handle1 is stoud
  mov rsi, then_message ; address of string to output
  mov rdx, 13 ; string length
  syscall
  mov rax, 60 ; system call for exit
  xor rdi, rdi ; exit code 0
  syscall ; exit
else:
  mov rax, 1 ; syscall for write
  mov rdi, 1 ; file handle1 is stoud
  mov rsi, else_message ; address of string to output
  mov rdx, 13 ; string length
  syscall
  mov rax, 60 ; system call for exit
  xor rdi, rdi ; exit code 0
  syscall ; exit
section .data
  then_message: db "then executed", 13
  else_message: db "else executed", 13