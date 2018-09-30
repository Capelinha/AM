package com.atento.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.atento.conexao.Conexao;
import com.atento.entidade.Candidato;
import com.atento.entidade.Inscricao;
import com.atento.entidade.Vaga;
import com.atento.servlet.candidato.painel.InscricaoDuplicadaException;

public class InscricaoDAO implements DAO<Inscricao>{

	private Connection conexao;
	private String sql;
	private PreparedStatement p;
	private ResultSet rs;
	
	public InscricaoDAO() {
		conexao = Conexao.getConnection();
	}

	public void adicionar(Inscricao t) throws InscricaoDuplicadaException  {
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

	public void atualizar(Inscricao t)  {
		sql = "UPDATE inscricao SET status = ?, score = ? WHERE id_candidato = ? AND id_vaga = ?";
		try {
			p = conexao.prepareStatement(sql);
			p.setInt(1, t.getStatus());
			p.setInt(2, t.getScore());
			p.setInt(3, t.getCandidato().getId());
			p.setInt(4, t.getVaga().getId());
			p.execute();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new PersistenciaException(e.getMessage(), e);
		}
	}

	public void excluir(Inscricao t)  {
		
	}

	public List<Inscricao> getTodos() {
		return null;
	}

	public Inscricao get(int id) {
		return null;
	}
	
	public List<Inscricao> getParaCandidato(int id) {
		sql = "SELECT status, score, id_vaga FROM inscricao WHERE id_candidato = ?";
		try {
			List<Inscricao> li = new ArrayList<>();
			p = conexao.prepareStatement(sql);
			p.setInt(1, id);
			rs = p.executeQuery();
			while (rs.next()) {
				Inscricao inscricao = new Inscricao(rs.getInt("status"), rs.getInt("score"), new Vaga(rs.getInt("id_vaga")), new Candidato(id));
				li.add(inscricao);
			}
			
			return li;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new PersistenciaException(e.getMessage(), e);
		}
	}
	
	public Inscricao get(int idVaga, int idCandidato) {
		sql = "SELECT status, score FROM inscricao WHERE id_vaga = ? AND id_candidato = ?";
		try {
			p = conexao.prepareStatement(sql);
			p.setInt(1, idVaga);
			p.setInt(2, idCandidato);
			rs = p.executeQuery();
			if (rs.next()) {
				
				Inscricao inscricao = new Inscricao(rs.getInt("status"), rs.getInt("score"), new Vaga(idVaga), new Candidato(idCandidato));
				return inscricao;
			}else {
				throw new PersistenciaException("Não foi encontrada uma inscricao com o id informado");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new PersistenciaException(e.getMessage(), e);
		}
	}
	
}
