.data

buffer    BYTE 15 DUP(0)       ; Reserves 15 bytes initialized to 0
tempSpace BYTE 10 DUP(?)       ; Reserves 10 uninitialized bytes
pattern   BYTE 5 DUP("HI")      ; Stores "HIHIHIHIHI"