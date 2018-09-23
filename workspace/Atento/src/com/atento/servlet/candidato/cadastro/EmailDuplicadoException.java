package com.atento.servlet.candidato.cadastro;

public class EmailDuplicadoException extends Exception{
	private static final long serialVersionUID = 1L;
	
	public EmailDuplicadoException(String msg) {
		super(msg);
	}
	
	public EmailDuplicadoException(String msg, Throwable throwable) {
		super(msg, throwable);
	}
	
}
