package com.atento.servlet.sessao;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atento.dao.CandidatoDAO;
import com.atento.dao.PersistenciaException;
import com.atento.entidade.Mensagem;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String gerarMD5(String email, String senha) {
    	try {
			MessageDigest md;
			String texto = email + senha;
			md = MessageDigest.getInstance("MD5");
			byte[] messageDigest = md.digest(texto.getBytes());
	        BigInteger number = new BigInteger(1, messageDigest);
	        String hash = number.toString(16);
	        return hash;
	        
		} catch (NoSuchAlgorithmException e1) {
			e1.printStackTrace();
		}
    	
    	return "OJBGfg8aIyy";
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher dispatcher;
		
		if (!email.contains("atento.com")) {
			CandidatoDAO dao = new CandidatoDAO();
			try {
				int id = dao.logar(email, senha);
				dispatcher = request.getRequestDispatcher("painel-vagas");
				Cookie userCookie = new Cookie("idSessao", gerarMD5(email,senha));
				Cookie idCookie = new Cookie("idCandidato", Integer.toString(id));
				userCookie.setMaxAge(60*60*24*365); 
				idCookie.setMaxAge(60*60*24*365); 
				response.addCookie(userCookie);
				response.addCookie(idCookie);
				request.setAttribute("reload", "true");
			} catch (LoginInvalidoException e) {
				Mensagem mensagem;
				dispatcher = request.getRequestDispatcher("/WEB-INF/mensagem.jsp");
				
				mensagem = new Mensagem("Erro de login", "Infelizmente não conseguimos concluir seu login. Provavelmente o seu nome de usuario ou senha estão incorretos", "VOLTAR", "javascript:history.back()");
				
				request.setAttribute("mensagem", mensagem);
				e.printStackTrace();
			}catch (PersistenciaException e) {
				Mensagem mensagem;
				dispatcher = request.getRequestDispatcher("/WEB-INF/mensagem.jsp");
				
				mensagem = new Mensagem("Houve um problema ao logar", "Infelizmente não conseguimos concluir seu login.<b> Já estamos trabalhando para resolver esse problema.</b> Agradecemos a sua compreensão." ,"VOLTAR", "javascript:history.back()");
								
				request.setAttribute("mensagem", mensagem);
				e.printStackTrace();
			}
			
		} else {
			dispatcher = request.getRequestDispatcher("indexAdmin");
		}
		
		dispatcher.forward(request,response);
	}

}
