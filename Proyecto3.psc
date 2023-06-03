Funcion sumaRestaMatrices <- sumResMat ( opAritmetica )
	
	Dimension M1[50,50], M2[50,50], Mresultado[50,50];
	//Aqui se define el tamaño de la matriz
	Escribir "Ingrese candidad de FILAS Y COLUMNAS para la MATRIZ #1";
	Escribir "NO. DE FILAS:"
	Leer A
	Escribir "NO. DE COLUMNAS:"
	Leer B
	Escribir "Ingrese los datos de la primera matriz"
	
	//Llenado de la primera matriz
	Para i<-1 Hasta A Con Paso 1 Hacer
		Para j<-1 Hasta B Con Paso 1 Hacer
			Escribir "Ingrese el dato de la posicion: ",I,",",J;
			Leer M1[I,J]
		FinPara
	FinPara
	
	Escribir ""
	//Llenado de segunda matriz
	Escribir "Ingrese los datos de la segunda matriz";
	Para i<-1 Hasta A Con Paso 1 Hacer
		Para j<-1 Hasta B Con Paso 1 Hacer
			Escribir "Ingrese el dato de la posicion: ",I,",",J;
			Leer M2[I,J]
		FinPara
	FinPara
	
	Escribir ""
	Escribir "Primera matriz"
	Para i<-1 Hasta A Con Paso 1 Hacer
		Para j<-1 Hasta B Con Paso 1 Hacer
			Escribir M1[I,J]," " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	
	Escribir "Segunda matriz"
	Para i<-1 Hasta A Con Paso 1 Hacer
		Para j<-1 Hasta B Con Paso 1 Hacer
			Escribir M2[I,J]," " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	
	si opAritmetica = "suma" Entonces
		Escribir "La suma de la Primera matriz mas la Segunda Matriz";
		Para I<-1 Hasta A Con Paso 1 Hacer
			Para j<-1 Hasta B Con Paso 1 Hacer
				Mresultado[i,j] = M1[i,j] + M2[i,j]
				Escribir Mresultado[i,j]," " Sin Saltar
			Fin Para
			Escribir " "
		Fin Para
	SiNo
		Escribir "La resta de la Primera matriz menos la Segunda Matriz";
		Para I<-1 Hasta A Con Paso 1 Hacer
			Para j<-1 Hasta B Con Paso 1 Hacer
				Mresultado[i,j] = M1[i,j] - M2[i,j]
				Escribir Mresultado[i,j]," " Sin Saltar
			Fin Para
			Escribir " "
		Fin Para
		
	FinSi
	
	
	
Fin Funcion

Funcion operacion <- operacionBasica ( nombreOperacion, varnumerica )

	Escribir "***** Bienvenido a la opcion ", nombreOperacion,"*****";
	Escribir "";
	Escribir "Presione 0 para regresar al menu anterior.";
	Escribir  "";
		
	Escribir "Ingrese un numero: ";
	leer contador;
	Escribir "Ingrese un numero: ";
	leer num1;
	
	Mientras contador <> 0 y num1 <> 0 Hacer	
		Segun varnumerica Hacer
			1:
				contador <- contador + num1;
			2:
				contador <- contador - num1;
			3:
				contador <- contador * num1;
			De Otro Modo:				
				contador <- contador / num1;
		Fin Segun
		
		Escribir "Ingrese un numero: ";
		leer num1;
	Fin Mientras
	
	Escribir "El resultado de la ", nombreOperacion," es: ", contador;
	Escribir "Saliendo de la opcion ",nombreOperacion," .......";
	
Fin Funcion

Funcion matricial <- Matrices ( operacion, numeroMatriz )
	
	definir A, B, C, D, I, J Como Entero;
	Dimension M1[50,50], M2[50,50];
	
	Definir primeraVez como logico;
	primeraVez <- Verdadero;
	
	Escribir "Ingrese candidad de FILAS Y COLUMNAS para la MATRIZ #", numeroMatriz;
	Escribir "NO. DE FILAS:"
	Leer A
	Escribir "NO. DE COLUMNAS:"
	Leer B
	
	Escribir "Ingrese los datos de la matriz #", numeroMatriz;
	Para i<-1 Hasta A Con Paso 1 Hacer
		
		Para j<-1 Hasta B Con Paso 1 Hacer
			
			si primeraVez y operacion = "resta de todos los valores" Entonces
				Escribir "INGRESE DATO DE LA POSICION ",I,",",J;
				Leer M1[I,J];
		
				cont <- M1[I,J];
				cont <- 2*cont
				
				primeraVez = Falso;		
				
			SiNo
				Escribir "Ingrese datos de la posicion: ",I,",",J
				Leer M1[I,J]
			FinSi
			
			si operacion = "suma de todos los valores" Entonces
				cont<-cont+M1[I,J];	
			FinSi
			
			si operacion = "resta de todos los valores" Entonces
				cont <- cont-M1[I,J];
			FinSi
		FinPara
		
	FinPara
	Escribir ""
	//imprime la matriz
	Para i<-1 Hasta A Con Paso 1 Hacer
		
		Para j<-1 Hasta B Con Paso 1 Hacer
			Escribir M1[I,J]," " Sin Saltar
		FinPara
		Escribir ""
		
	FinPara
	
	Escribir ""
	Escribir "La ",operacion," de la matriz es: ", cont;
Fin Funcion

Algoritmo Proyecto3
	//switch-case	
	Definir n, i, j, lado como Entero
	Definir bandera Como Logico;
	bandera <- Verdadero

	Mientras bandera Hacer

		Escribir "Bienvenido al proyecto #3";
		Escribir "Ingrese el número correspondiente a la opcion que desea utilizar: ";
		Escribir " ";
		
		Escribir "1. Suma: ";
		Escribir "2. Resta: ";
		Escribir "3. Multiplicación: ";
		Escribir "4. División: ";
		Escribir "5. Sumar todos los valores de la matriz: ";
		Escribir "6. Restar todos los valores de la matriz: ";
		Escribir "7. Suma de matrices: ";
		Escribir "8. Resta de matrices: ";
		Escribir "9. Triángulo con números: ";
		Escribir "10. Rectángulo con números: ";
		Escribir "";
		Escribir "Presione cualquier otra tecla para salir: ";
		Leer optElegida;
		
		Segun optElegida Hacer
			"1":
				suma <- operacionBasica("Suma",1);

			"2":
				Escribir "Resta ";
				resta <- operacionBasica("Resta",2)
			"3":
				Escribir "Multiplicacion ";
				multiplicacion <- operacionBasica("Multiplicacion",3);
			"4":
				Escribir "Division ";
				division <- operacionBasica("Division",4);
				//
			"5":
				sumaDatosMatriz = matrices("suma de todos los valores", 1);
			"6":
				restaDatosMatriz = matrices("resta de todos los valores", 1);
			"7":
				sumaMatrices = sumResMat("suma");
			"8":
				sumaMatrices = sumResMat("resta");
			"9":
				Escribir "Bienvenido a la opcion, triangulos con numeros impares. "
				n <-0; 
				Escribir "Ingrese un número entero:"
				Leer n
				
				si  (n mod 2) = 0 Entonces
					n <- n/2 //para los pares se usa la mitad de los numeros contenidos
				SiNo
					n <- trunc(n/2)+1 //para los impares se usa la mitad+1
				FinSi
				
				Para i <- 1 hasta n hacer
					// se obtienen unicamentelos impares del entero ingresado y el -2 garantiza que no tendremos # pares
					Para j <- (2 * i - 1) hasta 1 con paso -2 hacer
						Escribir j," "Sin Saltar 
					Fin Para
					
					Escribir "";
					//Luego de escribir la linea salta a la siguiente
				Fin Para
				Escribir "";
				
			"10":	
				Escribir "Ingrese un número entero:"
				Leer lado
				
				Para i <- 1 hasta lado hacer
					Para j <- 1 hasta lado hacer
						Si i = 1 o i = lado o j = 1 o j = lado entonces
							Escribir "* "  Sin Saltar;
						Sino
							Escribir "  " Sin Saltar;
						Fin Si
					Fin Para
					Escribir "";
				Fin Para
				Escribir "";
			De Otro Modo:
				Escribir "Saliendo del programa.........."
				bandera = Falso
		Fin Segun
	Fin Mientras
FinAlgoritmo
