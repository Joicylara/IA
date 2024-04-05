// Agent agentRobo in project quest_06_Joicy.mas2j

bateria(100).

!verificarBateria.

+!verificarBateria : bateria(B) & B > 10<-
	.wait(1000);
	.print("Andando");
	-+bateria(B-10);
	.print("Nivel de bateria: ", B);
	!verificarBateria.
	
+!verificarBateria : bateria(B) & B <= 10<-
	.print("Nivel de bateria:", B);
	.print("Bateria baixa!");
	.wait(1000);
	.print("Recarregando...");
	-+bateria(B+90);
	.wait(5000);
	.print("Andando novamente");
	!verificarBateria.

