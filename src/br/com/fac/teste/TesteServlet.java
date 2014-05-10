package br.com.fac.teste;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TesteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private TesteController testeController;
    public TesteServlet() {
        super();
        testeController = new TesteController();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("txtNome");
		
		// É com esse try catch que vamos pegar as exceções de validação
		// e mostrar para o usuário
		try {
			testeController.salvar(nome);
		} catch (Exception e) {
			response.getWriter().println(e.getMessage());
		}
		
		response.sendRedirect("index.jsp");
	}

}
