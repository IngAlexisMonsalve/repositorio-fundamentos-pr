//An�lisis del Problema
//Este algoritmo permite al profesor:
		//Registrar sistem�ticamente todos los estudiantes con su c�digo y nota
		//Calcular autom�ticamente estad�sticas clave del grupo
		//Generar reportes detallados de los resultados
		
	//Datos de Entrada:
		//Cantidad total de estudiantes (validada)
		//C�digo �nico de cada estudiante
		//Nota definitiva de cada estudiante (validada entre 0 y 5)
		//Nota m�nima aprobatoria (3.0 constante)
		
	//Datos de Salida:
		//Listado completo de estudiantes con sus c�digos y notas
		//Promedio general del grupo
		//Cantidad de estudiantes aprobados y reprobados


//Implementaci�n del algoritomo
		
Algoritmo CuantosEstudiantesPasaron
	// Declaraci�n de variables principales
	Definir sumanota, promedionota, NOTAAPROBATORIA Como Real
	Definir cantidadEstudiantes, cantidadAprobados, cantidadReprobados Como Entero
	Definir seguro Como Caracter
	
	// Inicializaci�n de contadores y acumuladores
	cantidadAprobados=0
	cantidadEstudiantes=0
	cantidadReprobados=0
	promedionota=0
	sumanota=0
	NOTAAPROBATORIA=3.0
	
	// Validaci�n robusta del n�mero de estudiantes
	Repetir
		Escribir "Introduzca el n�mero de estudiantes del curso "
		Leer cantidadEstudiantes
		Escribir " Ha introducido " cantidadEstudiantes " Estudiantes. Presiona S si esta seguro que es la cantidad correcta"
		Leer seguro
	Hasta Que cantidadEstudiantes>0 y (seguro=='s' o seguro=='S')
	// Creaci�n de matriz para almacenar datos de estudiantes
	// Dimensionamos una matriz de Nx2 donde:
	// - Columna 1: C�digos de estudiantes
	// - Columna 2: Notas correspondientes
	Dimension codigoestud[cantidadEstudiantes, 2]
	
	// Proceso de recolecci�n de datos
	Para c<-1 Hasta cantidadEstudiantes
		// Registro del c�digo del estudiante
		Escribir " Introduce el c�digo del estudiante"
		Leer codigoestud[c,1] 
		
		// Validaci�n de la nota dentro del rango permitido
		Repetir 
			Escribir "  Introduce la nota"
			Leer codigoestud[c,2]//en la segunda columna todas las notas
			Si codigoestud[c,2]<0 o codigoestud[c,2]>5
				Escribir " Te recordamos que el rango de nota es entro 0 y 5"
			FinSi
		Hasta Que codigoestud[c,2] >=0 y codigoestud[c,2]<=5
		
		// Acumulaci�n de notas para el promedio
		sumanota=sumanota + codigoestud[c,2]
		
		// Clasificaci�n del rendimiento del estudiante
		Si codigoestud[c,2] >= NOTAAPROBATORIA
			cantidadAprobados= cantidadAprobados + 1
		SiNo
			cantidadReprobados= cantidadReprobados + 1
		FinSi
		
	FinPara
	
	// C�lculo del promedio general
	promedionota=sumanota/cantidadEstudiantes 
	Escribir "  Listado de Estudiantes"
	// Impresi�n del listado de estudiantes.
	Para c<-1 hasta cantidadEstudiantes 
		Escribir codigoestud[c,1] " " codigoestud[c,2]
	FinPara
	
	// Generaci�n de reportes
	Escribir "  Promedio General:  " promedionota
	Escribir "  Cantidad de Alumnos aprobados:  " cantidadAprobados
	Escribir "  Cantidad de Alumnos aprobados:  " cantidadReprobados

FinAlgoritmo


//Caracter�sticas Destacadas
//Validaci�n Rigurosa:
	//Confirmaci�n expl�cita del n�mero de estudiantes
	//Verificaci�n del rango de notas (0-5)
	
//Estructura de Datos:
	//Uso de matriz bidimensional para almacenamiento organizado
	//Separaci�n clara entre c�digos y notas
	//Reportes Detallados:
		//Listado completo de estudiantes
		//Estad�sticas generales con formato claro
		//Totales verificables
		
	//Mantenibilidad:
		//Variables con nombres descriptivos
		//Comentarios explicativos
		//Estructura modular impl�cita

	//Posibles Mejoras Futuras
		//Implementar b�squeda de estudiantes por c�digo
		//Agregar c�lculo de nota m�xima y m�nima
		//Generar archivo de salida con los resultados
		//Incorporar validaci�n de c�digos �nicos
		//Este algoritmo representa una soluci�n completa y profesional para el requerimiento del profesor, con capacidad de crecimiento para incorporar funcionalidades adicionales.
