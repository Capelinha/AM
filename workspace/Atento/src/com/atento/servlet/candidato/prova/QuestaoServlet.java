package com.atento.servlet.candidato.prova;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atento.dao.PersistenciaException;
import com.atento.dao.ProvaDAO;
import com.atento.dao.QuestaoDAO;
import com.atento.dao.RespostaDAO;
import com.atento.dao.TentativaDAO;
import com.atento.dao.VagaDAO;
import com.atento.entidade.DadosProva;
import com.atento.entidade.Mensagem;
import com.atento.entidade.Prova;
import com.atento.entidade.Resposta;
import com.atento.entidade.Tentativa;
import com.atento.entidade.Vaga;

@WebServlet("/questao")
public class QuestaoServlet extends HttpServlet {
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
					int id = Integer.parseInt(request.getParameter("id"));
					TentativaDAO tdao = new TentativaDAO();
					Tentativa tentativa = tdao.get(id);
					VagaDAO vdao = new VagaDAO();
					ProvaDAO pdao = new ProvaDAO();
					QuestaoDAO qdao = new QuestaoDAO();
					RespostaDAO rdao = new RespostaDAO();
					vdao.get(tentativa);
					pdao.getTodosParaVaga(tentativa.getVaga());
					for(DadosProva dp : tentativa.getVaga().getDadosProva()) {
						qdao.getTodosParaProva(dp.getProva());
					}
					
					List<Resposta> r = rdao.getTodosParaTentativa(tentativa);
					
					request.setAttribute("provas", v);
					RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/questao.jsp");
	
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
