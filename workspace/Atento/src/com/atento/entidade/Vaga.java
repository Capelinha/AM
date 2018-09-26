package com.atento.entidade;

import java.sql.Date;
import java.util.List;

public class Vaga {

	private int id;
	private String titulo;
	private String descricao;
	private int qtd;
	private String area;
	private double salario;
	private Endereco endereco;
	private int tempoExp;
	private List<DadosProva> dadosProva;
	private String requisitos;
	private String beneficios;
	private int status;
	private Date dataAbertura;
	private Date dataDesejada;
	private Departamento departamento;
	private PesoComponente pesoComponente;
	
	public Vaga(int id, String titulo, String descricao, Date dataDesejada, String areaAtuacao, Endereco endereco) {
		super();
		this.id = id;
		this.titulo = titulo;
		this.descricao = descricao;
		this.endereco = endereco;
		this.dataDesejada = dataDesejada;
		this.area = areaAtuacao;
	}
	
	public Vaga(int id, String titulo, String descricao, String area, double salario, Endereco endereco, String requisitos, String beneficios, Date dataDesejada) {
		super();
		this.id = id;
		this.titulo = titulo;
		this.descricao = descricao;
		this.area = area;
		this.salario = salario;
		this.endereco = endereco;
		this.requisitos = requisitos;
		this.beneficios = beneficios;
		this.dataDesejada = dataDesejada;
	}

	

	public Vaga(int id, String titulo, String descricao, int qtd, String area, double salario, Endereco endereco,
			int tempoExp, String requisitos, String beneficios, int status, Date dataAbertura, Date dataDesejada, Departamento departamento, PesoComponente pesoComponente) {
		super();
		this.id = id;
		this.titulo = titulo;
		this.descricao = descricao;
		this.qtd = qtd;
		this.area = area;
		this.salario = salario;
		this.endereco = endereco;
		this.tempoExp = tempoExp;
		this.requisitos = requisitos;
		this.beneficios = beneficios;
		this.status = status;
		this.dataAbertura = dataAbertura;
		this.dataDesejada = dataDesejada;
		this.departamento = departamento;
		this.pesoComponente = pesoComponente;
	}


	public Vaga(int id) {
		this.id = id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	

	public List<DadosProva> getDadosProva() {
		return dadosProva;
	}

	public void setDadosProva(List<DadosProva> dadosProva) {
		this.dadosProva = dadosProva;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public int getQtd() {
		return qtd;
	}

	public void setQtd(int qtd) {
		this.qtd = qtd;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public double getSalario() {
		return salario;
	}

	public void setSalario(double salario) {
		this.salario = salario;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}

	public int getTempoExp() {
		return tempoExp;
	}

	public void setTempoExp(int tempoExp) {
		this.tempoExp = tempoExp;
	}

	public String getRequisitos() {
		return requisitos;
	}

	public void setRequisitos(String requisitos) {
		this.requisitos = requisitos;
	}

	public String getBeneficios() {
		return beneficios;
	}

	public void setBeneficios(String beneficios) {
		this.beneficios = beneficios;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Date getDataAbertura() {
		return dataAbertura;
	}

	public void setDataAbertura(Date dataAbertura) {
		this.dataAbertura = dataAbertura;
	}

	public Date getDataDesejada() {
		return dataDesejada;
	}

	public void setDataDesejada(Date dataDesejada) {
		this.dataDesejada = dataDesejada;
	}


	public Departamento getDepartamento() {
		return departamento;
	}

	public void setDepartamento(Departamento departamento) {
		this.departamento = departamento;
	}

	public PesoComponente getPesoComponente() {
		return pesoComponente;
	}

	public void setPesoComponente(PesoComponente pesoComponente) {
		this.pesoComponente = pesoComponente;
	}

	
}
