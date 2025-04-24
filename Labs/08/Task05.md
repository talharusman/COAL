# code
```
include irvine32.inc
.data

	arr WORD 10, 4, 7, 14, 299, 156, 3, 19, 29, 300, 20
	msg1 byte "Number is find",0
	msg2 byte "Number is not find",0
	msg3 byte "inter any int: ",0


.code
main proc
	
	mov eax,0
	mov edx, offset msg3
	call writestring
	call readint

	mov ecx, lengthof arr
	mov esi,0

	L1:
		movzx edx, arr[esi]
		add esi,2
		cmp eax, edx
		je Find
	LOOP L1

	mov edx, offset msg2
	call writestring
	jmp next

	Find:
	mov edx, offset msg1
	call writestring

	next:
	call crlf
		exit
main endp
end main

```
# output
![image](https://github.com/user-attachments/assets/a0cf2979-2c8e-49dd-85a9-1660e5a86bfe)

