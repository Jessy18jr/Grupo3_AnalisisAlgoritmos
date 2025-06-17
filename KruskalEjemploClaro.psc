Proceso KruskalEjemploClaro
	// Declaración de variables
	Definir i, costoTotal, aristasUsadas Como Entero;
	Definir padre Como Entero;
	Dimensionar padre(5);
	Escribir '======================================'; // Índices 0-4, usaremos 1-4 para los nodos
	Escribir '    ALGORITMO DE KRUSKAL - EJEMPLO';
	Escribir '======================================';
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
	Escribir 'ARISTAS ORDENADAS POR PESO:';
	Escribir '1. A-B: peso 1';
	Escribir '2. C-D: peso 2';
	Escribir '3. A-C: peso 3';
	Escribir '4. B-C: peso 4';
	Escribir '5. B-D: peso 5';
	Escribir '';
	// PASO 1: Inicializar Union-Find
	Escribir '--- PASO 1: INICIALIZACIÓN ---';
	Escribir 'Cada nodo es su propio padre inicialmente:';
	Para i<-1 Hasta 4 Con Paso 1 Hacer
		padre[i] <- i;
		Escribir 'Nodo ', i, ' -> padre[', i, '] = ', padre[i];
	FinPara
	costoTotal <- 0;
	aristasUsadas <- 0;
	Escribir '';
	// PASO 2: Procesar aristas
	Escribir '--- PASO 2: PROCESANDO ARISTAS ---';
	Escribir '';
	// Arista 1: A-B (peso 1)
	Escribir '?? Evaluando arista A-B (peso 1):';
	Escribir '   padre[1] = ', padre[1], ', padre[2] = ', padre[2];
	Si padre[1]<>padre[2] Entonces
		Escribir '   ? NO hay ciclo. Agregamos A-B';
		padre[2] <- padre[1];
		costoTotal <- costoTotal+1; // B ahora pertenece al grupo de A
		aristasUsadas <- aristasUsadas+1;
		Escribir '   ?? Actualizamos: padre[2] = ', padre[2];
		Escribir '   ?? Costo acumulado: ', costoTotal;
	SiNo
		Escribir '   ? Crearía ciclo. No agregamos.';
	FinSi
	Escribir '';
	// Arista 2: C-D (peso 2)
	Escribir '?? Evaluando arista C-D (peso 2):';
	Escribir '   padre[3] = ', padre[3], ', padre[4] = ', padre[4];
	Si padre[3]<>padre[4] Entonces
		Escribir '   ? NO hay ciclo. Agregamos C-D';
		padre[4] <- padre[3];
		costoTotal <- costoTotal+2; // D ahora pertenece al grupo de C
		aristasUsadas <- aristasUsadas+1;
		Escribir '   ?? Actualizamos: padre[4] = ', padre[4];
		Escribir '   ?? Costo acumulado: ', costoTotal;
	SiNo
		Escribir '   ? Crearía ciclo. No agregamos.';
	FinSi
	Escribir '';
	// Arista 3: A-C (peso 3)
	Escribir '?? Evaluando arista A-C (peso 3):';
	Escribir '   padre[1] = ', padre[1], ', padre[3] = ', padre[3];
	Si padre[1]<>padre[3] Entonces
		Escribir '   ? NO hay ciclo. Agregamos A-C';
		padre[3] <- padre[1];
		costoTotal <- costoTotal+3; // C ahora pertenece al grupo de A
		aristasUsadas <- aristasUsadas+1;
		Escribir '   ?? Actualizamos: padre[3] = ', padre[3];
		Escribir '   ?? Costo acumulado: ', costoTotal;
	SiNo
		Escribir '   ? Crearía ciclo. No agregamos.';
	FinSi
	Escribir '';
	// Verificar si necesitamos más aristas
	Si aristasUsadas=3 Entonces
		Escribir '?? ¡Árbol completo! Tenemos 3 aristas para 4 nodos.';
		Escribir '   (Un árbol con N nodos necesita exactamente N-1 aristas)';
	SiNo
		Escribir '??  Necesitamos evaluar más aristas...';
		// Arista 4: B-C (peso 4)
		Escribir '?? Evaluando arista B-C (peso 4):';
		Escribir '   padre[2] = ', padre[2], ', padre[3] = ', padre[3];
		Si padre[2]<>padre[3] Entonces
			Escribir '   ? NO hay ciclo. Agregamos B-C';
			padre[3] <- padre[2];
			costoTotal <- costoTotal+4;
			aristasUsadas <- aristasUsadas+1;
		SiNo
			Escribir '   ? Crearía ciclo. No agregamos.';
		FinSi
	FinSi
	Escribir '';
	Escribir '======================================';
	Escribir '           RESULTADO FINAL';
	Escribir '======================================';
	Escribir 'ÁRBOL DE EXPANSIÓN MÍNIMA:';
	Escribir '  A ----1---- B';
	Escribir '  |';
	Escribir '  3';
	Escribir '  |';
	Escribir '  C ----2---- D';
	Escribir '';
	Escribir 'ARISTAS SELECCIONADAS:';
	Escribir '? A-B (peso 1)';
	Escribir '? C-D (peso 2)';
	Escribir '? A-C (peso 3)';
	Escribir '';
	Escribir '?? COSTO TOTAL: ', costoTotal;
	Escribir '?? ARISTAS USADAS: ', aristasUsadas, ' de 5 disponibles';
	Escribir '';
	Escribir '? El algoritmo de Kruskal encuentra el árbol';
	Escribir '   que conecta todos los nodos con el menor costo posible.';
FinProceso
