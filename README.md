# Parte entera de la raíz de un número
## ATmega8535

## lid
* Le asigna el valor a un registro
* lid rd,k 
* rd<-k
## mov
* Copiar un registro en otro
* mov rd,rr
* rd = rr
## clr
* Realiza un clear a un registro
* clr rd
*rd<-rd-rd
## cp
* Le resta a su primer registro su segundo registro
* cp rd,rr
* rd-rr
## cpi
* Le resta a su primer registro un valor
* cp rd,k
* rd - k
## breq
* Valida de la bandera z (cero) está en 1
* Salta si **z=1**
* breq salto
## brcc
* Valida si no hay un acarreo
* Salta si **c=0**
* brcc salto
## brsh
* Valida si es mayor o igual
* Salta si **c=0**
* Es igual a brcc
* brsh salto
## rjmp
* Salto relativo
* Salta sin validar nada
* rjmp salto
## inc
* Incremento
* inc rd
* rd++
## add
* Suma dos registros
* add rd,rr
* rd <- rd + rr