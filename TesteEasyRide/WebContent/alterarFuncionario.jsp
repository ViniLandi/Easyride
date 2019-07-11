<%@page import="dao.FuncionarioDao"%>
<%@ include file="topo.jsp" %>

<main>
	<section class="alterarFuncionario">
		
		<!-- Formulario -->
		
		<form action="">
			<h3>Cadastro e Alteração de Funcionários</h3>
			<div class="form-group">
				<label>CPF</label>
				<input class="form-control cpf" placeholder="___.___.___-__"type="text"  name="cpf" id="cpf">
			</div>
			
			<div class="form-group">
				<label>Nome</label>
				<input class="form-control" type="text" placeholder="Nome" id="nome" name="nome">
			</div>
			
			<div class="form-group">
				<label>E-mail</label>
				<input class="form-control" type="text" placeholder="exemplo@gmail.com" id="email" name="email">
			</div>
			
			<div class="form-group">
				<label>Telefone</label>
				<input placeholder="(__) _____-____" class="form-control telefone" type="text" name="telefone" id="telefone">
			</div>
			
			<div class="form-group viniViado">
				<label>CNH</label>
				<input class="form-control cnh" type="text" name="cnh" id="cnh">
			</div>
			
			<div class="form-group viniViado">
				<input class="btn btn-primary" type="submit" id="enviar" value="Cadastrar">
			</div>
			
		</form>
		
		<!-- Tabela com a listagem -->
		<%
			FuncionarioDao funcionarioDao = new FuncionarioDao();
			out.print(funcionarioDao.selecionar());
		%>
		
	</section>
	
</main>

<%@ include file="rodape.jsp" %>