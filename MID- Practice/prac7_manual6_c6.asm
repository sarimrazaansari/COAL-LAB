INCLUDE irvine32.inc

.data

	arr DWORD 10,20,30,40,50
	msg1 BYTE "Elements: ",0
	msg2 BYTE "Total: ",0

.code
MAIN PROC

	mov esi,0 ;using index
	mov ecx, LENGTHOF arr
	mov ebx,0 ;total

	mov edx,OFFSET msg1
	call writeString
L1:

	mov eax, arr[esi*TYPE arr]
	add ebx,eax
	call writeDec
	mov al,' '
	call writeChar ;only al

	inc esi

	Loop L1

	;total
	call crlf
	mov edx,OFFSET msg2
	call writeString
	mov eax,ebx
	call writeDec

MAIN ENDP

END MAIN