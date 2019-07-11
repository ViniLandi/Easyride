<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<%
	try{
		//Excluir a sessão
		while(session.getAttributeNames().hasMoreElements()){
			session.removeAttribute(session.getAttributeNames().nextElement());
		}
	}catch(Exception e){}

	//Redirecionar para a página inicial
	response.sendRedirect("login.jsp");
%>