package com.atento.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.atento.conexao.Conexao;
import com.atento.entidade.Candidato;

public class CandidatoDAO {
	
	private Connection conexao;
	private String sql;
	private PreparedStatement p;
	private ResultSet rs;
	
	public CandidatoDAO() {
		conexao = Conexao.getConnection();
	}
	
	public void registrar(Candidato c) {
		sql = "insert into candidato(nome,sobrenome,email,telefone,celular,senha) values (?,?,?,?,?)";
		try {
			p = conexao.prepareStatement(sql);
			p.setString(1, c.getNome());
			p.setString(2, c.getSobrenome());
			p.setString(3, c.getEmail());
			p.setString(4,c.getTelefone());
			p.setString(5, c.getCelular());
			p.setString(6, c.getSenha());
			p.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int logar(String email, String senha) {
		if (email.contains("atento.com")) {
			sql = "select id_funcionario from funcionario where email = ? and senha = ?";
		} else {
			sql = "select id_candidato from candidato where email = ? and senha = ?";
		}
		try {
			p = conexao.prepareStatement(sql);
			p.setString(1, email);
			p.setString(2, senha);
			rs = p.executeQuery();
			if (rs.next()) {
				return rs.getInt(0);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

}
