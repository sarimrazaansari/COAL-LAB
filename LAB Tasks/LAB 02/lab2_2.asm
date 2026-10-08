INCLUDE	Irvine32.inc

COMMENT!
 This data stores basic info 
of stidents
!
.data
	
	studentRollNo DWORD 250064	;storing roll No
	studentGrade BYTE 'A'		;storing Grade
	semesterNo BYTE 9			;storing semester

.code
	main PROC
		mov eax,0
		mov ebx,0
		mov ecx,0
		mov eax,studentRollNo
		mov bl, studentGrade
		mov cl, semesterNo

		call DumpRegs

		exit
	main ENDP
END main