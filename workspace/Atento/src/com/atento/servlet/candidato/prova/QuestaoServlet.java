package com.atento.servlet.candidato.prova;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

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
import com.atento.entidade.Questao;
import com.atento.entidade.Resposta;
import com.atento.entidade.Tentativa;

@WebServlet("/questao")
public class QuestaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
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
					int id = Integer.parseInt(request.getParameter("idTentativa"));
					int idQuestao = Integer.parseInt(request.getParameter("idQuestao"));
					String resposta = (String) request.getParameter("alternativa");
					RespostaDAO rdao = new RespostaDAO();
					rdao.adicionar(new Resposta(resposta.charAt(0), new Questao(idQuestao), new Tentativa(id)));
					TentativaDAO tdao = new TentativaDAO();
					tdao.somarLogin(new Tentativa(id));
					response.sendRedirect("questao?id=" + id); 
	
				}catch(PersistenciaException e) {
					RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/mensagem.jsp");
					Mensagem m = new Mensagem("Erro de carregamento", "Ocorreu um erro ao responder questao, tente novamente mais tarde", "VOLTAR", "javascript:history.back()");
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
					vdao.get(tentativa);
					pdao.getTodosParaVaga(tentativa.getVaga());
					for(DadosProva dp : tentativa.getVaga().getDadosProva()) {
						qdao.getTodosParaProva(dp.getProva());
					}
					
					List<Resposta> ar = rdao.getTodosParaTentativa(tentativa);
					
					HashMap<Prova, Integer> nq = new HashMap<>();
					
					for(DadosProva dp : tentativa.getVaga().getDadosProva()) {
						nq.put(dp.getProva(), 0);
					}
					
					int nRespostas = 0;
					for(Resposta r : ar) {
						nRespostas++;
						nq.put(r.getQuestao().getProva(), nq.get(r.getQuestao().getProva()) + 1);
					}
					
					Questao n = null;
					
					int nQuestoes = 0;
					
					boolean acabouProva = true;
					
					for(DadosProva dp : tentativa.getVaga().getDadosProva()) {
						nQuestoes += dp.getnQuestoes();
						if(nq.get(dp.getProva()) < dp.getnQuestoes()){
							acabouProva = false;
							Random rand = new Random();
							boolean gerado = false;
							while(!gerado) {
								gerado = true;
								n  = dp.getProva().getQuestao().get(rand.nextInt(dp.getProva().getQuestao().size()));
								for(Resposta r : ar) {
									if(n.getId() == r.getQuestao().getId()) {
										gerado = false;
									}
								}
							}
						}
					}
					
					if(n != null) {
						request.setAttribute("idTentativa", tentativa.getId());
						request.setAttribute("nomeProva", tentativa.getVaga().getTitulo());
						request.setAttribute("questao", n);
						request.setAttribute("nQuestoes", nQuestoes);
						request.setAttribute("nRespostas", nRespostas);
					}
					
					if(acabouProva) {
						RequestDispatcher dispatcher = request.getRequestDispatcher("finalizar-prova");
						dispatcher.forward(request, response);
					}else {
						RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/questao.jsp");
						dispatcher.forward(request, response);
					}
					
					
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
