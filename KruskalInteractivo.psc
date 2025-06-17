Proceso KruskalInteractivo
	// Declaraci�n de variables
	Definir i, opcion, costoTotal, aristasUsadas Como Entero;
	Definir padre Como Entero;
	Definir continuar Como L�gico;
	Definir aristaProcesada Como L�gico;
	Dimensionar padre(5);
	Dimensionar aristaProcesada(6); // �ndices 0-4, usaremos 1-4 para los nodos
	Escribir '=========================================='; // Para marcar qu� aristas ya procesamos
	Escribir '  ALGORITMO DE KRUSKAL - MODO INTERACTIVO';
	Escribir '==========================================';
	Escribir '';
	Escribir 'GRAFO ORIGINAL:';
	Escribir '     A ----1---- B';
	Escribir '     |           |';
	Escribir '     3           5';
	Escribir '     |           |';
	Escribir '     C ----2---- D';
	Escribir '          4';
	Escribir '     (B conectado con C)';
	Escribir '';
	Escribir 'OBJETIVO: Encontrar el �rbol de Expansi�n M�nima';
	Escribir 'REGLA: Solo agregar aristas que NO creen ciclos';
	Escribir '';
	// Inicializaci�n
	Para i<-1 Hasta 4 Con Paso 1 Hacer
		padre[i] <- i;
	FinPara
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		aristaProcesada[i] <- Falso;
	FinPara
	costoTotal <- 0;
	aristasUsadas <- 0;
	continuar <- Verdadero;
	Escribir '?? INICIALIZACI�N COMPLETADA';
	Escribir 'Estado inicial - Cada nodo es su propio grupo:';
	Para i<-1 Hasta 4 Con Paso 1 Hacer
		Escribir '  Nodo ', i, ': grupo ', padre[i];
	FinPara
	Escribir '';
	// Bucle principal
	Mientras continuar Y aristasUsadas<3 Hacer
		Escribir '==========================================';
		Escribir '         SELECCIONA UNA ARISTA';
		Escribir '==========================================';
		Escribir '';
		Escribir 'ARISTAS DISPONIBLES:';
		Si aristaProcesada[1]=Falso Entonces
			Escribir '1. A-B (peso 1) ??';
		SiNo
			Escribir '1. A-B (peso 1) ? PROCESADA';
		FinSi
		Si aristaProcesada[2]=Falso Entonces
			Escribir '2. C-D (peso 2) ??';
		SiNo
			Escribir '2. C-D (peso 2) ? PROCESADA';
		FinSi
		Si aristaProcesada[3]=Falso Entonces
			Escribir '3. A-C (peso 3) ??';
		SiNo
			Escribir '3. A-C (peso 3) ? PROCESADA';
		FinSi
		Si aristaProcesada[4]=Falso Entonces
			Escribir '4. B-C (peso 4) ??';
		SiNo
			Escribir '4. B-C (peso 4) ? PROCESADA';
		FinSi
		Si aristaProcesada[5]=Falso Entonces
			Escribir '5. B-D (peso 5) ??';
		SiNo
			Escribir '5. B-D (peso 5) ? PROCESADA';
		FinSi
		Escribir '0. Terminar programa';
		Escribir '';
		Escribir 'Estado actual de los grupos:';
		Para i<-1 Hasta 4 Con Paso 1 Hacer
			Escribir '  Nodo ', i, ': grupo ', padre[i];
		FinPara
		Escribir '';
		Escribir 'Aristas en el �rbol: ', aristasUsadas, '/3';
		Escribir 'Costo actual: ', costoTotal;
		Escribir '';
		Escribir 'Selecciona una opci�n (0-5): ';
		Leer opcion;
		Seg�n opcion Hacer
			1:
				Si aristaProcesada[1]=Falso Entonces
					Escribir '';
					Escribir '?? PROCESANDO ARISTA A-B (peso 1)';
					Escribir '-----------------------------------';
					Escribir '| Verificando grupos:              |';
					Escribir '|  Nodo A (1): grupo ', padre[1], '|';
					Escribir '|  Nodo B (2): grupo ', padre[2], '|';
					Escribir '___________________________________';
					Si padre[1]<>padre[2] Entonces
						Escribir '? �ARISTA ACEPTADA!';
						Escribir '   Raz�n: A y B est�n en grupos diferentes';
						padre[2] <- padre[1];
						costoTotal <- costoTotal+1;
						aristasUsadas <- aristasUsadas+1;
						Escribir '   ?? B ahora pertenece al grupo ', padre[1];
						Escribir '   ?? Nuevo costo total: ', costoTotal;
					SiNo
						Escribir '? ARISTA RECHAZADA';
						Escribir '   Raz�n: A y B ya est�n conectados (mismo grupo)';
						Escribir '   Agregarla crear�a un CICLO';
					FinSi
					aristaProcesada[1] <- Verdadero;
				SiNo
					Escribir '??  Esta arista ya fue procesada';
				FinSi
			2:
				Si aristaProcesada[2]=Falso Entonces
					Escribir '';
					Escribir '?? PROCESANDO ARISTA C-D (peso 2)';
					Escribir '___________________________________';
					Escribir '| Verificando grupos:              |';
					Escribir '| Nodo C (3): grupo ', padre[3], ' |';
					Escribir '| Nodo D (4): grupo ', padre[4], ' |';
					Escribir '___________________________________';
					Si padre[3]<>padre[4] Entonces
						Escribir '? �ARISTA ACEPTADA!';
						Escribir '   Raz�n: C y D est�n en grupos diferentes';
						padre[4] <- padre[3];
						costoTotal <- costoTotal+2;
						aristasUsadas <- aristasUsadas+1;
						Escribir '   ?? D ahora pertenece al grupo ', padre[3];
						Escribir '   ?? Nuevo costo total: ', costoTotal;
					SiNo
						Escribir '? ARISTA RECHAZADA';
						Escribir '   Raz�n: C y D ya est�n conectados (mismo grupo)';
					FinSi
					aristaProcesada[2] <- Verdadero;
				SiNo
					Escribir '??  Esta arista ya fue procesada';
				FinSi
			3:
				Si aristaProcesada[3]=Falso Entonces
					Escribir '';
					Escribir '?? PROCESANDO ARISTA A-C (peso 3)';
					Escribir '___________________________________';
					Escribir '| Verificando grupos:               |';
					Escribir '| Nodo A (1): grupo ', padre[1], '  |';
					Escribir '| Nodo C (3): grupo ', padre[3], '  |';
					Escribir '_____________________________________';
					Si padre[1]<>padre[3] Entonces
						Escribir '? �ARISTA ACEPTADA!';
						Escribir '   Raz�n: A y C est�n en grupos diferentes';
						padre[3] <- padre[1];
						costoTotal <- costoTotal+3;
						aristasUsadas <- aristasUsadas+1;
						Escribir '   ?? C ahora pertenece al grupo ', padre[1];
						Escribir '   ?? Nuevo costo total: ', costoTotal;
					SiNo
						Escribir '? ARISTA RECHAZADA';
						Escribir '   Raz�n: A y C ya est�n conectados (mismo grupo)';
					FinSi
					aristaProcesada[3] <- Verdadero;
				SiNo
					Escribir '??  Esta arista ya fue procesada';
				FinSi
			4:
				Si aristaProcesada[4]=Falso Entonces
					Escribir '';
					Escribir '?? PROCESANDO ARISTA B-C (peso 4)';
					Escribir '____________________________________';
					Escribir '| Verificando grupos:               |';
					Escribir '| Nodo B (2): grupo ', padre[2], '  |';
					Escribir '| Nodo C (3): grupo ', padre[3], '  |';
					Escribir '_____________________________________';
					Si padre[2]<>padre[3] Entonces
						Escribir '? �ARISTA ACEPTADA!';
						Escribir '   Raz�n: B y C est�n en grupos diferentes';
						padre[3] <- padre[2];
						costoTotal <- costoTotal+4;
						aristasUsadas <- aristasUsadas+1;
						Escribir '   ?? C ahora pertenece al grupo ', padre[2];
						Escribir '   ?? Nuevo costo total: ', costoTotal;
					SiNo
						Escribir '? ARISTA RECHAZADA';
						Escribir '   Raz�n: B y C ya est�n conectados (mismo grupo)';
					FinSi
					aristaProcesada[4] <- Verdadero;
				SiNo
					Escribir '??  Esta arista ya fue procesada';
				FinSi
			5:
				Si aristaProcesada[5]=Falso Entonces
					Escribir '';
					Escribir '?? PROCESANDO ARISTA B-D (peso 5)';
					Escribir '____________________________________';
					Escribir '| Verificando grupos:               |';
					Escribir '| Nodo B (2): grupo ', padre[2], '|';
					Escribir '| Nodo D (4): grupo ', padre[4], '|';
					Escribir '_____________________________________';
					Si padre[2]<>padre[4] Entonces
						Escribir '? �ARISTA ACEPTADA!';
						Escribir '   Raz�n: B y D est�n en grupos diferentes';
						padre[4] <- padre[2];
						costoTotal <- costoTotal+5;
						aristasUsadas <- aristasUsadas+1;
						Escribir '   ?? D ahora pertenece al grupo ', padre[2];
						Escribir '   ?? Nuevo costo total: ', costoTotal;
					SiNo
						Escribir '? ARISTA RECHAZADA';
						Escribir '   Raz�n: B y D ya est�n conectados (mismo grupo)';
					FinSi
					aristaProcesada[5] <- Verdadero;
				SiNo
					Escribir '??  Esta arista ya fue procesada';
				FinSi
			0:
				continuar <- Falso;
			De Otro Modo:
				Escribir '? Opci�n inv�lida. Intenta de nuevo.';
		FinSeg�n
		Si aristasUsadas=3 Entonces
			Escribir '';
			Escribir '?? ��RBOL DE EXPANSI�N M�NIMA COMPLETADO!';
			continuar <- Falso;
		FinSi
		Si continuar Entonces
			Escribir '';
			Escribir 'Presiona ENTER para continuar...';
			Esperar Tecla;
		FinSi
	FinMientras
	Escribir '';
	Escribir '==========================================';
	Escribir '           RESULTADO FINAL';
	Escribir '==========================================';
	Si aristasUsadas=3 Entonces
		Escribir '? �RBOL DE EXPANSI�N M�NIMA ENCONTRADO';
		Escribir '';
		Escribir 'COSTO TOTAL: ', costoTotal;
		Escribir 'ARISTAS UTILIZADAS: ', aristasUsadas;
		Escribir '';
		Escribir '�Felicidades! Has construido el �rbol �ptimo.';
	SiNo
		Escribir '??  �RBOL INCOMPLETO';
		Escribir 'Necesitas ', 3-aristasUsadas, ' arista(s) m�s para completar el �rbol.';
	FinSi
FinProceso
