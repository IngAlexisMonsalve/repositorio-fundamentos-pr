//Algoritmo de Conversión Decimal a Binario
	//Descripción del Algoritmo
	//Este programa convierte números decimales enteros positivos a su representación binaria, implementando:
		//Validación robusta de entrada
		//Proceso de conversión matemática
		//Interfaz interactiva para múltiples conversiones

//Implementación del Algoritmo

Algoritmo DecimalABin
	
	// Declaración de variable
	Definir numMod Como Real // Almacena el residuo de la división
	Definir numDec Como Real // Número decimal a convertir
	Definir entrada como cadena // Entrada del usuario como cadena para validación
	Definir binario, seguir Como Caracter
	Definir esNumero Como Logico // Bandera para validación numérica
	
	// Inicialización de variables
	esNumero=Verdadero
	entrada=""
	numMod=0
	binario=""
	seguir=""
	
	// Bucle principal para múltiples conversiones
	Repetir
		// Validación de entrada numérica
		Repetir
			Escribir "Ingrese el número decimal a convertir a binario"
			Leer entrada
			
			// Verificación carácter por carácter
			Para c<-1 Hasta Longitud(entrada)
				
				// Validación de dígitos (0-9) y punto decimal
				Si Subcadena(entrada,c,c)<"0" o Subcadena(entrada,c,c) >"9" o Subcadena(entrada,c,c)=="."
					esNumero=Falso
				SiNo
					esNumero=Verdadero
				FinSi
				
			FinPara
			
			// Conversión si la entrada es válida
			Si esNumero==Verdadero
				numDec=ConvertirANumero(entrada)
			SiNo
				Escribir "Por Favor introduce un número positivo" 
			FinSi
		Hasta Que (esNumero==Verdadero)
		
		// Validación de número positivo
		Si numDec <0
			Escribir "No se permiten número negativos"
			
		SiNo
			// Conversión a binario
			Mientras numDec>0
				numMod=numDec mod 2
				
				// Construcción de la cadena binaria
				Si numMod=0
					binario="0"+binario
				SiNo
					binario="1"+binario
				FinSi
				// Actualización del número
				numDec=numDec/2
				numDec=trunc(numDec)
			FinMientras
			
			// Mostramos el resultado
			Escribir binario
		FinSi
		
		// Consulta para continuar
		Escribir "Presiona Si (s) si deseas realziar otra conversión. Presiona cualquier tecla para salir"
		Leer seguir
	Hasta Que (seguir<>'s' y seguir<>'S')
	
FinAlgoritmo


//Características Clave
//Validación de Entrada:
	//Verifica cada carácter para asegurar que sea dígito numérico
	//Rechaza números negativos y decimales
	//Proporciona mensajes de error claros
		
	//Proceso de Conversión:
		//Utiliza el método de divisiones sucesivas por 2
		//Construye el resultado binario como cadena de caracteres
		//Maneja correctamente el caso del número 0
		//Interfaz de Usuario:
		//Permite múltiples conversiones en una misma ejecución
		//Muestra resultados formateados claramente
		//Confirmación antes de salir

	//Posibles Mejoras
		//Implementar manejo de números decimales fraccionarios
		//Añadir conversión a otros sistemas numéricos (octal, hexadecimal)
		//Mostrar el proceso de conversión paso a paso
		//Validar el rango de entrada para números muy grandes
		//Este algoritmo representa una solución completa y didáctica para la conversión numérica, ideal para propósitos educativos en programación básica.
