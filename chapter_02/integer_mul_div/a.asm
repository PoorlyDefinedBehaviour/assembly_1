; nasm -felf64 a.asm && g++ -no-pie main.cpp a.o && ./a.out
;
; extern "C" int integer_mul_div(int a, int b, int *prod, int *quo, int *rem);
;
; Returns: 0 = error (divisor equals zero) 1 = success

global integer_mul_div

section .text
integer_mul_div:
  mov eax, esi ; eax = b
  jz invalid_divisor ; return error if b is zero

  imul eax, edi ; b * a
  mov [rdx], eax ; save b * a result in *prod (NOTE: pointers are 64-bit)
  
  mov eax, 1 ; set success code

invalid_divisor:
  ret
  