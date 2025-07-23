//Descripci�n del Algoritmo
	//Este programa calcula las potencias c�bica y cuarta de 10 n�meros ingresados por el usuario, mostrando los resultados de forma clara e inmediata.
//Caracter�sticas principales:
	//Solicita 10 n�meros de entrada uno por uno
	//Calcula y muestra tanto el cubo como la cuarta potencia de cada n�mero
	//Procesamiento secuencial con estructura de bucle controlado


Algoritmo CuboyCuarta10numerosPara
	// Declaraci�n de variables
	Definir num,cubo,cuarta Como Entero
	
	// Bucle para procesar exactamente 10 n�meros
	Para c<-1 hasta 10
		Escribir "Introduzca un n�mero" //Un adicional es que falta validar que el usuario ingrese n�meros y no letras.
		Leer num
		
		// C�lculo de potencias:
		// 1. Cubo (elevado a 3)
		cubo=num*num*num
		// 2. Cuarta potencia (aprovechando el cubo ya calculado)
		cuarta=cubo*num 
		
		// Presentaci�n de resultados
		Escribir "El cubo de: " num " es " cubo
		Escribir "La cuarta de: " num " es " cuarta
		
	FinPara
FinAlgoritmo


//Observaciones y posibles mejoras
//Validaci�n de entrada:
	//Actualmente no valida si el usuario ingresa caracteres no num�ricos
	//Podr�a implementarse un sistema de reintentos para entradas inv�lidas

	//Optimizaci�n matem�tica:
		//El c�lculo de la cuarta potencia como cubo*num es eficiente y muestra buen pensamiento algor�tmico
		//Alternativamente podr�a usarse num^4 si el lenguaje lo soporta

	//Extensibilidad:
			//Podr�a convertirse en una funci�n que reciba la cantidad de n�meros a procesar
			//Se podr�a a�adir c�lculo de otras potencias (cuadrado, quinta, etc.)
				
	//Experiencia de usuario:
				
			//Mostrar un contador de progreso (Ej: "N�mero 3 de 10")
			//Opci�n para salir anticipadamente
