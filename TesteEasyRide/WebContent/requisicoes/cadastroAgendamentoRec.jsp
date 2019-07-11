<%@page import="beans.AgendamentoBean"%>
<%@page import="dao.AgendamentoDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	//Obter os Dados
	if( !request.getParameter("horario-segunda").equals("") ){
		AgendamentoBean agendamentoSegunda = new AgendamentoBean("segunda", request.getParameter("horario-segunda"), request.getParameter("partida-segunda"), request.getParameter("destino-segunda"),
				request.getParameter("categoria-segunda"), 50.0, session.getAttribute("cpf").toString() );
		//Cadastrar
		AgendamentoDao agendamentoDao = new AgendamentoDao();
		if ( agendamentoDao.cadastrarAgendamento(agendamentoSegunda) ){
			response.sendRedirect("../cadastroAgendamentoRec.jsp?mensagem=sucessoCadastro");
		}else{
			response.sendRedirect("../cadastroAgendamentoRec.jsp?mensagem=erroCadastro");
		}
	}
	

%>