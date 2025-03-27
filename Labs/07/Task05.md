# code 
``` asm
include irvine32.inc
.data
	m1 byte "Enter Natural Number: ",0
	m2 byte "Sum is: "
.code
main proc
	mov eax,0
	call SunmOfNatural
	mov edx, offset m2
	call writestring
	call writedec
   exit
main endp

SunmOfNatural proc
	 mov edx,offset m1
	 call writestring
	 call readint
	 mov ecx,eax
	 mov eax,0
	 L1:
	 add eax,ecx
	 loop L1
	 ret
SunmOfNatural endp

end main

```
# output
![image](https://github.com/user-attachments/assets/f0dd30b7-efac-4d4e-83d7-287fdd48d28c)

