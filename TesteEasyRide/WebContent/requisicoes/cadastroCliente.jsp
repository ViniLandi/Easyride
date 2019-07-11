<%@page import="beans.ClienteBean"%>
<%@page import="dao.ClienteDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	//Tentando obter os dados
	String cpf = request.getParameter("cpf");
	String nome = request.getParameter("nome");
	String telefone = request.getParameter("tel");
	String email = request.getParameter("email");
	String senha = request.getParameter("senha1");
	
	out.print(cpf+"<br>"+nome+"<br>"+telefone+"<br>"+email+"<br>");
	
	//Objeto
	ClienteBean clienteBean = new ClienteBean(cpf, nome, email, telefone, senha);
	
	ClienteDao clienteDao = new ClienteDao();
	
	//Verificar se os dados já estão cadastrados
	if( clienteDao.verificarEmail(clienteBean) == 0 ){
		//Verificar cpf
		if (clienteDao.verificarCpf(clienteBean) == 0) {
			//Cadastrar
			if( clienteDao.cadastrarCliente(clienteBean) ){
				response.sendRedirect("../cadastroCliente.jsp?mensagem=sucessoCadastro");
				//out.print("cadastrado");
			}else{
				response.sendRedirect("../cadastroCliente.jsp?mensagem=erroCadastro");
				//out.print("Erro ao cadastrar");
			}
		}else{
			response.sendRedirect("../cadastroCliente.jsp?mensagem=cpfCadastrado");
			//out.print("Cpf já cadastrado");
		}
	}else{
		response.sendRedirect("../cadastroCliente.jsp?mensagem=emailCadastrado");
		//out.print("Email ja cadastrado");
	}
	

	
	
	
	
	

%>