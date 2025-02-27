# code
``` asm
include Irvine32.inc
.data
.code
main proc
	MOV AL, 54h   ; Store ASCII code of 'T' in AL (lower byte of AX)
	MOV BL, 41h   ; Store ASCII code of 'A' in BL
	MOV CL, 6Ch   ; Store ASCII code of 'L' in CL
	call dumpregs
	exit
main ENDP
END main
```
# output
![image](https://github.com/user-attachments/assets/a78d678d-3334-4ee7-b663-d76b3c184662)
