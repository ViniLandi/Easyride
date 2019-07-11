package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import beans.AgendamentoBean;
import conexao.Conexao;

public class AgendamentoDao {
	
	//Realizar o Cadastro
	public boolean cadastrarAgendamento(AgendamentoBean agendamento) {
			
		//Verificadora
		boolean ver = false;
		
		//Conexao
		Connection conexao = Conexao.getConnection();
		
		//Tentativa de Cadastro
		try {
			String sql = "INSERT INTO easyride.agendamentos (dataAgendamento, horaAgendamento, partidaAgendamento, destinoAgendamento, categoriaAgendamento, valorAgendamento, cpfCliente) VALUES (?,?,?,?,?,?,?)";
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			pstmt.setString(1, agendamento.getDataAgendamento());
			pstmt.setString(2, agendamento.getHoraAgendamento());
			pstmt.setString(3, agendamento.getPartidaAgendamento());
			pstmt.setString(4, agendamento.getDestinoAgendamento());
			pstmt.setString(5, agendamento.getCategoriaAgendamento());
			pstmt.setDouble(6, agendamento.getValorAgendamento());
			pstmt.setString(7, agendamento.getCpfCliente());
			
			pstmt.execute();
			
			pstmt.close();
			conexao.close();
			ver = true;
			
		} catch (Exception e) {
			System.out.println("Erro ao realizar o cadastro do Agendamento: "+e.getMessage()+"\n");
			e.printStackTrace();
		}
		
		//Retorno 
		return ver;
	}

}
