## Task06:
```asm
include irvine32.inc
.data
 a BYTE 00010001b
 b BYTE 00010000b
 x BYTE 00110000b; we can use 'c'
 d BYTE 01000000b

.code
	main proc
	mov al,a
	add al,b
	mov cl,a
	sub cl,b

	sub al,cl
	add al,x

	add al,d

	mov bl,al

	call dumpregs

	exit
main endp
end main
```
### OUTPYUT
![image](https://github.com/user-attachments/assets/9494f1c1-131f-44ca-8331-5e4f1cb10245)

