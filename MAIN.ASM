page 60,132
;--------------------------------------------------------------------------
; Name: Group 4 
; Description: Final project.
;--------------------------------------------------------------------------
EXTRN DELAY:FAR
EXTRN CHANGE:FAR
EXTRN ON:FAR
EXTRN OFF:FAR
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

main      proc far               ;this is the program entry point
          assume cs:cseg, ds:dseg, ss:sseg 
          mov  ax,dseg           ;load the data segment value
          mov  ds,ax             ;assign value to ds

		  IN AL, 61h
		  MOV AH, AL		;AH holds the original state of speaker
		  OR AL, 00000011b
		  MOV BH, AL		;BH holds the new content of the speaker
		  
		  ;note starts
          MOV DX, 11CAh ;1 hap
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		  ;note ends
		  ;note starts
		  MOV DX, 11CAh ;2 py
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		  ;note ends
		  ;note starts
		  MOV DX, 0FDAh ;3 birth
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		   ;note ends
		  MOV DX, 11CAh ;4 day
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		   ;note ends
		  MOV DX, 0D5Ah ;5 to
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		   ;note ends
		  MOV DX, 0E1Fh ;6 you
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		   ;note ends
		  MOV DX, 11CAh ;7 hap
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		   ;note ends
		  MOV DX, 11CAh ;8 py
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		   ;note ends
		  MOV DX, 0FDAh ;9 birth
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		   ;note ends
		  MOV DX, 11CAh ;10 day
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		   ;note ends
		  MOV DX, 0BE3h ;11 to
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		   ;note ends
		  MOV DX, 0DFAh ;12 you
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		   ;note ends
		  MOV DX, 11CAh ;13 hap
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		   ;note ends
		  MOV DX, 11CAh ;14 py
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		   ;note ends
		  MOV DX, 08E9h ;15 birth
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		   ;note ends
		  MOV DX, 0A97h;16 day
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		   ;note ends
		  MOV DX, 0D5Ah;17 dear
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		   ;note ends
		  MOV DX, 0D5Ah;18 1st syllable namegoeshere
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		   ;note ends
		  MOV DX, 0FDAh;19 2nd syllable namegoeshere
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		   ;note ends
		  MOV DX, 0A00h;20 hap
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		   ;note ends
		  MOV DX, 0A00h;21 py
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		   ;note ends
		  MOV DX, 0A97h;22 birth
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		   ;note ends
		  MOV DX, 0D5Ah;23 day
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		   ;note ends
		  MOV DX, 0BE3h;24 to
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		   ;note ends
		  MOV DX, 0D5Ah;25 you
		  CALL CHANGE
		  CALL ON
		  CALL DELAY
                  CALL DELAY
                  CALL DELAY
		  CALL OFF
		  CALL DELAY
		   ;note ends
          mov  ah,4Ch            ;set up interupt
          int  21h               ;Interupt to return to DOS                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     

main      endp

cseg      ends
          end     main           ;Program exit point
