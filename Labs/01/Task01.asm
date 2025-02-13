include irvine32.inc
.data
val1 WORD ?
val2 SBYTE -11
.code
  main proc
	 mov AX,val1
	mov BL,val2
	call dumpregs
  exit
main endp
end main 

