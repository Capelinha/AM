package com.atento.entidade;

public class Inscricao {

	private int status;
	private int score;
	private Vaga vaga;
	private Candidato candidato;
	
	
	public Inscricao(Vaga vaga, Candidato candidato) {
		super();
		this.vaga = vaga;
		this.candidato = candidato;
	}


	public Inscricao(int status, int score, Vaga vaga, Candidato candidato) {
		super();
		this.status = status;
		this.score = score;
		this.vaga = vaga;
		this.candidato = candidato;
	}


	public int getStatus() {
		return status;
	}


	public void setStatus(int status) {
		this.status = status;
	}


	public int getScore() {
		return score;
	}


	public void setScore(int score) {
		this.score = score;
	}


	public Vaga getVaga() {
		return vaga;
	}


	public void setVaga(Vaga vaga) {
		this.vaga = vaga;
	}


	public Candidato getCandidato() {
		return candidato;
	}


	public void setCandidato(Candidato candidato) {
		this.candidato = candidato;
	}

	
}
