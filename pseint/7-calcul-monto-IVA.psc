//Diseñe un algoritmo que, al ingresarle el costo de un producto y la cantidad de ese producto que compra un cliente, 
//calcule y muestre	el valor a pagar por el cliente, obteniendo igualmente, el valor del impuesto al valor agregado IVA, 
//que corresponde al 16 % del valor 	de la compra y que también el cliente debe pagar.
//Resultados esperado: se espera el calculo del valor total a pagar por parte del cliente así como el calculo del impuesto
//de 16% sobre la compra, que es el impuesto del IVA, esto será mostrado por pantalla tanto el impuesto, el costo de la compra y el monto total
//Proceso: al costo de la compra le calculo el 16% y se lo sumo, esto es el monto total a pagar por parte del cliente.
//Datos, Solo se necesta el costo de  la compra o del producto


Algoritmo CalculmontoIva
	// Declaración e inicialización de variables
	
	Definir costo, IVA, totalapagar, montoimpuesto Como Real
	costo=0 //inicializo las variables
	IVA= 0.16 // el iva lo declaro como una constante.
	totalapagar=0
	montoimpuesto=0
	totalapagar=0
	// Validación de entrada: el costo debe ser positivo
	Mientras costo<=0 
		Escribir " Ingrese El costo del producto, recuerde que estos precios son sin IVA"
		Leer costo
	FinMientras
	
	// Cálculos financieros
	montoimpuesto=costo*0.16 
	totalapagar=costo + montoimpuesto
	
	// Presentación de resultados
	Escribir "El costo del producto es: " costo " $"
	Escribir "El monto del IVA corresponde a: " montoimpuesto " $"
	Escribir "El total a pagar es: " totalapagar " $"
	
	
FinAlgoritmo



Algoritmo CalculmontoIva
	//Este algoritomo recibo el costo de un producto, calcula el IVA de 16 %, y calcula el monto total (coso + IVA)
	//muestra por pantalla el costo del producto, el monto del IVA y el Total a Pagar.
	Definir costo, IVA, totalapagar, montoimpuesto Como Real
	costo=0 //inicializo las variables
	IVA= 0.16 // el iva lo declaro como una constante.
	totalapagar=0
	montoimpuesto=0
	totalapagar=0
	Mientras costo<=0 //valido que el costo del producto introducido sea mayor a 0
		Escribir " Ingrese El costo del producto, recuerde que estos precios son sin IVA"
		Leer costo
	FinMientras
	montoimpuesto=costo*0.16  //calculos de IVA  y del total a pagar
	totalapagar=costo + montoimpuesto
	Escribir "El costo del producto es: " costo " $"
	Escribir "El monto del IVA corresponde a: " montoimpuesto " $"
	Escribir "El total a pagar es: " totalapagar " $"
	
	
FinAlgoritmo
