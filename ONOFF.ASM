page 60,132
;--------------------------------------------------------------------------
; Name:
; Description: DELAY AT 123.456BMP FOR QUARTER NOTES
;--------------------------------------------------------------------------
PUBLIC ON
PUBLIC OFF
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
ON PROC FAR
	ASSUME CS:CSEG, DS:DSEG, SS:SSEG
	MOV AL, BH
	OUT 61h, AL
	RET
ON ENDP

OFF PROC FAR
	MOV AL, AH
	OUT 61h, AL
	RET
OFF ENDP
cseg      ends
          end              ;Program exit point
