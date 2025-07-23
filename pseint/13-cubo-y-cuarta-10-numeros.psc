//Descripción del Algoritmo
	//Este programa calcula las potencias cúbica y cuarta de 10 números ingresados por el usuario, mostrando los resultados de forma clara e inmediata.
//Características principales:
	//Solicita 10 números de entrada uno por uno
	//Calcula y muestra tanto el cubo como la cuarta potencia de cada número
	//Procesamiento secuencial con estructura de bucle controlado


Algoritmo CuboyCuarta10numerosPara
	// Declaración de variables
	Definir num,cubo,cuarta Como Entero
	
	// Bucle para procesar exactamente 10 números
	Para c<-1 hasta 10
		Escribir "Introduzca un número" //Un adicional es que falta validar que el usuario ingrese números y no letras.
		Leer num
		
		// Cálculo de potencias:
		// 1. Cubo (elevado a 3)
		cubo=num*num*num
		// 2. Cuarta potencia (aprovechando el cubo ya calculado)
		cuarta=cubo*num 
		
		// Presentación de resultados
		Escribir "El cubo de: " num " es " cubo
		Escribir "La cuarta de: " num " es " cuarta
		
	FinPara
FinAlgoritmo


//Observaciones y posibles mejoras
//Validación de entrada:
	//Actualmente no valida si el usuario ingresa caracteres no numéricos
	//Podría implementarse un sistema de reintentos para entradas inválidas

	//Optimización matemática:
		//El cálculo de la cuarta potencia como cubo*num es eficiente y muestra buen pensamiento algorítmico
		//Alternativamente podría usarse num^4 si el lenguaje lo soporta

	//Extensibilidad:
			//Podría convertirse en una función que reciba la cantidad de números a procesar
			//Se podría añadir cálculo de otras potencias (cuadrado, quinta, etc.)
				
	//Experiencia de usuario:
				
			//Mostrar un contador de progreso (Ej: "Número 3 de 10")
			//Opción para salir anticipadamente
