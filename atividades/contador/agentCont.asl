// Agent agentCont in project contador.mas2j

cont(0).

!start.
!contar.

+!start <-.print("Iniciei").
+!contar: cont(I) & I<=10 <-
	.print("Contando...",I);
	-+cont(I+1);
!contar.

//tratamento de erro

-!contar <-.print("Sem eventos para executar").

