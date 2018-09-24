package com.atento.servlet.candidato.painel;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atento.dao.VagaDAO;
import com.atento.entidade.Mensagem;
import com.atento.entidade.Vaga;

@WebServlet("/detalhes-vaga")
public class DetalhesVagaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(request.getParameter("id"));
			VagaDAO dao = new VagaDAO();
			Vaga vaga = dao.get(id);
			request.setAttribute("vaga", vaga);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/detalhes-vaga.jsp");
			
			dispatcher.forward(request,response);
		}catch (Exception e) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/mensagem.jsp");
			Mensagem m = new Mensagem("Erro de carregamento", "Ocorreu um erro ao tentar carregar a vaga, tente novamente mais tarde", "VOLTAR", "javascript:history.back()");
			request.setAttribute("mensagem", m);
			
			dispatcher.forward(request, response);
		}
	}

}
