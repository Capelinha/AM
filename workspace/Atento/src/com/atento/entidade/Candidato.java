package com.atento.entidade;

import java.sql.Date;
import java.util.Collection;

public class Candidato extends Pessoa {

	private String telefone;
	private String celular;
	private int anos_exp;
	private String cargo_atual;
	private double pret_salarial;
	private String youtube;
	private String notas;
	private int status;
	private String linkVerificacao;
	private Date data_nasc;
	private Inscricao inscricao;
	private Collection<Arquivo> arquivo;
	private Collection<Tag> tag;
	private RedeSocial facebook;
	private RedeSocial twitter;
	private RedeSocial linkedin;
	private Endereco endereco;
	
	public Candidato(String nome, String sobrenome, String email, String telefone, String celular, String senha) {
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.email = email;
		this.senha = senha;
		this.telefone = telefone;
		this.celular = celular;
	}
	
	

	public Candidato(String telefone, String celular, int anos_exp, String cargo_atual, double pret_salarial,
			String youtube, String notas, int status, String linkVerificacao, Date data_nasc, Inscricao inscricao,
			Collection<Arquivo> arquivo, Collection<Tag> tag, RedeSocial facebook, RedeSocial twitter,
			RedeSocial linkedin, Endereco endereco) {
		super();
		this.telefone = telefone;
		this.celular = celular;
		this.anos_exp = anos_exp;
		this.cargo_atual = cargo_atual;
		this.pret_salarial = pret_salarial;
		this.youtube = youtube;
		this.notas = notas;
		this.status = status;
		this.linkVerificacao = linkVerificacao;
		this.data_nasc = data_nasc;
		this.inscricao = inscricao;
		this.arquivo = arquivo;
		this.tag = tag;
		this.facebook = facebook;
		this.twitter = twitter;
		this.linkedin = linkedin;
		this.endereco = endereco;
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

	public Date getData_nasc() {
		return data_nasc;
	}

	public void setData_nasc(Date data_nasc) {
		this.data_nasc = data_nasc;
	}

	public Inscricao getInscricao() {
		return inscricao;
	}

	public void setInscricao(Inscricao inscricao) {
		this.inscricao = inscricao;
	}

	public Collection<Arquivo> getArquivo() {
		return arquivo;
	}

	public void setArquivo(Collection<Arquivo> arquivo) {
		this.arquivo = arquivo;
	}

	public Collection<Tag> getTag() {
		return tag;
	}

	public void setTag(Collection<Tag> tag) {
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
	
	

}
