package com.atento.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import com.atento.conexao.Conexao;
import com.atento.entidade.Prova;

public class ProvaDAO implements DAO<Prova> {
	
	private Connection conexao;
	private String sql;
	private PreparedStatement p;
	private ResultSet rs;
	
	public ProvaDAO() {
		conexao = Conexao.getConnection();
	}

	@Override
	public void adicionar(Prova t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void atualizar(Prova t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void excluir(Prova t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Prova> getTodos() {
		
		return null;
	}

	@Override
	public Prova get(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	

}
