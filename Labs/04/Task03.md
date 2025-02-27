# code
``` asm
include Irvine32.inc
.data
varB BYTE +10
varW SWORD -150
varD DWORD 600
.code
main proc
	movzx EAX,varB
	movzx EBX,varW
	mov ECX,varD
	call dumpregs
	exit
main ENDP
END main
```
# output
![image](https://github.com/user-attachments/assets/e319cbf3-4dd6-4864-8b6d-7e757975d88e)
