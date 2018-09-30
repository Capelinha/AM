package com.atento.servlet.candidato.cadastro;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.atento.dao.CandidatoDAO;
import com.atento.dao.PersistenciaException;
import com.atento.email.Email;
import com.atento.entidade.Candidato;
import com.atento.entidade.Mensagem;


@WebServlet("/cadastrar")
public class AutoCadastroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    private String gerarMD5(String nome, String email, String senha) {
    	try {
			MessageDigest md;
			String texto = email + nome + senha;
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
		request.setCharacterEncoding("UTF-8");
		String nome = request.getParameter("nome"); 
		String sobrenome = request.getParameter("sobrenome");
		String email = request.getParameter("email");
		String telefone = request.getParameter("telefone");
		String celular = request.getParameter("celular");
		String senha = request.getParameter("senha");
		Candidato candidato = new Candidato(nome, sobrenome, email, telefone, celular, senha);
		candidato.setStatus(2);		
		candidato.setLinkVerificacao(gerarMD5(nome, email, senha));
				
		CandidatoDAO dao = new CandidatoDAO();
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/mensagem.jsp");
		Mensagem mensagem;
		
		try {
			dao.adicionar(candidato);
			mensagem = new Mensagem("Cadastro realizado com sucesso", "Seja bem vindo ao portal da Atento, nele você pode <b>realizar suas provas</b>, <b>candidatar a vagas</b> e <b>marcar entrevistas. Não esqueça de verificar seu e-mail antes de realizar login.</b>", "LOGIN", "login.jsp");
			new Thread(() -> {
				Email.enviar(email, "Ativação da conta Atento", "http://localhost:8080/Atento/ativarConta?email=" + email + "&codigo=" + candidato.getLinkVerificacao());
			}).start();
		} catch (EmailDuplicadoException e) {
			mensagem = new Mensagem("Conta já existe", "Infelizmente não conseguimos concluir seu cadastro pois <b>localizamos outra conta</b> atrelada ao e-mail informado", "VOLTAR", "javascript:history.back()");
			e.printStackTrace();
		} catch (PersistenciaException e) {
			mensagem = new Mensagem("Houve um problema ao cadastrar", "Infelizmente não conseguimos concluir seu cadastro.<b> Já estamos trabalhando para resolver esse problema.</b> Agradecemos a sua compreensão.", "VOLTAR", "javascript:history.back()");
			e.printStackTrace();
		}
		
		request.setAttribute("mensagem", mensagem);
		dispatcher.forward(request, response);
	}

}
