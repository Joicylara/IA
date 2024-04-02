// Agent agentParImpar in project projParImpar.mas2j

!numeroDiv(15).

+!numeroDiv(N)<-
	!divis(N,F);
	.print(N,F," divisivel por 3 e nem por 6").
	


+!divis(N,F) : (((N mod 3)== 0) & ((N mod 6) == 0)) <- F= " sim".
+!divis(N,F) : (((N mod 3)\== 0) & ((N mod 6) \== 0)) <- F=" nao".
+!divis(N,F) : (((N mod 3)\== 0) & ((N mod 6) == 0)) <- F= " nao".
+!divis(N,F) : (((N mod 3)== 0) & ((N mod 6) \== 0)) <- F=" nao".

	
