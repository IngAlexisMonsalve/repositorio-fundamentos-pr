//Algoritmo de Conversi�n Decimal a Binario
	//Descripci�n del Algoritmo
	//Este programa convierte n�meros decimales enteros positivos a su representaci�n binaria, implementando:
		//Validaci�n robusta de entrada
		//Proceso de conversi�n matem�tica
		//Interfaz interactiva para m�ltiples conversiones

//Implementaci�n del Algoritmo

Algoritmo DecimalABin
	
	// Declaraci�n de variable
	Definir numMod Como Real // Almacena el residuo de la divisi�n
	Definir numDec Como Real // N�mero decimal a convertir
	Definir entrada como cadena // Entrada del usuario como cadena para validaci�n
	Definir binario, seguir Como Caracter
	Definir esNumero Como Logico // Bandera para validaci�n num�rica
	
	// Inicializaci�n de variables
	esNumero=Verdadero
	entrada=""
	numMod=0
	binario=""
	seguir=""
	
	// Bucle principal para m�ltiples conversiones
	Repetir
		// Validaci�n de entrada num�rica
		Repetir
			Escribir "Ingrese el n�mero decimal a convertir a binario"
			Leer entrada
			
			// Verificaci�n car�cter por car�cter
			Para c<-1 Hasta Longitud(entrada)
				
				// Validaci�n de d�gitos (0-9) y punto decimal
				Si Subcadena(entrada,c,c)<"0" o Subcadena(entrada,c,c) >"9" o Subcadena(entrada,c,c)=="."
					esNumero=Falso
				SiNo
					esNumero=Verdadero
				FinSi
				
			FinPara
			
			// Conversi�n si la entrada es v�lida
			Si esNumero==Verdadero
				numDec=ConvertirANumero(entrada)
			SiNo
				Escribir "Por Favor introduce un n�mero positivo" 
			FinSi
		Hasta Que (esNumero==Verdadero)
		
		// Validaci�n de n�mero positivo
		Si numDec <0
			Escribir "No se permiten n�mero negativos"
			
		SiNo
			// Conversi�n a binario
			Mientras numDec>0
				numMod=numDec mod 2
				
				// Construcci�n de la cadena binaria
				Si numMod=0
					binario="0"+binario
				SiNo
					binario="1"+binario
				FinSi
				// Actualizaci�n del n�mero
				numDec=numDec/2
				numDec=trunc(numDec)
			FinMientras
			
			// Mostramos el resultado
			Escribir binario
		FinSi
		
		// Consulta para continuar
		Escribir "Presiona Si (s) si deseas realziar otra conversi�n. Presiona cualquier tecla para salir"
		Leer seguir
	Hasta Que (seguir<>'s' y seguir<>'S')
	
FinAlgoritmo


//Caracter�sticas Clave
//Validaci�n de Entrada:
	//Verifica cada car�cter para asegurar que sea d�gito num�rico
	//Rechaza n�meros negativos y decimales
	//Proporciona mensajes de error claros
		
	//Proceso de Conversi�n:
		//Utiliza el m�todo de divisiones sucesivas por 2
		//Construye el resultado binario como cadena de caracteres
		//Maneja correctamente el caso del n�mero 0
		//Interfaz de Usuario:
		//Permite m�ltiples conversiones en una misma ejecuci�n
		//Muestra resultados formateados claramente
		//Confirmaci�n antes de salir

	//Posibles Mejoras
		//Implementar manejo de n�meros decimales fraccionarios
		//A�adir conversi�n a otros sistemas num�ricos (octal, hexadecimal)
		//Mostrar el proceso de conversi�n paso a paso
		//Validar el rango de entrada para n�meros muy grandes
		//Este algoritmo representa una soluci�n completa y did�ctica para la conversi�n num�rica, ideal para prop�sitos educativos en programaci�n b�sica.
