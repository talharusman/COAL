# code 
```
include Irvine32.inc

.data
    num dword ?
    m1 byte "Enter a number (0=Sat to 6=Fri): ",0

    d1 byte "Saturday ",0
       byte "Sunday   ",0
       byte "Monday   ",0
       byte "Tuesday  ",0
       byte "Wednesday",0
       byte "Thursday ",0
       byte "Friday   ",0

.code
main PROC

    mov edx, offset m1
    call WriteString

    call ReadInt
    mov num, eax

    mov ecx, 10
    imul eax, ecx        

    mov edx, offset d1
    add edx, eax         

    mov ecx, 10
print_loop:
    mov al, [edx]
    call WriteChar
    inc edx
    loop print_loop

    call Crlf

    exit
main ENDP
END main

```
# output
![image](https://github.com/user-attachments/assets/eef7478a-31a7-468e-8347-2ee1ccce2023)


