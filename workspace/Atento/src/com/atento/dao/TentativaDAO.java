package com.atento.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.atento.conexao.Conexao;
import com.atento.entidade.Candidato;
import com.atento.entidade.Tentativa;
import com.atento.entidade.Vaga;

public class TentativaDAO implements DAO<Tentativa> {
	
	private Connection conexao;
	private String sql;
	private PreparedStatement p;
	private ResultSet rs;
	
	public TentativaDAO() {
		conexao = Conexao.getConnection();
	}

	public void adicionar(Tentativa t) {
		
	}

	public void atualizar(Tentativa t)  {
		
	}

	public void excluir(Tentativa t) {
		
	}

	public List<Tentativa> getTodos() {
		
		return null;
	}

	public Tentativa get(int id) {
		sql = "select id_tentativa, nota, inicio, fim, n_logins, status, id_candidato, id_vaga from tentativa where id_tentativa = ?";
		try {
			p = conexao.prepareStatement(sql);
			p.setInt(1, id);
			rs = p.executeQuery();
			if (rs.next()) {
				Candidato c =  new Candidato(rs.getInt("id_candidato"));
				Tentativa t = new Tentativa(rs.getInt("id_tentativa"),rs.getInt("nota"), rs.getDate("inicio"), rs.getDate("fim"), rs.getInt("status"),c, new Vaga(rs.getInt("id_vaga")));
				return t;
			}else {
				throw new PersistenciaException("Não foi encontrada uma vaga com o id informado");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new PersistenciaException(e.getMessage(), e);
		}
	}
	
	public List<Tentativa> getParaCandidato(int id) {
		sql = "select id_tentativa, nota, inicio, fim, n_logins, status, id_candidato, id_vaga from tentativa where id_candidato = ?";
		try {
			p = conexao.prepareStatement(sql);
			p.setInt(1, id);
			rs = p.executeQuery();
			Candidato c =  new Candidato(id);
			ArrayList<Tentativa> t = new ArrayList<>();
			while (rs.next()) {
				t.add(new Tentativa(rs.getInt("id_tentativa"),rs.getInt("nota"), rs.getDate("inicio"), rs.getDate("fim"), rs.getInt("status"),c, new Vaga(rs.getInt("id_vaga"))));
			}
			return t;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new PersistenciaException(e.getMessage(), e);
		}
	}
	
	

}
