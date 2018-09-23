package com.atento.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import com.atento.conexao.Conexao;
import com.atento.entidade.Candidato;
import com.atento.servlet.candidato.cadastro.EmailDuplicadoException;
import com.atento.servlet.candidato.cadastro.LinkExpiradoException;
import com.atento.servlet.sessao.LoginInvalidoException;

public class CandidatoDAO implements DAO<Candidato>{
	
	private Connection conexao;
	private String sql;
	private PreparedStatement p;
	private ResultSet rs;
	
	public CandidatoDAO() {
		conexao = Conexao.getConnection();
	}
	
	public void adicionar(Candidato c) throws EmailDuplicadoException{
		sql = "insert into candidato(nome,sobrenome,email,telefone,celular,senha, status, link_verificacao) values (?,?,?,?,?,?,?,?)";
		try {
			p = conexao.prepareStatement(sql);
			p.setString(1, c.getNome());
			p.setString(2, c.getSobrenome());
			p.setString(3, c.getEmail());
			p.setString(4, c.getTelefone());
			p.setString(5, c.getCelular());
			p.setString(6, c.getSenha());
			p.setInt(7, c.getStatus());
			p.setString(8, c.getLinkVerificacao());
			p.execute();
			 
		} catch (SQLException e) {
			e.printStackTrace();
			if(e.getSQLState().startsWith("23") && e.getMessage().contains("EMAIL_UQ")) {
				throw new EmailDuplicadoException("Já existe uma conta com o endereço de email informado");
			}else {
				throw new PersistenciaException(e.getMessage(), e);
			}
		}
	}
	
	public void ativar(String email, String codigo) throws LinkExpiradoException {
		sql = "UPDATE candidato SET status = ? WHERE link_verificacao = ? AND email = ?";
		try {
			p = conexao.prepareStatement(sql);
			p.setInt(1, 2);
			p.setString(2, codigo);
			p.setString(3, email);
			if(p.executeUpdate() == 0) {
				throw new LinkExpiradoException("Link expirado");
			}
			 
		} catch (SQLException e) {
			e.printStackTrace();
			throw new PersistenciaException(e.getMessage(), e);
		
		}
	}
	
	public void atualizar(Candidato c) {
		sql = "Update candidato SET endereco = ?, cidade = ?, estado = ?, pais = ?, cep = ?,"+
				"data_nasc = ?, anos_exp = ?, cargo_atual = ?, pret_salarial, facebook = ?,"
				+ "twitter = ?, linkdin = ?, status = ?, n_amigos = ?, fb_frequencia = ?,"
				+ "n_seguidores = ?, tw_frequencia = ?, ld_frequencia = ?, n_conexoes = ?, youtube = ?";
		try {
			p = conexao.prepareStatement(sql);
			p.setString(1, c.getEndereco().getEndereco());
			p.setString(2, c.getEndereco().getCidade());
			p.setString(3, c.getEndereco().getEstado());
			p.setString(4,c.getEndereco().getPais());
			p.setString(5, c.getEndereco().getCep());
			p.setDate(6, c.getData_nasc());
			p.setInt(7, c.getAnos_exp());
			p.setString(8, c.getCargo_atual());
			p.setDouble(9, c.getPret_salarial());
			p.setString(10, c.getFacebook().getUrl());
			p.setString(11, c.getTwitter().getUrl());
			p.setString(12, c.getLinkedin().getUrl());
			p.setInt(13, c.getStatus());
			p.setInt(14, c.getFacebook().getNumAmigos());
			p.setInt(15, c.getFacebook().getFrequencia());
			p.setInt(16, c.getTwitter().getNumAmigos());
			p.setInt(17, c.getTwitter().getFrequencia());
			p.setInt(18, c.getLinkedin().getFrequencia());
			p.setInt(19, c.getLinkedin().getNumAmigos());
			p.setString(20, c.getYoutube());
			p.execute();
			//sql = "insert into tag_candidato values(?,?)";
			//codigo para tag_candidato
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void excluir(Candidato c) {
		
	}
	
	public int logar(String email, String senha) throws LoginInvalidoException {

		sql = "select id_candidato from candidato where email = ? and senha = ?";
		
		try {
			p = conexao.prepareStatement(sql);
			p.setString(1, email);
			p.setString(2, senha);
			rs = p.executeQuery();
			
			if (rs.next()) {
				return rs.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new PersistenciaException(e.getMessage(), e);
		}
		throw new LoginInvalidoException("Email ou senha incorretos");
	}
	
	
	public List<Candidato> getTodos() {
		// TODO Auto-generated method stub
		return null;
	}

	
	public Candidato get(int id) {
		Candidato candidato = null;
		sql = "select * from candidato where id_candidato = ?";
		try {
			p = conexao.prepareStatement(sql);
			p.setInt(1, id);
			rs = p.executeQuery();
			if (rs.next()) {
				//candidato = new Candidato();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return candidato;
	}


}
