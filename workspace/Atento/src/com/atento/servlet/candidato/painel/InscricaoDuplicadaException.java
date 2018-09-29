package com.atento.servlet.candidato.painel;

public class InscricaoDuplicadaException extends Exception{
	private static final long serialVersionUID = 1L;
	
	public InscricaoDuplicadaException(String msg) {
		super(msg);
	}
	
	public InscricaoDuplicadaException(String msg, Throwable throwable) {
		super(msg, throwable);
	}
	
}
