// Agent kate in project comunicacao.mas2j



/* Initial beliefs and rules */



/* Initial goals */



!falar.



/* Plans */



+!falar : true <- .print("hello, Bob.");
	.send(bob, tell, kate(hello)).
+~kate(hello) [source(bob)] <-
	.print("Tchau, Bob.");
	.send(bob, untell, kate(hello)).
