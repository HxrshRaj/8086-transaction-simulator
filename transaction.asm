; 8086 Transaction Simulator
; Demonstrates atomic-style operation using register control
; and interrupt-driven flow

.MODEL SMALL
.STACK 100h
.DATA
balance DW 1000
amount  DW 200

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; Begin transaction
    CLI             ; Disable interrupts (critical section)

    MOV AX, balance
    SUB AX, amount
    MOV balance, AX

    STI             ; Enable interrupts (end critical section)

    MOV AH, 4Ch
    INT 21h
MAIN ENDP
END MAIN
