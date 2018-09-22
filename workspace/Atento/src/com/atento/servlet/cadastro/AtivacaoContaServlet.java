package com.atento.servlet.cadastro;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.atento.dao.CandidatoDAO;
import com.atento.dao.PersistenciaException;

@WebServlet("/ativaConta")
public class AtivacaoContaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AtivacaoContaServlet() {
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String codigo = request.getParameter("codigo");
			
		CandidatoDAO dao = new CandidatoDAO();
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/mensagem.jsp");
		
		try {
			dao.ativar(email, codigo);
			request.setAttribute("titulo", "Conta ativada com sucesso");
			request.setAttribute("mensagem", "Seja bem vindo ao portal da Atento, sua conta está agora ativada. Se deseja completar seu dados pessoas acesse o perfil e altere seu dados.</b>");
			request.setAttribute("texto-botao", "LOGIN");
			request.setAttribute("link-botao", "login.jsp");
			
		} catch (LinkExpiradoException e) {
			request.setAttribute("titulo", "Link invalido");
			request.setAttribute("mensagem", "Infelizmente seu <b>link expirou</b>. Esta conta provavelmente ja está ativada. Se isso foi um erro entre em contato conosco.");
			request.setAttribute("texto-botao", "VOLTAR");
			request.setAttribute("link-botao", "javascript:history.back()");
			e.printStackTrace();
		} catch (PersistenciaException e) {
			request.setAttribute("titulo", "Houve um problema ao ativar");
			request.setAttribute("mensagem", "Infelizmente não conseguimos ativar sua conta.<b> Já estamos trabalhando para resolver esse problema.</b> Agradecemos a sua compreensão.");
			request.setAttribute("texto-botao", "VOLTAR");
			request.setAttribute("link-botao", "javascript:history.back()"); 
			e.printStackTrace();
		}
		
		dispatcher.forward(request, response);
	}

}
