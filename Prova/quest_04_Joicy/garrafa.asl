// Agent garrafa in project quest_04_Joicy.mas2j

garrafa(cheia).

!verificarQ.

+!verificarQ : true <- 
	.send(pessoa, tell, garrafa(vazia));
	.wait(500);
	!informar.
	
+!informar : quantidade(Q) & Q <= 100 <-
	if(quantidade(Q)& Q \== 0){
	.send(pessoa, untell, garrafa(cheia));
	.send(pessoa, tell, garrafa(vazia));
	
	.print("Sua garrafa esta proxima de esvaziar");
	};
	if(quantidade(Q) & Q == 0){
	.print("Sua garrafa esta vazia");
	
	}
	.wait(5000);
	!verificarQ.
	
-!informar<-
	.send(pessoa, tell, garrafa(cheia));
	!verificarQ.
