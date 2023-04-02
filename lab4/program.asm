ORG 0x4CD

START:
	CLA
	ST result
	LD x
	DEC
	PUSH
	CALL $function
	POP
	DEC
	SUB result
	ST result
	LD z
	PUSH
	CALL $function
	POP
	SUB result
	ST result
	LD y
	PUSH
	CALL $function
	POP
	DEC
	ADD result
	ST result
	HLT

z: WORD 0x0023
y: WORD 0xFFF4
x: WORD 0x0FA6
result: WORD 0xFF47



ORG 0x654

function:
    LD &1
    BMI exit1
    BEQ exit1
    CMP a
    BEQ exit2
    BLT exit2
    exit1: ADD &1
    ADD &1
    ADD &1
	SUB b
	JUMP return
	exit2: LD a
	return: ST &1
	name: RET

a: WORD 0x0EE0
b: WORD 0x00BD

















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
ORG 0x4D0