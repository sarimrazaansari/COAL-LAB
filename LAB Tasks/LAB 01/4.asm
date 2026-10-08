INCLUDE	Irvine32.inc

.code
	main PROC
		mov eax,25h
		mov ebx,15h

		call DumpRegs


		exit
	main ENDP
END main