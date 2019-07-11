<%@page import="beans.ClienteBean"%>
<%@page import="beans.FuncionarioBean"%>
<%@page import="dao.FuncionarioDao"%>
<%@page import="dao.ClienteDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%
    	//Obter e-mail e senha
    	String cpf = request.getParameter("cpf");
    	String senha = request.getParameter("senha");
    	
    	//criar a sessão
    	/*if((email.equals("teste@algo.com")) && (senha.equals("123"))){
    		session.setAttribute("usuario", email);
    		response.sendRedirect("../painel.jsp");
    	}else{
    		response.sendRedirect("../index.jsp?mensagem=falhaLogin");
    	}*/
    	
    	//Validar login
		ClienteDao clienteDao = new ClienteDao();
    	String contador = clienteDao.verificarLogin(cpf, senha);
    	
    	//condicional
    	if(contador.equals("0")){
    		FuncionarioDao funcionarioDao = new FuncionarioDao();
    		contador = funcionarioDao.verificarLogin(cpf, senha);
    		if( contador.equals("0") ) {
    			response.sendRedirect("../login.jsp?mensagem=falhaLogin");
    		}else{
    			FuncionarioBean funcionarioBean = (FuncionarioBean) funcionarioDao.dadosFuncionario(cpf, senha);
    			session.setAttribute("usuario", "funcionario" );
    			session.setAttribute("nome", funcionarioBean.getNomeFuncionario() );
    			session.setAttribute("cnh", funcionarioBean.getCnhFuncionario() );
    			session.setAttribute("tel", funcionarioBean.getTelefoneFuncionario() );
    			session.setAttribute("cpf", cpf );
    			session.setAttribute("email", funcionarioBean.getEmailFuncionario() );
    			session.setAttribute("senha", senha );
    			response.sendRedirect("../index.jsp");
    		}
    		
    		
    	}else{
    		ClienteBean clienteBean = clienteDao.dadosCliente(cpf, senha);
    		session.setAttribute("usuario", "cliente");
    		session.setAttribute("nome", clienteBean.getNomeCliente() );
    		session.setAttribute("cpf", clienteBean.getCpfCliente() );
    		session.setAttribute("email", clienteBean.getEmailCliente() );
    		session.setAttribute("senha", clienteBean.getSenhaCliente() );
    		session.setAttribute("tel", clienteBean.getTelefoneCliente() );
    		response.sendRedirect("../index.jsp");
    	}
    %>