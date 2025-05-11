# code 
```asm
INCLUDE Irvine32.inc

.data

.code
main PROC

    mov ax, -128       
    movzx eax, ax        


    shl eax, 16          
    sar eax, 16          

    call WriteInt        
    call Crlf
    exit
main ENDP

END main

```

# output
![image](https://github.com/user-attachments/assets/aac1b049-9884-49cf-aa26-460e854e57c4)

