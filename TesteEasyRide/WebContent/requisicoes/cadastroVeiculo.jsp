<%@page import="beans.ClienteBean"%>
<%@page import="beans.FuncionarioBean"%>
<%@page import="dao.VeiculoDao"%>
<%@page import="beans.VeiculoBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<%
	//Tentando obter os dados
	String placa = request.getParameter("placa");
	String fabricante = request.getParameter("fabricante");
	String modelo = request.getParameter("modelo");
	int ano = Integer.parseInt(request.getParameter("ano"));
	String categoria = request.getParameter("categoria");
	ClienteBean clienteBean = (ClienteBean) session.getAttribute("cliente");
	
	if( categoria.equals("simples") ){
		categoria = "a";
	}else if ( categoria.equals("luxo") ){
		categoria = "b";
	}else{
		out.print("Categoria com valor errado");
	}
	
	out.print(placa+"<br>"+fabricante+"<br>"+modelo+"<br>"+ano+"<br>"+categoria+"<br>"+clienteBean.getCpfCliente());
	
	//Objeto
	VeiculoBean veiculoBean = new VeiculoBean(placa, fabricante, modelo, ano, categoria,clienteBean.getCpfCliente() ); 
	
	//Metodo cadastrar
	VeiculoDao veiculoDao = new VeiculoDao();
	
	if( veiculoDao.verificarPlaca(veiculoBean) == 0){
		if (veiculoDao.cadastrarVeiculo(veiculoBean)) {
			response.sendRedirect("../cadastroVeiculo.jsp?mensagem=sucessoCadastro");
		}else{
			response.sendRedirect("../cadastroVeiculo.jsp?mensagem=erroCadastro");
		}
	}else{
		response.sendRedirect("../cadastroVeiculo.jsp?mensagem=placaCadastrada");
	}
	

%>