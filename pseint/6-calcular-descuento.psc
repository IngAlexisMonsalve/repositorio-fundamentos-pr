	//Calcula el total a pagar en un almacén aplicando descuentos según el medio de pago:
	// - 15% descuento por tarjeta de crédito
	// - 10% descuento por tarjeta de débito
	// - 5% adicional si es tarjeta Visa (solo aplica a crédito)
	// Muestra un desglose detallado del costo, descuento y total final



Algoritmo CalcularDescuentoCompra
	// Declaración de variables
	Definir Subtotal, TotalPagar, DescuentoRealizado, DESCUENTODEBITO, DESCUENTOCREDITO, DESCUENTOVISA Como Real
	Definir  MedioPago Como entero
	Definir TipoTarjCred Como Caracter
	Definir TipoTarjeta Como Cadena
	
	// Constantes de descuentos (facilitan futuras actualizaciones)
	DESCUENTOCREDITO=0.15 
	DESCUENTODEBITO=0.10
	DESCUENTOVISA=0.05
	
	//captura ded datos
	Escribir " Por favor ingrese el monto de la compra"
	Leer Subtotal
	Escribir " De las opciones a continuación selecciona el número según el medio de pago correspondiente"
	
	// Selección del medio de pago con validación
	Repetir
		Escribir  "   1) Tarjeta de Débito"
		Escribir  "   2) Tarjeta de Crédito"
		Escribir  "   3) Otro"
		Leer MedioPago
		Si MedioPago <1 o MedioPago>3
			Escribir "Por favor ingresa una opciones mostradas"
		FinSi
	Hasta Que (MedioPago>=1 Y MedioPago<=3)
	// Cálculo de descuentos según medio de pago seleccionado
	Segun (MedioPago)
		Caso(1):
			DescuentoRealizado=Subtotal*DESCUENTODEBITO 
			TipoTarjeta= "Tarjeta de Débito"
		Caso (2):
			Repetir
				Escribir " Tarjeta de Crédito Visa (S) o (N)" //asumismo que la tarjeta Visa sólos se refiere a tarjeta de credito"
				leer TipoTarjCred
				si TipoTarjCred<>'s' y TipoTarjCred<>'S' y TipoTarjCred<>'n' y TipoTarjCred<>'N'
					Escribir " Por favor elija S para si o N para no"
				FinSi
			Hasta Que TipoTarjCred== 's' o TipoTarjCred=='S' o TipoTarjCred=='n' o TipoTarjCred=='N'
			
			Si TipoTarjCred=='s' o TipoTarjCred=='S'
				DescuentoRealizado= Subtotal*(DESCUENTOCREDITO+DESCUENTOVISA)
				TipoTarjeta= "Tarjeta de Crédito Visa"
			SiNo
				DescuentoRealizado=Subtotal*(DESCUENTOCREDITO)
				TipoTarjeta= "Tarjeta de Crédito"
			FinSi
		
		de otro modo:
			DescuentoRealizado=0
			TipoTarjeta= "Otro"
			
	FinSegun
	// Cálculo del total final
	TotalPagar=Subtotal-DescuentoRealizado
	
	// Mostrar desglose detallado de la transacción
	Escribir "     Costo de la compra= " Subtotal 
	Escribir "     Descuento de la compra= " DescuentoRealizado
	Escribir "     Total a Pagar= " TotalPagar
	Escribir "     Tipo de Pago " TipoTarjeta
		
FinAlgoritmo
	