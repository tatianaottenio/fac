package br.com.fac.disciplina;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.jdbc.Driver;

public class DisciplinaDAO {
	private Connection connection;
	public DisciplinaDAO() {
		try {
			DriverManager.registerDriver(new Driver());
			connection = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/fac", "root", "123456");
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	public void salvar(String nome, String nivel) {
		try {
			// Monta o SQL.
			//  A ? significa que o valor será um parametro
			String sql = "INSERT INTO disciplina(nome, nivel) VALUES (?,?)";
			PreparedStatement ps = connection.prepareStatement(sql);
			
			// Informa o valor para o parametro
			ps.setString(1, nome);
			ps.setString(2, nivel);
			// Executa o update/insert
			ps.executeUpdate();
		} catch (Exception ex) {
			throw new RuntimeException(ex);
		}
		
	}
	public ResultSet listar() {
		try {
			// Monta o SQL.
			// Esse não tem parâmetro
			String sql = "SELECT * FROM disciplina";
			PreparedStatement ps = connection.prepareStatement(sql);
			
			// Executa o select;
			// Note que é diferente do comando que executa insert e upadate
			return ps.executeQuery();
		} catch (Exception ex) {
			throw new RuntimeException(ex);
		}
	}
}
