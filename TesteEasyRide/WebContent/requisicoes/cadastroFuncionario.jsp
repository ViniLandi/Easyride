<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="beans.FuncionarioBean"%>
<%@page import="dao.FuncionarioDao"%>

<%
	//Tentando obter os dados
	String cpf = request.getParameter("cpf");
	String nome = request.getParameter("nome");
	String telefone = request.getParameter("tel");
	String email = request.getParameter("email");
	long cnh = Long.parseLong(request.getParameter("cnh"));
	String senha = request.getParameter("senha1");
	
	out.print(cpf+"<br>"+nome+"<br>"+telefone+"<br>"+email+"<br>"+cnh+"<br>"+senha);
	
	//Objeto
	FuncionarioBean funcionarioBean = new FuncionarioBean(cpf, nome, email, telefone, cnh, senha); 
	
	//Metodo cadastrar
	FuncionarioDao funcionarioDao = new FuncionarioDao();
	
	if ( funcionarioDao.verificarCpf(funcionarioBean) == 0 ) {
		if( funcionarioDao.verificarEmail(funcionarioBean) == 0 ) {
			if (funcionarioDao.cadastrarFuncionario(funcionarioBean)) {
				//out.print("cadastrado");
				response.sendRedirect("../cadastroFuncionario.jsp?mensagem=sucessoCadastro");
			}else{
				out.print("erro");
			}
		}else{
			response.sendRedirect("../cadastroFuncionario.jsp?mensagem=emailCadastrado");
		}
		
	}else{
		response.sendRedirect("../cadastroFuncionario.jsp?mensagem=cpfCadastrado");
	}
	

%>