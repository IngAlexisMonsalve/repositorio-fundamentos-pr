//Algoritmo para Determinar Paridad de Números
	//Descripción del Algoritmo
		//Este programa determina si un número ingresado por el usuario es par o impar, utilizando el método de división entera entre 2.

	//Concepto Matemático:
		//Un número es par si el residuo de su división entre 2 es 0
		//Un número es impar si el residuo de su división entre 2 es 1
	//prueba

//Implementación del Algoritmo

Algoritmo DeterminarNumeroPar
	// Variables principales del programa
	Definir numer Como Entero // Almacena el número a evaluar
	Definir entrada como cadena // Captura temporal de la entrada del usuario 
	Definir esNumer Como Logico // Bandera para validar si la entrada es numérica
	Definir seguir Como Caracter // Controla si el usuario desea continuar
	
	// Inicialización de variables
	numer=0
	entrada=""
	esNumer=Verdadero
	seguir='s'
	
	// Bucle principal - permite múltiples evaluaciones
	Mientras seguir=='s' o seguir=='S' 
		
		// Validación de entrada numérica positiva
		Repetir
			Escribir "Introdouce el número"
			Leer entrada
			
			// Verifica si la entrada es un número válido
			esNumer=esNumero(entrada)
			si esNumer==Verdadero
				numer=ConvertirANumero(entrada)
			SiNo
				Escribir "Por favor introduce un número entero positivo"
			FinSi
		Hasta Que numer>0 y esNumer==Verdadero
		
		// Determinación de paridad usando operación módulo
		si (numer mod 2)=0 
			Escribir "  " numer " es un número par"
		SiNo
			Escribir "No es un número par"
		FinSi
		
		// Consulta para continuar con otro número
		Escribir "Presion S si quieres continuar o cualquier tecla si quieres salir"
		Leer seguir
		
	FinMientras
		
FinAlgoritmo

// Función auxiliar para validar entrada numérica
Funcion resultado<-esNumero(datoEntrada)
	
	// Inicialización
	resultado=Verdadero
	Definir puntoDecimal Como Logico
	puntoDecimal=Falso 
	
	// Análisis carácter por carácter
	Para c<-1 hasta Longitud(datoEntrada)
		//Verifica si el carácter es dígito numérico
		Si Subcadena(datoEntrada, c, c)<"0" o Subcadena(datoEntrada,c,c)>"9" 
			
			
			// Permite un único punto decimal
			si Subcadena(datoEntrada,c,c)=="." y puntoDecimal==falso
				puntoDecimal=Verdadero
			SiNo
				resultado=Falso
				c=Longitud(datoEntrada)// Termina el ciclo
			FinSi
			
			
		FinSi
	FinPara
FinFuncion
