//Análisis del Problema
//Este algoritmo permite a un profesor determinar:
	//Cantidad de estudiantes que aprobaron/reprobaron la asignatura
	//Promedio general del grupo
	//Se considera aprobado con nota mínima de 3.0
	//Datos de Entrada:
		//Nota de cada estudiante (escala 1.0 a 5.0)
		//Código del estudiante (aunque no se utiliza en los cálculos)
		//Decisión de continuar ingresando datos (S/N)
	//Datos de Salida:
		//Promedio general del grupo
		//Cantidad de aprobados
	//Cantidad de reprobados



//Implementación del Algoritmo

Algoritmo CuantosEstudiantesPasaronEj42
	
	// Definición de variables
	Definir nota, sumanota, promedionota, NOTAPARAAPROBAR Como Real
	Definir cantidadAprobados, cantidadReprobados Como Entero
	Definir seguir Como Caracter
	
	// Inicialización de variables
	cantidadAprobados=0
	cantidadReprobados=0
	nota=0
	sumanota=0
	pomedionota=0
	NOTAPARAAPROBAR=3
	
	// Ciclo principal para ingreso de notas
	Repetir 
		// Solicitud y validación de la nota
		Escribir "Ingrese la nota del estudiante " 
		Leer nota
		Mientras (nota<=1 o nota >=5)
			Escribir  "Por favor introduce la nota según escala de 1 a 5"
			Leer nota
		FinMientras
		
		// Acumulación de notas para el promedio
		sumanota=sumanota + nota
		
		// Clasificación del estudiante (aprobado/reprobado)
		Si nota >= NOTAPARAAPROBAR 
			cantidadAprobados=cantidadAprobados + 1
		SiNo
			cantidadReprobados=cantidadReprobados+1
		FinSi
		
		// Consulta para continuar ingresando datos
		Escribir "Quieres Intruducir otro estudiante? S/N"
		Leer seguir
	Hasta Que (seguir<>'s' y seguir<>'S') 
	
	// Cálculo del promedio general
	promedionota=sumanota/(cantidadAprobados+cantidadReprobados)	
	
	// Presentación de resultados
	Escribir "  Promedio General: "  promedionota
	Escribir "  La cantidad de estudiantes aprobados es: " cantidadAprobados
	Escribir "  La cantidad de estudiantes que reprobaron es: " cantidadReprobados 
	
	
FinAlgoritmo

//Observaciones y Mejoras Potenciales
//Versión alternativa (Algoritmo B):
		//Podría implementarse preguntando primero la cantidad total de estudiantes
		//Usar un ciclo Mientras/Desde para un control más preciso de las iteraciones
		//Validaciones adicionales:
		//Verificar que el código del estudiante sea único
		//Permitir notas con decimales (ej: 4.5)
		//Mejoras de interfaz:
		//Mostrar el número del estudiante que se está ingresando
		//Agregar confirmación antes de salir
				
	//Este algoritmo proporciona una solución completa y flexible para el requerimiento del profesor, con validación de datos y presentación clara de resultados.

New chat

