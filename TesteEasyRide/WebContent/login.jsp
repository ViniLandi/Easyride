<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">

	<head>
	    <meta charset="UTF-8">
	    <title>Cadastre-se e faça dinheiro viajando!</title>
	
	    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	    
	    <!-- Script Externo -->
	    
	    <script src="javascript/jquery-3.3.1.slim.min.js"></script>
	   
	    <script src="javascript/popper.min.js"></script>
	
	    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	    
		<script src="javascript/jquery-1.2.6.pack.js"></script>
	    
	    <script src="javascript/jquery.maskedinput-1.1.4.pack.js"></script>
	    
	    <link href="estilos/estilos.css" rel="stylesheet">
	    
	    <script type="text/javascript">

	        $(document).ready(function () {
	            $("#cpf").mask("888.888.888-88");
	        });
   		 </script>
	    
	    </head>
	    
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
	        </nav>
	    </header>


<!-- Tela de Login-->
	<main>
        <section class="logar">
            <form method="POST" action="requisicoes/logar.jsp">
                <h1>Faça seu login</h1>

                <label>CPF:</label>
                <input type="text" placeholder="___.___.___-__" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" id="cpf" name="cpf">

                <label>Senha:</label>
                <input type="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" name="senha" maxlength="15">

                <input type="submit" value="Entrar" id="enviar" class="btn btn-dark">
            </form>
        </section>
    </main>

<!-- Rodapé -->
</body>
</html>