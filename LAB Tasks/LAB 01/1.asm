INCLUDE	Irvine32.inc

.code
	main PROC
		mov eax,10h
		mov ebx,25h

		call DumpRegs
		add eax,ebx

		call DumpRegs

		exit
	main ENDP
END main