package com.atento.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.atento.conexao.Conexao;
import com.atento.entidade.Departamento;
import com.atento.entidade.Endereco;
import com.atento.entidade.Inscricao;
import com.atento.entidade.PesoComponente;
import com.atento.entidade.PesoTag;
import com.atento.entidade.Tag;
import com.atento.entidade.Tentativa;
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
		sql = "select id_vaga, titulo, area_atuacao, descricao, requisitos, beneficios, endereco, cidade, estado, pais, NVL(salario, 0) as sal, data_desejada, data_abertura, quantidade, tempo_exp, peso_facebook, peso_n_amigos, peso_twitter, peso_n_seguidores, peso_linkedin, peso_n_conexoes, peso_youtube, status, departamento.id_departamento AS iddept, nome  from vaga INNER JOIN departamento ON departamento.id_departamento = vaga.id_departamento";
		try {
			p = conexao.prepareStatement(sql);
			rs = p.executeQuery();
			while (rs.next()) {
				vagas.add(new Vaga(rs.getInt("id_vaga"), rs.getString("titulo"), rs.getString("descricao"), rs.getInt("quantidade"), rs.getString("area_atuacao"), rs.getDouble("sal"), new Endereco(rs.getString("endereco"), rs.getString("cidade"), rs.getString("estado"), rs.getString("pais")), rs.getInt("tempo_exp"), rs.getString("requisitos"), rs.getString("beneficios"), rs.getInt("status"), rs.getDate("data_abertura"), rs.getDate("data_desejada"), new Departamento(rs.getInt("iddept"), rs.getString("nome")), new PesoComponente(rs.getInt("peso_facebook"), rs.getInt("peso_n_amigos"), rs.getInt("peso_twitter"), rs.getInt("peso_n_seguidores"), rs.getInt("peso_linkedin"), rs.getInt("peso_n_conexoes"), rs.getInt("peso_youtube"))));
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
		sql = "select id_vaga, titulo, area_atuacao, descricao, requisitos, beneficios, endereco, cidade, estado, pais, NVL(salario, 0) as sal, data_desejada, data_abertura, quantidade, tempo_exp, peso_facebook, peso_n_amigos, peso_twitter, peso_n_seguidores, peso_linkedin, peso_n_conexoes, peso_youtube, status, departamento.id_departamento AS iddept, nome  from vaga INNER JOIN departamento ON departamento.id_departamento = vaga.id_departamento where id_vaga = ?";
		try {
			p = conexao.prepareStatement(sql);
			p.setInt(1, id);
			rs = p.executeQuery();
			if (rs.next()) {
				Vaga vaga = new Vaga(rs.getInt("id_vaga"), rs.getString("titulo"), rs.getString("descricao"), rs.getInt("quantidade"), rs.getString("area_atuacao"), rs.getDouble("sal"), new Endereco(rs.getString("endereco"), rs.getString("cidade"), rs.getString("estado"), rs.getString("pais")), rs.getInt("tempo_exp"), rs.getString("requisitos"), rs.getString("beneficios"), rs.getInt("status"), rs.getDate("data_abertura"), rs.getDate("data_desejada"), new Departamento(rs.getInt("iddept"), rs.getString("nome")), new PesoComponente(rs.getInt("peso_facebook"), rs.getInt("peso_n_amigos"), rs.getInt("peso_twitter"), rs.getInt("peso_n_seguidores"), rs.getInt("peso_linkedin"), rs.getInt("peso_n_conexoes"), rs.getInt("peso_youtube")));
				return vaga;
			}else {
				throw new PersistenciaException("Não foi encontrada uma vaga com o id informado");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new PersistenciaException(e.getMessage(), e);
		}
	}
	
	public void get(Inscricao i) {
		i.setVaga(get(i.getVaga().getId()));
	}
	
	public void get(Tentativa i) {
		i.setVaga(get(i.getVaga().getId()));
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
