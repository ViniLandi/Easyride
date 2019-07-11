package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import beans.ClienteBean;
import conexao.Conexao;

public class ClienteDao {
	
	
	//Realizar o Cadastro
	public boolean cadastrarCliente(ClienteBean cliente) {
		//Verificadora
		boolean ver = false;
		
		//Conexao
		Connection conexao = Conexao.getConnection();
		
		//Tentativa de Cadastro
		try {
			String sql = "INSERT INTO easyride.clientes (cpfCliente, nomeCliente, telefoneCliente, emailCliente, senhaCliente) VALUES (?,?,?,?,?)";
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			pstmt.setString(1, cliente.getCpfCliente());
			pstmt.setString(2, cliente.getNomeCliente());
			pstmt.setString(3, cliente.getTelefoneCliente());
			pstmt.setString(4, cliente.getEmailCliente());
			pstmt.setString(5, cliente.getSenhaCliente());
			pstmt.execute();
			pstmt.close();
			conexao.close();
			ver = true;
		} catch (Exception e) {
			System.out.println("Erro ao realizar o cadastro do Usu�rio.\n");
			e.printStackTrace();
		}
		//Retorno 
		return ver;
	}
	
	//Verificar se email j� cadastrado
	public int verificarEmail(ClienteBean cliente) {
		//Verificadora
		int ver = 0;
		//Conexao
		Connection conexao = Conexao.getConnection();
		
		//Tentativa de Cadastro
		try {
			String sql = "SELECT COUNT(emailCliente) FROM easyride.clientes WHERE emailCliente = ?;";
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			pstmt.setString(1, cliente.getEmailCliente());
			ResultSet rs = pstmt.executeQuery();
			rs.last();
			ver = rs.getInt(1);
			pstmt.close();
			conexao.close();
			rs.close();
		} catch (Exception e) {
			System.out.println("Erro ao realizar a verifica��o.\n");
			e.printStackTrace();
		}
		//Retorno 
		return ver;
	}
	
	//Verificar se cpf j� cadastrado
	public int verificarCpf(ClienteBean cliente) {
			//Verificadora
			int ver = 0;
			//Conexao
			Connection conexao = Conexao.getConnection();
			
			//Tentativa de Cadastro
			try {
				String sql = "SELECT COUNT(cpf) FROM easyride.clientes WHERE cpfCliente = ?;";
				PreparedStatement pstmt = conexao.prepareStatement(sql);
				pstmt.setString(1, cliente.getCpfCliente());
				ResultSet rs = pstmt.executeQuery();
				rs.last();
				ver = rs.getInt(1);
				pstmt.close();
				conexao.close();
				rs.close();
			} catch (Exception e) {
				System.out.println("Erro ao realizar a verifica��o.\n");
				e.printStackTrace();
			}
			//Retorno 
			return ver;
		}
	
	//Verificar login
	public String verificarLogin(String cpf, String senha) {
		
		//Conex�o
		Connection conexao = Conexao.getConnection();
				
		//Contador
		String contador = "";
		
		//Tentativa
		try {
			
			//SQL
			String sql = "SELECT COUNT(*) FROM easyride.clientes WHERE cpfCliente = ? AND senhaCliente = ?";
			
			//PreparedStatement
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			//Par�metros
			pstmt.setString(1, cpf);
			pstmt.setString(2, senha);
			
			//Obter dados
			ResultSet rs = pstmt.executeQuery();
			
			rs.last();
			contador = ""+rs.getInt(1);
			System.out.println(contador);
			
			rs.close();
			conexao.close();
			pstmt.close();
			
		}catch(Exception erro) {
			System.out.println("Falha ao logar: "+erro.getMessage());
		}
		
		//Retorno
		return contador;		
	}

	//Obter os dados do usu�rio
	public ClienteBean dadosCliente(String cpf, String senha) {
		
		//Objeto
		ClienteBean clienteBean = new ClienteBean();
		
		//Conex�o
		Connection conexao = Conexao.getConnection();
		
		//Tentativa 
		try {
			//SQL
			String sql = "SELECT * FROM easyride.clientes WHERE cpfCliente = ? AND senhaCliente = ?";
			
			//PrepareStament
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			//Par�metros
			pstmt.setString(1, cpf);
			pstmt.setString(2, senha);
			
			//Executar
			ResultSet rs = pstmt.executeQuery();
			
			//Selecionar a �ltima linha
			rs.last();
			
			//Obter Dados
			clienteBean.setCpfCliente(rs.getString(1));
			clienteBean.setNomeCliente(rs.getString(2));
			clienteBean.setTelefoneCliente(rs.getString(3));
			clienteBean.setEmailCliente(rs.getString(4));
			clienteBean.setSenhaCliente(rs.getString(5));
			
			rs.close();
			conexao.close();
			pstmt.close();
		}catch(Exception erro) {
			System.out.println("Falha ao obter dados: "+erro.getMessage());
		}
		
		//Retorno
		return clienteBean;
	}
	
	//M�todo para retornar a tabela em c�digo HTML	
	public String selecionar() {
		//Iniciar estrutura
		String estrutura = "<table class='tabelaCliente'>";
					estrutura+="<tr>";
						estrutura+="<td>CPF</td>";
						estrutura+="<td>Nome</td>";
						estrutura+="<td>E-mail</td>";
						estrutura+="<td>Telefone</td>";
						estrutura+="<td>Alterar</td>";
						estrutura+="<td>Excluir</td>";
					estrutura+="</tr>";		
		
		//Para adicionar as linhas
		//Conexao
		Connection conexao = Conexao.getConnection();
		try {
			String sql = "SELECT * FROM easyride.clientes";
			Statement stmt = conexao.createStatement();
			ResultSet rs = stmt.executeQuery(sql);

			//Adicionando as linhas
			while(rs.next()){
				//Add a Estrutura de linhas
				estrutura+="<tr>";
					estrutura+="<td>"+rs.getString(1)+"</td>";
					estrutura+="<td>"+rs.getString(2)+"</td>";
					estrutura+="<td>"+rs.getString(4)+"</td>";
					estrutura+="<td>"+rs.getString(3)+"</td>";
					estrutura+="<td><a href='produtos.jsp?idProduto="+rs.getInt(1)+"'>Alterar</a></td>";
					estrutura+="<td><a href='requisicoes/excluirProduto.jsp?idProduto="+rs.getInt(1)+"'>Excluir</a></td>";
				estrutura+="</tr>";
			}
			//Fechando
			rs.close();
			stmt.close();
			conexao.close();
						
		} catch (Exception erro) {
			System.out.println("Erro ao selecionar os dados da Tabela: "+erro.getMessage());
		}		
		
		//Finalizando Estrutura da Tabela			
		estrutura+="</table>";
				
		//Retorno
		return estrutura;
	}
}
