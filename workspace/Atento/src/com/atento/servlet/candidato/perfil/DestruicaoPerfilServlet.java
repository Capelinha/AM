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
import com.atento.dao.PersistenciaException;
import com.atento.entidade.Candidato;
import com.atento.entidade.Mensagem;

@WebServlet("/destruir-conta")
public class DestruicaoPerfilServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Cookie[] cookies = request.getCookies();

		if (request.getParameter("c") != null) {
			HashMap<String, String> cookiesH = new HashMap<String, String>();

			for (int i = 0; i < cookies.length; i++) {
				String name = cookies[i].getName();
				String value = cookies[i].getValue();
				cookiesH.put(name, value);
			}

			String idCandidato;
			String idSessao;

			if ((idCandidato = cookiesH.get("idCandidato")) != null && (idSessao = cookiesH.get("idSessao")) != null) {
				CandidatoDAO dao = new CandidatoDAO();
				Candidato c = new Candidato(Integer.parseInt(idCandidato));
				try {
					dao.excluir(c);
	
					if (cookies != null)
						for (Cookie cookie : cookies) {
							cookie.setValue("");
							response.addCookie(cookie);
						}
	
					RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
					dispatcher.forward(request, response);
				}catch(PersistenciaException e) {
					RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/mensagem.jsp");
					Mensagem m = new Mensagem("Erro de operação", "Ocorreu um erro ao tentar excluir seu perfil, tente novamente mais tarde", "VOLTAR", "javascript:history.back()");
					request.setAttribute("mensagem", m);
					
					dispatcher.forward(request, response);
				}
			}

		}else {
			Mensagem m = new Mensagem("Atenção", "Você está prestes a excluir sua conta, todos os seus dados serão apagados e você não terá mais acesso ao portal.", "CONTINUAR", "destruir-conta?c=true");
			request.setAttribute("mensagem", m);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/mensagem.jsp");
			dispatcher.forward(request, response);
		}
	}

}
