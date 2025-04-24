# code 
```
include irvine32.inc
.data
	msg1 byte "Enter 4 intergers: ",0
	msg2 byte "values are equal",0
	msg3 byte "values are not equal",0
	arr DWORD 4 DUP(?)
.code
main proc
	mov eax,0
	mov edx, offset msg1
	call writestring
	mov esi,0
	
	mov ecx,4
	L1:
	    call readint
		mov arr[esi],eax
		add esi,4
	LOOP L1
	mov esi,0
	mov eax,arr[esi]
	add esi,4
	mov ecx,3
	L2:
	 cmp eax,arr[esi] 
	 JNE NOTEQUAL
	 add esi,4
	 loop L2

	 mov edx, offset msg2
	 call writestring
	 jmp next

	 NOTEQUAL:
	    mov edx, offset msg3
	    call writestring
	    jmp next

	next:
   exit
main endp
end main


```
# output
![image](https://github.com/user-attachments/assets/6306b15d-b822-4514-9325-b35188379cd3)

