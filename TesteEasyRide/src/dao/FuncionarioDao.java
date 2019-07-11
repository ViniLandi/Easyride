package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import beans.FuncionarioBean;
import conexao.Conexao;

public class FuncionarioDao {
	
	//Realizar o Cadastro
	public boolean cadastrarFuncionario(FuncionarioBean funcionario) {
			
		//Verificadora
		boolean ver = false;
		
		//Conexao
		Connection conexao = Conexao.getConnection();
		
		//Tentativa de Cadastro
		try {
			String sql = "INSERT INTO easyride.funcionarios (cpfFuncionario,nomeFuncionario,telefoneFuncionario,emailFuncionario,cnhFuncionario, senhaFuncionario) VALUES (?,?,?,?,?,?)";
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			pstmt.setString(1, funcionario.getCpfFuncionario());
			pstmt.setString(2, funcionario.getNomeFuncionario());
			pstmt.setString(3, funcionario.getTelefoneFuncionario());
			pstmt.setString(4, funcionario.getEmailFuncionario());
			pstmt.setLong(5, funcionario.getCnhFuncionario());
			pstmt.setString(6, funcionario.getSenhaFuncionario());
			pstmt.execute();
			pstmt.close();
			conexao.close();
			ver = true;
		} catch (Exception e) {
			System.out.println("Erro ao realizar o cadastro do Funcionário: "+e.getMessage()+"\n");
			e.printStackTrace();
		}
		
		//Retorno 
		return ver;
	}

	//Verificar se email já cadastrado
	public int verificarEmail(FuncionarioBean funcionario) {
		//Verificadora
		int ver = 0;
		//Conexao
		Connection conexao = Conexao.getConnection();
		
		//Tentativa de Cadastro
		try {
			String sql = "SELECT COUNT(emailFuncionario) FROM easyride.funcionarios WHERE emailFuncionario = ?;";
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			pstmt.setString(1, funcionario.getEmailFuncionario());
			ResultSet rs = pstmt.executeQuery();
			rs.last();
			ver = rs.getInt(1);
			pstmt.close();
			conexao.close();
			rs.close();
		} catch (Exception e) {
			System.out.println("Erro ao realizar a verificação do email.\n");
			e.printStackTrace();
		}
		//Retorno 
		return ver;
	}
	
	//Verificar se cpf já cadastrado
	public int verificarCpf(FuncionarioBean funcionario) {
		//Verificadora
		int ver = 0;
		//Conexao
		Connection conexao = Conexao.getConnection();
		
		//Tentativa de Cadastro
		try {
			String sql = "SELECT COUNT(cpf) FROM easyride.funcionarios WHERE cpfFuncionario = ?;";
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			pstmt.setString(1, funcionario.getCpfFuncionario());
			ResultSet rs = pstmt.executeQuery();
			rs.last();
			ver = rs.getInt(1);
			pstmt.close();
			conexao.close();
			rs.close();
		} catch (Exception e) {
			System.out.println("Erro ao realizar a verificação do cpf.\n");
			e.printStackTrace();
		}
		//Retorno 
		return ver;
	}

	//Verificar login
	public String verificarLogin(String cpf, String senha) {
		
		//Conexão
		Connection conexao = Conexao.getConnection();
				
		//Contador
		String contador = "";
		
		//Tentativa
		try {
			
			//SQL
			String sql = "SELECT COUNT(*) FROM easyride.funcionarios WHERE cpfFuncionario = ? AND senhaFuncionario = ?";
			
			//PreparedStatement
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			//Parâmetros
			pstmt.setString(1, cpf);
			pstmt.setString(2, senha);
			
			//Obter dados
			ResultSet rs = pstmt.executeQuery();
			
			rs.last();
			contador = ""+rs.getInt(1);
			System.out.println(contador);
			
		}catch(Exception erro) {
			System.out.println("Falha ao logar: "+erro.getMessage());
		}
		
		//Retorno
		return contador;		
	}

	//Obter os dados do usuário
	public FuncionarioBean dadosFuncionario(String cpf, String senha) {
		
		//Objeto
		FuncionarioBean funcionarioBean = new FuncionarioBean();
		
		//Conexão
		Connection conexao = Conexao.getConnection();
		
		//Tentativa 
		try {
			//SQL
			String sql = "SELECT * FROM easyride.funcionarios WHERE cpfFuncionario = ? AND senhaFuncionario = ?";
			
			//PrepareStament
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			//Parâmetros
			pstmt.setString(1, cpf);
			pstmt.setString(2, senha);
			
			//Executar
			ResultSet rs = pstmt.executeQuery();
			
			//Sleecionar a última linha
			rs.last();
			
			//Obter Dados
			funcionarioBean.setCpfFuncionario(rs.getString(1));
			funcionarioBean.setNomeFuncionario(rs.getString(2));
			funcionarioBean.setTelefoneFuncionario(rs.getString(3));
			funcionarioBean.setEmailFuncionario(rs.getString(4));
			funcionarioBean.setCnhFuncionario(rs.getLong(5));
			funcionarioBean.setSenhaFuncionario(rs.getString(6));
			
			pstmt.close();
			conexao.close();
			rs.close();
			
		}catch(Exception erro) {
			System.out.println("Falha ao obter dados: "+erro.getMessage());
		}
		
		//Retorno
		return funcionarioBean;
	}

	//Método para retornar a tabela em código HTML	
	public String selecionar() {
	
		//Iniciar estrutura
		String estrutura = "<table class='tabelaFuncionario table'>";
					estrutura+="<tr>";
						estrutura+="<td>CPF</td>";
						estrutura+="<td>Nome</td>";
						estrutura+="<td>E-mail</td>";
						estrutura+="<td>Telefone</td>"; 
						estrutura+="<td>CNH</td>"; 
						estrutura+="<td>Alterar</td>";
						estrutura+="<td>Excluir</td>";
					estrutura+="</tr>";		
		
		//Para adicionar as linhas
		//Conexao
		Connection conexao = Conexao.getConnection();
		try {
			String sql = "SELECT * FROM easyride.funcionarios";
			Statement stmt = conexao.createStatement();
			ResultSet rs = stmt.executeQuery(sql);

			//Adicionando as linhas
			while(rs.next()){
				//Add a Estrutura de linhas
				estrutura+="<tr>";
					estrutura+="<td>"+rs.getString(1)+"</td>";
					estrutura+="<td>"+rs.getString(2)+"</td>";
					estrutura+="<td>"+rs.getString(3)+"</td>";
					estrutura+="<td>"+rs.getString(4)+"</td>";
					estrutura+="<td>"+rs.getLong(5)+"</td>";
					estrutura+="<td><a href='alterarFuncionario.jsp?cpfFuncionario="+rs.getString(1)+"'>Alterar</a></td>";
					estrutura+="<td><a href='requisicoes/excluirFuncionario.jsp?cpfFuncionario="+rs.getInt(1)+"'>Excluir</a></td>";
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
