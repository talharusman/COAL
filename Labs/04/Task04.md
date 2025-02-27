# code
``` asm
include Irvine32.inc
.data
	Val1 DWORD 25h
	Val2 BYTE 36o
	Val3 WORD 20d
.code
main proc
  ;1. EAX = 89 + 75Fh - 46o - 28 +1101b
	mov EAX,89 + 75Fh - 46o - 28 +1101b
	call writeint
	call crlf

	;2. EAX = Val1 + Val2 - 654h + Val3
	mov EAX,val1
	movzx EBX,val2
	add EAX,EBX
	sub EAX,654h
	movzx EBX,val3
	add EAX,EBX
	call writeint
	exit
main ENDP
END main
```
# output
![image](https://github.com/user-attachments/assets/a96bed3a-0896-442b-9241-7a7c13c4b044)
