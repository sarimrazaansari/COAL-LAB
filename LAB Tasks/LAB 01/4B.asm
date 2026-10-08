INCLUDE	Irvine32.inc

.code
	main PROC
		mov eax,3h
		mov ebx, 2h

		add eax,ebx

		mov ecx,15h
		mov edx, 10h

		sub ecx, edx

		call DumpRegs
		exit
	main ENDP
END main