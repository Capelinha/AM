package com.atento.servlet;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atento.dao.CandidatoDAO;
import com.atento.entidade.Candidato;
import com.atento.exception.dao.EmailDuplicadoException;
import com.atento.exception.dao.InserirException;

/**
 * Servlet implementation class servletCadastrarCand
 */
@WebServlet("/servletCadastrarCand")
public class servletCadastrarCand extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public servletCadastrarCand() {
       
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome"); 
		String sobrenome = request.getParameter("sobrenome");
		String email = request.getParameter("email");
		String telefone = request.getParameter("telefone");
		String celular = request.getParameter("celular");
		String senha = request.getParameter("senha");
		Candidato candidato = new Candidato(nome,sobrenome,email,telefone,celular,senha);
		candidato.setStatus(1);
		
		try {
			MessageDigest md;
			String texto = email + nome + telefone + senha;
			md = MessageDigest.getInstance("MD5");
			byte[] messageDigest = md.digest(texto.getBytes());
	        BigInteger number = new BigInteger(1, messageDigest);
	        String hash = number.toString(16);
	        candidato.setLinkVeriricacao(hash);
		} catch (NoSuchAlgorithmException e1) {
			e1.printStackTrace();
		}
        
		
		CandidatoDAO dao = new CandidatoDAO();
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/mensagem.jsp");
		
		try {
			dao.registrar(candidato);
			request.setAttribute("titulo", "Cadastro realizado com sucesso");
			request.setAttribute("mensagem", "Seja bem vindo ao portal da Atento, nele você pode <b>realizar suas provas</b>, <b>candidatar a vagas</b> e <b>marcar entrevistas. Não esqueça de verificar seu e-mail antes de realizar login.</b>");
			request.setAttribute("texto-botao", "LOGIN");
			request.setAttribute("link-botao", "login.jsp"); 
		} catch (EmailDuplicadoException e) {
			request.setAttribute("titulo", "Conta já existe");
			request.setAttribute("mensagem", "Infelizmente não conseguimos concluir seu cadastro pois <b>localizamos outra conta</b> atrelada ao e-mail informado");
			request.setAttribute("texto-botao", "VOLTAR");
			request.setAttribute("link-botao", "javascript:history.back()");
			e.printStackTrace();
		} catch (InserirException e) {
			request.setAttribute("titulo", "Houve um problema ao cadastrar");
			request.setAttribute("mensagem", "Infelizmente não conseguimos concluir seu cadastro.<b> Já estamos trabalhando para resolver esse problema.</b> Agradecemos a sua compreensão.");
			request.setAttribute("texto-botao", "VOLTAR");
			request.setAttribute("link-botao", "javascript:history.back()"); 
			e.printStackTrace();
		}
		
		
		
		dispatcher.forward(request, response);
	}

}
