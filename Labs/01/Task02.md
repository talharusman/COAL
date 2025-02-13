## Task02:

``` asm
include irvine32.inc
.data
val2 SDWORD -2147483648
.code
	main proc
		mov eax,val2
		call dumpregs
	exit
main endp
end main 
```
### OUTPUT
![image](https://github.com/user-attachments/assets/b5d88d94-8b53-4e77-a8ab-e028c60d6ef6)
