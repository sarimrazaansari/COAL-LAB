INCLUDE irvine32.inc

.data

arr DWORD 10,50,60,20

.code
MAIN Proc

	mov eax, arr[4]			;2nd element
	call writeDec
	call crlf

	mov eax, arr[8]			;2nd element
	call writeDec
	call crlf

	mov esi, OFFSET arr 			
	mov eax, [esi+TYPE arr]
	call writeDec
	call crlf


main ENDP
End main