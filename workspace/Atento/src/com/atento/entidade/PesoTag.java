package com.atento.entidade;

public class PesoTag {

	private int peso;

	private Tag tag;

	public PesoTag(int peso, Tag tag) {
		super();
		this.peso = peso;
		this.tag = tag;
	}

	public int getPeso() {
		return peso;
	}

	public void setPeso(int peso) {
		this.peso = peso;
	}

	public Tag getTag() {
		return tag;
	}

	public void setTag(Tag tag) {
		this.tag = tag;
	}
}
