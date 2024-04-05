// Agent pessoa in project quest_04_Joicy.mas2j

//Quantidade de liquido em ml
quantidade(0).

!abrirCopo.

+!abrirCopo : quantidade(Q)<-
	.print("Quantidade na garrafa: ", Q,"ml");
	.send(garrafa, tell, quantidade(Q));
	.wait(1000);
	!beber.

+!beber : quantidade(Q) & garrafa(cheia)<- 
	.wait(1000);
	.print("Bebendo...");
	.wait(1000);
	-+quantidade(Q-50);
	!abrirCopo.
	
+!beber : quantidade(Q) & garrafa(vazia)<- 
	.wait(1000);
	.print("Enchendo...");
	.wait(1000);
	-+quantidade(Q+250);
	.send(garrafa, untell, quantidade(Q));
	!abrirCopo.
	


