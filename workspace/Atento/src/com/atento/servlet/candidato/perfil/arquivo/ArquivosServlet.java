package com.atento.servlet.candidato.perfil.arquivo;

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
import com.atento.entidade.Mensagem;

@WebServlet("/arquivos")
public class ArquivosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

		
	@SuppressWarnings("unused")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
					CandidatoDAO cdao = new CandidatoDAO();
					Candidato ca = cdao.get(Integer.parseInt(idCandidato));
					RequestDispatcher dispatcher = request.getRequestDispatcher("/cadastro-3.jsp");
					request.setAttribute("candidato", ca);
					dispatcher.forward(request, response);
				}catch(Exception e) {
					e.printStackTrace();
					RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/mensagem.jsp");
					Mensagem mensagem = new Mensagem("Houve um problema ao listar seus arquivos", "Infelizmente não conseguimos concluir sua listagem.<b> Já estamos trabalhando para resolver esse problema.</b> Agradecemos a sua compreensão.", "VOLTAR", "javascript:history.back()");
					request.setAttribute("mensagem", mensagem);
					dispatcher.forward(request, response);
				}
			}else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/mensagem.jsp");
				Mensagem m = new Mensagem("Não logado", "Você não está logado para editar seus arquivos", "LOGAR", "login.jsp");
				request.setAttribute("mensagem", m);
				
				dispatcher.forward(request, response);
			}
		}
	}
	
	

}
