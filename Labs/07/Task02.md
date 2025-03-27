# code 
```
include irvine32.inc
.data
	a dword 3
	b dword 4
	d dword 9
.code
main proc
	push a
	push b
	push d
	pop eax
	pop ebx
	add eax,ebx
	pop ebx
	add eax,ebx
	call writedec 
	call crlf
   exit
main endp
end main

```

# output
![image](https://github.com/user-attachments/assets/fac49cfe-2497-4f9a-af3e-76e1849e4c87)
