package com.atento.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.atento.conexao.Conexao;
import com.atento.entidade.Vaga;

public class VagaDAO implements DAO<Vaga>{

	private Connection conexao;
	private String sql;
	private PreparedStatement p;
	private ResultSet rs;
	
	public VagaDAO() {
		conexao = Conexao.getConnection();
	}

	@Override
	public void adicionar(Vaga t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void atualizar(Vaga t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void excluir(Vaga t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Vaga> getTodos() {
		List<Vaga> vagas = new ArrayList<>();
		sql = "select id_vaga, titulo, area_atuacao, descricao, endereco, cidade, pais, data_desejada where status = 2";
		try {
			p = conexao.prepareStatement(sql);
			rs = p.executeQuery();
			while (rs.next()) {
				vagas.add(new Vaga(rs.getInt("id_vaga"), rs.getString("titulo"), rs.getString("descricao"), rs.getString("endereco"), rs.getString("cidade"),rs.getString("pais"), rs.getDate("data_desejada")));
			}
			return vagas;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Vaga get(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
