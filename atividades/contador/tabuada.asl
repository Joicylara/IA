// Agent tabuada in project contador.mas2j

cont(0).

!start.
!contar.

+!start <-.print("Iniciei").
+!contar: cont(I) & I<=10
	.print("Multiplicando...",I*2);
	-+cont(I+1);
	
!contar.

//tratamento de erro

-!contar <-.print("Sem eventos para executar").

