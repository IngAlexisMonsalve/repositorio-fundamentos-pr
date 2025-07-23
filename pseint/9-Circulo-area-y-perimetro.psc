// Calcula el área y perímetro de un círculo dado su radio
// Fórmulas utilizadas:
// - Área = ? * radio²
// - Perímetro = 2 * ? * radio
// Utiliza la constante PI definida en PSeInt (aproximación 3.1416)


Algoritmo CirculoAreaYPerimetro
	// Declaración de variables
	Definir area, perimetro, radio Como Real //Pseint trae la constante PI como palabra resaervada
	area=0 // Almacenará el área calculada del círculo
	radio=0 // Radio del círculo proporcionado por el usuario
	perimetro=0 // Almacenará el perímetro calculado
	
	// Solicitud de entrada del radio al usuario
	Escribir "Indique el radio del circulo"
	Leer radio
	// Validación: el radio no puede ser negativo
	Mientras radio<0 
		Escribir "no hay radio negativo"
		Leer radio
	FinMientras
	
	// Cálculos geométricos	
	area= PI*radio^2    // Fórmula del área del círculo
	perimetro=2*PI*radio // Fórmula del perímetro (circunferencia)
	
	// Presentación de resultados
	Escribir "El área del círculo es : " area 
	Escribir "El perímetro del círculo es:  " perimetro
		
FinAlgoritmo
