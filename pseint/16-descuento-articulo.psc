//Algoritmo para Aplicaci�n de Descuento en Art�culos
	//Descripci�n del Algoritmo
		//Este programa calcula un descuento del 5% sobre art�culos con valor superior a $150.000, mostrando un desglose detallado del precio.
	//Datos de Entrada:
		//Precio del art�culo (validado como n�mero positivo)
	//Datos de Salida:
		//Precio inicial del art�culo
		//Monto del descuento aplicado (si corresponde)
		//Precio final despu�s del descuento
	
//Implementaci�n del Algoritmo

Algoritmo DescuentoArticulo
	// Declaraci�n de variables
	Definir constante_descuento, descuento, precio_articulo, precio_final, monto_descuento Como Real
	Definir entrada como cadena
	Definir esnumer Como Logico
	
	// Inicializaci�n de variables y constantes
	esnumer=Verdadero
	entrada=""
	constante_descuento=0.05 // Equivalente al 5% de descuento
	descuento=0 // Variable para almacenar el monto descontado
	precio_articulo=0 // Valor inicial del art�culo
	precio_final=0 // Valor despu�s de aplicar descuento
	monto_descuento=150000 // Umbral m�nimo para aplicar descuento
	
	// Proceso de captura y validaci�n del precio
	Repetir
		Escribir "	Escribe el precio del Art�culo"
		Leer entrada
		
		// Validaci�n de entrada num�rica
		esnumer=esNumero(entrada)
		si esnumer==Falso
			Escribir "Por favor escribe un n�mero"
		SiNo
			precio_articulo=ConvertirANumero(entrada)
			
		FinSi
		
		// Validaci�n de precio no negativo
		si precio_articulo<0 
			Escribir "	Escribe una cantidad razonable mayor o igual a 0 (en caso de que sea gratis la compra)"
		FinSi
	Hasta Que (precio_articulo>=0 y esnumer==Verdadero)
	
	// C�lculo del descuento y precio final
	Si precio_articulo>=monto_descuento 
		// Aplicaci�n del 5% de descuento
		descuento=precio_articulo * constante_descuento
		precio_final=precio_articulo - descuento
	SiNo
		// Sin descuento para precios menores
		precio_final=precio_articulo
	FinSi
	
	// Presentaci�n de resultados
	Escribir "	El precio del art�culo es :" 
	Escribir "	Precion Inicial   " precio_articulo
	Escribir "	Descuento         " descuento
	Escribir "	Precio Final      " precio_final
	
FinAlgoritmo

// Funci�n para validar entrada num�rica
Funcion resultado<-esNumero(datoEntrada)
	// Verifica si la cadena contiene solo d�gitos num�ricos
	resultado=Verdadero
	Para c<-1 hasta Longitud(datoEntrada)
		Si Subcadena(datoEntrada, c, c)<"0" o Subcadena(datoEntrada,c,c)>"9"
			resultado=Falso
			c=Longitud(datoEntrada)// Termina el ciclo anticipadamente
		FinSi
	FinPara
FinFuncion


//Caracter�sticas Clave
//Validaci�n Rigurosa:
	//Verifica que la entrada sea num�rica mediante funci�n especializada
	//Asegura que el precio sea no negativo
	//Proporciona mensajes de error claros
	
//L�gica de Descuento:
	//Aplica descuento del 5% solo cuando supera el umbral de $150.000
	//Mantiene estructura condicional simple y eficiente

//Presentaci�n de Resultados:
	//Muestra desglose detallado del c�lculo
	//Formato claro para f�cil comprensi�n

//Posibles Mejoras
	//Permitir valores decimales en el precio
	//Implementar diferentes rangos de descuento
	//Agregar validaci�n para precios m�ximos
	//Mostrar el porcentaje de descuento aplicado

//Este algoritmo proporciona una soluci�n completa y profesional para sistemas de gesti�n de precios con descuentos condicionales.

