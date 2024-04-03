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
quantidade(Q).
preferencia(P).

!listaCompra.

+!listaCompra <-
	+itensDisponiveis(Item);
	.print("Deseja remover item?");
	.send(agentItens, askAll, remover(Excluir));
	+preco(4,5);
	.send(agentItens, askOne, item(Nome)).
	

	
+itensDisponiveis(Item)<-
	.print("Ola, voce deseja comprar na loja fisica ou online?");
	.send(agentItens, askAll,local(Local));
	.print("Deseja add item (com ou sem preferencia) e comprar,add(com ou sem preferencia) ou comprar?");
	.send(agentItens, askAll, compra(Pedido)).

	
	
+local(fisica):local(L)&(L == fisica)<-
	.print("Seja bem vinda(o) a loja fisica, vamos as compras").
	
+local(online):local(L)&(L == online)<-
	.print("Seja bem vinda(o) a loja online, vamos as compras").
	
+compra(add):compra(A)&(A == add)<-
	if(Q \== 0){
		Item = Item+1;
		.print("add item sem preferencia");
	}.
+compra(comp):compra(A)&(A == comp)<-
	if(Item \== 0){
		.print("Comprar item sem preferencia");
	}.
+compra(addComp):compra(A)&(A == addComp)<-
	if((Q \== 0) &(Item \== 0)){
		Item = Item+1;
		.print("add item e comprar sem preferencia");
	}.
+compra(addP):compra(A)&(A == addP)<-
	if(Q \== 0){
		Item = Item+1;
		Item = P;
		.print("add item com preferencia");
	}.
+compra(compP):compra(A)&(A == compP)<-
	if(Item \== 0){
		.print("Comprar item com preferencia");
	}.
+compra(addCompP):compra(A)&(A == addCompP)<-
	if((Q \== 0) &(Item \== 0)){
		Item = Item+1;
		.print("add item e comprar com preferencia");
	}.	
	
+preco(X,Y)<-
	if(X == Y){
		.print("Preco iguais");
	}else{
		.print("Preco diferentes");
	}.

+item(fini):item(X) & (X == fini)<-
	.print("fini").
+item(sorvete):item(X) & (X == sorvete)<-
	.print("sorvete").	
+item(chocolate):item(X) & (X == chocolate)<-
	.print("chocolate").

+remover(sim):remover(R) & (R == sim)<-
	Item = Item-1;
	.print("Item removido").
+remover(nao):remover(R)& (R == nao)<-
	.print("Item nao removido").

