# code 
```asm
INCLUDE Irvine32.inc

.data
    val1 SDWORD 100
    val2 SDWORD 20
    val3 SDWORD 5

.code
main PROC
    ; (val2 / val3)
    mov eax, val2       ; dividend
    cdq                 ; sign-extend EAX into EDX:EAX
    mov ecx, val3       ; divisor
    idiv ecx            ; EAX = val2 / val3
    mov ebx, eax        ; store result in EBX: ebx = (val2 / val3)

    ; (val1 / val2)
    mov eax, val1
    cdq
    mov ecx, val2
    idiv ecx            ; EAX = val1 / val2
    imul ebx            ; EAX = (val2 / val3) * (val1 / val2)

    ; Store result back in val1
    mov val1, eax

    ; Print result
    call Crlf
    mov edx, OFFSET val1Label
    call WriteString
    mov eax, val1
    call WriteInt

    call Crlf
    exit
main ENDP

.data
    val1Label BYTE "val1 = ", 0

END main

```

# output
![image](https://github.com/user-attachments/assets/5bae2800-3c26-4122-b917-8d2c7c422a02)
