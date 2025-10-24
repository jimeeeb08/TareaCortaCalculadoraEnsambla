; Operaciones en 64 bits

global suma64
global resta64

section .text

; int64_t suma64(int64_t a, int64_t b)
; a -> rdi, b -> rsi, return -> rax
suma64:
    mov rax, rdi
    add rax, rsi
    ret

; int64_t resta64(int64_t a, int64_t b)
; a -> rdi, b -> rsi, return -> rax
resta64:
    mov rax, rdi
    sub rax, rsi
    ret
