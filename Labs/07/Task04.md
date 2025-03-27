# code
```
include irvine32.inc
.data
	cols dword 5
.code
main proc
	call Printer
   exit
main endp

Printer proc
	 mov eax,1
	 mov ecx,cols

	 L1:
	 
	 push ecx
	 push eax
	 mov ecx,cols
	 sub ecx,eax

	 Gap:
		 cmp ecx,0
		 jle exit_gap
		 mov eax,32
		 call writechar
	 loop Gap

exit_gap:
	 pop eax
	 mov ecx,eax
	 push eax
	 Star:
	 cmp ecx,0
	 jl exit_star
	 mov eax,42
	 call writechar
	 loop Star

exit_star:
	 pop eax
	 pop ecx
	 inc eax
	 call crlf
	 loop L1
	 ret
Printer endp

end main

```


# output
![image](https://github.com/user-attachments/assets/e39188a6-4c45-4007-a2d8-ee50a7309aad)
