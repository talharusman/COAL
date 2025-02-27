# code
``` asm
include irvine32.inc
.data
	val1 BYTE 10h
	val2 WORD 8000h
	val3 DWORD 0FFFFh
	val4 WORD 7FFFh
.code
main proc
	inc val1
	mov EAX,9000h
	sub EAX,val3
	mov bx,val2
	sub bx,val4
	mov val2,bx

	call dumpregs
	exit
main endp
end main 
```
# output
![image](https://github.com/user-attachments/assets/5fc06d4d-0711-447c-9b18-914ed4505dd9)
