package com.atento.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.atento.conexao.Conexao;
import com.atento.entidade.Endereco;
import com.atento.entidade.PesoTag;
import com.atento.entidade.Tag;
import com.atento.entidade.Vaga;

public class VagaDAO implements DAO<Vaga>{

	private Connection conexao;
	private String sql;
	private PreparedStatement p;
	private ResultSet rs;
	
	public VagaDAO() {
		conexao = Conexao.getConnection();
	}


	public void adicionar(Vaga t) {
		
	}


	public void atualizar(Vaga t){
		
		
	}


	public void excluir(Vaga t){

	}

	public List<Vaga> getTodos(){
		List<Vaga> vagas = new ArrayList<>();
		sql = "SELECT id_vaga, titulo, area_atuacao, descricao, endereco, cidade, pais, data_desejada FROM vaga";
		try {
			p = conexao.prepareStatement(sql);
			rs = p.executeQuery();
			while (rs.next()) {
				vagas.add(new Vaga(rs.getInt("id_vaga"), rs.getString("titulo"), rs.getString("descricao"), rs.getDate("data_desejada"), rs.getString("area_atuacao"), new Endereco(rs.getString("endereco"), rs.getString("cidade"), rs.getString("estado"),rs.getString("pais"))));
			}
			return vagas;
		} catch (SQLException e) {
			e.printStackTrace();
			new PersistenciaException(e.getMessage(), e);
		}
		return null;
	}
	
	public List<Vaga> getTodosAtivas() {
		List<Vaga> vagas = new ArrayList<>();
		sql = "SELECT id_vaga, titulo, area_atuacao, descricao, endereco, cidade, estado, pais, data_desejada FROM vaga WHERE status = 2";
		try {
			p = conexao.prepareStatement(sql);
			rs = p.executeQuery();
			while (rs.next()) {
				vagas.add(new Vaga(rs.getInt("id_vaga"), rs.getString("titulo"), rs.getString("descricao"), rs.getDate("data_desejada"), rs.getString("area_atuacao"), new Endereco(rs.getString("endereco"), rs.getString("cidade"), rs.getString("estado"),rs.getString("pais"))));
			}
			return vagas;
		} catch (SQLException e) {
			e.printStackTrace();
			new PersistenciaException(e.getMessage(), e);
		}
		return null;
	}

	public Vaga get(int id) {
		sql = "select id_vaga, titulo, area_atuacao, descricao, requisitos, beneficios, endereco, cidade, estado, pais, NVL(salario, 0) as sal, data_desejada from vaga where id_vaga = ?";
		try {
			p = conexao.prepareStatement(sql);
			p.setInt(1, id);
			rs = p.executeQuery();
			if (rs.next()) {
				Vaga vaga = new Vaga(rs.getInt("id_vaga"), rs.getString("titulo"), rs.getString("descricao"), rs.getString("area_atuacao"), rs.getInt("sal"), new Endereco(rs.getString("endereco"), rs.getString("cidade"), rs.getString("estado"), rs.getString("pais")), rs.getString("requisitos"), rs.getString("beneficios"), rs.getDate("data_desejada"));
				return vaga;
			}else {
				throw new PersistenciaException("Não foi encontrada uma vaga com o id informado");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new PersistenciaException(e.getMessage(), e);
		}
	}
	
	public List<PesoTag> getTagsVaga(int id) {
		List<PesoTag> tags = new ArrayList<>();
		 sql = "SELECT tag.id_tag as Id, tag.tag as Tag, tag_vaga.peso as Peso FROM tag INNER JOIN tag_vaga ON tag.id_tag = tag_vaga.id_tag INNER JOIN vaga ON vaga.id_vaga = tag_vaga.id_vaga WHERE vaga.id_vaga = ?";
		 try {
			p = conexao.prepareStatement(sql);
			p.setInt(1, id);
			rs = p.executeQuery();
			while(rs.next()) {
				tags.add(new PesoTag(rs.getInt("Peso"),new Tag(rs.getInt("Id"), rs.getString("Tag"))));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return tags;
	}
	
}
