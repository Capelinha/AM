package com.atento.entidade;

import java.sql.Date;

public class Vaga {

	private int id;

	private String titulo;

	private String descricao;

	private int qtd;

	private String area;

	private double salario;

	private String endereco;

	private String cidade;

	private String estado;

	private String pais;

	private int tempo_exp;

	private String requisitos;

	private String beneficios;

	private int status;

	private Date dataAbertura;

	private Date dataDesejada;

	private Inscricao inscricao;

	private Departamento departamento;

	private PesoComponente pesoComponente;
	
	public Vaga(int id, String titulo, String descricao, String endereco, String cidade, String pais,
			Date dataDesejada) {
		super();
		this.id = id;
		this.titulo = titulo;
		this.descricao = descricao;
		this.endereco = endereco;
		this.cidade = cidade;
		this.pais = pais;
		this.dataDesejada = dataDesejada;
	}

}
