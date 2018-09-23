package com.atento.entidade;

public class RedeSocial {

	private String url;
	private int numAmigos;
	private int frequencia;
	
	public RedeSocial(String url, int numAmigos, int frequencia) {
		super();
		this.url = url;
		this.numAmigos = numAmigos;
		this.frequencia = frequencia;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public int getNumAmigos() {
		return numAmigos;
	}

	public void setNumAmigos(int numAmigos) {
		this.numAmigos = numAmigos;
	}

	public int getFrequencia() {
		return frequencia;
	}

	public void setFrequencia(int frequencia) {
		this.frequencia = frequencia;
	}

	
	
}
