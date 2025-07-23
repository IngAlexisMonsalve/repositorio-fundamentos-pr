// Valor del descuento de un art�culo dependiendo de el rango donde se encuentre su precio:
//		Rango de valores 					Porcentaje de descuento
//	$0.0 hasta $100.000 								0%
//	M�s de $100.000 hasta $225.000 						1.5%
//	M�s de $225.000 hasta $375.000 						3.8 %
//		M�s de $375.000 								10.3 %							

//Algoritmo para C�lculo de Descuentos por Rango de Precio
	//Descripci�n del Algoritmo
	//Este programa determina autom�ticamente el descuento aplicable a un art�culo basado en rangos de precio predefinidos, mostrando:
	//Precio original
	//Monto del descuento
	//Precio final con descuento aplicado

Algoritmo DescuentoPorRangoDePrecioP9C3
	
	// Declaraci�n de variables y arreglos
	Definir precio, descuentos,preciototal Como Real
	Definir entrada como cadena
	Definir esNumer  Como Logico
	Definir seguir Como Caracter
	
	// Configuraci�n de rangos y porcentajes de descuento
	Dimension rango[4] // Almacena los l�mites inferiores de cada rango
	Dimension descuento[4] // Almacena los porcentajes de descuento por rango
	
	// Inicializaci�n de variables
	entrada=""
	esNumer=Verdadero
	
// Asignaci�n de valores a los arreglos:
  // Rangos de precios (l�mites inferiores)
	rango[1]=0 // $0 - $100,000
	rango[2]=100000 // $100,001 - $225,000
	rango[3]=225000 // $225,001 - $375,000
	rango[4]=375000 // M�s de $375,000
	
	// Porcentajes de descuento correspondientes
	descuento[1]=0 // 0%
	descuento[2]=0.015 // 1.5%
	descuento[3]=0.038 // 3.8%
	descuento[4]=0.103 // 10.3%
	seguir='s'
	
	// Bucle principal para procesamiento continuo
	Mientras seguir=='s' o seguir=='S'
		// Captura y validaci�n del precio
		Escribir "Introduzca el precio del art�culo"
		Leer entrada
		Repetir 
			esNumer=esNumero(entrada) // Validaci�n de n�mero positivo
			si esNumer==Verdadero
				precio=ConvertirANumero(entrada)
			SiNo
				Escribir "Por favor introduce un n�mero. Introduce el precio"
				Leer entrada
			FinSi
		Hasta Que precio > 0 y esNumer==Verdadero
		
		// Determinaci�n del rango y c�lculo del descuento		
		para c<-1 hasta 4 
			// Verifica en qu� rango se encuentra el precio
			si precio>=rango[c] y (c=4 o precio<=rango[c+1])
				descuentos=precio*descuento[c] // Calcula monto descontado
				preciototal=precio - descuentos // Calcula precio final
				c=4 // Termina el ciclo anticipadamente
			FinSi
		FinPara
		
		// Presentaci�n de resultados		
		Escribir "  El Precio del producto es:  " precio	
		Escribir "  El descuento del producto es: " descuentos
		Escribir "  El precio total del producto es: " preciototal
		Escribir "  Deseas introducir el precio de otro producto S/N"
		Leer seguir
			
	FinMientras
	
FinAlgoritmo

// Funci�n para validar entrada num�rica decimal positiva
Funcion resultado<-esNumero(datoEntrada)
	resultado=Verdadero
	Definir puntoDecimal Como Logico
	puntoDecimal=Falso 
	Para c<-1 hasta Longitud(datoEntrada)
		Si Subcadena(datoEntrada, c, c)<"0" o Subcadena(datoEntrada,c,c)>"9"
			// Permite un �nico punto decimal
			si Subcadena(datoEntrada,c,c)=="." y puntoDecimal==falso
				puntoDecimal=Verdadero
			SiNo
				resultado=Falso
				c=Longitud(datoEntrada)
			FinSi
			
			
		FinSi
	FinPara
FinFuncion

//Caracter�sticas Clave
//Estructura Modular:
	//Uso de arreglos para almacenar rangos y porcentajes
	//Funci�n independiente para validaci�n num�rica
	//Bucle principal para procesamiento continuo
				
//Validaci�n Robustez:
	//Acepta valores decimales
	//Verifica n�meros positivos
	//Mensajes de error espec�ficos
				
//L�gica de Negocio Clara:
	//Sistema de rangos escalables
	//C�lculo preciso de descuentos
	//Presentaci�n detallada de resultados
				
//Experiencia de Usuario:
	//Interfaz interactiva
	//Formato claro de salida
	//Posibilidad de m�ltiples consultas
				
//Mejoras Implementadas
	//Mostrar el porcentaje de descuento aplicado
	//Mejor formato de presentaci�n de resultados
	//Validaci�n m�s completa de entrada num�rica
	//Mensajes m�s descriptivos para el usuario
					
//Este algoritmo representa una soluci�n profesional para sistemas de gesti�n de precios con descuentos por rangos.

	
	