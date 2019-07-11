<%@ include file="topo.jsp" %>

		<section>
			<h1>Cliente</h1>
			<form action="requisicoes/cadastroCliente.jsp" method="post">
				<input type="text" placeholder="CPF" name="cpf">		
				<input type="text" placeholder="Nome" name="nome">		
				<input type="text" placeholder="Telefone" name="telefone">		
				<input type="text" placeholder="Email" name="email">	
				<input type="submit" value="Enviar">	
			</form>
		</section>
		<hr>
		<section>
			<h1>Funcionário</h1>
			<form action="requisicoes/cadastroFuncionario.jsp" method="post">
				<input type="text" placeholder="CPF" name="cpf">		
				<input type="text" placeholder="Nome" name="nome">		
				<input type="text" placeholder="Telefone" name="telefone">		
				<input type="text" placeholder="Email" name="email">	
				<input type="text" placeholder="Cnh" name="cnh">	
				<input type="submit" value="Enviar">	
			</form>
		</section>
		<hr>
		<section>
			<h1>Veiculo</h1>
			<form action="requisicoes/cadastroVeiculo.jsp" method="post">
				<input type="text" placeholder="Placa" name="placa">		
				<input type="text" placeholder="Fabricante" name="fabricante">		
				<input type="text" placeholder="Modelo" name="modelo">		
				<input type="text" placeholder="Ano" name="ano">	
				<input type="text" placeholder="Categoria" name="categoria">
				<input type="submit" value="Enviar">	
			</form>
		</section>
	
	<%@ include file="rodape.jsp" %>

	