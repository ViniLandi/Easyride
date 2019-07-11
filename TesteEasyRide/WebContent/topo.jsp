<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">

	<head>
	    <meta charset="UTF-8">
	    <title>Cadastre-se e faça dinheiro viajando!</title>
	
	    
	    <!-- Script Externo -->
	    
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	    
		<script src="javascript/jquery-3.3.1.slim.min.js"></script>
	    
	    <script src="javascript/popper.min.js"></script>
	    
	    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script> 
	    

	    
	    <link href="estilos/estilos.css" rel="stylesheet">
	    
	    <% if( (request.getRequestURL().toString().contains("cadastroCliente")) || (request.getRequestURL().toString().contains("cadastroFuncionario")) 
	    		|| (request.getRequestURL().toString().contains("alterarFuncionario"))){ %> 
	    		
	    	<script src="javascript/jquery-1.2.6.pack.js"></script>
	    	<script src="javascript/jquery.maskedinput-1.1.4.pack.js"></script>
		    <script type="text/javascript">
		        $(document).ready(function () {
		            $("#tel").mask("(88)98888-8888");
		            $("#cpf").mask("888.888.888-88");
		        });
	    	</script>
    	<% } %>
    	
    	<% if( request.getRequestURL().toString().contains("cadastroVeiculo") || request.getRequestURL().toString().contains("cadastroAgendamentoRec") ){ %> 
    		<script src="javascript/jquery-1.2.6.pack.js"></script>
		    <script src="javascript/jquery.maskedinput-1.1.4.pack.js"></script>
	    	<script type="text/javascript">
		        $(document).ready(function () {
		            $("#placa").mask("aaa-8888");
		        });
		        
		        
	    	</script>
		<% } %>

    <script>
        window.onload = function () {

        	<% if( request.getRequestURL().toString().contains("cadastroVeiculo") ){ %> 
	            for (var i = 2005; i <= 2019; i++) {
	                document.getElementById("ano").append(new Option(i));
	            }
	        <% } %>
            
            // ADD EventListener
			<% if( (request.getRequestURL().toString().contains("cadastroCliente")) || (request.getRequestURL().toString().contains("cadastroFuncionario")) ){ %> 
	            document.getElementById("enviar").addEventListener("click", ValidarCPF);
	            document.getElementById("cpf").addEventListener("keyup", VerificaTamanho);
	            document.getElementById("senha2").addEventListener("keyup", VerificaSenha);
	            document.getElementById("nome").addEventListener("keyup", VerificaNome);
			<% } %>
			
			
        }
        
        function ConverterMaiusculo(){
            var campo = document.getElementById("placa").value.toUpperCase();
            document.getElementById("placa").value = campo;
        }

        function VerificaTamanho() {
            var campo = document.getElementById("cpf").value.replace(".", "").replace("-", "");
            var valida = false;
            for (var i = 0; i <= campo.length; i++) {
                if (campo.substring(i, i + 1) == "_") {
                    valida = true;
                }
            }
            if (valida == false) {
                ValidarCPF();
            } else {
                document.getElementById("cpf").className = "form-control"
                document.getElementsByClassName("cpfInvalido")[0].style.display = "none";
                document.getElementsByClassName("cpfValido")[0].style.display = "none";
            }

        }

        function VerificaSenha() {
            var senha1 = document.getElementById("senha1").value;
            var senha2 = document.getElementById("senha2").value;

            if (senha2.length == senha1.length) {
                if (senha2 != senha1) {
                    document.getElementById("senha1").className = "form-control is-invalid";
                    document.getElementById("senha2").className = "form-control is-invalid";
                    document.getElementsByClassName("senhaInvalido")[0].style.display = "inline-block";
                    document.getElementsByClassName("senhaValido")[0].style.display = "none";
                } else if (senha2 == senha1) {
                    document.getElementById("senha1").className = "form-control is-valid";
                    document.getElementById("senha2").className = "form-control is-valid";
                    document.getElementsByClassName("senhaValido")[0].style.display = "inline-block";
                    document.getElementsByClassName("senhaInvalido")[0].style.display = "none";
                }
            } else if (senha2.length > senha1.length) {
                document.getElementById("senha1").className = "form-control is-invalid";
                document.getElementById("senha2").className = "form-control is-invalid";
                document.getElementsByClassName("senhaInvalido")[0].style.display = "inline-block";
                document.getElementsByClassName("senhaValido")[0].style.display = "none";
            } else if (senha2.length < senha1.length) {
                document.getElementById("senha1").className = "form-control";
                document.getElementById("senha2").className = "form-control";
                document.getElementsByClassName("senhaInvalido")[0].style.display = "none";
                document.getElementsByClassName("senhaValido")[0].style.display = "none";
            }
        }

        function VerificaNome() {
            var campo = document.getElementById("nome").value;
            if (campo.length == 0) {
                document.getElementById("nome").className = "form-control is-invalid";
                document.getElementsByClassName("nomeInvalido")[0].style.display = "inline-block";
                document.getElementsByClassName("nomeValido")[0].style.display = "none";
            } else {
                document.getElementById("nome").className = "form-control is-valid";
                document.getElementsByClassName("nomeInvalido")[0].style.display = "none";
                document.getElementsByClassName("nomeValido")[0].style.display = "inline-block";
            }
        }

        function ValidarCPF() {
            var cpf = document.getElementById("cpf").value;
            exp = /\.|\-/g;
            cpf = cpf.toString().replace(exp, "");
            var digitoDigitado = (cpf.charAt(9) + cpf.charAt(10));
            var soma1 = 0, soma2 = 0;
            var vlr = 11;

            for (i = 0; i < 9; i++) {
                soma1 += (cpf.charAt(i) * (vlr - 1));
                soma2 += (cpf.charAt(i) * vlr);
                vlr--;
            }
            soma1 = (((soma1 * 10) % 11) == 10 ? 0 : ((soma1 * 10) % 11));
            soma2 = (((soma2 + (2 * soma1)) * 10) % 11);

            var digitoGerado = (soma1 * 10) + soma2;
            if (digitoGerado != digitoDigitado) {
                document.getElementById("cpf").className = "form-control is-invalid"
                document.getElementsByClassName("cpfInvalido")[0].style.display = "inline-block";
                document.getElementsByClassName("cpfValido")[0].style.display = "none";
            } else {
                document.getElementById("cpf").className = "form-control is-valid";
                document.getElementsByClassName("cpfValido")[0].style.display = "inline-block";
                document.getElementsByClassName("cpfInvalido")[0].style.display = "none";
            }

        }


    </script>
	   
	    <% 
	String pageName = null;
	try{
		//Getando o Parâmetro
		pageName = request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/")+1);
		
		//Selecionando o Título
		switch (pageName){
			case "index.jsp":
				out.print("<title>Bem-Vindo! EasyRide</title>");
				break;
			case "cadastroCliente.jsp":
				out.print("<title>Cadastro de Cliente</title>");
				break;
			case "cadastroFuncionario.jsp":
				out.print("<title>Cadastro de Motoristas</title>");
				break;
			case "cadastroVeiculo.jsp":
				out.print("<title>Cadastro de Veículos</title>");
				break;
			case "institucional.jsp":
				out.print("<title>Institucional</title>");
				break;
			case "login.jsp":
				out.print("<title>Acesso Restrito</title>");
				break;
			case "#":
				out.print("<title>Bem-Vindo! EasyRide</title>");
				break;
			case "##":
				out.print("<title>Bem-Vindo! EasyRide</title>");
				break;
			default:
				break;
	}}catch(Exception e){}
%> 
	
	</head>
	
	<body>
		
	    <header>
	        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	            <!-- Div com Icones e Botao para Tela Responsiva -->
	           <div class="d-flex">
	                <!-- Logo telas pequenas -->
	                <a class="iconeTopo" href="index.jsp">
	                    <img class="icone01" src="imagens/cabecalhoRodape/Car.png"> 
	                    <img class="icone02" src="imagens/cabecalhoRodape/Text.png">
	                </a>
	
	                <!-- Botão mobile -->
	                <div class="btnMobile text-right">
	                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#myNavbar">
	                        <span class="navbar-toggler-icon"></span>
	                    </button>
	                </div>
	            </div>
	            <!-- Div com o Menu Bar do Topo -->
	            <div class="collapse navbar-collapse topLeftBorders snip1217" id="myNavbar">
	                <ul class="navbar-nav ml-auto">
	                    <li class="nav-item animacaoTopo">
	                        <a href="index.jsp" class="nav-link menu-item">Início</a>
	                    </li>
	
	                    <li class="nav-item dropdown snip1217" >
	                        <a class="nav-link" id="navbarDropdown" href="#" role="button"
	                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                            Cadastrar
	                        </a>
	
	                        <div class="dropdown-menu itemMenu" aria-labelledby="navbarDropdown">
	                            <a class="dropdown-item" href="cadastroFuncionario.jsp" id="aCadMot">Como motorista</a>
	                            <a class="dropdown-item" href="cadastroCliente.jsp" id="aCadVia">Como viajante</a>
	                        </div>
	                    </li>
	                    <li class="nav-item snip1217">
	                        <a href="login.jsp" class="nav-link menu-item" id="btnEntrar">Entrar</a>
	                    </li>
	                    <li class="nav-item snip1217">
	                        <a href="sair.jsp" class="nav-link menu-item">Sair</a>
	                    </li>
	                </ul>
	            </div>
	        </nav>
	    </header> 
	    
	    <!-- Validar usuário -->
		<%
			//Sessão: Validar o acesso as páginas
			try{
				Object usuario = null;
				if( session.getAttributeNames().hasMoreElements() ){
					if( session.getAttribute("usuario").equals("cliente") ){
					%>
					<script>
						document.getElementById("btnEntrar").innerHTML = "Minhas viagens";
						document.getElementById("btnEntrar").setAttribute("href","minhaConta.jsp");
						document.getElementById("aCadVia").innerHTML = "Viagem única";
						document.getElementById("aCadVia").setAttribute("href","cadastroAgendamentoUnico.jsp");
						document.getElementById("aCadMot").innerHTML = "Viagem recorrente";
						document.getElementById("aCadMot").setAttribute("href","cadastroAgendamentoRec.jsp");
					</script>
					<%
					}else{
						%> 
						<script>
							document.getElementById("btnEntrar").style.display = "none";
							document.getElementById("aCadVia").innerHTML = "Veículo";
							document.getElementById("aCadVia").setAttribute("href","cadastroVeiculo.jsp");
							document.getElementById("aCadMot").style.display = "none";
						</script>
						<%
					}
				}
				
				
				
				
			}catch(Exception e){
				out.print("Falha na sessão");
			}   
		%> 