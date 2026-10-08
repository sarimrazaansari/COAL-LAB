.data

itemCode    BYTE    125             ; BYTE stores 0-255, suitable for item code
itemPrice   WORD    25000           ; WORD stores a larger value than BYTE
dailySales  DWORD   5000000         ; DWORD stores very large integer values
itemName    BYTE    "Milk", 0       ; Stores string followed by null character