INCLUDE irvine32.inc

.data

	arr DWORD 10,20,30,40,50
	msg1 BYTE "Approch 1 :",0
	msg2 BYTE "Approch 2 :",0
	


.code
MAIN PROC
	
	;approch 1
	mov esi,OFFSET arr			;esi stores address of 1st element
	mov ecx, LENGTHOF arr
	mov edx, OFFSET msg1
	call writeString
	call crlf
L1:
	mov eax,[esi]
	call writeDec
	call crlf

	add esi, TYPE arr
	
	LOOP L1

	;approch 2 reverse
	
	mov edx, OFFSET msg2
	call writeString 
	call crlf

	mov esi, (LENGTHOF arr - 1)*TYPE arr
	mov ecx,LENGTHOF arr


L2:
	mov eax,arr[esi]
	call writeDec
	call crlf

	sub esi, TYPE arr
	Loop L2

	exit


main ENDP

END main