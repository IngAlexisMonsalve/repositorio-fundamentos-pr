//An�lisis del Problema
//Este algoritmo permite a un profesor determinar:
	//Cantidad de estudiantes que aprobaron/reprobaron la asignatura
	//Promedio general del grupo
	//Se considera aprobado con nota m�nima de 3.0
	//Datos de Entrada:
		//Nota de cada estudiante (escala 1.0 a 5.0)
		//C�digo del estudiante (aunque no se utiliza en los c�lculos)
		//Decisi�n de continuar ingresando datos (S/N)
	//Datos de Salida:
		//Promedio general del grupo
		//Cantidad de aprobados
	//Cantidad de reprobados



//Implementaci�n del Algoritmo

Algoritmo CuantosEstudiantesPasaronEj42
	
	// Definici�n de variables
	Definir nota, sumanota, promedionota, NOTAPARAAPROBAR Como Real
	Definir cantidadAprobados, cantidadReprobados Como Entero
	Definir seguir Como Caracter
	
	// Inicializaci�n de variables
	cantidadAprobados=0
	cantidadReprobados=0
	nota=0
	sumanota=0
	pomedionota=0
	NOTAPARAAPROBAR=3
	
	// Ciclo principal para ingreso de notas
	Repetir 
		// Solicitud y validaci�n de la nota
		Escribir "Ingrese la nota del estudiante " 
		Leer nota
		Mientras (nota<=1 o nota >=5)
			Escribir  "Por favor introduce la nota seg�n escala de 1 a 5"
			Leer nota
		FinMientras
		
		// Acumulaci�n de notas para el promedio
		sumanota=sumanota + nota
		
		// Clasificaci�n del estudiante (aprobado/reprobado)
		Si nota >= NOTAPARAAPROBAR 
			cantidadAprobados=cantidadAprobados + 1
		SiNo
			cantidadReprobados=cantidadReprobados+1
		FinSi
		
		// Consulta para continuar ingresando datos
		Escribir "Quieres Intruducir otro estudiante? S/N"
		Leer seguir
	Hasta Que (seguir<>'s' y seguir<>'S') 
	
	// C�lculo del promedio general
	promedionota=sumanota/(cantidadAprobados+cantidadReprobados)	
	
	// Presentaci�n de resultados
	Escribir "  Promedio General: "  promedionota
	Escribir "  La cantidad de estudiantes aprobados es: " cantidadAprobados
	Escribir "  La cantidad de estudiantes que reprobaron es: " cantidadReprobados 
	
	
FinAlgoritmo

//Observaciones y Mejoras Potenciales
//Versi�n alternativa (Algoritmo B):
		//Podr�a implementarse preguntando primero la cantidad total de estudiantes
		//Usar un ciclo Mientras/Desde para un control m�s preciso de las iteraciones
		//Validaciones adicionales:
		//Verificar que el c�digo del estudiante sea �nico
		//Permitir notas con decimales (ej: 4.5)
		//Mejoras de interfaz:
		//Mostrar el n�mero del estudiante que se est� ingresando
		//Agregar confirmaci�n antes de salir
				
	//Este algoritmo proporciona una soluci�n completa y flexible para el requerimiento del profesor, con validaci�n de datos y presentaci�n clara de resultados.

New chat

