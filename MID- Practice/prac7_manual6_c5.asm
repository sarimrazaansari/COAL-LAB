INCLUDE irvine32.inc
.data

	msg1 BYTE "Count values: ",0
	msg2 BYTE "Total: ",0
	

.code
main PROC

	mov edx,OFFSET msg1
	call writeString

	mov ecx,10
	mov ebx,0 ;total
	
L1:
	mov eax,ecx
	call writeDec
	mov al, ' '
	call writeChar

	add ebx,ecx

	Loop L1

	call crlf
	mov edx, OFFSET msg2
	call writeString
	mov eax,ebx
	call writeDec


main ENDP
END main