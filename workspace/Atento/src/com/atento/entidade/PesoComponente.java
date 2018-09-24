package com.atento.entidade;

public class PesoComponente {

	private int facebook;

	private int nAmigos;

	private int twitter;

	private int nSeguidores;

	private int linkdin;

	private int nConexoes;

	private int youtube;

	public PesoComponente(int facebook, int nAmigos, int twitter, int nSeguidores, int linkdin, int nConexoes,
			int youtube) {
		super();
		this.facebook = facebook;
		this.nAmigos = nAmigos;
		this.twitter = twitter;
		this.nSeguidores = nSeguidores;
		this.linkdin = linkdin;
		this.nConexoes = nConexoes;
		this.youtube = youtube;
	}

	public int getFacebook() {
		return facebook;
	}

	public void setFacebook(int facebook) {
		this.facebook = facebook;
	}

	public int getnAmigos() {
		return nAmigos;
	}

	public void setnAmigos(int nAmigos) {
		this.nAmigos = nAmigos;
	}

	public int getTwitter() {
		return twitter;
	}

	public void setTwitter(int twitter) {
		this.twitter = twitter;
	}

	public int getnSeguidores() {
		return nSeguidores;
	}

	public void setnSeguidores(int nSeguidores) {
		this.nSeguidores = nSeguidores;
	}

	public int getLinkdin() {
		return linkdin;
	}

	public void setLinkdin(int linkdin) {
		this.linkdin = linkdin;
	}

	public int getnConexoes() {
		return nConexoes;
	}

	public void setnConexoes(int nConexoes) {
		this.nConexoes = nConexoes;
	}

	public int getYoutube() {
		return youtube;
	}

	public void setYoutube(int youtube) {
		this.youtube = youtube;
	}
	
}
