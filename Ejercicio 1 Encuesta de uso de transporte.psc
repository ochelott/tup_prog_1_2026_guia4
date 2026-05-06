Proceso Encuesta_de_uso_de_transporte
	Definir cantEn, totalEn, contEn, TipoVeh, i, totB, totM, totA, totTp Como Entero;
	Definir B, M, A, TP, PersonEn, AcB, AcM, AcA, AcTp Como Entero;
	Definir PromedioB, PromedioM, PromedioA, PromedioTp, Distancia Como Real;
	Definir PB, PM, PA, PTp Como Real;
	
	totalEn <- 0;
	contEn <- 0;
	totB <- 0;
	totM <- 0;
	totA <- 0;
	totTp <- 0;
	
	Escribir "INGRESE LA CANTIDAD DE ENCUESTADORES";
	Leer cantEn;
	Para i = 1 hasta cantEn Hacer
		B <- 0;
		M <- 0;
		A <- 0;
		Tp <- 0;
		PersonEn <- 0;
		AcB <- 0;
		AcM <- 0;
		AcA <- 0;
		AcTp <- 0;
		Escribir "INGRESE TIPO DE VEHICULO QUE CONSIDERA DE USO MAS FRECUENTE: [ingrese 0 para terminar]";
		Escribir "1.(Bicicleta) 2.(Motocicleta) 3.(Automovil) 4.(Transporte publico)";
		Leer tipoVeh;
		Mientras tipoVeh >= 1 y tipoVeh <= 4 Hacer
			Escribir "INGRESE LA DISTANCIA APROXIMADA EN LA QUE USA EL VEHICULO SELECCIONADO";
			Leer Distancia;
			Si tipoVeh = 1 Entonces
				B <- B + 1;
				totB <- totB + 1; 
				AcB <- AcB + Distancia;
			FinSi
			
			Si	TipoVeh = 2 Entonces
				M <- M + 1;
				totM <- totM + 1; 
				AcM <- AcM + Distancia;
			FinSi
				
			Si	TipoVeh = 3 Entonces
				A <- A + 1;
				totA <- totA + 1; 
				AcA <- AcA + Distancia;
			FinSi
					
			Si TipoVeh = 4 Entonces
				Tp <- Tp + 1;
				totTp <- totTp + 1; 
				AcTp <- AcTp + Distancia;
			FinSi
			PersonEn <- PersonEn + 1;
			Escribir "INGRESE TIPO DE VEHICULO QUE CONSIDERA DE USO MAS FRECUENTE: [ingrese 0 para terminar]";
			Escribir "1.(Bicicleta) 2.(Motocicleta) 3.(Automovil) 4.(Transporte publico)";
			Leer tipoVeh;
		FinMientras
		
		Si B > 0 Entonces
			PromedioB <- AcB / B;
		SiNo
			PromedioB <- 0;
		FinSi
		Si M > 0 Entonces
			PromedioM <- AcM / M;
		SiNo
			PromedioM <- 0;
		FinSi
		Si A > 0 Entonces
			PromedioA <- AcA / A;
		SiNo
			PromedioA <- 0;
		FinSi
		Si Tp > 0 Entonces
			PromedioTp <- AcTp / Tp;
		SiNo
			PromedioTp <- 0;
		FinSi
		
		
		Escribir "Cantidad de encuestados por encuestador: ", PersonEn;
		Escribir "Distancia promedio recorrida de cada tipo de vehiculo: ";
		Escribir "Bicicleta : ", PromedioB, "km";
		Escribir "Motocicleta: ", PromedioM, "km";
		Escribir "Automovil: ",  PromedioA, "km";
		Escribir "Transporte publico: ", PromedioTp, "km";
		
		TotalEn <- TotalEn + PersonEn; 
		ContEn <- ContEn + 1;
		
	FinPara
	
	PB <- (totB / TotalEn) * 100;
	PM <- (totM / TotalEn) * 100;
	PA <- (totA / TotalEn) * 100;
	PTp <- (totTp / TotalEn) * 100;
	Escribir "Cantidad total de personas encuestadas: ", TotalEn;
	Escribir "Porcentaje de uso por tipo de vehiculo: ";
	Escribir "Bicicleta : ", PB, "%";
	Escribir "Motocicleta: ", PM, "%";
	Escribir "Automovil: ",  PA, "%";
	Escribir "Transporte publico: ", PTp, "%";
	
		
FinProceso
