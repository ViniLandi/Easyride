<!-- Cabecalho -->
<%@page import="beans.ClienteBean"%>
<%@page import="dao.ClienteDao"%>

<%@ include file="topo.jsp" %>

<main>
	<section class="alterarCliente">
		
		<!-- Formulario -->
		
		<!-- Tabela com a listagem -->
		<%
			ClienteDao clienteDao = new ClienteDao();
			out.print(clienteDao.selecionar());
		%>
		
	</section>
</main>

<!-- Rodape -->
<%@ include file="rodape.jsp" %>