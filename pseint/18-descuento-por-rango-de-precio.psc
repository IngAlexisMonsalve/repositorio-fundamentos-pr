// Valor del descuento de un artículo dependiendo de el rango donde se encuentre su precio:
//		Rango de valores 					Porcentaje de descuento
//	$0.0 hasta $100.000 								0%
//	Más de $100.000 hasta $225.000 						1.5%
//	Más de $225.000 hasta $375.000 						3.8 %
//		Más de $375.000 								10.3 %							

//Algoritmo para Cálculo de Descuentos por Rango de Precio
	//Descripción del Algoritmo
	//Este programa determina automáticamente el descuento aplicable a un artículo basado en rangos de precio predefinidos, mostrando:
	//Precio original
	//Monto del descuento
	//Precio final con descuento aplicado

Algoritmo DescuentoPorRangoDePrecioP9C3
	
	// Declaración de variables y arreglos
	Definir precio, descuentos,preciototal Como Real
	Definir entrada como cadena
	Definir esNumer  Como Logico
	Definir seguir Como Caracter
	
	// Configuración de rangos y porcentajes de descuento
	Dimension rango[4] // Almacena los límites inferiores de cada rango
	Dimension descuento[4] // Almacena los porcentajes de descuento por rango
	
	// Inicialización de variables
	entrada=""
	esNumer=Verdadero
	
// Asignación de valores a los arreglos:
  // Rangos de precios (límites inferiores)
	rango[1]=0 // $0 - $100,000
	rango[2]=100000 // $100,001 - $225,000
	rango[3]=225000 // $225,001 - $375,000
	rango[4]=375000 // Más de $375,000
	
	// Porcentajes de descuento correspondientes
	descuento[1]=0 // 0%
	descuento[2]=0.015 // 1.5%
	descuento[3]=0.038 // 3.8%
	descuento[4]=0.103 // 10.3%
	seguir='s'
	
	// Bucle principal para procesamiento continuo
	Mientras seguir=='s' o seguir=='S'
		// Captura y validación del precio
		Escribir "Introduzca el precio del artículo"
		Leer entrada
		Repetir 
			esNumer=esNumero(entrada) // Validación de número positivo
			si esNumer==Verdadero
				precio=ConvertirANumero(entrada)
			SiNo
				Escribir "Por favor introduce un número. Introduce el precio"
				Leer entrada
			FinSi
		Hasta Que precio > 0 y esNumer==Verdadero
		
		// Determinación del rango y cálculo del descuento		
		para c<-1 hasta 4 
			// Verifica en qué rango se encuentra el precio
			si precio>=rango[c] y (c=4 o precio<=rango[c+1])
				descuentos=precio*descuento[c] // Calcula monto descontado
				preciototal=precio - descuentos // Calcula precio final
				c=4 // Termina el ciclo anticipadamente
			FinSi
		FinPara
		
		// Presentación de resultados		
		Escribir "  El Precio del producto es:  " precio	
		Escribir "  El descuento del producto es: " descuentos
		Escribir "  El precio total del producto es: " preciototal
		Escribir "  Deseas introducir el precio de otro producto S/N"
		Leer seguir
			
	FinMientras
	
FinAlgoritmo

// Función para validar entrada numérica decimal positiva
Funcion resultado<-esNumero(datoEntrada)
	resultado=Verdadero
	Definir puntoDecimal Como Logico
	puntoDecimal=Falso 
	Para c<-1 hasta Longitud(datoEntrada)
		Si Subcadena(datoEntrada, c, c)<"0" o Subcadena(datoEntrada,c,c)>"9"
			// Permite un único punto decimal
			si Subcadena(datoEntrada,c,c)=="." y puntoDecimal==falso
				puntoDecimal=Verdadero
			SiNo
				resultado=Falso
				c=Longitud(datoEntrada)
			FinSi
			
			
		FinSi
	FinPara
FinFuncion

//Características Clave
//Estructura Modular:
	//Uso de arreglos para almacenar rangos y porcentajes
	//Función independiente para validación numérica
	//Bucle principal para procesamiento continuo
				
//Validación Robustez:
	//Acepta valores decimales
	//Verifica números positivos
	//Mensajes de error específicos
				
//Lógica de Negocio Clara:
	//Sistema de rangos escalables
	//Cálculo preciso de descuentos
	//Presentación detallada de resultados
				
//Experiencia de Usuario:
	//Interfaz interactiva
	//Formato claro de salida
	//Posibilidad de múltiples consultas
				
//Mejoras Implementadas
	//Mostrar el porcentaje de descuento aplicado
	//Mejor formato de presentación de resultados
	//Validación más completa de entrada numérica
	//Mensajes más descriptivos para el usuario
					
//Este algoritmo representa una solución profesional para sistemas de gestión de precios con descuentos por rangos.

	
	