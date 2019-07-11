<%@ include file="topo.jsp" %>
<%@ include file="mensagem.jsp" %>

    <main>
        <section class="cadastrar">
            <form method="POST" action="requisicoes/cadastroVeiculo.jsp">
                <h1>Faça o cadastro do seu veículo</h1>

                <div class="form-group">
                    <label>Placa:</label>
                    <input type="text" class="form-control" placeholder="___-____" maxlength="8" id="placa" onblur="ConverterMaiusculo()">
                </div>

                <div class="form-group">
                    <label>Marca:</label>
                    <input type="text" class="form-control" placeholder="Marca do veículo aqui" id="marca" name="fabricante">
                </div>

                <div class="form-group">
                    <label>Modelo:</label>
                    <input type="text" class="form-control" placeholder="Modelo do veículo aqui" id="modelo" name="modelo">
                </div>

                <div class="form-group">
                    <label>Ano:</label>
                    <select class="form-control" id="ano" name="ano">
                        <option>Selecione o ano</option>
                    </select>
                </div>
                
                <div class="form-group">
                    <label>Categoria:</label>
                    <select class="form-control" id="categoria" name="categoria">
                        <option>Selecione a categoria</option>
                        <option value="a" id="simples">Simples</option>
                        <option value="b" id="luxo">Luxo</option>
                    </select>
                </div>

                <input type="submit" value="Cadastrar" id="enviar" class="btn btn-dark">
            </form>
        </section>
    </main>

<%@ include file="rodape.jsp" %>