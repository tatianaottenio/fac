package br.com.fac.disciplina;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DisciplinaServlet
 */
public class DisciplinaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private DisciplinaController controller = new DisciplinaController();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisciplinaServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String nivel = request.getParameter("nivel");
		
		try {
			controller.salvar(nome, nivel);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("disciplina.jsp");
		
	}

}
