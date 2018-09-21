package com.atento.entidade;

import java.sql.Date;

public class Candidato {
	
	private int id;
	private String nome;
	private String sobrenome;
	private String email;
	private String senha;
	private String telefone;
	private String celular;
	private String endereco;
	private String cidade;
	private String estado;
	private String pais;
	private String cep;
	private Date data_nasc;
	private int anos_exp;
	private String cargo_atual;
	private double pret_salarial;
	private String facebook;
	private int faceAmigos;
	private int freqFace;
	private String twiter;
	private int twitAmigos;
	private int freqTwit;
	private String linkedin;
	private int linkAmigos;
	private int freqLink;
	private String youtube;
	private String notas;
	private int status;
	private String linkVerificacao;

	public Candidato(String nome, String sobrenome, String email, String telefone, String celular, String senha) {
		super();
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.email = email;
		this.senha = senha;
		this.telefone = telefone;
		this.celular = celular;
	}
	
	

	public Candidato(int id, String endereco, String cidade, String estado, String pais, String cep, Date data_nasc,
			int anos_exp, String cargo_atual, double pret_salarial, String facebook, int faceAmigos, int freqFace,
			String twiter, int twitAmigos, int freqTwit, String linkedin, int linkAmigos, int freqLink, String youtube,
			int status) {
		super();
		this.id = id;
		this.endereco = endereco;
		this.cidade = cidade;
		this.estado = estado;
		this.pais = pais;
		this.cep = cep;
		this.data_nasc = data_nasc;
		this.anos_exp = anos_exp;
		this.cargo_atual = cargo_atual;
		this.pret_salarial = pret_salarial;
		this.facebook = facebook;
		this.faceAmigos = faceAmigos;
		this.freqFace = freqFace;
		this.twiter = twiter;
		this.twitAmigos = twitAmigos;
		this.freqTwit = freqTwit;
		this.linkedin = linkedin;
		this.linkAmigos = linkAmigos;
		this.freqLink = freqLink;
		this.youtube = youtube;
		this.status = status;
	}
	
	public Candidato(int id, String nome, String sobrenome, String email, String telefone, String celular,
			String endereco, String cidade, String estado, String pais, String cep, Date data_nasc, int anos_exp,
			String cargo_atual, double pret_salarial, String facebook, String twiter, String linkedin, String youtube) {
		super();
		this.id = id;
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.email = email;
		this.telefone = telefone;
		this.celular = celular;
		this.endereco = endereco;
		this.cidade = cidade;
		this.estado = estado;
		this.pais = pais;
		this.cep = cep;
		this.data_nasc = data_nasc;
		this.anos_exp = anos_exp;
		this.cargo_atual = cargo_atual;
		this.pret_salarial = pret_salarial;
		this.facebook = facebook;
		this.twiter = twiter;
		this.linkedin = linkedin;
		this.youtube = youtube;
	}

	public Candidato(int id, String nome, String sobrenome, String email, String senha, String telefone, String celular,
			String endereco, String cidade, String estado, String pais, String cep, Date data_nasc, int anos_exp,
			String cargo_atual, double pret_salarial, String facebook, int faceAmigos, int freqFace, String twiter,
			int twitAmigos, int freqTwit, String linkedin, int linkAmigos, int freqLink, String youtube, String notas,
			int status) {
		super();
		this.id = id;
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.email = email;
		this.senha = senha;
		this.telefone = telefone;
		this.celular = celular;
		this.endereco = endereco;
		this.cidade = cidade;
		this.estado = estado;
		this.pais = pais;
		this.cep = cep;
		this.data_nasc = data_nasc;
		this.anos_exp = anos_exp;
		this.cargo_atual = cargo_atual;
		this.pret_salarial = pret_salarial;
		this.facebook = facebook;
		this.faceAmigos = faceAmigos;
		this.freqFace = freqFace;
		this.twiter = twiter;
		this.twitAmigos = twitAmigos;
		this.freqTwit = freqTwit;
		this.linkedin = linkedin;
		this.linkAmigos = linkAmigos;
		this.freqLink = freqLink;
		this.youtube = youtube;
		this.notas = notas;
		this.status = status;
	}


	public int getId() {
		return id;
	}

	public int getFaceAmigos() {
		return faceAmigos;
	}

	public void setFaceAmigos(int faceAmigos) {
		this.faceAmigos = faceAmigos;
	}

	public int getFreqFace() {
		return freqFace;
	}

	public void setFreqFace(int freqFace) {
		this.freqFace = freqFace;
	}

	public int getTwitAmigos() {
		return twitAmigos;
	}

	public void setTwitAmigos(int twitAmigos) {
		this.twitAmigos = twitAmigos;
	}

	public int getFreqTwit() {
		return freqTwit;
	}

	public void setFreqTwit(int freqTwit) {
		this.freqTwit = freqTwit;
	}

	public int getLinkAmigos() {
		return linkAmigos;
	}

	public void setLinkAmigos(int linkAmigos) {
		this.linkAmigos = linkAmigos;
	}

	public int getFreqLink() {
		return freqLink;
	}

	public void setFreqLink(int freqLink) {
		this.freqLink = freqLink;
	}

	public String getYoutube() {
		return youtube;
	}

	public void setYoutube(String youtube) {
		this.youtube = youtube;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSobrenome() {
		return sobrenome;
	}

	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
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

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getPais() {
		return pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public Date getData_nasc() {
		return data_nasc;
	}

	public void setData_nasc(Date data_nasc) {
		this.data_nasc = data_nasc;
	}

	public int getAnos_exp() {
		return anos_exp;
	}

	public void setAnos_exp(int anos_exp) {
		this.anos_exp = anos_exp;
	}

	public String getCargo_atual() {
		return cargo_atual;
	}

	public void setCargo_atual(String cargo_atual) {
		this.cargo_atual = cargo_atual;
	}

	public double getPret_salarial() {
		return pret_salarial;
	}

	public void setPret_salarial(double pret_salarial) {
		this.pret_salarial = pret_salarial;
	}

	public String getFacebook() {
		return facebook;
	}

	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}

	public String getTwiter() {
		return twiter;
	}

	public void setTwiter(String twiter) {
		this.twiter = twiter;
	}

	public String getLinkedin() {
		return linkedin;
	}

	public void setLinkedin(String linkedin) {
		this.linkedin = linkedin;
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

	public void setLinkVeriricacao(String linkVerificacao) {
		this.linkVerificacao = linkVerificacao;
	}

}