	
		ORG		00
		JMP		MAIN
		ORG		30H
		SUM     MACRO OPRD1,OPRD2,OPRD3
		MOV		DPTR, OPRD1
		
	    CLR		A
		MOVC	A, @A+DPTR
		MOV		B, A
        MOV		DPTR, OPRD2
        CLR		A
		MOVC	A, @A+DPTR
		MOV		C, 00
		ADDC	A, B
        MOV		OPRD3, A
		CLR     A
        EMAC
MAIN:
		
		MOV		P3, #3
		CLR		00
        MOV     A, P3
		PUSH    A
		SUM     #100H,#110H,40H
		POP     A
		DEC     A
		JZ      NEXT
	
		PUSH    A
		SUM     #101H,#111H,41H
		POP     A
		DEC     A
		JZ      NEXT
		
		PUSH    A
		SUM     #102H,#112H,42H
		POP     A
		DEC     A
		JZ      NEXT
		
		PUSH    A
		SUM     #103H,#113H,43H
		POP     A
		DEC     A
		JZ      NEXT
		
		PUSH    A
		SUM     #104H,#114H,44H
		POP     A
		DEC     A
		JZ      NEXT
		
		PUSH    A
		SUM     #105H,#115H,45H
		POP     A
		DEC     A
		JZ      NEXT
		
		PUSH    A
		SUM     #106H,#116H,46H
		POP     A
		DEC     A
		JZ      NEXT
		
		PUSH    A
		SUM     #107H,#117H,47H
		POP     A
		DEC     A
		JZ      NEXT
		
		PUSH    A
		SUM     #108H,#118H,48H
		POP     A
		DEC     A
		JZ      NEXT
		
		PUSH    A
		SUM     #109H,#119H,49H
		POP     A
		DEC     A
		JZ      NEXT
		
		PUSH    A
		SUM     #10AH,#11AH,4AH
		POP     A
		DEC     A
		JZ      NEXT
		
		PUSH    A
		SUM     #10BH,#11BH,4BH
		POP     A
		DEC     A
		JZ      NEXT
		
		PUSH    A
		SUM     #10CH,#11CH,4CH
		POP     A
		DEC     A
		JZ      NEXT
		
		PUSH    A
		SUM     #10DH,#11DH,4DH
		POP     A
		DEC     A
		JZ      NEXT
		
		
		PUSH    A
		SUM     #10EH,#11EH,4EH
		POP     A
		DEC     A
		JZ      NEXT
		
		
		PUSH    A
		SUM     #10FH,#11FH,4FH
		POP     A
		DEC     A
		JZ      NEXT

NEXT:	CLR     P3
        JNB		OV, NOOV
		MOV		A, #1
		MOV		43H, A
		MOV		P3, A
		JMP		WAIT
NOOV:
		MOV		A, #0
		MOV		P3, A
WAIT:	JMP		$
        ORG		100H
		DB		10H, 11H,12H,13H,15H,16H,17H,18H,19H,20H,21H,22H,23H,24H,25H,26H  ; 
		ORG		110H
		DB		55H, 54H,53H,52H,51H,50H,49H,48H,47H,46H,45H,50H,51H,52H,53H,54H ; 
		END
