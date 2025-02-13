include irvine32.inc
.data
val2 SDWORD -2147483647
.code
	main proc
		mov eax,val2
		call dumpregs
	exit
main endp
end main 

