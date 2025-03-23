section .text
    global print_string

print_string:
    mov rax, 1      ; syscall: write
    mov rdi, 1      ; file descriptor: stdout
    syscall
    ret             ; Return from function
