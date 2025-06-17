Proceso CambioDeMonedas
	Definir monto, monedas10, monedas5, monedas1 Como Entero;
	Escribir 'Ingrese el monto: ';
	Leer monto;
	// Usar monedas de $10
	monedas10 <- trunc(monto/10);
	monto <- monto-(monedas10*10);
	// Usar monedas de $5
	monedas5 <- trunc(monto/5);
	monto <- monto-(monedas5*5);
	// Usar monedas de $1
	monedas1 <- monto;
	// Mostrar resultado
	Escribir 'Monedas de $10: ', monedas10;
	Escribir 'Monedas de $5: ', monedas5;
	Escribir 'Monedas de $1: ', monedas1;
	Escribir 'Total de monedas: ', monedas10+monedas5+monedas1;
FinProceso
