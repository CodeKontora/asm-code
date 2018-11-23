section .data
msg_for_loop db "Heeey", 0xA
len_1 equ $ - msg_for_loop

msg_after_loop db "LA-LA-LEY", 0xA
len_2 equ $ - msg_after_loop


section	.text
   global _start    
	
_start:	

mov ecx, 3
out_msg:
    mov eax, 4
    mov ebx, 1
    push ecx
    mov ecx, msg_for_loop
    mov edx, len_1
    int 80h
    pop ecx
    loop out_msg
    
 
mov eax, 4
mov ebx, 1
mov ecx, msg_after_loop
mov edx, len_2
int 80h
  
mov	eax,1
int	80h