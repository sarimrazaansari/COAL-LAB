TITLE Tuck Shop Cash Register (CashRegister.asm)

INCLUDE Irvine32.inc

.code

main PROC

    ; Load opening cash balance into EAX
    MOV EAX, 5000

    ; Add sales income
    ADD EAX, 1500

    ; Subtract supply expenses
    SUB EAX, 800

    ; Display final register values
    CALL DumpRegs

    ; Exit program
    exit

main ENDP
END main