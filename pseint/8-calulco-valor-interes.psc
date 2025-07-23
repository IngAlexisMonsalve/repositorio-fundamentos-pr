// Calcula los intereses generados por un Certificado de Depósito a Término (CDT) considerando:
// 1. Intereses brutos según la fórmula: (capital * tasa * días)/360
// 2. Retención en la fuente del 7% sobre los intereses
// 3. Valor neto a retirar (capital + intereses netos)
// Valida que todos los valores de entrada sean positivos

Algoritmo CaluloValorInteres
	// Declaración de variables
	Definir montoInvertido, periodo Como Entero 
	Definir valorInteres, descuento, interesNeto, tasaInteres, totalRetirar Como Real
	// Inicialización de variables
	montoInvertido=0
	tasaInteres=0
	periodo=0
	valorInteres=0
	descuento=0
	IMPUESTOINTERES=0.07
	// Validación de entrada: monto invertido debe ser positivo
	Mientras montoInvertido <=0 
		Escribir " Introduzca Cantiad invertida"
		Leer montoInvertido
		Si montoInvertido<=0
			Escribir " Debe ser una canidad mayor a 0"
		FinSi
	FinMientras
	
	// Validación de entrada: tasa de interés debe ser positiva
	Mientras tasaInteres<=0 
		Escribir " Introduzca el Porcentaje de Interés ganado"
		Leer tasaInteres
		tasaInteres=tasaInteres/100
		Si tasaInteres<=0
			Escribir " Debe ser una cantidad mayor a 0"
		FinSi
	FinMientras
	
	// Validación de entrada: período en días debe ser positivo
	Mientras periodo<=0
		Escribir " Ingrese el Periodo"
		Leer periodo
		Si periodo<=0
			Escribir " Debe ser una cantidad mayor a 0"
		FinSi
	FinMientras
	
	// Cálculos financieros
	valorInteres=(montoInvertido*tasaInteres*periodo)/360// Intereses brutos
	descuento=valorInteres * IMPUESTOINTERES // Retención en la fuente
	interesNeto=valorInteres - descuento// Intereses netos después de impuestos
	totalRetirar=montoInvertido + interesNeto // Total a retirar
	
	// Presentación de resultados detallados
	Escribir "  El interés ganado en el periodo de " periodo " días es de : " valorInteres
	Escribir "  El descuento del impuesto por retención de la fuente el total es: " descuento
	Escribir "  Por lo que con los " montoInvertido " Invertidos en un período de " periodo " días tiene una ganancia de " interesNeto
	Escribir "  Para un saldo total de " totalRetirar
	
	
FinAlgoritmo
