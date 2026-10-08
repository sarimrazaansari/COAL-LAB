INCLUDE	Irvine32.inc

.code
	main PROC
		mov eax,4
		add eax,4

		mov ebx,9
		sub ebx, 5
		call DumpRegs


		exit
	main ENDP
END main