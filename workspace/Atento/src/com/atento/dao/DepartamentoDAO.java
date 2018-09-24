package com.atento.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.atento.conexao.Conexao;
import com.atento.entidade.Departamento;

public class DepartamentoDAO implements DAO<Departamento> {

	Connection conexao;
	String sql;
	PreparedStatement p;
	ResultSet rs;
	
	public DepartamentoDAO(){
		conexao = new Conexao().getConnection();
	}
	
	@Override
	public void adicionar(Departamento t) throws Exception {
		sql = "insert into departamento (nome) values(?)";
		p = conexao.prepareStatement(sql);
		p.setString(0, t.getNome());
		p.execute();
	}

	@Override
	public void atualizar(Departamento t) throws Exception {
		sql = "update departamento set nome = ? where id_departamento = ?";
		p = conexao.prepareStatement(sql);
		p.setString(0, t.getNome());
		p.setInt(1,t.getId());
		p.execute();
		
	}

	@Override
	public void excluir(Departamento t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Departamento> getTodos() {
		List<Departamento> departamentos = new ArrayList<>(); 
		sql = "select * from departamento";
		try {
			p = conexao.prepareStatement(sql);
			rs = p.executeQuery();
			while(rs.next()){
				departamentos.add(new Departamento(rs.getInt("id_departamento"), rs.getString("nome")));
			}
			return departamentos;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Departamento get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
