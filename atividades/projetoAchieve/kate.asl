// Agent kate in project projetoAchieve.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!falar.

/* Plans */

+!falar : true <- 
	.print("Qual o seu nome?");
	.send(bob, askAll, nome(Nome)).
	
+nome(bob):nome(X) & (X == bob)<-
	.print("O nome Bob").
+nome(alice):nome(X) & (X == alice)<-
	.print("O outro nome Alice").
	/*.print("Por favor, ligue a luz!");
	.send(bob, achieve, ligar(ok)).
+luz(ligada)<-
	.send(bob,unachieve,ligar(ok)).*/
	

