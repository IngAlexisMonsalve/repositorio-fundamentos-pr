// Calcula el �rea y per�metro de un c�rculo dado su radio
// F�rmulas utilizadas:
// - �rea = ? * radio�
// - Per�metro = 2 * ? * radio
// Utiliza la constante PI definida en PSeInt (aproximaci�n 3.1416)


Algoritmo CirculoAreaYPerimetro
	// Declaraci�n de variables
	Definir area, perimetro, radio Como Real //Pseint trae la constante PI como palabra resaervada
	area=0 // Almacenar� el �rea calculada del c�rculo
	radio=0 // Radio del c�rculo proporcionado por el usuario
	perimetro=0 // Almacenar� el per�metro calculado
	
	// Solicitud de entrada del radio al usuario
	Escribir "Indique el radio del circulo"
	Leer radio
	// Validaci�n: el radio no puede ser negativo
	Mientras radio<0 
		Escribir "no hay radio negativo"
		Leer radio
	FinMientras
	
	// C�lculos geom�tricos	
	area= PI*radio^2    // F�rmula del �rea del c�rculo
	perimetro=2*PI*radio // F�rmula del per�metro (circunferencia)
	
	// Presentaci�n de resultados
	Escribir "El �rea del c�rculo es : " area 
	Escribir "El per�metro del c�rculo es:  " perimetro
		
FinAlgoritmo
