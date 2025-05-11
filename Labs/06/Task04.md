# code
```asm
include irvine32.inc

.DATA
    source byte "Hello World",0
    target byte 12 DUP(?)
    m1 byte "Source String: ",0
    m2 byte "Destination String: ",0
.CODE
MAIN PROC
; Writing source on cmd
    mov edx,offset m1
    call writestring
    mov edx,offset source
    call writestring
    call crlf

    ;Copying Elements
    mov esi,0
    mov ecx,lengthof source
    L1:
        mov al,source[esi]
        mov target[esi],al
        inc esi
    LOOP L1

    ; Writing destination on cmd
    mov edx,offset m2
    call writestring
    mov edx,offset target
    call writestring
    call crlf
    exit
MAIN ENDP
END MAIN

```

# output
![image](https://github.com/user-attachments/assets/68a61ed4-bb44-4994-8f4a-f55925bce0b9)
