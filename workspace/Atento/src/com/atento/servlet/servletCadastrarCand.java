package com.atento.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atento.dao.CandidatoDAO;
import com.atento.entidade.Candidato;

/**
 * Servlet implementation class servletCadastrarCand
 */
@WebServlet("/servletCadastrarCand")
public class servletCadastrarCand extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public servletCadastrarCand() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String sobrenome = request.getParameter("sobrenome");
		String email = request.getParameter("email");
		String telefone = request.getParameter("telefone");
		String celular = request.getParameter("celular");
		String senha = request.getParameter("senha");
		Candidato candidato = new Candidato(nome,sobrenome,email,telefone,celular,senha);
		CandidatoDAO dao = new CandidatoDAO();
		
		dao.registrar(candidato);
		//Dispatcher? -- para aonde o usuário vai?
	}

}
