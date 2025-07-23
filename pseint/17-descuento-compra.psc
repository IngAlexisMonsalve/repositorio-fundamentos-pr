//Algoritmo para C�lculo de Descuento en Compras
	//Descripci�n del Algoritmo
		//Este programa calcula el monto final a pagar aplicando un 20% de descuento cuando la compra supera los $1000, con validaci�n de entrada num�rica.
			
	//Datos de Entrada:
		//Monto total de la compra (validado como n�mero positivo)
			
	//Datos de Salida:
		//Total a pagar despu�s de aplicar descuento (si corresponde)
				
	//Implementaci�n del Algoritmo

Algoritmo DescuentoCompra
	// Declaraci�n de variables

	Definir compra,totalapagar Como Real  // compra: valor inicial, totalapagar: valor fina
	Definir entrada como cadena // Almacena temporalmente la entrada del usuario
	Definir esNumer Como Logico // Bandera para validaci�n num�rica
	
	// Solicitud de datos inicial
	Escribir "ingrese monto de la compra"   
	Leer entrada
	
	// Proceso de validaci�n de entrada
	Repetir
		esNumer=esNumero(entrada) // Verifica si la entrada es num�rica
		si esNumer=Verdadero
			compra=ConvertirANumero(entrada)
			// Validaci�n de monto no negativo
			si compra<0
				Escribir "El monto de la compra debe ser igua o mayor que cero. Ingresa el monto"
				Leer entrada 
			FinSi
		SiNo
			Escribir "El monto de la compra debe ser un n�mero. Ingresa el monto"
			leer entrada
		FinSi
	Hasta Que esNumer==Verdadero y compra>=0
	
	// Aplicaci�n de descuento condicional
	si compra>1000 Entonces
		// C�lculo con 20% de descuento
		totalapagar=compra -compra*0.20 	
	SiNo
		// Sin descuento para montos menores
		totalapagar=compra 					
		
	FinSi
	
	// Presentaci�n del resultado final
	Escribir "Total a pagar es " totalapagar "$" 
FinAlgoritmo

// Funci�n de validaci�n num�rica
Funcion resultado<-esNumero(datoEntrada)
	// Verifica que la cadena contenga solo d�gitos num�ricos
    // (Se podr�a mejorar para aceptar decimales)
	resultado=Verdadero
	Para c<-1 hasta Longitud(datoEntrada)
		Si Subcadena(datoEntrada, c, c)<"0" o Subcadena(datoEntrada,c,c)>"9" 
			resultado=Falso
			c=Longitud(datoEntrada) // Termina el ciclo anticipadamente
		FinSi
	FinPara

FinFuncion



//Caracter�sticas Clave
//Validaci�n Robustez:
	//Verifica que la entrada sea num�rica mediante funci�n especializada
	//Asegura que el monto sea positivo o cero
	//Proporciona mensajes de error espec�ficos
	
//L�gica de Negocio Clara:
	//Aplica 20% de descuento solo para compras mayores a $1000
	//Estructura condicional simple y eficiente
		
//Experiencia de Usuario:
	//Mensajes claros en cada etapa del proceso
	//Formato consistente para el resultado final
	//Validaci�n interactiva con reintentos
				
//Posibles Mejoras
		//Permitir valores decimales en el monto
		//Mostrar el monto descontado como informaci�n adicional
		//Implementar m�ltiples rangos de descuento
		//Agregar validaci�n para montos m�ximos
		//Mostrar el porcentaje de descuento aplicado
		//Este algoritmo representa una soluci�n completa para sistemas de punto de venta b�sicos, con capacidad para expandir su funcionalidad seg�n necesidades comerciales espec�ficas.


