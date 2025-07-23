// Programa de conversi�n de temperaturas entre escalas Kelvin, Celsius y Fahrenheit
// Permite convertir entre cualquier par de escalas usando las f�rmulas est�ndar:
// - Celsius a Fahrenheit: F = C � 9/5 + 32
// - Celsius a Kelvin: K = C + 273.15
// - Fahrenheit a Celsius: C = (F - 32) � 5/9
// - Kelvin a Celsius: C = K - 273.15
// El programa opera en modo interactivo permitiendo m�ltiples conversiones

Algoritmo TransformarTemperatura
	// Declaraci�n de variables para almacenar valores de temperatura
	
	Definir kelvin, centigrado, farenheit, grados Como Real
	// Variables de control para el flujo del programa
	Definir seguir Como Caracter
	Definir selector Como Entero
	
	// Inicializaci�n de variables
	kelvin=0
	centigrado=0
	farenheit=0
	selector=0
	
	// Ciclo principal que permite realizar m�ltiples conversiones
	Repetir 
		// Men� para seleccionar la escala de temperatura de origen
		Repetir 
			Escribir "  Elija que escala quiere transformar presionando el n�mero de su elecci�n: "
			Escribir "   1.Kelvin"
			Escribir "   2.Centigrados"
			Escribir "   3 farenheit"
			Leer selector
		Hasta Que  (selector>=1 y selector<=3)	
		
		// Conversi�n desde Kelvin
		si selector==1
			Escribir "  Ingrese cuantos grados Kelvin quiere convertir" 
			Leer grados
			
			// Submen� para seleccionar escala destino
			Repetir 
				Escribir "  Seleccione con un n�mero a que grados quiere convertirlo : "
				Escribir "   1.Centigrado"
				Escribir "   2.farenheit"
				Leer selector
			Hasta Que (selector==1 o selector ==2)
			
			// Conversi�n Kelvin a Celsius
			si selector==1
				centigrado= grados - 273
				Escribir "   " grados "� Kelvin es igual a " centigrado "� centigrados"
				
			// Conversi�n Kelvin a Fahrenheit
			SiNo
				farenheit= (grados - 273) * 9/5 + 32
				Escribir "   " grados "� Kelvin es igual a " farenheit "� farenheits"
			FinSi
			
		FinSi
		
		// Conversi�n desde Celsius
		si selector==2
			Escribir "  Ingrese cuantos grados Centigrados quiere convertir" 
			Leer grados
			Repetir
				Escribir "  Seleccione con un n�mero a que grados quiere convertirlo : "
				Escribir "   1.Kelvin"
				Escribir "   2.farenheit"
				Leer selector
				
				// Conversi�n Celsius a Kelvin
				si selector==1
					kelvin= grados + 273
					Escribir "   " grados "� Centigrados es igual a " kelvin "� Kelvin"
					// Conversi�n Celsius a Fahrenheit
				SiNo
					farenheit= (grados*9/5) + 32
					Escribir "   " grados "� Centigrados es igual a " farenheit "� farenheits"
				FinSi
			Hasta Que (selector==1 o selector ==2)
		FinSi
		
		// Conversi�n desde Fahrenheit
		si selector==3
			Escribir "  Ingrese cuantos grados Farenheits quiere convertir" 
			Leer grados
			Repetir
				Escribir "  Seleccione con un n�mero a que grados quiere convertirlo : "
				Escribir "   1.Centigrado"
				Escribir "   2.Kelvin"
				Leer selector
			Hasta Que (selector==1 o selector ==2)
			
			// Conversi�n Fahrenheit a Celsius
			si selector==1
				centigrado= (grados-32)*5/9
				Escribir "   " grados "� Farenheits es igual a " centigrado "� Centigrados"
				
			// Conversi�n Fahrenheit a Kelvin
			SiNo
				kelvin= (grados-32)*5/9 + 273
				Escribir "   " grados "� Farenheits es igual a " kelvin "� Kelvin"
			FinSi
		FinSi
		
		// Pregunta al usuario si desea realizar otra conversi�n
		Escribir "  Si quieres hacer otra conversi�n presiona la tela S"
		Escribir "  Si quieres Salir presionta cualquier tecla"
		Leer seguir
		
	Hasta Que (seguir<>'s' y seguir<>'S') 
				
FinAlgoritmo 


// Nota final: Este algoritmo podr�a optimizarse usando estructuras 'Seg�n' (switch-case)
// pero se implement� con condicionales 'Si' para demostrar su uso. Las f�rmulas usan
// una aproximaci�n de 273 para la conversi�n Kelvin-Celsius, aunque el valor exacto es 273.15

