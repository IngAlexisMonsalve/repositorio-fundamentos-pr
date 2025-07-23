
// PROGRAMA: CONSTRUCCIÓN DE HISTOGRAMA MEJORADO (Arreglo_5B)
	 
	// Este algoritmo genera un histograma para una lista de valores enteros entre 1 y 5,
		// con las siguientes características:
			// 1. Permite al usuario definir la cantidad de datos a registrar (hasta 100)
			// 2. Almacena tanto los valores individuales como sus frecuencias
			// 3. Implementa validación robusta de entrada
 

Algoritmo Arreglo_5B
	// Declaración de variables
	Definir numdato,reg,numhist Como Entero
	reg=0
	numdato=0
	numhist=5 // Fijos números del 1 al 5 para el histograma
	
	// Solicitud de cantidad de datos
	Escribir "Ingrese la cantidad de datos a registrar"
	Leer numdato
	
	// Creación de arreglos
	Dimension adato[numdato]// Almacena todos los valores ingresados
	Dimension ahisto[numhist]// Almacena las frecuencias (1-5)
	
	// Inicialización de arreglos (buena práctica para evitar valores basura)
	Para a<-1 Hasta numhist  
		ahisto[a]=0 // Inicializa contadores de frecuencia
	FinPara
	Para a<-1 Hasta numdato  //recordar que en PSeint la primera poscición de un vector o arreglo empieza en 1 a diferencia de otros lenguajes que comienza en 0
		adato[a]=0 // Inicializa contadores de frecuencia
	FinPara
	
	// Proceso de captura de datos
	Para c<-1 Hasta numdato
		Escribir "introduce el número de registro"
		Leer reg
		
		// Validación optimizada del rango
		Mientras reg<1 o reg >5
			Escribir "Recuerda que debe ser un número entre 1 y 5"
			Leer reg
		FinMientras
		
		// Almacenamiento de datos
		adato[c]=reg // Guarda el valor en el arreglo completo
		
		//a fondo que datos ingresaron primeros o últimos, etc. Estos son todos los datos
		ahisto[reg]=ahisto[reg]+1 //Actualiza el contador de frecuencia
		
	// Explicación del contador:
		// - Usa el valor ingresado (1-5) como índice del arreglo
		// - Incrementa en 1 la posición correspondiente
	// - Ejemplo: Si reg=4 ? ahisto[4] aumenta en 1
			
			
	
	FinPara
	Escribir "El histograma queda de la siguiente manera"
	// Visualización del histograma
    Escribir "El histograma queda de la siguiente manera:"
    Escribir "Valor | Frecuencia"
    Escribir "-----------------"
	Para c<-1 Hasta numhist
		Escribir c, " ", ahisto[c] // Muestra valor y su frecuencia

	FinPara
	
FinAlgoritmo
