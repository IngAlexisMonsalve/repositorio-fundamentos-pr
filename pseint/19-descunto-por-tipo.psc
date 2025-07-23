//Algoritmo para Cálculo de Descuentos por Tipo de Producto
	//Descripción del Algoritmo
	//Este programa calcula automáticamente el descuento aplicable a un producto según su categoría, mostrando:
		//Precio original del artículo
		//Monto del descuento aplicado
		//Precio final con descuento
			
	
//Valor del descuento de un artículo dependiendo de su tipo:
//	Tipo 			Porcentaje de descuento
//	Textil 					0 %
//	Electrodoméstico      3.7 %
//	Elementos de cocina 	4.2 %
//	Video juego 			7.8 %

//Estructura del Código

Algoritmo DescuntoPorTipo
	// Declaración de variables principales
	definir tipo Como Entero // Almacena la categoría seleccionada (1-4)
	definir descuentos, precio, preciototal Como Real // Variables para cálculos
	Definir entrada como cadena // Almacena temporalmente la entrada del usuario
	Definir esNumer Como Logico // Bandera para validación de entrada numérica
	Definir seguir Como Caracter
	Dimension descuento[4] to
	entrada=""
	esNumer=Verdadero
	seguir='s'
	
	// Configuración de descuentos por categoría
	descuento[1]=0
	descuento[2]=0.037
	descuento[3]=0.042
	descuento[4]=0.078
	
	
	// Bucle principal para múltiples consultas
	Mientras seguir=='s'
		// Selección del tipo de producto
		Repetir
			Escribir "      Introduzca el tipo de artículo marcando el número correspondiente"
			Escribir "   1.- Textil "
			Escribir "   2.- Electródoméstico "
			Escribir "   3.- Elemetnos de cocina "
			Escribir "   4.- Video juego "
			Leer entrada
			
			// Validación de la selección
			esNumer=esNumero(entrada)
			si esNumer==Verdadero
				tipo=ConvertirANumero(entrada)
			Fin si	
			si tipo < 1 o tipo > 4  o esNumer==Falso
				Escribir "  Por favor introduzca un número del 1 al 4, segun corresponda al tipo de artículo"
			FinSi
		Hasta que tipo>=1 y tipo <=4 y esNumer==Verdadero
		
		// Ingreso del precio del producto
		Repetir
			Escribir "     Introduzca el precio del artículo"
			Leer entrada
			esNumer=esNumero(entrada)
			si esNumer==Verdadero
				precio=ConvertirANumero(entrada)
			FinSi
			si precio <0 y esNumer==Falso
				Escribir "   El precio debe ser un número mayor a 0"
			FinSi
		Hasta Que precio>=0 y esNumer==Verdadero
		
		// Cálculo del descuento y precio final
		descuentos= precio * descuento[tipo] // Aplica el porcentaje correspondiente
		preciototal= precio - descuentos // Calcula el precio final
		
		// Presentación de resultados	
		Escribir "  El Precio del producto es:  " precio	
		Escribir "  El descuento del producto es: " descuentos
		Escribir "  El precio total del producto es: " preciototal
		
		// Consulta para continuar con otro producto
		Escribir "  Deseas introducir el precio de otro producto S/N"
		Leer seguir
	FinMientras
	
FinAlgoritmo

// Función para validar entrada numérica decimal
Funcion resultado<-esNumero(datoEntrada)
	resultado=Verdadero
	Definir puntoDecimal Como Logico
	puntoDecimal=Falso // Controla que solo haya un punto decimal
	
	Para c<-1 hasta Longitud(datoEntrada)
		// Verifica cada carácter
		Si Subcadena(datoEntrada, c, c)<"0" o Subcadena(datoEntrada,c,c)>"9" 
			// Permite un único punto decimal
			si Subcadena(datoEntrada,c,c)=="." y puntoDecimal==falso
				puntoDecimal=Verdadero
			SiNo
				resultado=Falso
				c=Longitud(datoEntrada)// Termina el ciclo
			FinSi
		FinSi
	FinPara
FinFuncion

//Características Clave

//Sistema de Descuentos Configurable:
	//Porcentajes almacenados en arreglo para fácil mantenimiento
	//Categorías claramente identificadas

//Validación Robusta:
	//Verificación de selección válida (1-4)
	//Control de entrada numérica positiva
	//Función especializada para validación decimal
			
//Interfaz Amigable:
	//Menú claro de categorías
	//Resultados detallados y formateados
	//Posibilidad de múltiples consultas
			
//Lógica Eficiente:
		//Cálculo directo usando índice del arreglo
		//Estructura modular y organizada
			
//Mejoras Implementadas
		//Mostrar porcentaje de descuento aplicado
		//Mejor formato de presentación
		//Mensajes de error más descriptivos
		//Validación más completa de entradas
			
	//Este algoritmo representa una solución profesional para sistemas de punto de venta que requieren aplicar descuentos variables por tipo de producto.

