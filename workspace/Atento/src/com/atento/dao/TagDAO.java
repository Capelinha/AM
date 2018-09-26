package com.atento.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.atento.conexao.Conexao;
import com.atento.entidade.Tag;

public class TagDAO implements DAO<Tag> {

	private Connection conexao;
	private String sql;
	private PreparedStatement p;
	private ResultSet rs;
	
	public TagDAO() {
		conexao = Conexao.getConnection();
	}
	
	public void adicionar(Tag t) throws Exception {
		
	}

	public void atualizar(Tag t) throws Exception {
		
	}

	public void excluir(Tag t) throws Exception {
		
	}

	public List<Tag> getTodos() {
		List<Tag> tags = new ArrayList<>();
		 sql = "SELECT tag.id_tag as Id, tag.tag as Tag FROM tag";
		 try {
			p = conexao.prepareStatement(sql);
			rs = p.executeQuery();
			while(rs.next()) {
				tags.add(new Tag(rs.getInt("Id"), rs.getString("Tag")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return tags;
	}

	public Tag get(int id) {
		
		return null;
	}

}
