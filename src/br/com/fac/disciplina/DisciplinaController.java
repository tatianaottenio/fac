package br.com.fac.disciplina;

import java.sql.ResultSet;

public class DisciplinaController {

	private DisciplinaDAO dao = new DisciplinaDAO();
	
	public void salvar(String nome, String nivel) throws Exception {
		if( nome == null || nome.trim().isEmpty() ) {
			throw new Exception("O campo nome não pode ser vazio");
		}
		
		if( nivel == null || nivel.trim().isEmpty() ) {
			throw new Exception("O campo nivel não pode ser vazio");
		}
		
		dao.salvar(nome, nivel);
		
	}
	
	public ResultSet listar() {
		return dao.listar();
	}

}
