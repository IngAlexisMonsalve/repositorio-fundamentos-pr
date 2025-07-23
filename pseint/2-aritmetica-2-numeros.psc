//EJERCICIO: Operaciones con dos n�meros
	 
 //Dados dos n�meros enteros:
	// 1. Si son iguales  Multiplicarlos
	// 2. Si el primero es mayor Restarlos
	// 3. En cualquier otro caso Sumarlos
		

Algoritmo Aritmetica2Numeros
	Definir Num1,Num2,Total Como Entero
	Escribir "Introduce el Primer n�mero" 
	Leer Num1
	Escribir "Introduce el Segundo n�mero"
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
			Escribir "La Multiplicaci�n es: "
		FinSi
		
	FinSi
	Escribir Total // es mejor que colocar esta linea varias veces en el c�difo
		
FinAlgoritmo

//NOTAS SOBRE LA ESTRUCTURA:
//Se usa condicional anidado (Si-Sino Si-Sino) porque las condiciones son:
	//  - Mutuamente excluyentes
	// Cubren todos los casos posibles
	// Ventajas:
	// M�s legible que condiciones separadas
	// Eval�a s�lo las condiciones necesarias
	// El flujo sigue la l�gica natural del problema
// Optimizaci�n:
	// Un �nico Escribir para el resultado final

