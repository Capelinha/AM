package com.atento.entidade;


public class DadosProva {

	private int nQuestoes;
	private int peso;
	private Prova prova;
		
	public DadosProva(int nQuestoes, int peso, Prova prova) {
		super();
		this.nQuestoes = nQuestoes;
		this.peso = peso;
		this.prova = prova;
	}
	
	public int getnQuestoes() {
		return nQuestoes;
	}
	public void setnQuestoes(int nQuestoes) {
		this.nQuestoes = nQuestoes;
	}
	public int getPeso() {
		return peso;
	}
	public void setPeso(int peso) {
		this.peso = peso;
	}
	public Prova getProva() {
		return prova;
	}
	public void setProva(Prova prova) {
		this.prova = prova;
	}	
	
}
