package com.atento.entidade;

import java.sql.Date;
import java.util.Collection;

public class Tentativa {

	private int nota;

	private Date inicio;

	private Date fim;

	private int status;

	private DadosProva dadosProva;

	private Candidato candidato;

	private Collection<Resposta> resposta;

	private Inscricao inscricao;

}
