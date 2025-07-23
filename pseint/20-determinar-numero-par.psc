//Algoritmo para Determinar Paridad de N�meros
	//Descripci�n del Algoritmo
		//Este programa determina si un n�mero ingresado por el usuario es par o impar, utilizando el m�todo de divisi�n entera entre 2.

	//Concepto Matem�tico:
		//Un n�mero es par si el residuo de su divisi�n entre 2 es 0
		//Un n�mero es impar si el residuo de su divisi�n entre 2 es 1
	//prueba

//Implementaci�n del Algoritmo

Algoritmo DeterminarNumeroPar
	// Variables principales del programa
	Definir numer Como Entero // Almacena el n�mero a evaluar
	Definir entrada como cadena // Captura temporal de la entrada del usuario 
	Definir esNumer Como Logico // Bandera para validar si la entrada es num�rica
	Definir seguir Como Caracter // Controla si el usuario desea continuar
	
	// Inicializaci�n de variables
	numer=0
	entrada=""
	esNumer=Verdadero
	seguir='s'
	
	// Bucle principal - permite m�ltiples evaluaciones
	Mientras seguir=='s' o seguir=='S' 
		
		// Validaci�n de entrada num�rica positiva
		Repetir
			Escribir "Introdouce el n�mero"
			Leer entrada
			
			// Verifica si la entrada es un n�mero v�lido
			esNumer=esNumero(entrada)
			si esNumer==Verdadero
				numer=ConvertirANumero(entrada)
			SiNo
				Escribir "Por favor introduce un n�mero entero positivo"
			FinSi
		Hasta Que numer>0 y esNumer==Verdadero
		
		// Determinaci�n de paridad usando operaci�n m�dulo
		si (numer mod 2)=0 
			Escribir "  " numer " es un n�mero par"
		SiNo
			Escribir "No es un n�mero par"
		FinSi
		
		// Consulta para continuar con otro n�mero
		Escribir "Presion S si quieres continuar o cualquier tecla si quieres salir"
		Leer seguir
		
	FinMientras
		
FinAlgoritmo

// Funci�n auxiliar para validar entrada num�rica
Funcion resultado<-esNumero(datoEntrada)
	
	// Inicializaci�n
	resultado=Verdadero
	Definir puntoDecimal Como Logico
	puntoDecimal=Falso 
	
	// An�lisis car�cter por car�cter
	Para c<-1 hasta Longitud(datoEntrada)
		//Verifica si el car�cter es d�gito num�rico
		Si Subcadena(datoEntrada, c, c)<"0" o Subcadena(datoEntrada,c,c)>"9" 
			
			
			// Permite un �nico punto decimal
			si Subcadena(datoEntrada,c,c)=="." y puntoDecimal==falso
				puntoDecimal=Verdadero
			SiNo
				resultado=Falso
				c=Longitud(datoEntrada)// Termina el ciclo
			FinSi
			
			
		FinSi
	FinPara
FinFuncion
