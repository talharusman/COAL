## code (a)
```
include irvine32.inc
.data
.code
main proc
	call readint
	mov ecx,eax
	mov eax,1
	mov ebx,1

	L1:
		mov edx,ecx
		mov ecx,ebx
		L2:
			call writedec
		LOOP L2

		inc ebx
		mov ecx,edx
		call crlf
	LOOP L1

	
	exit
main endp
end main 
```
## output (a)
![image](https://github.com/user-attachments/assets/e12b23bc-8848-4af0-8351-1bb5264e4060)


## code (b)
```
include irvine32.inc
.data
.code
main proc
	call readint
	mov ecx,eax
	mov eax,1
	mov ebx,1
	L1:
		mov edx,ecx
		mov ecx,edx
		L2:
			call writedec
		LOOP L2
		mov ecx,edx
		call crlf
	LOOP L1
	exit
main endp
end main 
```
## output (b)
![image](https://github.com/user-attachments/assets/d2a5db3e-3e09-4a12-a259-23aea64e0f28)


## code (c)
```
include irvine32.inc
.data
.code
main proc
	call readint
	mov ecx,eax
	mov ebx,1
	L1:
		mov edx,ecx
		mov ecx,edx
		mov eax,ecx
		L2:
			call writedec
			dec eax
		LOOP L2
		mov ecx,edx
		call crlf
	LOOP L1
	exit
main endp
end main 
```
## output (c)
![image](https://github.com/user-attachments/assets/7f4ad2c4-66bc-4d2c-bdfd-57e136e4cad6)


## code (d)
```
include irvine32.inc
.data
.code
main proc
	call readint
	mov ecx,eax
	mov ebx,1
	L1:
		mov edx,ecx
		mov ecx,edx
		mov eax,1
		L2:
			call writedec
			inc eax
		LOOP L2
		mov ecx,edx
		call crlf
	LOOP L1
	exit
main endp
end main 
```
## output (d)
![image](https://github.com/user-attachments/assets/05ac3992-c12b-401c-8286-28b1040830b1)
