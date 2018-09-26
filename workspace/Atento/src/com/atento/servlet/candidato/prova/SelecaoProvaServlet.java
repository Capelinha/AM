package com.atento.servlet.candidato.prova;

import java.io.IOException;
import java.util.ArrayList;
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
import com.atento.dao.TentativaDAO;
import com.atento.dao.VagaDAO;
import com.atento.entidade.Candidato;
import com.atento.entidade.Mensagem;
import com.atento.entidade.Tentativa;

@WebServlet("/provas")
public class SelecaoProvaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Cookie[] cookies = request.getCookies();

		if (cookies != null) {
			HashMap<String, String> cookiesH = new HashMap<String, String>();

			for (int i = 0; i < cookies.length; i++) {
				String name = cookies[i].getName();
				String value = cookies[i].getValue();
				cookiesH.put(name, value);
			}

			String idCandidato;
			String idSessao;

			if ((idCandidato = cookiesH.get("idCandidato")) != null && (idSessao = cookiesH.get("idSessao")) != null) {
				try {
					TentativaDAO tdao = new TentativaDAO();
					ArrayList<Tentativa> at = (ArrayList<Tentativa>) tdao.getParaCandidato(Integer.parseInt(idCandidato));
					VagaDAO vdao = new VagaDAO();
					for(Tentativa t : at) {
						vdao.get(t.getInscricao());
					}
					
					request.setAttribute("tentativas", at);
					RequestDispatcher dispatcher = request.getRequestDispatcher("/escolha-prova.jsp");
	
					dispatcher.forward(request, response);
				}catch(PersistenciaException e) {
					RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/mensagem.jsp");
					Mensagem m = new Mensagem("Erro de carregamento", "Ocorreu um erro ao tentar carregar seu perfil, tente novamente mais tarde", "VOLTAR", "javascript:history.back()");
					request.setAttribute("mensagem", m);
					
					dispatcher.forward(request, response);
				}
			}
		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/mensagem.jsp");
			Mensagem m = new Mensagem("Não logado", "Você não está logado para exibir seu perfil", "LOGAR", "login.jsp");
			request.setAttribute("mensagem", m);
			
			dispatcher.forward(request, response);
		}

	}

}
