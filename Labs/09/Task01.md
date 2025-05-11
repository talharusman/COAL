# code 
```asm
include irvine32.inc
.data
.code
main proc
	mov eax,10
	mov ebx,eax
	mov ecx,eax
	shl eax,4
	shl ebx,2
	add eax,ebx
	add eax,ecx
	call writeint
exit
main endp
end main
```
# output
![image](https://github.com/user-attachments/assets/e351547d-3be7-4808-9a6e-269d6a9a9682)
