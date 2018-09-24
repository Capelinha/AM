package com.atento.servlet.candidato.painel;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atento.dao.VagaDAO;
import com.atento.entidade.Vaga;

@WebServlet("/DetalhesVagaServlet")
public class DetalhesVagaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		VagaDAO dao = new VagaDAO();
		Vaga vaga = dao.get(id);
		request.setAttribute("vaga", vaga);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/detalhes-vagas.jsp");
		
		dispatcher.forward(request,response);
	}

}
