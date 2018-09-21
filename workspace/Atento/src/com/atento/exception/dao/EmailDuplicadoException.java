package com.atento.exception.dao;

public class EmailDuplicadoException extends Exception{
	private static final long serialVersionUID = 1L;
	
	public EmailDuplicadoException(String msg) {
		super(msg);
	}
	
}
