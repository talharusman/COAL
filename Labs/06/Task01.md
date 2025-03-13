## code 
```
include irvine32.inc
.data
.code
main proc
	call readint
	mov ecx,eax
	mov eax,0
	mov ebx,1
	mov edx,0

	L1:
	call writeint
	mov edx,eax
	mov eax,ebx
	add ebx,edx
	LOOP L1

	
	exit
main endp
end main 
```
## output
![image](https://github.com/user-attachments/assets/0b6f5c62-d7f5-4ef4-8570-8ed44eef8ecd)
