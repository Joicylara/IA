// Agent agentCuidador in project animalEstimacao.mas2j

/*Modelagem do comportamento de um agente de cuidado com animais de estimação: 
O agente deve ser capaz de cuidar de um animal de estimação, fornecer alimento, 
água e brinquedos, e garantir que o animal esteja saudável.*/

alimento.
agua.
brinquedo.
saudavel.
estado.
!animal.
	

+!animal:
	estado<-
	.print("Verificando o estado do animal a cada momento");
	.wait(500).
	+alimento<-
	.print("Verificando se o animal esta com fome");
	.send(agentAnimal, askAll, fome(Fome)).
	
	+agua<-
		.print("Verificando se o animal esta com sede");
		.send(agentAnimal, askAll, sede(Sede)).
		
	+brinquedo<-
		.print("Hora de brincar com o animal");
		.send(agentAnimal, askAll, brinq(Brinq)).
	
	+saudavel<-
		.print("Vericando se esta tudo bem com o animal");
		.send(agentAnimal, askAll, saude(Saude));
		
!animal.



+fome(sim):fome(F)&(F == sim)<-
	.print("Colocar comida para o animal").
+fome(nao):fome(F)&(F == nao)<-
	.print("O animal esta cheio, nao precisa colocar alimento").
	
+sede(sim):sede(S)&(S == sim)<-
	.print("Colocar agua para o animal").
+sede(nao):sede(S)&(S == nao)<-
	.print("A vasilha de agua esta cheia, o animal nao esta com sede").
	
+brinq(bola):brinq(B)&(B == bola)<-
	.print("Jogar bola").
+brinq(disco):brinq(B)&(B == disco)<-
	.print("Jogar disco").
+brinq(passear):brinq(B)&(B == passear)<-
	.print("Passear com o animal").
	
+saude(boa):saude(S)&(S == boa)<-
	.print("Tudo ok com o animal, esta saudavel").
+saude(naoBoa):saude(S)&(S == naoBoa)<-
	.print("Encaminhar o animal ao veterinario").
	

