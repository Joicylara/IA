// Agent agent in project compras.mas2j

/* Initial beliefs and rules */

/* Initial goals */

/*1) Modelagem do comportamento de um agente de compras: O agente deve ser capaz de adicionar itens a uma lista de compras, 
comprar itens na loja e manter o hist�rico de compras. 

Cren�as: O agente tem cren�as sobre os itens dispon�veis para compra, seu pre�o e qualidade. 
Ele tamb�m tem cren�as sobre as prefer�ncias do usu�rio em rela��o a cada item.
A��es: O agente pode adicionar itens � lista de compras, remover itens, comparar pre�os e comprar itens.
Planos: O agente pode ter planos para pesquisar produtos, comparar pre�os, decidir quais itens comprar e onde compr�-los.*/




itensDisponiveis(Item).
preco(X,Y).
quantidade.
preferencia.

!listaCompra.

+!listaCompra <-
	+itensDisponiveis(Item);
	-itensDisponiveis(Item);
	+~itensDisponiveis(Item);
	.print("Item removido");
	+preco(4,5);
	.send(agentItens, askOne, item(Nome)).
	
	
+itensDisponiveis(Item)<-
	if(Item \== 0){
		.print("add item");
		C = Item+1;
		.print("Item comprado");
	}.
	
+preco(X,Y)<-
	if(X == Y){
		.print("Preco iguais");
	}else{
		.print("Itens diferentes");
	}.

+item(fini):item(X) & (X == fini)<-
	.print("fini").
+item(sorvete):item(X) & (X == sorvete)<-
	.print("sorvete").	
+item(chocolate):item(X) & (X == chocolate)<-
	.print("chocolate").

	

