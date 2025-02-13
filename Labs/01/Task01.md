## Task01:
...asm
include irvine32.inc
.data
val1 WORD ?
val2 SBYTE -11
.code
  main proc
	 mov AX,val1
	mov BL,val2
	call dumpregs
  exit
main endp
end main 
...
### OUTPUT
![image](https://github.com/user-attachments/assets/2fcf98ef-a345-4efd-9bb0-b1482a7ed323)
