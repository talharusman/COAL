# code
```
include irvine32.inc

.data
array WORD 10, 4, 7, 14, 299, 156, 3, 19, 29, 300, 20


.code
main proc
    mov ecx, lengthof array        ; number of elements
OuterLoop:
    dec ecx
    mov ebx, 0        ; index = 0

InnerLoop:
    mov ax, [array + ebx*2]        
    mov dx, [array + ebx*2 + 2]   
    
    cmp ax, dx
    jle NoSwap

    ; Swap elements
    mov [array + ebx*2], dx
    mov [array + ebx*2 + 2], ax

NoSwap:
    inc ebx
    cmp ebx, ecx
    jl InnerLoop

    cmp ecx, 0
    jg OuterLoop

    ; Print sorted array
    mov ecx, 0
    mov ebx, lengthof array 
PrintLoop:
    movzx eax, [array + ecx*2]
    call WriteDec
    call Crlf
    inc ecx
    cmp ecx, ebx
    jl PrintLoop

    exit
main endp
end main

```
# output
![image](https://github.com/user-attachments/assets/fb7abc01-88b1-4c44-9c93-25171b49f8aa)

