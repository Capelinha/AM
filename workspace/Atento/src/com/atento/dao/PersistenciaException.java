package com.atento.dao;

public class PersistenciaException extends Exception{
	private static final long serialVersionUID = 1L;
	
	public PersistenciaException(String msg) {
		super(msg);
	}
	
	public PersistenciaException(String msg, Throwable throwable) {
		super(msg, throwable);
	}
	
}
