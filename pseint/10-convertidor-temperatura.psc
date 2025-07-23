// Programa de conversión de temperaturas entre escalas Kelvin, Celsius y Fahrenheit
// Permite convertir entre cualquier par de escalas usando las fórmulas estándar:
// - Celsius a Fahrenheit: F = C × 9/5 + 32
// - Celsius a Kelvin: K = C + 273.15
// - Fahrenheit a Celsius: C = (F - 32) × 5/9
// - Kelvin a Celsius: C = K - 273.15
// El programa opera en modo interactivo permitiendo múltiples conversiones

Algoritmo TransformarTemperatura
	// Declaración de variables para almacenar valores de temperatura
	
	Definir kelvin, centigrado, farenheit, grados Como Real
	// Variables de control para el flujo del programa
	Definir seguir Como Caracter
	Definir selector Como Entero
	
	// Inicialización de variables
	kelvin=0
	centigrado=0
	farenheit=0
	selector=0
	
	// Ciclo principal que permite realizar múltiples conversiones
	Repetir 
		// Menú para seleccionar la escala de temperatura de origen
		Repetir 
			Escribir "  Elija que escala quiere transformar presionando el número de su elección: "
			Escribir "   1.Kelvin"
			Escribir "   2.Centigrados"
			Escribir "   3 farenheit"
			Leer selector
		Hasta Que  (selector>=1 y selector<=3)	
		
		// Conversión desde Kelvin
		si selector==1
			Escribir "  Ingrese cuantos grados Kelvin quiere convertir" 
			Leer grados
			
			// Submenú para seleccionar escala destino
			Repetir 
				Escribir "  Seleccione con un número a que grados quiere convertirlo : "
				Escribir "   1.Centigrado"
				Escribir "   2.farenheit"
				Leer selector
			Hasta Que (selector==1 o selector ==2)
			
			// Conversión Kelvin a Celsius
			si selector==1
				centigrado= grados - 273
				Escribir "   " grados "º Kelvin es igual a " centigrado "º centigrados"
				
			// Conversión Kelvin a Fahrenheit
			SiNo
				farenheit= (grados - 273) * 9/5 + 32
				Escribir "   " grados "º Kelvin es igual a " farenheit "º farenheits"
			FinSi
			
		FinSi
		
		// Conversión desde Celsius
		si selector==2
			Escribir "  Ingrese cuantos grados Centigrados quiere convertir" 
			Leer grados
			Repetir
				Escribir "  Seleccione con un número a que grados quiere convertirlo : "
				Escribir "   1.Kelvin"
				Escribir "   2.farenheit"
				Leer selector
				
				// Conversión Celsius a Kelvin
				si selector==1
					kelvin= grados + 273
					Escribir "   " grados "º Centigrados es igual a " kelvin "º Kelvin"
					// Conversión Celsius a Fahrenheit
				SiNo
					farenheit= (grados*9/5) + 32
					Escribir "   " grados "º Centigrados es igual a " farenheit "º farenheits"
				FinSi
			Hasta Que (selector==1 o selector ==2)
		FinSi
		
		// Conversión desde Fahrenheit
		si selector==3
			Escribir "  Ingrese cuantos grados Farenheits quiere convertir" 
			Leer grados
			Repetir
				Escribir "  Seleccione con un número a que grados quiere convertirlo : "
				Escribir "   1.Centigrado"
				Escribir "   2.Kelvin"
				Leer selector
			Hasta Que (selector==1 o selector ==2)
			
			// Conversión Fahrenheit a Celsius
			si selector==1
				centigrado= (grados-32)*5/9
				Escribir "   " grados "º Farenheits es igual a " centigrado "º Centigrados"
				
			// Conversión Fahrenheit a Kelvin
			SiNo
				kelvin= (grados-32)*5/9 + 273
				Escribir "   " grados "º Farenheits es igual a " kelvin "º Kelvin"
			FinSi
		FinSi
		
		// Pregunta al usuario si desea realizar otra conversión
		Escribir "  Si quieres hacer otra conversión presiona la tela S"
		Escribir "  Si quieres Salir presionta cualquier tecla"
		Leer seguir
		
	Hasta Que (seguir<>'s' y seguir<>'S') 
				
FinAlgoritmo 


// Nota final: Este algoritmo podría optimizarse usando estructuras 'Según' (switch-case)
// pero se implementó con condicionales 'Si' para demostrar su uso. Las fórmulas usan
// una aproximación de 273 para la conversión Kelvin-Celsius, aunque el valor exacto es 273.15

