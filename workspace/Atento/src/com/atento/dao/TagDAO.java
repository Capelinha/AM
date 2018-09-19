package com.atento.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.atento.conexao.Conexao;
import com.atento.entidade.Tag;

public class TagDAO {
	
	private Connection conexao;
	private String sql;
	private PreparedStatement p;
	private ResultSet rs;
	
	public TagDAO() {
		conexao = new Conexao().getConnection();
	}
	
	public List<Tag> listarTags(){
		List<Tag> tags = new ArrayList<>();
		sql = "select * from TAG";
		try {
			p = conexao.prepareStatement(sql);
			rs = p.executeQuery();
			while(rs.next()) {
				tags.add(new Tag(rs.getInt("id_tag"),rs.getString("tag")));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return tags;
	}

}
