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
import com.atento.entidade.Vaga;

public class QuestaoDAO implements DAO<Prova> {
	
	private Connection conexao;
	private String sql;
	private PreparedStatement p;
	private ResultSet rs;
	
	public QuestaoDAO () {
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
	
	public List<Questao> getTodosParaProva(int id) {
		sql = "select id_questao, titulo, texto, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e, resposta, status WHERE id_prova = ?";
		try {
			p = conexao.prepareStatement(sql);
			p.setInt(1, id);
			rs = p.executeQuery();
			ArrayList<Questao> ap = new ArrayList<>();
			while (rs.next()) {
				ap.add(new Questao(rs.getInt("id_questao"), rs.getString("titulo"), rs.getString("texto"), rs.getString("alternativa_a"), rs.getString("alternativa_b"), rs.getString("alternativa_c"), rs.getString("alternativa_d"), rs.getString("alternativa_e"), rs.getString("resposta").charAt(0), rs.getInt("status")));
			}
			return ap;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new PersistenciaException(e.getMessage(), e);
		}
	}
	
	public void getTodosParaProva(Prova v) {
		v.setQuestao(getTodosParaProva(v.getId()));
	}

	public Prova get(int id) {
		return null;
	}
	
	

}
