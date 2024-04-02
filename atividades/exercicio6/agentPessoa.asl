// Agent agentPessoa in project exercicio6.mas2j



/* Initial beliefs and rules */



/* Initial goals */



!calculo(3,2).



/* Plans */


+!calculo (X,Y)<-

	.print("Soma os dois valores: ",X, " + ", Y);
	.send(agentCalculadora, achieve, calc(X,Y)).
	//.send(agentCalculadora, tell, calc).
	
	+res(R)<-
		.print("Resultado: ", R).
	
//+valor()	


