page 60,132
;--------------------------------------------------------------------------
; Name:
; Description: DELAY AT 123.456BMP FOR QUARTER NOTES
;--------------------------------------------------------------------------
PUBLIC CHANGE
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
CHANGE PROC FAR
	ASSUME CS:CSEG, DS:DSEG, SS:SSEG
	MOV AL, 0B6h
	OUT 43h, AL
	MOV AL, DL
	OUT 42h, AL
	MOV AL, DH
	OUT 42h, AL
    RET
CHANGE ENDP
cseg      ends
          end              ;Program exit point
