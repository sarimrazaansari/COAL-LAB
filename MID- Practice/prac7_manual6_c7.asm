INCLUDE irvine32.inc

.data

	arr DWORD 10 DUP(?)
	msg1 BYTE "Multiples of 5: ",0

.code
MAIN PROC

	mov ecx,LENGTHOF arr
	mov esi, 0
	mov eax,0
	mov ecx, LENGTHOF arr

	

Fill:
	add eax,5
	mov arr[esi*TYPE arr],eax
	inc esi
	loop Fill
	

	mov edx,OFFSET msg1
	call writeString
	mov ecx, LENGTHOF arr 
	mov esi,OFFSET arr

Display:
	mov eax,[esi]
	call writeDec
	mov al, ' '
	call writeChar

	add esi,TYPE arr
	Loop Display

MAIN ENDP
END MAIN