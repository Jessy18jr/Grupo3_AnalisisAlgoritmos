Proceso Primejecutado
	Definir numVertices, i, j, minPeso, u, v Como Entero;
	Definir costoTotal, aristasMST Como Entero;
	Definir grafo, visitado Como Entero;
	Definir mst Como Entero;
	numVertices <- 5;
	// Inicializar matrices (dimensionar con 6 para usar índices 1-5)
	Dimensionar grafo(6,6);
	Dimensionar visitado(6);
	Dimensionar mst(5,4);
	Escribir '=== ALGORITMO DE PRIM ==='; // [origen, destino, peso] - una fila extra por seguridad
	Escribir 'Grafo: A(1)-B(2)-C(3)-D(4)-E(5)';
	Escribir '';
	// Inicializar grafo con pesos (0 = no hay conexión)
	Para i<-1 Hasta numVertices Con Paso 1 Hacer
		Para j<-1 Hasta numVertices Con Paso 1 Hacer
			grafo[i,j]<-0;
		FinPara
		visitado[i] <- 0;
	FinPara
	// Definir conexiones del grafo
	Escribir 'Conexiones del grafo:';
	grafo[1,2]<-4;
	grafo[2,1]<-4;
	Escribir 'A-B: 4'; // A-B: 4
	grafo[1,5]<-8;
	grafo[5,1]<-8;
	Escribir 'A-E: 8'; // A-E: 8
	grafo[2,3]<-8;
	grafo[3,2]<-8;
	Escribir 'B-C: 8'; // B-C: 8
	grafo[2,5]<-11;
	grafo[5,2]<-11;
	Escribir 'B-E: 11'; // B-E: 11
	grafo[3,4]<-7;
	grafo[4,3]<-7;
	Escribir 'C-D: 7'; // C-D: 7
	grafo[3,5]<-2;
	grafo[5,3]<-2;
	Escribir 'C-E: 2'; // C-E: 2
	grafo[4,5]<-9;
	grafo[5,4]<-9;
	Escribir 'D-E: 9'; // D-E: 9
	Escribir '';
	// Comenzar desde vértice 1 (A)
	Escribir 'Comenzando desde vértice A (1)';
	visitado[1] <- 1;
	costoTotal <- 0;
	aristasMST <- 0;
	Escribir '';
	Escribir '=== PROCESO PASO A PASO ===';
	// Algoritmo de Prim
	Mientras aristasMST<numVertices-1 Hacer
		minPeso <- 9999;
		u <- 0;
		v <- 0;
		Escribir '';
		Escribir 'Paso ', aristasMST+1, ':';
		Escribir 'Buscando arista de menor peso desde vértices visitados...';
		// Mostrar vértices visitados
		Escribir 'Vértices visitados: ';
		Para i<-1 Hasta numVertices Con Paso 1 Hacer
			Si visitado[i]=1 Entonces
				Escribir '  Vértice ', i, ' ?';
			FinSi
		FinPara
		// Encontrar arista de menor peso que conecte un vértice visitado con uno no visitado
		Para i<-1 Hasta numVertices Con Paso 1 Hacer
			Si visitado[i]=1 Entonces
				Para j<-1 Hasta numVertices Con Paso 1 Hacer
					Si visitado[j]=0 Y grafo[i,j]>0 Y grafo[i,j]<minPeso Entonces
						minPeso <- grafo[i,j];
						u <- i;
						v <- j;
						Escribir 'Candidata: ', i, '-', j, ' (peso ', grafo[i,j], ')';
					FinSi
				FinPara
			FinSi
		FinPara
		// Agregar arista al MST
		Si u<>0 Y v<>0 Entonces
			aristasMST <- aristasMST+1;
			mst[aristasMST,1]<-u;
			mst[aristasMST,2]<-v;
			mst[aristasMST,3]<-minPeso;
			costoTotal <- costoTotal+minPeso;
			visitado[v] <- 1;
			Escribir '? Seleccionada: ', u, '-', v, ' (peso ', minPeso, ')';
			Escribir '  Vértice ', v, ' ahora está visitado';
			Escribir '  Costo acumulado: ', costoTotal;
		SiNo
			Escribir '? No se encontró arista válida';
		FinSi
	FinMientras
	// Mostrar resultado final
	Escribir '';
	Escribir '=== RESULTADO FINAL ===';
	Escribir 'Árbol de Expansión Mínima (Algoritmo de Prim):';
	Escribir '';
	Para i<-1 Hasta numVertices-1 Con Paso 1 Hacer
		Escribir 'Arista ', i, ': ', mst[i,1], '-', mst[i,2], ' (Peso: ', mst[i,3], ')';
	FinPara
	Escribir '';
	Escribir '?? COSTO TOTAL DEL MST: ', costoTotal;
	Escribir '';
	Escribir 'Representación del árbol:';
	Escribir '   A';
	Escribir '   |\\8';
	Escribir '  4| \\';
	Escribir '   B  E';
	Escribir '   |  |';
	Escribir '  8|  |2';
	Escribir '   C--+';
	Escribir '   |';
	Escribir '  7|';
	Escribir '   D';
FinProceso
