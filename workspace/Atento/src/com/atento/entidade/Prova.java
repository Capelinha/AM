package com.atento.entidade;

import java.util.ArrayList;
import java.util.List;

public class Prova {

	private int id;
	private String titulo;
	private String areaConhecimento;
	private List<Questao> questao;
	
	public Prova(int id, String titulo, String areaConhecimento) {
		super();
		this.id = id;
		this.titulo = titulo;
		this.areaConhecimento = areaConhecimento;
		this.questao = new ArrayList<Questao>();
	}
	
	public Prova(int id) {
		super();
		this.id = id;
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

	public String getAreaConhecimento() {
		return areaConhecimento;
	}

	public void setAreaConhecimento(String areaConhecimento) {
		this.areaConhecimento = areaConhecimento;
	}

	public List<Questao> getQuestao() {
		return questao;
	}

	public void setQuestao(List<Questao> questao) {
		this.questao = questao;
	}

	
}
