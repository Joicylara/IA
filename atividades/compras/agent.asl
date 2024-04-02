// Agent agent in project compras.mas2j

/* Initial beliefs and rules */

/* Initial goals */

/*1) Modelagem do comportamento de um agente de compras: O agente deve ser capaz de adicionar itens a uma lista de compras, 
comprar itens na loja e manter o histórico de compras. 

Crenças: O agente tem crenças sobre os itens disponíveis para compra, seu preço e qualidade. 
Ele também tem crenças sobre as preferências do usuário em relação a cada item.
Ações: O agente pode adicionar itens à lista de compras, remover itens, comparar preços e comprar itens.
Planos: O agente pode ter planos para pesquisar produtos, comparar preços, decidir quais itens comprar e onde comprá-los.*/




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

	

