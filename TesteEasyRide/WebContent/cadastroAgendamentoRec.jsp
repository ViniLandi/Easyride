<%@ include file="topo.jsp" %>

 <script type="text/javascript">

 $(document).ready(function () {

     $("#horario-segunda").mask("88:88");
     $("#horario-terca").mask("88:88");
     $("#horario-quarta").mask("88:88");
     $("#horario-quinta").mask("88:88");
     $("#horario-sexta").mask("88:88");
     $("#horario-sabado").mask("88:88");
     $("#horario-domingo").mask("88:88");

 });

    </script>

    <script>

        function mostrarComponente(elemento) {
            var componente = document.getElementById(elemento);
            if (componente.style.display == "none") {
                componente.style.display = "inline-block";
            } else {
                componente.style.display = "none";
            }
        }
    </script>
    
    <main>
        <section class="agendarViagem">
            <form method="POST" action="requisicoes/cadastroAgendamentoRec.jsp">
                <h1>Agendar Viagem</h1>
                <div class="input-group dias">
                    <div class="input-group-text">
                        <label>
                            <input type="checkbox" onClick="mostrarComponente('painel-segunda')">
                            Segunda-feira
                        </label>
                        <div class="form-group paineisDias" id="painel-segunda" style="display: none;">
                            <div class="input-group-text">
                                <label>Horário da viagem:</label>
                                <input type="text" class="form-control" placeholder="Horario" id="horario-segunda" name="horario-segunda">
                            </div>
                            <div class="input-group-text">
                                <label>Local de partida:</label>
                                <input type="text" class="form-control" id="partida-segunda" name="partida-segunda">
                            </div>
                            <div class="input-group-text">
                                <label>Local de chegada:</label>
                                <input type="text" class="form-control" id="destino-segunda" name="destino-segunda">
                            </div>
                            <div class="input-group-text">
                                <label>Escolha uma categoria:</label>
                                <select class="form-control" id="categoria-segunda" name="categoria-segunda">
                                    <option>Selecione uma categoria</option>
                                    <option>Simples</option>
                                    <option>Premium</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="input-group-text">
                        <label>
                            <input type="checkbox" onClick="mostrarComponente('painel-terca')">
                            Terça-feira
                        </label>
                        <div class="form-group paineisDias" id="painel-terca" style="display: none;">
                            <div class="input-group-text">
                                <label>Horário da viagem:</label>
                                <input type="text" class="form-control" placeholder="Horario" id="horario-terca" name="horario-terca">
                            </div>
                            <div class="input-group-text">
                                <label>Local de partida:</label>
                                <input type="text" class="form-control" id="partida-terca" name="partida-terca">
                            </div>
                            <div class="input-group-text">
                                <label>Local de chegada:</label>
                                <input type="text" class="form-control" id="destino-terca" name="destino-terca">
                            </div>
                            <div class="input-group-text">
                                <label>Escolha uma categoria:</label>
                                <select class="form-control" id="categoria-terca" name="categoria-terca">
                                    <option>Selecione uma categoria</option>
                                    <option>Simples</option>
                                    <option>Premium</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="input-group-text">
                        <label>
                            <input type="checkbox" onClick="mostrarComponente('painel-quarta')">
                            Quarta-feira
                        </label>
                        <div class="form-group paineisDias" id="painel-quarta" style="display: none;">
                            <div class="input-group-text">
                                <label>Horário da viagem:</label>
                                <input type="text" class="form-control" placeholder="Horario" id="horario-quarta" name="horario-quarta">
                            </div>
                            <div class="input-group-text">
                                <label>Local de partida:</label>
                                <input type="text" class="form-control" id="partida-quarta" name="partida-quarta">
                            </div>
                            <div class="input-group-text">
                                <label>Local de chegada:</label>
                                <input type="text" class="form-control" id="destino-quarta" name="destino-quarta">
                            </div>
                            <div class="input-group-text">
                                <label>Escolha uma categoria:</label>
                                <select class="form-control" id="categoria-quarta" name="categoria-quarta">
                                    <option>Selecione uma categoria</option>
                                    <option>Simples</option>
                                    <option>Premium</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="input-group-text">
                        <label>
                            <input type="checkbox" onClick="mostrarComponente('painel-quinta')">
                            Quinta-feira
                        </label>
                        <div class="form-group paineisDias" id="painel-quinta" style="display: none;">
                            <div class="input-group-text">
                                <label>Horário da viagem:</label>
                                <input type="text" class="form-control" placeholder="Horario" id="horario-quinta" name="horario-quinta">
                            </div>
                            <div class="input-group-text">
                                <label>Local de partida:</label>
                                <input type="text" class="form-control" id="partida-quinta" name="partida-quinta">
                            </div>
                            <div class="input-group-text">
                                <label>Local de chegada:</label>
                                <input type="text" class="form-control" id="destino-quinta" name="destino-quinta">
                            </div>
                            <div class="input-group-text">
                                <label>Escolha uma categoria:</label>
                                <select class="form-control" id="categoria-quinta" name="categoria-quinta">
                                    <option>Selecione uma categoria</option>
                                    <option>Simples</option>
                                    <option>Premium</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="input-group-text">
                        <label>
                            <input type="checkbox" onClick="mostrarComponente('painel-sexta')">
                            Sexta-feira
                        </label>
                        <div class="form-group paineisDias" id="painel-sexta" style="display: none;">
                            <div class="input-group-text">
                                <label>Horário da viagem:</label>
                                <input type="text" class="form-control" placeholder="Horario" id="horario-sexta" name="horario-sexta">
                            </div>
                            <div class="input-group-text">
                                <label>Local de partida:</label>
                                <input type="text" class="form-control" id="partida-sexta" name="partida-sexta">
                            </div> 
                            <div class="input-group-text">
                                <label>Local de chegada:</label>
                                <input type="text" class="form-control" id="destino-sexta" name="destino-sexta">
                            </div>
                            <div class="input-group-text">
                                <label>Escolha uma categoria:</label>
                                <select class="form-control" id="categoria-sexta" name="categoria-sexta">
                                    <option>Selecione uma categoria</option>
                                    <option>Simples</option>
                                    <option>Premium</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="input-group-text">
                        <label>
                            <input type="checkbox" onClick="mostrarComponente('painel-sabado')">
                            Sábado
                        </label>
                        <div class="form-group paineisDias" id="painel-sabado" style="display: none;">
                            <div class="input-group-text">
                                <label>Horário da viagem:</label>
                                <input type="text" class="form-control" placeholder="Horario" id="horario-sabado" name="horario-sabado">
                            </div>
                            <div class="input-group-text">
                                <label>Local de partida:</label>
                                <input type="text" class="form-control" id="partida-sabado" name="partida-sabado">
                            </div>
                            <div class="input-group-text">
                                <label>Local de chegada:</label>
                                <input type="text" class="form-control" id="destino-sabado" name="destino-sabado">
                            </div>
                            <div class="input-group-text">
                                <label>Escolha uma categoria:</label>
                                <select class="form-control" id="categoria-sabado" name="categoria-sabado">
                                    <option>Selecione uma categoria</option>
                                    <option>Simples</option>
                                    <option>Premium</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="input-group-text">
                        <label>
                            <input type="checkbox" onClick="mostrarComponente('painel-domingo')">
                            Domingo
                        </label>
                        <div class="form-group paineisDias" id="painel-domingo" style="display: none;">
                            <div class="input-group-text">
                                <label>Horário da viagem:</label>
                                <input type="text" class="form-control" placeholder="Horario" id="horario-domingo" name="horario-domingo">
                            </div>
                            <div class="input-group-text">
                                <label>Local de partida:</label>
                                <input type="text" class="form-control" id="partida-domingo" name="partida-domingo">
                            </div>
                            <div class="input-group-text">
                                <label>Local de chegada:</label>
                                <input type="text" class="form-control" id="destino-domingo" name="destino-domingo">
                            </div>
                            <div class="input-group-text">
                                <label>Escolha uma categoria:</label>
                                <select class="form-control" id="categoria-domingo" name="categoria-domingo">
                                    <option>Selecione uma categoria</option>
                                    <option>Simples</option>
                                    <option>Premium</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <input type="submit" class="btn btn-success" value="Salvar">
            </form>
        </section>
    </main>
    
    <%@ include file="rodape.jsp" %>