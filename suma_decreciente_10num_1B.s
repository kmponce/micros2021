DATA		DCB		1,2,3,4,5,6,7,8,9,10
SUMA		DCB		0
		MOV		R0,#DATA
		MOV		R1,#0
		MOV		R2,#9
LOOP		ADD		R3,R0,R2
		LDRB		R4,[R3]
		ADD		R1,R1,R4
		SUB		R2,R2,#1
		CMP		R2,#0
		BNE		LOOP
		MOV		R6,#SUMA
		STR		R1,[R6]
		END
