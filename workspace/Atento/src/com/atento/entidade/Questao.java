package com.atento.entidade;

public class Questao {

	private int id;
	private String titulo;
	private String texto;
	private String alternativaA;
	private String alternativaB;
	private String alternativaC;
	private String alternativaD;
	private String alternativaE;
	private char correta;
	private int status;
	private Prova prova;
	
	public Questao(int id, String titulo, String texto, String alternativaA, String alternativaB, String alternativaC,
			String alternativaD, String alternativaE, char correta, int status, Prova prova) {
		super();
		this.id = id;
		this.titulo = titulo;
		this.texto = texto;
		this.alternativaA = alternativaA;
		this.alternativaB = alternativaB;
		this.alternativaC = alternativaC;
		this.alternativaD = alternativaD;
		this.alternativaE = alternativaE;
		this.correta = correta;
		this.status = status;
		this.prova = prova;
	}

	
	public Prova getProva() {
		return prova;
	}


	public void setProva(Prova prova) {
		this.prova = prova;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getTexto() {
		return texto;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}

	public String getAlternativaA() {
		return alternativaA;
	}

	public void setAlternativaA(String alternativaA) {
		this.alternativaA = alternativaA;
	}

	public String getAlternativaB() {
		return alternativaB;
	}

	public void setAlternativaB(String alternativaB) {
		this.alternativaB = alternativaB;
	}

	public String getAlternativaC() {
		return alternativaC;
	}

	public void setAlternativaC(String alternativaC) {
		this.alternativaC = alternativaC;
	}

	public String getAlternativaD() {
		return alternativaD;
	}

	public void setAlternativaD(String alternativaD) {
		this.alternativaD = alternativaD;
	}

	public String getAlternativaE() {
		return alternativaE;
	}

	public void setAlternativaE(String alternativaE) {
		this.alternativaE = alternativaE;
	}

	public char getCorreta() {
		return correta;
	}

	public void setCorreta(char correta) {
		this.correta = correta;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	

}
