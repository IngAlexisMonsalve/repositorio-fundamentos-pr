//Diseñe un algoritmo que permite conocer el valor del	descuento de un artículo según su tipo. Todos los tipos y sus respectivos
//descuentos se pueden observar en la Tabla 3.3.
//Tipo Descuento
//1 	12.5 %
//2 	8.3 %
//3 	3.2 %
//Otro 0.0 %

//Análisis del Problema
//Este algoritmo determina el valor del descuento aplicable a un artículo según su categoría, basado en una tabla predefinida de porcentajes.
//Datos de Entrada:
	//Valor numérico del artículo (validado)
	//Tipo de artículo (1, 2, 3 u otro - validado)
//Datos de Salida:
	//Monto del descuento aplicable según el tipo de artículo
	//Implementación del Algoritmo

Algoritmo DescuentoArticuloDecMult
	// Declaración de variables principales
	Definir descuento como Real // Almacena el monto del descuento calculado
	Definir tipo_articulo Como Entero // Categoría del artículo (1-3)
	Definir entrada Como cadena // Entrada del usuario para validación
	Definir esNumer Como Logico // Bandera de validación numérica
	Definir valor_articulo Como Real // Valor base del artículo
	
	// Inicialización de variables
	entrada=""
	esNumer=Verdadero
	tipo_articulo=0
	valor_articulo=0
	
	// Validación del valor del artículo
	Repetir
		Escribir "Introduzca el Valor del artículo"
		Leer entrada
		esNumer=esNumero(entrada) // Función de validación numérica
		si esNumer==Falso
			Escribir "Por favor escribe un número"
		SiNo
			valor_articulo=ConvertirANumero(entrada)
		FinSi
	Hasta Que (esNumer==Verdadero)
	
	// Selección del tipo de artículo
	Repetir
		Escribir "Presiona 1,2 o 3 según el tipo de artículo"
		Escribir "1)Artículo 1"
		Escribir "2)Artículo 2"
		Escribir "3)Artóculo 3"
		Leer tipo_articulo
		
		// Validación del rango permitido
		Si tipo_articulo<1 o tipo_articulo>3
			Escribir "Por favor, recuerda que son número entre 1 y 3, incluyendo ambos"
		FinSi
	Hasta Que (tipo_articulo>=1 y tipo_articulo<=3)
	
	// Cálculo del descuento según categoría
	Segun (tipo_articulo)
		caso 1:
			descuento=valor_articulo*0.12
		Caso 2:
			descuento=valor_articulo*0.083
		Caso 3:
			descuento=valor_articulo*0.032
	
	FinSegun
	// Presentación de resultados
	Escribir "El descuento del artículo tipo: " tipo_articulo " es de: " descuento
		
FinAlgoritmo

// Función para validar entrada numérica
Funcion resultado<-esNumero(datoEntrada)
	// Valida si la cadena representa un número positivo (entero o decimal)
	resultado=Verdadero
	Definir puntoDecimal Como Logico
	puntoDecimal=Falso // puedo declarar un contador e inicializarlo en 1 
	Para c<-1 hasta Longitud(datoEntrada)
		Si Subcadena(datoEntrada, c, c)<"0" o Subcadena(datoEntrada,c,c)>"9" 
			// Permite un único punto decimal
			si Subcadena(datoEntrada,c,c)=="." y puntoDecimal==falso
				puntoDecimal=Verdadero 
			SiNo
				resultado=Falso
				c=Longitud(datoEntrada) // Termina el ciclo anticipadamente
			FinSi
		FinSi
	FinPara
FinFuncion

//Características Clave
//Validación Rigurosa:
	//Función especializada esNumero para verificar entradas numéricas
	//Control estricto del tipo de artículo (solo 1, 2 o 3)
		
	//Estructura Clara:
		//Proceso dividido en etapas lógicas (entrada, validación, cálculo, salida)
		//Uso de estructura Segun para decisión múltiple
						
	//Experiencia de Usuario:
		//Mensajes descriptivos en cada paso
		//Presentación detallada del resultado final
		//Prevención de errores mediante validaciones

	//Notas de Implementación
		//La función esNumero permite números decimales pero no negativos
		//Los porcentajes de descuento siguen estrictamente la tabla proporcionada
		//El algoritmo podría extenderse para:
			//Manejar más tipos de artículos
			//Implementar descuentos acumulativos
			//Generar facturas detalladas
	
//Este algoritmo proporciona una solución robusta y profesional para el cálculo de descuentos, ideal para sistemas de punto de venta o gestión de inventarios.