// Agent agentMonitor in project exercicio1.mas2j



/* Initial beliefs and rules */



/* Initial goals */

/* modo da prof fazer
~segunda.

!start.


+!start:~segunda <- 
	
	.print("Não e segunda").



/* meu modo de fazer*/

+!start <- 
	?naoSegunda(X);
	.print(X).
+?naoSegunda(X) <-
	X = "Ola, tudo bem";
	+naoSegunda(X).

