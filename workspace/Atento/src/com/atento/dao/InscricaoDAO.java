package com.atento.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import com.atento.conexao.Conexao;
import com.atento.entidade.Candidato;
import com.atento.entidade.Inscricao;

public class InscricaoDAO implements DAO<Inscricao>{

	private Connection conexao;
	private String sql;
	private PreparedStatement p;
	private ResultSet rs;
	
	public InscricaoDAO() {
		conexao = Conexao.getConnection();
	}

	@Override
	public void adicionar(Inscricao t) throws Exception {
		sql = "insert into inscricao values(?,?,?,?)";
		p = conexao.prepareStatement(sql);
		p.setInt(0, t.getStatus());
		p.setInt(1, t.getVaga().getId());
		p.setInt(2, t.getCandidato().getId());
		p.setInt(3, t.getScore());
	}

	@Override
	public void atualizar(Inscricao t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void excluir(Inscricao t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Inscricao> getTodos() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Inscricao get(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
