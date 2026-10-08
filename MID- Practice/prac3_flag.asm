INCLUDE irvine32.inc

.data

	var1 DWORD 10
	var2 DWORD 8
	var3 DWORD 10

	var4 BYTE 255 ;max is 255 signed(2byte)

.code
	main PROC

	;zero flag when eax become zero

	mov eax,var1
	sub eax,var3

	call DumpRegs
	call crlf
	
	



	main ENDP
END main