# code 
```
include irvine32.inc
.data
	 intarr SWORD 0,0,0,150,120,35,-12,66,4,0
	 msg1 byte "The frist Non Zero num is: ",0
	 msg2 byte "There is all values are zero:",0
.code
main proc
	mov esi,0
	mov ecx,lengthof intarr

	L1:
		cmp intarr[esi],0
		jne NonZeror
		add esi,2
	LOOP L1

	mov edx, offset msg2
		call writestring
		jmp next

	NonZeror:
		mov edx, offset msg1
		call writestring
		mov ax,intarr[esi]
		movzx eax,ax
		call writeint

	next:
     exit
main endp
end main


```
# output
![image](https://github.com/user-attachments/assets/3e3a9142-612c-47df-93c5-96548b130ba5)
