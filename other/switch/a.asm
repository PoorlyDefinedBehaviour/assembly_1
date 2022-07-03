; nasm -felf64 a.asm && ld a.o && ./a.out

global _start

section .text
_start:
  mov eax, 1
  cmp eax, 0
  je case_a
  cmp eax, 1
  je case_b

case_a:
  mov rax, 1 ; syscall for write
  mov rdi, 1 ; file handle1 is stoud
  mov rsi, case_a_message ; address of string to output
  mov rdx, 6 ; string length
  syscall
  mov rax, 60 ; system call for exit
  xor rdi, rdi ; exit code 0
  syscall ; exit

case_b:
  mov rax, 1 ; syscall for write
  mov rdi, 1 ; file handle1 is stoud
  mov rsi, case_b_message ; address of string to output
  mov rdx, 6 ; string length
  syscall
  mov rax, 60 ; system call for exit
  xor rdi, rdi ; exit code 0
  syscall ; exit

section .data
case_a_message: db "case a", 6
case_b_message: db "case b", 6