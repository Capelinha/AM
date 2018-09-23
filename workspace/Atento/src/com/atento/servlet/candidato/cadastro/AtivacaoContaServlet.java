package com.atento.servlet.candidato.cadastro;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.atento.dao.CandidatoDAO;
import com.atento.dao.PersistenciaException;
import com.atento.entidade.Mensagem;

@WebServlet("/ativaConta")
public class AtivacaoContaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String codigo = request.getParameter("codigo");
			
		CandidatoDAO dao = new CandidatoDAO();
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/mensagem.jsp");
		
		Mensagem mensagem;
		
		try {
			dao.ativar(email, codigo);
			mensagem = new Mensagem("Conta ativada com sucesso", "Seja bem vindo ao portal da Atento, sua conta está agora ativada. Se deseja completar seu dados pessoas acesse o perfil e altere seu dados.</b>", "LOGIN", "login.jsp");
		} catch (LinkExpiradoException e) {
			mensagem = new Mensagem("Link invalido", "Infelizmente seu <b>link expirou</b>. Esta conta provavelmente ja está ativada. Se isso foi um erro entre em contato conosco.", "VOLTAR", "javascript:history.back()");
			e.printStackTrace();
		} catch (PersistenciaException e) {
			mensagem = new Mensagem("Houve um problema ao ativar", "Infelizmente não conseguimos ativar sua conta.<b> Já estamos trabalhando para resolver esse problema.</b> Agradecemos a sua compreensão.", "VOLTAR", "javascript:history.back()");
			e.printStackTrace();
		}
		
		request.setAttribute("mensagem", mensagem);
		dispatcher.forward(request, response);
	}

}
