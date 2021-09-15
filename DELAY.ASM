page 60,132
;--------------------------------------------------------------------------
; Name:
; Description:
;--------------------------------------------------------------------------
PUBLIC DELAY
;-----------------------------------------------------------------------
;stack segment

sseg      segment para stack 'stack'
          db   120 dup(?)    ;reserve 120 bytes for the stack
sseg      ends

;-----------------------------------------------------------------------
;constants

              ;Define your constants here (EQU)

;-----------------------------------------------------------------------
;data segment

dseg      segment para 'data'

              ;Declare your variables here

dseg      ends

;----------------------------------------------------------------------
;code segment
cseg      segment para 'code'
    
DELAY PROC FAR
	ASSUME CS:CSEG, DS:DSEG, SS:SSEG
        CALL INTER
        RET
DELAY ENDP
	
INTER PROC
		MOV CX, 003h
DELREP: PUSH CX
        MOV CX, 0D090h
DELDEC: DEC CX
        JNZ DELDEC
        POP CX
        DEC CX
        JNZ DELREP
        RET
INTER ENDP
cseg      ends
          end              ;Program exit point
