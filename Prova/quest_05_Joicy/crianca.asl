// Agent crianca in project quest_05_Joicy.mas2j


fome(0).
sede(0).
sono(0).


!comer.

+!comer : fome(F) & F <= 50
<-
	.wait(500);
	.print("To com fome");
	.print("Comendo...");
	-+fome(F+10);
	.print("Nivel de fome: ", F);
	!comer.
	
+!comer : fome(F) & F >= 50
<-
	.wait(500);
	.print("Estou satisfeito!");
	!beber.
	
+!beber: sede(S) & S <= 50
<-
	.wait(500);
	.print("To com sede");
	.print("Bebendo agua...");
	-+sede(S+10);
	.print("Nivel de sede: ", S);
	!beber.
	
+!beber : sede(S) & S >= 50
<-
	.wait(500);
	.print("Acabou a sede!");
	!dormir.
	
+!dormir : sono(D) & D <= 50
<-
	.wait(500);
	.print("To com sono");
	.print("Dormindo...");
	-+sono(D+10);
	.print("Nivel de sono: ", D);
	!dormir.
	
+!dormir : sono(D) & D >= 50
<-
	.wait(500);
	.print("Pronta pra brincar").

