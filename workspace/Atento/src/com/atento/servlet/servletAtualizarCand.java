package com.atento.servlet;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atento.dao.CandidatoDAO;
import com.atento.entidade.Candidato;

/**
 * Servlet implementation class servletAtualizarCand
 */
@WebServlet("/servletAtualizarCand")
public class servletAtualizarCand extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public servletAtualizarCand() {
        
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String nome = request.getParameter("nome");
		String sobrenome = request.getParameter("sobrenome");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
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
		//String tags = request.getparameter("tags");
		String facebook = request.getParameter("facebook");
		int nFace = Integer.parseInt(request.getParameter("facebook-n-amigos"));
		int freqFace = Integer.parseInt(request.getParameter("facebook-freq"));
		String twitter = request.getParameter("twitter");
		int nTwit = Integer.parseInt(request.getParameter("twitter-n-seguidores"));
		int freqTwit = Integer.parseInt(request.getParameter("twitter-freq"));
		String linkedin = request.getParameter("linkedin");
		int nLink = Integer.parseInt(request.getParameter("linkdin-n-conexoes"));
		int freqLink = Integer.parseInt(request.getParameter("linkedin-freq"));
		String youtube = request.getParameter("youtube");
		
		CandidatoDAO dao = new CandidatoDAO();
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
		
		try {			
			Date data = new Date(format.parse(nascString).getTime());
			Candidato candidato = new Candidato(id, nome, sobrenome, email, senha, telefone, celular, 
					endereco, cidade, estado, pais, cep, data, anos, 
					cargo, pretensao, facebook,	nFace, freqFace, twitter, 
					nTwit, freqTwit, linkedin, nLink, freqLink, youtube, "", 2);
			dao.atualizaCandidato(candidato);
		} catch(ParseException e) {
			e.printStackTrace();
		}
		
	}

}
