// Calcula la cantidad de cajas de cer�mica necesarias y su costo total para cubrir un �rea determinada.
// Cada caja cubre 2.26 m�. El usuario debe ingresar:
// 1. Los metros cuadrados a cubrir (valor positivo)
// 2. El costo por caja (valor no negativo)


Algoritmo CajaCeramicaCosto
	Definir cantidadm2, costocaja, constantecaja, costototal, cantidadcaja Como Real
	cantidadm2=0
	costocaja=0
	constantecaja=2.26 // Cada caja cubre esta �rea fija en metros cuadrados
	costototal=0
	// Validaci�n de entrada: metros cuadrados debe ser positivo
	Mientras cantidadm2<=0 
		Escribir "Ingrese los metros cuadrados de la superficie objetivo"
		Leer cantidadm2
		si cantidadm2<=0 
			Escribir "Cantidad de metros cuadrados debe ser mayor a 0"
		FinSi
	FinMientras
	// Validaci�n de entrada: costo por caja no puede ser negativo
	Repetir
		Escribir "Ingrese el valor del tipo caja de cer�mica"
		Leer costocaja
		si costocaja<0
			Escribir "Costo debe ser mayor o igual a 0 "
		FinSi
		
	Hasta Que costocaja>=0
	// C�lculo del n�mero de cajas necesarias (siempre redondeando hacia arriba)
	cantidadcaja=(cantidadm2/constantecaja)// Divisi�n b�sica
	cantidadcaja=techo(cantidadcaja)// Aseguramos redondeo al entero superior
	costototal=cantidadcaja*costocaja // C�lculo del costo total
	
	// Alternativas comentadas para el c�lculo:
	// 1. Usando truncado: cantidadcaja= trunc(cantidadm2/constantecaja) + 1
	// 2. Usando m�dulo (implementaci�n no mostrada)
	
	// Mostrar resultados	
	Escribir "Se van a necesitar " cantidadcaja " cajas"
	Escribir "Para un costo total de " costototal " $"
	
FinAlgoritmo  
// Funci�n auxiliar para redondear siempre hacia arriba
// Soluciona el problema de que redon() podr�a redondear hacia abajo en ciertos casos

Funcion resultado<-techo (cantidadcaja)
	resultado=redon (cantidadcaja)
	si resultado<cantidadcaja
		resultado=resultado+1
	FinSi
FinFuncion

// Observaciones adicionales:
// 1. La soluci�n actual usa una funci�n personalizada (techo) para manejar el redondeo
// 2. Existen alternativas m�s simples como trunc()+1
// 3. El enfoque elegido demuestra el uso de funciones personalizadas
// 4. Todas las soluciones garantizan que no falte material
