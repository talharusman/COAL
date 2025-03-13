## code
```
include irvine32.inc
.data
array DWORD 8, 5, 1, 2, 6
n DWORD 5 
.code
main proc
    mov ecx, n   
    OuterLoop:
        dec ecx          
        mov ebx, 0    
        
    InnerLoop:
        mov eax, [array + ebx*4]     
        mov edx, [array + ebx*4 + 4] 
        
        cmp eax, edx
        jle NoSwap
      
        mov [array + ebx*4], edx
        mov [array + ebx*4 + 4], eax

    NoSwap:
        inc ebx         
        cmp ebx, ecx       
        jl InnerLoop    
    cmp ecx, 0
    jg OuterLoop
    mov ecx, 0          
    mov ebx, n      
    PrintLoop:
        mov eax, [array + ecx*4]  
        call writedec              
        call crlf              
        inc ecx              
        cmp ecx, ebx                
        jl PrintLoop

    exit
main endp
end main
```
## output
![image](https://github.com/user-attachments/assets/400a0f3d-d9f4-4e85-ac02-272f288935fc)
