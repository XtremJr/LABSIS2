# rograma que enciende los leds del display derecho en sentido horario sin contar el led central

	#Definicion de constantes de los valores para cada segnmento
	.eqv A 0x01
	.eqv BLED 0x02
	.eqv 
	.eqv D 0x10
	.eqv C 0x04
	
	#Direccion del segmento derecho
	.eqv Derecho 0xffff0010
	
	# Segemento de codigo
	.text
	
	#Guardamos la direccion de memoria para el display derecho en el registro t0
	li t0, Derecho
	
	# Asignamos los valores de los leds en un registro temporal
	li t1, A
	li t2, BLED
	li t3, D
	li t4, D
	li t5, C
	

bucle:
	sw t1, 0(t0)
	sw t2, 0(t0)
	sw t3, 0(t0)
	sw t4, 0(t0)
	sw t5, 0(t0)
	
	b bucle