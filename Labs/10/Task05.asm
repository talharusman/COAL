INCLUDE Irvine32.inc

.data
   arr byte "Raghib Rizwan",0

.code
main PROC
    mov esi,0
    mov edi,LENGTHOF arr-2
    call Str_Reverse
    mov edx,OFFSET arr
    call WriteString
    exit
main ENDP

Str_Reverse PROC
L1:
    mov al,arr[esi]
    mov bl,arr[edi]
    mov arr[esi],bl
    mov arr[edi],al
    inc esi
    dec edi
    cmp esi,edi
    jb L1
    ret
Str_Reverse ENDP

END main
