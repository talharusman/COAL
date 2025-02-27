# code 
``` asm
include irvine32.inc
.data
	A DWORD  0FF10h
	B DWORD  0E10Bh
.code
main proc
	mov eax, A
	XCHG eax, B 
	mov A,eax
	call dumpregs
	exit
main endp
end main 
```
# output
![image](https://github.com/user-attachments/assets/fcd2ee24-9a6a-40da-b80c-e79a6584e7de)

