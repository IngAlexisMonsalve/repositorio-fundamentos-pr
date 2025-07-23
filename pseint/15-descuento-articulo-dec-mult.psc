//Dise�e un algoritmo que permite conocer el valor del	descuento de un art�culo seg�n su tipo. Todos los tipos y sus respectivos
//descuentos se pueden observar en la Tabla 3.3.
//Tipo Descuento
//1 	12.5 %
//2 	8.3 %
//3 	3.2 %
//Otro 0.0 %

//An�lisis del Problema
//Este algoritmo determina el valor del descuento aplicable a un art�culo seg�n su categor�a, basado en una tabla predefinida de porcentajes.
//Datos de Entrada:
	//Valor num�rico del art�culo (validado)
	//Tipo de art�culo (1, 2, 3 u otro - validado)
//Datos de Salida:
	//Monto del descuento aplicable seg�n el tipo de art�culo
	//Implementaci�n del Algoritmo

Algoritmo DescuentoArticuloDecMult
	// Declaraci�n de variables principales
	Definir descuento como Real // Almacena el monto del descuento calculado
	Definir tipo_articulo Como Entero // Categor�a del art�culo (1-3)
	Definir entrada Como cadena // Entrada del usuario para validaci�n
	Definir esNumer Como Logico // Bandera de validaci�n num�rica
	Definir valor_articulo Como Real // Valor base del art�culo
	
	// Inicializaci�n de variables
	entrada=""
	esNumer=Verdadero
	tipo_articulo=0
	valor_articulo=0
	
	// Validaci�n del valor del art�culo
	Repetir
		Escribir "Introduzca el Valor del art�culo"
		Leer entrada
		esNumer=esNumero(entrada) // Funci�n de validaci�n num�rica
		si esNumer==Falso
			Escribir "Por favor escribe un n�mero"
		SiNo
			valor_articulo=ConvertirANumero(entrada)
		FinSi
	Hasta Que (esNumer==Verdadero)
	
	// Selecci�n del tipo de art�culo
	Repetir
		Escribir "Presiona 1,2 o 3 seg�n el tipo de art�culo"
		Escribir "1)Art�culo 1"
		Escribir "2)Art�culo 2"
		Escribir "3)Art�culo 3"
		Leer tipo_articulo
		
		// Validaci�n del rango permitido
		Si tipo_articulo<1 o tipo_articulo>3
			Escribir "Por favor, recuerda que son n�mero entre 1 y 3, incluyendo ambos"
		FinSi
	Hasta Que (tipo_articulo>=1 y tipo_articulo<=3)
	
	// C�lculo del descuento seg�n categor�a
	Segun (tipo_articulo)
		caso 1:
			descuento=valor_articulo*0.12
		Caso 2:
			descuento=valor_articulo*0.083
		Caso 3:
			descuento=valor_articulo*0.032
	
	FinSegun
	// Presentaci�n de resultados
	Escribir "El descuento del art�culo tipo: " tipo_articulo " es de: " descuento
		
FinAlgoritmo

// Funci�n para validar entrada num�rica
Funcion resultado<-esNumero(datoEntrada)
	// Valida si la cadena representa un n�mero positivo (entero o decimal)
	resultado=Verdadero
	Definir puntoDecimal Como Logico
	puntoDecimal=Falso // puedo declarar un contador e inicializarlo en 1 
	Para c<-1 hasta Longitud(datoEntrada)
		Si Subcadena(datoEntrada, c, c)<"0" o Subcadena(datoEntrada,c,c)>"9" 
			// Permite un �nico punto decimal
			si Subcadena(datoEntrada,c,c)=="." y puntoDecimal==falso
				puntoDecimal=Verdadero 
			SiNo
				resultado=Falso
				c=Longitud(datoEntrada) // Termina el ciclo anticipadamente
			FinSi
		FinSi
	FinPara
FinFuncion

//Caracter�sticas Clave
//Validaci�n Rigurosa:
	//Funci�n especializada esNumero para verificar entradas num�ricas
	//Control estricto del tipo de art�culo (solo 1, 2 o 3)
		
	//Estructura Clara:
		//Proceso dividido en etapas l�gicas (entrada, validaci�n, c�lculo, salida)
		//Uso de estructura Segun para decisi�n m�ltiple
						
	//Experiencia de Usuario:
		//Mensajes descriptivos en cada paso
		//Presentaci�n detallada del resultado final
		//Prevenci�n de errores mediante validaciones

	//Notas de Implementaci�n
		//La funci�n esNumero permite n�meros decimales pero no negativos
		//Los porcentajes de descuento siguen estrictamente la tabla proporcionada
		//El algoritmo podr�a extenderse para:
			//Manejar m�s tipos de art�culos
			//Implementar descuentos acumulativos
			//Generar facturas detalladas
	
//Este algoritmo proporciona una soluci�n robusta y profesional para el c�lculo de descuentos, ideal para sistemas de punto de venta o gesti�n de inventarios.