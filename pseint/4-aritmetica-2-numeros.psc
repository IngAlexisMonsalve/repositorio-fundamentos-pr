// Lee dos n�meros y realiza una operaci�n seg�n su relaci�n:
// - Si son iguales, los multiplica
// - Si el primero es mayor que el segundo, los resta
// - En cualquier otro caso, los suma

Algoritmo Aritmetica2Numeros
	Definir Num1,Num2,Total Como Entero
	Escribir "Introduce el Primer n�mero" 
	Leer Num1
	Escribir "Introduce el Segundo n�mero"
	Leer Num2
	si Num1>Num2
		Total=Num1-Num2
		Escribir "La resta es: "
	SiNo si Num1<Num2
			Total=Num1+Num2
			Escribir "La suma es: "
		SiNo
			Total=Num1*Num2
			Escribir "La Multiplicaci�n es: "
		FinSi
		
	FinSi
	Escribir Total // Mostrar el resultado una sola vez al final mejora la eficiencia
		
FinAlgoritmo

// Justificaci�n de la estructura condicional anidada:
// Esta implementaci�n es eficiente porque:
// 1. Las condiciones son dependientes (si no es mayor, solo puede ser menor o igual)
// 2. El flujo del algoritmo sigue una l�gica natural descendente
// 3. Evita evaluar condiciones redundantes
// 4. Optimiza el camino de ejecuci�n para cada caso posible
