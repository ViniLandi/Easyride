<!-- Cabeçalho -->
<%@ include file="topo.jsp" %>
<%@ include file="mensagem.jsp" %>

	<main>
       <section class="cadastrar">
           <form method="POST" action="requisicoes/cadastroCliente.jsp">
               <h1>Cadastro viajante</h1>

               <div class="form-group">
                   <label>CPF:</label>
                   <input type="text" class="form-control" placeholder="___.___.___-__" name="cpf" id="cpf" required>
                   <div class="valid-feedback cpfValido">Ok!</div>
                   <div class="invalid-feedback cpfInvalido">Preencha este campo corretamente!</div>
               </div>
               <div class="form-group">
                   <label>Nome completo:</label>
                   <input type="text" class="form-control" placeholder="Seu nome aqui" id="nome" name="nome" required>
                   <div class="valid-feedback nomeValido">Ok!</div>
                   <div class="invalid-feedback nomeInvalido">Preencha este campo corretamente!</div>
               </div>

               <div class="form-group">
                   <label>Celular:</label>
                   <input type="text" class="form-control" placeholder="Seu celular aqui" name="tel" id="tel" required>
                   <div class="valid-feedback foneValido">Ok!</div>
                   <div class="invalid-feedback foneInvalido">Preencha este campo corretamente!</div>
               </div>

               <div class="form-group">
                   <label>E-mail:</label>
                   <input type="email" class="form-control" placeholder="exemplo@gmail.com" id="email" name="email" required>
                   <div class="valid-feedback emailValido">Ok!</div>
                   <div class="invalid-feedback emailInvalido">Preencha este campo corretamente!</div>
               </div>

               <div class="form-group">
                   <label>Senha:</label>
                   <input type="password" class="form-control" placeholder="Sua senha aqui" id="senha1" name="senha1" required>
               </div>

               <div class="form-group">
                   <label>Confirmar senha:</label>
                   <input type="password" class="form-control" placeholder="Confirme sua senha aqui" id="senha2" name="senha2" required>
                   <div class="valid-feedback senhaValido">Ok!</div>
                   <div class="invalid-feedback senhaInvalido">Preencha este campo corretamente!</div>
               </div>

               <input type="submit" value="Cadastrar" id="enviar" class="btn btn-dark">
           </form>
       </section>
	</main>
	
<!-- Rodapé -->
<%@ include file="rodape.jsp" %>