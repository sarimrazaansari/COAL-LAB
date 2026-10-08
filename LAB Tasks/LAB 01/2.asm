INCLUDE	Irvine32.inc

.code
	main PROC
		mov ecx,25h
		mov edx,15h

		call DumpRegs
		sub ecx,edx

		call DumpRegs

		exit
	main ENDP
END main