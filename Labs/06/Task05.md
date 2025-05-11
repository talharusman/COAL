# code 
```asm
include irvine32.inc
.data
	arr DWORD 8,5,1,2,6

.code
main proc

    ; Printing array 
	  mov ecx,lengthof arr
	  mov esi,0
	  L2:
	  mov eax,arr[esi]
	  add esi,4
	  call writedec
	  LOOP L2
	  call crlf

	   mov ecx,lengthof arr/2
	   mov esi,offset arr
	   mov edi,offset arr+ sizeof arr - type arr
	   L1:
	   mov eax,[esi]
	   mov ebx,[edi]
	   XCHG eax,ebx
	   mov [esi],eax
	   mov [edi],ebx
	   add esi,type arr
	   sub edi,type arr
	   LOOP L1

  ; Printing array After reversing
	 mov ecx,lengthof arr
	  mov esi,0
	  L3:
	  mov eax,arr[esi]
	  add esi,4
	  call writedec
	  LOOP L3
      
   
main endp
end main

```


# output

![image](https://github.com/user-attachments/assets/69018e7c-f2af-4c2b-b38f-334fcbe52dcc)
