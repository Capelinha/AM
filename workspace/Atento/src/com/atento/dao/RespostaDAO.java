package com.atento.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.atento.conexao.Conexao;
import com.atento.entidade.DadosProva;
import com.atento.entidade.Questao;
import com.atento.entidade.Resposta;
import com.atento.entidade.Tentativa;

public class RespostaDAO implements DAO<Resposta> {
	
	private Connection conexao;
	private String sql;
	private PreparedStatement p;
	private ResultSet rs;
	
	public RespostaDAO() {
		conexao = Conexao.getConnection();
	}
	
	public void adicionar(Resposta resposta) {
		sql = "INSERT INTO resposta_questao (id_tentativa, id_questao, resposta) VALUES(?,?,?)";
		try {
			p = conexao.prepareStatement(sql);
			p.setInt(1, resposta.getTentativa().getId());
			p.setInt(2, resposta.getQuestao().getId());
			p.setString(3, String.valueOf(resposta.getResposta()));
			rs = p.executeQuery();
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new PersistenciaException(e.getMessage(), e);
		}
	}

	public void atualizar(Resposta t) throws Exception {
	}

	public void excluir(Resposta t) throws Exception {
	}

	public List<Resposta> getTodos() {
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
	

	public Resposta get(int id) {
		return null;
	}
}
