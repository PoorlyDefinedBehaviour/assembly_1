; nasm -felf64 a.asm && ld a.o && ./a.out
; nasm -felf64 a.asm && g++ -no-pie main.cpp a.o && ./a.out
;
; extern "C" int integer_shift(unsigned int a, unsigned int count, unsigned int *a_shl, unsigned int *a_shr);
;
; Returns: 0 = error (count >= 32), 1 = success

global integer_shift

section .text
integer_shift:
  xor eax, eax ; zeroes eax
  cmp rsi, 31 ; compare count against 31
  ja invalid_count

  xchg ecx, edx ; exchange contents of ecx & edx
  mov eax, edx ; eax = a
  shl eax, cl ; eax = a << count
  mov [r8], eax ; save result

  shr edx, cl ; edx a >> count
  mov [r9], edx ; save result
  mov eax, 1 ; set return code to 1

invalid_count:
  ret


  

          