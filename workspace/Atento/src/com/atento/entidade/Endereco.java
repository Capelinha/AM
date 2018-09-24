package com.atento.entidade;

public class Endereco {

	private String endereco;
	private String cidade;
	private String estado;
	private String pais;
	private String cep;
	
	public Endereco(String endereco, String cidade, String estado, String pais, String cep) {
		super();
		this.endereco = endereco;
		this.cidade = cidade;
		this.estado = estado;
		this.pais = pais;
		this.cep = cep;
	}
	
	public Endereco(String endereco, String cidade, String estado, String pais) {
		super();
		this.endereco = endereco;
		this.cidade = cidade;
		this.estado = estado;
		this.pais = pais;
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
	
	

}
