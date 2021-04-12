.include "m8535def.inc"
ser r16
out ddra,r16
out portb,r16
ldi r18,0
ldi r19,2
ldi r20,1
ldi r21,0

suma:
	in r17,pinb
	mov r22,r17
	add r18,r20	
	cp r18,r17
	brsh comparar
	add r20,r19
	inc r21
	rjmp suma

comparar:
	cp r18,r17
	breq iguales
	rjmp salida

iguales:
	inc r21
	rjmp salida

desborde:
	ldi r21,15
	clr r22
	rjmp salida

salida:
	out porta,r21	
	in r17,pinb
	cpi r17,225
	brcc desborde
	cp r17,r22
	breq salida
	clr r18
	ldi r19,2
	ldi r20,1
	clr r21
	rjmp suma
