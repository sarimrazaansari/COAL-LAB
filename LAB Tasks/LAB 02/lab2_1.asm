INCLUDE	Irvine32.inc

.data
	attendance BYTE 0
	increament BYTE 1

.code
	main PROC
		mov cl,5
		mov al,0

	L1:
		jz Done
		dec cl;
		add al ,increament
		jmp L1

	DONE:
		mov attendance, al
		call DumpRegs

		exit
	main ENDP
END main