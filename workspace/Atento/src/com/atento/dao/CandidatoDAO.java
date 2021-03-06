package com.atento.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.atento.conexao.Conexao;
import com.atento.entidade.Arquivo;
import com.atento.entidade.Candidato;
import com.atento.entidade.Endereco;
import com.atento.entidade.RedeSocial;
import com.atento.entidade.Tag;
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
				"data_nasc = ?, anos_exp = ?, cargo_atual = ?, pret_salarial= ?, facebook = ?,"
				+ "twitter = ?, linkedin = ?, status = ?, n_amigos = ?, fb_frequencia = ?,"
				+ "n_seguidores = ?, tw_frequencia = ?, ld_frequencia = ?, n_conexoes = ?, youtube = ?, nome = ?, sobrenome = ?, senha = ?, telefone = ?, celular = ? WHERE id_candidato = ?";
		try {
			p = conexao.prepareStatement(sql);
			p.setString(1, c.getEndereco().getEndereco());
			p.setString(2, c.getEndereco().getCidade());
			p.setString(3, c.getEndereco().getEstado());
			p.setString(4,c.getEndereco().getPais());
			p.setString(5, c.getEndereco().getCep());
			p.setDate(6, c.getDataNasc());
			p.setInt(7, c.getAnosExp());
			p.setString(8, c.getCargoAtual());
			p.setDouble(9, c.getPretSalarial());
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
			p.setString(21, c.getNome());
			p.setString(22, c.getSobrenome());
			p.setString(23, c.getSenha());
			p.setString(24, c.getTelefone());
			p.setString(25, c.getCelular());
			p.setInt(26, c.getId());
			p.execute();
			
			sql = "DELETE from tag_candidato where id_candidato = ?";
			p = conexao.prepareStatement(sql);
			p.setInt(1, c.getId());
			p.execute();
			
			sql = "insert into tag_candidato values(?,?)";
			p = conexao.prepareStatement(sql);
			for (Tag t : c.getTag()) {
				p.setInt(1, t.getId());
				p.setInt(2, c.getId());
				p.execute();
			}
			
			sql = "insert into arquivo (arquivo, nome, extensao, id_candidato) values(?,?,?,?)";
			p = conexao.prepareStatement(sql);
			
			for (Arquivo a : c.getArquivo()) {
				if(a.getId() == 0) {
					
					p.setString(1, a.getArquivo());
					p.setString(2, a.getNome());
					p.setString(3, a.getExtensao());
					p.setInt(4, c.getId());
					p.execute();
				}
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new PersistenciaException(e.getMessage(), e);
		}
	}
	
	public void excluir(Candidato c) {
		sql = "delete from candidato where id_candidato = ?";
		try {
			p = conexao.prepareStatement(sql);
			p.setInt(1, c.getId());
			p.execute();
			sql = "";
		} catch (SQLException e) {
			e.printStackTrace();
			throw new PersistenciaException(e.getMessage(), e);
		}
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
	
	public Arquivo getArquivo(int id) {
		try {
			 sql = "SELECT id_arquivo, arquivo, nome, extensao FROM arquivo WHERE id_arquivo = ?";
			 p = conexao.prepareStatement(sql); 
			 p.setInt(1, id);
			 rs = p.executeQuery();
			 if(rs.next()) {
				 return new Arquivo(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
			 }
			 rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new PersistenciaException(e.getMessage(), e);
		}
		return null;
	}
	
	public Candidato get(int id) throws PersistenciaException{

		sql = "SELECT id_candidato, nome, sobrenome, email, senha, telefone, celular, anos_exp, cargo_atual, pret_salarial, youtube, notas, status, link_verificacao, data_nasc, facebook, n_amigos, fb_frequencia, twitter, n_seguidores, tw_frequencia, linkedin, n_conexoes, ld_frequencia, endereco, cidade, estado, pais, cep FROM candidato WHERE id_candidato = ?";
		try {
			p = conexao.prepareStatement(sql);
			p.setInt(1, id);
			rs = p.executeQuery();
			if (rs.next()) {
				 Candidato c = new Candidato(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getString(9), rs.getDouble(10), rs.getString(11), rs.getString(12), rs.getInt(13), rs.getString(14), rs.getDate(15), new RedeSocial(rs.getString(16), rs.getInt(17), rs.getInt(18)), new RedeSocial(rs.getString(19), rs.getInt(20), rs.getInt(21)), new RedeSocial(rs.getString(22), rs.getInt(23), rs.getInt(24)), new Endereco(rs.getString(25), rs.getString(26), rs.getString(27), rs.getString(28), rs.getString(29)));
				
				 sql = "SELECT id_arquivo, arquivo, nome, extensao FROM arquivo WHERE id_candidato = ?";
				 p = conexao.prepareStatement(sql);
				 p.setInt(1, id);
				 
				 ResultSet rsAux = p.executeQuery();
				 while(rsAux.next()) {
					 c.addArquivo(new Arquivo(rsAux.getInt(1), rsAux.getString(2), rsAux.getString(3), rsAux.getString(4)));
				 }
				 rsAux.close();
				 sql = "SELECT tag.id_tag, tag.tag FROM tag INNER JOIN tag_candidato ON tag.id_tag = tag_candidato.id_tag INNER JOIN candidato ON candidato.id_candidato = tag_candidato.id_candidato WHERE candidato.id_candidato = ?";
				 p = conexao.prepareStatement(sql);
				 p.setInt(1, id);
				 
				 rsAux = p.executeQuery();
				 while(rsAux.next()) {
					 c.addTag(new Tag(rsAux.getInt(1), rsAux.getString(2)));
				 }
				 rsAux.close();
				 return c;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new PersistenciaException(e.getMessage(), e);
		}
		return null;
	}
	
	public Candidato redesSociais(int id){
		sql = "select facebook, twitter, linkdin, n_amigos, n_seguidores, n_conexoes, youtube,"
				+ "fb_frequencia, tw_frequencia, ld_frequencia from candidato where id_candidato = ?";
		try {
			p = conexao.prepareStatement(sql);
			p.setInt(0, id);
			rs = p.executeQuery();
			if (rs.next()){
				RedeSocial f = new RedeSocial(rs.getString("facebook"), rs.getInt("n_amigos"),rs.getInt("fb_frequencia"));
				RedeSocial t = new RedeSocial(rs.getString("twitter"), rs.getInt("n_seguidores"),rs.getInt("tw_frequencia"));
				RedeSocial l = new RedeSocial(rs.getString("linkdin"),rs.getInt("n_conexoes"),rs.getInt("ld_frequencia"));
				Candidato c = new Candidato(rs.getString("youtube"), f, t, l);
				return c;
			}
		} catch (SQLException e) {
			new PersistenciaException(e.getMessage(), e);
			e.printStackTrace();
		}
		return null;
	}

	public List<Tag> getTagsCandidato(int id) {
		List<Tag> tags = new ArrayList<Tag>();
		 sql = "SELECT tag.id_tag, tag.tag FROM tag INNER JOIN tag_candidato ON tag.id_tag = tag_candidato.id_tag INNER JOIN candidato ON candidato.id_candidato = tag_candidato.id_candidato WHERE candidato.id_candidato = ?";
		 try {
			p = conexao.prepareStatement(sql);
			p.setInt(1, id);
			rs = p.executeQuery();
			while(rs.next()) {
				tags.add(new Tag(rs.getInt(1), rs.getString(2)));
			}
		} catch (SQLException e) {
			new PersistenciaException(e.getMessage(), e);
			e.printStackTrace();
		}
		return tags;
	}

	public void excluirArquivo(int id) {
		sql = "delete from arquivo where id_arquivo = ?";
		try {
			p = conexao.prepareStatement(sql);
			p.setInt(1, id);
			p.execute();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new PersistenciaException(e.getMessage(), e);
		}	
	}


}
