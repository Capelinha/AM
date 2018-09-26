package com.atento.entidade;


public class Resposta {

	private char resposta;
	private Questao questao;
	private Tentativa tentativa;
	
	
	public Resposta(char resposta, Questao questao, Tentativa tentativa) {
		super();
		this.resposta = resposta;
		this.questao = questao;
		this.tentativa = tentativa;
	}
	public char getResposta() {
		return resposta;
	}
	public void setResposta(char resposta) {
		this.resposta = resposta;
	}
	public Questao getQuestao() {
		return questao;
	}
	public void setQuestao(Questao questao) {
		this.questao = questao;
	}
	public Tentativa getTentativa() {
		return tentativa;
	}
	public void setTentativa(Tentativa tentativa) {
		this.tentativa = tentativa;
	}
	
	
	
}
