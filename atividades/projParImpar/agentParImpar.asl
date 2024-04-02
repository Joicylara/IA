// Agent agentParImpar in project projParImpar.mas2j

!numeroPar.
!cont(0).
+!numeroPar : cont(I) & I <=10 <-
	!par(N,F);
	.print(N," = ",F);
	-+cont(N+2);
!numeroPar.

+!par(N,F) : ((N mod 2) == 0) <- F=par.
+!par(N,F) : ((N mod 2) \== 0) <- F=impar.

	
