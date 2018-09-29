package com.atento.servlet.candidato.prova;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atento.dao.InscricaoDAO;
import com.atento.dao.PersistenciaException;
import com.atento.dao.ProvaDAO;
import com.atento.dao.QuestaoDAO;
import com.atento.dao.RespostaDAO;
import com.atento.dao.TentativaDAO;
import com.atento.dao.VagaDAO;
import com.atento.entidade.DadosProva;
import com.atento.entidade.Inscricao;
import com.atento.entidade.Mensagem;
import com.atento.entidade.Resposta;
import com.atento.entidade.Tentativa;

@WebServlet("/finalizar-prova")
public class FinalizacaoProvaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unused")
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
					InscricaoDAO idao = new InscricaoDAO();
					Inscricao inscricao = idao.get(tentativa.getVaga().getId(), Integer.parseInt(idCandidato));
					vdao.get(tentativa);
					pdao.getTodosParaVaga(tentativa.getVaga());
					for(DadosProva dp : tentativa.getVaga().getDadosProva()) {
						qdao.getTodosParaProva(dp.getProva());
					}
					
					List<Resposta> ar = rdao.getTodosParaTentativa(tentativa);
									
					
					int score = 0;
					int scoreTotal = 0;
					int nota = 0;
					int nQuestoes = 0;
					int nAcertos = 0;
					
					for(DadosProva dp : tentativa.getVaga().getDadosProva()) {
						for(Resposta r : ar) {
							if(r.getQuestao().getProva().getId() == dp.getProva().getId()) {
								nQuestoes++;
								scoreTotal += -10*dp.getPeso()+60;
								if(Character.toLowerCase(r.getResposta()) == Character.toLowerCase(r.getQuestao().getCorreta())) {
									//funcao do escore = f(p)=-10p+60
									score += -10*dp.getPeso()+60;
									nAcertos++;
								}
							}
						}
					}
					
					nota = (nAcertos * 10)/nQuestoes;			
					tentativa.setNota(nota);
					tdao.encerrar(tentativa);
					
					inscricao.setScore(inscricao.getScore() + score);
					if(score < 0.5 * scoreTotal) {
						inscricao.setScore(inscricao.getScore() + score);
						inscricao.setStatus(3);
					}else {
						inscricao.setStatus(7);
					}
					
					idao.atualizar(inscricao);
					
					
					RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/mensagem.jsp");
					Mensagem m = new Mensagem("Prova finalizada", "Parabens, você terminou a prova. Sua nota é " + nota, "PROVAS", "provas");
					request.setAttribute("mensagem", m);
					dispatcher.forward(request, response);
				
					
				}catch(PersistenciaException e) {
					e.printStackTrace();
					RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/mensagem.jsp");
					Mensagem m = new Mensagem("Erro de carregamento", "Ocorreu um erro ao tentar carregar a prova, tente novamente mais tarde", "VOLTAR", "javascript:history.back()");
					request.setAttribute("mensagem", m);
					
					dispatcher.forward(request, response);
				}
			}
		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/mensagem.jsp");
			Mensagem m = new Mensagem("Não logado", "Você não está logado para realizar uma prova", "LOGAR", "login.jsp");
			request.setAttribute("mensagem", m);
			
			dispatcher.forward(request, response);
		}

	}

}
