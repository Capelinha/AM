package com.atento.servlet.sessao;

public class LoginInvalidoException extends Exception{
	private static final long serialVersionUID = 1L;
	
	public LoginInvalidoException(String msg) {
		super(msg);
	}
	
	public LoginInvalidoException(String msg, Throwable throwable) {
		super(msg, throwable);
	}
	
}
