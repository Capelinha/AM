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

    /**
     * Default constructor. 
     */
    public servletAtualizarCand() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = session.getAtribute("id");
		String endereco = request.getParameter("endereco");
		String cep = request.getparameter("cep");
		String cidade = request.getparameter("cidade");
		String estado = request.getparameter("estado");
		String pais = request.getparameter("pais");
		String cargo = request.getparameter("cargo-atual");
		int anos = request.getparameter("anos");
		double pretensao = request.getparameter("pretensao");
		String nascString = request.getparameter("nasc");
		//String tags = request.getparameter("tags");
		String facebook = request.getparameter("facebook");
		int nFace = request.getparameter("nFace");
		String twitter = request.getparameter("twitter");
		int nTwit = request.getparameter("nTwit");
		String linkedin = request.getparameter("linkedin");
		int nLink = request.getparameter("nLink");
		String youtube = request.getparameter("youtube");
		
		CandidatoDAO dao = new CandidatoDAO();
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
		
		try {			
			Date data = new Date(format.parse(nascString).getTime());
			Candidato candidato = new Candidato(id, endereco, 
					cep, cidade, estado, pais, cargo,
					anos, pretensao, data, facebook, nFace, 0, twitter, nTwit,
					0, linkedin, nLink, 0, youtube, 2);
			dao.atualizaCandidato(candidato);
		} catch(ParseException e) {
			e.printStackTrace();
		}
		
	}

}
