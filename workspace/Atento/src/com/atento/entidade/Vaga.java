package com.atento.entidade;

import java.sql.Date;

public class Vaga {
	
	private int id;
	private String titulo;
	private String descricao;
	private int qtd;
	private String area;
	private Date dataDesejada;
	private double salario;
	private Date dataAbertura;
	private String endereco;
	private String cidade;
	private String estado;
	private String pais;
	private int tempo_exp;
	private String requisitos;
	private String beneficios;
	private int status;
	private int idDepart;
	
	public Vaga(int id, String titulo, String descricao, String area, Date dataDesejada, double salario,
			String endereco, String cidade, String estado, String pais, String requisitos, String beneficios,
			int idDepart) {
		super();
		this.id = id;
		this.titulo = titulo;
		this.descricao = descricao;
		this.area = area;
		this.dataDesejada = dataDesejada;
		this.salario = salario;
		this.endereco = endereco;
		this.cidade = cidade;
		this.estado = estado;
		this.pais = pais;
		this.requisitos = requisitos;
		this.beneficios = beneficios;
		this.idDepart = idDepart;
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
	public Date getDataDesejada() {
		return dataDesejada;
	}
	public void setDataDesejada(Date dataDesejada) {
		this.dataDesejada = dataDesejada;
	}
	public double getSalario() {
		return salario;
	}
	public void setSalario(double salario) {
		this.salario = salario;
	}
	public Date getDataAbertura() {
		return dataAbertura;
	}
	public void setDataAbertura(Date dataAbertura) {
		this.dataAbertura = dataAbertura;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getPais() {
		return pais;
	}
	public void setPais(String pais) {
		this.pais = pais;
	}
	public int getTempo_exp() {
		return tempo_exp;
	}
	public void setTempo_exp(int tempo_exp) {
		this.tempo_exp = tempo_exp;
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
	public int getIdDepart() {
		return idDepart;
	}
	public void setIdDepart(int idDepart) {
		this.idDepart = idDepart;
	}
	
	
	

}
