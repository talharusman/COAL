# code
```
include Irvine32.inc
.data
    arr1 BYTE 61, 43, 11, 52, 25  
    arr2 BYTE 5 dup(?)   

.code
main proc
   mov eax,0

    mov al, [arr1 + 2]
    call writeint
    mov [arr2], al
    call crlf

    mov al, [arr1 + 4]
    call writeint
    mov [arr2 + 1], al
    call crlf

    mov al, [arr1 + 1]
    call writeint
    mov [arr2 + 2], al
    call crlf

    mov al, [arr1 + 3]
    call writeint
    mov [arr2 + 3], al
    call crlf

    mov al, [arr1]
    call writeint
    mov [arr2 + 4], al
    call crlf

    exit
main ENDP
END main

```
# output
![image](https://github.com/user-attachments/assets/59dba912-1831-4ae4-b547-2e758e7abd35)
