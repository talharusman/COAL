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
	mov ebx.B
	call dumpregs
	exit
main endp
end main 
```
# output
![image](https://github.com/user-attachments/assets/1e40f8ff-567d-4eea-ab47-8497af0aa47d)


