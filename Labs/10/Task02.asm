INCLUDE Irvine32.inc

.data
	Str1 BYTE '127&j~3#^&*#*#45^',0
	print1 BYTE "FOUND",0
	print2 BYTE "NOT FOUND",0
	count DWORD 0
.code

Scan_String PROTO arr:PTR BYTE, w:BYTE

main PROC
	
	INVOKE Scan_String,ADDR Str1, '#'	
exit
main ENDP

Scan_String PROC,
	arr:PTR BYTE, w:BYTE
	mov edi, arr           
    mov al, w              
    mov ecx, lengthof Str1 
	cld
	mov ecx,LENGTHOF Str1
	mov ebx,count
L1:
	SCASB
	je return
	inc ebx
	loop L1
	
	mov edx, OFFSET print2
    call WriteString
    call Crlf
    ret

return:
	mov edx,OFFSET print1
	call WriteString
	call Crlf
	mov eax,ebx
	call WriteDec
	ret 8
Scan_String ENDP
END main
