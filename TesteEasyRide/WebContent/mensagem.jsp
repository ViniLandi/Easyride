<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	//Tentativa
	try{
		//Obter a mensagem
		String mensagem = request.getParameter("mensagem");
	
		//Tios e mensagem
		switch(mensagem){
			case "falhaLogin":
				out.print("<div class='mensagem'"+" style=background-color:gray;padding:15px;color:#fff;text-align:center;"
				+">Usuário ou senha incorretos</div>");
			break;
			
			case "falhaSessao":
				out.print("<div class='mensagem'"+" style=background-color:gray;padding:15px;color:#fff;text-align:center;"
						+">Realize o login</div>");
			break;
			
			case "sucessoCadastro":
				out.print("<div class='mensagem'"+" style=background-color:gray;padding:15px;color:#fff;text-align:center;"
						+">Cadastro realizado com sucesso</div>");
			break;
			
			case "erroCadastro":
				out.print("<div class='mensagem'"+" style=background-color:gray;padding:15px;color:#fff;text-align:center;"+">Erro ao cadastrar</div>");
			break;
			
			case "falhaExcluir":
				out.print("<div class='mensagem'"+" style=background-color:gray;padding:15px;color:#fff;text-align:center;"
						+">erro ao excluir</div>");
			break;
			
			case "sucessoExcluir":
				out.print("<div class='mensagem'"+" style=background-color:gray;padding:15px;color:#fff;text-align:center;"
						+">Sucesso ao excluir</div>");
			break;
			
			case "falhaAlterar":
				out.print("<div class='mensagem'"+" style=background-color:gray;padding:15px;color:#fff;text-align:center;"
					+">Erro ao alterar</div>");
			break;
			
			case "sucessoAlterar":
				out.print("<div class='mensagem'"+" style=background-color:gray;padding:15px;color:#fff;text-align:center;"
						+">Sucesso ao alterar</div>");
			break;
			
			case "emailCadastrado":
				out.print("<div class='mensagem'"+" style=background-color:gray;padding:15px;color:#fff;text-align:center;"
						+">E-mail já cadastrado</div>");
			break;
			
			case "cpfCadastrado":
				out.print("<div class='mensagem'"+" style=background-color:gray;padding:15px;color:#fff;text-align:center;"
						+">Cpf já cadastrado</div>");
			break;
			
			case "placaCadastrada":
				out.print("<div class='mensagem'"+" style=background-color:gray;padding:15px;color:#fff;text-align:center;"
						+">Placa já cadastrada</div>");
			break;
		}
	}catch(Exception erro){}
%>