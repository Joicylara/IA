// Agent agentDesc in project contador.mas2j

cont(10).

!start.
!contar.

+!start <-.print("Iniciei").
+!contar: cont(I) & I>=0 <-
	.print("Contando...",I);
	-+cont(I-1);
!contar.

//tratamento de erro

-!contar <-.print("Sem eventos para executar").

