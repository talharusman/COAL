INCLUDE Irvine32.inc

.data
  arr byte "This is a string",0

.code

Str_Reverse proto,
    arr1:PTR byte,len:dword

main PROC
    INVOKE Str_Reverse, ADDR arr, lengthof arr
    mov edx, offset arr
    call writestring
    exit
main ENDP

Str_Reverse proc,
    arr1:PTR byte,len:dword
    mov ecx,len
    shr ecx, 1   
    mov esi,arr1
    mov edi,arr1
    add edi,len
    sub edi,2
    
    L1:
    mov al,[edi]
    mov bl,[esi]
    mov [edi],bl
    mov [esi],al
    inc esi
    dec edi
    loop L1
    ret
Str_Reverse endp

END main
