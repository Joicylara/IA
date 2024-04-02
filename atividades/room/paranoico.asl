// Agent paranoico in project room.mas2j

aberta(porta).

+aberta(porta): true <-
	.print("Porta aberta. Vou fechar!!!");
	-aberta(porta);
	+~aberta(porta);
	/*+fechada(porta);*/
	.print("Porta fechada...").
