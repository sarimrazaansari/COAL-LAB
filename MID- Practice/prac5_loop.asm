INCLUDE irvine32.inc

.data


.code
	main PROC

	mov eax,1
	mov ecx,5

L1:
	call writeDec
	call crlf

	inc eax
	Loop L1 ;loop automatic dec ecx and exit on zero

	main ENDP

END main