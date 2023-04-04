ORG 0x4D0

START:
	CLA
	ST result
	LD n
	PUSH
	CALL $function
	POP
	ST result
	HLT

n: WORD 0x0005
result: WORD 0x0000



ORG 0x650

function:
    LD &1
    DEC
    BEQ return
    BMI return
    PUSH
    CALL function
    POP
    ADD &1
    ST &1
	return: RET
