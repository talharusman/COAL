# code 
```asm
INCLUDE Irvine32.inc

.data
    val1Low SDWORD 0x12345678         ; Lower 32 bits of the first 64-bit integer
    val1High SDWORD 0x9ABCDEF0        ; Upper 32 bits of the first 64-bit integer
    val2Low SDWORD 0x23456789         ; Lower 32 bits of the second 64-bit integer
    val2High SDWORD 0xABCDEF01        ; Upper 32 bits of the second 64-bit integer
    resultLow SDWORD 0                ; Lower 32 bits of the result
    resultHigh SDWORD 0               ; Upper 32 bits of the result

.code
main PROC
    ; Call Extended_Add procedure
    call Extended_Add

    ; Print the result (lower part)
    mov edx, OFFSET resultLow
    call WriteString
    mov eax, resultLow
    call WriteHex

    call Crlf

    ; Print the result (upper part)
    mov edx, OFFSET resultHigh
    call WriteString
    mov eax, resultHigh
    call WriteHex

    call Crlf
    exit
main ENDP

; Procedure to add two 64-bit integers
; Arguments: 
;   val1Low, val1High  -> First 64-bit integer
;   val2Low, val2High  -> Second 64-bit integer
; Result:
;   resultLow, resultHigh -> Result of the addition
Extended_Add PROC
    ; Add the lower 32 bits of the two integers (val1Low + val2Low)
    mov eax, val1Low            ; Load lower part of the first integer
    add eax, val2Low            ; Add lower part of the second integer
    mov resultLow, eax          ; Store the result of lower part

    ; Check if carry occurred (set by add instruction)
    jc CarryOccurred            ; If carry occurred, jump to carry handling

    ; No carry: Add the upper parts (val1High + val2High)
    mov eax, val1High
    add eax, val2High
    mov resultHigh, eax         ; Store the result of the upper part
    ret

CarryOccurred:
    ; Carry occurred: Add the upper parts (val1High + val2High) + 1
    mov eax, val1High
    add eax, val2High
    inc eax                     ; Add the carry (1)
    mov resultHigh, eax         ; Store the result of the upper part with carry

    ret
Extended_Add ENDP

END main

```

# output

