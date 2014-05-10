package br.com.fac.teste;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Driver;


public class TesteDAO {
	private Connection connection;
	public TesteDAO() {
		try {
			DriverManager.registerDriver(new Driver());
			connection = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/fac", "root", "123456");
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	
	public void salvar(String nome) {
		try {
			// Monta o SQL.
			//  A ? significa que o valor será um parametro
			String sql = "INSERT INTO teste(nome) VALUES (?)";
			PreparedStatement ps = connection.prepareStatement(sql);
			
			// Informa o valor para o parametro
			ps.setString(1, nome);
			// Executa o update/insert
			ps.executeUpdate();
		} catch (Exception ex) {
			throw new RuntimeException(ex);
		}
	}
	
	public List<String> listar() {
		try {
			// Monta o SQL.
			// Esse não tem parâmetro
			String sql = "SELECT * FROM teste";
			PreparedStatement ps = connection.prepareStatement(sql);
			
			// Executa o select;
			// Note que é diferente do comando que executa insert e upadate
			ResultSet result = ps.executeQuery();
			
			// Lista que será preenchida com os nomes que vieram do banco
			List<String> nomes = new ArrayList<String>();
			// Enquanto existirem resultados
			while (result.next()) {
				// Pega o valor da coluna "nome" do resultado e coloca na lista
				// que será retornada.
				nomes.add(result.getString("nome"));
			}
			
			return nomes;
			
		} catch (Exception ex) {
			throw new RuntimeException(ex);
		}
	}

}
