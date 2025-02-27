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
![image](https://github.com/user-attachments/assets/69dacb5d-6367-4cd0-bb00-323d24a921df)
