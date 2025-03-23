section .bss
    buffer resb 100  ; Reserve 100 bytes for input

section .text
    global read_input

read_input:
    mov rax, 0      ; syscall: read
    mov rdi, 0      ; file descriptor: stdin
    mov rsi, buffer ; buffer location
    mov rdx, 100    ; max input length
    syscall
    ret             ; Return from function
