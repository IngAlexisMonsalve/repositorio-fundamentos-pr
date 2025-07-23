//La oficina de incorporación del ejercito necesita un algoritmo que le pueda permitir saber si un aspirante a ingresar a la
//institución como soldado es apto o no para poder vincularlo. Para que una persona sea apta, debe cumplir los siguientes requisitos:
//Si es mujer, su estatura debe ser superior a 1.60 mts y su edad debe estar entre 20 y 25 años.
//Si el aspirante es hombre, se estatura debe ser superior a 1.65 mts y su edad debe estar entre los 18 y 24 años.
//Tanto mujeres como hombres deben ser solteros. 
//Diseñe el algoritmo de tal forma que permita informar si un aspirante es apto o no para ingresar al 	ejercito.
//Análisis del problema:
//Resultado esperado: Se espera que el programa arroje uno de dos posibles resultados, primer restultado: si es apto, segundo resultado: No es apto
//esto lo debe mostrar por pantalla.
//Datos requerido: se espera que se ingrese por parte del usuario del programa, sexo, edad, estado civil, estatura del aspirante y se 
//proporciona en el planteamiento los valores mínimos de estas variables para ser apto 
//Proceso

//prueba para el commint 2

Algoritmo AptoEjercito
	Definir estatura  Como Real
	Definir edad Como Entero
	Definir sexo, estado_civil Como Caracter
	Repetir //captura de datos estos bucles es para validación entrada de datos de sexo y estado civil
		Escribir "Introduzca el sexo del Aspitante. Masculino (m) o Femenino (f) "
		Leer sexo
		Si	sexo<>'m' y sexo<>'M' y sexo<>'f' y sexo<>'F'
			Escribir " Por favor escriba una opción válida, " "m " "para masculino o " "f " "para femenino"
		FinSi
	Hasta Que (sexo='m' o sexo='M' o sexo='f' o sexo='F') 
	
	Repetir
		Escribir "Estado civil del o la aspirante. Soltero o soltera (s) Casado o casada(c) Viudo o viuda(v)"
		Leer estado_civil
		SI estado_civil<>'s' y estado_civil<>'S' y estado_civil<>'c' y estado_civil<>'C' y estado_civil<>'v' y estado_civil <>'V'
			Escribir "Por favor escriba una de las opciones mostrada entre paréntesis"
		FinSi
	Hasta Que estado_civil='s' o estado_civil='S' o estado_civil='c' o estado_civil='C' o estado_civil='v' o estado_civil ='V'
	Si estado_civil=='c'o estado_civil=='C'
		Escribir "Estado civil casado o casada, no apto o apta para el Ejercito"
	SiNo
		Repetir //captura de datos este bucle es para validar altura
			Escribir "Introduzca la estatura (en metros) del aspirante"
			leer estatura
			si estatura<=0
				Escribir "Introduce una estarura válida"
			FinSi
		Hasta Que estatura>0
		Repetir //captura de datos este bucle es para validar la edad
			Escribir "introduza la edad del aspirante"
			Leer edad
			si edad<=17 
				Escribir "Se Recuerda que debe ingresar datos válidos, la edad mínima es de 18 años"
				Escribir " "
			FinSi
		Hasta Que edad>17  
		
			Segun (sexo) //verificar si cumple los demás requisitos, si cumple la premisa se procede a realizar las otras verificaciones con es ?switch' (Segun en caso de pseint)
				caso 'm' o 'M': //evaluar si 'sexo' cumple con la condiciòn para entrar en el ciclo
					si estatura>1.60 y edad>18 y edad<25 //una vez se determinar si es de sexo masculino  se procede a evaluar si cumple con la estatura 
						Escribir "Este aspirante es apto para ser admitido" //Se escribirá según el mensaje que corresponda, sea apto o no
					SiNo
						Escribir "Este aspirante No es apto para se admitido"
					FinSi
				'f','F': //otra forma de evaluar si la variable 'sexo' cumple con cumple con la condicion apra entra en el cilo
					si estatura>1.65 y edad>20 y edad<26//una vez se determinar si es de sexo femenino  se procede a evaluar si cumple con la estatura 
						Escribir "Esta aspirante es apta para ser admitida"//Se escribirá según el mensaje que corresponda, sea apto o no
					SiNo
						Escribir "Esta aspirante no es apta para ser admitida"
					FinSi
			FinSegun
		FinSi

FinAlgoritmo
