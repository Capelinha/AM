package com.atento.servlet.candidato.perfil.arquivo;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atento.dao.CandidatoDAO;
import com.atento.entidade.Arquivo;
import com.atento.entidade.Candidato;
import com.atento.entidade.Mensagem;

@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)
@WebServlet("/excluir")
public class ExclusaoArquivoServlet extends HttpServlet {
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
					int id = Integer.parseInt(request.getParameter("id"));
					CandidatoDAO cdao = new CandidatoDAO();
					Arquivo c = cdao.getArquivo(id);
					cdao.excluirArquivo(id);
					File file = new File(c.getArquivo());
				    boolean fileDelete = file.delete();
					Candidato ca = cdao.get(Integer.parseInt(idCandidato));
					response.sendRedirect ( "arquivos" ); 
				}catch(Exception e) {
					e.printStackTrace();
					RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/mensagem.jsp");
					Mensagem mensagem = new Mensagem("Houve um problema ao excluir seu arquivo", "Infelizmente n�o conseguimos concluir sua exclus�o.<b> J� estamos trabalhando para resolver esse problema.</b> Agradecemos a sua compreens�o.", "VOLTAR", "javascript:history.back()");
					request.setAttribute("mensagem", mensagem);
					dispatcher.forward(request, response);
				}
			}else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/mensagem.jsp");
				Mensagem m = new Mensagem("N�o logado", "Voc� n�o est� logado para editar seus arquivos", "LOGAR", "login.jsp");
				request.setAttribute("mensagem", m);
				
				dispatcher.forward(request, response);
			}
		}
	}
	
	

}
