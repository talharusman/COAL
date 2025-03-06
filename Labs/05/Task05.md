# code
```
include Irvine32.inc
.data
	array1 BYTE 10, 20, 30, 40
	array2 BYTE 4 DUP (?)
.code
main proc
	mov eax,0
	mov esi, offset array1
	mov edi, offset array2+3

	mov al,[esi]
	mov [edi], al
	INC esi
	DEC edi

	mov al,[esi]
	mov [edi], al
	INC esi
	DEC edi

	mov al,[esi]
	mov [edi], al
	INC esi
	DEC edi

	mov al,[esi]
	mov [edi], al
	INC esi
	DEC edi

	mov al, array2[0]
	call writeint
	call crlf

	mov al, array2[1]
	call writeint
	call crlf

	mov al, array2[2]
	call writeint
	call crlf

	mov al, array2[3]
	call writeint
	call crlf





  exit
main ENDP
END main

```
# output
![image](https://github.com/user-attachments/assets/a2ac2b82-d699-46bf-90c2-a1ace9286767)
