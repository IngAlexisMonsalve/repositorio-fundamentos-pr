
// PROGRAMA: CONSTRUCCIÓN DE HISTOGRAMA
 
	//Este algoritmo genera un histograma para una lista de hasta 100 valores enteros
	// en el rango 1-5. El programa:
			// 1. Solicita al usuario la entrada de números (en este caso, 10 valores como ejemplo)
			// 2. Cuenta la frecuencia de cada número
			// 3. Muestra el histograma resultante
			


Algoritmo Arreglo_5
	// Inicialización del arreglo de conteo con 5 posiciones (una para cada número del 1 al 5)
	Dimension conteo[5] 
	Definir numer Como Entero 
	// Inicialización del arreglo (asignamos 0 a todas las posiciones)
	Para i <- 1 Hasta 5 Hacer 
		conteo[i] <- 0 // Garantiza que no haya valores basura en el arreglo
	FinPara
	
	// Proceso de entrada de datos (ejemplo con 10 valores)
	Para g<-1 Hasta 10 Hacer
		Escribir "Ingrese un número del 1 al 5"
		Leer numer
		// Validación robusta de entrada
		Mientras numer<1 o numer> 5 Hacer
			Escribir "Ingrese un número del 1 al 5"  
			Leer numer
		FinMientras
		// Actualización del contador correspondiente
		conteo[numer]=conteo[numer]+1 // Incrementa el contador para el número ingresado
		
	// Explicación:
		// - Cuando se ingresa un número válido (1-5), accedemos a la posición correspondiente
		//   del arreglo 'conteo' y aumentamos su valor en 1.
	// - Ejemplo: Si numer=3, incrementamos conteo[3] en 1 unidad.
			
	FinPara
	Para f<-1 Hasta 5
		Escribir f,"  ",conteo[f]
		
	FinPara
	
	
FinAlgoritmo


// NOTAS IMPORTANTES:
// 1. Eficiencia de memoria: No almacenamos los 100 valores, solo los contadores
// 2. Ventajas del enfoque:
	//    - Uso inteligente de índices de arreglo para el conteo
		//    - Validación de entrada robusta pero simple
		//    - Fácil escalable a más valores (cambiar el límite del primer Para)
		// 3. Salida clara: Muestra directamente la frecuencia de cada número
 