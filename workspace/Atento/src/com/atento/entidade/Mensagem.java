package com.atento.entidade;

public class Mensagem {
	private String titulo;
	private String mensagem;
	private String textoBotao;
	private String linkBotao;
	
	public Mensagem(String titulo, String mensagem, String textoBotao, String linkBotao) {
		super();
		this.titulo = titulo;
		this.mensagem = mensagem;
		this.textoBotao = textoBotao;
		this.linkBotao = linkBotao;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getMensagem() {
		return mensagem;
	}

	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}

	public String getTextoBotao() {
		return textoBotao;
	}

	public void setTextoBotao(String textoBotao) {
		this.textoBotao = textoBotao;
	}

	public String getLinkBotao() {
		return linkBotao;
	}

	public void setLinkBotao(String linkBotao) {
		this.linkBotao = linkBotao;
	}
	
	
}
