INCLUDE Irvine32.inc
.data
	marks BYTE 78, 85, 62, 91, 70
	years WORD 2022, 2023, 2024, 2025
	prices DWORD 1500, 2750, 3200

	m1 BYTE "First mark = ",0
	m2 BYTE "Last mark = ",0
	m3 BYTE "years[2] = ",0
	m4 BYTE "prices[1] (updated) = ",0
	m5 BYTE "LENGTHOF years = ",0
	m6 BYTE "SIZEOF years = ",0

.code
	MAIN PROC

	mov edx,OFFSET m1
	call writeString
	movzx eax,marks
	call writeDec
	call crlf

	mov edx,OFFSET m2
	call writeString
	movzx eax,marks[LENGTHOF marks -1]
	call writeDec
	call crlf

	mov edx,OFFSET m3
	call writeString
	movzx eax,years[2*TYPE years]
	call writeDec
	call crlf

	mov edx,OFFSET m4
	call writeString
	mov prices[1*TYPE prices],2999
	mov eax,prices[1*TYPE prices]
	call writeDec
	call crlf

	mov edx,OFFSET m5
	call writeString
	mov eax,LENGTHOF years
	call writeDec
	call crlf

	mov edx,OFFSET m6
	call writeString
	mov eax,SIZEOF years
	call writeDec
	call crlf

	MAIN ENDP
END MAIN