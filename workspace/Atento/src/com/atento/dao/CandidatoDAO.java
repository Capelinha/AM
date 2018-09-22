package com.atento.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.atento.conexao.Conexao;
import com.atento.entidade.Candidato;
import com.atento.servlet.cadastro.EmailDuplicadoException;
import com.atento.servlet.cadastro.LinkExpiradoException;

public class CandidatoDAO {
	
	private Connection conexao;
	private String sql;
	private PreparedStatement p;
	private ResultSet rs;
	
	public CandidatoDAO() {
		conexao = Conexao.getConnection();
	}
	
	public void registrar(Candidato c) throws EmailDuplicadoException, PersistenciaException {
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
	
	public void ativar(String email, String codigo) throws LinkExpiradoException, PersistenciaException {
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
	
	public void atualizaCandidato(Candidato c) {
		sql = "Update candidato SET endereco = ?, cidade = ?, estado = ?, pais = ?, cep = ?,"+
				"data_nasc = ?, anos_exp = ?, cargo_atual = ?, pret_salarial, facebook = ?,"
				+ "twitter = ?, linkdin = ?, status = ?, n_amigos = ?, fb_frequencia = ?,"
				+ "n_seguidores = ?, tw_frequencia = ?, ld_frequencia = ?, n_conexoes = ?, youtube = ?";
		try {
			p = conexao.prepareStatement(sql);
			p.setString(1, c.getEndereco());
			p.setString(2, c.getCidade());
			p.setString(3, c.getEstado());
			p.setString(4,c.getPais());
			p.setString(5, c.getCep());
			p.setDate(6, c.getData_nasc());
			p.setInt(7, c.getAnos_exp());
			p.setString(8, c.getCargo_atual());
			p.setDouble(9, c.getPret_salarial());
			p.setString(10, c.getFacebook());
			p.setString(11, c.getTwiter());
			p.setString(12, c.getLinkedin());
			p.setInt(13, c.getStatus());
			p.setInt(14, c.getFaceAmigos());
			p.setInt(15, c.getFreqFace());
			p.setInt(16, c.getTwitAmigos());
			p.setInt(17, c.getFreqTwit());
			p.setInt(18, c.getFreqLink());
			p.setInt(19, c.getLinkAmigos());
			p.setString(20, c.getYoutube());
			p.execute();
			//sql = "insert into tag_candidato values(?,?)";
			//codigo para tag_candidato
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
	
	public Candidato perfil(int id) {
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
