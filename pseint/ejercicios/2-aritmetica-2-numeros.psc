//EJERCICIO: Operaciones con dos números
	 
 //Dados dos números enteros:
	// 1. Si son iguales  Multiplicarlos
	// 2. Si el primero es mayor Restarlos
	// 3. En cualquier otro caso Sumarlos
		

Algoritmo Aritmetica2Numeros
	Definir Num1,Num2,Total Como Entero
	Escribir "Introduce el Primer número" 
	Leer Num1
	Escribir "Introduce el Segundo número"
	Leer Num2
	si Num1>Num2
		Total=Num1-Num2
		Escribir "La resta es: "
	SiNo
		si Num1<Num2
			Total=Num1+Num2
			Escribir "La suma es: "
		SiNo
			Total=Num1*Num2
			Escribir "La Multiplicación es: "
		FinSi
		
	FinSi
	Escribir Total // es mejor que colocar esta linea varias veces en el códifo
		
FinAlgoritmo

//NOTAS SOBRE LA ESTRUCTURA:
//Se usa condicional anidado (Si-Sino Si-Sino) porque las condiciones son:
	//  - Mutuamente excluyentes
	// Cubren todos los casos posibles
	// Ventajas:
	// Más legible que condiciones separadas
	// Evalúa sólo las condiciones necesarias
	// El flujo sigue la lógica natural del problema
// Optimización:
	// Un único Escribir para el resultado final

