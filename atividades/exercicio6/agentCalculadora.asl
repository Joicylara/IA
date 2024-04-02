// Agent agentCalculadora in project exercicio6.mas2j



/* Initial beliefs and rules */



/* Initial goals */






/* Plans */



+!calc(X,Y) <-
	R = X+Y;
	.send(agentPessoa, tell,res(R)).
	//.print(R1).
	

/*+valor(X, Y) <-
	R2 = X-Y.

+valor(X, Y) <-
	R3 = X*Y

+valor(X, Y) <-
	R4 = X/Y.*/
