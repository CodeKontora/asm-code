section	.data
msg db	'This is macro', 0xA	
len equ $ - msg			


%macro write_string 2 
    mov   eax, 4
    mov   ebx, 1
    mov   ecx, %1
    mov   edx, %2
    int   80h
   %endmacro
 
 
section	.text
   global _start            
	
_start:                     
   write_string msg, len
   write_string msg, len
   write_string msg, len
	
   mov eax,1                
   int 80h 