// Agent agentSaude in project modelagemSaude.mas2j



/*2) Modelagem do comportamento de um agente de sa�de: O agente deve ser capaz 
de monitorar a sa�de de uma pessoa, identificar sinais de doen�as e aconselhar 
a pessoa a procurar tratamento m�dico.

Cren�as: O agente tem cren�as sobre sintomas, doen�as e tratamentos dispon�veis. 
Ele tamb�m tem cren�as sobre as necessidades e prefer�ncias da pessoa em rela��o 
a sua sa�de.

A��es: O agente pode monitorar os sintomas da pessoa, recomendar tratamentos, 
sugerir consultas m�dicas e fazer acompanhamento da sa�de da pessoa.

Planos: O agente pode ter planos para coletar informa��es sobre a 
sa�de da pessoa, diagnosticar doen�as, recomendar tratamentos espec�ficos e 
monitorar a sa�de da pessoa ao longo do tempo.*/

sintomas.
doencas.
tratamentoDisponivel(T).
necessidade.
preferencia.

!coletarInformacoes.

+!coletarInformacoes <-
	+sintomas;
	+doencas;
	+necessidade;
	+preferencia;
	+tratamentoDisponivel(1).


+sintomas<-
	.print("Ola, quais sao os sintomas?");
	.send(agentPaciente, askAll, saude(Situacao)).

+doencas<-
	.print("Apos analisar a consulta, a doenca no resultado deu:");
	.send(agentPaciente, askAll, doenca(Doenca)).

+necessidade<-
	.print("Necessidade de tratamento?");
	.send(agentPaciente, askAll, tratamentoNecessario(Necessidade)).
	
+preferencia<-
	.print("Qual categoria de cor esta a sua situacao?");
	.send(agentPaciente, askAll,cor(P)).
	
+tratamentoDisponivel(T)<-
	.print("Qual a doenca para verificarmos os tratamento disponiveis");
	if(T == 0){
		.print("Tratamento para gripe");
		.print("Mesmo apos finalizar o tratamento, continue marcando consulta para monitorarmos sua saude durante o tempo");
	};
	if(T == 1){
		.print("Tratamento para amigdalite");
		.print("Mesmo apos finalizar o tratamento, continue marcando consulta para monitorarmos sua saude durante o tempo");
	};
	if(T == 2){
		.print("Tratamento para bronquite");
		.print("Mesmo apos finalizar o tratamento, continue marcando consulta para monitorarmos sua saude durante o tempo");
	}else{
		.print("Nao tem tratamento disponivel");
		.print("Mesmo apos finalizar o tratamento, continue marcando consulta para monitorarmos sua saude durante o tempo");
	}.

	
+saude(boa):saude(X) & (X == boa)<-
	.print("Que bom que esta tudo ok, continue se cuidando").
+saude(doente):saude(X) & (X == doente)<-
	.print("Tudo bem, vamos analisar os sintomas. O que voce esta sentindo");
	.send(agentPaciente, askAll,sintoma(Sintoma)).
	
+sintoma(garganta):sintoma(S) & (S == garganta)<-
	.print("Dor na garganta pode ocorrer por varios problemas, irei recomendar alguns medicamentos");
	.print("Marque uma proxima consulta para analisar se houve uma melhora").
+sintoma(tosse):sintoma(S) & (S == tosse)<-
	.print("Tosse pode ocorrer por varios problemas, irei recomendar alguns medicamentos");
	.print("Marque uma proxima consulta para analisar se houve uma melhora").	
+sintoma(febre):sintoma(S) & (S == febre)<-
	.print("A febre pode ocorrer por varios problemas, irei recomendar alguns medicamentos");
	.print("Marque uma proxima consulta para analisar se houve uma melhora").
	
+doenca(gripe):doenca(D) & (D == gripe)<-
	.print("Gripe").	
+doenca(amigdalite):doenca(D) & (D == amigdalite)<-
	.print("Amigdalite").	
+doenca(bronquite):doenca(D) & (D == bronquite)<-
	.print("Bronquite").
	
+tratamentoNecessario(sim):tratamentoNecessario(N)&(N == sim)<-
	.print("Sim, sera necessario o tratamento").
+tratamentoNecessario(nao):tratamentoNecessario(N)&(N == nao)<-
	.print("Nao sera necessario o tratamento").
	
+cor(verde):cor(F)&(F == verde)<-
	.print("Verde, espere na fila").
+cor(amarelo):cor(F)&(F == amarelo)<-
	.print("Amarelo, aguarde um pouco, ja iremos te chamar").
+cor(vermelho):cor(F)&(F == vermelho)<-
	.print("Vermelho, vamos te encaminhar a sala do medico agora mesmo").
	
	
