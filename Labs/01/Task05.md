## Task05:
```asm
include irvine32.inc
.data
 a DWORD 11h
 b DWORD 10h
 x DWORD 30h; we can use 'c'
 d DWORD 40h

.code
	main proc
	mov eax,a
	add eax,b
	mov ecx,a
	sub ecx,b

	sub eax,ecx
	add eax,x

	add eax,d

	mov ebx,eax

	call dumpregs

	exit
main endp
end main 
```
#### OUTPUT
![image](https://github.com/user-attachments/assets/1a8a94ae-5799-44fc-80ad-93dfe78a54e9)
