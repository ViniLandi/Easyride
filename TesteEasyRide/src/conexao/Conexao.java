package conexao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {
	
	public static Connection getConnection() {
		Connection conexao = null;
		
		//Tentativa
		try {
			// Parametros
			String password = "";
			String user = "root";
			String url = "jdbc:mysql://localhost/easyride";	
			conexao = DriverManager.getConnection(url, user, password);
		
		} catch (Exception e) {
			System.out.println("Erro ao conectar com o banco de dados: "+e.getMessage());
		}
		
		//Retorno
		return conexao;
	}
}
