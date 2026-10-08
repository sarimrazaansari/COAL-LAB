INCLUDE irvine32.inc

.data
	x DWORD 10
	msg1 BYTE "Hello World",0 
	y DWORD 5
.code

	main PROC
		
		mov eax, x
		call writeDEC
		call crlf


		xchg eax,y
		call writeDEC
		call crlf

		mov ebx, y

		add eax,ebx
		call writeInt
		call dumpREGS

		call crlf

		mov edx, OFFSET msg1
		call writeString

	main ENDP
END main