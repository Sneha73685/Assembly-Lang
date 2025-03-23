section .data
    message db "Hello, World!", 0Ah  ; Define message with newline

section .text
    global _start

_start:
    mov rax, 1          ; syscall: write
    mov rdi, 1          ; file descriptor: stdout
    mov rsi, message    ; address of message
    mov rdx, 14         ; length of message
    syscall             ; invoke syscall

    mov rax, 60         ; syscall: exit
    xor rdi, rdi        ; exit code: 0
    syscall             ; invoke syscall
