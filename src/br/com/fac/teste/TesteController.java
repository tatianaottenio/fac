package br.com.fac.teste;

import java.util.List;


public class TesteController {
	
	private TesteDAO dao;
	
	public TesteController() {
		dao = new TesteDAO();
	}
	
	public void salvar(String nome) throws Exception {
		// Se existir alguma validação de campo, essavalidação deve ser feita aqui.
		// Ex.: Garatir que os campos obrigatórios estão preenchidos
		// Garantir datas e valores corretos.
		// Depois disso, chamamos o DAO que é quem insere no banco.
		
		// Validação:
		// Se o nome é vazio, lança uma exceção que será capturada na Servlet.
		// A Servlet vai mandar o erro de volta pra tela para que o usuário possa ver
		if( nome == null || nome.trim().isEmpty() ) {
			throw new Exception("O campo nome não pode ser vazio");
		}
		
		// Se chegar até esse ponto é pq a exceção não estourou. 
		// Então podemos salvar no banco
		
		dao.salvar(nome);
	}
	
	public List<String> listar() {
		return dao.listar();
	}

}
