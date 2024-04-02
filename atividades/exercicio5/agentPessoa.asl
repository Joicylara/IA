// Agent agentPessoa in project exercicio5.mas2j
!previsao.

+!previsao : true <-
	.print("Qual a previsão para hj?");
	.send(agentClima, askAll, tempo(Clima)).
	
+tempo(sol):tempo(X) & (X == sol)<-
	.print("Ir a praia").

+tempo(chuva):tempo(X) & (X == chuva)<-
	.print("Dormir").
+tempo(neve):tempo(X) & (X == neve)<-
	.print("Ler um livro").

