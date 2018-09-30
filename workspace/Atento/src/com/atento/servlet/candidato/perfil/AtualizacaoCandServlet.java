package com.atento.servlet.candidato.perfil;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
import com.atento.dao.TagDAO;
import com.atento.entidade.Candidato;
import com.atento.entidade.Endereco;
import com.atento.entidade.Mensagem;
import com.atento.entidade.RedeSocial;
import com.atento.entidade.Tag;


@WebServlet("/atualizar-perfil")
public class AtualizacaoCandServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie[] cookies = request.getCookies();
		request.setCharacterEncoding("UTF-8");

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
				CandidatoDAO cdao = new CandidatoDAO();
				Candidato ca = cdao.get(Integer.parseInt(idCandidato));
				
				int id = Integer.parseInt(idCandidato);
				String nome = request.getParameter("nome");
				String sobrenome = request.getParameter("sobrenome");
				String senha = request.getParameter("senha");
				if(senha.equals("null"));
					senha = ca.getSenha();
		
				String telefone = request.getParameter("telefone");
				String celular = request.getParameter("celular");
				String endereco = request.getParameter("endereco");
				String cep = request.getParameter("cep");
				String cidade = request.getParameter("cidade");
				String estado = request.getParameter("estado");
				String pais = request.getParameter("pais");
				String cargo = request.getParameter("cargo-atual");
				int anos = Integer.parseInt(request.getParameter("anos"));
				double pretensao = Double.parseDouble(request.getParameter("pretensao"));
				String nascString = request.getParameter("nasc");
				String[] tags = request.getParameterValues("tags");
				String facebook = request.getParameter("facebook");
				int nFace = Integer.parseInt(request.getParameter("facebook-n-amigos"));
				int freqFace = Integer.parseInt(request.getParameter("facebook-freq"));
				String twitter = request.getParameter("twitter");
				int nTwit = Integer.parseInt(request.getParameter("twitter-n-seguidores"));
				int freqTwit = Integer.parseInt(request.getParameter("twitter-freq"));
				String linkedin = request.getParameter("linkedin");
				int nLink = Integer.parseInt(request.getParameter("linkdin-n-conexoes"));
				int freqLink = Integer.parseInt(request.getParameter("linkdin-freq"));
				String youtube = request.getParameter("youtube");
				
				ArrayList<Tag> at = new ArrayList<>();
				
				if(tags != null)
					for(String s : tags) {
						at.add(new Tag(Integer.parseInt(s)));
					}
				
				RedeSocial f = new RedeSocial(facebook,nFace,freqFace);
				RedeSocial t = new RedeSocial(twitter,nTwit,freqTwit);
				RedeSocial l = new RedeSocial(linkedin,nLink,freqLink);
				Endereco end = new Endereco(endereco, cidade, estado, pais, cep);
				
				CandidatoDAO dao = new CandidatoDAO();
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				
				try {			
					Date data = new Date(format.parse(nascString).getTime());
					Candidato candidato = new Candidato(id, nome, sobrenome, senha, telefone, celular, 
							anos,cargo,pretensao, youtube, "", 2,"",data,  
							  f, t,l, end, at);
					dao.atualizar(candidato);
					
					RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/mensagem.jsp");
					Mensagem mensagem = new Mensagem("Atualização realizada com sucesso", "Seu cadastro foi atualizado com sucesso.", "PERFIL", "perfil");
					request.setAttribute("mensagem", mensagem);
					dispatcher.forward(request, response);
					
				} catch(ParseException e) {
					e.printStackTrace();
					RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/mensagem.jsp");
					Mensagem mensagem = new Mensagem("Houve um problema ao atualizar seu perfil", "Infelizmente não conseguimos concluir sua atualização.<b> Já estamos trabalhando para resolver esse problema.</b> Agradecemos a sua compreensão.", "VOLTAR", "javascript:history.back()");
					request.setAttribute("mensagem", mensagem);
					dispatcher.forward(request, response);
				}
			}else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/mensagem.jsp");
				Mensagem m = new Mensagem("Não logado", "Você não está logado para editar seu perfil", "LOGAR", "login.jsp");
				request.setAttribute("mensagem", m);
				
				dispatcher.forward(request, response);
			}
		}
		
	}
	
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
				RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/cadastro-2.jsp");
				CandidatoDAO cdao = new CandidatoDAO();
				
				TagDAO tdao = new TagDAO();
				request.setAttribute("tags", tdao.getTodos());
				request.setAttribute("candidato", cdao.get(Integer.parseInt(idCandidato)));
				dispatcher.forward(request, response);
			}
		}
	}

}
