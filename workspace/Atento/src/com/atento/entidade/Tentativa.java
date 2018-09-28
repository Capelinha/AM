package com.atento.entidade;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class Tentativa {

	private int id;
	private int nota;
	private Date inicio;
	private Date fim;
	private int status;
	private Candidato candidato;
	private List<Resposta> resposta;
	private Vaga vaga;
	
	public Tentativa(int id, int nota, Date inicio, Date fim, int status, Candidato candidato, Vaga vaga) {
		this.id = id;
		this.nota = nota;
		this.inicio = inicio;
		this.fim = fim;
		this.status = status;
		this.candidato = candidato;
		this.vaga = vaga;
		resposta = new ArrayList<Resposta>();	
	}
	
	public Tentativa(int id) {
		this.id = id;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}



	public int getNota() {
		return nota;
	}

	public void setNota(int nota) {
		this.nota = nota;
	}

	public Date getInicio() {
		return inicio;
	}

	public void setInicio(Date inicio) {
		this.inicio = inicio;
	}

	public Date getFim() {
		return fim;
	}

	public void setFim(Date fim) {
		this.fim = fim;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}



	public Candidato getCandidato() {
		return candidato;
	}

	public void setCandidato(Candidato candidato) {
		this.candidato = candidato;
	}

	public List<Resposta> getResposta() {
		return resposta;
	}

	public void setResposta(List<Resposta> resposta) {
		this.resposta = resposta;
	}
	
	public void addResposta(Resposta resposta) {
		this.resposta.add(resposta);
	}

	public Vaga getVaga() {
		return vaga;
	}

	public void setVaga(Vaga vaga) {
		this.vaga = vaga;
	}
	
	

	
}
