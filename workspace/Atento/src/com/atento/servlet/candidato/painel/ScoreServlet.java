package com.atento.servlet.candidato.painel;

import java.io.IOException;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atento.dao.CandidatoDAO;
import com.atento.dao.InscricaoDAO;
import com.atento.dao.TentativaDAO;
import com.atento.dao.VagaDAO;
import com.atento.entidade.Candidato;
import com.atento.entidade.Inscricao;
import com.atento.entidade.Mensagem;
import com.atento.entidade.PesoTag;
import com.atento.entidade.Tag;
import com.atento.entidade.Tentativa;
import com.atento.entidade.Vaga;

@WebServlet("/candidatar")
public class ScoreServlet extends HttpServlet {
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

			String idCand;
			String idSessao;

			if ((idCand = cookiesH.get("idCandidato")) != null && (idSessao = cookiesH.get("idSessao")) != null) {
				try {
					int score = 0;
					int scoreAmigos = 0;
					int maxScore = 0;
					int idCandidato = Integer.parseInt(idCand);
					int idVaga = Integer.parseInt(request.getParameter("vaga"));
					CandidatoDAO cDAO = new CandidatoDAO();
					VagaDAO vDAO = new VagaDAO();
					List<Tag> tagsCand = cDAO.getTagsCandidato(idCandidato);
					List<PesoTag> tagsVaga = vDAO.getTagsVaga(idVaga);
					Vaga v = vDAO.get(idVaga);

					for (PesoTag tVaga : tagsVaga) {
						for (Tag tCand : tagsCand) {
							if (tCand.getId() == tVaga.getTag().getId()) {
								score += tVaga.getPeso();
							}
						}
						maxScore += tVaga.getPeso();
					}

					if (score >= (maxScore * 0.5)) {
						Candidato c = cDAO.get(idCandidato);
						
						if (c.getFacebook() != null) {
							score += v.getPesoComponente().getFacebook();
							scoreAmigos = c.getFacebook().getNumAmigos() / 50;
							scoreAmigos = scoreAmigos * v.getPesoComponente().getnAmigos();
							score += scoreAmigos;
						}
						if (c.getTwitter() != null) {
							score += v.getPesoComponente().getTwitter();
							scoreAmigos = c.getTwitter().getNumAmigos() / 50;
							scoreAmigos = scoreAmigos * v.getPesoComponente().getnSeguidores();
							score += scoreAmigos;
						}
						if (c.getLinkedin() != null) {
							score += v.getPesoComponente().getLinkdin();
							scoreAmigos = c.getLinkedin().getNumAmigos() / 50;
							scoreAmigos = scoreAmigos * v.getPesoComponente().getnAmigos();
							score += scoreAmigos;
						}
						Inscricao i = new Inscricao(2, score, new Vaga(idVaga), new Candidato(idCandidato));
						Tentativa t = new Tentativa(c, v);
						new InscricaoDAO().adicionar(i);
						new TentativaDAO().adicionar(t);
						RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/mensagem.jsp");
						Mensagem m = new Mensagem("Sucesso",
								"Parabens, você se candidatou a essa vaga. Existem provas pendentes.", "PROVAS",
								"provas");
						request.setAttribute("mensagem", m);

						dispatcher.forward(request, response);

					} else {
						RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/mensagem.jsp");
						Mensagem m = new Mensagem("Não compativel", "Desculpe mas você não compativel para essa vaga",
								"VOLTAR", "javascript:history.back()");
						request.setAttribute("mensagem", m);

						dispatcher.forward(request, response);
					}

				}catch (InscricaoDuplicadaException e) {
					e.printStackTrace();
					RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/mensagem.jsp");
					Mensagem m = new Mensagem("Inscrição duplicada", "Atenção, você já está inscrito para essa vaga.", "VOLTAR", "javascript:history.back()");
					request.setAttribute("mensagem", m);

					dispatcher.forward(request, response);
				}catch (Exception e) {
				
					e.printStackTrace();
					RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/mensagem.jsp");
					Mensagem m = new Mensagem("Erro", "Houve um erro ao se candidatar a essa vaga, ja estamos ttabalhando para resolver isso.", "VOLTAR", "javascript:history.back()");
					request.setAttribute("mensagem", m);

					dispatcher.forward(request, response);
				}

			}
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/mensagem.jsp");
			Mensagem m = new Mensagem("Não logado", "Você não está logado para se candidatar", "LOGAR", "login.jsp");
			request.setAttribute("mensagem", m);

			dispatcher.forward(request, response);
		}
	}
}
