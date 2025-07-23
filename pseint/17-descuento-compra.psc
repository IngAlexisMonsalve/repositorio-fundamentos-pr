//Algoritmo para Cálculo de Descuento en Compras
	//Descripción del Algoritmo
		//Este programa calcula el monto final a pagar aplicando un 20% de descuento cuando la compra supera los $1000, con validación de entrada numérica.
			
	//Datos de Entrada:
		//Monto total de la compra (validado como número positivo)
			
	//Datos de Salida:
		//Total a pagar después de aplicar descuento (si corresponde)
				
	//Implementación del Algoritmo

Algoritmo DescuentoCompra
	// Declaración de variables

	Definir compra,totalapagar Como Real  // compra: valor inicial, totalapagar: valor fina
	Definir entrada como cadena // Almacena temporalmente la entrada del usuario
	Definir esNumer Como Logico // Bandera para validación numérica
	
	// Solicitud de datos inicial
	Escribir "ingrese monto de la compra"   
	Leer entrada
	
	// Proceso de validación de entrada
	Repetir
		esNumer=esNumero(entrada) // Verifica si la entrada es numérica
		si esNumer=Verdadero
			compra=ConvertirANumero(entrada)
			// Validación de monto no negativo
			si compra<0
				Escribir "El monto de la compra debe ser igua o mayor que cero. Ingresa el monto"
				Leer entrada 
			FinSi
		SiNo
			Escribir "El monto de la compra debe ser un número. Ingresa el monto"
			leer entrada
		FinSi
	Hasta Que esNumer==Verdadero y compra>=0
	
	// Aplicación de descuento condicional
	si compra>1000 Entonces
		// Cálculo con 20% de descuento
		totalapagar=compra -compra*0.20 	
	SiNo
		// Sin descuento para montos menores
		totalapagar=compra 					
		
	FinSi
	
	// Presentación del resultado final
	Escribir "Total a pagar es " totalapagar "$" 
FinAlgoritmo

// Función de validación numérica
Funcion resultado<-esNumero(datoEntrada)
	// Verifica que la cadena contenga solo dígitos numéricos
    // (Se podría mejorar para aceptar decimales)
	resultado=Verdadero
	Para c<-1 hasta Longitud(datoEntrada)
		Si Subcadena(datoEntrada, c, c)<"0" o Subcadena(datoEntrada,c,c)>"9" 
			resultado=Falso
			c=Longitud(datoEntrada) // Termina el ciclo anticipadamente
		FinSi
	FinPara

FinFuncion



//Características Clave
//Validación Robustez:
	//Verifica que la entrada sea numérica mediante función especializada
	//Asegura que el monto sea positivo o cero
	//Proporciona mensajes de error específicos
	
//Lógica de Negocio Clara:
	//Aplica 20% de descuento solo para compras mayores a $1000
	//Estructura condicional simple y eficiente
		
//Experiencia de Usuario:
	//Mensajes claros en cada etapa del proceso
	//Formato consistente para el resultado final
	//Validación interactiva con reintentos
				
//Posibles Mejoras
		//Permitir valores decimales en el monto
		//Mostrar el monto descontado como información adicional
		//Implementar múltiples rangos de descuento
		//Agregar validación para montos máximos
		//Mostrar el porcentaje de descuento aplicado
		//Este algoritmo representa una solución completa para sistemas de punto de venta básicos, con capacidad para expandir su funcionalidad según necesidades comerciales específicas.


