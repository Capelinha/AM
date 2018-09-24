package com.atento.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.atento.conexao.Conexao;
import com.atento.entidade.Inscricao;
import com.atento.entidade.PesoComponente;

public class PesoDAO implements DAO<PesoComponente>{

	private Connection conexao;
	private String sql;
	private PreparedStatement p;
	private ResultSet rs;
	
	public PesoDAO() {
		conexao = Conexao.getConnection();
	}

	@Override
	public void adicionar(PesoComponente t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void atualizar(PesoComponente t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void excluir(PesoComponente t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<PesoComponente> getTodos() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PesoComponente get(int id) {
		sql = "select * from peso where id_vaga = ?";
		try {
			p = conexao.prepareStatement(sql);
			p.setInt(0, id);
			rs = p.executeQuery();
			if (rs.next()){
				PesoComponente peso = new PesoComponente(rs.getInt("facebook"), rs.getInt("n_amigos"),
						rs.getInt("twitter"), rs.getInt("n_seguidores"),
						rs.getInt("linkedin"), rs.getInt("n_conexoes"), rs.getInt("youtube"));
				return peso;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
}
