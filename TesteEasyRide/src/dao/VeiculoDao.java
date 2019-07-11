package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import beans.VeiculoBean;
import conexao.Conexao;

	public class VeiculoDao {
		
		//Realizar o Cadastro
		public boolean cadastrarVeiculo(VeiculoBean veiculo) {
				
			//Verificadora
			boolean ver = false;
			
			//Conexao
			Connection conexao = Conexao.getConnection();
			
			//Tentativa de Cadastro
			try {
				String sql = "INSERT INTO veiculos (placaVeiculo, fabricanteVeiculo, modeloVeiculo, anoVeiculo, categoriaVeiculo, cpfFuncionario) VALUES (?,?,?,?,?,?)";
				PreparedStatement pstmt = conexao.prepareStatement(sql);
				pstmt.setString(1, veiculo.getPlacaVeiculo());
				pstmt.setString(2, veiculo.getFabricanteVeiculo());
				pstmt.setString(3, veiculo.getModeloVeiculo());
				pstmt.setInt(4, veiculo.getAnoVeiculo());
				pstmt.setString(5, veiculo.getCategoriaVeiculo());
				pstmt.setString(6, veiculo.getCpfFuncionario());  //Tem que dar um jeito de pegar o parametro cpfFuncionario pela sessão talvez
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

		//Verificar se a placa já está cadastrada
		public int verificarPlaca(VeiculoBean veiculo) {
			//Verificadora
			int ver = 0;
			//Conexao
			Connection conexao = Conexao.getConnection();
			
			//Tentativa de Cadastro
			try {
				String sql = "SELECT COUNT(placaVeiculo) FROM easyride.veiculos WHERE placaVeiculo = ?;";
				PreparedStatement pstmt = conexao.prepareStatement(sql);
				pstmt.setString(1, veiculo.getPlacaVeiculo());
				ResultSet rs = pstmt.executeQuery();
				rs.last();
				ver = rs.getInt(1);
				pstmt.close();
				conexao.close();
				rs.close();
			} catch (Exception e) {
				System.out.println("Erro ao realizar a verificação.\n");
				e.printStackTrace();
			}
			//Retorno 
			return ver;
		}
			
			
	}



