# code
```
include Irvine32.inc

.data
   var byte ?
   m1 byte "Enter any character: ",0
   m2 byte "The given character is alphabet",0
   m3 byte "The given character is not alphabet",0

.code
main PROC
    mov edx, offset m1
    call writestring
    call readchar
    call writechar
    call crlf

    cmp al,65
    jl not_alphabet
    cmp al,90
    jg capital
    mov edx, offset m2
    call writestring
    exit
    capital:
    cmp al,97
    jl not_alphabet
    cmp al,122
    jg not_alphabet
    mov edx, offset m2
    call writestring
    exit

    not_alphabet:
    mov edx, offset m3
    call writestring
    exit
main ENDP
END main

```
# output
![image](https://github.com/user-attachments/assets/0ef85b87-df98-4c7d-9468-8edd70775b0e)

