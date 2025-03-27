# code 
``` asm
include irvine32.inc
.data
	arr1 dword 12,32,23,54,25
	arr2 dword 61,47,28,29,10
.code
main proc
	mov eax,0
	mov ebx,0
	call first_arr
	call second_arr
	call Result
	call writeint
   exit
main endp

first_arr proc
	mov ecx, lengthof arr1
	mov esi,0
	L1:
	add eax,arr1[esi]
	add esi, type arr1
	loop L1
	ret
first_arr endp

second_arr proc
	mov ecx, lengthof arr2
	mov esi,0
	L2:
	add ebx,arr2[esi]
	add esi, type arr2
	loop L2
	ret
second_arr endp

Result proc
	add eax,ebx
	ret
Result endp

end main

```

# output
![image](https://github.com/user-attachments/assets/d7c50cb6-71b5-4ad3-8312-2a0898095327)
