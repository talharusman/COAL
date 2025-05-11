# code
```asm
include irvine32.inc

.DATA
  
   id dword 5 DUP(?)
   n byte 5 DUP( 30 DUP (?)) 
   year dword 5 DUP(?) 
   salary dword 5 DUP(?) 
   promt byte "Enter Data in this order for Employees Name,ID,YOB,Salary",0
   promt1 byte "Enter Data for Emplyee number: ",0
   totalsalary byte "Annual Salary: ",0
   temp dword 1
   strecx dword ?
.CODE
MAIN PROC

       mov ecx,2
       mov esi,0
       mov ebx,0 ; for sum of salaries
       mov edx, offset promt
       call writestring
       call crlf

       ;Taking data from user
       L1:
       ; promting to enter current employee data
       mov edx, offset promt1
       mov eax,temp
       call writestring
       call writedec
       call crlf

       mov edx, OFFSET n
        mov eax, esi
        imul eax, 30
        add edx, eax
        call ReadString

       call readint
       mov id[esi],eax
       call readint
       mov year[esi],eax
       call readint
       mov salary[esi],eax
       add ebx,eax
       add esi,4
       inc temp
       LOOP L1

       ;printing total annual salary of all employees
       mov eax,ebx
       mov edx, offset totalsalary
       call writestring
       call writedec
       call crlf

       ;printing employees data from arrays
       mov ecx,2
       mov esi,0
       L2:
       mov eax,id[esi]
       call writedec
       mov eax,year[esi]
       call writedec
       mov eax,salary[esi]
       call writedec
       call crlf
       add esi,4
       LOOP L2


    exit
MAIN ENDP
END MAIN
```
# output
![image](https://github.com/user-attachments/assets/e7343411-58f0-45af-8faa-4f109d7c747f)

