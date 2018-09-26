package com.atento.entidade;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class Candidato extends Pessoa {

	private String telefone;
	private String celular;
	private int anosExp;
	private String cargoAtual;
	private double pretSalarial;
	private String youtube;
	private String notas;
	private int status;
	private String linkVerificacao;
	private Date dataNasc;
	private List<Arquivo> arquivo;
	private List<Tag> tag;
	private RedeSocial facebook;
	private RedeSocial twitter;
	private RedeSocial linkedin;
	private Endereco endereco;
	private String idSessao;
	
	public Candidato(String nome, String sobrenome, String email, String telefone, String celular, String senha) {
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.email = email;
		this.senha = senha;
		this.telefone = telefone;
		this.celular = celular;
		this.tag = new ArrayList<Tag>();
		this.idSessao = gerarMD5();
	}
	
	public Candidato(int id) {
		this.id = id;
	}
	

	public Candidato(int id, String nome, String sobrenome, String email, String senha, String telefone, String celular, int anosExp, String cargoAtual, double pretSalarial,
			String youtube, String notas, int status, String linkVerificacao, Date dataNasc, RedeSocial facebook, RedeSocial twitter,
			RedeSocial linkedin, Endereco endereco) {
		super(id, nome, sobrenome, email, senha);
		this.telefone = telefone;
		this.celular = celular;
		this.anosExp = anosExp;
		this.cargoAtual = cargoAtual;
		this.pretSalarial = pretSalarial;
		this.youtube = youtube;
		this.notas = notas;
		this.status = status;
		this.linkVerificacao = linkVerificacao;
		this.dataNasc = dataNasc;
		this.facebook = facebook;
		this.twitter = twitter;
		this.linkedin = linkedin;
		this.endereco = endereco;
		this.arquivo = new ArrayList<Arquivo>();
		this.tag = new ArrayList<Tag>();
		this.idSessao = gerarMD5();
	}
	
	public Candidato(int id, String nome, String sobrenome, String senha, String telefone, String celular, int anosExp, String cargoAtual, double pretSalarial,
			String youtube, String notas, int status, String linkVerificacao, Date dataNasc, RedeSocial facebook, RedeSocial twitter,
			RedeSocial linkedin, Endereco endereco, List<Tag> tag) {
		this.id = id;
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.senha = senha;
		this.telefone = telefone;
		this.celular = celular;
		this.anosExp = anosExp;
		this.cargoAtual = cargoAtual;
		this.pretSalarial = pretSalarial;
		this.youtube = youtube;
		this.notas = notas;
		this.status = status;
		this.linkVerificacao = linkVerificacao;
		this.dataNasc = dataNasc;
		this.facebook = facebook;
		this.twitter = twitter;
		this.linkedin = linkedin;
		this.endereco = endereco;
		this.arquivo = new ArrayList<Arquivo>();
		this.tag = tag;
		this.idSessao = gerarMD5();
	}

	public Candidato(String youtube, RedeSocial facebook, RedeSocial twitter, RedeSocial linkedin) {
		this.youtube = youtube;
		this.facebook = facebook;
		this.twitter = twitter;
		this.linkedin = linkedin;
		this.tag = new ArrayList<Tag>();
	}
	
	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getCelular() {
		return celular;
	}

	public void setCelular(String celular) {
		this.celular = celular;
	}

	public int getAnosExp() {
		return anosExp;
	}

	public void setAnosExp(int anos_exp) {
		this.anosExp = anos_exp;
	}

	public String getCargoAtual() {
		return cargoAtual;
	}
	

	public String getIdSessao() {
		return idSessao;
	}

	public void setCargoAtual(String cargo_atual) {
		this.cargoAtual = cargo_atual;
	}

	public double getPretSalarial() {
		return pretSalarial;
	}

	public void setPretSalarial(double pret_salarial) {
		this.pretSalarial = pret_salarial;
	}

	public String getYoutube() {
		return youtube;
	}

	public void setYoutube(String youtube) {
		this.youtube = youtube;
	}

	public String getNotas() {
		return notas;
	}

	public void setNotas(String notas) {
		this.notas = notas;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getLinkVerificacao() {
		return linkVerificacao;
	}

	public void setLinkVerificacao(String linkVerificacao) {
		this.linkVerificacao = linkVerificacao;
	}

	public Date getDataNasc() {
		return dataNasc;
	}

	public void setDataNasc(Date data_nasc) {
		this.dataNasc = data_nasc;
	}

	public List<Arquivo> getArquivo() {
		return arquivo;
	}

	public void setArquivo(List<Arquivo> arquivo) {
		this.arquivo = arquivo;
	}
	
	public void addArquivo(Arquivo arquivo) {
		this.arquivo.add(arquivo);
	}

	public List<Tag> getTag() {
		return tag;
	}
	
	public void addTag(Tag tag) {
		this.tag.add(tag);
	}

	public void setTag(List<Tag> tag) {
		this.tag = tag;
	}

	public RedeSocial getFacebook() {
		return facebook;
	}

	public void setFacebook(RedeSocial facebook) {
		this.facebook = facebook;
	}

	public RedeSocial getTwitter() {
		return twitter;
	}

	public void setTwitter(RedeSocial twitter) {
		this.twitter = twitter;
	}

	public RedeSocial getLinkedin() {
		return linkedin;
	}

	public void setLinkedin(RedeSocial linkedin) {
		this.linkedin = linkedin;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}
	
	private String gerarMD5() {
    	try {
			MessageDigest md;
			String texto = email + senha;
			md = MessageDigest.getInstance("MD5");
			byte[] messageDigest = md.digest(texto.getBytes());
	        BigInteger number = new BigInteger(1, messageDigest);
	        String hash = number.toString(16);
	        return hash;
	        
		} catch (NoSuchAlgorithmException e1) {
			e1.printStackTrace();
		}
    	
    	return "OJBGfg8aIyy";
    }

}
