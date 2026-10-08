INCLUDE Irvine32.inc

.data 
	bookIssuedToday DWORD 0
	bookIncreament DWORD 1

.code 
main PROC
	mov ecx, 10
	mov eax, 0

CountLoop:
	cmp ecx,0
	je Finished
	add eax, bookIncreament
	dec ecx
	jmp CountLoop

Finished:
	mov bookIssuedToday, eax
	call DumpRegs
	exit
main ENDP
END main