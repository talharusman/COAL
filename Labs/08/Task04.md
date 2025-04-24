# code 
```
include irvine32.inc
.data

	var dword 0
	msg1 byte "Hello",0
	msg2 byte "world",0

.code
main proc
	
	_while:
		cmp var,10
		jge end_while
		inc var
		cmp var,5
		jge print
		mov edx, offset msg1
		call writestring
		
	jmp _while

	print:
		mov edx, offset msg2
		call writestring
	jmp _while

	end_while:
	call crlf
		exit
main endp
end main

```
# output
![image](https://github.com/user-attachments/assets/713d7b6c-6554-4152-b594-467c50b28074)
