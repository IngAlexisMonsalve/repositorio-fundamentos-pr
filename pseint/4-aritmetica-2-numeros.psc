// Lee dos números y realiza una operación según su relación:
// - Si son iguales, los multiplica
// - Si el primero es mayor que el segundo, los resta
// - En cualquier otro caso, los suma

Algoritmo Aritmetica2Numeros
	Definir Num1,Num2,Total Como Entero
	Escribir "Introduce el Primer número" 
	Leer Num1
	Escribir "Introduce el Segundo número"
	Leer Num2
	si Num1>Num2
		Total=Num1-Num2
		Escribir "La resta es: "
	SiNo si Num1<Num2
			Total=Num1+Num2
			Escribir "La suma es: "
		SiNo
			Total=Num1*Num2
			Escribir "La Multiplicación es: "
		FinSi
		
	FinSi
	Escribir Total // Mostrar el resultado una sola vez al final mejora la eficiencia
		
FinAlgoritmo

// Justificación de la estructura condicional anidada:
// Esta implementación es eficiente porque:
// 1. Las condiciones son dependientes (si no es mayor, solo puede ser menor o igual)
// 2. El flujo del algoritmo sigue una lógica natural descendente
// 3. Evita evaluar condiciones redundantes
// 4. Optimiza el camino de ejecución para cada caso posible
