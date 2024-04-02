// Agent claustofobico in project room.mas2j

fechada(porta).
+fechada(porta) : true <-
	.print("Porta fechada. Vou abrir!!!");
	+~fechada(porta);
	 -fechada(porta);
	/*+aberta(porta);*/
	.print("Porta aberta").
