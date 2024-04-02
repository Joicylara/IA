
!start.

+!start <- .print("Relogio em execucao");
	
//pegar hora
.time(Hora, Min,Seg);
.print("Hora: ", Hora, ":", Min,"minutos", ":", Seg,"s");
+hora(Hora);
!despertador.
+!despertador: hora(H) & H > 8 & H <= 10 <-.print("Estudar").
+!despertador: hora(H) & H >= 7 & H <= 8 <-.print("Acordar").
+!despertador: hora(H) & H >= 11 & H <= 13 <-.print("Almocar").
+!despertador: hora(H) & H > 14 & H <= 20 <-.print("Estudar").
+!despertador: hora(H) & H > 22 <-.print("Dormir").
-!despertador: true <- .print("Plano executado").
