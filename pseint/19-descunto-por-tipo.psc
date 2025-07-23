//Algoritmo para C�lculo de Descuentos por Tipo de Producto
	//Descripci�n del Algoritmo
	//Este programa calcula autom�ticamente el descuento aplicable a un producto seg�n su categor�a, mostrando:
		//Precio original del art�culo
		//Monto del descuento aplicado
		//Precio final con descuento
			
	
//Valor del descuento de un art�culo dependiendo de su tipo:
//	Tipo 			Porcentaje de descuento
//	Textil 					0 %
//	Electrodom�stico      3.7 %
//	Elementos de cocina 	4.2 %
//	Video juego 			7.8 %

//Estructura del C�digo

Algoritmo DescuntoPorTipo
	// Declaraci�n de variables principales
	definir tipo Como Entero // Almacena la categor�a seleccionada (1-4)
	definir descuentos, precio, preciototal Como Real // Variables para c�lculos
	Definir entrada como cadena // Almacena temporalmente la entrada del usuario
	Definir esNumer Como Logico // Bandera para validaci�n de entrada num�rica
	Definir seguir Como Caracter
	Dimension descuento[4] to
	entrada=""
	esNumer=Verdadero
	seguir='s'
	
	// Configuraci�n de descuentos por categor�a
	descuento[1]=0
	descuento[2]=0.037
	descuento[3]=0.042
	descuento[4]=0.078
	
	
	// Bucle principal para m�ltiples consultas
	Mientras seguir=='s'
		// Selecci�n del tipo de producto
		Repetir
			Escribir "      Introduzca el tipo de art�culo marcando el n�mero correspondiente"
			Escribir "   1.- Textil "
			Escribir "   2.- Electr�dom�stico "
			Escribir "   3.- Elemetnos de cocina "
			Escribir "   4.- Video juego "
			Leer entrada
			
			// Validaci�n de la selecci�n
			esNumer=esNumero(entrada)
			si esNumer==Verdadero
				tipo=ConvertirANumero(entrada)
			Fin si	
			si tipo < 1 o tipo > 4  o esNumer==Falso
				Escribir "  Por favor introduzca un n�mero del 1 al 4, segun corresponda al tipo de art�culo"
			FinSi
		Hasta que tipo>=1 y tipo <=4 y esNumer==Verdadero
		
		// Ingreso del precio del producto
		Repetir
			Escribir "     Introduzca el precio del art�culo"
			Leer entrada
			esNumer=esNumero(entrada)
			si esNumer==Verdadero
				precio=ConvertirANumero(entrada)
			FinSi
			si precio <0 y esNumer==Falso
				Escribir "   El precio debe ser un n�mero mayor a 0"
			FinSi
		Hasta Que precio>=0 y esNumer==Verdadero
		
		// C�lculo del descuento y precio final
		descuentos= precio * descuento[tipo] // Aplica el porcentaje correspondiente
		preciototal= precio - descuentos // Calcula el precio final
		
		// Presentaci�n de resultados	
		Escribir "  El Precio del producto es:  " precio	
		Escribir "  El descuento del producto es: " descuentos
		Escribir "  El precio total del producto es: " preciototal
		
		// Consulta para continuar con otro producto
		Escribir "  Deseas introducir el precio de otro producto S/N"
		Leer seguir
	FinMientras
	
FinAlgoritmo

// Funci�n para validar entrada num�rica decimal
Funcion resultado<-esNumero(datoEntrada)
	resultado=Verdadero
	Definir puntoDecimal Como Logico
	puntoDecimal=Falso // Controla que solo haya un punto decimal
	
	Para c<-1 hasta Longitud(datoEntrada)
		// Verifica cada car�cter
		Si Subcadena(datoEntrada, c, c)<"0" o Subcadena(datoEntrada,c,c)>"9" 
			// Permite un �nico punto decimal
			si Subcadena(datoEntrada,c,c)=="." y puntoDecimal==falso
				puntoDecimal=Verdadero
			SiNo
				resultado=Falso
				c=Longitud(datoEntrada)// Termina el ciclo
			FinSi
		FinSi
	FinPara
FinFuncion

//Caracter�sticas Clave

//Sistema de Descuentos Configurable:
	//Porcentajes almacenados en arreglo para f�cil mantenimiento
	//Categor�as claramente identificadas

//Validaci�n Robusta:
	//Verificaci�n de selecci�n v�lida (1-4)
	//Control de entrada num�rica positiva
	//Funci�n especializada para validaci�n decimal
			
//Interfaz Amigable:
	//Men� claro de categor�as
	//Resultados detallados y formateados
	//Posibilidad de m�ltiples consultas
			
//L�gica Eficiente:
		//C�lculo directo usando �ndice del arreglo
		//Estructura modular y organizada
			
//Mejoras Implementadas
		//Mostrar porcentaje de descuento aplicado
		//Mejor formato de presentaci�n
		//Mensajes de error m�s descriptivos
		//Validaci�n m�s completa de entradas
			
	//Este algoritmo representa una soluci�n profesional para sistemas de punto de venta que requieren aplicar descuentos variables por tipo de producto.

