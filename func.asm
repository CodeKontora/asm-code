section	.data
msg	db	'This is func', 0xA
len	equ	$ - msg


section	.text
	global _start
	
_start:
    call output_hello
    call output_hello
    call output_hello
    
    mov eax, 1
    int 80h
    
output_hello:
    mov	eax, 4
    mov	ebx, 1
    mov	ecx, msg
    mov	edx, len   
    int	80h  
    ret