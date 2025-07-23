//Algoritmo para Aplicación de Descuento en Artículos
	//Descripción del Algoritmo
		//Este programa calcula un descuento del 5% sobre artículos con valor superior a $150.000, mostrando un desglose detallado del precio.
	//Datos de Entrada:
		//Precio del artículo (validado como número positivo)
	//Datos de Salida:
		//Precio inicial del artículo
		//Monto del descuento aplicado (si corresponde)
		//Precio final después del descuento
	
//Implementación del Algoritmo

Algoritmo DescuentoArticulo
	// Declaración de variables
	Definir constante_descuento, descuento, precio_articulo, precio_final, monto_descuento Como Real
	Definir entrada como cadena
	Definir esnumer Como Logico
	
	// Inicialización de variables y constantes
	esnumer=Verdadero
	entrada=""
	constante_descuento=0.05 // Equivalente al 5% de descuento
	descuento=0 // Variable para almacenar el monto descontado
	precio_articulo=0 // Valor inicial del artículo
	precio_final=0 // Valor después de aplicar descuento
	monto_descuento=150000 // Umbral mínimo para aplicar descuento
	
	// Proceso de captura y validación del precio
	Repetir
		Escribir "	Escribe el precio del Artículo"
		Leer entrada
		
		// Validación de entrada numérica
		esnumer=esNumero(entrada)
		si esnumer==Falso
			Escribir "Por favor escribe un número"
		SiNo
			precio_articulo=ConvertirANumero(entrada)
			
		FinSi
		
		// Validación de precio no negativo
		si precio_articulo<0 
			Escribir "	Escribe una cantidad razonable mayor o igual a 0 (en caso de que sea gratis la compra)"
		FinSi
	Hasta Que (precio_articulo>=0 y esnumer==Verdadero)
	
	// Cálculo del descuento y precio final
	Si precio_articulo>=monto_descuento 
		// Aplicación del 5% de descuento
		descuento=precio_articulo * constante_descuento
		precio_final=precio_articulo - descuento
	SiNo
		// Sin descuento para precios menores
		precio_final=precio_articulo
	FinSi
	
	// Presentación de resultados
	Escribir "	El precio del artículo es :" 
	Escribir "	Precion Inicial   " precio_articulo
	Escribir "	Descuento         " descuento
	Escribir "	Precio Final      " precio_final
	
FinAlgoritmo

// Función para validar entrada numérica
Funcion resultado<-esNumero(datoEntrada)
	// Verifica si la cadena contiene solo dígitos numéricos
	resultado=Verdadero
	Para c<-1 hasta Longitud(datoEntrada)
		Si Subcadena(datoEntrada, c, c)<"0" o Subcadena(datoEntrada,c,c)>"9"
			resultado=Falso
			c=Longitud(datoEntrada)// Termina el ciclo anticipadamente
		FinSi
	FinPara
FinFuncion


//Características Clave
//Validación Rigurosa:
	//Verifica que la entrada sea numérica mediante función especializada
	//Asegura que el precio sea no negativo
	//Proporciona mensajes de error claros
	
//Lógica de Descuento:
	//Aplica descuento del 5% solo cuando supera el umbral de $150.000
	//Mantiene estructura condicional simple y eficiente

//Presentación de Resultados:
	//Muestra desglose detallado del cálculo
	//Formato claro para fácil comprensión

//Posibles Mejoras
	//Permitir valores decimales en el precio
	//Implementar diferentes rangos de descuento
	//Agregar validación para precios máximos
	//Mostrar el porcentaje de descuento aplicado

//Este algoritmo proporciona una solución completa y profesional para sistemas de gestión de precios con descuentos condicionales.

