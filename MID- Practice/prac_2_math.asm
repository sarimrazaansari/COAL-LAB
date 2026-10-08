INCLUDE irvine32.inc

.data
	
	x DWORD 14
	y DWORD 8
	z DWORD 2

.code
	main PROC

	;add and sub
	mov eax,x
	mov ebx,y

	call dumpRegs
	
	add eax,z
	call writeDec

	call crlf

	sub eax,y
	call writeDec

	; inc and dec and neg
	
	inc eax
	call crlf
	call writeDec

	dec eax
	call crlf
	call writeDec

	neg eax
	call crlf
	call writeInt ; dec -> usigned ; int -> signed 

	main ENDP

END main