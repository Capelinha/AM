package com.atento.entidade;


public class Arquivo {

	private int id;
	private String arquivo;
	private String nome;
	private String extensao;
	
	
	public Arquivo(int id, String arquivo, String nome, String extensao) {
		super();
		this.id = id;
		this.arquivo = arquivo;
		this.nome = nome;
		this.extensao = extensao;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getArquivo() {
		return arquivo;
	}
	public void setArquivo(String arquivo) {
		this.arquivo = arquivo;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getExtensao() {
		return extensao;
	}
	public void setExtensao(String extensao) {
		this.extensao = extensao;
	}
	
	
	

}
