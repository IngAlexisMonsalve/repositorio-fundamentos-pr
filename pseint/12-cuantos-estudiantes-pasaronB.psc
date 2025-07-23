//Análisis del Problema
//Este algoritmo permite al profesor:
		//Registrar sistemáticamente todos los estudiantes con su código y nota
		//Calcular automáticamente estadísticas clave del grupo
		//Generar reportes detallados de los resultados
		
	//Datos de Entrada:
		//Cantidad total de estudiantes (validada)
		//Código único de cada estudiante
		//Nota definitiva de cada estudiante (validada entre 0 y 5)
		//Nota mínima aprobatoria (3.0 constante)
		
	//Datos de Salida:
		//Listado completo de estudiantes con sus códigos y notas
		//Promedio general del grupo
		//Cantidad de estudiantes aprobados y reprobados


//Implementación del algoritomo
		
Algoritmo CuantosEstudiantesPasaron
	// Declaración de variables principales
	Definir sumanota, promedionota, NOTAAPROBATORIA Como Real
	Definir cantidadEstudiantes, cantidadAprobados, cantidadReprobados Como Entero
	Definir seguro Como Caracter
	
	// Inicialización de contadores y acumuladores
	cantidadAprobados=0
	cantidadEstudiantes=0
	cantidadReprobados=0
	promedionota=0
	sumanota=0
	NOTAAPROBATORIA=3.0
	
	// Validación robusta del número de estudiantes
	Repetir
		Escribir "Introduzca el número de estudiantes del curso "
		Leer cantidadEstudiantes
		Escribir " Ha introducido " cantidadEstudiantes " Estudiantes. Presiona S si esta seguro que es la cantidad correcta"
		Leer seguro
	Hasta Que cantidadEstudiantes>0 y (seguro=='s' o seguro=='S')
	// Creación de matriz para almacenar datos de estudiantes
	// Dimensionamos una matriz de Nx2 donde:
	// - Columna 1: Códigos de estudiantes
	// - Columna 2: Notas correspondientes
	Dimension codigoestud[cantidadEstudiantes, 2]
	
	// Proceso de recolección de datos
	Para c<-1 Hasta cantidadEstudiantes
		// Registro del código del estudiante
		Escribir " Introduce el código del estudiante"
		Leer codigoestud[c,1] 
		
		// Validación de la nota dentro del rango permitido
		Repetir 
			Escribir "  Introduce la nota"
			Leer codigoestud[c,2]//en la segunda columna todas las notas
			Si codigoestud[c,2]<0 o codigoestud[c,2]>5
				Escribir " Te recordamos que el rango de nota es entro 0 y 5"
			FinSi
		Hasta Que codigoestud[c,2] >=0 y codigoestud[c,2]<=5
		
		// Acumulación de notas para el promedio
		sumanota=sumanota + codigoestud[c,2]
		
		// Clasificación del rendimiento del estudiante
		Si codigoestud[c,2] >= NOTAAPROBATORIA
			cantidadAprobados= cantidadAprobados + 1
		SiNo
			cantidadReprobados= cantidadReprobados + 1
		FinSi
		
	FinPara
	
	// Cálculo del promedio general
	promedionota=sumanota/cantidadEstudiantes 
	Escribir "  Listado de Estudiantes"
	// Impresión del listado de estudiantes.
	Para c<-1 hasta cantidadEstudiantes 
		Escribir codigoestud[c,1] " " codigoestud[c,2]
	FinPara
	
	// Generación de reportes
	Escribir "  Promedio General:  " promedionota
	Escribir "  Cantidad de Alumnos aprobados:  " cantidadAprobados
	Escribir "  Cantidad de Alumnos aprobados:  " cantidadReprobados

FinAlgoritmo


//Características Destacadas
//Validación Rigurosa:
	//Confirmación explícita del número de estudiantes
	//Verificación del rango de notas (0-5)
	
//Estructura de Datos:
	//Uso de matriz bidimensional para almacenamiento organizado
	//Separación clara entre códigos y notas
	//Reportes Detallados:
		//Listado completo de estudiantes
		//Estadísticas generales con formato claro
		//Totales verificables
		
	//Mantenibilidad:
		//Variables con nombres descriptivos
		//Comentarios explicativos
		//Estructura modular implícita

	//Posibles Mejoras Futuras
		//Implementar búsqueda de estudiantes por código
		//Agregar cálculo de nota máxima y mínima
		//Generar archivo de salida con los resultados
		//Incorporar validación de códigos únicos
		//Este algoritmo representa una solución completa y profesional para el requerimiento del profesor, con capacidad de crecimiento para incorporar funcionalidades adicionales.
