<%@ include file="topo.jsp" %>

 <script type="text/javascript">
        $(document).ready(function () {

            $("#horario").mask("88:88");

        });
    </script>

    <script>

        function RetornaDataHoraAtual() {
            var dNow = new Date();
            var ano = dNow.getFullYear();
            var mes = (dNow.getMonth() + 1);
            var dia = dNow.getDate();
            var hora = dNow.getHours();
            var min = dNow.getMinutes();
            if (mes < 10) {
                mes = "0" + mes;
            }
            if (dia < 10) {
                dia = "0" + dia;
            }
            if (hora < 10) {
                hora = "0" + hora;
            }
            if (min < 10) {
                min = "0" + min;
            }
            var localdate = ano + '-' + mes + '-' + dia + 'T' + hora + ':' + min;
            document.getElementById("data").value = localdate;
        }

        function CalcularCorrida() {
            var dinheiro = Math.floor(Math.random() * 51);
            var centavos = Math.floor(Math.random() * 100);
            if (dinheiro < 5) {
                dinheiro += 5;
            }
            if (centavos < 10) {
                centavos = '0' + centavos;
            }
            document.getElementById("totalCorrida").textContent = 'R$ ' + dinheiro + ',' + centavos;
        }
    </script>
    
    <main>
        <section class="viagemUnica">
            <form method="POST">
                <h1>Viagem Específica</h1>
                <div class="form-group">
                    <label>Informe a data da viagem:</label>
                    <input type="datetime-local" class="form-control" id="data">
                    <input type="button" class="btn btn-dark" value="Agora" onclick="RetornaDataHoraAtual()">
                </div>
                <div class="form-group">
                    <label>Informe o local de partida:</label>
                    <input type="text" class="form-control" placeholder="Endereço de partida" id="partida">
                </div>
                <div class="form-group">
                    <label>Informe o local de destino:</label>
                    <input type="text" class="form-control" placeholder="Endereço de destino" id="destino">
                </div>
                <div class="form-group">
                    <label>Selecione uma categoria:</label>
                    <select class="form-control">
                        <option>Escolha uma categoria</option>
                        <option>Simples</option>
                        <option>Premium</option>
                    </select>
                </div>

                <div class="form-group">
                    <label>Forma de pagamento:</label>
                    <div class="btn-group btn-group-toggle" data-toggle="buttons">
                        <label class="btn btn-light">
                            <input type="radio" name="formaPagamento">
                            Dinheiro</label>

                        <label class="btn btn-light">
                            <input type="radio" name="formaPagamento">
                            Cartão</label>
                    </div>
                </div>
                <div class="form-group">
                    <input type="button" class="btn btn-dark" value="Calcular corrida" onclick="CalcularCorrida()">
                    <label id="totalCorrida">R$ 0,0</label>
                    <input type="submit" class="btn btn-success" value="Enviar">
                </div>
            </form>
        </section>
    </main>
    
<%@ include file="rodape.jsp" %>