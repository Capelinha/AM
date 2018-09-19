package com.atento.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atento.dao.CandidatoDAO;

/**
 * Servlet implementation class logarServ
 */
@WebServlet("/logarServ")
public class servletLogar extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public servletLogar() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		CandidatoDAO dao = new CandidatoDAO();
		RequestDispatcher dispatcher;
		int id = dao.logar(email, senha);
		if (id != 0) {
			session.setAttribute("id",id);
			if (email.contains("atento.com")) {
				//dispatcher = request.getRequestDispatcher("indexAdmin");
			} else {
				//dispatcher = request.getRequestDispatcher("indexCand");
			}
		} else {
			//dispatcher = request.getRequestDispatcher("msgErro");
		}
		dispatcher.forward(request,response);
	}

}
