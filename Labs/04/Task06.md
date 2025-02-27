# code 
``` asm
include irvine32.inc
.data
	SecondsInDay =  60*60*24
	
.code
main proc
	mov eax, SecondsInDay
	call writeint
	exit
main endp
end main 
```
# output
![image](https://github.com/user-attachments/assets/2951520f-e1d3-4efe-b262-1f66190d0734)

