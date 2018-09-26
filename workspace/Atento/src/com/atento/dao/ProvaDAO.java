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
import com.atento.entidade.Vaga;

public class ProvaDAO implements DAO<Prova> {
	
	private Connection conexao;
	private String sql;
	private PreparedStatement p;
	private ResultSet rs;
	
	public ProvaDAO() {
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
	
	public List<DadosProva> getTodosParaVaga(int id) {
		sql = "select prova.id_prova, titulo, area_conhecimento, peso, n_questoes from prova INNER JOIN vaga_prova on prova.id_prova = vaga_prova.id_prova WHERE id_vaga = ?";
		try {
			p = conexao.prepareStatement(sql);
			p.setInt(1, id);
			rs = p.executeQuery();
			ArrayList<DadosProva> ap = new ArrayList<>();
			while (rs.next()) {
				ap.add(new DadosProva(rs.getInt("n_questoes"), rs.getInt("peso"), new Prova(rs.getInt("id_prova"), rs.getString("titulo"), rs.getString("area_conhecimento"))));
			}
			return ap;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new PersistenciaException(e.getMessage(), e);
		}
	}
	
	public void getTodosParaVaga(Vaga v) {
		v.setDadosProva(getTodosParaVaga(v.getId()));
	}

	public Prova get(int id) {
		return null;
	}
	
	

}
