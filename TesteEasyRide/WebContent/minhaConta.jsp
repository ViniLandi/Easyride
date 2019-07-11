<%@ include file="topo.jsp" %>

<main>
        <section class="minhaConta">
            <form>
                <h1>Suas viagens únicas</h1>
                <div class="form-group">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Data</th>
                                <th>Horário</th>
                                <th>Partida</th>
                                <th>Destino</th>
                                <th>Categoria</th>
                                <th>Valor R$</th>
                                <th>Alterar</th>
                                <th>Excluir</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>10/07/2019</td>
                                <td>10:00</td>
                                <td>R. 7 de Setembro</td>
                                <td>Terminal da Fonte</td>
                                <td>Premium</td>
                                <td>800,00</td>
                                <td><a href="#">Alterar</a></td>
                                <td><a href="#">Excluir</a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </form>
            <form>
                <h1>Suas viagens recorrentes</h1>
                <div class="form-group">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Dia</th>
                                <th>Horário</th>
                                <th>Partida</th>
                                <th>Destino</th>
                                <th>Categoria</th>
                                <th>Valor R$</th>
                                <th>Alterar</th>
                                <th>Excluir</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Segunda</td>
                                <td>13:00</td>
                                <td>R. 7 de Setembro</td>
                                <td>Terminal da Fonte</td>
                                <td>Premium</td>
                                <td>800,00</td>
                                <td><a href="#">Alterar</a></td>
                                <td><a href="#">Excluir</a></td>
                            </tr>
                            <tr>
                                <td>Terça</td>
                                <td>19:00</td>
                                <td>R. 15 de Setembro</td>
                                <td>Terminal da Velha</td>
                                <td>Premium</td>
                                <td>900,00</td>
                                <td><a href="#">Alterar</a></td>
                                <td><a href="#">Excluir</a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </form>
        </section>
    </main>
    
    
   <%@ include file="rodape.jsp" %>