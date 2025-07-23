// Calcula los intereses generados por un Certificado de Dep�sito a T�rmino (CDT) considerando:
// 1. Intereses brutos seg�n la f�rmula: (capital * tasa * d�as)/360
// 2. Retenci�n en la fuente del 7% sobre los intereses
// 3. Valor neto a retirar (capital + intereses netos)
// Valida que todos los valores de entrada sean positivos

Algoritmo CaluloValorInteres
	// Declaraci�n de variables
	Definir montoInvertido, periodo Como Entero 
	Definir valorInteres, descuento, interesNeto, tasaInteres, totalRetirar Como Real
	// Inicializaci�n de variables
	montoInvertido=0
	tasaInteres=0
	periodo=0
	valorInteres=0
	descuento=0
	IMPUESTOINTERES=0.07
	// Validaci�n de entrada: monto invertido debe ser positivo
	Mientras montoInvertido <=0 
		Escribir " Introduzca Cantiad invertida"
		Leer montoInvertido
		Si montoInvertido<=0
			Escribir " Debe ser una canidad mayor a 0"
		FinSi
	FinMientras
	
	// Validaci�n de entrada: tasa de inter�s debe ser positiva
	Mientras tasaInteres<=0 
		Escribir " Introduzca el Porcentaje de Inter�s ganado"
		Leer tasaInteres
		tasaInteres=tasaInteres/100
		Si tasaInteres<=0
			Escribir " Debe ser una cantidad mayor a 0"
		FinSi
	FinMientras
	
	// Validaci�n de entrada: per�odo en d�as debe ser positivo
	Mientras periodo<=0
		Escribir " Ingrese el Periodo"
		Leer periodo
		Si periodo<=0
			Escribir " Debe ser una cantidad mayor a 0"
		FinSi
	FinMientras
	
	// C�lculos financieros
	valorInteres=(montoInvertido*tasaInteres*periodo)/360// Intereses brutos
	descuento=valorInteres * IMPUESTOINTERES // Retenci�n en la fuente
	interesNeto=valorInteres - descuento// Intereses netos despu�s de impuestos
	totalRetirar=montoInvertido + interesNeto // Total a retirar
	
	// Presentaci�n de resultados detallados
	Escribir "  El inter�s ganado en el periodo de " periodo " d�as es de : " valorInteres
	Escribir "  El descuento del impuesto por retenci�n de la fuente el total es: " descuento
	Escribir "  Por lo que con los " montoInvertido " Invertidos en un per�odo de " periodo " d�as tiene una ganancia de " interesNeto
	Escribir "  Para un saldo total de " totalRetirar
	
	
FinAlgoritmo
