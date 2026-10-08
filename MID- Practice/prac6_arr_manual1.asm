INCLUDE irvine32.inc

.data

	arrB BYTE 10h,20h,30h,40h
	arrW WORD 100h,200h,300h
	
	msg1 BYTE "arrB ",0
	msg2 BYTE "[arrB+1] ",0
	msg3 BYTE "[arrB+3] ",0
	msg6 BYTE "[arrB+2] ",0

	msg4 BYTE "arrW ",0
	msg5 BYTE "[arrW+2] ",0

.code
main PROC
	
	;arrB
	mov edx, OFFSET msg1
	call writeString
	movzx eax,  arrB	
	call writeHex
	call crlf

	;arrB+1
	mov edx, OFFSET msg2
	call writeString
	movzx eax,  [arrB+1]	
	call writeHex
	call crlf

	;arrB+2
	mov edx, OFFSET msg6
	call writeString
	movzx eax,  arrB[2]	
	call writeHex
	call crlf

	

	;arrB+3
	mov edx, OFFSET msg2
	call writeString
	mov esi, 3
	movzx eax,  arrB[esi*TYPE arrB]	;better approch can work with data type esi should be index
	call writeHex
	call crlf

	;WORD =2 byte

	mov edx, OFFSET msg4
	call writeString
	movzx eax, arrW
	call writeHex
	call crlf

	mov edx, OFFSET msg5
	call writeString
	mov esi, 2
	movzx eax, arrW[esi*Type arrW]
	call writeHex
	call crlf


	
main ENDP

END main