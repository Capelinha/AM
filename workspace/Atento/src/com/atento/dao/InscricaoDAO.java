package com.atento.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import com.atento.conexao.Conexao;
import com.atento.entidade.Inscricao;
import com.atento.servlet.candidato.cadastro.EmailDuplicadoException;
import com.atento.servlet.candidato.painel.InscricaoDuplicadaException;

public class InscricaoDAO implements DAO<Inscricao>{

	private Connection conexao;
	private String sql;
	private PreparedStatement p;
	private ResultSet rs;
	
	public InscricaoDAO() {
		conexao = Conexao.getConnection();
	}

	public void adicionar(Inscricao t) throws Exception {
		sql = "insert into inscricao(status, id_vaga, id_candidato, score) values(?,?,?,?)";
		
		try {
			p = conexao.prepareStatement(sql);
			p.setInt(1, t.getStatus());
			p.setInt(2, t.getVaga().getId());
			p.setInt(3, t.getCandidato().getId());
			p.setInt(4, t.getScore());
			p.executeQuery();
		} catch (SQLException e) {
			if(e.getSQLState().startsWith("23") && e.getMessage().contains("INSCRICAO_PK")) {
				throw new InscricaoDuplicadaException("Já existe uma inscrição para essa vaga.");
			}else {
				throw new PersistenciaException(e.getMessage(), e);
			}
		}
	}

	@Override
	public void atualizar(Inscricao t) throws Exception {
	}

	@Override
	public void excluir(Inscricao t) throws Exception {
		
	}

	@Override
	public List<Inscricao> getTodos() {
		return null;
	}

	@Override
	public Inscricao get(int id) {
		return null;
	}
	
}
