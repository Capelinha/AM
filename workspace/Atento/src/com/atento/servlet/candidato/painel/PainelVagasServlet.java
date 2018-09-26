package com.atento.servlet.candidato.painel;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atento.dao.VagaDAO;
import com.atento.entidade.Vaga;

@WebServlet("/painel-vagas")
public class PainelVagasServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VagaDAO dao = new VagaDAO();
		List<Vaga> vagas = dao.getTodosAtivas();
 		request.setAttribute("vagas", vagas);
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/painel-vagas.jsp");
		
		dispatcher.forward(request,response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VagaDAO dao = new VagaDAO();
		List<Vaga> vagas = dao.getTodosAtivas();
 		request.setAttribute("vagas", vagas);
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/painel-vagas.jsp");
		
		dispatcher.forward(request,response);
	}
}
