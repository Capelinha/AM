package com.atento.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.atento.conexao.Conexao;
import com.atento.entidade.DadosProva;
import com.atento.entidade.Prova;
import com.atento.entidade.Questao;
import com.atento.entidade.Resposta;
import com.atento.entidade.Tentativa;
import com.atento.entidade.Vaga;

public class RespostaDAO implements DAO<Prova> {
	
	private Connection conexao;
	private String sql;
	private PreparedStatement p;
	private ResultSet rs;
	
	public RespostaDAO() {
		conexao = Conexao.getConnection();
	}

	public void adicionar(Prova t) throws Exception {	
	}

	public void atualizar(Prova t) throws Exception {
	}

	public void excluir(Prova t) throws Exception {
	}

	public List<Prova> getTodos() {
		return null;
	}
	
	public List<Resposta> getTodosParaTentativa(Tentativa t) {
		sql = "select resposta, id_questao FROM resposta_questao WHERE id_tentativa = ?";
		try {
			p = conexao.prepareStatement(sql);
			p.setInt(1, t.getId());
			rs = p.executeQuery();
			ArrayList<Resposta> ap = new ArrayList<>();
			while (rs.next()) {
				for(DadosProva dp : t.getVaga().getDadosProva()) {
					for(Questao q : dp.getProva().getQuestao()) {
						if(q.getId() == rs.getInt("id_questao"))
							ap.add(new Resposta(rs.getString("resposta").charAt(0), q, t));
					}
					
				}
			}
			return ap;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new PersistenciaException(e.getMessage(), e);
		}
	}
	

	public Prova get(int id) {
		return null;
	}
	
	

}
