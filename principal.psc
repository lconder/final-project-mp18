SubProceso menu()
	Escribir "1.- ingrese 3 numeros para devolver el menor"
	Escribir "2.- encontrar el numero mayor de una serie de numeros"
	Escribir "3.- calcular el factorial de un numero"
	Escribir "4.- determinar el valor maximo y minimo de 5 numero dados por el usuario"
	Escribir "5.- sumar 2 matrices"
	Escribir "6.- restar 2 martrices"
	Escribir "7.- multiplicar 2 martrices"
	Escribir "8.- transponer una martriz"
	Escribir "9.- mostrar un matriz señalando cuales son los puntos silla"
	Escribir "10.- buascar un elemento en un arreglo"
	Escribir "11.- genarar un cuadrado magico"
	Escribir ""
	Escribir "OPCIÓN: "
FinSubProceso

SubProceso operar(opdr)
	Segun opdr Hacer
		1:
			menorDeTres
		2:
			mayorDeSerie
		3: 
			factorial
		4:
			determinaMaxMin
		5:
			sumaMatriz
		6:
			restaMatriz
		7:
			multiplicacionMatriz
		8:
			transponerMatriz
		9:
			puntoSilla
		10:
			busquedaBinaria
		11:
			cuadroMagico
			
		De Otro Modo:

	FinSegun
finSubproceso


SubProceso menorDeTres()
	Escribir "Ingrese tres numeros cualesquiera: "
	Dimension A[3]
	Leer A[0]
	Leer A[1]
	Leer A[2]
	
	min <- calculaMenor(A, 2)
	Escribir "el dato menor es: ",min
	
FinSubProceso

SubProceso mayorDeSerie()
	Escribir "Ingresa el numero de elementos que quieres"
	Leer tamano
	Dimension A[tamano]
	Escribir "Ingrese los numeros que desee"
	Para i=0 hasta tamano-1 con paso 1 hacer
		Leer A[i]
	FinPara
	
	max <- calculaMayor(A, tamano-1)
	Escribir "el mayor es: ",max
	
FinSubProceso

SubProceso factorial()
	num = 1
	
	Escribir "Ingrese el numero al que desea calcular el factorial: "
	Leer x
	
	Mientras x<0 Hacer
		Escribir "Ingrese el numero al que desea calcular el factorial, siempre positivo: "
		Leer x
	FinMientras
	
	Para i<-1 Hasta x Con Paso 1 Hacer
		num = num*i
	Fin Para
	
	Escribir "El factorial del numero es: ", num
FinSubProceso

SubProceso min <- calculaMenor(vector, tamano)
	min <- vector[0]
	Para i=0 Hasta tamano con paso 1 hacer
		si vector[i] < min Entonces
			min <- vector[i]
		FinSi
	FinPara
	
FinSubProceso

SubProceso max <- calculaMayor(vector, tamano)
	max <- vector[0]
	Para i=0 Hasta tamano con paso 1 hacer
		si vector[i] > max Entonces
			max  <- vector[i]
		FinSi
	FinPara
FinSubProceso

SubProceso determinaMaxMin() 
	Dimension A[5]
	
	Escribir "Ingresa 5 numeros mostar el minimo y el maximo"
	para t=0 hasta 4 con paso 1 Hacer
		Leer A[t] 
	FinPara
	
	min <- calculaMenor(A, 4)
	max <- calculaMayor(A, 4)
	
	Escribir 'el minimo es ',min
	Escribir 'el maximo es ',max
FinSubProceso

SubProceso sumaMatriz()
	escribir "definir filas:"
	leer fila
	
	escribir "definir columnas:"
	leer columna
	
	dimension matriz1[fila,columna]
	dimension matriz2[fila,columna]
	dimension resultado[fila,columna]
	
	fila<-fila-1
	columna<-columna-1
	
	Para i<-0 Hasta fila Con Paso 1 Hacer
		Para j<-0 Hasta columna Con Paso 1 Hacer
			
			escribir "ingrese numero a la tabla 1:"
			leer matriz1[i,j]
		FinPara
	FinPara
	
	Para i<-0 Hasta fila Con Paso 1 Hacer
		Para j<-0 Hasta columna Con Paso 1 Hacer
			
			escribir "ingrese numero a la tabla 2:"
			leer matriz2[i,j]
		FinPara
	FinPara
	
	Para i<-0 Hasta fila Con Paso 1 Hacer
		Para j<-0 Hasta columna Con Paso 1 Hacer
			
			resultado[i,j]<- matriz1[i,j] + matriz2[i,j]
			
		FinPara
	FinPara
	
	Para i<-0 Hasta fila Con Paso 1 Hacer
		Para j<-0 Hasta columna Con Paso 1 Hacer
			
			escribir resultado[i,j]
			
		FinPara
	FinPara
FinSubProceso

SubProceso restaMatriz()
	escribir "definir filas:"
	leer fila;
	
	escribir "definir columnas:"
	leer columna;
	
	dimension matriz1[fila,columna]
	dimension matriz2[fila,columna]
	dimension resultado[fila,columna]
	
	fila<-fila-1
	columna<-columna-1
	
	Para i<-0 Hasta fila Con Paso 1 Hacer
		Para j<-0 Hasta columna Con Paso 1 Hacer
			
			escribir "ingrese numero a la tabla 1:"
			leer matriz1[i,j]
		FinPara
	FinPara
	
	Para i<-0 Hasta fila Con Paso 1 Hacer
		Para j<-0 Hasta columna Con Paso 1 Hacer
			
			escribir "ingrese numero a la tabla 2:"
			leer matriz2[i,j]
		FinPara
	FinPara
	
	Para i<-0 Hasta fila Con Paso 1 Hacer
		Para j<-0 Hasta columna Con Paso 1 Hacer
			
			resultado[i,j]<- matriz1[i,j] - matriz2[i,j]
			
		FinPara
	FinPara
	
	Para i<-0 Hasta fila Con Paso 1 Hacer
		Para j<-0 Hasta columna Con Paso 1 Hacer
			
			escribir resultado[i,j]
			
		FinPara
	FinPara
FinSubProceso

SubProceso multiplicacionMatriz()
	escribir "definir filas:"
	leer fila;
	
	escribir "definir columnas:"
	leer columna;
	
	dimension matriz1[fila,columna]
	dimension matriz2[fila,columna]
	dimension resultado[fila,columna]
	
	fila<-fila-1
	columna<-columna-1
	
	Para i<-0 Hasta fila Con Paso 1 Hacer
		Para j<-0 Hasta columna Con Paso 1 Hacer
			
			escribir "ingrese numero a la tabla 1:"
			leer matriz1[i,j]
		FinPara
	FinPara
	
	Para i<-0 Hasta fila Con Paso 1 Hacer
		Para j<-0 Hasta columna Con Paso 1 Hacer
			
			escribir "ingrese numero a la tabla 2:"
			leer matriz2[i,j]
		FinPara
	FinPara
	
	Para i<-0 Hasta fila Con Paso 1 Hacer
		Para j<-0 Hasta columna Con Paso 1 Hacer
			
			resultado[i,j]<- matriz1[i,j] * matriz2[i,j]
			
		FinPara
	FinPara
	
	Para i<-0 Hasta fila Con Paso 1 Hacer
		Para j<-0 Hasta columna Con Paso 1 Hacer
			
			escribir resultado[i,j]
			
		FinPara
	FinPara
FinSubProceso

SubProceso transponerMatriz()
	Dimension a[2,5]
	Dimension t[5,2]
	
	para i=1 hasta 2 Hacer
		para j=1 hasta 5 Hacer
			a[i,j] = azar(100)
			Escribir a[i,j]
		FinPara
	FinPara
	
	Escribir ""
	
	para i=1 hasta 2 Hacer
		para j=1 hasta 5 Hacer
			t[j,i]= a[i,j]
		FinPara
	FinPara
	
	para i=1 hasta 5 Hacer
		para j=1 hasta 2 Hacer
			escribir t[i,j]
		FinPara
	FinPara
FinSubProceso

SubProceso puntoSilla()
	Dimension A[4,5]
	Dimension maximoFilas[4]
	Dimension minimoColumnas[5]
	bandera = Verdadero
	
	para i = 0 hasta 3 hacer 
		para j = 0 hasta 4 Hacer
			
		FinPara
	FinPara
FinSubProceso

SubProceso busquedaBinaria()
	min = 1
	min = 10
	
	Dimension a[10]
	
	a[1]=2
	a[2]=6
	a[3]=8
	a[4]=10
	a[5]=14
	a[6]=18
	a[7]=24
	a[8]=32
	a[9]=41
	a[10]=50
	
	encontro = Falso
	
	Escribir "ingresa el numero que desea buscar"
	leer num
	
	mientras (encontro=falso Y min <= max) Hacer
		mitad = (min+max)/2
		si num = a[mitad] Entonces
			encontro = Verdadero
		SiNo
			si num < a[mitad] Entonces
				max=mitad-1
			SiNo
				min=mitad+1
			FinSi
		FinSi
	FinMientras
	
	si (encontro = verdadero) Entonces
		Escribir "el dato se encuentra en la posicion ", mitad
	SiNo
		Escribir "el dato no se encontro"
	FinSi
FinSubProceso

SubProceso cuadroMagico()
	//Estos cuadrados pueden generarse según el método publicado en 1691 por Simón de la Loubere
	Escribir "Ingresa el tamano del cuadro"
	leer tamano
	
	Mientras tamano MOD 2=0 Hacer
		Escribir "Ingresa el tamano del cuadro, debe ser impar"
		leer tamano
	FinMientras
	
	Dimension Cuadro[tamano,tamano]
	contador <- 1
	columna_ultima <- 0
	fila_ultima <- 0
	columna_siguiente <- trunc(tamano/2)
	//Escribir columna_siguiente
	fila_siguiente <- 0
	
		
	Para i=0 hasta tamano-1 con paso 1 hacer
		Para j=0 hasta tamano-1 con paso 1 hacer
			//guardamos el nùmero en la matriz
			Escribir fila_siguiente
			escribir columna_siguiente
			escribir "----"
			Cuadro[fila_siguiente, columna_siguiente] = contador
			
			//guardamos la ultima posicion donde guardamos algo
			fila_ultima = fila_siguiente
			columna_ultima = columna_siguiente
			
			//primer paso para la siguiente posicion
			fila_siguiente = fila_ultima - 1
			columna_siguiente = columna_ultima + 1
			
			si fila_siguiente < 0 entonces
				fila_siguiente = tamano-1
			FinSi
			
			si columna_siguiente >= tamano Entonces
				fila_siguiente = fila_ultima -1
				columna_siguiente = 0
			FinSi
			
			si fila_siguiente=-1 O Cuadro[fila_siguiente, columna_siguiente] <> 0 Entonces
				fila_siguiente = fila_ultima + 1
				columna_siguiente = columna_ultima
			FinSi
			
			contador = contador + 1
			
		FinPara
	FinPara
	mostrarMatriz(Cuadro, tamano-1)
FinSubProceso

SubProceso mostrarMatriz(Matriz, tamano)
	
	Para i=0 hasta tamano Con Paso 1 Hacer
		Para j=0 hasta tamano Con Paso 1 Hacer
			Escribir Matriz[i,j],"," Sin Saltar 
		FinPara
		Escribir ""
	FinPara
FinSubProceso

Algoritmo proyecto_final
	op<-1;
	Mientras op<12 Y op>0
		menu();
		leer op;
		operar(op);
		escribir ""
		
	FinMientras
	
FinAlgoritmo
