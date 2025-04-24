# code 
```
include irvine32.inc
.data
	x dword ?
	var dword 5
	vals sword 0,0,0,150,120,35,-12,66,4,0
.code
main proc
	mov edx,var + 1
	mov esi,0
	mov ecx,lengthof vals
	
	cmp var,ecx
	jge ElseCase
	cmp ecx,edx
	jl ElseCase
	mov x,0
	jmp print
	ElseCase:
	mov x,1
	print:
	mov eax,x
	call writeint
   exit
main endp
end main

```
# output
![image](https://github.com/user-attachments/assets/ec7a9e27-fc05-4a7e-96ff-fc00d0217990)
