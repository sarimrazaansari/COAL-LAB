INCLUDE irvine32.inc

.data

	iName BYTE "Enter your name: ",0
	iAge BYTE "Enter your age: ",0
	iKey BYTE "Enter any key: ",0

	oName BYTE "your name: ",0
	oAge BYTE "your age: ",0
	oKey BYTE "key: ",0
	
	;storing values
	sName BYTE 30 DUP(0) ;0->null
	sAge BYTE ?
	sKey BYTE 0

.code
MAIN PROC
	
	mov edx, OFFSET iName
	call writeString
	mov edx,OFFSET sName ;storing Start
	mov ecx,SIZEOF sName
	call ReadString			;storing End
	call crlf

	mov edx, OFFSET iAge
	call writeString
	call ReadInt
	mov sAge,al
	call crlf

	mov edx,OFFSET iKey
	call writeString
	call ReadChar
	mov sKey,al
	call crlf

	;display
	mov edx,OFFSET oName
	call writeString 
	mov edx, OFFSET sName
	call writeString
	call crlf

	mov edx,OFFSET oAge
	call writeString
	movzx eax,sAge
	call writeDec
	call crlf

	mov edx, OFFSET oKey
	call writeString
	mov al,sKey
	call writeChar
	call crlf

MAIN ENDP
END MAIN