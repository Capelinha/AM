package com.atento.servlet.candidato.perfil;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atento.dao.CandidatoDAO;
import com.atento.entidade.Candidato;

/**
 * Servlet implementation class DelPerfilServlet
 */
@WebServlet("/DelPerfilServlet")
public class DelPerfilServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelPerfilServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Cookie[] cookies = request.getCookies();

		HashMap<String, String> cookiesH = new HashMap<String, String>();
		  
		for (int i = 0; i < cookies.length; i++) {
		  String name = cookies[i].getName();
		  String value = cookies[i].getValue();
		  cookiesH.put(name, value);
		}
		
		String idCandidato;
		String idSessao;
		
		if((idCandidato = cookiesH.get("idCandidato")) != null &&  (idSessao = cookiesH.get("idSessao")) != null) {
			CandidatoDAO dao = new CandidatoDAO();
			Candidato c = new Candidato(Integer.parseInt(idCandidato));
			dao.excluir(c);
			//set id e sessao como null, para encerrar a sessão
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
			
			dispatcher.forward(request,response);
		}
	}

}
