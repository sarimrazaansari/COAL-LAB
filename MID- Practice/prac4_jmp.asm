INCLUDE irvine32.inc

.data

	var1 DWORD 10
	var2 DWORD 20
	msg1 BYTE "Greater",0
	msg2 BYTE "Lower",0
.code
	main PROC

	mov eax, var1
	
	cmp eax,var2
	jg eaxGreater

	jmp done

	eaxGreater:
		mov edx,OFFSET msg1
		call writeString
		exit

	done:
		mov edx, OFFSET msg2
		call writeString

	main ENDP

END main