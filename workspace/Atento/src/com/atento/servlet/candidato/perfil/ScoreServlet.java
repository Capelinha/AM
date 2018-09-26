package com.atento.servlet.candidato.perfil;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atento.dao.CandidatoDAO;
import com.atento.dao.PesoDAO;
import com.atento.dao.VagaDAO;
import com.atento.entidade.Candidato;
import com.atento.entidade.PesoComponente;
import com.atento.entidade.PesoTag;
import com.atento.entidade.Tag;

/**
 * Servlet implementation class ScoreServlet
 */
@WebServlet("/ScoreServlet")
public class ScoreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScoreServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int score = 0;
		int scoreAmigos = 0;
		int maxScore = 0;
		int id_candidato = Integer.parseInt(request.getParameter("id_candidato"));
		int id_vaga = Integer.parseInt(request.getParameter("id_vaga"));
		CandidatoDAO cDAO = new CandidatoDAO();
		PesoDAO pDAO = new PesoDAO();
		VagaDAO vDAO = new VagaDAO();
		List<Tag> tagsCand = cDAO.getTagsCandidato(id_candidato);
		List<PesoTag> tagsVaga = vDAO.getTagsVaga(id_vaga);
		
		for (PesoTag tVaga : tagsVaga){
			for(Tag tCand : tagsCand){
				if (tCand.getId() == tVaga.getTag().getId()){
					score += tVaga.getPeso();
				}
			}
			maxScore += tVaga.getPeso();
		}
		
		if(score >= (maxScore * 0.5)) {			
			Candidato c = cDAO.redesSociais(id_candidato);
			PesoComponente peso = pDAO.get(id_vaga);
			if (c.getFacebook() != null){
				score += peso.getFacebook();
				scoreAmigos = c.getFacebook().getNumAmigos() / 50;
				scoreAmigos = scoreAmigos * peso.getnAmigos();
				score += scoreAmigos;
			}
			if (c.getTwitter() != null){
				score += peso.getTwitter();
				scoreAmigos = c.getTwitter().getNumAmigos() / 50;
				scoreAmigos = scoreAmigos * peso.getnSeguidores();
				score += scoreAmigos;
			}
			if (c.getLinkedin() != null){
				score += peso.getLinkdin();
				scoreAmigos = c.getLinkedin().getNumAmigos() / 50;
				scoreAmigos = scoreAmigos * peso.getnAmigos();
				score += scoreAmigos;
			}
			Inscricao i = new Inscricao(2, score, new Vaga(id_vaga),new Candidato(id_candidato));
			try {
				new InscricaoDAO().adicionar(i);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			//Você não se qualifica para essa vaga
		}
		
	}

} 
